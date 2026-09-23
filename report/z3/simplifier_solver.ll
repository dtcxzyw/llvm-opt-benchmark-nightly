Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/simplifier_solver?download=true
inline.NumInlined: 1064
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17simplifier_solver14get_proof_coreEv:bb.a
  %.028 = phi ptr [ %i.ay, %bb.i ], [ %i.ai, %_ZN6vectorI14dependent_exprLb1EjE3endEv.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.028, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !153
  %.not19 = icmp eq ptr %i.ar, null
  br i1 %.not19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !107, !nonnull !108, !align !109
  %i.at = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !154
  %i.av = invoke noundef ptr @_ZN11ast_manager11mk_assertedEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.as, ptr noundef %i.au)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !153
  invoke void @_ZN17expr_safe_replace6insertEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef %i.av, ptr noundef %i.aw)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.028, i64 32 ; 2 uses
  %.not18 = icmp eq ptr %i.ay, %i.ao
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph

_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit: ; preds = %._crit_edge
  %i.az = load ptr, ptr %1, align 8, !tbaa !150   ; 3 uses
  %.not.i22 = icmp eq ptr %i.az, null
  br i1 %.not.i22, label %bb.j, label %_ZN11ast_manager7inc_refEP3ast.exit.i23

_ZN11ast_manager7inc_refEP3ast.exit.i23:          ; preds = %_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !133
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i23, %_ZN17expr_safe_replaceclER7obj_refI4expr11ast_managerE.exit
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !130 ; 3 uses
  %.not.i4.i24 = icmp eq ptr %i.bd, null
  br i1 %.not.i4.i24, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !131, !nonnull !108, !align !109
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !133
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !133
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bf, ptr noundef nonnull %i.bd)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l
  store ptr %i.az, ptr %i.d, align 8, !tbaa !130
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bk = load ptr, ptr %1, align 8, !tbaa !150   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i26, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !155, !nonnull !108, !align !109
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !133
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !133
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bl, ptr noundef nonnull %i.bk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pre29 = load ptr, ptr %i.d, align 8, !tbaa !130
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.bs, %bb.q ]
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit
  %i.bt = phi ptr [ %.pre29, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ null, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit ]
  ret ptr %i.bt
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK17simplifier_solver14reason_unknownB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver18set_reason_unknownEPKc(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver10get_labelsER7svectorI6symboljE(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(952) ptr @_ZNK17simplifier_solver11get_managerEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(952) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN17simplifier_solver9translateER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ast_translation, align 8     ; 8 uses
  %4 = alloca %class.dependent_expr, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(952) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(664) %0)
  call void @_ZN15ast_translationC2ER11ast_managerS1_b(ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull align 8 dereferenceable(952) %1, i1 noundef zeroext true)
  %i.k = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 664)
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17simplifier_solverC2EP6solverPSt8functionIFP25dependent_expr_simplifierR11ast_managerRK10params_refR20dependent_expr_stateEE(ptr noundef nonnull align 8 dereferenceable(664) %i.k, ptr noundef %i.f, ptr noundef null)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge, label %_ZN6vectorI14dependent_exprLb1EjE3endEv.exit

_ZN6vectorI14dependent_exprLb1EjE3endEv.exit:     ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !118  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorI14dependent_exprLb1EjE3endEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN14dependent_exprD2Ev.exit, %bb.c, %_ZN6vectorI14dependent_exprLb1EjE3endEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117  ; 3 uses
  %.not24 = icmp eq ptr %i.y, null
  br i1 %.not24, label %bb.r, label %bb.l

bb.d:                                             ; preds = %bb.q, %bb.l, %bb.b, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.e:                                             ; preds = %.lr.ph, %_ZN14dependent_exprD2Ev.exit
  %.026 = phi ptr [ %i.m, %.lr.ph ], [ %i.aq, %_ZN14dependent_exprD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN14dependent_exprC2ER15ast_translationRKS_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 dereferenceable(32) %.026)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !50  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !118
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZN14dependent_exprD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorI14dependent_exprLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !50 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !118
  br label %_ZN14dependent_exprD2Ev.exit

_ZN14dependent_exprD2Ev.exit:                     ; preds = %bb.g, %.noexc
  %i.ah = phi i32 [ %.pre2.i, %.noexc ], [ %i.ad, %bb.g ]
  %i.ai = phi ptr [ %.pre.i, %.noexc ], [ %i.aa, %bb.g ]
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !156, !nonnull !108, !align !109
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !22
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !157
  store <2 x ptr> %7, ptr %5, align 8, !tbaa !157
  store ptr null, ptr %i.u, align 8, !tbaa !145
  store ptr null, ptr %i.v, align 8, !tbaa !158
  %8 = load ptr, ptr %i.w, align 8, !tbaa !159
  store ptr %8, ptr %6, align 8, !tbaa !159
  store ptr null, ptr %i.w, align 8, !tbaa !159
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %.026, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.s
  br i1 %.not, label %._crit_edge, label %bb.e

bb.i:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14dependent_exprD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.s

bb.l:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(25) %i.y, ptr noundef nonnull align 8 dereferenceable(84) %3)
          to label %bb.m unwind label %bb.d       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 472 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !129
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !129
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !117 ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i22, label %_ZN3refI15model_converterEaSEPS0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !129
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !129
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %_ZN3refI15model_converterEaSEPS0_.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.bb) #21, !inline_history !5
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.bb)
          to label %_ZN3refI15model_converterEaSEPS0_.exit unwind label %bb.d

_ZN3refI15model_converterEaSEPS0_.exit:           ; preds = %bb.q, %bb.o, %bb.p
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  br label %bb.r

bb.r:                                             ; preds = %_ZN3refI15model_converterEaSEPS0_.exit, %._crit_edge
  call void @_ZN15ast_translationD1Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %i.k

bb.s:                                             ; preds = %bb.k, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.z, %bb.d ]
  call void @_ZN15ast_translationD1Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver11updt_paramsERK10params_ref(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN15then_simplifier11updt_paramsERK10params_ref.exit, label %_ZNK17scoped_ptr_vectorI25dependent_expr_simplifierE3endEv.exit.i

_ZNK17scoped_ptr_vectorI25dependent_expr_simplifierE3endEv.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %_ZN15then_simplifier11updt_paramsERK10params_ref.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK17scoped_ptr_vectorI25dependent_expr_simplifierE3endEv.exit.i, %.lr.ph.i
  %.010.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.g, %_ZNK17scoped_ptr_vectorI25dependent_expr_simplifierE3endEv.exit.i ] ; 2 uses
  %i.n = load ptr, ptr %.010.i, align 8, !tbaa !120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !287
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN15then_simplifier11updt_paramsERK10params_ref.exit, label %.lr.ph.i

_ZN15then_simplifier11updt_paramsERK10params_ref.exit: ; preds = %.lr.ph.i, %bb.a, %_ZNK17scoped_ptr_vectorI25dependent_expr_simplifierE3endEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver12reset_paramsERK10params_ref(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17simplifier_solver10get_paramsEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver20collect_param_descrsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver11push_paramsEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver10pop_paramsEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver18set_produce_modelsEb(ptr noundef nonnull align 8 dereferenceable(664) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(112) %i.b, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17simplifier_solver16assert_expr_coreEP4expr(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.dependent_expr, align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3refI5modelEaSEPS0_.exit, label %bb.b
end_hunk_0

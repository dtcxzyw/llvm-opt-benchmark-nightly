Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe_arith_plugin?download=true
inline.NumInlined: 2799
inline.NumDeleted: 874
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2qe11bounds_proc5resetEv:bb.a
  %.06.i.i214 = phi ptr [ %i.mj, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216 ], [ %i.lw, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i211 ] ; 2 uses
  %i.md = load ptr, ptr %.06.i.i214, align 8, !tbaa !174 ; 3 uses
  %i.me = load ptr, ptr %i.lu, align 8, !tbaa !222, !nonnull !18, !align !148
  %.not.i.i.i.i.i215 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i215, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i213
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !150
  %i.mh = add i32 %i.mg, -1                       ; 2 uses
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !150
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.ak, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.me, ptr noundef nonnull %i.md)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216: ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i213
  %i.mj = getelementptr inbounds nuw i8, ptr %.06.i.i214, i64 8 ; 2 uses
  %i.mk = icmp ult ptr %i.mj, %i.mc
  br i1 %i.mk, label %.lr.ph.i.i213, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i217, !llvm.loop !2

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i217: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i216
  %.pre.i218 = load ptr, ptr %i.lv, align 8, !tbaa !186 ; 2 uses
  %.not.i.i219 = icmp eq ptr %.pre.i218, null
  br i1 %.not.i.i219, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit221, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i220

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i220: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i217, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i211
  %i.ml = phi ptr [ %.pre.i218, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i217 ], [ %i.lw, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i211 ]
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -4
  store i32 0, ptr %i.mm, align 4, !tbaa !145
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit221

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit221: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit210, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i217, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i220
  ret void
}

declare noundef zeroext i1 @_ZN10check_predclEP4expr(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2qe11bounds_proc12get_le_boundER12contains_appP3app(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 9 uses
  %4 = alloca %class.obj_ref, align 8             ; 11 uses
  %5 = alloca %class.rational, align 8            ; 20 uses
  %6 = alloca %class.rational, align 8            ; 16 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !18, !align !148 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252, !nonnull !18, !align !148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store i32 1, ptr %i.i, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !143
  %i.n = invoke noundef zeroext i1 @_ZN2qe13arith_qe_util13is_le_ge_coreILj1EEEbP3appR7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(912) %i.a, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN2qe13arith_qe_util5is_leEP3appR7obj_refI4expr11ast_managerE.exit unwind label %bb.r

_ZN2qe13arith_qe_util5is_leEP3appR7obj_refI4expr11ast_managerE.exit: ; preds = %bb.a
  br i1 %i.n, label %bb.b, label %bb.am

bb.b:                                             ; preds = %_ZN2qe13arith_qe_util5is_leEP3appR7obj_refI4expr11ast_managerE.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !18, !align !148
  %i.p = load ptr, ptr %3, align 8, !tbaa !175
  %i.q = invoke noundef zeroext i1 @_ZN2qe13arith_qe_util9get_coeffER12contains_appP4exprR8rationalR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(912) %i.o, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %bb.am

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !162
  %i.s = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.r)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %.noexc
  %i.w = load i32, ptr %i.u, align 8, !tbaa !203
  %i.x = icmp eq i32 %i.w, 5
  br i1 %i.x, label %_ZNK2qe13arith_qe_util7is_realEP3app.exit, label %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread

_ZNK2qe13arith_qe_util7is_realEP3app.exit:        ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !202
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread

bb.e:                                             ; preds = %_ZNK2qe13arith_qe_util7is_realEP3app.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !257, !nonnull !18, !align !148
  %i.ac = load ptr, ptr %4, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  store i32 0, ptr %6, align 8, !tbaa !142, !alias.scope !414
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 4, !alias.scope !414
  %i.af = and i8 %i.ae, -4                        ; 2 uses
  store i8 %i.af, ptr %i.ad, align 4, !alias.scope !414
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !143, !alias.scope !414
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !142, !alias.scope !414
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 4, !alias.scope !414
  %i.ak = and i8 %i.aj, -4
  store i8 %i.ak, ptr %i.ai, align 4, !alias.scope !414
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.al, align 8, !tbaa !143, !alias.scope !414
  %i.am = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !164, !noalias !414 ; 2 uses
  %i.an = load i8, ptr %i.e, align 4, !noalias !414
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %5, align 8, !tbaa !142, !noalias !414
  store i32 %i.aq, ptr %6, align 8, !tbaa !142, !alias.scope !414
  store i8 %i.af, ptr %i.ad, align 4, !alias.scope !414
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.s

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ar = load i8, ptr %i.j, align 4, !noalias !414
  %i.as = and i8 %i.ar, 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.au = load i32, ptr %i.i, align 8, !tbaa !142, !noalias !414
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !142, !alias.scope !414
  %i.av = load i8, ptr %i.ai, align 4, !alias.scope !414
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.ai, align 4, !alias.scope !414
  br label %_ZN8rationalC2ERKS_.exit.i

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.s

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.i, %bb.h
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !164, !noalias !414
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_Z3absRK8rational.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #19
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  invoke void @_ZN2qe13arith_qe_util6mk_divEP4exprRK8rationalR7obj_refIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(912) %i.ab, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_Z3absRK8rational.exit
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !164 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i, %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #20
  unreachable

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bc = load i32, ptr %5, align 8, !tbaa !142
  %i.bd = icmp sgt i32 %i.bc, 0
  %spec.select = select i1 %i.bd, ptr @_ZN8rational5m_oneE, ptr @_ZN8rational11m_minus_oneE ; 5 uses
  %i.be = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !164 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %.val44 = load i8, ptr %7, align 4
  %i.bf = and i8 %.val44, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %spec.select, align 8, !tbaa !142
  store i32 %i.bh, ptr %5, align 8, !tbaa !142
  %i.bi = load i8, ptr %i.e, align 4
  %i.bj = and i8 %i.bi, -2
  store i8 %i.bj, ptr %i.e, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %spec.select)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %bb.r

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.o, %bb.n
  %8 = getelementptr inbounds nuw i8, ptr %spec.select, i64 16 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %.val46 = load i8, ptr %9, align 4
  %i.bk = and i8 %.val46, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.bm = load i32, ptr %8, align 8, !tbaa !142
  store i32 %i.bm, ptr %i.i, align 8, !tbaa !142
  %i.bn = load i8, ptr %i.j, align 4
  %i.bo = and i8 %i.bn, -2
  store i8 %i.bo, ptr %i.j, align 4
  br label %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread

bb.q:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.al, %bb.ag, %bb.ac, %bb.x, %bb.q, %bb.o, %bb.d, %bb.a, %bb.ah, %bb.y, %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.s:                                             ; preds = %bb.i, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_Z3absRK8rational.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #19
  br label %.body

.body:                                            ; preds = %bb.s, %bb.j, %bb.t
  %.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %i.bq, %bb.s ], [ %i.ay, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.au

_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread: ; preds = %.noexc, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %_ZNK2qe13arith_qe_util7is_realEP3app.exit, %bb.q, %bb.p
  %i.bs = load i32, ptr %5, align 8, !tbaa !142
  %i.bt = icmp slt i32 %i.bs, 0
  %i.bu = load ptr, ptr %4, align 8, !tbaa !175   ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null         ; 2 uses
  br i1 %i.bt, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !150
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !150
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.v, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !145 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !145
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %.noexc20 unwind label %bb.r

.noexc20:                                         ; preds = %bb.x
  %.pre.i.i = load ptr, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !145
  br label %bb.y

bb.y:                                             ; preds = %.noexc20, %bb.w
  %i.cg = phi i32 [ %.pre2.i.i, %.noexc20 ], [ %i.cc, %bb.w ] ; 2 uses
  %i.ch = phi ptr [ %.pre.i.i, %.noexc20 ], [ %i.bz, %bb.w ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  store ptr %i.bu, ptr %i.ck, align 8, !tbaa !146
  %i.cl = add i32 %i.cg, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !145
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.z unwind label %bb.r       ; 0 uses

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i21 = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i21, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !150
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !150
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.aa, %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !186 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !145 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !145
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.ac, label %.sink.split

bb.ac:                                            ; preds = %bb.ab, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
          to label %.sink.split.sink.split unwind label %bb.r

bb.ad:                                            ; preds = %_ZNK2qe13arith_qe_util7is_realEP3app.exit.thread
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i27, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !150
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !150
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i27

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i27: ; preds = %bb.ae, %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !53 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i27
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !145 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !145
  %i.dj = icmp eq i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i27
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %.noexc31 unwind label %bb.r

.noexc31:                                         ; preds = %bb.ag
  %.pre.i.i28 = load ptr, ptr %i.dc, align 8, !tbaa !53 ; 2 uses
  %.phi.trans.insert.i.i29 = getelementptr inbounds i8, ptr %.pre.i.i28, i64 -4
  %.pre2.i.i30 = load i32, ptr %.phi.trans.insert.i.i29, align 4, !tbaa !145
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc31, %bb.af
  %i.dk = phi i32 [ %.pre2.i.i30, %.noexc31 ], [ %i.dg, %bb.af ] ; 2 uses
  %i.dl = phi ptr [ %.pre.i.i28, %.noexc31 ], [ %i.dd, %bb.af ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dn
  store ptr %i.bu, ptr %i.do, align 8, !tbaa !146
  %i.dp = add i32 %i.dk, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !145
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI8rationalLb1EjE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ai unwind label %bb.r      ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i.i33 = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i33, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i34, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !150
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !150
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i34

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i34: ; preds = %bb.aj, %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !186 ; 4 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i34
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !145 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !145
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i34
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %.sink.split.sink.split unwind label %bb.r

.sink.split.sink.split:                           ; preds = %bb.al, %bb.ac
  %.pre.i.i35.sink.in = phi ptr [ %i.cr, %bb.ac ], [ %i.dv, %bb.al ]
  %.pre.i.i35.sink = load ptr, ptr %.pre.i.i35.sink.in, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert.i.i36 = getelementptr inbounds i8, ptr %.pre.i.i35.sink, i64 -4
  %.pre2.i.i37 = load i32, ptr %.phi.trans.insert.i.i36, align 4, !tbaa !145
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlarith_util?download=true
inline.NumInlined: 2183
inline.NumDeleted: 533
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7nlarith4util3imp6mk_infEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10check_predD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !125  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i, align 8, !tbaa !127 ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !128, !nonnull !111, !align !112
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !100
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !100
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull %i.j)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.r = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.c, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.s)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.x, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.z)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #19
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !145 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN8ast_markD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ae)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #19
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.ai, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !145 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i1, label %bb.j

bb.j:                                             ; preds = %_ZN8ast_markD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ak)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i1 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #19
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i1: ; preds = %bb.j, %_ZN8ast_markD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !145 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN8ast_markD2Ev.exit2, label %bb.l

bb.l:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i1
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN8ast_markD2Ev.exit2 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #19
  unreachable

_ZN8ast_markD2Ev.exit2:                           ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i1, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp18extract_non_linearEP4exprR8ast_markR10ptr_vectorI3appE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ast_mark, align 8            ; 15 uses
  %5 = alloca %class.ptr_vector, align 8          ; 17 uses
  %i.a = tail call noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %1)
  br i1 %i.a, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %4, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !104
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !104 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !125 ; 2 uses
  %i.d = zext i32 %.pre2.i to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.d
  store ptr %1, ptr %i.e, align 8, !tbaa !127
  %i.f = add i32 %.pre2.i, 1
  store i32 %i.f, ptr %.phi.trans.insert.i, align 4, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph, %.backedge
  %i.h = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.lr.ph ], [ %i.ff, %.backedge ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.an, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 3 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %trunc = trunc i32 %i.q to i16
  switch i16 %trunc, label %bb.i [
    i16 1, label %.backedge
    i16 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !465  ; 4 uses
  %i.t = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.s)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8, !tbaa !104    ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !125  ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit46

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.h
  %.pre.i42 = load ptr, ptr %5, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i43 = getelementptr inbounds i8, ptr %.pre.i42, i64 -4
  %.pre2.i44 = load i32, ptr %.phi.trans.insert.i43, align 4, !tbaa !125
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit46

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit46:   ; preds = %bb.g, %.noexc45
  %i.ab = phi i32 [ %.pre2.i44, %.noexc45 ], [ %i.x, %bb.g ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i42, %.noexc45 ], [ %i.u, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.s, ptr %i.af, align 8, !tbaa !127
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit46, %bb.e
  %.078 = phi ptr [ %i.s, %bb.e ], [ %i.s, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit46 ], [ %i.o, %bb.c ] ; 13 uses
  %i.ah = load i8, ptr %i.g, align 8, !tbaa !97, !range !141, !noundef !111
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %.078)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br i1 %i.aj, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 65535
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.078, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !180
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i

_ZNK17arith_recognizers6is_mulEPK4expr.exit.i:    ; preds = %bb.m
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !136
  %i.at = icmp eq i32 %i.as, 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, 9
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %select.unfold.preheader.i, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit

select.unfold.preheader.i:                        ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.078, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !181 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %wide.trip.count.i = zext i32 %i.az to i64
  %exitcond.not.not.i.not144 = icmp eq i32 %i.az, 0
  br i1 %exitcond.not.not.i.not144, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit, label %.lr.ph147

.lr.ph147:                                        ; preds = %select.unfold.backedge.i, %select.unfold.preheader.i
  %.01014.i146 = phi i32 [ %i.br, %select.unfold.backedge.i ], [ 0, %select.unfold.preheader.i ]
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i, %select.unfold.backedge.i ], [ 0, %select.unfold.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i145
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !127 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 65535
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %select.unfold.backedge.i

bb.n:                                             ; preds = %.lr.ph147
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %select.unfold.backedge.i, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !136
  %i.bm = icmp ne i32 %i.bl, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp ne i32 %i.bo, 0
  %.not13.i = select i1 %i.bm, i1 true, i1 %i.bp
  %i.bq = zext i1 %.not13.i to i32
  br label %select.unfold.backedge.i

select.unfold.backedge.i:                         ; preds = %.split.i, %bb.n, %.lr.ph147
  %.sink.i = phi i32 [ %i.bq, %.split.i ], [ 1, %.lr.ph147 ], [ 1, %bb.n ]
  %i.br = add nuw nsw i32 %.sink.i, %.01014.i146  ; 2 uses
  %i.bs = icmp samesign ugt i32 %i.br, 1          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond165 = select i1 %i.bs, i1 true, i1 %exitcond.not.not.i.not
  br i1 %or.cond165, label %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit, label %.lr.ph147

_ZN7nlarith4util3imp12is_nonlinearEP3app.exit:    ; preds = %select.unfold.backedge.i, %select.unfold.preheader.i, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i, %bb.m, %bb.l, %bb.k, %bb.i
  %i.bt = phi i1 [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.m ], [ false, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i ], [ false, %bb.l ], [ false, %select.unfold.preheader.i ], [ %i.bs, %select.unfold.backedge.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.078, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !180
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !132 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit.thread, label %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit

_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit: ; preds = %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !136
  switch i32 %i.bz, label %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit.thread [
    i32 5, label %.preheader81
    i32 0, label %.preheader81
  ]

.preheader81:                                     ; preds = %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit, %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.078, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !181
  %.not95 = icmp eq i32 %i.cb, 0
  br i1 %.not95, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader81
  %i.cc = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %.not = xor i1 %i.bt, true
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127 ; 5 uses
  %i.cf = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.ce)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cg = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ce)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %or.cond = or i1 %i.cf, %.not
  %or.cond41 = and i1 %or.cond, %i.cg
  br i1 %or.cond41, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %5, align 8, !tbaa !104   ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !125 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !125
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.t
  %.pre.i47 = load ptr, ptr %5, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i48 = getelementptr inbounds i8, ptr %.pre.i47, i64 -4
  %.pre2.i49 = load i32, ptr %.phi.trans.insert.i48, align 4, !tbaa !125
  br label %bb.u

bb.u:                                             ; preds = %.noexc50, %bb.s
  %i.co = phi i32 [ %.pre2.i49, %.noexc50 ], [ %i.ck, %bb.s ] ; 2 uses
  %i.cp = phi ptr [ %.pre.i47, %.noexc50 ], [ %i.ch, %bb.s ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cr
  store ptr %i.ce, ptr %i.cs, align 8, !tbaa !127
  %i.ct = add i32 %i.co, 1
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !125
  %i.cu = load ptr, ptr %2, align 8, !tbaa !114
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ce, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.ce, i1 noundef zeroext true)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.q, %bb.v, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i32, ptr %i.ca, align 8, !tbaa !181
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %bb.o, label %.backedge, !llvm.loop !461

_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit.thread: ; preds = %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit, %_ZN7nlarith4util3imp12is_nonlinearEP3app.exit
  %i.da = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %.078)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !132 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.preheader, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %.noexc52
  %i.de = load i32, ptr %i.dc, align 8, !tbaa !136
  %i.df = icmp eq i32 %i.de, 5
  br i1 %i.df, label %_ZNK17arith_recognizers7is_realEPK4expr.exit.i, label %.preheader

_ZNK17arith_recognizers7is_realEPK4expr.exit.i:   ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !137
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.y, label %.preheader

bb.y:                                             ; preds = %_ZNK17arith_recognizers7is_realEPK4expr.exit.i
  %i.dj = load ptr, ptr %i.bu, align 8, !tbaa !180
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !132 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZNK3app13get_family_idEv.exit.thread.i, label %_ZNK3app13get_family_idEv.exit.i51

_ZNK3app13get_family_idEv.exit.i51:               ; preds = %bb.y
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !136
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %_ZNK3app13get_family_idEv.exit.thread.i, label %.preheader

_ZNK3app13get_family_idEv.exit.thread.i:          ; preds = %_ZNK3app13get_family_idEv.exit.i51, %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %.078, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !181
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.z, label %.preheader

.preheader:                                       ; preds = %.noexc52, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %_ZNK17arith_recognizers7is_realEPK4expr.exit.i, %_ZNK3app13get_family_idEv.exit.i51, %_ZNK3app13get_family_idEv.exit.thread.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.078, i64 24 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !181
  %.not96 = icmp eq i32 %i.dt, 0
  br i1 %.not96, label %.backedge, label %.lr.ph94

.lr.ph94:                                         ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %.078, i64 32
  br label %bb.ad

bb.z:                                             ; preds = %_ZNK3app13get_family_idEv.exit.thread.i
  br i1 %i.bt, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %3, align 8, !tbaa !140   ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !125 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 -8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !125
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_ZN6vectorIP3appLb0EjE9push_backERKS1_.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ac
  %.pre.i53 = load ptr, ptr %3, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i54 = getelementptr inbounds i8, ptr %.pre.i53, i64 -4
  %.pre2.i55 = load i32, ptr %.phi.trans.insert.i54, align 4, !tbaa !125
  br label %_ZN6vectorIP3appLb0EjE9push_backERKS1_.exit

_ZN6vectorIP3appLb0EjE9push_backERKS1_.exit:      ; preds = %bb.ab, %.noexc56
  %i.ec = phi i32 [ %.pre2.i55, %.noexc56 ], [ %i.dy, %bb.ab ] ; 2 uses
  %i.ed = phi ptr [ %.pre.i53, %.noexc56 ], [ %i.dv, %bb.ab ] ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.ef = zext i32 %i.ec to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ef
  store ptr %.078, ptr %i.eg, align 8, !tbaa !146
  %i.eh = add i32 %i.ec, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !125
  br label %.backedge

bb.ad:                                            ; preds = %.lr.ph94, %bb.am
  %indvars.iv109 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next110, %bb.am ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv109
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !127 ; 5 uses
  %i.ek = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ej)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ek, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.el = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.ej)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.el, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.em = load ptr, ptr %5, align 8, !tbaa !104   ; 4 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !125 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !125
  %i.es = icmp eq i32 %i.ep, %i.er
  br i1 %i.es, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.aj
  %.pre.i57 = load ptr, ptr %5, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i58 = getelementptr inbounds i8, ptr %.pre.i57, i64 -4
  %.pre2.i59 = load i32, ptr %.phi.trans.insert.i58, align 4, !tbaa !125
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc60, %bb.ai
  %i.et = phi i32 [ %.pre2.i59, %.noexc60 ], [ %i.ep, %bb.ai ] ; 2 uses
  %i.eu = phi ptr [ %.pre.i57, %.noexc60 ], [ %i.em, %bb.ai ] ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ew = zext i32 %i.et to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  store ptr %i.ej, ptr %i.ex, align 8, !tbaa !127
  %i.ey = add i32 %i.et, 1
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !125
  %i.ez = load ptr, ptr %2, align 8, !tbaa !114
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ej, i1 noundef zeroext true)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.ej, i1 noundef zeroext true)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.u, %bb.p, %bb.o, %bb.t, %bb.ad, %bb.af, %bb.ak, %bb.al, %bb.aj, %bb.j, %_ZN7nlarith4util3imp15is_arithmeticalEP3app.exit.thread, %bb.ac, %bb.h, %bb.d, %bb.b
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN8ast_markD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp154

bb.am:                                            ; preds = %bb.al, %bb.ag
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.fc = load i32, ptr %i.ds, align 8, !tbaa !181
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next110, %i.fd
  br i1 %i.fe, label %bb.ad, label %.backedge, !llvm.loop !462

.backedge:                                        ; preds = %bb.x, %bb.am, %bb.z, %_ZN6vectorIP3appLb0EjE9push_backERKS1_.exit, %.preheader, %.preheader81, %bb.c
  %i.ff = load ptr, ptr %5, align 8, !tbaa !104   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit

bb.an:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %i.fh = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fh)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.backedge, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %4, align 8, !tbaa !114
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !145 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fl)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #19
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.ap, %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !145 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_ZN8ast_markD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #19
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %_ZN8ast_markD2Ev.exit
  ret void
}

declare noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp18extract_non_linearEjPKP3appR10ptr_vectorIS2_E(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ast_mark, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %4, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !145 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %4, align 8, !tbaa !114
  %i.c = icmp eq ptr %.pre, null
  br i1 %i.c, label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre)
          to label %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i: ; preds = %bb.a, %bb.b, %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN8ast_markD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN8ast_markD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #19
  unreachable

_ZN8ast_markD2Ev.exit:                            ; preds = %_ZN8obj_markI4decl10bit_vectorN8ast_mark9decl2uintEED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  invoke void @_ZN7nlarith4util3imp18extract_non_linearEP4exprR8ast_markR10ptr_vectorI3appE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !466

bb.g:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ast_markD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp21get_sign_branches_neqERNS0_11literal_setER10ptr_vectorINS0_6branchEE(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.39, align 8       ; 9 uses
  %4 = alloca %class.obj_ref, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  store i64 %i.b, ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !22
  %i.e = invoke noundef ptr @_ZN7nlarith4util3imp13mk_inf_branchERNS0_11literal_setEb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !260    ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !125  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !125
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN6vectorIPN7nlarith4util6branchELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !260 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.m = phi i32 [ %.pre2.i, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre.i, %.noexc ], [ %i.f, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  store ptr %i.e, ptr %i.q, align 8, !tbaa !262
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !125
  %i.s = invoke noundef ptr @_ZN7nlarith4util3imp13mk_inf_branchERNS0_11literal_setEb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %2, align 8, !tbaa !260    ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !125  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorIPN7nlarith4util6branchELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc18 unwind label %bb.x

.noexc18:                                         ; preds = %bb.h
  %.pre.i15 = load ptr, ptr %2, align 8, !tbaa !260 ; 2 uses
  %.phi.trans.insert.i16 = getelementptr inbounds i8, ptr %.pre.i15, i64 -4
  %.pre2.i17 = load i32, ptr %.phi.trans.insert.i16, align 4, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %.noexc18, %bb.g
  %i.aa = phi i32 [ %.pre2.i17, %.noexc18 ], [ %i.w, %bb.g ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i15, %.noexc18 ], [ %i.t, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !262
  %i.af = add i32 %i.aa, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !125
  invoke void @_ZN7nlarith4util3imp8mk_boundERNS0_11literal_setER7obj_refI3app11ast_managerER10ref_vectorIS5_S6_E(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.ag = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.k unwind label %bb.x       ; 7 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !98    ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nlarith4util3imp13simple_branchE, i64 16), ptr %i.ag, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !22
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !100
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !100
  br label %bb.l

bb.l:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ap = ptrtoint ptr %i.ah to i64
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN7nlarith4util3imp10swap_atomsEPNS1_13simple_branchERK10ref_vectorI3app11ast_managerES9_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %2, align 8, !tbaa !260   ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !125 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !125
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN6vectorIPN7nlarith4util6branchELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc23 unwind label %bb.x

.noexc23:                                         ; preds = %bb.o
  %.pre.i20 = load ptr, ptr %2, align 8, !tbaa !260 ; 2 uses
  %.phi.trans.insert.i21 = getelementptr inbounds i8, ptr %.pre.i20, i64 -4
  %.pre2.i22 = load i32, ptr %.phi.trans.insert.i21, align 4, !tbaa !125
  br label %bb.p

bb.p:                                             ; preds = %.noexc23, %bb.n
  %i.az = phi i32 [ %.pre2.i22, %.noexc23 ], [ %i.av, %bb.n ] ; 2 uses
  %i.ba = phi ptr [ %.pre.i20, %.noexc23 ], [ %i.as, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  store ptr %i.ag, ptr %i.bd, align 8, !tbaa !262
  %i.be = add i32 %i.az, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !125
  %i.bf = load ptr, ptr %4, align 8, !tbaa !98    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !100
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !100
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %i.bf)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !140 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !125 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

end_hunk_0
begin_hunk_1_@_ZN7nlarith4util3imp8mk_boundERNS0_11literal_setER7obj_refI3app11ast_managerER10ref_vectorIS5_S6_E:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !100
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !100
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aq, ptr noundef nonnull %i.ao)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  store ptr %i.ak, ptr %2, align 8, !tbaa !98
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !104 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.r
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !125 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  %.not.i25 = icmp eq i32 %i.ay, 0
  br i1 %.not.i25, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i27 = phi ptr [ %i.bi, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.av, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i27, align 8, !tbaa !127 ; 3 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !128, !nonnull !111, !align !112
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i28, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !100
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !100
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull %i.bc)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.v

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.t, %bb.s, %.lr.ph.i.i26
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i27, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.bb
  br i1 %i.bj, label %.lr.ph.i.i26, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i29 = load ptr, ptr %i.v, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i29, null
  br i1 %.not.i.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.bk = phi ptr [ %.pre.i29, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.av, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bl)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.w:                                             ; preds = %bb.q, %bb.k, %bb.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN7nlarith4util11literal_set5x_supEv.exit, %_ZN7nlarith4util11literal_set5x_infEv.exit, %bb.g, %bb.f, %bb.e, %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp10swap_atomsEPNS1_13simple_branchERK10ref_vectorI3app11ast_managerES9_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge.preheader, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

.critedge.preheader:                              ; preds = %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge23, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13.lr.ph: ; preds = %.critedge.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit ] ; 3 uses
  %i.k = phi ptr [ %i.b, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.au, %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !125
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %bb.b, label %.critedge.preheader

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !100
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !140  ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !125  ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.e:                                             ; preds = %bb.d, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ab = phi i32 [ %.pre2.i.i.i.i, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.q, ptr %i.af, align 8, !tbaa !146
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !125
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !266 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !125 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !125
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  tail call void @_ZN6vectorIN7nlarith4util11atom_updateELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !266 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !125
  br label %_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit

_ZN7nlarith4util3imp13simple_branch6removeEP3app.exit: ; preds = %bb.f, %bb.g
  %i.ao = phi i32 [ %.pre2.i.i.i, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 1, ptr %i.as, align 4, !tbaa !268
  %i.at = add i32 %i.ao, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge.preheader, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !467

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13.lr.ph, %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit
  %indvars.iv27 = phi i64 [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13.lr.ph ], [ %indvars.iv.next28, %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit ] ; 3 uses
  %i.aw = phi ptr [ %i.g, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13.lr.ph ], [ %i.cg, %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !125
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv27, %i.az
  br i1 %i.ba, label %bb.h, label %.critedge23

.critedge23:                                      ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13, %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit, %.critedge.preheader
  ret void

bb.h:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv27
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i14, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !100
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i15

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i15: ; preds = %bb.i, %bb.h
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !140 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i15
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !125 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !125
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i16

bb.k:                                             ; preds = %bb.j, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i15
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i.i.i.i20 = load ptr, ptr %i.i, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds i8, ptr %.pre.i.i.i.i20, i64 -4
  %.pre2.i.i.i.i22 = load i32, ptr %.phi.trans.insert.i.i.i.i21, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i16

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i16: ; preds = %bb.k, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i.i.i22, %bb.k ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i.i.i20, %bb.k ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.bc, ptr %i.br, align 8, !tbaa !146
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !125
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !266 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i16
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !125 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !125
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.m, label %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i16
  tail call void @_ZN6vectorIN7nlarith4util11atom_updateELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i.i17 = load ptr, ptr %i.j, align 8, !tbaa !266 ; 2 uses
  %.phi.trans.insert.i.i.i18 = getelementptr inbounds i8, ptr %.pre.i.i.i17, i64 -4
  %.pre2.i.i.i19 = load i32, ptr %.phi.trans.insert.i.i.i18, align 4, !tbaa !125
  br label %_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit

_ZN7nlarith4util3imp13simple_branch6insertEP3app.exit: ; preds = %bb.l, %bb.m
  %i.ca = phi i32 [ %.pre2.i.i.i19, %bb.m ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cb = phi ptr [ %.pre.i.i.i17, %bb.m ], [ %i.bt, %bb.l ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !268
  %i.cf = add i32 %i.ca, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !125
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.critedge23, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit13, !llvm.loop !468
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN7nlarith4util6branchELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !260    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !260
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !125  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !170
  %i.r = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !171  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !169
  %i.y = load i64, ptr %i.s, align 8, !tbaa !161
  store i64 %i.y, ptr %i.q, align 8, !tbaa !161
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !171
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !171
  store ptr %i.s, ptr %1, align 8, !tbaa !169
  store i64 0, ptr %i.aa, align 8, !tbaa !171
  store i8 0, ptr %i.s, align 8, !tbaa !161
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !161
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.o) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !260
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp11mk_inf_signERNS1_6isubstERKNS0_11literal_setER7obj_refI3app11ast_managerER10ref_vectorIS8_S9_E(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.ref_vector, align 8          ; 7 uses
  %6 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.b, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.i = load ptr, ptr %.06.i.i, align 8, !tbaa !146 ; 3 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !100
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !100
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.q = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.b, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 0, ptr %i.r, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.a, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.s = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %5, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store ptr null, ptr %i.u, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph

_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %_ZNK7nlarith4util11literal_set4sizeEv.exit

_ZNK7nlarith4util11literal_set4sizeEv.exit:       ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph, %bb.q
  %i.ab = phi ptr [ %i.x, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %i.ch, %bb.q ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !125
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %i.af, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit, %bb.q
  %.pre39 = load ptr, ptr %i.u, align 8, !tbaa !104 ; 3 uses
  %i.ag = icmp eq ptr %.pre39, null
  br i1 %i.ag, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds i8, ptr %.pre39, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %.critedge, %bb.d
  %i.aj = phi ptr [ %.pre39, %bb.d ], [ null, %.critedge ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ]
  %.0.i.i = phi i32 [ %i.ai, %bb.d ], [ 0, %.critedge ], [ 0, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ]
  %i.ak = invoke noundef ptr @_ZN7nlarith4util3imp6mk_andEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %.0.i.i, ptr noundef %i.aj)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !143 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv
  switch i32 %i.an, label %bb.i [
    i32 3, label %bb.h
    i32 0, label %.sink.split.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.h, %bb.g
  %.sink13.i = phi i64 [ 40, %bb.h ], [ 16, %bb.g ], [ 32, %bb.f ]
  %i.ar = load ptr, ptr %1, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink13.i
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.sink.split.i._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

.sink.split.i._crit_edge:                         ; preds = %.sink.split.i
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !140
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i._crit_edge, %bb.f
  %i.au = phi ptr [ %.pre, %.sink.split.i._crit_edge ], [ %i.ab, %bb.f ]
  %i.av = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !146
  %i.ay = load ptr, ptr %6, align 8, !tbaa !98
  %i.az = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.av, i32 noundef 0, i32 noundef 9, ptr noundef %i.ax, ptr noundef %i.ay)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %bb.i
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !100
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.j, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !104 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !125 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !125
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %i.u, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  br label %bb.m

bb.m:                                             ; preds = %.noexc21, %bb.k
  %i.bk = phi i32 [ %.pre2.i.i, %.noexc21 ], [ %i.bg, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i.i, %.noexc21 ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.az, ptr %i.bo, align 8, !tbaa !127
  %i.bp = add i32 %i.bk, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !125
  %i.bq = load ptr, ptr %6, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i22, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !100
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.n, %bb.m
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !140 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !125 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !125
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.p, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.p
  %.pre.i.i23 = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i24 = getelementptr inbounds i8, ptr %.pre.i.i23, i64 -4
  %.pre2.i.i25 = load i32, ptr %.phi.trans.insert.i.i24, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.o, %.noexc26
  %i.cb = phi i32 [ %.pre2.i.i25, %.noexc26 ], [ %i.bx, %bb.o ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i23, %.noexc26 ], [ %i.bu, %bb.o ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.bq, ptr %i.cf, align 8, !tbaa !146
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !125
  %.pre38 = load ptr, ptr %i.w, align 8, !tbaa !140
  br label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.e
  %i.ch = phi ptr [ %.pre38, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.ab, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit, !llvm.loop !469

bb.r:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i27 = icmp eq ptr %i.ak, null
  br i1 %.not.i27, label %bb.s, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !100
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !100
  br label %bb.s

bb.s:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.r
  %i.cm = load ptr, ptr %3, align 8, !tbaa !98    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cm, null
  br i1 %.not.i4.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !100
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !100
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cm)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u
  store ptr %i.ak, ptr %3, align 8, !tbaa !98
  %i.ct = load ptr, ptr %6, align 8, !tbaa !98    ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i29, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !100
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !100
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cu, ptr noundef nonnull %i.ct)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.db = load ptr, ptr %i.u, align 8, !tbaa !104 ; 5 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !125 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dg
  %.not.i30 = icmp eq i32 %i.de, 0
  br i1 %.not.i30, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i32 = phi ptr [ %i.do, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.db, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.di = load ptr, ptr %.06.i.i32, align 8, !tbaa !127 ; 3 uses
  %i.dj = load ptr, ptr %5, align 8, !tbaa !128, !nonnull !111, !align !112
  %.not.i.i.i.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i33, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !100
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !100
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dj, ptr noundef nonnull %i.di)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ac

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i.i31
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i32, i64 8 ; 2 uses
  %i.dp = icmp ult ptr %i.do, %i.dh
  br i1 %i.dp, label %.lr.ph.i.i31, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i34 = load ptr, ptr %i.u, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i34, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.dq = phi ptr [ %.pre.i34, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.db, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #19
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.l, %bb.i, %.sink.split.i, %bb.u, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp14plus_inf_substD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp14plus_inf_subst5mk_ltERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call noundef ptr @_ZN7nlarith4util3imp14plus_inf_subst5mk_ltERK10ref_vectorI3app11ast_managerEj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0.i.i) ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !100
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !98     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.j, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !100
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !100
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.l, ptr noundef nonnull %i.j)
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.f, ptr %2, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp14plus_inf_subst5mk_eqERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !111, !align !112
  %i.c = tail call noundef ptr @_ZN7nlarith4util3imp7mk_zeroERK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i
end_hunk_1
begin_hunk_2_@_ZN7nlarith4util3imp14plus_inf_subst5mk_ltERK10ref_vectorI3app11ast_managerEj:bb.a
  %i.r = tail call noundef ptr @_ZN7nlarith4util3imp14plus_inf_subst5mk_ltERK10ref_vectorI3app11ast_managerEj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.q, ptr %i.b, align 16, !tbaa !127
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !127
  %i.t = call noundef ptr @_ZN7nlarith4util3imp6mk_andEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %i.d, i32 noundef 2, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.o, ptr %i.a, align 16, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !127
  %i.v = call noundef ptr @_ZN7nlarith4util3imp5mk_orEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %i.d, i32 noundef 2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %common.ret21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp14mk_exists_zeroERNS0_11literal_setEbPK10ref_vectorI3app11ast_managerERS4_I4exprS6_ERS7_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.ref_vector, align 8          ; 7 uses
  %7 = alloca %class.obj_ref, align 8             ; 13 uses
  %8 = alloca %"class.nlarith::util::imp::basic_subst", align 8 ; 10 uses
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.pre.i22 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit

_ZN7nlarith4util11literal_set5x_supEv.exit:       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.f = phi ptr [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], [ %.pre.i22, %bb.e ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.g = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store i64 %i.h, ptr %6, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store ptr null, ptr %i.i, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr null, ptr %7, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.j, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.k, align 8, !tbaa !190
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7nlarith4util3imp11basic_substE, i64 16), ptr %8, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.f, ptr %i.l, align 8, !tbaa !264
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph

_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph: ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %_ZNK7nlarith4util11literal_set4sizeEv.exit

_ZNK7nlarith4util11literal_set4sizeEv.exit:       ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph, %bb.o
  %i.s = phi ptr [ null, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %i.bq, %bb.o ] ; 2 uses
  %i.t = phi ptr [ %i.n, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %i.br, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !125
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv, %i.w
  br i1 %i.x, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit, %bb.o, %_ZN7nlarith4util11literal_set5x_supEv.exit
  %i.y = phi ptr [ null, %_ZN7nlarith4util11literal_set5x_supEv.exit ], [ %i.s, %_ZNK7nlarith4util11literal_set4sizeEv.exit ], [ %i.bq, %bb.o ] ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.x, label %bb.p

bb.f:                                             ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !143
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %8, align 8, !tbaa !114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit: ; preds = %bb.g
  %i.ai = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !100
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.h, %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !140 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !125
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.at = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ap, %bb.i ] ; 2 uses
  %i.au = phi ptr [ %.pre.i.i, %.noexc ], [ %i.am, %bb.i ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = zext i32 %i.at to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  store ptr %i.ai, ptr %i.ax, align 8, !tbaa !146
  %i.ay = add i32 %i.at, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !125
  %i.az = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i23, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !100
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.l, %bb.k
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !104 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !125 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !125
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %bb.n
  %.pre.i.i24 = load ptr, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i25 = getelementptr inbounds i8, ptr %.pre.i.i24, i64 -4
  %.pre2.i.i26 = load i32, ptr %.phi.trans.insert.i.i25, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.m, %.noexc27
  %i.bk = phi i32 [ %.pre2.i.i26, %.noexc27 ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i.i24, %.noexc27 ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.az, ptr %i.bo, align 8, !tbaa !127
  %i.bp = add i32 %i.bk, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !125
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !140
  br label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.f
  %i.bq = phi ptr [ %i.bl, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.br = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.t, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit, !llvm.loop !470

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.j, %bb.g, %bb.ac, %bb.w, %bb.s, %bb.p, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp79

bb.p:                                             ; preds = %.critedge
  %i.bt = load ptr, ptr %8, align 8, !tbaa !114
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit29: ; preds = %bb.p
  %i.bw = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i30, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i31, label %bb.q

bb.q:                                             ; preds = %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !100
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i31

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i31: ; preds = %bb.q, %_ZN7nlarith4util3imp11apply_substERNS1_6isubstENS_4compERK10ref_vectorI3app11ast_managerER7obj_refIS6_S7_E.exit29
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !140 ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i31
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !125 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !125
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i31
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.s
  %.pre.i.i32 = load ptr, ptr %i.ca, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i33 = getelementptr inbounds i8, ptr %.pre.i.i32, i64 -4
  %.pre2.i.i34 = load i32, ptr %.phi.trans.insert.i.i33, align 4, !tbaa !125
  br label %bb.t

bb.t:                                             ; preds = %.noexc35, %bb.r
  %i.ci = phi i32 [ %.pre2.i.i34, %.noexc35 ], [ %i.ce, %bb.r ] ; 2 uses
  %i.cj = phi ptr [ %.pre.i.i32, %.noexc35 ], [ %i.cb, %bb.r ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cl = zext i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cl
  store ptr %i.bw, ptr %i.cm, align 8, !tbaa !146
  %i.cn = add i32 %i.ci, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !125
  %i.co = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i37, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !100
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i38

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i38: ; preds = %bb.u, %bb.t
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !104 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i38
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !125 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !125
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i38
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.w
  %.pre.i.i39 = load ptr, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i40 = getelementptr inbounds i8, ptr %.pre.i.i39, i64 -4
  %.pre2.i.i41 = load i32, ptr %.phi.trans.insert.i.i40, align 4, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %.noexc42, %bb.v
  %i.cz = phi i32 [ %.pre2.i.i41, %.noexc42 ], [ %i.cv, %bb.v ] ; 2 uses
  %i.da = phi ptr [ %.pre.i.i39, %.noexc42 ], [ %i.cs, %bb.v ] ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dc = zext i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  store ptr %i.co, ptr %i.dd, align 8, !tbaa !127
  %i.de = add i32 %i.cz, 1
  store i32 %i.de, ptr %i.db, align 4, !tbaa !125
  br label %bb.y

bb.x:                                             ; preds = %.critedge
  %i.df = icmp eq ptr %i.y, null
  br i1 %i.df, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %i.dg = phi ptr [ %i.da, %.thread ], [ %i.y, %bb.x ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.x, %bb.y
  %i.dj = phi ptr [ %i.dg, %bb.y ], [ null, %bb.x ]
  %.0.i.i = phi i32 [ %i.di, %bb.y ], [ 0, %bb.x ]
  %i.dk = invoke noundef ptr @_ZN7nlarith4util3imp5mk_orEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %.0.i.i, ptr noundef %i.dj)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i.i.i.i44 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i44, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !100
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i45

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i45: ; preds = %bb.aa, %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !104 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i45
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !125 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !125
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i45
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.ac
  %.pre.i.i46 = load ptr, ptr %i.do, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i47 = getelementptr inbounds i8, ptr %.pre.i.i46, i64 -4
  %.pre2.i.i48 = load i32, ptr %.phi.trans.insert.i.i47, align 4, !tbaa !125
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc49, %bb.ab
  %i.dw = phi i32 [ %.pre2.i.i48, %.noexc49 ], [ %i.ds, %bb.ab ] ; 2 uses
  %i.dx = phi ptr [ %.pre.i.i46, %.noexc49 ], [ %i.dp, %bb.ab ] ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.dz = zext i32 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  store ptr %i.dk, ptr %i.ea, align 8, !tbaa !127
  %i.eb = add i32 %i.dw, 1
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ec = load ptr, ptr %7, align 8, !tbaa !98    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !100
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !100
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.af, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ed, ptr noundef nonnull %i.ec)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !104 ; 5 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN7nlarith4util3imp14mk_exists_zeroERNS0_11literal_setEbPK10ref_vectorI3app11ast_managerERS4_I4exprS6_ERS7_:bb.a
_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ey = icmp ult ptr %i.ex, %i.eq
  br i1 %i.ey, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i51 = load ptr, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i51, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ez = phi ptr [ %.pre.i51, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ek, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fa)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #19
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp12mk_same_signERNS0_11literal_setEbR10ref_vectorI4expr11ast_managerERS4_I3appS6_E(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.obj_ref, align 8             ; 9 uses
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %_ZN7nlarith4util11literal_set5x_supEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.pre.i18 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit

_ZN7nlarith4util11literal_set5x_supEv.exit:       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.f = phi ptr [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], [ %.pre.i18, %bb.e ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.g = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %5, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph

_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph: ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %_ZNK7nlarith4util11literal_set4sizeEv.exit

_ZNK7nlarith4util11literal_set4sizeEv.exit:       ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.o = phi ptr [ %i.j, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %i.az, %bb.r ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !125
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %i.s, label %bb.i, label %.critedge

.critedge:                                        ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit, %bb.r
  %.pre = load ptr, ptr %5, align 8, !tbaa !98    ; 3 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !100
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.t, ptr noundef nonnull %.pre)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit, %.critedge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.i:                                             ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !143
  switch i32 %i.ac, label %bb.p [
    i32 2, label %bb.r
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !146
  invoke void @_ZN7nlarith4util3imp12mk_same_signEP3appbRK10ref_vectorIS2_11ast_managerES3_R7obj_refIS2_S5_ERS6_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.f, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %5, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !100
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.l, %bb.k
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !104 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !125 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !125
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.n, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.m, %.noexc
  %i.as = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.ao, %bb.m ] ; 2 uses
  %i.at = phi ptr [ %.pre.i.i, %.noexc ], [ %i.al, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  store ptr %i.ah, ptr %i.aw, align 8, !tbaa !127
  %i.ax = add i32 %i.as, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !125
  br label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %i.ay

bb.p:                                             ; preds = %bb.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.6, i32 noundef 1573, ptr noundef nonnull @.str.7)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.i, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !140 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit, !llvm.loop !471
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp5mk_ltEP3appS3_R10ref_vectorI4expr11ast_managerERS4_IS2_S6_E(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7nlarith4util3imp6mk_subEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %1, ptr noundef %2)
  %i.b = tail call noundef ptr @_ZN7nlarith4util3imp5mk_ltEP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.a) ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  store ptr %i.b, ptr %i.r, align 8, !tbaa !146
  %i.s = add i32 %i.n, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !125
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !100
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.e, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !125 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i.i8 = load ptr, ptr %i.w, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i9 = getelementptr inbounds i8, ptr %.pre.i.i8, i64 -4
  %.pre2.i.i10 = load i32, ptr %.phi.trans.insert.i.i9, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %.pre2.i.i10, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %.pre.i.i8, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !127
  %i.aj = add i32 %i.ae, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !125
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp11basic_substD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp11basic_subst5mk_ltERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !111, !align !112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %3, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  invoke void @_ZN7nlarith4util3imp13mk_polynomialEP3appRK10ref_vectorIS2_11ast_managerER7obj_refIS2_S5_E(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !98
  %i.h = invoke noundef ptr @_ZN7nlarith4util3imp5mk_ltEP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef %i.g)
          to label %bb.c unwind label %bb.k       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !98     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.l, null
  br i1 %.not.i4.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !100
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !100
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.n, ptr noundef nonnull %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  store ptr %i.h, ptr %2, align 8, !tbaa !98
  %i.s = load ptr, ptr %3, align 8, !tbaa !98     ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !100
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.t, ptr noundef nonnull %i.s)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.k:                                             ; preds = %bb.f, %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp11basic_subst5mk_eqERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !111, !align !112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %3, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  invoke void @_ZN7nlarith4util3imp13mk_polynomialEP3appRK10ref_vectorIS2_11ast_managerER7obj_refIS2_S5_E(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.k
end_hunk_3
begin_hunk_4_@_ZN7nlarith4util3imp13mk_polynomialEP3appRK10ref_vectorIS2_11ast_managerER7obj_refIS2_S5_E:bb.a
_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.a, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !100
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread
  %i.l = load ptr, ptr %3, align 8, !tbaa !98     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.l, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !100
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !100
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.n, ptr noundef nonnull %i.l)
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.b, %bb.c, %bb.d
  store ptr %i.h, ptr %3, align 8, !tbaa !98
  br label %bb.ae

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 4 uses
  store ptr %1, ptr %4, align 8, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.f, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !100
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.x = ptrtoint ptr %i.s to i64
  store i64 %i.x, ptr %5, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store ptr null, ptr %i.y, align 8, !tbaa !104
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !100
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.f, %bb.g
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !104 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4 ; 2 uses
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125 ; 2 uses
  %i.ad = zext i32 %.pre2.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.ad
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !127
  %i.af = add i32 %.pre2.i.i, 1
  store i32 %i.af, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.critedge.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.r
  %i.ai = phi ptr [ %i.bq, %bb.r ], [ %1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 3 uses
  %i.aj = phi ptr [ %i.by, %bb.r ], [ %i.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %i.an, label %bb.h, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.r
  %i.ao = phi ptr [ %i.bq, %bb.r ], [ %i.ai, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %i.ap = icmp eq ptr %.pre, null
  br i1 %i.ap, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %.critedge
  %i.aq = phi ptr [ %.pre, %.critedge ], [ %.pre.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %.critedge ], [ %1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %.critedge, %.critedge.thread
  %i.au = phi ptr [ %i.aq, %.critedge.thread ], [ null, %.critedge ]
  %i.av = phi ptr [ %i.ar, %.critedge.thread ], [ %i.ao, %.critedge ] ; 3 uses
  %.0.i.i18 = phi i32 [ %i.at, %.critedge.thread ], [ 0, %.critedge ]
  %i.aw = invoke noundef ptr @_ZN7nlarith4util3imp6mk_addEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %.0.i.i18, ptr noundef %i.au)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.h:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !146
  %i.az = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.ai, ptr noundef %i.ay)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i19, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !100
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i20

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i20: ; preds = %bb.j, %bb.i
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !104 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i20
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !125 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !125
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i20
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.l
  %.pre.i.i21 = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i22 = getelementptr inbounds i8, ptr %.pre.i.i21, i64 -4
  %.pre2.i.i23 = load i32, ptr %.phi.trans.insert.i.i22, align 4, !tbaa !125
  br label %bb.m

bb.m:                                             ; preds = %.noexc24, %bb.k
  %i.bk = phi i32 [ %.pre2.i.i23, %.noexc24 ], [ %i.bg, %bb.k ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i.i21, %.noexc24 ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.az, ptr %i.bo, align 8, !tbaa !127
  %i.bp = add i32 %i.bk, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !125
  %i.bq = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %1, ptr noundef %i.ai)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.n:                                             ; preds = %bb.m
  %.not.i26 = icmp eq ptr %i.bq, null
  br i1 %.not.i26, label %bb.o, label %_ZN11ast_manager7inc_refEP3ast.exit.i27

_ZN11ast_manager7inc_refEP3ast.exit.i27:          ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !100
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !100
  br label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i27, %bb.n
  %.not.i4.i28 = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i28, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !100
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !100
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.s, ptr noundef nonnull %i.ai)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  store ptr %i.bq, ptr %4, align 8, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !472

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.l, %bb.m, %bb.h, %bb.v, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp59

bb.s:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i31 = icmp eq ptr %i.aw, null
  br i1 %.not.i31, label %bb.t, label %_ZN11ast_manager7inc_refEP3ast.exit.i32

_ZN11ast_manager7inc_refEP3ast.exit.i32:          ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !100
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !100
  br label %bb.t

bb.t:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i32, %bb.s
  %i.cd = load ptr, ptr %3, align 8, !tbaa !98    ; 3 uses
  %.not.i4.i33 = icmp eq ptr %i.cd, null
  br i1 %.not.i4.i33, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !100
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !100
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cf, ptr noundef nonnull %i.cd)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.v
  store ptr %i.aw, ptr %3, align 8, !tbaa !98
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !104 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.w
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !125 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %.not.i36 = icmp eq i32 %i.cn, 0
  br i1 %.not.i36, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.cx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ck, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.cr = load ptr, ptr %.06.i.i, align 8, !tbaa !127 ; 3 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !128, !nonnull !111, !align !112
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !100
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !100
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.y, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cs, ptr noundef nonnull %i.cr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.aa

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.y, %bb.x, %.lr.ph.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.cq
  br i1 %i.cy, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cz = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ck, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.da)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #19
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not.i.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i.i37, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !100
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !100
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ac, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.s, ptr noundef nonnull %i.av)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7nlarith4util3imp6mk_addEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.53, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %3, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke void @_ZN13poly_rewriterI19arith_rewriter_coreE6mk_addEjPKP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(84) %i.c, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !184    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !125
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !125
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.p = phi i32 [ %.pre2.i.i.i, %.noexc ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %.pre.i.i.i, %.noexc ], [ %i.i, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.d, ptr %i.t, align 8, !tbaa !127
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !125
  %i.v = load ptr, ptr %3, align 8, !tbaa !184    ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !195, !nonnull !111, !align !112
end_hunk_4
begin_hunk_5_@_ZN7nlarith4util3imp13collect_atomsEP3appR10ref_vectorIS2_11ast_managerE:bb.a
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph:       ; preds = %bb.a
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !140 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !125 ; 2 uses
  %i.a = zext i32 %.pre2.i to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.a
  store ptr %1, ptr %i.b, align 8, !tbaa !146
  %i.c = add i32 %.pre2.i, 1
  store i32 %i.c, ptr %.phi.trans.insert.i, align 4, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit:             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph, %.loopexit
  %.pre56 = phi ptr [ %.pre.i, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %.pre57, %.loopexit ] ; 3 uses
  %i.e = phi ptr [ %.pre.i, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %i.cs, %.loopexit ] ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !125  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %_ZN6vectorIP3appLb0EjE4backEv.exit

_ZN6vectorIP3appLb0EjE4backEv.exit:               ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.i = add i32 %i.g, -1                         ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146  ; 6 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 65535
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

bb.b:                                             ; preds = %_ZN6vectorIP3appLb0EjE4backEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.b
  %i.u = load i32, ptr %i.t, align 8, !tbaa !136
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 5
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %bb.c, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !136
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 6
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.c, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

bb.c:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit, %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !181 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.trip.count = zext i32 %i.ah to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %.lr.ph
  %.pre55 = phi ptr [ %.pre56, %.lr.ph ], [ %.pre53, %bb.n ]
  %i.aj = phi i32 [ %i.i, %.lr.ph ], [ %i.cb, %bb.n ] ; 5 uses
  %i.ak = phi ptr [ %i.e, %.lr.ph ], [ %i.bv, %bb.n ]
  %i.al = phi ptr [ %i.e, %.lr.ph ], [ %i.bw, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !127
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125
  %i.aq = icmp eq i32 %i.aj, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ar = mul i32 %i.aj, 3
  %i.as = add i32 %i.ar, 1
  %i.at = lshr i32 %i.as, 1                       ; 3 uses
  %i.au = shl i32 %i.at, 3
  %i.av = add i32 %i.au, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.at, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = shl i32 %i.aj, 3
  %i.ax = add i32 %i.aw, 8
  %.not27.i = icmp ugt i32 %i.av, %i.ax
  br i1 %.not27.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ay, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !170
  %i.bb = load ptr, ptr %3, align 8, !tbaa !169   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !171 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !169
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !161
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !161
  %.phi.trans.insert.i17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i18 = load i64, ptr %.phi.trans.insert.i17, align 8, !tbaa !171
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.bj = phi i64 [ %i.bf, %bb.i ], [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !171
  store ptr %i.bc, ptr %3, align 8, !tbaa !169
  store i64 0, ptr %i.bk, align 8, !tbaa !171
  store i8 0, ptr %i.bc, align 8, !tbaa !161
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %3, align 8, !tbaa !169   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bc
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.j
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !161
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @__cxa_free_exception(ptr %i.ay) #18
  br label %.body

bb.l:                                             ; preds = %bb.f
  %i.bs = zext i32 %i.av to i64
  %i.bt = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bs)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc14:                                         ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !140
  store i32 %i.at, ptr %i.bt, align 4, !tbaa !125
  %.phi.trans.insert.i12.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.pre2.i13.pre = load i32, ptr %.phi.trans.insert.i12.phi.trans.insert, align 4, !tbaa !125
  br label %bb.n

bb.n:                                             ; preds = %.noexc14, %bb.d
  %.pre53 = phi ptr [ %i.bu, %.noexc14 ], [ %.pre55, %bb.d ] ; 2 uses
  %i.bv = phi ptr [ %i.bu, %.noexc14 ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %.noexc14 ], [ %i.al, %bb.d ] ; 3 uses
  %i.bx = phi i32 [ %.pre2.i13.pre, %.noexc14 ], [ %i.aj, %bb.d ] ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bz
  store ptr %i.an, ptr %i.ca, align 8, !tbaa !146
  %i.cb = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !473

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.p, %bb.a
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.b, %_ZN6vectorIP3appLb0EjE4backEv.exit, %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !100
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !100
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !140 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !125 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !125
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.p, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.p
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !140
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.o, %.noexc16
  %.pre = phi ptr [ %.pre.pre, %.noexc16 ], [ %.pre56, %bb.o ] ; 2 uses
  %i.cm = phi i32 [ %.pre2.i.i, %.noexc16 ], [ %i.ci, %bb.o ] ; 2 uses
  %i.cn = phi ptr [ %.pre.i.i, %.noexc16 ], [ %i.cf, %bb.o ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  store ptr %i.l, ptr %i.cq, align 8, !tbaa !146
  %i.cr = add i32 %i.cm, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !125
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.c, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.pre57 = phi ptr [ %.pre, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.pre56, %bb.c ], [ %.pre53, %bb.n ]
  %i.cs = phi ptr [ %.pre, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.e, %bb.c ], [ %i.bv, %bb.n ] ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit, !llvm.loop !474

bb.q:                                             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.cu = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cu)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #19
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIP3appLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp6isubstD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp15minus_eps_substD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp15minus_eps_subst5mk_ltERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7nlarith4util3imp15minus_eps_subst5mk_nuERK10ref_vectorI3app11ast_managerEbR7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp15minus_eps_subst5mk_eqERK10ref_vectorI3app11ast_managerER7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !111, !align !112
  %i.c = tail call noundef ptr @_ZN7nlarith4util3imp7mk_zeroERK10ref_vectorI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1360) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !100
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !100
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !98     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144, !nonnull !111, !align !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !100
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.i, ptr noundef nonnull %i.g)
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.b, %bb.c, %bb.d
  store ptr %i.c, ptr %2, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp15minus_eps_subst5mk_nuERK10ref_vectorI3app11ast_managerEbR7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %4 = alloca %class.ref_vector.39, align 8       ; 8 uses
  %5 = alloca %class.obj_ref, align 8             ; 9 uses
  %6 = alloca %class.obj_ref, align 8             ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253, !nonnull !111, !align !112 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110, !nonnull !111, !align !112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = ptrtoint ptr %i.e to i64
  store i64 %i.f, ptr %4, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr null, ptr %i.g, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !22
  invoke void @_ZN7nlarith4util3imp15minus_eps_subst5mk_ltERK10ref_vectorI3app11ast_managerEbR7obj_refIS4_S5_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !125
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270, !nonnull !111, !align !112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !140  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN7nlarith4util3imp16mk_differentiateERK10ref_vectorI3app11ast_managerERS5_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.d, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 1, %bb.d ] ; 4 uses
  %i.w = phi ptr [ %i.ax, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.i, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN7nlarith4util3imp16mk_differentiateERK10ref_vectorI3app11ast_managerERS5_.exit

bb.e:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ab = trunc nuw i64 %indvars.iv.i to i32
  %i.ac = invoke noundef ptr @_ZN7nlarith4util3imp3numEi(ptr noundef nonnull align 8 dereferenceable(1360) %i.d, i32 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !146
  %i.ag = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %i.d, ptr noundef %i.ac, ptr noundef %i.af)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc18:                                         ; preds = %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !100
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.f, %.noexc18
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !140 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !125 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.h:                                             ; preds = %bb.g, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.h
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc19, %bb.g
  %i.ar = phi i32 [ %.pre2.i.i.i, %.noexc19 ], [ %i.an, %bb.g ] ; 2 uses
  %i.as = phi ptr [ %.pre.i.i.i, %.noexc19 ], [ %i.ak, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !146
  %i.aw = add i32 %i.ar, 1
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !172

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !161
  store i8 %i.u, ptr %i.s, align 1, !tbaa !161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !161
  store i8 %i.y, ptr %i.x, align 1, !tbaa !161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !169   ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !161
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !161
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !161
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !169
  store i64 %.0, ptr %i.h, align 8, !tbaa !161
  ret void
}

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp13simple_branchD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN7nlarith4util3imp13simple_branchD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7nlarith4util3imp13simple_branch14get_constraintEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp13simple_branch11get_updatesER10ptr_vectorI3appER7svectorINS0_11atom_updateEjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph, %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit ] ; 4 uses
  %i.e = phi ptr [ %i.b, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.lr.ph ], [ %i.ao, %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !125
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.i, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.l = load ptr, ptr %1, align 8, !tbaa !140    ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !125  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !125
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZN6vectorIP3appLb0EjE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !125
  br label %_ZN6vectorIP3appLb0EjE9push_backEOS1_.exit

_ZN6vectorIP3appLb0EjE9push_backEOS1_.exit:       ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre2.i, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre.i, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %i.k, ptr %i.w, align 8, !tbaa !146
  %i.x = add i32 %i.s, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !125
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !266
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %2, align 8, !tbaa !266   ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIP3appLb0EjE9push_backEOS1_.exit
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !125 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !125
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.e, %_ZN6vectorIP3appLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIN7nlarith4util11atom_updateELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i6 = load ptr, ptr %2, align 8, !tbaa !266 ; 2 uses
  %.phi.trans.insert.i7 = getelementptr inbounds i8, ptr %.pre.i6, i64 -4
  %.pre2.i8 = load i32, ptr %.phi.trans.insert.i7, align 4, !tbaa !125
  br label %_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit

_ZN6vectorIN7nlarith4util11atom_updateELb0EjE9push_backERKS2_.exit: ; preds = %bb.e, %bb.f
  %i.ah = phi i32 [ %.pre2.i8, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i6, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.z, align 4, !tbaa !268
  store i32 %i.am, ptr %i.al, align 4, !tbaa !268
  %i.an = add i32 %i.ah, 1
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !475
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN7nlarith4util11atom_updateELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !266    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !266
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !125  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 2
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !170
  %i.r = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !171  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !169
  %i.y = load i64, ptr %i.s, align 8, !tbaa !161
  store i64 %i.y, ptr %i.q, align 8, !tbaa !161
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !171
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !171
  store ptr %i.s, ptr %1, align 8, !tbaa !169
  store i64 0, ptr %i.aa, align 8, !tbaa !171
  store i8 0, ptr %i.s, align 8, !tbaa !161
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !161
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.o) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !266
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp14ins_rem_branchC2ER11ast_managerP3appS6_S6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nlarith4util3imp13simple_branchE, i64 16), ptr %0, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %.not.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i, label %_ZN7nlarith4util3imp13simple_branchC2ER11ast_managerP3app.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !100
  br label %_ZN7nlarith4util3imp13simple_branchC2ER11ast_managerP3app.exit

_ZN7nlarith4util3imp13simple_branchC2ER11ast_managerP3app.exit: ; preds = %bb.a, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nlarith4util3imp14ins_rem_branchE, i64 16), ptr %0, align 8, !tbaa !114
  %.not.i.i.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN7nlarith4util3imp13simple_branchC2ER11ast_managerP3app.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %_ZN7nlarith4util3imp13simple_branchC2ER11ast_managerP3app.exit, %bb.b
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i unwind label %bb.l

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4 ; 2 uses
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !125 ; 2 uses
  %i.l = zext i32 %.pre2.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.l
  store ptr %2, ptr %i.m, align 8, !tbaa !146
  %i.n = add i32 %.pre2.i.i.i.i, 1
  store i32 %i.n, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !125
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !266  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !125  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !125
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  invoke void @_ZN6vectorIN7nlarith4util11atom_updateELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.d
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !266 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %bb.c
  %i.w = phi i32 [ %.pre2.i.i.i, %.noexc6 ], [ %i.s, %bb.c ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN7nlarith4util3imp12mk_bound_extERNS0_11literal_setERK10ref_vectorI3app11ast_managerES9_PS5_:bb.a
  %i.jr = add i32 %i.jm, 1
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !125
  %i.js = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  %i.jt = load ptr, ptr %10, align 8, !tbaa !98
  %i.ju = load ptr, ptr %7, align 8, !tbaa !98
  %i.jv = load ptr, ptr %8, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.ju, ptr %i.a, align 16, !tbaa !127
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !127
  %i.jx = invoke noundef ptr @_ZN7nlarith4util3imp6mk_andEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.jy = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.js, i32 noundef 0, i32 noundef 9, ptr noundef %i.jt, ptr noundef %i.jx)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit149:   ; preds = %bb.ax
  %.not.i.i.i.i150 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i150, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i151, label %bb.ay

bb.ay:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit149
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !100
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i151

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i151: ; preds = %bb.ay, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit149
  %i.kc = load ptr, ptr %i.m, align 8, !tbaa !104 ; 4 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i151
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !125 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kc, i64 -8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !125
  %i.ki = icmp eq i32 %i.kf, %i.kh
  br i1 %i.ki, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i151
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %bb.ba
  %.pre.i.i152 = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i153 = getelementptr inbounds i8, ptr %.pre.i.i152, i64 -4
  %.pre2.i.i154 = load i32, ptr %.phi.trans.insert.i.i153, align 4, !tbaa !125
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc155, %bb.az
  %i.kj = phi i32 [ %.pre2.i.i154, %.noexc155 ], [ %i.kf, %bb.az ] ; 2 uses
  %i.kk = phi ptr [ %.pre.i.i152, %.noexc155 ], [ %i.kc, %bb.az ] ; 4 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -4 ; 2 uses
  %i.km = zext i32 %i.kj to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.km
  store ptr %i.jy, ptr %i.kn, align 8, !tbaa !127
  %i.ko = add i32 %i.kj, 1
  store i32 %i.ko, ptr %i.kl, align 4, !tbaa !125
  %i.kp = load ptr, ptr %6, align 8, !tbaa !98    ; 5 uses
  %.not.i.i.i.i157 = icmp eq ptr %i.kp, null      ; 2 uses
  br i1 %.not.i.i.i.i157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !100
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.kq, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158: ; preds = %bb.bb, %bb.bc
  %i.kt = load i32, ptr %i.kl, align 4, !tbaa !125 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !125
  %i.kw = icmp eq i32 %i.kt, %i.kv
  br i1 %i.kw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc162:                                        ; preds = %bb.bd
  %.pre.i.i159 = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i.i160 = getelementptr inbounds i8, ptr %.pre.i.i159, i64 -4
  %.pre2.i.i161 = load i32, ptr %.phi.trans.insert.i.i160, align 4, !tbaa !125
  br label %bb.be

bb.be:                                            ; preds = %.noexc162, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158
  %i.kx = phi i32 [ %.pre2.i.i161, %.noexc162 ], [ %i.kt, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158 ] ; 2 uses
  %i.ky = phi ptr [ %.pre.i.i159, %.noexc162 ], [ %i.kk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i158 ] ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -4
  %i.la = zext i32 %i.kx to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  store ptr %i.kp, ptr %i.lb, align 8, !tbaa !127
  %i.lc = add i32 %i.kx, 1
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !125
  invoke void @_ZN7nlarith4util3imp14mk_exists_zeroERNS0_11literal_setEbPK10ref_vectorI3app11ast_managerERS4_I4exprS6_ERS7_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN7nlarith4util3imp14mk_exists_zeroERNS0_11literal_setEbPK10ref_vectorI3app11ast_managerERS4_I4exprS6_ERS7_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !140 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph

_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph: ; preds = %.preheader
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %_ZNK7nlarith4util11literal_set4sizeEv.exit

_ZNK7nlarith4util11literal_set4sizeEv.exit:       ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph, %bb.bm
  %i.li = phi ptr [ %i.le, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %i.mf, %bb.bm ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZNK7nlarith4util11literal_set4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.bm ] ; 5 uses
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 -4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !125
  %i.ll = zext i32 %i.lk to i64
  %i.lm = icmp samesign ult i64 %indvars.iv, %i.ll
  br i1 %i.lm, label %bb.bi, label %.critedge

.critedge:                                        ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit, %bb.bm, %.preheader
  %i.ln = load ptr, ptr %10, align 8, !tbaa !98
  %i.lo = load ptr, ptr %i.ea, align 8, !tbaa !98 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bg, label %_ZN7nlarith4util11literal_set5x_supEv.exit167

bb.bg:                                            ; preds = %.critedge
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc166:                                        ; preds = %bb.bg
  %.pre.i165 = load ptr, ptr %i.ea, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit167

.loopexit.split-lp229.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k, %bb.r, %bb.o, %bb.j, %bb.u, %bb.s, %_ZN7nlarith4util11literal_set5x_supEv.exit, %_ZN7nlarith4util11literal_set5x_infEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.bh:                                            ; preds = %bb.w
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.bi:                                            ; preds = %_ZNK7nlarith4util11literal_set4sizeEv.exit
  %i.lr = load ptr, ptr %i.lg, align 8, !tbaa !109
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !143
  %i.lu = icmp eq i32 %i.lt, 1
  br i1 %i.lu, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !146
  %i.lx = load ptr, ptr %i.lh, align 8, !tbaa !107
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %indvars.iv
  %i.lz = load ptr, ptr %i.ea, align 8, !tbaa !98 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.bk, label %_ZN7nlarith4util11literal_set5x_supEv.exit170

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169:                                        ; preds = %bb.bk
  %.pre.i168 = load ptr, ptr %i.ea, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit170

_ZN7nlarith4util11literal_set5x_supEv.exit170:    ; preds = %.noexc169, %bb.bj
  %i.mb = phi ptr [ %.pre.i168, %.noexc169 ], [ %i.lz, %bb.bj ]
  %i.mc = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.bl, label %_ZN7nlarith4util11literal_set5x_infEv.exit173

bb.bl:                                            ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit170
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %bb.bl
  %.pre.i171 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_infEv.exit173

_ZN7nlarith4util11literal_set5x_infEv.exit173:    ; preds = %.noexc172, %_ZN7nlarith4util11literal_set5x_supEv.exit170
  %i.me = phi ptr [ %.pre.i171, %.noexc172 ], [ %i.mc, %_ZN7nlarith4util11literal_set5x_supEv.exit170 ]
  invoke void @_ZN7nlarith4util3imp12mk_bound_extEP3appRK10ref_vectorIS2_11ast_managerES8_S3_S3_RS4_I4exprS5_ERS6_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.lw, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.mb, ptr noundef %i.me, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZN7nlarith4util11literal_set5x_infEv.exit173._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7nlarith4util11literal_set5x_infEv.exit173._crit_edge: ; preds = %_ZN7nlarith4util11literal_set5x_infEv.exit173
  %.pre246 = load ptr, ptr %i.ld, align 8, !tbaa !140
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN7nlarith4util11literal_set5x_infEv.exit173._crit_edge, %bb.bi
  %i.mf = phi ptr [ %.pre246, %_ZN7nlarith4util11literal_set5x_infEv.exit173._crit_edge ], [ %i.li, %bb.bi ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %.critedge, label %_ZNK7nlarith4util11literal_set4sizeEv.exit, !llvm.loop !476

_ZN7nlarith4util11literal_set5x_supEv.exit167:    ; preds = %.noexc166, %.critedge
  %i.mh = phi ptr [ %.pre.i165, %.noexc166 ], [ %i.lo, %.critedge ]
  %i.mi = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.mj = icmp eq ptr %i.mi, null
  br i1 %i.mj, label %bb.bn, label %_ZN7nlarith4util11literal_set5x_infEv.exit176

bb.bn:                                            ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit167
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc175:                                        ; preds = %bb.bn
  %.pre.i174 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_infEv.exit176

_ZN7nlarith4util11literal_set5x_infEv.exit176:    ; preds = %.noexc175, %_ZN7nlarith4util11literal_set5x_supEv.exit167
  %i.mk = phi ptr [ %.pre.i174, %.noexc175 ], [ %i.mi, %_ZN7nlarith4util11literal_set5x_supEv.exit167 ]
  invoke void @_ZN7nlarith4util3imp12mk_bound_extEP3appRK10ref_vectorIS2_11ast_managerES8_S3_S3_RS4_I4exprS5_ERS6_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.mh, ptr noundef %i.mk, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %_ZN7nlarith4util11literal_set5x_infEv.exit176
  %i.ml = load ptr, ptr %11, align 8, !tbaa !98
  %i.mm = load ptr, ptr %i.ea, align 8, !tbaa !98 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.bp, label %_ZN7nlarith4util11literal_set5x_supEv.exit179

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %bb.bp
  %.pre.i177 = load ptr, ptr %i.ea, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_supEv.exit179

_ZN7nlarith4util11literal_set5x_supEv.exit179:    ; preds = %.noexc178, %bb.bo
  %i.mo = phi ptr [ %.pre.i177, %.noexc178 ], [ %i.mm, %bb.bo ]
  %i.mp = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.bq, label %_ZN7nlarith4util11literal_set5x_infEv.exit182

bb.bq:                                            ; preds = %_ZN7nlarith4util11literal_set5x_supEv.exit179
  invoke void @_ZN7nlarith4util11literal_set8mk_constEPKcR7obj_refI3app11ast_managerE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc181:                                        ; preds = %bb.bq
  %.pre.i180 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN7nlarith4util11literal_set5x_infEv.exit182

_ZN7nlarith4util11literal_set5x_infEv.exit182:    ; preds = %.noexc181, %_ZN7nlarith4util11literal_set5x_supEv.exit179
  %i.mr = phi ptr [ %.pre.i180, %.noexc181 ], [ %i.mp, %_ZN7nlarith4util11literal_set5x_supEv.exit179 ]
  invoke void @_ZN7nlarith4util3imp12mk_bound_extEP3appRK10ref_vectorIS2_11ast_managerES8_S3_S3_RS4_I4exprS5_ERS6_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.mo, ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %_ZN7nlarith4util11literal_set5x_infEv.exit182
  %i.ms = load ptr, ptr %i.m, align 8, !tbaa !104 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mu = getelementptr inbounds i8, ptr %i.ms, i64 -4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.br, %bb.bs
  %.0.i.i = phi i32 [ %i.mv, %bb.bs ], [ 0, %bb.br ]
  %i.mw = invoke noundef ptr @_ZN7nlarith4util3imp6mk_andEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef %.0.i.i, ptr noundef %i.ms)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.bt:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i = icmp eq ptr %i.mw, null               ; 3 uses
  br i1 %.not.i, label %bb.bu, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.bt
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !100
  %i.mz = add i32 %i.my, 1
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !100
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.bt
  br i1 %.not.i.i.i.i157, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.na = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !100
  %i.nc = add i32 %i.nb, -1                       ; 2 uses
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !100
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.kp)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bw
  store ptr %i.mw, ptr %6, align 8, !tbaa !98
  %i.ne = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.by:                                            ; preds = %bb.bx
  %i.nf = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7nlarith4util3imp13simple_branchE, i64 16), ptr %i.ne, align 8, !tbaa !114
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr %i.mw, ptr %i.ng, align 8, !tbaa !98
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %i.nf, ptr %i.nh, align 8, !tbaa !22
  br i1 %.not.i, label %bb.bz, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %bb.by
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !100
  %i.nk = add i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !100
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %bb.by
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.nm = ptrtoint ptr %i.nf to i64
  store i64 %i.nm, ptr %i.nl, align 8, !tbaa !22
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, i8 0, i64 16, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN7nlarith4util3imp10swap_atomsEPNS1_13simple_branchERK10ref_vectorI3app11ast_managerES9_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull %i.ne, ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.np = load ptr, ptr %i.aw, align 8, !tbaa !140 ; 5 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %bb.ca
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 -4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !125 ; 2 uses
  %i.nt = zext i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nu
  %.not.i185 = icmp eq i32 %i.ns, 0
  br i1 %.not.i185, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.oc, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.np, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.nw = load ptr, ptr %.06.i.i, align 8, !tbaa !146 ; 3 uses
  %i.nx = load ptr, ptr %15, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !100
  %i.oa = add i32 %i.nz, -1                       ; 2 uses
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !100
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.cc, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nx, ptr noundef nonnull %i.nw)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ce

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.cc, %bb.cb, %.lr.ph.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.od = icmp ult ptr %i.oc, %i.nv
  br i1 %i.od, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i186 = load ptr, ptr %i.aw, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.pre.i186, null
  br i1 %.not.i.i.i187, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.oe = phi ptr [ %.pre.i186, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.np, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.of)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.cd

bb.cd:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.og = landingpad { ptr, i32 }
          catch ptr null
  %i.oh = extractvalue { ptr, i32 } %i.og, 0
  call void @__clang_call_terminate(ptr %i.oh) #19
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #19
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %bb.ca, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ok = load ptr, ptr %i.p, align 8, !tbaa !140 ; 5 uses
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit198, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i188

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i188:         ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.om = getelementptr inbounds i8, ptr %i.ok, i64 -4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !125 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN7nlarith4util3imp16numeric_quot_remERK10ref_vectorI3app11ast_managerES7_RS5_S8_:bb.a
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !125
  %.pre.i74 = load ptr, ptr %i.d, align 8, !tbaa !140
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.k, %bb.j
  %i.bt = phi ptr [ %.pre.i.i.i, %bb.k ], [ %i.bc, %bb.j ] ; 3 uses
  %i.bu = phi ptr [ %.pre.i74, %bb.k ], [ %i.bd, %bb.j ] ; 2 uses
  %i.bv = phi i32 [ %.pre2.i.i.i, %bb.k ], [ %i.bp, %bb.j ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bx
  store ptr %i.bj, ptr %i.by, align 8, !tbaa !146
  %i.bz = add i32 %i.bv, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !125
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ca = icmp eq ptr %i.bu, null
  br i1 %i.ca, label %.loopexit158, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !5

.loopexit158:                                     ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 0, ptr %11, align 8, !tbaa !155
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = and i8 %i.cc, -4
  store i8 %i.cd, ptr %i.cb, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ce, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store i32 1, ptr %i.cf, align 8, !tbaa !155
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, -4
  store i8 %i.ci, ptr %i.cg, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.cj, align 8, !tbaa !154
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.cm = zext i32 %i.o to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cp = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef %i.co, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.loopexit158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %i.cp, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.6, i32 noundef 1391, ptr noundef nonnull @.str.11)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %.loopexit158, %bb.n, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.p:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 4
  %i.ct = and i8 %i.cs, -4
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.cu, align 8, !tbaa !154
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store i32 1, ptr %i.cv, align 8, !tbaa !155
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 4
  %i.cy = and i8 %i.cx, -4
  store i8 %i.cy, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr null, ptr %i.cz, align 8, !tbaa !154
  %i.da = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157
  store i32 1, ptr %14, align 8, !tbaa !155
  store i8 %i.ct, ptr %i.cr, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.cv, align 8, !tbaa !155
  %i.db = load i8, ptr %i.cw, align 4
  %i.dc = and i8 %i.db, -2
  store i8 %i.dc, ptr %i.cw, align 4
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !158 ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.de, null
  br i1 %.not.i.i75, label %bb.s, label %_ZNK10arith_util6pluginEv.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %i.dd, align 8, !tbaa !158
  br label %_ZNK10arith_util6pluginEv.exit.i

_ZNK10arith_util6pluginEv.exit.i:                 ; preds = %.noexc, %bb.r
  %i.df = phi ptr [ %.pre.i.i, %.noexc ], [ %i.de, %bb.r ]
  %i.dg = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext false)
          to label %_ZNK10arith_util10mk_numeralERK8rationalb.exit unwind label %bb.ac ; 6 uses

_ZNK10arith_util10mk_numeralERK8rationalb.exit:   ; preds = %_ZNK10arith_util6pluginEv.exit.i
  %i.dh = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112 ; 2 uses
  store ptr %i.dg, ptr %12, align 8, !tbaa !98
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !22
  %.not.i.i77 = icmp eq ptr %i.dg, null           ; 2 uses
  br i1 %.not.i.i77, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10arith_util10mk_numeralERK8rationalb.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !100
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !100
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10arith_util10mk_numeralERK8rationalb.exit
  %i.dm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i unwind label %bb.t

.noexc.i:                                         ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dn)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i, %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #19
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.dq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i78 unwind label %bb.u

.noexc.i78:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %_ZN8rationalD2Ev.exit79 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i78, %_ZN8rationalD2Ev.exit
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #19
  unreachable

_ZN8rationalD2Ev.exit79:                          ; preds = %.noexc.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.dt = load i8, ptr %i.cb, align 4
  %i.du = and i8 %i.dt, 1
  %i.dv = icmp eq i8 %i.du, 0
  %i.dw = load i32, ptr %11, align 8
  %i.dx = icmp eq i32 %i.dw, 1
  %i.dy = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %i.dy, label %bb.v, label %_ZNK8rational6is_oneEv.exit

bb.v:                                             ; preds = %_ZN8rationalD2Ev.exit79
  %i.dz = load i8, ptr %i.cg, align 4
  %i.ea = and i8 %i.dz, 1
  %i.eb = icmp eq i8 %i.ea, 0
  %i.ec = load i32, ptr %i.cf, align 8
  %i.ed = icmp eq i32 %i.ec, 1
  %i.ee = select i1 %i.eb, i1 %i.ed, i1 false
  br label %_ZNK8rational6is_oneEv.exit

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.v, %_ZN8rationalD2Ev.exit79
  %i.ef = phi i1 [ false, %_ZN8rationalD2Ev.exit79 ], [ %i.ee, %bb.v ]
  %i.eg = sub i32 %.0.i.i, %.0.i.i60              ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph164, label %._crit_edge

.lr.ph164:                                        ; preds = %_ZNK8rational6is_oneEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eq = zext nneg i32 %i.eg to i64
  br label %bb.af

.loopexit:                                        ; preds = %bb.cn, %bb.ar
  %i.er = icmp sgt i64 %indvars.iv, 1
  br i1 %i.er, label %bb.af, label %._crit_edge, !llvm.loop !477

._crit_edge:                                      ; preds = %.loopexit, %_ZNK8rational6is_oneEv.exit
  br i1 %.not.i.i77, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !100
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !100
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.x, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dh, ptr noundef nonnull %i.dg)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #19
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %._crit_edge, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.ey = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i81 unwind label %bb.z

.noexc.i81:                                       ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.cf)
          to label %_ZN8rationalD2Ev.exit82 unwind label %bb.z

bb.z:                                             ; preds = %.noexc.i81, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #19
  unreachable

_ZN8rationalD2Ev.exit82:                          ; preds = %.noexc.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  ret void

bb.aa:                                            ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK10arith_util6pluginEv.exit.i, %bb.s
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.ac ], [ %i.fc, %bb.ab ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.fb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.co

bb.af:                                            ; preds = %.lr.ph164, %.loopexit
  %indvars.iv = phi i64 [ %i.eq, %.lr.ph164 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 7 uses
  %i.fe = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ff = add i32 %i.o, %i.fe                     ; 3 uses
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !140
  %i.fh = zext i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !146 ; 4 uses
  br i1 %i.ef, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next ; 2 uses
  %i.fm = load ptr, ptr %3, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i83 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i83, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !100
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.ah, %bb.ag
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fq, null
  br i1 %.not.i3.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !100
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !100
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fm, ptr noundef nonnull %i.fq)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.aj
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !146
  br label %bb.ar

bb.al:                                            ; preds = %bb.af
  %i.fv = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.fj, ptr noundef %i.dg)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.fw = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next ; 2 uses
  %i.fy = load ptr, ptr %3, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i88 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i88, label %_ZN11ast_manager7inc_refEP3ast.exit.i89, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !100
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i89

_ZN11ast_manager7inc_refEP3ast.exit.i89:          ; preds = %bb.an, %bb.am
  %i.gc = load ptr, ptr %i.fx, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i90 = icmp eq ptr %i.gc, null
  br i1 %.not.i3.i90, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i89
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !100
  %i.gf = add i32 %i.ge, -1                       ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !100
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fy, ptr noundef nonnull %i.gc)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ao, %_ZN11ast_manager7inc_refEP3ast.exit.i89, %bb.ap
  store ptr %i.fv, ptr %i.fx, align 8, !tbaa !146
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.0159 = add i32 %i.ff, -1                      ; 2 uses
  %i.gh = sext i32 %.0159 to i64
  %.not160 = icmp sgt i64 %indvars.iv.next, %i.gh
  br i1 %.not160, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.gi = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.cn
  %.0162 = phi i32 [ %.0159, %.lr.ph ], [ %.0, %bb.cn ] ; 3 uses
  %.0.in161 = phi i32 [ %i.ff, %.lr.ph ], [ %.0162, %bb.cn ]
  %i.gj = load ptr, ptr %i.ah, align 8, !tbaa !140
  %i.gk = zext i32 %.0162 to i64                  ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !146
  %i.gn = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !146 ; 2 uses
  %i.gq = sub i32 %.0.in161, %i.gi
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.gs = zext i32 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.gv = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %10, align 8, !tbaa !184
  store ptr %i.gv, ptr %i.ei, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.gp, ptr %i.b, align 16, !tbaa !127
  store ptr %i.gu, ptr %i.ej, align 8, !tbaa !127
  %i.gw = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.gp)
          to label %.noexc125 unwind label %bb.bp

.noexc125:                                        ; preds = %bb.as
  store ptr %i.gw, ptr %i.el, align 8, !tbaa !165
  %i.gx = load i8, ptr %i.em, align 8, !tbaa !249, !range !141, !noundef !111
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc125
  %i.gz = invoke noundef i32 @_ZN13poly_rewriterI19arith_rewriter_coreE16mk_flat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(84) %i.ek, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i unwind label %bb.bp
end_hunk_8
begin_hunk_9_@_ZN7nlarith4util3imp16numeric_quot_remERK10ref_vectorI3app11ast_managerES7_RS5_S8_:bb.a
.noexc140:                                        ; preds = %bb.bu
  store i32 2, ptr %i.kg, align 4, !tbaa !125
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 0, ptr %i.kh, align 4, !tbaa !125
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  store ptr %i.ki, ptr %i.en, align 8, !tbaa !104
  br label %.noexc.i102

bb.bv:                                            ; preds = %bb.bt
  %i.kj = mul i32 %i.kc, 3
  %i.kk = add i32 %i.kj, 1
  %i.kl = lshr i32 %i.kk, 1                       ; 3 uses
  %i.km = shl i32 %i.kl, 3
  %i.kn = add i32 %i.km, 8                        ; 2 uses
  %.not.i130 = icmp ugt i32 %i.kl, %i.kc
  br i1 %.not.i130, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ko = shl i32 %i.kc, 3
  %i.kp = add i32 %i.ko, 8
  %.not27.i139 = icmp ugt i32 %i.kn, %i.kp
  br i1 %.not27.i139, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.kq = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kq, align 8, !tbaa !114
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 24 ; 3 uses
  store ptr %i.ks, ptr %i.kr, align 8, !tbaa !170
  %i.kt = load ptr, ptr %5, align 8, !tbaa !169   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

bb.bz:                                            ; preds = %bb.by
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !171 ; 3 uses
  %i.ky = icmp ult i64 %i.kx, 16
  call void @llvm.assume(i1 %i.ky)
  %i.kz = add nuw nsw i64 %i.kx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ks, ptr noundef nonnull align 8 dereferenceable(1) %i.ku, i64 %i.kz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.by
  store ptr %i.kt, ptr %i.kr, align 8, !tbaa !169
  %i.la = load i64, ptr %i.ku, align 8, !tbaa !161
  store i64 %i.la, ptr %i.ks, align 8, !tbaa !161
  %.phi.trans.insert.i133 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i134 = load i64, ptr %.phi.trans.insert.i133, align 8, !tbaa !171
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i135

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i135: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132, %bb.bz
  %i.lb = phi i64 [ %i.kx, %bb.bz ], [ %.pre.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store i64 %i.lb, ptr %i.ld, align 8, !tbaa !171
  store ptr %i.ku, ptr %5, align 8, !tbaa !169
  store i64 0, ptr %i.lc, align 8, !tbaa !171
  store i8 0, ptr %i.ku, align 8, !tbaa !161
  invoke void @__cxa_throw(ptr nonnull %i.kq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.cd unwind label %bb.ca

bb.ca:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i135
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %5, align 8, !tbaa !169   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ku
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i136: ; preds = %bb.ca
  %i.lh = load i64, ptr %i.ku, align 8, !tbaa !161
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i137: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body141

bb.cb:                                            ; preds = %bb.bx
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @__cxa_free_exception(ptr %i.kq) #18
  br label %.body141

bb.cc:                                            ; preds = %bb.bw
  %i.lk = zext i32 %i.kn to i64
  %i.ll = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.kd, i64 noundef %i.lk)
          to label %.noexc143 unwind label %bb.ci ; 2 uses

.noexc143:                                        ; preds = %bb.cc
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  store ptr %i.lm, ptr %i.en, align 8, !tbaa !104
  store i32 %i.kl, ptr %i.ll, align 4, !tbaa !125
  br label %.noexc.i102

bb.cd:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i135
  unreachable

.noexc.i102:                                      ; preds = %.noexc143, %.noexc140
  %.pre.i.i.i.i103 = phi ptr [ %i.lm, %.noexc143 ], [ %i.ki, %.noexc140 ] ; 2 uses
  %.phi.trans.insert.i.i.i.i104 = getelementptr inbounds i8, ptr %.pre.i.i.i.i103, i64 -4
  %.pre2.i.i.i.i105 = load i32, ptr %.phi.trans.insert.i.i.i.i104, align 4, !tbaa !125
  br label %bb.ce

bb.ce:                                            ; preds = %.noexc.i102, %bb.bt
  %i.ln = phi i32 [ %.pre2.i.i.i.i105, %.noexc.i102 ], [ %i.kc, %bb.bt ] ; 2 uses
  %i.lo = phi ptr [ %.pre.i.i.i.i103, %.noexc.i102 ], [ %i.jz, %bb.bt ] ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -4
  %i.lq = zext i32 %i.ln to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lq
  store ptr %i.jv, ptr %i.lr, align 8, !tbaa !127
  %i.ls = add i32 %i.ln, 1
  store i32 %i.ls, ptr %i.lp, align 4, !tbaa !125
  %i.lt = load ptr, ptr %9, align 8, !tbaa !184   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i.i.i101 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i101, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lu = load ptr, ptr %i.eo, align 8, !tbaa !195, !nonnull !111, !align !112
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !100
  %i.lx = add i32 %i.lw, -1                       ; 2 uses
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !100
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lu, ptr noundef nonnull %i.lt)
          to label %bb.ck unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #19
  unreachable

bb.ci:                                            ; preds = %bb.cc, %bb.bu, %bb.bq
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.body141:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i137, %bb.cb, %bb.ci
  %eh.lpad-body142 = phi { ptr, i32 } [ %i.mb, %bb.ci ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i137 ], [ %i.lj, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.mc = load ptr, ptr %i.ah, align 8, !tbaa !140
  %i.md = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i111

bb.ck:                                            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.me = load ptr, ptr %i.ah, align 8, !tbaa !140
  %i.mf = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  %i.mg = load i32, ptr %i.lv, align 4, !tbaa !100
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.lv, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i111

_ZN11ast_manager7inc_refEP3ast.exit.i111:         ; preds = %bb.cj, %bb.ck
  %i.mi = phi ptr [ %i.mf, %bb.ck ], [ %i.md, %bb.cj ]
  %.pn156 = phi ptr [ %i.me, %bb.ck ], [ %i.mc, %bb.cj ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.pn156, i64 %i.gk ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i112 = icmp eq ptr %i.mk, null
  br i1 %.not.i3.i112, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i111
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !100
  %i.mn = add i32 %i.mm, -1                       ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !100
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.mi, ptr noundef nonnull %i.mk)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cl, %_ZN11ast_manager7inc_refEP3ast.exit.i111, %bb.cm
  store ptr %i.lt, ptr %i.mj, align 8, !tbaa !146
  %.0 = add i32 %.0162, -1                        ; 2 uses
  %i.mp = sext i32 %.0 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %i.mp
  br i1 %.not, label %.loopexit, label %bb.as, !llvm.loop !478

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %bb.ap, %bb.aj, %bb.al
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body119, %.body141
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body142, %.body141 ], [ %eh.lpad-body120, %.body119 ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #18
  br label %bb.co

bb.co:                                            ; preds = %.body, %bb.ae
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %.body ], [ %.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.o
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn, %bb.co ], [ %i.cq, %bb.o ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  resume { ptr, i32 } %.pn53.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7nlarith4util3imp15pseudo_quot_remERK10ref_vectorI3app11ast_managerES7_RS5_S8_Rj(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %class.obj_ref.53, align 8         ; 10 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %13 = alloca %class.obj_ref.53, align 8         ; 12 uses
  %i.b = alloca [2 x ptr], align 16               ; 8 uses
  %14 = alloca %class.obj_ref.53, align 8         ; 13 uses
  %i.c = alloca [2 x ptr], align 16               ; 8 uses
  %15 = alloca %class.ref_vector.39, align 8      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit79, label %bb.c

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !125
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit79

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit79: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.c
  %.0.i.i78 = phi i32 [ %i.m, %bb.c ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %i.n = add i32 %.0.i.i78, -1                    ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146  ; 3 uses
  %i.r = sub i32 %.0.i.i, %.0.i.i78               ; 4 uses
  %i.s = add i32 %i.r, 1                          ; 11 uses
  store i32 %i.s, ptr %5, align 4, !tbaa !125
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140  ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit79
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !125  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ah, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.u, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ab = load ptr, ptr %.06.i.i, align 8, !tbaa !146 ; 3 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !100
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !100
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ac, ptr noundef nonnull %i.ab)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.aa
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.aj = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.u, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 0, ptr %i.ak, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit79, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80:          ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %.not.i81 = icmp eq i32 %i.ap, 0
  br i1 %.not.i81, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85
  %.06.i.i83 = phi ptr [ %i.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85 ], [ %i.am, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80 ] ; 2 uses
  %i.at = load ptr, ptr %.06.i.i83, align 8, !tbaa !146 ; 3 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i.i.i.i84 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i84, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i82
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !100
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !100
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.au, ptr noundef nonnull %i.at)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85: ; preds = %bb.g, %bb.f, %.lr.ph.i.i82
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i83, i64 8 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.as
  br i1 %i.ba, label %.lr.ph.i.i82, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i85
  %.pre.i87 = load ptr, ptr %i.al, align 8, !tbaa !140 ; 2 uses
  %.not.i.i88 = icmp eq ptr %.pre.i87, null
  br i1 %.not.i.i88, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80
  %i.bb = phi ptr [ %.pre.i87, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86 ], [ %i.am, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i80 ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  store i32 0, ptr %i.bc, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89
  %i.bd = phi ptr [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i86 ], [ %i.bb, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i89 ]
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !140 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.bg = phi ptr [ %i.bx, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.bd, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90 ] ; 4 uses
  %i.bh = phi ptr [ %i.by, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.be, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90 ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit90 ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !125
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.i, %i.bk
  br i1 %i.bl, label %bb.h, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i91, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !100
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.br = icmp eq ptr %i.bg, null
end_hunk_9
begin_hunk_10_@_ZN7nlarith4util3imp15pseudo_quot_remERK10ref_vectorI3app11ast_managerES7_RS5_S8_Rj:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !100
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !100
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i97

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cp, ptr noundef nonnull %i.co)
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i97

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i97: ; preds = %bb.m, %bb.l, %.lr.ph.i.i94
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i95, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cl
  br i1 %i.cv, label %.lr.ph.i.i94, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i97
  %.pr.pre.i = load ptr, ptr %i.t, align 8, !tbaa !140 ; 3 uses
  %i.cw = icmp eq ptr %.pr.pre.i, null
  br i1 %i.cw, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pr.pre.i, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !125
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i:          ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %.not.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.not.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, label %thread-pre-split.i.i.preheader

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i:   ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i93
  %i.cx = phi i32 [ %.pre, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge ], [ %i.ci, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i93 ] ; 2 uses
  %.pr14.i = phi ptr [ %.pr.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i98._ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i_crit_edge ], [ %i.cf, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i93 ] ; 2 uses
  %.not15.i.i = icmp ugt i32 %i.s, %i.cx
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %bb.n

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %.pr14.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.cx, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.n:                                             ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.thread.i.i
  %i.cy = getelementptr inbounds i8, ptr %.pr14.i, i64 -4
  store i32 %i.s, ptr %i.cy, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i
  %i.cz = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i:      ; preds = %thread-pre-split.i.i
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !125
  %i.dd = icmp ugt i32 %i.s, %i.dc
  br i1 %i.dd, label %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i, label %bb.o

_ZNK6vectorIP3appLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pr.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !140
  br label %thread-pre-split.i.i, !llvm.loop !8

bb.o:                                             ; preds = %_ZNK6vectorIP3appLb0EjE8capacityEv.exit.i.i
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 -4
  store i32 %i.s, ptr %i.de, align 4, !tbaa !125
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.s
  br i1 %.not1218.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.df = zext i32 %i.s to i64
  %i.dg = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.cz, i64 %i.dg
  %i.di = sub nsw i64 %i.df, %i.dg
  %i.dj = shl nsw i64 %i.di, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dh, i8 0, i64 %i.dj, i1 false), !tbaa !146
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit: ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i.i, %bb.n, %bb.o, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.dk = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  %i.dl = ptrtoint ptr %i.dk to i64
  store i64 %i.dl, ptr %15, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 9 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !140
  %i.dn = invoke noundef ptr @_ZN7nlarith4util3imp3numEi(ptr noundef nonnull align 8 dereferenceable(1360) %0, i32 noundef 1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.p:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !100
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !100
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.q, %bb.p
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !140 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !125 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !125
  %i.dx = icmp eq i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.s, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.s:                                             ; preds = %bb.r, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %i.dm, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !125
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.r, %.noexc
  %i.dy = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.du, %bb.r ] ; 2 uses
  %i.dz = phi ptr [ %.pre.i.i, %.noexc ], [ %i.dr, %bb.r ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.eb = zext i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb
  store ptr %i.dn, ptr %i.ec, align 8, !tbaa !146
  %i.ed = add i32 %i.dy, 1
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !125
  %i.ee = icmp ult i32 %i.r, -2
  br i1 %i.ee, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.ef = add nuw i32 %i.r, 2
  %wide.trip.count = zext i32 %i.ef to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.x
  %i.eg = icmp ult i32 %i.r, 2147483647
  br i1 %i.eg, label %.lr.ph256, label %._crit_edge

.lr.ph256:                                        ; preds = %.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.er = zext nneg i32 %i.s to i64
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.es = load ptr, ptr %i.dm, align 8, !tbaa !140
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = getelementptr i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !146
  %i.ew = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.ev, ptr noundef %i.q)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.t:                                             ; preds = %.lr.ph
  %i.ex = load ptr, ptr %i.dm, align 8, !tbaa !140
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv ; 2 uses
  %i.ez = load ptr, ptr %15, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i101 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i101, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !100
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.u, %bb.t
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fd, null
  br i1 %.not.i3.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !100
  %i.fg = add i32 %i.ff, -1                       ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !100
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ez, ptr noundef nonnull %i.fd)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.w
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !146
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !479

.loopexit:                                        ; preds = %bb.dg, %bb.ah
  %i.fi = icmp sgt i64 %indvars.iv269, 1
  br i1 %i.fi, label %bb.ac, label %._crit_edge, !llvm.loop !480

._crit_edge:                                      ; preds = %.loopexit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %.preheader
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !140 ; 5 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104:         ; preds = %._crit_edge
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !125 ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fo
  %.not.i105 = icmp eq i32 %i.fm, 0
  br i1 %.not.i105, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109
  %.06.i.i107 = phi ptr [ %i.fw, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109 ], [ %i.fj, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104 ] ; 2 uses
  %i.fq = load ptr, ptr %.06.i.i107, align 8, !tbaa !146 ; 3 uses
  %i.fr = load ptr, ptr %15, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i.i.i.i108 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i108, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i106
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !100
  %i.fu = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !100
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.z, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fr, ptr noundef nonnull %i.fq)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109 unwind label %bb.ab

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109: ; preds = %bb.z, %bb.y, %.lr.ph.i.i106
  %i.fw = getelementptr inbounds nuw i8, ptr %.06.i.i107, i64 8 ; 2 uses
  %i.fx = icmp ult ptr %i.fw, %i.fp
  br i1 %i.fx, label %.lr.ph.i.i106, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i110, !llvm.loop !1

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i110: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i109
  %.pre.i111 = load ptr, ptr %i.dm, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i111, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i110, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104
  %i.fy = phi ptr [ %.pre.i111, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i110 ], [ %i.fj, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i104 ]
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fz)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #19
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %._crit_edge, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i110, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  ret void

bb.ac:                                            ; preds = %.lr.ph256, %.loopexit
  %indvars.iv269 = phi i64 [ %i.er, %.lr.ph256 ], [ %indvars.iv.next270, %.loopexit ] ; 4 uses
  %indvars.iv264.in = phi i32 [ %.0.i.i, %.lr.ph256 ], [ %indvars.iv264, %.loopexit ]
  %indvars.iv264 = add i32 %indvars.iv264.in, -1  ; 2 uses
  %i.ge = zext i32 %indvars.iv264 to i64
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, -1 ; 4 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv.next270 to i32
  %i.gg = add i32 %i.n, %i.gf                     ; 2 uses
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !140
  %i.gi = zext i32 %i.gg to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !146
  %i.gl = load ptr, ptr %i.dm, align 8, !tbaa !140
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next270
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !146
  %i.go = invoke noundef ptr @_ZN7nlarith4util3imp6mk_mulEP4exprS3_(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.gk, ptr noundef %i.gn)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.gp = load ptr, ptr %i.t, align 8, !tbaa !140
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next270 ; 2 uses
  %i.gr = load ptr, ptr %3, align 8, !tbaa !182, !nonnull !111, !align !112
  %.not.i.i117 = icmp eq ptr %i.go, null
  br i1 %.not.i.i117, label %_ZN11ast_manager7inc_refEP3ast.exit.i118, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !100
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i118

_ZN11ast_manager7inc_refEP3ast.exit.i118:         ; preds = %bb.ae, %bb.ad
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i119 = icmp eq ptr %i.gv, null
  br i1 %.not.i3.i119, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i118
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !100
  %i.gy = add i32 %i.gx, -1                       ; 2 uses
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !100
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gr, ptr noundef nonnull %i.gv)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af, %_ZN11ast_manager7inc_refEP3ast.exit.i118, %bb.ag
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !146
  %i.ha = icmp sgt i32 %i.gg, 0
  br i1 %i.ha, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %bb.ah, %bb.dg
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.dg ], [ %i.ge, %bb.ah ] ; 4 uses
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, -1 ; 5 uses
  %i.hb = load ptr, ptr %i.al, align 8, !tbaa !140
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next267
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.he = load ptr, ptr %0, align 8, !tbaa !110, !nonnull !111, !align !112
  store ptr null, ptr %14, align 8, !tbaa !184
  store ptr %i.he, ptr %i.eh, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.q, ptr %i.c, align 16, !tbaa !127
  store ptr %i.hd, ptr %i.ei, align 8, !tbaa !127
  %i.hf = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.q)
          to label %.noexc173 unwind label %bb.be

.noexc173:                                        ; preds = %.lr.ph254
  store ptr %i.hf, ptr %i.ek, align 8, !tbaa !165
  %i.hg = load i8, ptr %i.el, align 8, !tbaa !249, !range !141, !noundef !111
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.noexc173
  %i.hi = invoke noundef i32 @_ZN13poly_rewriterI19arith_rewriter_coreE16mk_flat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(84) %i.ej, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i unwind label %bb.be

bb.aj:                                            ; preds = %.noexc173
  %i.hj = invoke noundef i32 @_ZN13poly_rewriterI19arith_rewriter_coreE17mk_nflat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(84) %i.ej, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i unwind label %bb.be

_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i171 = phi i32 [ %i.hi, %bb.ai ], [ %i.hj, %bb.aj ]
  %i.hk = icmp eq i32 %.0.i.i171, 5
  br i1 %i.hk, label %bb.ak, label %_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exitthread-pre-split

bb.ak:                                            ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i
  %i.hl = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %i.ej, i32 noundef 2, ptr noundef nonnull %i.c)
          to label %.noexc176 unwind label %bb.be ; 4 uses

.noexc176:                                        ; preds = %bb.ak
  %.not.i.i172 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i172, label %bb.al, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %.noexc176
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !100
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !100
  br label %bb.al

bb.al:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %.noexc176
  %i.hp = load ptr, ptr %14, align 8, !tbaa !184  ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i4.i.i, label %.sink.split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = load ptr, ptr %i.eh, align 8, !tbaa !195, !nonnull !111, !align !112
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !100
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !100
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.an, label %.sink.split.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hq, ptr noundef nonnull %i.hp)
          to label %.sink.split.i unwind label %bb.be

.sink.split.i:                                    ; preds = %bb.an, %bb.am, %bb.al
  store ptr %i.hl, ptr %14, align 8, !tbaa !184
  br label %_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exit

_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exitthread-pre-split: ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE11mk_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE.exit.i
  %.pr = load ptr, ptr %14, align 8, !tbaa !184
  br label %_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exit

_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exit: ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exitthread-pre-split, %.sink.split.i
  %i.hv = phi ptr [ %.pr, %_ZN13poly_rewriterI19arith_rewriter_coreE6mk_mulEjPKP4exprR7obj_refIS2_11ast_managerE.exitthread-pre-split ], [ %i.hl, %.sink.split.i ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN7nlarith4util3imp15pseudo_quot_remERK10ref_vectorI3app11ast_managerES7_RS5_S8_Rj:bb.a
  br label %.noexc.i151

bb.cn:                                            ; preds = %bb.cl
  %i.om = mul i32 %i.of, 3
  %i.on = add i32 %i.om, 1
  %i.oo = lshr i32 %i.on, 1                       ; 3 uses
  %i.op = shl i32 %i.oo, 3
  %i.oq = add i32 %i.op, 8                        ; 2 uses
  %.not.i205 = icmp ugt i32 %i.oo, %i.of
  br i1 %.not.i205, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.or = shl i32 %i.of, 3
  %i.os = add i32 %i.or, 8
  %.not27.i214 = icmp ugt i32 %i.oq, %i.os
  br i1 %.not27.i214, label %bb.cu, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ot = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ot, align 8, !tbaa !114
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 24 ; 3 uses
  store ptr %i.ov, ptr %i.ou, align 8, !tbaa !170
  %i.ow = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207

bb.cr:                                            ; preds = %bb.cq
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !171 ; 3 uses
  %i.pb = icmp ult i64 %i.pa, 16
  call void @llvm.assume(i1 %i.pb)
  %i.pc = add nuw nsw i64 %i.pa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ov, ptr noundef nonnull align 8 dereferenceable(1) %i.ox, i64 %i.pc, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207: ; preds = %bb.cq
  store ptr %i.ow, ptr %i.ou, align 8, !tbaa !169
  %i.pd = load i64, ptr %i.ox, align 8, !tbaa !161
  store i64 %i.pd, ptr %i.ov, align 8, !tbaa !161
  %.phi.trans.insert.i208 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i209 = load i64, ptr %.phi.trans.insert.i208, align 8, !tbaa !171
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i210

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i210: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207, %bb.cr
  %i.pe = phi i64 [ %i.pa, %bb.cr ], [ %.pre.i209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207 ]
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  store i64 %i.pe, ptr %i.pg, align 8, !tbaa !171
  store ptr %i.ox, ptr %6, align 8, !tbaa !169
  store i64 0, ptr %i.pf, align 8, !tbaa !171
  store i8 0, ptr %i.ox, align 8, !tbaa !161
  invoke void @__cxa_throw(ptr nonnull %i.ot, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.cv unwind label %bb.cs

bb.cs:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i210
  %i.ph = landingpad { ptr, i32 }
          cleanup
  %i.pi = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ox
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i211: ; preds = %bb.cs
  %i.pk = load i64, ptr %i.ox, align 8, !tbaa !161
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i212: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body216

bb.ct:                                            ; preds = %bb.cp
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @__cxa_free_exception(ptr %i.ot) #18
  br label %.body216

bb.cu:                                            ; preds = %bb.co
  %i.pn = zext i32 %i.oq to i64
  %i.po = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.og, i64 noundef %i.pn)
          to label %.noexc218 unwind label %bb.da ; 2 uses

.noexc218:                                        ; preds = %bb.cu
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  store ptr %i.pp, ptr %i.em, align 8, !tbaa !104
  store i32 %i.oo, ptr %i.po, align 4, !tbaa !125
  br label %.noexc.i151

bb.cv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i210
  unreachable

.noexc.i151:                                      ; preds = %.noexc218, %.noexc215
  %.pre.i.i.i.i152 = phi ptr [ %i.pp, %.noexc218 ], [ %i.ol, %.noexc215 ] ; 2 uses
  %.phi.trans.insert.i.i.i.i153 = getelementptr inbounds i8, ptr %.pre.i.i.i.i152, i64 -4
  %.pre2.i.i.i.i154 = load i32, ptr %.phi.trans.insert.i.i.i.i153, align 4, !tbaa !125
  br label %bb.cw

bb.cw:                                            ; preds = %.noexc.i151, %bb.cl
  %i.pq = phi i32 [ %.pre2.i.i.i.i154, %.noexc.i151 ], [ %i.of, %bb.cl ] ; 2 uses
  %i.pr = phi ptr [ %.pre.i.i.i.i152, %.noexc.i151 ], [ %i.oc, %bb.cl ] ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 -4
  %i.pt = zext i32 %i.pq to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.pt
  store ptr %i.ny, ptr %i.pu, align 8, !tbaa !127
  %i.pv = add i32 %i.pq, 1
  store i32 %i.pv, ptr %i.ps, align 4, !tbaa !125
  %i.pw = load ptr, ptr %12, align 8, !tbaa !184  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i.i.i150 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i150, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.px = load ptr, ptr %i.ep, align 8, !tbaa !195, !nonnull !111, !align !112
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 4 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !100
  %i.qa = add i32 %i.pz, -1                       ; 2 uses
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !100
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.px, ptr noundef nonnull %i.pw)
          to label %bb.dc unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qc = landingpad { ptr, i32 }
          catch ptr null
  %i.qd = extractvalue { ptr, i32 } %i.qc, 0
  call void @__clang_call_terminate(ptr %i.qd) #19
  unreachable

bb.da:                                            ; preds = %bb.cu, %bb.cm, %bb.ci
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body216

.body216:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i212, %bb.ct, %bb.da
  %eh.lpad-body217 = phi { ptr, i32 } [ %i.qe, %bb.da ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i212 ], [ %i.pm, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.body

bb.db:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.qf = load ptr, ptr %i.al, align 8, !tbaa !140
  %i.qg = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i160

bb.dc:                                            ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.qh = load ptr, ptr %i.al, align 8, !tbaa !140
  %i.qi = load ptr, ptr %4, align 8, !tbaa !182, !nonnull !111, !align !112
  %i.qj = load i32, ptr %i.py, align 4, !tbaa !100
  %i.qk = add i32 %i.qj, 1
  store i32 %i.qk, ptr %i.py, align 4, !tbaa !100
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i160

_ZN11ast_manager7inc_refEP3ast.exit.i160:         ; preds = %bb.db, %bb.dc
  %i.ql = phi ptr [ %i.qi, %bb.dc ], [ %i.qg, %bb.db ]
  %.pn245 = phi ptr [ %i.qh, %bb.dc ], [ %i.qf, %bb.db ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.pn245, i64 %indvars.iv.next267 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !146 ; 3 uses
  %.not.i3.i161 = icmp eq ptr %i.qn, null
  br i1 %.not.i3.i161, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i160
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !100
  %i.qq = add i32 %i.qp, -1                       ; 2 uses
  store i32 %i.qq, ptr %i.qo, align 4, !tbaa !100
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ql, ptr noundef nonnull %i.qn)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.dd, %_ZN11ast_manager7inc_refEP3ast.exit.i160, %bb.de
  store ptr %i.pw, ptr %i.qm, align 8, !tbaa !146
  br label %bb.dg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ag, %bb.de, %bb.bi, %bb.w, %.lr.ph, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, %bb.s
  %lpad.loopexit.split-lp355 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dg:                                            ; preds = %bb.df, %bb.bj
  %i.qs = icmp samesign ugt i64 %indvars.iv266, 1
  br i1 %i.qs, label %.lr.ph254, label %.loopexit, !llvm.loop !481

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body189, %.body216, %.body168
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body169, %.body168 ], [ %eh.lpad-body190, %.body189 ], [ %eh.lpad-body217, %.body216 ], [ %lpad.loopexit.split-lp355, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  resume { ptr, i32 } %.pn75.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZdvRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 8, !tbaa !155
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !155
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !154
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !155
  store i32 %i.o, ptr %3, align 8, !tbaa !155
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !155
  store i32 %i.u, ptr %i.e, align 8, !tbaa !155
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationaldVERKS_.exit unwind label %bb.k

_ZN8rationaldVERKS_.exit:                         ; preds = %_ZN8rationalC2ERKS_.exit
  store i32 0, ptr %0, align 8, !tbaa !155
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !155
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !154
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationaldVERKS_.exit
  %i.al = load i32, ptr %3, align 8, !tbaa !155
  store i32 %i.al, ptr %0, align 8, !tbaa !155
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3

bb.g:                                             ; preds = %_ZN8rationaldVERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3:  ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !155
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !155
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit5

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalC2ERKS_.exit5 unwind label %bb.k

_ZN8rationalC2ERKS_.exit5:                        ; preds = %bb.h, %bb.i
  %i.as = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !157 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZN8rationalC2ERKS_.exit5
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZN8rationalC2ERKS_.exit5
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #19
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZN8rationalC2ERKS_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 10 uses
  %5 = alloca %class.mpz, align 8                 ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !155    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp eq i32 %i.g, 1
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit, label %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit.thread

_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit:        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  %i.o = load i32, ptr %i.j, align 8
  %i.p = icmp eq i32 %i.o, 1
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit.thread

bb.c:                                             ; preds = %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %3, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_11
begin_hunk_12_@llvm.umin.i64
!263 = !{!"_ZTSN7nlarith4util3imp11basic_substE", !252, i64 0, !26, i64 16}
!264 = !{!263, !26, i64 16}
!265 = !{!"_ZTS6vectorIN7nlarith4util11atom_updateELb0EjE", !17, i64 0}
!266 = !{!265, !17, i64 0}
!267 = !{!"_ZTSN7nlarith4util11atom_updateE", !13, i64 0}
!268 = !{!267, !267, i64 0}
!269 = !{!"_ZTSN7nlarith4util3imp15minus_eps_substE", !252, i64 0, !193, i64 16}
!270 = !{!269, !193, i64 16}
!271 = distinct !{!271, !129}
!272 = distinct !{!272, !129}
!273 = distinct !{!273, !129}
!274 = distinct !{!274, !129}
!275 = distinct !{!275, !129}
!276 = !{!"p1 _ZTS14obj_hash_entryI3appE", !17, i64 0}
!277 = !{!"_ZTS14core_hashtableI14obj_hash_entryI3appE12obj_ptr_hashIS1_E6ptr_eqIS1_EE", !276, i64 0, !14, i64 8, !14, i64 12, !14, i64 16}
!278 = !{!277, !276, i64 0}
!279 = !{!277, !14, i64 8}
!280 = !{!"_ZTS14obj_hash_entryI3appE", !26, i64 0}
!281 = !{!280, !26, i64 0}
!282 = !{!"p1 _ZTSN7nlarith4util11literal_setE", !17, i64 0}
!283 = !{!282, !282, i64 0}
!284 = distinct !{!284, !129}
!285 = !{!29, !25, i64 0}
!286 = !{!29, !14, i64 4}
!287 = !{!29, !14, i64 32}
!288 = !{!29, !25, i64 36}
!289 = !{!32, !25, i64 56}
!290 = !{!32, !25, i64 57}
!291 = !{!32, !25, i64 58}
!292 = !{!35, !33, i64 0}
!293 = !{!35, !25, i64 4}
!294 = !{!35, !34, i64 8}
!295 = !{!35, !14, i64 16}
!296 = !{!35, !14, i64 20}
!297 = !{!35, !34, i64 24}
!298 = !{!52, !25, i64 0}
!299 = !{!52, !25, i64 1}
!300 = !{!52, !51, i64 4}
!301 = !{!52, !25, i64 8}
!302 = !{!52, !25, i64 9}
!303 = !{!52, !14, i64 12}
!304 = !{!52, !14, i64 20}
!305 = !{!52, !25, i64 24}
!306 = !{!54, !53, i64 0}
!307 = !{!54, !14, i64 8}
!308 = !{!54, !14, i64 16}
!309 = !{!55, !25, i64 0}
!310 = !{!55, !25, i64 1}
!311 = !{!55, !14, i64 4}
!312 = !{!55, !14, i64 8}
!313 = !{!55, !25, i64 12}
!314 = !{!55, !14, i64 16}
!315 = !{!56, !14, i64 0}
!316 = !{!56, !25, i64 4}
!317 = !{!57, !14, i64 0}
!318 = !{!64, !25, i64 516}
!319 = !{!64, !25, i64 517}
!320 = !{!64, !14, i64 520}
!321 = !{!64, !25, i64 524}
!322 = !{!64, !14, i64 528}
!323 = !{!64, !14, i64 568}
!324 = !{!64, !25, i64 572}
!325 = !{!64, !14, i64 576}
!326 = !{!64, !25, i64 600}
!327 = !{!64, !14, i64 604}
!328 = !{!64, !14, i64 612}
!329 = !{!64, !25, i64 616}
!330 = !{!64, !25, i64 617}
!331 = !{!64, !25, i64 618}
!332 = !{!60, !36, i64 0}
!333 = !{!64, !25, i64 632}
!334 = !{!64, !25, i64 633}
!335 = !{!64, !61, i64 636}
!336 = !{!64, !14, i64 648}
!337 = !{!64, !25, i64 652}
!338 = !{!64, !62, i64 656}
!339 = !{!64, !14, i64 660}
!340 = !{!64, !34, i64 664}
!341 = !{!64, !25, i64 672}
!342 = !{!64, !63, i64 696}
!343 = !{!64, !25, i64 700}
!344 = !{!64, !14, i64 704}
!345 = !{!64, !14, i64 708}
!346 = !{!64, !34, i64 712}
!347 = !{!64, !14, i64 736}
!348 = !{!64, !34, i64 744}
!349 = !{!36, !36, i64 0}
!350 = !{!64, !25, i64 772}
!351 = !{!64, !25, i64 773}
!352 = !{!64, !14, i64 776}
!353 = !{!64, !25, i64 780}
!354 = !{!64, !25, i64 781}
!355 = !{!64, !25, i64 787}
!356 = !{!86, !25, i64 9}
!357 = !{!86, !14, i64 28}
!358 = !{!82, !81, i64 0}
!359 = !{!92, !14, i64 8}
!360 = !{!92, !14, i64 12}
!361 = !{!92, !14, i64 16}
!362 = !{!"_ZTSN7obj_mapI4exprjE8key_dataE", !126, i64 0, !14, i64 8}
!363 = !{!362, !126, i64 0}
!364 = !{!94, !25, i64 80}
!365 = !{!41, !14, i64 80}
!366 = !{!41, !14, i64 84}
!367 = !{!41, !25, i64 88}
!368 = !{!41, !14, i64 92}
!369 = !{!41, !40, i64 96}
!370 = !{!41, !25, i64 100}
!371 = !{!41, !25, i64 101}
!372 = !{!41, !14, i64 104}
!373 = !{!41, !14, i64 112}
!374 = !{!41, !14, i64 116}
!375 = !{!41, !14, i64 120}
!376 = !{!41, !25, i64 124}
!377 = !{!41, !14, i64 128}
!378 = !{!41, !36, i64 136}
!379 = !{!50, !25, i64 0}
!380 = !{!50, !25, i64 1}
!381 = !{!50, !42, i64 4}
!382 = !{!50, !25, i64 8}
!383 = !{!50, !14, i64 12}
!384 = !{!50, !25, i64 16}
!385 = !{!50, !43, i64 20}
!386 = !{!50, !25, i64 24}
!387 = !{!50, !25, i64 25}
!388 = !{!50, !14, i64 28}
!389 = !{!50, !14, i64 32}
!390 = !{!50, !25, i64 36}
!391 = !{!50, !25, i64 37}
!392 = !{!50, !14, i64 52}
!393 = !{!50, !14, i64 56}
!394 = !{!50, !25, i64 60}
!395 = !{!50, !25, i64 80}
!396 = !{!50, !14, i64 84}
!397 = !{!50, !25, i64 88}
!398 = !{!50, !25, i64 89}
!399 = !{!50, !25, i64 128}
!400 = !{!50, !25, i64 129}
!401 = !{!50, !25, i64 130}
!402 = !{!50, !14, i64 132}
!403 = !{!50, !25, i64 136}
!404 = !{!50, !25, i64 137}
!405 = !{!50, !48, i64 140}
!406 = !{!50, !25, i64 144}
!407 = !{!50, !49, i64 148}
!408 = !{!50, !25, i64 156}
!409 = !{!50, !25, i64 157}
!410 = !{!50, !14, i64 160}
!411 = !{!50, !25, i64 164}
!412 = !{!50, !25, i64 165}
!413 = !{!50, !14, i64 168}
!414 = !{!50, !25, i64 172}
!415 = !{!50, !14, i64 176}
!416 = !{!50, !25, i64 180}
!417 = !{!50, !25, i64 181}
!418 = !{!50, !25, i64 182}
!419 = distinct !{!419, !129}
!420 = !{!83, !79, i64 16}
!421 = !{!80, !79, i64 0}
!422 = !{!"p1 _ZTSN8seq_util3rex4infoE", !17, i64 0}
!423 = !{!"_ZTS6vectorIN8seq_util3rex4infoELb1EjE", !422, i64 0}
!424 = !{!423, !422, i64 0}
!425 = distinct !{!425, !129}
!426 = distinct !{!426, !129}
!427 = distinct !{!427, !129}
!428 = distinct !{!428, !129}
!429 = distinct !{!429, !129}
!430 = distinct !{!430, !129}
!431 = distinct !{!431, !129}
!432 = distinct !{!432, !129}
!433 = distinct !{!433, !129}
!434 = !{!248, !26, i64 832}
!435 = distinct !{!435, !129}
!436 = distinct !{!436, !129}
!437 = distinct !{!437, !129}
!438 = distinct !{!438, !129}
!439 = distinct !{!439, !129}
!440 = distinct !{!440, !129}
!441 = distinct !{!441, !129}
!442 = distinct !{!442, !129}
!443 = distinct !{!443, !129}
!444 = distinct !{!444, !129}
!445 = distinct !{!445, !250}
!446 = distinct !{!446, !129}
!447 = distinct !{!447, !129}
!448 = distinct !{!448, !129}
!449 = distinct !{!449, !129}
!450 = distinct !{!450, !129}
!451 = !{!44, !44, i64 0}
!452 = distinct !{null}
!453 = !{!86, !25, i64 11}
!454 = distinct !{!454, !129}
!455 = !{!"_ZTSN7nlarith4util3imp14plus_eps_substE", !252, i64 0, !193, i64 16}
!456 = !{!455, !193, i64 16}
!457 = distinct !{!457, !129}
!458 = distinct !{!458, !129}
!459 = distinct !{!459, !250}
!460 = distinct !{!460, !129}
!461 = distinct !{!461, !129}
!462 = distinct !{!462, !129}
!463 = !{!"_ZTS15quantifier_kind", !13, i64 0}
!464 = !{!"_ZTS10quantifier", !176, i64 0, !463, i64 16, !14, i64 20, !126, i64 24, !90, i64 32, !14, i64 40, !14, i64 44, !25, i64 48, !25, i64 49, !60, i64 56, !60, i64 64, !14, i64 72, !14, i64 76, !13, i64 80}
!465 = !{!464, !126, i64 24}
!466 = distinct !{!466, !129}
!467 = distinct !{!467, !129}
!468 = distinct !{!468, !129}
!469 = distinct !{!469, !129}
!470 = distinct !{!470, !129}
!471 = distinct !{!471, !129}
!472 = distinct !{!472, !129}
!473 = distinct !{!473, !129}
!474 = distinct !{!474, !129}
!475 = distinct !{!475, !129}
!476 = distinct !{!476, !129}
!477 = distinct !{!477, !129}
!478 = distinct !{!478, !129}
!479 = distinct !{!479, !129}
!480 = distinct !{!480, !129}
!481 = distinct !{!481, !129}
end_hunk_12

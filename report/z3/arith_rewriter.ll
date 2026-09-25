Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/arith_rewriter?download=true
inline.NumInlined: 3767
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 110
begin_hunk_0_@"_ZZN14arith_rewriter15is_non_negativeEP4exprENK3$_2clES1_S1_":bb.a
bb.k:                                             ; preds = %._crit_edge
  %i.bb = load i8, ptr %i.q, align 4
  %i.bc = and i8 %i.bb, 1
  %i.bd = icmp eq i8 %i.bc, 0                     ; 2 uses
  %i.be = load i32, ptr %2, align 8               ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZNK8rational6is_oneEv.exit, label %bb.l

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.k
  %i.bh = load i8, ptr %i.v, align 4
  %i.bi = and i8 %i.bh, 1
  %i.bj = icmp eq i8 %i.bi, 0
  %i.bk = load i32, ptr %i.u, align 8
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = select i1 %i.bj, i1 %i.bl, i1 false
  br label %_ZNK8rational12is_minus_oneEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp eq i32 %i.be, -1
  %i.bo = select i1 %i.bd, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.m, label %_ZNK8rational12is_minus_oneEv.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = load i8, ptr %i.v, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = load i32, ptr %i.u, align 8
  %i.bt = icmp eq i32 %i.bs, 1
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br label %_ZNK8rational12is_minus_oneEv.exit

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %_ZN8rationalD2Ev.exit, %bb.c, %_ZNK8rational6is_oneEv.exit, %bb.m, %bb.l, %._crit_edge
  %.330 = phi i1 [ false, %._crit_edge ], [ %i.bu, %bb.m ], [ %i.bm, %_ZNK8rational6is_oneEv.exit ], [ false, %bb.l ], [ false, %bb.c ], [ false, %_ZN8rationalD2Ev.exit ]
  %i.bv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i33 unwind label %bb.n

.noexc.i33:                                       ; preds = %_ZNK8rational12is_minus_oneEv.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZN8rationalD2Ev.exit34 unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i33, %_ZNK8rational12is_minus_oneEv.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #24
  unreachable

_ZN8rationalD2Ev.exit34:                          ; preds = %.noexc.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers6is_addEPK4expr.exit, %_ZN8rationalD2Ev.exit34
  %.4 = phi i1 [ %.330, %_ZN8rationalD2Ev.exit34 ], [ false, %_ZNK17arith_recognizers6is_addEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10bit_vectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10bit_vectorD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZN10bit_vectorD2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 6) i32 @_ZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %5 = alloca %class.rational, align 8            ; 17 uses
  %6 = alloca %class.rational, align 8            ; 30 uses
  %7 = alloca %class.rational, align 8            ; 25 uses
  %8 = alloca %class.obj_ref, align 8             ; 11 uses
  %9 = alloca %class.obj_ref, align 8             ; 7 uses
  %10 = alloca %class.rational, align 8           ; 12 uses
  %11 = alloca %class.ref_buffer, align 8         ; 10 uses
  %12 = alloca %class.ptr_buffer, align 8         ; 11 uses
  %13 = alloca %class.ref_buffer, align 8         ; 10 uses
  %14 = alloca %class.ref_buffer, align 8         ; 10 uses
  %or.cond = icmp ugt i32 %3, 1
  br i1 %or.cond, label %bb.cz, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i32 1, ptr %i.h, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  store i8 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !121
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  store i32 0, ptr %5, align 8, !tbaa !120
  store i8 %i.f, ptr %i.d, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  store i32 1, ptr %i.h, align 8, !tbaa !120
  %i.n = load i8, ptr %i.i, align 4
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 0, ptr %6, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i32 1, ptr %i.t, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.x, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 0, ptr %7, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !120
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 6 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ah = load ptr, ptr %0, align 8, !tbaa !38, !nonnull !39, !align !40
  store ptr null, ptr %8, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ak = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %i.ak, label %bb.e, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread218"

bb.d:                                             ; preds = %bb.b, %bb.j, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.e:                                             ; preds = %bb.c
  %15 = icmp ne i32 %3, 0                         ; 2 uses
  %i.am = load i32, ptr %7, align 8
  %i.an = icmp eq i32 %i.am, 0
  %or.cond234 = select i1 %15, i1 %i.an, i1 false
  br i1 %or.cond234, label %bb.f, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 65535
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit

_ZNK17arith_recognizers6is_mulEPK4expr.exit:      ; preds = %bb.g
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !132
  %i.ax = icmp eq i32 %i.aw, 5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, 9
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.h, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.h:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit
  %i.bc = invoke noundef zeroext i1 @_ZN14arith_rewriter15is_non_negativeEP4expr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  br i1 %i.bc, label %bb.j, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 832
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !204
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.bf)
          to label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread218" unwind label %bb.d ; 0 uses

_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread: ; preds = %bb.g, %bb.f, %bb.i, %_ZNK17arith_recognizers6is_mulEPK4expr.exit, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 65535
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.k:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !137
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i92, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit

_ZNK17arith_recognizers6is_addEPK4expr.exit:      ; preds = %bb.k
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !132
  %i.bq = icmp eq i32 %i.bp, 5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 6
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.l, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.l:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !139 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %.idx = shl nuw nsw i64 %i.by, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx ; 2 uses
  %.not236 = icmp eq i32 %i.bx, 0
  br i1 %.not236, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ca = icmp eq i32 %3, 0
  br i1 %i.ca, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us"
  %.056238.us = phi ptr [ %i.cf, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us" ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.0216237.us = phi i1 [ %.2.us, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us" ], [ true, %.lr.ph ] ; 2 uses
  %i.cb = load ptr, ptr %.056238.us, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cc = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc.us unwind label %.split240.us

.noexc.us:                                        ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br i1 %i.cc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.us
  %i.cd = invoke noundef zeroext i1 @_ZN14arith_rewriter15is_non_negativeEP4expr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.cb)
          to label %.noexc94.us unwind label %.split240.us

.noexc94.us:                                      ; preds = %bb.m
  %spec.select = select i1 %i.cd, i1 %.0216237.us, i1 false
  br label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us"

bb.n:                                             ; preds = %.noexc.us
  %i.ce = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us" unwind label %.split240.us

"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit.us": ; preds = %.noexc94.us, %bb.n
  %.2.us = phi i1 [ %.0216237.us, %bb.n ], [ %spec.select, %.noexc94.us ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.056238.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.cf, %i.bz
  br i1 %.not.us, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105", label %.lr.ph.split.us

.split240.us:                                     ; preds = %bb.n, %bb.m, %.lr.ph.split.us
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.o:                                             ; preds = %.invoke, %bb.ar, %bb.aq, %bb.al, %bb.ak, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.t, %bb.r, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit"
  %.056238 = phi ptr [ %i.co, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit" ], [ %i.bv, %.lr.ph ] ; 2 uses
  %.0216237 = phi i1 [ %.2, %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit" ], [ true, %.lr.ph ] ; 2 uses
  %i.ci = load ptr, ptr %.056238, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cj = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc unwind label %.split240

.noexc:                                           ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br i1 %i.cj, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %.noexc
  %i.ck = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit" unwind label %.split240

._crit_edge.i:                                    ; preds = %.noexc
  %i.cl = invoke noundef zeroext i1 @_ZN14arith_rewriter11is_neg_polyEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc95 unwind label %.split240

.noexc95:                                         ; preds = %._crit_edge.i
  br i1 %i.cl, label %bb.q, label %._crit_edge.i.thread

bb.q:                                             ; preds = %.noexc95
  %i.cm = load ptr, ptr %8, align 8, !tbaa !101
  %i.cn = invoke noundef zeroext i1 @_ZN14arith_rewriter15is_non_negativeEP4expr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.cm)
          to label %.noexc96 unwind label %.split240

.noexc96:                                         ; preds = %bb.q
  br i1 %i.cn, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit", label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.noexc96, %.noexc95
  br label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit"

"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit": ; preds = %._crit_edge.i.thread, %.noexc96, %bb.p
  %.2 = phi i1 [ false, %._crit_edge.i.thread ], [ %.0216237, %bb.p ], [ %.0216237, %.noexc96 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.056238, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.bz
  br i1 %.not, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105", label %.lr.ph.split

.split240:                                        ; preds = %bb.q, %._crit_edge.i, %bb.p, %.lr.ph.split
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %bb.k, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread, %_ZNK17arith_recognizers6is_addEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.cq = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc100 unwind label %bb.o

.noexc100:                                        ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc100
  %i.cr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread" unwind label %bb.o

bb.s:                                             ; preds = %.noexc100
  %i.cs = icmp eq i32 %3, 0
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = invoke noundef zeroext i1 @_ZN14arith_rewriter15is_non_negativeEP4expr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1)
          to label %.noexc102 unwind label %bb.o

.noexc102:                                        ; preds = %bb.t
  br i1 %i.ct, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread.thread", label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread218"

bb.u:                                             ; preds = %bb.s
  %i.cu = invoke noundef zeroext i1 @_ZN14arith_rewriter11is_neg_polyEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc103 unwind label %bb.o

.noexc103:                                        ; preds = %bb.u
  br i1 %i.cu, label %bb.v, label %"_ZZN14arith_rewriter12is_separatedEP4exprS1_NS_7op_kindER7obj_refIS0_11ast_managerEENK3$_0clES1_.exit105.thread218"

end_hunk_0
begin_hunk_1_@_ZN13poly_rewriterI19arith_rewriter_coreE16cancel_monomialsEP4exprS3_bR7obj_refIS2_11ast_managerES7_:bb.a
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ed, %bb.ec, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn114 = phi { ptr, i32 } [ %i.afp, %bb.eg ], [ %i.afo, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.fo

bb.ei:                                            ; preds = %bb.ds
  %i.afq = load i32, ptr %i.aaq, align 8, !tbaa !111 ; 2 uses
  %i.afr = load i32, ptr %i.aar, align 4, !tbaa !112 ; 2 uses
  %.not.i382 = icmp ult i32 %i.afq, %i.afr
  br i1 %.not.i382, label %._crit_edge.i396, label %bb.ej

._crit_edge.i396:                                 ; preds = %bb.ei
  %.pre.i397 = load ptr, ptr %14, align 8, !tbaa !110
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit400

bb.ej:                                            ; preds = %bb.ei
  %i.afs = shl i32 %i.afr, 1                      ; 2 uses
  %i.aft = zext i32 %i.afs to i64
  %i.afu = shl nuw nsw i64 %i.aft, 3
  %i.afv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.afu)
          to label %.noexc398 unwind label %bb.dy ; 9 uses

.noexc398:                                        ; preds = %bb.ej
  %i.afw = load i32, ptr %i.aaq, align 8, !tbaa !111 ; 4 uses
  %.not.i.i383 = icmp eq i32 %i.afw, 0
  %.pre.i.i384 = load ptr, ptr %14, align 8, !tbaa !110 ; 10 uses
  br i1 %.not.i.i383, label %._crit_edge.i.i390, label %.lr.ph.i.i385

.lr.ph.i.i385:                                    ; preds = %.noexc398
  %.pre.i.i384830 = ptrtoaddr ptr %.pre.i.i384 to i64
  %i.afx = ptrtoaddr ptr %i.afv to i64
  %wide.trip.count.i.i386 = zext i32 %i.afw to i64 ; 5 uses
  %min.iters.check833 = icmp ult i32 %i.afw, 4
  %i.afy = sub i64 %.pre.i.i384830, %i.afx
  %diff.check831 = icmp ugt i64 %i.afy, -32
  %or.cond851 = select i1 %min.iters.check833, i1 true, i1 %diff.check831
  br i1 %or.cond851, label %scalar.ph832.preheader, label %vector.ph834

vector.ph834:                                     ; preds = %.lr.ph.i.i385
  %n.vec835 = and i64 %wide.trip.count.i.i386, 4294967292 ; 3 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph834
  %index837 = phi i64 [ 0, %vector.ph834 ], [ %index.next840, %vector.body836 ] ; 3 uses
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %index837 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %index837 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load838 = load <2 x ptr>, ptr %i.aga, align 8, !tbaa !97
  %wide.load839 = load <2 x ptr>, ptr %i.agb, align 8, !tbaa !97
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  store <2 x ptr> %wide.load838, ptr %i.afz, align 8, !tbaa !97
  store <2 x ptr> %wide.load839, ptr %i.agc, align 8, !tbaa !97
  %index.next840 = add nuw i64 %index837, 4       ; 2 uses
  %i.agd = icmp eq i64 %index.next840, %n.vec835
  br i1 %i.agd, label %middle.block841, label %vector.body836, !llvm.loop !596

middle.block841:                                  ; preds = %vector.body836
  %cmp.n842 = icmp eq i64 %n.vec835, %wide.trip.count.i.i386
  br i1 %cmp.n842, label %._crit_edge.i.i390, label %scalar.ph832.preheader

scalar.ph832.preheader:                           ; preds = %.lr.ph.i.i385, %middle.block841
  %indvars.iv.i.i387.ph = phi i64 [ 0, %.lr.ph.i.i385 ], [ %n.vec835, %middle.block841 ] ; 3 uses
  %xtraiter889 = and i64 %wide.trip.count.i.i386, 3 ; 2 uses
  %lcmp.mod890.not = icmp eq i64 %xtraiter889, 0
  br i1 %lcmp.mod890.not, label %scalar.ph832.prol.loopexit, label %scalar.ph832.prol

scalar.ph832.prol:                                ; preds = %scalar.ph832.preheader, %scalar.ph832.prol
  %indvars.iv.i.i387.prol = phi i64 [ %indvars.iv.next.i.i388.prol, %scalar.ph832.prol ], [ %indvars.iv.i.i387.ph, %scalar.ph832.preheader ] ; 3 uses
  %prol.iter891 = phi i64 [ %prol.iter891.next, %scalar.ph832.prol ], [ 0, %scalar.ph832.preheader ]
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv.i.i387.prol
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %indvars.iv.i.i387.prol
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !97
  store ptr %i.agg, ptr %i.age, align 8, !tbaa !97
  %indvars.iv.next.i.i388.prol = add nuw nsw i64 %indvars.iv.i.i387.prol, 1 ; 2 uses
  %prol.iter891.next = add i64 %prol.iter891, 1   ; 2 uses
  %prol.iter891.cmp.not = icmp eq i64 %prol.iter891.next, %xtraiter889
  br i1 %prol.iter891.cmp.not, label %scalar.ph832.prol.loopexit, label %scalar.ph832.prol, !llvm.loop !597

scalar.ph832.prol.loopexit:                       ; preds = %scalar.ph832.prol, %scalar.ph832.preheader
  %indvars.iv.i.i387.unr = phi i64 [ %indvars.iv.i.i387.ph, %scalar.ph832.preheader ], [ %indvars.iv.next.i.i388.prol, %scalar.ph832.prol ]
  %i.agh = sub nsw i64 %indvars.iv.i.i387.ph, %wide.trip.count.i.i386
  %i.agi = icmp ugt i64 %i.agh, -4
  br i1 %i.agi, label %._crit_edge.i.i390, label %scalar.ph832

._crit_edge.i.i390:                               ; preds = %scalar.ph832.prol.loopexit, %scalar.ph832, %middle.block841, %.noexc398
  %.not.i.i.i391 = icmp eq ptr %.pre.i.i384, %i.aap
  %i.agj = icmp eq ptr %.pre.i.i384, null
  %or.cond.i.i.i392 = or i1 %.not.i.i.i391, %i.agj
  br i1 %or.cond.i.i.i392, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge.i.i390
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i384)
          to label %.noexc399 unwind label %bb.dy

.noexc399:                                        ; preds = %bb.ek
  %.pre2.pre.i393 = load i32, ptr %i.aaq, align 8, !tbaa !111
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394

scalar.ph832:                                     ; preds = %scalar.ph832.prol.loopexit, %scalar.ph832
  %indvars.iv.i.i387 = phi i64 [ %indvars.iv.next.i.i388.3, %scalar.ph832 ], [ %indvars.iv.i.i387.unr, %scalar.ph832.prol.loopexit ] ; 6 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv.i.i387
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %indvars.iv.i.i387
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !97
  store ptr %i.agm, ptr %i.agk, align 8, !tbaa !97
  %indvars.iv.next.i.i388 = add nuw nsw i64 %indvars.iv.i.i387, 1 ; 2 uses
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv.next.i.i388
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %indvars.iv.next.i.i388
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !97
  store ptr %i.agp, ptr %i.agn, align 8, !tbaa !97
  %indvars.iv.next.i.i388.1 = add nuw nsw i64 %indvars.iv.i.i387, 2 ; 2 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv.next.i.i388.1
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %indvars.iv.next.i.i388.1
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !97
  store ptr %i.ags, ptr %i.agq, align 8, !tbaa !97
  %indvars.iv.next.i.i388.2 = add nuw nsw i64 %indvars.iv.i.i387, 3 ; 2 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %indvars.iv.next.i.i388.2
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i384, i64 %indvars.iv.next.i.i388.2
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !97
  store ptr %i.agv, ptr %i.agt, align 8, !tbaa !97
  %indvars.iv.next.i.i388.3 = add nuw nsw i64 %indvars.iv.i.i387, 4 ; 2 uses
  %exitcond.not.i.i389.3 = icmp eq i64 %indvars.iv.next.i.i388.3, %wide.trip.count.i.i386
  br i1 %exitcond.not.i.i389.3, label %._crit_edge.i.i390, label %scalar.ph832, !llvm.loop !598

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394:   ; preds = %.noexc399, %._crit_edge.i.i390
  %.pre2.i395 = phi i32 [ %i.afw, %._crit_edge.i.i390 ], [ %.pre2.pre.i393, %.noexc399 ]
  store ptr %i.afv, ptr %14, align 8, !tbaa !110
  store i32 %i.afs, ptr %i.aar, align 4, !tbaa !112
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit400

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit400: ; preds = %._crit_edge.i396, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394
  %i.agw = phi i32 [ %i.afq, %._crit_edge.i396 ], [ %.pre2.i395, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394 ] ; 2 uses
  %i.agx = phi ptr [ %.pre.i397, %._crit_edge.i396 ], [ %i.afv, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i394 ]
  %i.agy = zext i32 %i.agw to i64
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %i.agy
  store ptr %i.aaw, ptr %i.agz, align 8, !tbaa !97
  %i.aha = add i32 %i.agw, 1
  store i32 %i.aha, ptr %i.aaq, align 8, !tbaa !111
  br label %bb.el

bb.el:                                            ; preds = %bb.dr, %bb.dt, %bb.ee, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit358, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit400, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit339
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %._crit_edge571, label %bb.dp, !llvm.loop !599

bb.em:                                            ; preds = %._crit_edge571
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ahc = load i8, ptr %i.ahb, align 8, !tbaa !80, !range !86, !noundef !39
  %i.ahd = trunc nuw i8 %i.ahc to i1
  br i1 %i.ahd, label %bb.en, label %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread

bb.en:                                            ; preds = %bb.em
  %i.ahe = load ptr, ptr %13, align 8, !tbaa !110 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8 ; 2 uses
  %i.ahg = load i32, ptr %i.ri, align 8, !tbaa !111 ; 2 uses
  %i.ahh = zext i32 %i.ahg to i64
  %.idx = shl nuw nsw i64 %i.ahh, 3               ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %.idx ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !238 ; 2 uses
  %.not.i.i401 = icmp eq i32 %i.ahg, 1
  br i1 %.not.i.i401, label %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %gepdiff = add nsw i64 %.idx, -8
  %i.ahj = ashr exact i64 %gepdiff, 3
  %i.ahk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahj, i1 true)
  %i.ahl = shl nuw nsw i64 %i.ahk, 1
  %i.ahm = xor i64 %i.ahl, 126
  invoke void @_ZSt16__introsort_loopIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEEEvT_SB_T0_T1_(ptr noundef nonnull %i.ahf, ptr noundef nonnull %i.ahi, i64 noundef %i.ahm, ptr %.sroa.0.0.copyload)
          to label %.noexc402 unwind label %bb.ep

.noexc402:                                        ; preds = %bb.eo
  invoke void @_ZSt22__final_insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEEEvT_SB_T0_(ptr noundef nonnull %i.ahf, ptr noundef nonnull %i.ahi, ptr %.sroa.0.0.copyload)
          to label %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread unwind label %bb.ep

bb.ep:                                            ; preds = %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread, %.noexc402, %bb.eo
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.eq:                                            ; preds = %._crit_edge571
  %i.aho = load i32, ptr %i.aaq, align 8, !tbaa !111
  %i.ahp = icmp eq i32 %i.aho, 1
  %i.ahq = load i32, ptr %i.ri, align 8           ; 2 uses
  %i.ahr = icmp ugt i32 %i.ahq, 1
  %or.cond522 = select i1 %i.ahp, i1 true, i1 %i.ahr
  br i1 %or.cond522, label %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread, label %.critedge

_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread: ; preds = %bb.en, %.noexc402, %bb.eq, %bb.em
  %i.ahs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  invoke void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ahs, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN8rational3negEv.exit405 unwind label %bb.ep

.critedge:                                        ; preds = %bb.eq
  %i.aht = icmp eq i32 %i.ahq, 0
  br i1 %i.aht, label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413, label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread515

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread515: ; preds = %.critedge
  %i.ahu = load ptr, ptr %14, align 8, !tbaa !110
  store ptr null, ptr %i.ahu, align 8, !tbaa !97
  br label %bb.et

_ZN8rational3negEv.exit405:                       ; preds = %_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_.exit.thread
  %i.ahv = load i32, ptr %i.aaq, align 8, !tbaa !111
  %i.ahw = icmp ne i32 %i.ahv, 1
  %i.ahx = load i32, ptr %10, align 8
  %.not523 = icmp eq i32 %i.ahx, 0
  %or.cond721 = select i1 %i.ahw, i1 %.not523, i1 false
  br i1 %or.cond721, label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread, label %.thread487

.thread487:                                       ; preds = %_ZN8rational3negEv.exit405
  %i.ahy = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 24
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !91 ; 3 uses
  %i.aic = icmp eq ptr %i.aib, null
  br i1 %i.aic, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i406

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i406: ; preds = %.thread487
  %i.aid = load i32, ptr %i.aib, align 8, !tbaa !132
  %i.aie = icmp eq i32 %i.aid, 5
  br i1 %i.aie, label %bb.er, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407

bb.er:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i406
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 4
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !95
  %i.aih = icmp eq i32 %i.aig, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407

_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407: ; preds = %bb.er, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i406, %.thread487
  %i.aii = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i406 ], [ %i.aih, %bb.er ], [ false, %.thread487 ]
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i408 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i.i.i408, label %bb.es, label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409

bb.es:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahz)
          to label %.noexc411 unwind label %bb.fn

.noexc411:                                        ; preds = %bb.es
  %.pre.i.i.i.i.i410 = load ptr, ptr %i.aij, align 8, !tbaa !113
  br label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409

_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409: ; preds = %.noexc411, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407
  %i.ail = phi ptr [ %.pre.i.i.i.i.i410, %.noexc411 ], [ %i.aik, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i407 ]
  %i.aim = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.ail, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext %i.aii)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread unwind label %bb.fn

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread: ; preds = %_ZN8rational3negEv.exit405, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409
  %.neg110498.ph = phi i32 [ 0, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409 ], [ -1, %_ZN8rational3negEv.exit405 ]
  %not.109496.ph = phi i64 [ 0, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409 ], [ 1, %_ZN8rational3negEv.exit405 ]
  %.ph506 = phi ptr [ %i.aim, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i409 ], [ null, %_ZN8rational3negEv.exit405 ]
  %i.ain = load ptr, ptr %14, align 8, !tbaa !110
  store ptr %.ph506, ptr %i.ain, align 8, !tbaa !97
  br label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit421

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413: ; preds = %.critedge
  %i.aio = load i32, ptr %10, align 8, !tbaa !120
  %.not = icmp eq i32 %i.aio, 0
  %i.aip = load ptr, ptr %14, align 8, !tbaa !110
  store ptr null, ptr %i.aip, align 8, !tbaa !97
  br i1 %.not, label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit421, label %bb.et

bb.et:                                            ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread515, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413
  %i.aiq = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aiq, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !91 ; 3 uses
  %i.aiu = icmp eq ptr %i.ait, null
  br i1 %i.aiu, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i414

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i414: ; preds = %bb.et
  %i.aiv = load i32, ptr %i.ait, align 8, !tbaa !132
  %i.aiw = icmp eq i32 %i.aiv, 5
  br i1 %i.aiw, label %bb.eu, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415

bb.eu:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i414
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !95
  %i.aiz = icmp eq i32 %i.aiy, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415

_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415: ; preds = %bb.eu, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i414, %bb.et
  %i.aja = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i414 ], [ %i.aiz, %bb.eu ], [ false, %bb.et ]
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i416 = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i.i.i.i416, label %bb.ev, label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417

bb.ev:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.air)
          to label %.noexc419 unwind label %bb.fn

.noexc419:                                        ; preds = %bb.ev
  %.pre.i.i.i.i.i418 = load ptr, ptr %i.ajb, align 8, !tbaa !113
  br label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417

_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417: ; preds = %.noexc419, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415
  %i.ajd = phi ptr [ %.pre.i.i.i.i.i418, %.noexc419 ], [ %i.ajc, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i415 ]
  %i.aje = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.ajd, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext %i.aja)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit421 unwind label %bb.fn

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit421: ; preds = %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413
  %not.492514 = phi i64 [ 1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread ], [ 1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413 ], [ 0, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417 ]
  %.neg494513 = phi i32 [ -1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread ], [ -1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413 ], [ 0, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417 ]
  %not.109496512 = phi i64 [ %not.109496.ph, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread ], [ 1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413 ], [ 1, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417 ]
  %.neg110498511 = phi i32 [ %.neg110498.ph, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread ], [ -1, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413 ], [ -1, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417 ]
  %i.ajf = phi ptr [ null, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413.thread ], [ null, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit413 ], [ %i.aje, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i417 ]
  %i.ajg = load ptr, ptr %13, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ajf, ptr %i.ajg, align 8, !tbaa !97
  %i.ajh = load i32, ptr %i.ri, align 8, !tbaa !111
  %i.aji = add i32 %i.ajh, %.neg494513
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.ajg, i64 %not.492514
  %i.ajk = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_add_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.aji, ptr noundef nonnull %i.ajj)
          to label %bb.ew unwind label %bb.fn     ; 3 uses

bb.ew:                                            ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit421
  %.not.i422 = icmp eq ptr %i.ajk, null
  br i1 %.not.i422, label %bb.ex, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.ew
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8 ; 2 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !99
  %i.ajn = add i32 %i.ajm, 1
  store i32 %i.ajn, ptr %i.ajl, align 4, !tbaa !99
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.ew
  %i.ajo = load ptr, ptr %4, align 8, !tbaa !101  ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i4.i, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ajp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !102, !nonnull !39, !align !40
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8 ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !99
  %i.ajt = add i32 %i.ajs, -1                     ; 2 uses
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !99
  %i.aju = icmp eq i32 %i.ajt, 0
  br i1 %i.aju, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ajq, ptr noundef nonnull %i.ajo)
          to label %bb.fa unwind label %bb.fn

bb.fa:                                            ; preds = %bb.ey, %bb.ex, %bb.ez
  store ptr %i.ajk, ptr %4, align 8, !tbaa !101
  %i.ajv = load i32, ptr %i.aaq, align 8, !tbaa !111
  %i.ajw = add i32 %i.ajv, %.neg110498511
  %i.ajx = load ptr, ptr %14, align 8, !tbaa !110
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %not.109496512
  %i.ajz = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_add_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.ajw, ptr noundef %i.ajy)
          to label %bb.fb unwind label %bb.fn     ; 3 uses

bb.fb:                                            ; preds = %bb.fa
  %.not.i424 = icmp eq ptr %i.ajz, null
  br i1 %.not.i424, label %bb.fc, label %_ZN11ast_manager7inc_refEP3ast.exit.i425

_ZN11ast_manager7inc_refEP3ast.exit.i425:         ; preds = %bb.fb
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 2 uses
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !99
  %i.akc = add i32 %i.akb, 1
  store i32 %i.akc, ptr %i.aka, align 4, !tbaa !99
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i425, %bb.fb
  %i.akd = load ptr, ptr %5, align 8, !tbaa !101  ; 3 uses
  %.not.i4.i426 = icmp eq ptr %i.akd, null
  br i1 %.not.i4.i426, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ake = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !102, !nonnull !39, !align !40
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akd, i64 8 ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !99
  %i.aki = add i32 %i.akh, -1                     ; 2 uses
  store i32 %i.aki, ptr %i.akg, align 4, !tbaa !99
  %i.akj = icmp eq i32 %i.aki, 0
  br i1 %i.akj, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.akf, ptr noundef nonnull %i.akd)
          to label %bb.ff unwind label %bb.fn

bb.ff:                                            ; preds = %bb.fd, %bb.fc, %bb.fe
  store ptr %i.ajz, ptr %5, align 8, !tbaa !101
  %i.akk = load ptr, ptr %14, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i429 = icmp eq ptr %i.akk, %i.aap
  %i.akl = icmp eq ptr %i.akk, null
  %or.cond.i.i.i430 = or i1 %.not.i.i.i429, %i.akl
  br i1 %or.cond.i.i.i430, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.akk)
end_hunk_1
begin_hunk_2_@_ZN13poly_rewriterI19arith_rewriter_coreE17mk_nflat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE:bb.a
  store i8 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !121
  %i.m = icmp eq i32 %1, 2                        ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.p = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.d, align 4
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = load i32, ptr %5, align 8                ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNK8rational6is_oneEv.exit, label %bb.e

_ZNK8rational6is_oneEv.exit:                      ; preds = %bb.d
  %i.w = load i8, ptr %i.i, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  %i.z = load i32, ptr %i.h, align 8
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.h, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i32 %i.t, 0
  br i1 %i.ac, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNK8rational6is_oneEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 65535
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %_ZNK4decl13get_family_idEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK4decl13get_family_idEv.exit.thread, label %_ZNK4decl13get_family_idEv.exit

_ZNK4decl13get_family_idEv.exit:                  ; preds = %bb.f
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !132
  %.not124 = icmp eq i32 %i.ao, 5
  br i1 %.not124, label %bb.h, label %_ZNK4decl13get_family_idEv.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.h:                                             ; preds = %_ZNK4decl13get_family_idEv.exit, %bb.e, %_ZNK8rational6is_oneEv.exit, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, -4
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !121
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store i32 1, ptr %i.au, align 8, !tbaa !120
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 8 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, -4
  store i8 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ay, align 8, !tbaa !121
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  store i32 1, ptr %6, align 8, !tbaa !120
  store i8 %i.as, ptr %i.aq, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN8rationalC2Ei.exit unwind label %bb.i

_ZN8rationalC2Ei.exit:                            ; preds = %bb.h
  store i32 1, ptr %i.au, align 8, !tbaa !120
  %i.ba = load i8, ptr %i.av, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.av, align 4
  %.not413 = icmp eq i32 %1, 0                    ; 5 uses
  br i1 %.not413, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rationalC2Ei.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.j:                                             ; preds = %.lr.ph, %_ZN8rationalmLERKS_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rationalmLERKS_.exit ] ; 2 uses
  %.0100387 = phi ptr [ null, %.lr.ph ], [ %.1101, %_ZN8rationalmLERKS_.exit ] ; 2 uses
  %.0102386 = phi i32 [ 0, %.lr.ph ], [ %.1103, %_ZN8rationalmLERKS_.exit ] ; 5 uses
  %.0104385 = phi i32 [ 0, %.lr.ph ], [ %.1105, %_ZN8rationalmLERKS_.exit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !97 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bg = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br i1 %i.bg, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bh = add i32 %.0104385, 1                    ; 2 uses
  %i.bi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 3 uses
  %i.bj = load i8, ptr %i.av, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  %i.bm = load i32, ptr %i.au, align 8
  %i.bn = icmp eq i32 %i.bm, 1
  %i.bo = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = load i8, ptr %i.i, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = load i32, ptr %i.h, align 8
  %i.bt = icmp eq i32 %i.bs, 1
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.n
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.noexc146 unwind label %bb.p

.noexc146:                                        ; preds = %.noexc
  store i32 1, ptr %i.au, align 8, !tbaa !120
  %i.bv = load i8, ptr %i.av, align 4
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.av, align 4
  br label %_ZN8rationalmLERKS_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN8rationalmLERKS_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc, %bb.n, %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.q:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = and i32 %i.bz, 65535
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %_ZN8rationalmLERKS_.exit

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !137
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %_ZN8rationalmLERKS_.exit, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit: ; preds = %bb.r
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !132
  %i.ch = icmp eq i32 %i.cg, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp eq i32 %i.cj, 6
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false
  %cond.fr = freeze i1 %i.cl
  %i.cm = zext i1 %cond.fr to i32
  %spec.select = add i32 %.0102386, %i.cm
  br label %_ZN8rationalmLERKS_.exit

_ZN8rationalmLERKS_.exit:                         ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit, %bb.r, %bb.q, %.noexc146, %bb.o
  %.1105 = phi i32 [ %i.bh, %.noexc146 ], [ %i.bh, %bb.o ], [ %.0104385, %bb.r ], [ %.0104385, %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit ], [ %.0104385, %bb.q ] ; 2 uses
  %.1103 = phi i32 [ %.0102386, %.noexc146 ], [ %.0102386, %bb.o ], [ %.0102386, %bb.r ], [ %spec.select, %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit ], [ %.0102386, %bb.q ] ; 2 uses
  %.1101 = phi ptr [ %.0100387, %.noexc146 ], [ %.0100387, %bb.o ], [ %i.bf, %bb.r ], [ %i.bf, %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit ], [ %i.bf, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !685

._crit_edge:                                      ; preds = %_ZN8rationalmLERKS_.exit, %_ZN8rationalC2Ei.exit
  %.0104.lcssa = phi i32 [ 0, %_ZN8rationalC2Ei.exit ], [ %.1105, %_ZN8rationalmLERKS_.exit ] ; 4 uses
  %.0102.lcssa = phi i32 [ 0, %_ZN8rationalC2Ei.exit ], [ %.1103, %_ZN8rationalmLERKS_.exit ] ; 2 uses
  %.0100.lcssa = phi ptr [ null, %_ZN8rationalC2Ei.exit ], [ %.1101, %_ZN8rationalmLERKS_.exit ] ; 12 uses
  %i.cn = icmp eq i32 %.0104.lcssa, %1
  br i1 %i.cn, label %bb.s, label %bb.z

bb.s:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !126
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !91 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.s
  %i.cu = load i32, ptr %i.cs, align 8, !tbaa !132
  %i.cv = icmp eq i32 %i.cu, 5
  br i1 %i.cv, label %bb.t, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i

bb.t:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !95
  %i.cy = icmp eq i32 %i.cx, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i

_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i: ; preds = %bb.t, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i, %bb.s
  %i.cz = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i ], [ %i.cy, %bb.t ], [ false, %bb.s ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i

bb.u:                                             ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %.noexc148 unwind label %bb.y

.noexc148:                                        ; preds = %bb.u
  %.pre.i.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !113
  br label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i

_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i: ; preds = %.noexc148, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i
  %i.dc = phi ptr [ %.pre.i.i.i.i.i, %.noexc148 ], [ %i.db, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i ]
  %i.dd = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.cz)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit unwind label %bb.y ; 3 uses

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit: ; preds = %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i
  %.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.i, label %bb.v, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !99
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !99
  br label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit
  %i.dh = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.dh, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !102, !nonnull !39, !align !40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !99
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !99
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.x, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dj, ptr noundef nonnull %i.dh)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %bb.y

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.x, %bb.v, %bb.w
  store ptr %i.dd, ptr %3, align 8, !tbaa !101
  br label %bb.fb

bb.y:                                             ; preds = %bb.al, %bb.af, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i154, %bb.ac, %bb.x, %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i, %bb.u
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.z:                                             ; preds = %._crit_edge
  %i.dp = load i32, ptr %6, align 8, !tbaa !120   ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !126
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !91 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i151

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i151: ; preds = %bb.aa
  %i.dx = load i32, ptr %i.dv, align 8, !tbaa !132
  %i.dy = icmp eq i32 %i.dx, 5
  br i1 %i.dy, label %bb.ab, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152

bb.ab:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i151
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !95
  %i.eb = icmp eq i32 %i.ea, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152

_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152: ; preds = %bb.ab, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i151, %bb.aa
  %i.ec = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i151 ], [ %i.eb, %bb.ab ], [ false, %bb.aa ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i153, label %bb.ac, label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i154

bb.ac:                                            ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %.noexc156 unwind label %bb.y

.noexc156:                                        ; preds = %bb.ac
  %.pre.i.i.i.i.i155 = load ptr, ptr %i.ed, align 8, !tbaa !113
  br label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i154

_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i154: ; preds = %.noexc156, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152
  %i.ef = phi ptr [ %.pre.i.i.i.i.i155, %.noexc156 ], [ %i.ee, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i.i152 ]
  %i.eg = invoke noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext %i.ec)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit158 unwind label %bb.y ; 3 uses

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit158: ; preds = %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit.i154
  %.not.i159 = icmp eq ptr %i.eg, null
  br i1 %.not.i159, label %bb.ad, label %_ZN11ast_manager7inc_refEP3ast.exit.i160

_ZN11ast_manager7inc_refEP3ast.exit.i160:         ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit158
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !99
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !99
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i160, %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational.exit158
  %i.ek = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i4.i161 = icmp eq ptr %i.ek, null
  br i1 %.not.i4.i161, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit163, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !102, !nonnull !39, !align !40
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !99
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !99
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit163

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.em, ptr noundef nonnull %i.ek)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit163 unwind label %bb.y

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit163:   ; preds = %bb.af, %bb.ad, %bb.ae
  store ptr %i.eg, ptr %3, align 8, !tbaa !101
  br label %bb.fb

bb.ag:                                            ; preds = %bb.z
  %i.er = add i32 %1, -1
  %i.es = icmp eq i32 %.0104.lcssa, %i.er
  br i1 %i.es, label %bb.ah, label %bb.bm

bb.ah:                                            ; preds = %bb.ag
  %i.et = load i8, ptr %i.aq, align 4
  %i.eu = and i8 %i.et, 1
  %i.ev = icmp eq i8 %i.eu, 0
  %i.ew = icmp eq i32 %i.dp, 1
  %i.ex = and i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK8rational6is_oneEv.exit164, label %_ZNK8rational6is_oneEv.exit164.thread

_ZNK8rational6is_oneEv.exit164:                   ; preds = %bb.ah
  %i.ey = load i8, ptr %i.av, align 4
  %i.ez = and i8 %i.ey, 1
  %i.fa = icmp eq i8 %i.ez, 0
  %i.fb = load i32, ptr %i.au, align 8
  %i.fc = icmp eq i32 %i.fb, 1
  %i.fd = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %i.fd, label %bb.ai, label %_ZNK8rational6is_oneEv.exit164.thread

bb.ai:                                            ; preds = %_ZNK8rational6is_oneEv.exit164
  %.not.i165 = icmp eq ptr %.0100.lcssa, null
  br i1 %.not.i165, label %bb.aj, label %_ZN11ast_manager7inc_refEP3ast.exit.i166

_ZN11ast_manager7inc_refEP3ast.exit.i166:         ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %.0100.lcssa, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !99
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !99
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i166, %bb.ai
  %i.fh = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i4.i167 = icmp eq ptr %i.fh, null
  br i1 %.not.i4.i167, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit169, label %bb.ak
end_hunk_2
begin_hunk_3_@_ZN13poly_rewriterI19arith_rewriter_coreE17mk_nflat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE:bb.a
bb.az:                                            ; preds = %bb.bg, %._crit_edge412
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ba:                                            ; preds = %.lr.ph411, %bb.be
  %indvars.iv439 = phi i64 [ 0, %.lr.ph411 ], [ %indvars.iv.next440, %bb.be ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv439
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !97
  %i.hq = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appERK8rationalP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.hp)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.hr = load i32, ptr %i.hf, align 8, !tbaa !111 ; 2 uses
  %i.hs = load i32, ptr %i.hg, align 4, !tbaa !112 ; 2 uses
  %.not.i173 = icmp ult i32 %i.hr, %i.hs
  br i1 %.not.i173, label %._crit_edge.i, label %bb.bc

._crit_edge.i:                                    ; preds = %bb.bb
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !110
  br label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ht = shl i32 %i.hs, 1                        ; 2 uses
  %i.hu = zext i32 %i.ht to i64
  %i.hv = shl nuw nsw i64 %i.hu, 3
  %i.hw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hv)
          to label %.noexc174 unwind label %bb.bf ; 9 uses

.noexc174:                                        ; preds = %bb.bc
  %i.hx = load i32, ptr %i.hf, align 8, !tbaa !111 ; 4 uses
  %.not.i.i = icmp eq i32 %i.hx, 0
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !110 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc174
  %.pre.i.i664 = ptrtoaddr ptr %.pre.i.i to i64
  %i.hy = ptrtoaddr ptr %i.hw to i64
  %wide.trip.count.i.i = zext i32 %i.hx to i64    ; 5 uses
  %min.iters.check667 = icmp ult i32 %i.hx, 4
  %i.hz = sub i64 %.pre.i.i664, %i.hy
  %diff.check665 = icmp ugt i64 %i.hz, -32
  %or.cond = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond, label %scalar.ph666.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %.lr.ph.i.i
  %n.vec669 = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph668
  %index671 = phi i64 [ 0, %vector.ph668 ], [ %index.next674, %vector.body670 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index671 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index671 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load672 = load <2 x ptr>, ptr %i.ib, align 8, !tbaa !97
  %wide.load673 = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <2 x ptr> %wide.load672, ptr %i.ia, align 8, !tbaa !97
  store <2 x ptr> %wide.load673, ptr %i.id, align 8, !tbaa !97
  %index.next674 = add nuw i64 %index671, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next674, %n.vec669
  br i1 %i.ie, label %middle.block675, label %vector.body670, !llvm.loop !686

middle.block675:                                  ; preds = %vector.body670
  %cmp.n676 = icmp eq i64 %n.vec669, %wide.trip.count.i.i
  br i1 %cmp.n676, label %._crit_edge.i.i, label %scalar.ph666.preheader

scalar.ph666.preheader:                           ; preds = %.lr.ph.i.i, %middle.block675
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec669, %middle.block675 ] ; 3 uses
  %xtraiter717 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %scalar.ph666.prol.loopexit, label %scalar.ph666.prol

scalar.ph666.prol:                                ; preds = %scalar.ph666.preheader, %scalar.ph666.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph666.prol ], [ %indvars.iv.i.i.ph, %scalar.ph666.preheader ] ; 3 uses
  %prol.iter719 = phi i64 [ %prol.iter719.next, %scalar.ph666.prol ], [ 0, %scalar.ph666.preheader ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i.i.prol
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !97
  store ptr %i.ih, ptr %i.if, align 8, !tbaa !97
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter719.next = add i64 %prol.iter719, 1   ; 2 uses
  %prol.iter719.cmp.not = icmp eq i64 %prol.iter719.next, %xtraiter717
  br i1 %prol.iter719.cmp.not, label %scalar.ph666.prol.loopexit, label %scalar.ph666.prol, !llvm.loop !687

scalar.ph666.prol.loopexit:                       ; preds = %scalar.ph666.prol, %scalar.ph666.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph666.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph666.prol ]
  %i.ii = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %._crit_edge.i.i, label %scalar.ph666

._crit_edge.i.i:                                  ; preds = %scalar.ph666.prol.loopexit, %scalar.ph666, %middle.block675, %.noexc174
  %.not.i.i.i = icmp eq ptr %.pre.i.i, %i.he
  %i.ik = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ik
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc175 unwind label %bb.bf

.noexc175:                                        ; preds = %bb.bd
  %.pre2.pre.i = load i32, ptr %i.hf, align 8, !tbaa !111
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph666:                                     ; preds = %scalar.ph666.prol.loopexit, %scalar.ph666
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph666 ], [ %indvars.iv.i.i.unr, %scalar.ph666.prol.loopexit ] ; 6 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i.i
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !97
  store ptr %i.in, ptr %i.il, align 8, !tbaa !97
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !97
  store ptr %i.iq, ptr %i.io, align 8, !tbaa !97
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.1
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !97
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !97
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.2
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !97
  store ptr %i.iw, ptr %i.iu, align 8, !tbaa !97
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph666, !llvm.loop !688

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc175, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.hx, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc175 ]
  store ptr %i.hw, ptr %8, align 8, !tbaa !110
  store i32 %i.ht, ptr %i.hg, align 4, !tbaa !112
  br label %bb.be

bb.be:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.ix = phi i32 [ %i.hr, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.iy = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.hw, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iz
  store ptr %i.hq, ptr %i.ja, align 8, !tbaa !97
  %i.jb = add i32 %i.ix, 1                        ; 2 uses
  store i32 %i.jb, ptr %i.hf, align 8, !tbaa !111
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %._crit_edge412, label %bb.ba, !llvm.loop !689

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %._crit_edge412
  %i.jd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.hm)
          to label %bb.bh unwind label %bb.az     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.az
  %.pn136 = phi { ptr, i32 } [ %i.jc, %bb.bf ], [ %i.hn, %bb.az ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bl

bb.bj:                                            ; preds = %bb.ax, %bb.av, %bb.an, %bb.ap, %bb.as, %bb.bh
  %.090 = phi i32 [ 1, %bb.bh ], [ 0, %bb.as ], [ 5, %bb.an ], [ 5, %bb.av ], [ 5, %bb.ap ], [ 4, %bb.ax ]
  %i.je = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i unwind label %bb.bk

.noexc.i:                                         ; preds = %bb.bj
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %.noexc.i, %bb.bj
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #24
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.fb

bb.bl:                                            ; preds = %bb.bi, %bb.at
  %.pn138 = phi { ptr, i32 } [ %i.gx, %bb.at ], [ %.pn136, %bb.bi ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.fd

bb.bm:                                            ; preds = %bb.ag
  %i.jh = icmp ugt i32 %.0104.lcssa, 1
  br i1 %i.jh, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ji = icmp eq i32 %.0104.lcssa, 0             ; 3 uses
  br i1 %i.ji, label %bb.cf, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jj = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = and i32 %i.jl, 65535
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bp, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !137
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit: ; preds = %bb.bp
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !132
  %i.jt = icmp eq i32 %i.js, 5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = select i1 %i.jt, i1 %i.jw, i1 false
  br i1 %i.jx, label %bb.cf, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread: ; preds = %bb.bp, %bb.bo, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.jy, ptr %9, align 8, !tbaa !110
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.jz, align 8, !tbaa !111
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 16, ptr %i.ka, align 4, !tbaa !112
  br i1 %.not413, label %._crit_edge408, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread
  %wide.trip.count437 = zext i32 %1 to i64
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.bu, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread
  %i.kb = phi ptr [ %i.jy, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread ], [ %.pre.i193453, %bb.bu ]
  %i.kc = phi i32 [ 0, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit.thread ], [ %i.mi, %bb.bu ]
  %i.kd = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.kc, ptr noundef %i.kb)
          to label %bb.bv unwind label %bb.cd

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.bu
  %.pre.i193 = phi ptr [ %i.jy, %.lr.ph407.preheader ], [ %.pre.i193453, %bb.bu ] ; 2 uses
  %i.ke = phi i32 [ 16, %.lr.ph407.preheader ], [ %i.mh, %bb.bu ] ; 4 uses
  %i.kf = phi i32 [ 0, %.lr.ph407.preheader ], [ %i.mi, %bb.bu ] ; 3 uses
  %indvars.iv434 = phi i64 [ 0, %.lr.ph407.preheader ], [ %indvars.iv.next435, %bb.bu ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv434 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !97 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = and i32 %i.kj, 65535
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.bq, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread

bb.bq:                                            ; preds = %.lr.ph407
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !137
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i.i176 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i.i.i176, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177: ; preds = %bb.bq
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !132
  %i.kr = icmp eq i32 %i.kq, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = icmp eq i32 %i.kt, 0
  %i.kv = select i1 %i.kr, i1 %i.ku, i1 false
  br i1 %i.kv, label %bb.bu, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread: ; preds = %bb.bq, %.lr.ph407, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177
  %.not.i178 = icmp ult i32 %i.kf, %i.ke
  br i1 %.not.i178, label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit, label %bb.br

bb.br:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread
  %i.kw = shl i32 %i.ke, 1                        ; 3 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3
  %i.kz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ky)
          to label %.noexc194 unwind label %bb.bt ; 9 uses

.noexc194:                                        ; preds = %bb.br
  %i.la = load i32, ptr %i.jz, align 8, !tbaa !111 ; 4 uses
  %.not.i.i179 = icmp eq i32 %i.la, 0
  %.pre.i.i180 = load ptr, ptr %9, align 8, !tbaa !110 ; 10 uses
  br i1 %.not.i.i179, label %._crit_edge.i.i186, label %.lr.ph.i.i181

.lr.ph.i.i181:                                    ; preds = %.noexc194
  %.pre.i.i180649 = ptrtoaddr ptr %.pre.i.i180 to i64
  %i.lb = ptrtoaddr ptr %i.kz to i64
  %wide.trip.count.i.i182 = zext i32 %i.la to i64 ; 5 uses
  %min.iters.check652 = icmp ult i32 %i.la, 4
  %i.lc = sub i64 %.pre.i.i180649, %i.lb
  %diff.check650 = icmp ugt i64 %i.lc, -32
  %or.cond678 = select i1 %min.iters.check652, i1 true, i1 %diff.check650
  br i1 %or.cond678, label %scalar.ph651.preheader, label %vector.ph653

vector.ph653:                                     ; preds = %.lr.ph.i.i181
  %n.vec654 = and i64 %wide.trip.count.i.i182, 4294967292 ; 3 uses
  br label %vector.body655

vector.body655:                                   ; preds = %vector.body655, %vector.ph653
  %index656 = phi i64 [ 0, %vector.ph653 ], [ %index.next659, %vector.body655 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %index656 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %index656 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load657 = load <2 x ptr>, ptr %i.le, align 8, !tbaa !97
  %wide.load658 = load <2 x ptr>, ptr %i.lf, align 8, !tbaa !97
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <2 x ptr> %wide.load657, ptr %i.ld, align 8, !tbaa !97
  store <2 x ptr> %wide.load658, ptr %i.lg, align 8, !tbaa !97
  %index.next659 = add nuw i64 %index656, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next659, %n.vec654
  br i1 %i.lh, label %middle.block660, label %vector.body655, !llvm.loop !690

middle.block660:                                  ; preds = %vector.body655
  %cmp.n661 = icmp eq i64 %n.vec654, %wide.trip.count.i.i182
  br i1 %cmp.n661, label %._crit_edge.i.i186, label %scalar.ph651.preheader

scalar.ph651.preheader:                           ; preds = %.lr.ph.i.i181, %middle.block660
  %indvars.iv.i.i183.ph = phi i64 [ 0, %.lr.ph.i.i181 ], [ %n.vec654, %middle.block660 ] ; 3 uses
  %xtraiter714 = and i64 %wide.trip.count.i.i182, 3 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol

scalar.ph651.prol:                                ; preds = %scalar.ph651.preheader, %scalar.ph651.prol
  %indvars.iv.i.i183.prol = phi i64 [ %indvars.iv.next.i.i184.prol, %scalar.ph651.prol ], [ %indvars.iv.i.i183.ph, %scalar.ph651.preheader ] ; 3 uses
  %prol.iter716 = phi i64 [ %prol.iter716.next, %scalar.ph651.prol ], [ 0, %scalar.ph651.preheader ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i.i183.prol
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %indvars.iv.i.i183.prol
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !97
  store ptr %i.lk, ptr %i.li, align 8, !tbaa !97
  %indvars.iv.next.i.i184.prol = add nuw nsw i64 %indvars.iv.i.i183.prol, 1 ; 2 uses
  %prol.iter716.next = add i64 %prol.iter716, 1   ; 2 uses
  %prol.iter716.cmp.not = icmp eq i64 %prol.iter716.next, %xtraiter714
  br i1 %prol.iter716.cmp.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol, !llvm.loop !691

scalar.ph651.prol.loopexit:                       ; preds = %scalar.ph651.prol, %scalar.ph651.preheader
  %indvars.iv.i.i183.unr = phi i64 [ %indvars.iv.i.i183.ph, %scalar.ph651.preheader ], [ %indvars.iv.next.i.i184.prol, %scalar.ph651.prol ]
  %i.ll = sub nsw i64 %indvars.iv.i.i183.ph, %wide.trip.count.i.i182
  %i.lm = icmp ugt i64 %i.ll, -4
  br i1 %i.lm, label %._crit_edge.i.i186, label %scalar.ph651

._crit_edge.i.i186:                               ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651, %middle.block660, %.noexc194
  %.not.i.i.i187 = icmp eq ptr %.pre.i.i180, %i.jy
  %i.ln = icmp eq ptr %.pre.i.i180, null
  %or.cond.i.i.i188 = or i1 %.not.i.i.i187, %i.ln
  br i1 %or.cond.i.i.i188, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i180)
          to label %.noexc195 unwind label %bb.bt

.noexc195:                                        ; preds = %bb.bs
  %.pre2.pre.i189 = load i32, ptr %i.jz, align 8, !tbaa !111
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190

scalar.ph651:                                     ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651
  %indvars.iv.i.i183 = phi i64 [ %indvars.iv.next.i.i184.3, %scalar.ph651 ], [ %indvars.iv.i.i183.unr, %scalar.ph651.prol.loopexit ] ; 6 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i.i183
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %indvars.iv.i.i183
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !97
  store ptr %i.lq, ptr %i.lo, align 8, !tbaa !97
  %indvars.iv.next.i.i184 = add nuw nsw i64 %indvars.iv.i.i183, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i184
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %indvars.iv.next.i.i184
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !97
  store ptr %i.lt, ptr %i.lr, align 8, !tbaa !97
  %indvars.iv.next.i.i184.1 = add nuw nsw i64 %indvars.iv.i.i183, 2 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i184.1
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %indvars.iv.next.i.i184.1
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !97
  store ptr %i.lw, ptr %i.lu, align 8, !tbaa !97
  %indvars.iv.next.i.i184.2 = add nuw nsw i64 %indvars.iv.i.i183, 3 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i184.2
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i180, i64 %indvars.iv.next.i.i184.2
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !97
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !97
  %indvars.iv.next.i.i184.3 = add nuw nsw i64 %indvars.iv.i.i183, 4 ; 2 uses
  %exitcond.not.i.i185.3 = icmp eq i64 %indvars.iv.next.i.i184.3, %wide.trip.count.i.i182
  br i1 %exitcond.not.i.i185.3, label %._crit_edge.i.i186, label %scalar.ph651, !llvm.loop !692

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190:   ; preds = %.noexc195, %._crit_edge.i.i186
  %.pre2.i191 = phi i32 [ %i.la, %._crit_edge.i.i186 ], [ %.pre2.pre.i189, %.noexc195 ]
  store ptr %i.kz, ptr %9, align 8, !tbaa !110
  store i32 %i.kw, ptr %i.ka, align 4, !tbaa !112
  %.pre455 = load ptr, ptr %i.kg, align 8, !tbaa !97
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit: ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190
  %i.ma = phi ptr [ %.pre455, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190 ], [ %i.kh, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread ]
  %.pre.i193454 = phi ptr [ %i.kz, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190 ], [ %.pre.i193, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread ] ; 2 uses
  %i.mb = phi i32 [ %i.kw, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190 ], [ %i.ke, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread ]
  %i.mc = phi i32 [ %.pre2.i191, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i190 ], [ %i.kf, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177.thread ] ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.pre.i193454, i64 %i.md
  store ptr %i.ma, ptr %i.me, align 8, !tbaa !97
  %i.mf = add i32 %i.mc, 1                        ; 2 uses
  store i32 %i.mf, ptr %i.jz, align 8, !tbaa !111
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bu:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177
  %.pre.i193453 = phi ptr [ %.pre.i193454, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit ], [ %.pre.i193, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177 ] ; 2 uses
  %i.mh = phi i32 [ %i.mb, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit ], [ %i.ke, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177 ]
  %i.mi = phi i32 [ %i.mf, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit ], [ %i.kf, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit177 ] ; 2 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !693

bb.bv:                                            ; preds = %._crit_edge408
  %i.mj = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appERK8rationalP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.kd)
          to label %bb.bw unwind label %bb.cd     ; 3 uses

bb.bw:                                            ; preds = %bb.bv
  %.not.i196 = icmp eq ptr %i.mj, null
  br i1 %.not.i196, label %bb.bx, label %_ZN11ast_manager7inc_refEP3ast.exit.i197

_ZN11ast_manager7inc_refEP3ast.exit.i197:         ; preds = %bb.bw
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !99
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !99
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i197, %bb.bw
  %i.mn = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i4.i198 = icmp eq ptr %i.mn, null
  br i1 %.not.i4.i198, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !102, !nonnull !39, !align !40
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !99
  %i.ms = add i32 %i.mr, -1                       ; 2 uses
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !99
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.mp, ptr noundef nonnull %i.mn)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bz
  store ptr %i.mj, ptr %3, align 8, !tbaa !101
  %i.mu = load ptr, ptr %9, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i201 = icmp eq ptr %i.mu, %i.jy
  %i.mv = icmp eq ptr %i.mu, null
  %or.cond.i.i.i202 = or i1 %.not.i.i.i201, %i.mv
  br i1 %or.cond.i.i.i202, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mu)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #24
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.fb

bb.cd:                                            ; preds = %bb.bz, %bb.bv, %._crit_edge408
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bt
  %.pn134 = phi { ptr, i32 } [ %i.mg, %bb.bt ], [ %i.my, %bb.cd ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.fd

bb.cf:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit, %bb.bn
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !82, !range !86, !noundef !39
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = icmp ne i32 %.0102.lcssa, 0
  %or.cond.not = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %or.cond.not, label %bb.dc, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.nd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.nd, ptr %10, align 8, !tbaa !110
  %i.ne = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i32 0, ptr %i.ne, align 8, !tbaa !111
  %i.nf = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.nf, align 4, !tbaa !112
  br i1 %.not413, label %._crit_edge396.thread, label %.lr.ph395.preheader

.lr.ph395.preheader:                              ; preds = %bb.cg
  %wide.trip.count422 = zext i32 %1 to i64
  br label %.lr.ph395

._crit_edge396:                                   ; preds = %bb.cq
  %or.cond3 = and i1 %i.ji, %.294
  br i1 %or.cond3, label %bb.cr, label %bb.ct

._crit_edge396.thread:                            ; preds = %bb.cg
  br i1 %i.ji, label %bb.cr, label %.thread379

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %bb.cq
  %i.ng = phi ptr [ %i.nd, %.lr.ph395.preheader ], [ %i.pu, %bb.cq ]
  %i.nh = phi i32 [ 16, %.lr.ph395.preheader ], [ %i.pv, %bb.cq ] ; 2 uses
  %i.ni = phi i32 [ 0, %.lr.ph395.preheader ], [ %i.pw, %bb.cq ] ; 2 uses
  %indvars.iv420 = phi i64 [ 0, %.lr.ph395.preheader ], [ %indvars.iv.next421, %bb.cq ] ; 2 uses
  %.092392 = phi i1 [ true, %.lr.ph395.preheader ], [ %.294, %bb.cq ] ; 3 uses
  %.095391 = phi ptr [ null, %.lr.ph395.preheader ], [ %.196, %bb.cq ] ; 4 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv420
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !97 ; 6 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = and i32 %i.nm, 65535
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.ch, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread

bb.ch:                                            ; preds = %.lr.ph395
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !137
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i.i203 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i.i.i.i203, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204: ; preds = %bb.ch
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !132
  %i.nu = icmp eq i32 %i.nt, 5
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.nw = load i32, ptr %i.nv, align 4
  %i.nx = icmp eq i32 %i.nw, 0
  %i.ny = select i1 %i.nu, i1 %i.nx, i1 false
  br i1 %i.ny, label %bb.cq, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread

bb.ci:                                            ; preds = %bb.co, %bb.cn, %.noexc206, %bb.cl, %bb.ck
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread: ; preds = %bb.ch, %.lr.ph395, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204
  %.not = icmp eq ptr %.095391, null
  br i1 %.not, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread
  %i.oa = load ptr, ptr %4, align 8, !tbaa !245, !nonnull !39, !align !40
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 82
  %i.oc = load i8, ptr %i.ob, align 2, !tbaa !87, !range !86, !noundef !39
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.oe = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.nk, ptr noundef nonnull %.095391)
          to label %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit unwind label %bb.ci

bb.cl:                                            ; preds = %bb.cj
  %i.of = invoke noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_lt7ordinalEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.nk)
          to label %.noexc206 unwind label %bb.ci

.noexc206:                                        ; preds = %bb.cl
  %i.og = invoke noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_lt7ordinalEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.095391)
          to label %.noexc207 unwind label %bb.ci

.noexc207:                                        ; preds = %.noexc206
  %i.oh = icmp slt i32 %i.of, %i.og
  br label %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit: ; preds = %.noexc207, %bb.ck
  %.0.i = phi i1 [ %i.oh, %.noexc207 ], [ %i.oe, %bb.ck ]
  %not..0.i = xor i1 %.0.i, true
  %spec.select144 = select i1 %not..0.i, i1 %.092392, i1 false
  %.pre = load i32, ptr %i.ne, align 8, !tbaa !111
  %.pre444 = load i32, ptr %i.nf, align 4, !tbaa !112
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread
  %i.oi = phi i32 [ %i.nh, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %.pre444, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ] ; 3 uses
  %i.oj = phi i32 [ %i.ni, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %.pre, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ] ; 2 uses
  %.193 = phi i1 [ %.092392, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %spec.select144, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ]
  %.not.i208 = icmp ult i32 %i.oj, %i.oi
  br i1 %.not.i208, label %._crit_edge.i222, label %bb.cn

._crit_edge.i222:                                 ; preds = %bb.cm
  %.pre.i223 = load ptr, ptr %10, align 8, !tbaa !110
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ok = shl i32 %i.oi, 1                        ; 3 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = shl nuw nsw i64 %i.ol, 3
  %i.on = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.om)
          to label %.noexc224 unwind label %bb.ci ; 9 uses

.noexc224:                                        ; preds = %bb.cn
  %i.oo = load i32, ptr %i.ne, align 8, !tbaa !111 ; 4 uses
  %.not.i.i209 = icmp eq i32 %i.oo, 0
  %.pre.i.i210 = load ptr, ptr %10, align 8, !tbaa !110 ; 10 uses
  br i1 %.not.i.i209, label %._crit_edge.i.i216, label %.lr.ph.i.i211

.lr.ph.i.i211:                                    ; preds = %.noexc224
  %.pre.i.i210541 = ptrtoaddr ptr %.pre.i.i210 to i64
  %i.op = ptrtoaddr ptr %i.on to i64
  %wide.trip.count.i.i212 = zext i32 %i.oo to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.oo, 4
  %i.oq = sub i64 %.pre.i.i210541, %i.op
  %diff.check = icmp ugt i64 %i.oq, -32
  %or.cond679 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond679, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i211
  %n.vec = and i64 %wide.trip.count.i.i212, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %index ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %index ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load = load <2 x ptr>, ptr %i.os, align 8, !tbaa !97
  %wide.load542 = load <2 x ptr>, ptr %i.ot, align 8, !tbaa !97
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store <2 x ptr> %wide.load, ptr %i.or, align 8, !tbaa !97
  store <2 x ptr> %wide.load542, ptr %i.ou, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i212
  br i1 %cmp.n, label %._crit_edge.i.i216, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i211, %middle.block
  %indvars.iv.i.i213.ph = phi i64 [ 0, %.lr.ph.i.i211 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i212, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i213.prol = phi i64 [ %indvars.iv.next.i.i214.prol, %scalar.ph.prol ], [ %indvars.iv.i.i213.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.i.i213.prol
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.i.i213.prol
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !97
  store ptr %i.oy, ptr %i.ow, align 8, !tbaa !97
  %indvars.iv.next.i.i214.prol = add nuw nsw i64 %indvars.iv.i.i213.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !695

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i213.unr = phi i64 [ %indvars.iv.i.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i214.prol, %scalar.ph.prol ]
  %i.oz = sub nsw i64 %indvars.iv.i.i213.ph, %wide.trip.count.i.i212
  %i.pa = icmp ugt i64 %i.oz, -4
  br i1 %i.pa, label %._crit_edge.i.i216, label %scalar.ph

._crit_edge.i.i216:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc224
  %.not.i.i.i217 = icmp eq ptr %.pre.i.i210, %i.nd
  %i.pb = icmp eq ptr %.pre.i.i210, null
  %or.cond.i.i.i218 = or i1 %.not.i.i.i217, %i.pb
  br i1 %or.cond.i.i.i218, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i.i216
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i210)
          to label %.noexc225 unwind label %bb.ci

.noexc225:                                        ; preds = %bb.co
  %.pre2.pre.i219 = load i32, ptr %i.ne, align 8, !tbaa !111
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i213 = phi i64 [ %indvars.iv.next.i.i214.3, %scalar.ph ], [ %indvars.iv.i.i213.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.i.i213
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.i.i213
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !97
  store ptr %i.pe, ptr %i.pc, align 8, !tbaa !97
  %indvars.iv.next.i.i214 = add nuw nsw i64 %indvars.iv.i.i213, 1 ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.next.i.i214
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !97
  store ptr %i.ph, ptr %i.pf, align 8, !tbaa !97
  %indvars.iv.next.i.i214.1 = add nuw nsw i64 %indvars.iv.i.i213, 2 ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.next.i.i214.1
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214.1
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !97
  store ptr %i.pk, ptr %i.pi, align 8, !tbaa !97
  %indvars.iv.next.i.i214.2 = add nuw nsw i64 %indvars.iv.i.i213, 3 ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.next.i.i214.2
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214.2
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !97
  store ptr %i.pn, ptr %i.pl, align 8, !tbaa !97
  %indvars.iv.next.i.i214.3 = add nuw nsw i64 %indvars.iv.i.i213, 4 ; 2 uses
  %exitcond.not.i.i215.3 = icmp eq i64 %indvars.iv.next.i.i214.3, %wide.trip.count.i.i212
  br i1 %exitcond.not.i.i215.3, label %._crit_edge.i.i216, label %scalar.ph, !llvm.loop !696

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220:   ; preds = %.noexc225, %._crit_edge.i.i216
  %.pre2.i221 = phi i32 [ %i.oo, %._crit_edge.i.i216 ], [ %.pre2.pre.i219, %.noexc225 ]
  store ptr %i.on, ptr %10, align 8, !tbaa !110
  store i32 %i.ok, ptr %i.nf, align 4, !tbaa !112
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220, %._crit_edge.i222
  %i.po = phi i32 [ %i.oi, %._crit_edge.i222 ], [ %i.ok, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220 ]
end_hunk_3

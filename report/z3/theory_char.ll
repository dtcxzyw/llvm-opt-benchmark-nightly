Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_char?download=true
inline.NumInlined: 1142
inline.NumDeleted: 686
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3smt11theory_char16internalize_termEP3app:bb.a
  %.not = icmp eq ptr %i.v, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNK3smt7context14e_internalizedEPK4expr.exit.thread: ; preds = %._crit_edge, %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3smt7context14e_internalizedEPK4expr.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105, !nonnull !100, !align !101
  %i.y = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.x, ptr noundef nonnull %1)
  %i.z = tail call noundef ptr @_ZN3smt7context8mk_enodeEP4exprbbb(ptr noundef nonnull align 8 dereferenceable(10728) %i.h, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext %i.y, i1 noundef zeroext true)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK3smt7context14e_internalizedEPK4expr.exit, %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread
  %i.aa = phi ptr [ %i.z, %_ZNK3smt7context14e_internalizedEPK4expr.exit.thread ], [ %.0.i.sroa.speculate.load..i, %_ZNK3smt7context14e_internalizedEPK4expr.exit ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !103
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.af = call noundef zeroext i1 @_ZNK8seq_util13is_const_charEP4exprRj(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.af, label %bb.c, label %_ZN3smt11theory_char14new_const_charEij.exit

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !135
  call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !134
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !136 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN3smt11theory_char14new_const_charEij.exit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %bb.c
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !135 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %_ZN3smt11theory_char14new_const_charEij.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i
  %.018.i = phi i32 [ %i.ba, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i ], [ %i.ag, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %.01417.i = phi ptr [ %i.bb, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i ], [ %i.al, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.01417.i, align 4, !tbaa !135
  %i.as = and i32 %.018.i, 1
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !146, !nonnull !100, !align !101 ; 3 uses
  %i.au = xor i32 %.sroa.02.0.copyload.i, %i.as   ; 2 uses
  %spec.select.i = xor i32 %i.au, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr inttoptr (i64 2 to ptr), ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8944
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !173
  %i.ax = zext i32 %spec.select.i to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !174
  switch i8 %i.az, label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i [
    i8 -1, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i
  call void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %i.au)
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %i.at, i32 %spec.select.i, ptr nonnull inttoptr (i64 2 to ptr), i1 noundef zeroext false)
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i

_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ba = lshr i32 %.018.i, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.ar
  br i1 %.not.i, label %_ZN3smt11theory_char14new_const_charEij.exit, label %.lr.ph.i

_ZN3smt11theory_char14new_const_charEij.exit:     ; preds = %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %bb.c, %bb.b
  %i.bc = call noundef zeroext i1 @_ZNK8seq_util11is_char2intEPK4expr(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %1)
  br i1 %i.bc, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN3smt11theory_char14new_const_charEij.exit
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !160
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !138
  call void @_ZN3smt11theory_char12new_char2intEiP4expr(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.ad, ptr noundef %i.bf)
  br label %_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread

bb.h:                                             ; preds = %bb.f, %_ZN3smt11theory_char14new_const_charEij.exit
  %i.bg = call noundef zeroext i1 @_ZNK8seq_util10is_char2bvEPK4expr(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %1)
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !160
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !138
  call void @_ZN3smt11theory_char11new_char2bvEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noundef %i.bj)
  br label %_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bk = call noundef zeroext i1 @_ZNK8seq_util10is_bv2charEPK4expr(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %1)
  br i1 %i.bk, label %bb.l, label %_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !160
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.m, label %_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !138
  call void @_ZN3smt11theory_char11new_bv2charEiP4expr(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.ad, ptr noundef %i.bn)
  br label %_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread

_ZNK8seq_util10is_bv2charEPK4exprRPS0_.exit.thread: ; preds = %bb.k, %bb.l, %bb.j, %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 true
}

declare noundef ptr @_ZN3smt7context8mk_enodeEP4exprbbb(ptr noundef nonnull align 8 dereferenceable(10728), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK8seq_util13is_const_charEP4exprRj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11theory_char14new_const_charEij(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.smt::b_justification", align 8 ; 4 uses
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !135  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit
  %.018 = phi i32 [ %2, %.lr.ph ], [ %i.u, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit ] ; 2 uses
  %.01417 = phi ptr [ %i.e, %.lr.ph ], [ %i.v, %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit ] ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %.01417, align 4, !tbaa !135
  %i.m = and i32 %.018, 1
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !146, !nonnull !100, !align !101 ; 3 uses
  %i.o = xor i32 %.sroa.02.0.copyload, %i.m       ; 2 uses
  %spec.select = xor i32 %i.o, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr inttoptr (i64 2 to ptr), ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8944
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !173
  %i.r = zext i32 %spec.select to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !174
  switch i8 %i.t, label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit [
    i8 -1, label %bb.c
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 %i.o)
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %i.n, i32 %spec.select, ptr nonnull inttoptr (i64 2 to ptr), i1 noundef zeroext false)
  br label %_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit

_ZN3smt7context6assignEN3sat7literalEPNS_13justificationEb.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.u = lshr i32 %.018, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.01417, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11theory_char12new_char2intEiP4expr(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 7 uses
  %4 = alloca %class.arith_util, align 8          ; 7 uses
  %5 = alloca %class.obj_ref, align 8             ; 10 uses
  %6 = alloca %"class.smt::ext_theory_eq_propagation_justification", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8720
  %i.d = load i32, ptr %2, align 4, !tbaa !170
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144
  %i.k = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %i.h, i32 noundef %i.j) ; 3 uses
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.k)
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105, !nonnull !100, !align !101 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %3, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store ptr null, ptr %i.q, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(952) %i.o)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.k to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !123  ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !135  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %.not56 = icmp eq i32 %i.x, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !123 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ab = icmp eq ptr %.pre, null
  br i1 %i.ab, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %._crit_edge.thread, %._crit_edge
  %i.ac = phi ptr [ %i.bh, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !135 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.c, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !138 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 65535
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i

_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit.thread: ; preds = %bb.c
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !105, !nonnull !100, !align !101
  store ptr %i.ag, ptr %5, align 8, !tbaa !171
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !106
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i: ; preds = %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %._crit_edge
  %i.an = phi ptr [ %i.ac, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ], [ %i.ac, %bb.c ], [ null, %._crit_edge ]
  %.0.i.i4.i = phi i32 [ %i.ae, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i ], [ 1, %bb.c ], [ 0, %._crit_edge ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !659, !nonnull !100, !align !101
  %i.ap = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ao, i32 noundef 5, i32 noundef 6, i32 noundef %.0.i.i4.i, ptr noundef %i.an)
          to label %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit unwind label %bb.z ; 3 uses

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.i
  %.058 = phi ptr [ %i.bn, %bb.i ], [ %i.u, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %.02957 = phi i32 [ %i.bm, %bb.i ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.058, align 8, !tbaa !138
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !105, !nonnull !100, !align !101
  %i.as = shl nuw i32 1, %.02957
  %i.at = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.as)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  %i.au = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.av = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, i32 noundef 0, i32 noundef 4, ptr noundef %i.aq, ptr noundef %i.at, ptr noundef %i.au)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit:        ; preds = %bb.e
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !141
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.f, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !123 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !135 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !135
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %.noexc40, %bb.g
  %i.bg = phi i32 [ %.pre2.i.i, %.noexc40 ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i.i, %.noexc40 ], [ %i.az, %bb.g ] ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %i.av, ptr %i.bk, align 8, !tbaa !138
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !135
  %i.bm = add nuw i32 %.02957, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.058, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.aa
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.e, %bb.d, %.lr.ph, %bb.a
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !105, !nonnull !100, !align !101
  store ptr %i.ap, ptr %5, align 8, !tbaa !171
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit.thread, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit
  %i.bq = phi ptr [ %i.am, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit.thread ], [ %i.bp, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit ]
  %i.br = phi ptr [ %i.ag, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit.thread ], [ %i.ap, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !141
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !141
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit
  %i.bv = phi ptr [ %i.bp, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit ], [ %i.bq, %_ZN11ast_manager7inc_refEP3ast.exit.i.i ]
  %i.bw = phi ptr [ null, %_ZNK10arith_util6mk_addERK10ref_vectorI4expr11ast_managerE.exit ], [ %i.br, %_ZN11ast_manager7inc_refEP3ast.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !143
  %i.bz = zext i32 %1 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !145 ; 3 uses
  %i.cc = invoke noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %i.bw)
          to label %bb.j unwind label %bb.ac      ; 3 uses

bb.j:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !146, !nonnull !100, !align !101 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !144
  invoke void @_ZN3smt24ext_simple_justificationC2ERNS_7contextEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_E(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10728) %i.cd, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
          to label %.noexc41 unwind label %bb.aa

.noexc41:                                         ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !180
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 16), ptr %6, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.cb, ptr %i.ch, align 8, !tbaa !183
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.cc, ptr %i.ci, align 8, !tbaa !184
  invoke void @_ZN3smt39ext_theory_eq_propagation_justification3logERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10728) %i.cd)
          to label %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit unwind label %7

7:                                                ; preds = %.noexc41
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt31ext_theory_simple_justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %6) #18
  br label %.body

_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit: ; preds = %.noexc41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  %i.ck = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i64 noundef 72)
          to label %.noexc46 unwind label %bb.ab  ; 14 uses

.noexc46:                                         ; preds = %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt13justificationE, i64 16), ptr %i.ck, align 8, !tbaa !103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cn = load i8, ptr %i.cm, align 8
  store i8 %i.cn, ptr %i.cl, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt20simple_justificationE, i64 16), ptr %i.ck, align 8, !tbaa !103
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt24ext_simple_justificationE, i64 16), ptr %i.ck, align 8, !tbaa !103
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt31ext_theory_simple_justificationE, i64 16), ptr %i.ck, align 8, !tbaa !103
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !180
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !180
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  store ptr null, ptr %i.cu, align 8, !tbaa !181
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !181
  %.not.i.i.i.i42 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i42, label %.noexc47, label %bb.k

bb.k:                                             ; preds = %.noexc46
  invoke void @_ZN6vectorI9parameterLb1EjE9copy_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %.noexc47 unwind label %bb.ab

.noexc47:                                         ; preds = %bb.k, %.noexc46
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 16), ptr %i.ck, align 8, !tbaa !103
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %i.cx = load ptr, ptr getelementptr inbounds nuw inrange(-32, 56) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 32), align 8
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(9) %i.ck)
          to label %.noexc48 unwind label %bb.ab, !inline_history !3

.noexc48:                                         ; preds = %.noexc47
  br i1 %i.cy, label %bb.l, label %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit

bb.l:                                             ; preds = %.noexc48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 8624 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !185 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !135 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !135
  %i.dg = icmp eq i32 %i.dd, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN6vectorIPN3smt13justificationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %bb.n
  %.pre.i.i43 = load ptr, ptr %i.cz, align 8, !tbaa !185 ; 2 uses
  %.phi.trans.insert.i.i44 = getelementptr inbounds i8, ptr %.pre.i.i43, i64 -4
  %.pre2.i.i45 = load i32, ptr %.phi.trans.insert.i.i44, align 4, !tbaa !135
  br label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i: ; preds = %.noexc49, %bb.m
  %i.dh = phi i32 [ %.pre2.i.i45, %.noexc49 ], [ %i.dd, %bb.m ] ; 2 uses
  %i.di = phi ptr [ %.pre.i.i43, %.noexc49 ], [ %i.da, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dk = zext i32 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dk
  store ptr %i.ck, ptr %i.dl, align 8, !tbaa !187
  %i.dm = add i32 %i.dh, 1
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !135
  br label %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit

_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit: ; preds = %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i, %.noexc48
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt31ext_theory_simple_justificationE, i64 16), ptr %6, align 8, !tbaa !103
  %i.dn = load ptr, ptr %i.cg, align 8, !tbaa !181 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %_ZN3smt31ext_theory_simple_justificationD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !135 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.dr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dp, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dn, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #18, !inline_history !188
  %i.dq = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.dr = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !181
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.ds = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.dn, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dt)
          to label %_ZN3smt31ext_theory_simple_justificationD2Ev.exit unwind label %bb.o, !inline_history !188

bb.o:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #19, !inline_history !188
  unreachable

_ZN3smt31ext_theory_simple_justificationD2Ev.exit: ; preds = %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.dw = ptrtoint ptr %i.ck to i64
  %i.dx = or i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !189
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !189
  %.not.i.i50 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i.i50, label %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3smt31ext_theory_simple_justificationD2Ev.exit
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8856 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !190 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !135 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !135
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.r, label %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN6vectorIN3smt7context6new_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %.noexc52 unwind label %bb.ac

.noexc52:                                         ; preds = %bb.r
  %.pre.i.i.i51 = load ptr, ptr %i.ed, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i51, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !135
  br label %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i

_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i: ; preds = %.noexc52, %bb.q
  %i.el = phi i32 [ %.pre2.i.i.i, %.noexc52 ], [ %i.eh, %bb.q ]
  %i.em = phi ptr [ %.pre.i.i.i51, %.noexc52 ], [ %i.ee, %bb.q ]
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.en ; 3 uses
  store ptr %i.cb, ptr %i.eo, align 8, !tbaa !145
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %i.dx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !191
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !190
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !135
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !135
  br label %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit

_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit: ; preds = %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i, %_ZN3smt31ext_theory_simple_justificationD2Ev.exit
  %i.et = load ptr, ptr %5, align 8, !tbaa !171   ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.et, null
  br i1 %.not.i.i53, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit
  %i.eu = load ptr, ptr %i.bv, align 8, !tbaa !172, !nonnull !100, !align !101
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !141
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !141
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.t, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.eu, ptr noundef nonnull %i.et)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.fb = load ptr, ptr %i.q, align 8, !tbaa !123 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !135 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fg
  %.not.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.fb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fi = load ptr, ptr %.06.i.i, align 8, !tbaa !138 ; 3 uses
  %i.fj = load ptr, ptr %3, align 8, !tbaa !139, !nonnull !100, !align !101
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !141
  %i.fm = add i32 %i.fl, -1                       ; 2 uses
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !141
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fj, ptr noundef nonnull %i.fi)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.y

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.fp = icmp ult ptr %i.fo, %i.fh
  br i1 %i.fp, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i54, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.fq = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.fb, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fr)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #19
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.z:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %bb.j
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.n, %.noexc47, %bb.k, %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt31ext_theory_simple_justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #18
  br label %.body

.body:                                            ; preds = %bb.aa, %7, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.ab ], [ %i.fx, %bb.aa ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %bb.r
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.ac
  %.pn31.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.fz, %bb.ac ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.ad ], [ %i.fw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.ae ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn35.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11theory_char11new_char2bvEP4exprS2_(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.parameter, align 8           ; 8 uses
  %4 = alloca %class.bv_util, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8720
  %i.e = load i32, ptr %2, align 4, !tbaa !170
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !144
  %i.l = tail call noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112) %i.i, i32 noundef %i.k) ; 3 uses
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.l)
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105, !nonnull !100, !align !101
  call void @_ZN7bv_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(952) %i.r)
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !136  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !135  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7bv_util11mk_bit2boolEP4exprj.exit, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7bv_util11mk_bit2boolEP4exprj.exit
  %.024 = phi i32 [ 0, %.lr.ph ], [ %i.af, %_ZN7bv_util11mk_bit2boolEP4exprj.exit ] ; 2 uses
  %.02123 = phi ptr [ %i.s, %.lr.ph ], [ %i.an, %_ZN7bv_util11mk_bit2boolEP4exprj.exit ] ; 2 uses
  %.sroa.08.0.copyload = load i32, ptr %.02123, align 4, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 %.024, ptr %3, align 8, !tbaa !193
  store i8 0, ptr %i.z, align 8, !tbaa !195
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !196, !nonnull !100, !align !101
  %i.ac = load i32, ptr %4, align 8, !tbaa !197
  %i.ad = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.ab, i32 noundef %i.ac, i32 noundef 63, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null)
          to label %_ZN7bv_util11mk_bit2boolEP4exprj.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.ae

_ZN7bv_util11mk_bit2boolEP4exprj.exit:            ; preds = %bb.b
  %i.af = add nuw i32 %.024, 1
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = call i32 @_ZN3smt6theory10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %i.ad) ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !144
  %i.aj = xor i32 %.sroa.08.0.copyload, 1
  call void @_ZN3smt7context11mk_th_axiomEiN3sat7literalES2_jP9parameter(ptr noundef nonnull align 8 dereferenceable(10728) %i.ah, i32 noundef %i.ai, i32 %i.aj, i32 %i.ag, i32 noundef 0, ptr noundef null)
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.al = load i32, ptr %i.j, align 8, !tbaa !144
  %i.am = xor i32 %i.ag, 1
  call void @_ZN3smt7context11mk_th_axiomEiN3sat7literalES2_jP9parameter(ptr noundef nonnull align 8 dereferenceable(10728) %i.ak, i32 noundef %i.al, i32 %.sroa.08.0.copyload, i32 %i.am, i32 noundef 0, ptr noundef null)
  %i.an = getelementptr inbounds nuw i8, ptr %.02123, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.y
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11theory_char11new_bv2charEiP4expr(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.parameter, align 8           ; 8 uses
  %4 = alloca %class.bv_util, align 8             ; 5 uses
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1)
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105, !nonnull !100, !align !101
  call void @_ZN7bv_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(952) %i.g)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !136  ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !135  ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7bv_util11mk_bit2boolEP4exprj.exit, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7bv_util11mk_bit2boolEP4exprj.exit
  %.023 = phi i32 [ 0, %.lr.ph ], [ %i.w, %_ZN7bv_util11mk_bit2boolEP4exprj.exit ] ; 2 uses
  %.02022 = phi ptr [ %i.h, %.lr.ph ], [ %i.ae, %_ZN7bv_util11mk_bit2boolEP4exprj.exit ] ; 2 uses
  %.sroa.08.0.copyload = load i32, ptr %.02022, align 4, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 %.023, ptr %3, align 8, !tbaa !193
  store i8 0, ptr %i.o, align 8, !tbaa !195
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !196, !nonnull !100, !align !101
  %i.t = load i32, ptr %4, align 8, !tbaa !197
  %i.u = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.s, i32 noundef %i.t, i32 noundef 63, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null)
          to label %_ZN7bv_util11mk_bit2boolEP4exprj.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.v

_ZN7bv_util11mk_bit2boolEP4exprj.exit:            ; preds = %bb.b
  %i.w = add nuw i32 %.023, 1
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = call i32 @_ZN3smt6theory10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %i.u) ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.z = load i32, ptr %i.r, align 8, !tbaa !144
  %i.aa = xor i32 %.sroa.08.0.copyload, 1
  call void @_ZN3smt7context11mk_th_axiomEiN3sat7literalES2_jP9parameter(ptr noundef nonnull align 8 dereferenceable(10728) %i.y, i32 noundef %i.z, i32 %i.aa, i32 %i.x, i32 noundef 0, ptr noundef null)
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !144
  %i.ad = xor i32 %i.x, 1
  call void @_ZN3smt7context11mk_th_axiomEiN3sat7literalES2_jP9parameter(ptr noundef nonnull align 8 dereferenceable(10728) %i.ab, i32 noundef %i.ac, i32 %.sroa.08.0.copyload, i32 %i.ad, i32 noundef 0, ptr noundef null)
  %i.ae = getelementptr inbounds nuw i8, ptr %.02022, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.n
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ref_vector, align 8          ; 8 uses
  %3 = alloca %class.obj_ref, align 8             ; 7 uses
  %4 = alloca %"class.smt::ext_theory_eq_propagation_justification", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !135  ; 3 uses
  %i.f = icmp ugt i32 %i.e, %1
  %i.g = zext i32 %1 to i64                       ; 4 uses
  br i1 %i.f, label %bb.b, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i

bb.b:                                             ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i, label %_ZNK3smt11theory_char8has_bitsEi.exit

_ZNK3smt11theory_char8has_bitsEi.exit:            ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !135
  %.not129 = icmp eq i32 %i.l, 0
  br i1 %.not129, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i, label %bb.at

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.o = zext i32 %1 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155  ; 2 uses
  %i.s = add nsw i32 %1, 1                        ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i: ; preds = %bb.b, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i, %_ZNK3smt11theory_char8has_bitsEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.g
  %.in = load ptr, ptr %i.v, align 8, !tbaa !145
  %i.w = load ptr, ptr %.in, align 8, !tbaa !155  ; 2 uses
  %i.x = add nsw i32 %1, 1                        ; 2 uses
  %i.y = icmp ugt i32 %i.x, %i.e
  br i1 %i.y, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.b, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ]
  %.ph193 = phi i32 [ %i.x, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.s, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ] ; 4 uses
  %.ph194 = phi ptr [ %i.w, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.r, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ] ; 2 uses
  %.ph195 = phi i64 [ %i.g, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.o, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ] ; 2 uses
  %.0.i16.i.i.ph = phi i32 [ %i.e, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ] ; 2 uses
  br label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i
  %i.z = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i.preheader ] ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !135
  %i.ad = icmp ugt i32 %.ph193, %i.ac
  br i1 %i.ad, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i, label %bb.c

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorI7svectorIN3sat7literalEjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !134
  br label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i, !llvm.loop !660

bb.c:                                             ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 %.ph193, ptr %i.ae, align 4, !tbaa !135
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph193
  br i1 %.not1218.i.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.af = zext i32 %.ph193 to i64
  %i.ag = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.z, i64 %i.ag
  %i.ai = sub nsw i64 %i.af, %i.ag
  %i.aj = shl nsw i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !136
  br label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit

_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i, %bb.c, %.lr.ph.preheader.i.i
  %i.ak = phi ptr [ null, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ], [ %i.b, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.z, %bb.c ], [ %i.z, %.lr.ph.preheader.i.i ]
  %i.al = phi ptr [ %i.r, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ], [ %i.w, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %.ph194, %bb.c ], [ %.ph194, %.lr.ph.preheader.i.i ] ; 7 uses
  %i.am = phi i64 [ 4294967295, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i78 ], [ %i.g, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %.ph195, %bb.c ], [ %.ph195, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !133
  br label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit
  %i.ar = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %.pre, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit ] ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread128, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit

.thread128:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !105, !nonnull !100, !align !101
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !106
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  br label %bb.f

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit: ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !135
  %.not = icmp ult i32 %1, %i.aw
  br i1 %.not, label %.noexc81, label %bb.e

bb.e:                                             ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !105, !nonnull !100, !align !101
  %i.ay = ptrtoint ptr %i.ax to i64               ; 3 uses
  store i64 %i.ay, ptr %2, align 8, !tbaa !106
  store ptr null, ptr %i.aq, align 8, !tbaa !123
  %i.az = load i32, ptr %i.av, align 4, !tbaa !135 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !135
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

bb.f:                                             ; preds = %.thread128, %bb.e
  %i.bd = phi i64 [ %i.au, %.thread128 ], [ %i.ay, %bb.e ]
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !133 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !135
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.noexc, %bb.e
  %i.be = phi i64 [ %i.bd, %.noexc ], [ %i.ay, %bb.e ]
  %i.bf = phi ptr [ %.pre.i, %.noexc ], [ %i.ar, %bb.e ] ; 3 uses
  %i.bg = phi i32 [ %.pre2.i, %.noexc ], [ %i.az, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bi ; 2 uses
  store i64 %i.be, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !123
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d, !llvm.loop !661

bb.g:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.au

.noexc81:                                         ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9552 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 9568
  %i.br = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3smt11theory_char10reset_bitsE, i64 16), ptr %i.br, align 8, !tbaa !103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %0, ptr %i.bs, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %1, ptr %.sroa.6.8..sroa_idx, align 8
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !198 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.noexc82, label %bb.h

bb.h:                                             ; preds = %.noexc81
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !135 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !135
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %.noexc82, label %bb.i

.noexc82:                                         ; preds = %bb.h, %.noexc81
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bp)
  %.pre.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %.noexc82, %bb.h
  %i.ca = phi i32 [ %.pre2.i.i.i, %.noexc82 ], [ %i.bw, %bb.h ] ; 2 uses
  %i.cb = phi ptr [ %.pre.i.i.i, %.noexc82 ], [ %i.bt, %bb.h ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store ptr %i.br, ptr %i.ce, align 8, !tbaa !665
  %i.cf = add i32 %i.ca, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !135
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.am ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3smt11theory_char9init_bitsEi:bb.a
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89: ; preds = %bb.w, %bb.v
  %i.fv = load ptr, ptr %i.fe, align 8, !tbaa !123 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !135 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 -8
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !135
  %i.gb = icmp eq i32 %i.fy, %i.ga
  br i1 %i.gb, label %bb.y, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit93

bb.y:                                             ; preds = %bb.x, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i89
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
  %.pre.i.i90 = load ptr, ptr %i.fe, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i.i91 = getelementptr inbounds i8, ptr %.pre.i.i90, i64 -4
  %.pre2.i.i92 = load i32, ptr %.phi.trans.insert.i.i91, align 4, !tbaa !135
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit93

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit93: ; preds = %bb.x, %bb.y
  %i.gc = phi i32 [ %.pre2.i.i92, %bb.y ], [ %i.fy, %bb.x ] ; 2 uses
  %i.gd = phi ptr [ %.pre.i.i90, %bb.y ], [ %i.fv, %bb.x ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gf = zext i32 %i.gc to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gf
  store ptr %i.fr, ptr %i.gg, align 8, !tbaa !138
  %i.gh = add i32 %i.gc, 1
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !135
  %i.gi = add nuw nsw i32 %.058137, 1             ; 2 uses
  %i.gj = tail call noundef i32 @_ZN7zstring12get_encodingEv() ; 2 uses
  %switch.selectcmp.i.i.i.i = icmp eq i32 %i.gj, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 16, i32 18
  %switch.selectcmp1.i.i.i.i = icmp eq i32 %i.gj, 0
  %switch.select2.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i, i32 8, i32 %switch.select.i.i.i.i
  %i.gk = icmp samesign ult i32 %i.gi, %switch.select2.i.i.i.i
  br i1 %i.gk, label %bb.v, label %bb.t, !llvm.loop !662

._crit_edge:                                      ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.thread, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit
  %i.gl = phi ptr [ %.pre148189, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.thread ], [ %.pre148, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %._crit_edge144, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98, %._crit_edge
  %i.gn = phi ptr [ %i.gl, %._crit_edge ], [ %i.hj, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98 ] ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !135 ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gr
  %.not68141 = icmp eq i32 %i.gp, 0
  br i1 %.not68141, label %._crit_edge144, label %.lr.ph143

.lr.ph140:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98
  %i.gt = phi ptr [ %i.hj, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98 ], [ %.pre148, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 4 uses
  %.057139 = phi ptr [ %i.hp, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98 ], [ %i.fk, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.gu = load ptr, ptr %.057139, align 8, !tbaa !138
  %i.gv = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8928
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !170
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !142
  %i.gz = zext i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !135
  %i.hc = shl i32 %i.hb, 1
  %i.hd = icmp eq ptr %i.gt, null
  br i1 %i.hd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph140
  %i.he = getelementptr inbounds i8, ptr %i.gt, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !135 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !135
  %i.hi = icmp eq i32 %i.hf, %i.hh
  br i1 %i.hi, label %bb.aa, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98

bb.aa:                                            ; preds = %bb.z, %.lr.ph140
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pre.i95 = load ptr, ptr %i.an, align 8, !tbaa !136 ; 2 uses
  %.phi.trans.insert.i96 = getelementptr inbounds i8, ptr %.pre.i95, i64 -4
  %.pre2.i97 = load i32, ptr %.phi.trans.insert.i96, align 4, !tbaa !135
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit98: ; preds = %bb.z, %bb.aa
  %i.hj = phi ptr [ %.pre.i95, %bb.aa ], [ %i.gt, %bb.z ] ; 4 uses
  %i.hk = phi i32 [ %.pre2.i97, %bb.aa ], [ %i.hf, %bb.z ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.hm = zext i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hm
  store i32 %i.hc, ptr %i.hn, align 4, !tbaa !135
  %i.ho = add i32 %i.hk, 1
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !135
  %i.hp = getelementptr inbounds nuw i8, ptr %.057139, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.hp, %i.fq
  br i1 %.not67, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, label %.lr.ph140

._crit_edge144:                                   ; preds = %.lr.ph143, %._crit_edge, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.hr = load ptr, ptr %i.fe, align 8, !tbaa !123 ; 3 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge144
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !135
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101: ; preds = %._crit_edge144, %bb.ab
  %.0.i.i100 = phi i32 [ %i.hu, %bb.ab ], [ 0, %._crit_edge144 ]
  %i.hv = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.al)
  %i.hw = tail call noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.hq, i32 noundef %.0.i.i100, ptr noundef %i.hr, ptr noundef %i.hv) ; 4 uses
  %i.hx = load ptr, ptr %i.ap, align 8, !tbaa !105, !nonnull !100, !align !101
  store ptr %i.hw, ptr %3, align 8, !tbaa !171
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !141
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !141
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit101, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.ic = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 7544 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !156 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !103
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef %i.hw)
          to label %.noexc102 unwind label %bb.ar, !inline_history !663

.noexc102:                                        ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.ii = load ptr, ptr %i.id, align 8, !tbaa !156 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !103
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.ii)
          to label %_ZN3smt7context16mark_as_relevantEP4expr.exit unwind label %bb.ar, !inline_history !663

.lr.ph143:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %.lr.ph143
  %.0142 = phi ptr [ %i.jc, %.lr.ph143 ], [ %i.gn, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 2 uses
  %.sroa.05.0.copyload = load i32, ptr %.0142, align 4, !tbaa !135
  %i.im = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101 ; 2 uses
  %i.in = lshr i32 %.sroa.05.0.copyload, 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8936
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !123
  %i.iq = zext nneg i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !138
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 7544 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !156 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !103
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8
  tail call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef %i.is), !inline_history !2
  %i.iy = load ptr, ptr %i.it, align 8, !tbaa !156 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !103
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jb = load ptr, ptr %i.ja, align 8
  tail call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iy), !inline_history !2
  %i.jc = getelementptr inbounds nuw i8, ptr %.0142, i64 4 ; 2 uses
  %.not68 = icmp eq ptr %i.jc, %i.gs
  br i1 %.not68, label %._crit_edge144, label %.lr.ph143

_ZN3smt7context16mark_as_relevantEP4expr.exit:    ; preds = %.noexc102
  %i.jd = invoke noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull %i.al)
          to label %bb.ac unwind label %bb.ar     ; 3 uses

bb.ac:                                            ; preds = %_ZN3smt7context16mark_as_relevantEP4expr.exit
  %i.je = load ptr, ptr %3, align 8, !tbaa !171   ; 4 uses
  %i.jf = invoke noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %i.je)
          to label %bb.ad unwind label %bb.ar     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.jg = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !144
  invoke void @_ZN3smt24ext_simple_justificationC2ERNS_7contextEjPKN3sat7literalEjPKSt4pairIPNS_5enodeES9_E(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(10728) %i.jg, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
          to label %.noexc104 unwind label %bb.ap

.noexc104:                                        ; preds = %bb.ad
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i32 %i.ji, ptr %i.jj, align 8, !tbaa !180
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr null, ptr %i.jk, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 16), ptr %4, align 8, !tbaa !103
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.jd, ptr %i.jl, align 8, !tbaa !183
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.jf, ptr %i.jm, align 8, !tbaa !184
  invoke void @_ZN3smt39ext_theory_eq_propagation_justification3logERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(10728) %i.jg)
          to label %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit unwind label %5

5:                                                ; preds = %.noexc104
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt31ext_theory_simple_justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(72) %4) #18
  br label %.body

_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit: ; preds = %.noexc104
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 224
  %i.jo = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.jn, i64 noundef 72)
          to label %.noexc109 unwind label %bb.aq ; 14 uses

.noexc109:                                        ; preds = %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt13justificationE, i64 16), ptr %i.jo, align 8, !tbaa !103
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jr = load i8, ptr %i.jq, align 8
  store i8 %i.jr, ptr %i.jp, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt20simple_justificationE, i64 16), ptr %i.jo, align 8, !tbaa !103
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.js, ptr noundef nonnull align 4 dereferenceable(12) %i.jt, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt24ext_simple_justificationE, i64 16), ptr %i.jo, align 8, !tbaa !103
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %i.jv, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt31ext_theory_simple_justificationE, i64 16), ptr %i.jo, align 8, !tbaa !103
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jx = load i32, ptr %i.jj, align 8, !tbaa !180
  store i32 %i.jx, ptr %i.jw, align 8, !tbaa !180
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jo, i64 48 ; 2 uses
  store ptr null, ptr %i.jy, align 8, !tbaa !181
  %i.jz = load ptr, ptr %i.jk, align 8, !tbaa !181
  %.not.i.i.i.i105 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i105, label %.noexc110, label %bb.ae

bb.ae:                                            ; preds = %.noexc109
  invoke void @_ZN6vectorI9parameterLb1EjE9copy_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(8) %i.jk)
          to label %.noexc110 unwind label %bb.aq

.noexc110:                                        ; preds = %bb.ae, %.noexc109
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 16), ptr %i.jo, align 8, !tbaa !103
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i64 16, i1 false)
  %i.kb = load ptr, ptr getelementptr inbounds nuw inrange(-32, 56) (i8, ptr @_ZTVN3smt39ext_theory_eq_propagation_justificationE, i64 32), align 8
  %i.kc = invoke noundef zeroext i1 %i.kb(ptr noundef nonnull align 8 dereferenceable(9) %i.jo)
          to label %.noexc111 unwind label %bb.aq, !inline_history !3

.noexc111:                                        ; preds = %.noexc110
  br i1 %i.kc, label %bb.af, label %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit

bb.af:                                            ; preds = %.noexc111
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 8624 ; 3 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !185 ; 4 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 -4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !135 ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 -8
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !135
  %i.kk = icmp eq i32 %i.kh, %i.kj
  br i1 %i.kk, label %bb.ah, label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6vectorIPN3smt13justificationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %.noexc112 unwind label %bb.aq

.noexc112:                                        ; preds = %bb.ah
  %.pre.i.i106 = load ptr, ptr %i.kd, align 8, !tbaa !185 ; 2 uses
  %.phi.trans.insert.i.i107 = getelementptr inbounds i8, ptr %.pre.i.i106, i64 -4
  %.pre2.i.i108 = load i32, ptr %.phi.trans.insert.i.i107, align 4, !tbaa !135
  br label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i: ; preds = %.noexc112, %bb.ag
  %i.kl = phi i32 [ %.pre2.i.i108, %.noexc112 ], [ %i.kh, %bb.ag ] ; 2 uses
  %i.km = phi ptr [ %.pre.i.i106, %.noexc112 ], [ %i.ke, %bb.ag ] ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -4
  %i.ko = zext i32 %i.kl to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ko
  store ptr %i.jo, ptr %i.kp, align 8, !tbaa !187
  %i.kq = add i32 %i.kl, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !135
  br label %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit

_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit: ; preds = %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit.i, %.noexc111
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt31ext_theory_simple_justificationE, i64 16), ptr %4, align 8, !tbaa !103
  %i.kr = load ptr, ptr %i.jk, align 8, !tbaa !181 ; 4 uses
  %.not.i.i.i113 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i113, label %_ZN3smt31ext_theory_simple_justificationD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !135 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.kv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kt, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kr, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #18, !inline_history !188
  %i.ku = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.kv = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i114 = load ptr, ptr %i.jk, align 8, !tbaa !181
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.kw = phi ptr [ %.pre.i.i.i114, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.kr, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.kx = getelementptr inbounds i8, ptr %i.kw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kx)
          to label %_ZN3smt31ext_theory_simple_justificationD2Ev.exit unwind label %bb.ai, !inline_history !188

bb.ai:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #19, !inline_history !188
  unreachable

_ZN3smt31ext_theory_simple_justificationD2Ev.exit: ; preds = %_ZN3smt7context16mk_justificationINS_39ext_theory_eq_propagation_justificationEEEPNS_13justificationERKT_.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.la = ptrtoint ptr %i.jo to i64
  %i.lb = or i64 %i.la, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !189
  %i.le = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !189
  %.not.i.i115 = icmp eq ptr %i.ld, %i.lf
  br i1 %.not.i.i115, label %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN3smt31ext_theory_simple_justificationD2Ev.exit
  %i.lg = load ptr, ptr %i.bn, align 8, !tbaa !146, !nonnull !100, !align !101
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8856 ; 4 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !190 ; 4 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 -4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !135 ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.li, i64 -8
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !135
  %i.lo = icmp eq i32 %i.ll, %i.ln
  br i1 %i.lo, label %bb.al, label %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  invoke void @_ZN6vectorIN3smt7context6new_eqELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lh)
          to label %.noexc119 unwind label %bb.ar

.noexc119:                                        ; preds = %bb.al
  %.pre.i.i.i116 = load ptr, ptr %i.lh, align 8, !tbaa !190 ; 2 uses
  %.phi.trans.insert.i.i.i117 = getelementptr inbounds i8, ptr %.pre.i.i.i116, i64 -4
  %.pre2.i.i.i118 = load i32, ptr %.phi.trans.insert.i.i.i117, align 4, !tbaa !135
  br label %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i

_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i: ; preds = %.noexc119, %bb.ak
  %i.lp = phi i32 [ %.pre2.i.i.i118, %.noexc119 ], [ %i.ll, %bb.ak ]
  %i.lq = phi ptr [ %.pre.i.i.i116, %.noexc119 ], [ %i.li, %bb.ak ]
  %i.lr = zext i32 %i.lp to i64
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %i.lr ; 3 uses
  store ptr %i.jd, ptr %i.ls, align 8, !tbaa !145
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.jf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store i64 %i.lb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !191
  %i.lt = load ptr, ptr %i.lh, align 8, !tbaa !190
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -4 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !135
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !135
  br label %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit

_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit: ; preds = %_ZN6vectorIN3smt7context6new_eqELb0EjE9push_backEOS2_.exit.i.i, %_ZN3smt31ext_theory_simple_justificationD2Ev.exit
  %.not.i.i120 = icmp eq ptr %i.je, null
  br i1 %.not.i.i120, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit
  %i.lx = load ptr, ptr %i.hy, align 8, !tbaa !172, !nonnull !100, !align !101
  %i.ly = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !141
  %i.ma = add i32 %i.lz, -1                       ; 2 uses
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !141
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.an, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.lx, ptr noundef nonnull %i.je)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN3smt7context9assign_eqEPNS_5enodeES2_RKNS_16eq_justificationE.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ad
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.ah, %.noexc110, %bb.ae, %_ZN3smt39ext_theory_eq_propagation_justificationC2EiRNS_7contextEPNS_5enodeES4_.exit
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3smt31ext_theory_simple_justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #18
  br label %.body

.body:                                            ; preds = %bb.ap, %5, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.mf, %bb.aq ], [ %i.me, %bb.ap ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.ac, %_ZN3smt7context16mark_as_relevantEP4expr.exit, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %.noexc102, %bb.al
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.ar
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.mg, %bb.ar ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.au

.loopexit:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit, %bb.m, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !211
  %i.mj = add i32 %i.mi, 1
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !211
  br label %bb.at

bb.at:                                            ; preds = %_ZNK3smt11theory_char8has_bitsEi.exit, %.loopexit
  ret void

bb.au:                                            ; preds = %bb.as, %bb.g
  %.pn76 = phi { ptr, i32 } [ %i.bm, %bb.g ], [ %.pn70.pn.pn.pn, %bb.as ]
  resume { ptr, i32 } %.pn76
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !135  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !138 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !139, !nonnull !100, !align !101
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !141
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !141
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #19
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5trailD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN8seq_util11mk_char_bitEP4exprj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN3smt7context11internalizeEPKP4exprjb(ptr noundef nonnull align 8 dereferenceable(10728), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN8seq_util9mk_skolemERK6symboljPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3smt31ext_theory_simple_justificationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3smt31ext_theory_simple_justificationE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !135  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #18
  %i.e = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.f = add i32 %.07.i.i.i.i.i.i, -1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !181
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.g = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.b, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %bb.a, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172, !nonnull !100, !align !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !141
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !141
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

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN3smt11theory_char9get_ebitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3smt11theory_char9init_bitsEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bound_simplifier?download=true
inline.NumInlined: 2023
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16bound_simplifier14restore_boundsEv:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN16bound_simplifier6rw_cfgEED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12rewriter_tplIN16bound_simplifier6rw_cfgEE, i64 16), ptr %0, align 8, !tbaa !154
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !248, !nonnull !37, !align !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !56
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.i, ptr noundef nonnull %i.g)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #17
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162  ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i2, label %_ZN7obj_refI3app11ast_managerED2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248, !nonnull !37, !align !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !56
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN7obj_refI3app11ast_managerED2Ev.exit3

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.s, ptr noundef nonnull %i.q)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit3 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #17
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit3:         ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i4, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58, !nonnull !37, !align !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !56
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !56
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ac, ptr noundef nonnull %i.aa)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit3, %bb.j, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN13rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.aj) #16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN13rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.ak) #16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !149 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.an)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.m
  tail call void @_ZN13rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248, !nonnull !37, !align !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !56
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI3app11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI3app11ast_managerE7dec_refEv.exit:    ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16bound_simplifier9is_offsetEP4exprS1_R8rational(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.i

_ZNK17arith_recognizers6is_addEPK4expr.exit.i:    ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27
  %i.l = icmp eq i32 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 6
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.d, label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %2, %i.u                    ; 2 uses
  %i.x = icmp eq ptr %i.w, %2
  %4 = select i1 %.not, i1 true, i1 %i.x
  br i1 %4, label %bb.e, label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread

bb.e:                                             ; preds = %bb.d
  %spec.select16 = select i1 %.not, ptr %i.w, ptr %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = call noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %spec.select16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread

_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers6is_addEPK4expr.exit.i, %bb.c, %bb.d, %bb.e
  %.0 = phi i1 [ %i.y, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers6is_addEPK4expr.exit.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK17arith_recognizers6is_addEPK4exprRPS0_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit

_ZNK17arith_recognizers6is_addEPK4expr.exit:      ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 6
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.s, ptr %2, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  store ptr %i.u, ptr %3, align 8, !tbaa !30
  br label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK17arith_recognizers6is_addEPK4expr.exit, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %_ZNK17arith_recognizers6is_addEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16bound_simplifier12assert_lowerEP4exprRK8rationalb(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4                          ; 2 uses
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store i32 1, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %2, align 8, !tbaa !15
  store i32 %i.p, ptr %i.b, align 8, !tbaa !15
  store i8 %i.e, ptr %i.c, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.l

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.v = load i32, ptr %i.q, align 8, !tbaa !15
  store i32 %i.v, ptr %i.g, align 8, !tbaa !15
  %i.w = load i8, ptr %i.h, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.h, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit unwind label %bb.l

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.d, %bb.e
  %i.y = invoke noundef i32 @_ZN16bound_simplifier6to_varEP4expr(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %1)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252, !nonnull !37, !align !38 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 3 uses
  %i.ac = load i8, ptr %i.c, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.b, align 8, !tbaa !15
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1500 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, -2
  store i8 %i.ai, ptr %i.ag, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i.i unwind label %bb.l

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  %i.ak = load i8, ptr %i.h, align 4
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i.i
  %i.an = load i32, ptr %i.g, align 8, !tbaa !15
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1516 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -2
  store i8 %i.aq, ptr %i.ao, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.i

bb.j:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.i unwind label %bb.l

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.i:     ; preds = %bb.j, %bb.i
  %i.ar = invoke noundef zeroext i1 @_ZN16bound_propagator17assert_lower_coreEjR3mpqbNS_5bkindEjj(ptr noundef nonnull align 8 dereferenceable(280) %i.z, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i1 noundef zeroext %3, i32 noundef 0, i32 noundef 0, i32 noundef -1)
          to label %_ZN16bound_propagator12assert_lowerEjRK3mpqbj.exit unwind label %bb.l ; 0 uses

_ZN16bound_propagator12assert_lowerEjRK3mpqbj.exit: ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.i
  %i.as = load ptr, ptr %4, align 8, !tbaa !251, !nonnull !37, !align !38 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %_ZN16bound_propagator12assert_lowerEjRK3mpqbj.exit
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %_ZN16bound_propagator12assert_lowerEjRK3mpqbj.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #17
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.l:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.i, %bb.j, %bb.h, %bb.e, %bb.c, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16bound_simplifier12assert_upperEP4exprRK8rationalb(ptr noundef nonnull align 8 dereferenceable(3156) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4                          ; 2 uses
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_0

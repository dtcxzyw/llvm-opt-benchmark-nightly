Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/eager_solver?download=true
inline.NumInlined: 499
inline.NumDeleted: 154
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb:bb.a
  %5 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.304", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.304", align 8 ; 2 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.a, ptr %3, align 8, !tbaa !22
  call void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8 %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext %2, ptr noundef null)
  %i.b = load ptr, ptr %0, align 8, !tbaa !60
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !25
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !25
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.k, ptr %6, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2, ptr noundef nonnull %i.l)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.n = call ptr @__cxa_allocate_exception(i64 48) #17 ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.o, ptr %7, align 8, !tbaa !22
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4cvc58internal28TypeCheckingExceptionPrivateE, ptr nonnull @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev) #21
          to label %bb.v unwind label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !65
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #17
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode12isStringLikeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory7strings11EagerSolver21addEndpointsToEqcInfoENS0_12NodeTemplateILb1EEES5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85
  %i.b = phi i1 [ true, %bb.a ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 ] ; 2 uses
  %i.c = phi i1 [ false, %bb.a ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 ]
  %.021105 = phi ptr [ null, %bb.a ], [ %.324, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85 ] ; 3 uses
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 1023
  %i.j = select i1 %i.i, i32 -1, i32 %i.h
  %i.k = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.j)
  %i.l = icmp eq i32 %i.k, 2
  %9 = load i64, ptr %i.e, align 8
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 67108863
  %12 = select i1 %i.l, i64 -2, i64 -1
  %13 = add nsw i64 %12, %11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %14 = phi i64 [ %13, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.m = load ptr, ptr %2, align 8, !tbaa !19, !noalias !78 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !78
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 1023                       ; 2 uses
  %i.r = icmp eq i32 %i.q, 1023
  %i.s = select i1 %i.r, i32 -1, i32 %i.q
  %i.t = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.s), !noalias !78
  %i.u = icmp eq i32 %i.t, 2
  %15 = zext i1 %i.u to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %16 = getelementptr [8 x i8], ptr %i.v, i64 %14
  %i.w = getelementptr [8 x i8], ptr %16, i64 %15
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25, !noalias !78 ; 5 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !19, !alias.scope !78
  %i.y = load i64, ptr %i.x, align 8, !noalias !78 ; 3 uses
  %i.z = lshr i64 %i.y, 40
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1048575                  ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 1048574
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.ab, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 40
  %i.ag = and i64 %i.y, -1152920405095219201
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.x, align 8, !noalias !78
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp eq i32 %i.ab, 1048574
  br i1 %i.ai, label %bb.g, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.aj = or i64 %i.y, 1152920405095219200
  store i64 %i.aj, ptr %i.x, align 8, !noalias !78
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !78
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.e, %bb.f, %bb.g
  invoke void @_ZN4cvc58internal6theory7strings5utils20getConstantComponentENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ak = load ptr, ptr %5, align 8, !tbaa !19    ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  %i.au = load ptr, ptr %4, align 8, !tbaa !19
  %i.av = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.p, !prof !24

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ax = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  %.not.i.i36 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i36, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.n unwind label %bb.o       ; 3 uses

bb.n:                                             ; preds = %bb.m
  store i64 1152920405095219200, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !25
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #17
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.l, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bb = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !25
  %i.bc = icmp eq ptr %i.au, %i.bb
  br i1 %i.bc, label %bb.as, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = icmp eq ptr %.021105, null
  br i1 %i.bd, label %bb.r, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.bf = load ptr, ptr %3, align 8, !tbaa !19    ; 5 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !19
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.bf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.aa

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.t, %bb.s, %bb.u
  %i.bs = invoke noundef ptr @_ZN4cvc58internal6theory7strings11SolverState16getOrMakeEqcInfoENS0_12NodeTemplateILb1EEEb(ptr noundef nonnull align 8 dereferenceable(560) %i.be, ptr noundef nonnull align 8 %6, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.ab      ; 3 uses

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bt = load ptr, ptr %6, align 8, !tbaa !19    ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = and i64 %i.bu, 1152920405095219200
  %.not.i.i37 = icmp eq i64 %i.bv, 1152920405095219200
  br i1 %.not.i.i37, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit, label %bb.w, !prof !20

bb.w:                                             ; preds = %bb.v
  %i.bw = add i64 %i.bu, 1152920405095219200
  %i.bx = and i64 %i.bw, 1152920405095219200      ; 2 uses
  %i.by = and i64 %i.bu, -1152920405095219201
  %i.bz = or disjoint i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %bb.x, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit, !prof !20

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #18
  unreachable

bb.z:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.ae, %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %.body

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.x, %bb.w, %bb.v, %bb.q
  %.122 = phi ptr [ %.021105, %bb.q ], [ %i.bs, %bb.v ], [ %i.bs, %bb.w ], [ %i.bs, %bb.x ] ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !19    ; 5 uses
  store ptr %i.cg, ptr %7, align 8, !tbaa !19
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = lshr i64 %i.ch, 40
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1048575                  ; 3 uses
  %i.cl = icmp samesign ult i32 %i.ck, 1048574
  br i1 %i.cl, label %bb.ac, label %bb.ad, !prof !23

bb.ac:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = and i64 %i.ch, -1152920405095219201
  %i.cq = or i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit77

bb.ad:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.cr = icmp eq i32 %i.ck, 1048574
  br i1 %i.cr, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit77, !prof !20

bb.ae:                                            ; preds = %bb.ad
  %i.cs = or i64 %i.ch, 1152920405095219200
end_hunk_0

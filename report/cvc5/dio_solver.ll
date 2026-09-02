Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/dio_solver?download=true
inline.NumInlined: 2676
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4cvc58internal6theory5arith6linear9DioSolver21proofVariableToReasonERKNS3_8VariableE:bb.a
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !121

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !121

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120  ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i.i1 = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i.i1, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2, label %bb.e, !prof !121

bb.e:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.f, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2, !prof !121

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2: ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, %bb.e, %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i.i3 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i.i3, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit4, label %bb.h, !prof !121

bb.h:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit4, !prof !121

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit4 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit4: ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit2, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory5arith6linear10Polynomial8iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal4expr16NodeSelfIteratorD2Ev.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr16NodeSelfIteratorD2Ev.exit, !prof !121

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr16NodeSelfIteratorD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZN4cvc58internal4expr16NodeSelfIteratorD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare noundef i32 @_ZNK4cvc58internal11NodeBuilder14getNumChildrenEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal11NodeBuilderixEi(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) local_unnamed_addr #1

declare void @_ZN4cvc58internal11NodeBuildercvNS0_12NodeTemplateILb1EEEEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear9DioSolver28anyCoefficientExceedsMaximumEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::theory::arith::linear::Monomial", align 8 ; 7 uses
  %3 = alloca %"class.cvc5::internal::theory::arith::linear::Polynomial", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1
  %i.d = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear7SumPair9maxLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %1
  call void @_ZNK4cvc58internal6theory5arith6linear7SumPair13getPolynomialEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Polynomial") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %3, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1023
  %i.k = icmp eq i64 %i.j, 40
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 40)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  %i.m = icmp eq i32 %i.l, 2
  %i.n = load i64, ptr %i.h, align 8
  %i.o = lshr i64 %i.n, 32
  %4 = sext i1 %i.m to i32
  %5 = trunc nuw i64 %i.o to i32
  %6 = and i32 %5, 67108863
  %7 = add nsw i32 %6, %4
  %i.p = icmp ugt i32 %7, 1
  br label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !156, !range !89, !noundef !90
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK4cvc58internal6theory5arith6linear10Polynomial7getHeadEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Monomial") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.noexc26
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i: ; preds = %.noexc26
  call void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i, %bb.c, %.noexc
  %.0.i = phi i1 [ %i.p, %.noexc ], [ false, %bb.c ], [ false, %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !120    ; 3 uses
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = and i64 %i.y, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.z, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.f, !prof !121

bb.f:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit
  %i.aa = add i64 %i.y, 1152920405095219200
  %i.ab = and i64 %i.aa, 1152920405095219200      ; 2 uses
  %i.ac = and i64 %i.y, -1152920405095219201
  %i.ad = or disjoint i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %bb.g, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !121

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !152
  %i.aj = add i32 %i.ai, 3
  %i.ak = icmp ugt i32 %i.d, %i.aj
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, %bb.i
  %i.am = phi i1 [ false, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit ], [ %i.ak, %bb.i ]
  ret i1 %i.am

bb.l:                                             ; preds = %bb.j, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.w, %bb.e ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver23enqueueInputConstraintsEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.b

.preheader:                                       ; preds = %_ZN4cvc57context3CDOImEaSERKm.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !131  ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %.lr.ph15, label %.critedge

.lr.ph15:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc57context3CDOImEaSERKm.exit
  %i.an = phi ptr [ %i.h, %.lr.ph ], [ %i.bf, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.ao = phi i64 [ %i.f, %.lr.ph ], [ %i.aw, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !168 ; 3 uses
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !169
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !131
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.n, align 8, !tbaa !168
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

_ZNSt5dequeImSaImEE9push_backERKm.exit:           ; preds = %bb.c, %bb.d
  %i.av = load i64, ptr %i.c, align 8, !tbaa !131
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bd = icmp eq ptr %i.ax, %i.bc
  br i1 %i.bd, label %_ZN4cvc57context3CDOImEaSERKm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_ZN4cvc57context3CDOImEaSERKm.exit

_ZN4cvc57context3CDOImEaSERKm.exit:               ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit, %bb.e
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !26
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ult i64 %i.aw, %i.bj
  br i1 %i.bk, label %bb.b, label %.preheader, !llvm.loop !426

bb.f:                                             ; preds = %.lr.ph15, %bb.u
  %i.bl = phi ptr [ %i.x, %.lr.ph15 ], [ %i.dl, %bb.u ]
  %i.bm = phi i64 [ %i.v, %.lr.ph15 ], [ %i.dj, %bb.u ] ; 2 uses
  %i.bn = load i8, ptr %i.ad, align 8, !tbaa !82, !range !89, !noundef !90
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = add nuw i64 %i.bm, 1
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/dio_solver?download=true
inline.NumInlined: 2677
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev:bb.a
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
  %i.p = and i64 %i.o, 67108863
  %i.q = sext i1 %i.m to i64
  %i.r = add nsw i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 1
  br label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !156, !range !89, !noundef !90
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNK4cvc58internal6theory5arith6linear10Polynomial7getHeadEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Monomial") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.noexc26
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i: ; preds = %.noexc26
  call void @_ZN4cvc58internal6theory5arith6linear8MonomialD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit

_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i, %bb.c, %.noexc
  %.0.i = phi i1 [ %i.s, %.noexc ], [ false, %bb.c ], [ false, %_ZNK4cvc58internal6theory5arith6linear10Polynomial6isZeroEv.exit.i ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !120   ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, label %bb.f, !prof !121

bb.f:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.aa, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.g, label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, !prof !121

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit: ; preds = %_ZNK4cvc58internal6theory5arith6linear10Polynomial12numMonomialsEv.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !152
  %i.am = add i32 %i.al, 3
  %i.an = icmp ugt i32 %i.d, %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit, %bb.i
  %i.ap = phi i1 [ false, %_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev.exit ], [ %i.an, %bb.i ]
  ret i1 %i.ap

bb.l:                                             ; preds = %bb.j, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.z, %bb.e ]
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
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc57context3CDOImEaSERKm.exit
  %i.am = phi ptr [ %i.h, %.lr.ph ], [ %i.be, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.an = phi i64 [ %i.f, %.lr.ph ], [ %i.av, %_ZN4cvc57context3CDOImEaSERKm.exit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !168 ; 3 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !169
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !131
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.n, align 8, !tbaa !168
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br label %_ZNSt5dequeImSaImEE9push_backERKm.exit

_ZNSt5dequeImSaImEE9push_backERKm.exit:           ; preds = %bb.c, %bb.d
  %i.au = load i64, ptr %i.c, align 8, !tbaa !131
  %i.av = add i64 %i.au, 1                        ; 3 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bc = icmp eq ptr %i.aw, %i.bb
  br i1 %i.bc, label %_ZN4cvc57context3CDOImEaSERKm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_ZN4cvc57context3CDOImEaSERKm.exit

_ZN4cvc57context3CDOImEaSERKm.exit:               ; preds = %_ZNSt5dequeImSaImEE9push_backERKm.exit, %bb.e
  store i64 %i.av, ptr %i.c, align 8, !tbaa !26
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.av, %i.bi
  br i1 %i.bj, label %bb.b, label %.preheader, !llvm.loop !426

bb.f:                                             ; preds = %.lr.ph15, %bb.u
  %i.bk = phi ptr [ %i.x, %.lr.ph15 ], [ %i.dk, %bb.u ]
  %i.bl = phi i64 [ %i.v, %.lr.ph15 ], [ %i.di, %bb.u ] ; 2 uses
  %i.bm = load i8, ptr %1, align 8, !tbaa !82, !range !89, !noundef !90
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = add nuw i64 %i.bl, 1
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = icmp eq ptr %i.bp, %i.bu
  br i1 %i.bv, label %_ZN4cvc57context3CDOImEaSERKm.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !116
  br label %_ZN4cvc57context3CDOImEaSERKm.exit11

_ZN4cvc57context3CDOImEaSERKm.exit11:             ; preds = %bb.g, %bb.h
  %i.bw = phi ptr [ %i.bk, %bb.g ], [ %.pre, %bb.h ]
  store i64 %i.bo, ptr %i.s, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  %i.cb = load ptr, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i12, label %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4cvc57context3CDOImEaSERKm.exit11
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi i64 [ %i.ch, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.078.i = phi i64 [ %i.cg, %.lr.ph.i ], [ %i.bz, %.lr.ph.preheader.i ]
  %i.cg = call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver17applySubstitutionEmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.09.i, i64 noundef %.078.i) ; 2 uses
  %i.ch = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ch, %i.cf
  br i1 %exitcond.not.i, label %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit, label %.lr.ph.i, !llvm.loop !5

_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit: ; preds = %.lr.ph.i, %_ZN4cvc57context3CDOImEaSERKm.exit11
  %.07.lcssa.i = phi i64 [ %i.bz, %_ZN4cvc57context3CDOImEaSERKm.exit11 ], [ %i.cg, %.lr.ph.i ] ; 4 uses
  %i.ci = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i)
  br i1 %i.ci, label %bb.u, label %bb.i

bb.i:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit
  %i.cj = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i)
  br i1 %i.cj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.cq = icmp eq ptr %i.ck, %i.cp
  br i1 %i.cq, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ak)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit: ; preds = %bb.j, %bb.k
  store i8 1, ptr %1, align 8, !tbaa !82
  store i64 %.07.lcssa.i, ptr %i.al, align 8, !tbaa !83
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %i.cr = call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver11reduceByGCDEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %.07.lcssa.i) ; 6 uses
  %i.cs = load i8, ptr %1, align 8, !tbaa !82, !range !89, !noundef !90
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cr)
  br i1 %i.cu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !37
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  %i.db = icmp eq ptr %i.cv, %i.da
  br i1 %i.db, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ak)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13: ; preds = %bb.n, %bb.o
  store i8 1, ptr %1, align 8, !tbaa !82
  store i64 %i.cr, ptr %i.al, align 8, !tbaa !83
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.dc = call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cr)
  br i1 %i.dc, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear9DioSolver28anyCoefficientExceedsMaximumEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cr)
  br i1 %i.dd, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !131
  %i.de = load ptr, ptr %i.ag, align 8, !tbaa !168 ; 3 uses
  %i.df = load ptr, ptr %i.ah, align 8, !tbaa !169
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %.not.i.i = icmp eq ptr %i.de, %i.dg
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.cr, ptr %i.de, align 8, !tbaa !131
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dh, ptr %i.ag, align 8, !tbaa !168
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit

_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.p, %bb.q, %_ZN4cvc58internal6theory5arith6linear9DioSolver15pushToQueueBackEm.exit, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit13, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, %_ZN4cvc58internal6theory5arith6linear9DioSolver28applyAllSubstitutionsToIndexEm.exit
  %i.di = load i64, ptr %i.s, align 8, !tbaa !131 ; 2 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.dk = load ptr, ptr %i.t, align 8, !tbaa !116 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory5arith6linear9DioSolver14decomposeIndexEm:bb.a
          cleanup
  br label %.body

bb.ff:                                            ; preds = %bb.aw
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear9DioSolver10ConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #24
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.pn44 = phi { ptr, i32 } [ %i.sr, %bb.fg ], [ %i.sq, %bb.ff ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %24) #24
  br label %.body

.body:                                            ; preds = %bb.fe, %bb.av, %bb.fh
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.fh ], [ %i.sp, %bb.fe ], [ %i.ft, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.fs

bb.fi:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit142
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fj:                                            ; preds = %bb.bm
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fk:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.su = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear9DioSolver10ConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #24
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.pn47 = phi { ptr, i32 } [ %i.su, %bb.fk ], [ %i.st, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.fq

bb.fm:                                            ; preds = %bb.ca
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fn:                                            ; preds = %bb.cd
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.fo:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i158, %bb.cj
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory5arith6linear9DioSolver12SubstitutionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #24
  br label %.body156

.body156:                                         ; preds = %bb.fn, %bb.ch, %bb.fo
  %.pn49 = phi { ptr, i32 } [ %i.sx, %bb.fo ], [ %i.sw, %bb.fn ], [ %i.lc, %bb.ch ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #24
  br label %bb.fp

bb.fp:                                            ; preds = %.body156, %bb.fm
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %.body156 ], [ %i.sv, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %.pn52.pn = phi { ptr, i32 } [ %.pn47, %bb.fl ], [ %.pn49.pn, %bb.fp ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fi
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %bb.fq ], [ %i.ss, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.body, %bb.fd
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn, %bb.fr ], [ %.pn44.pn, %.body ], [ %i.so, %bb.fd ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #24
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fc
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn, %bb.fs ], [ %.pn42, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.ez
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn, %bb.ft ], [ %i.sl, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ey
  %.pn52.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn, %bb.fu ], [ %i.sk, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.ex, %bb.ew
  %.pn52.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %i.sj, %bb.ex ], [ %i.si, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.ev
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn, %bb.fw ], [ %i.sh, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.eu
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %i.sg, %bb.eu ]
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.et
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fy ], [ %.pn40, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #24
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.eq
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fz ], [ %.pn38, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %_ZN4cvc58internal7IntegerD2Ev.exit207
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ga ], [ %.pn36, %_ZN4cvc58internal7IntegerD2Ev.exit207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit208 unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sy = landingpad { ptr, i32 }
          catch ptr null
  %i.sz = extractvalue { ptr, i32 } %i.sy, 0
  call void @__clang_call_terminate(ptr %i.sz) #25
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit208:            ; preds = %bb.gb, %_ZN4cvc58internal7IntegerD2Ev.exit206
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN4cvc58internal7IntegerD2Ev.exit206 ], [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.gd

bb.gd:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit208, %bb.eh
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal7IntegerD2Ev.exit208 ], [ %i.rt, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.eg
  %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gd ], [ %i.rs, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver27subAndReduceCurrentFByIndexEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ne ptr %i.e, null
  %.neg.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %i.k, %.neg.i.i
  %i.n = shl nsw i64 %i.m, 6
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.n, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = add nsw i64 %i.v, %i.ac                 ; 3 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.032 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.aa ] ; 11 uses
  %.02230 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %bb.aa ] ; 3 uses
  %i.ai = load i8, ptr %2, align 8, !tbaa !82, !range !89, !noundef !90
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !520 ; 2 uses
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !171, !noalias !520
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !172, !noalias !520
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, %.02230              ; 5 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.at = icmp samesign ult i64 %i.ar, 64
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.02230
  br label %_ZNSt5dequeImSaImEEixEm.exit

bb.f:                                             ; preds = %bb.d
  %i.av = lshr i64 %i.ar, 6
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aw = ashr i64 %i.ar, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i64 [ %i.av, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !520
  %i.ba = shl nsw i64 %i.ax, 6
  %i.bb = sub nsw i64 %i.ar, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  br label %_ZNSt5dequeImSaImEEixEm.exit

_ZNSt5dequeImSaImEEixEm.exit:                     ; preds = %bb.e, %bb.h
  %storemerge.i.i.i.i = phi ptr [ %i.bc, %bb.h ], [ %i.au, %bb.e ]
  %i.bd = load i64, ptr %storemerge.i.i.i.i, align 8, !tbaa !131 ; 3 uses
  %i.be = tail call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver17applySubstitutionEmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1, i64 noundef %i.bd) ; 5 uses
  %i.bf = icmp eq i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNSt5dequeImSaImEEixEm.exit
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !521 ; 2 uses
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !171, !noalias !521
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !172, !noalias !521
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = add nsw i64 %i.bm, %.032                ; 5 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  br i1 %i.bo, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp samesign ult i64 %i.bn, 64
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.032
  br label %_ZNSt5dequeImSaImEEixEm.exit26

bb.l:                                             ; preds = %bb.j
  %i.br = lshr i64 %i.bn, 6
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bs = ashr i64 %i.bn, 6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bt = phi i64 [ %i.br, %bb.l ], [ %i.bs, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !93, !noalias !521
  %i.bw = shl nsw i64 %i.bt, 6
  %i.bx = sub nsw i64 %i.bn, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx
  br label %_ZNSt5dequeImSaImEEixEm.exit26

_ZNSt5dequeImSaImEEixEm.exit26:                   ; preds = %bb.k, %bb.n
  %storemerge.i.i.i.i25 = phi ptr [ %i.by, %bb.n ], [ %i.bq, %bb.k ]
  store i64 %i.bd, ptr %storemerge.i.i.i.i25, align 8, !tbaa !131
  %i.bz = add i64 %.032, 1
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt5dequeImSaImEEixEm.exit
  %i.ca = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver14triviallyUnsatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.be)
  br i1 %i.ca, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !37
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !38
  %i.ch = icmp eq ptr %i.cb, %i.cg
  br i1 %i.ch, label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
  br label %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit

_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit: ; preds = %bb.p, %bb.q
  store i8 1, ptr %2, align 8, !tbaa !82
  store i64 %i.be, ptr %i.ah, align 8, !tbaa !83
  br label %bb.aa

bb.r:                                             ; preds = %bb.o
  %i.ci = tail call noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver12triviallySatEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.be)
  br i1 %i.ci, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = tail call noundef i64 @_ZN4cvc58internal6theory5arith6linear9DioSolver11reduceByGCDEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.be) ; 2 uses
  %i.ck = load i8, ptr %2, align 8, !tbaa !82, !range !89, !noundef !90
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear9DioSolver28anyCoefficientExceedsMaximumEm(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %i.cj)
  br i1 %i.cm, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !522 ; 2 uses
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !171, !noalias !522
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !172, !noalias !522
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = add nsw i64 %i.ct, %.032                ; 5 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp samesign ult i64 %i.cu, 64
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.032
  br label %_ZNSt5dequeImSaImEEixEm.exit28

bb.x:                                             ; preds = %bb.v
  %i.cy = lshr i64 %i.cu, 6
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.cz = ashr i64 %i.cu, 6
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.da = phi i64 [ %i.cy, %bb.x ], [ %i.cz, %bb.y ] ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !93, !noalias !522
  %i.dd = shl nsw i64 %i.da, 6
  %i.de = sub nsw i64 %i.cu, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.de
  br label %_ZNSt5dequeImSaImEEixEm.exit28

_ZNSt5dequeImSaImEEixEm.exit28:                   ; preds = %bb.w, %bb.z
  %storemerge.i.i.i.i27 = phi ptr [ %i.df, %bb.z ], [ %i.cx, %bb.w ]
  store i64 %i.cj, ptr %storemerge.i.i.i.i27, align 8, !tbaa !131
  %i.dg = add i64 %.032, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.t, %_ZNSt5dequeImSaImEEixEm.exit28, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit, %bb.r, %_ZNSt5dequeImSaImEEixEm.exit26
  %.2 = phi i64 [ %i.bz, %_ZNSt5dequeImSaImEEixEm.exit26 ], [ %.032, %_ZN4cvc58internal6theory5arith6linear9DioSolver13raiseConflictEm.exit ], [ %.032, %bb.r ], [ %.032, %bb.s ], [ %.032, %bb.t ], [ %i.dg, %_ZNSt5dequeImSaImEEixEm.exit28 ] ; 2 uses
  %i.dh = add nuw i64 %.02230, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.ad
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !519

.critedge:                                        ; preds = %bb.b, %bb.aa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.aa ], [ %.032, %bb.b ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.di = load i8, ptr %3, align 8, !tbaa !82, !range !89, !noundef !90
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = icmp uge i64 %.0.lcssa, %i.ad
  %or.cond.not = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  tail call void @_ZNSt5dequeImSaImEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %.0.lcssa)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver27processEquationsForConflictEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver16processEquationsEb(ptr noundef nonnull align 8 dereferenceable(1032) %1, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  invoke void @_ZN4cvc58internal6theory5arith6linear9DioSolver10proveIndexEm(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1, i64 noundef %i.h)
          to label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e, %bb.d, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.j = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !120, !noalias !525 ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !120, !alias.scope !525
  %i.k = load i64, ptr %i.j, align 8, !noalias !525 ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.h, label %bb.i, !prof !139

bb.h:                                             ; preds = %bb.g
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8, !noalias !525
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !121

bb.j:                                             ; preds = %bb.i
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8, !noalias !525
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit unwind label %bb.f

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.i, %bb.h, %bb.j, %bb.e
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver22processEquationsForCutEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::theory::arith::linear::SumPair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::CodeTimer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024
  call void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN4cvc58internal6theory5arith6linear9DioSolver16processEquationsEb(ptr noundef nonnull align 8 dereferenceable(1032) %1, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  invoke void @_ZN4cvc58internal6theory5arith6linear9DioSolver11purifyIndexEm(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::arith::linear::SumPair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1032) %1, i64 noundef %i.h)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.c
  %i.j = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal6theory5arith6linear7SumPair6mkZeroEPNS0_11NodeManagerE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::arith::linear::SumPair") align 8 %0, ptr noundef %i.j)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear9DioSolver11purifyIndexEm(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::theory::arith::linear::SumPair") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1032) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::theory::arith::linear::Constant", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %6 = alloca %"class.cvc5::internal::theory::arith::linear::Variable", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::theory::arith::linear::Polynomial", align 8 ; 7 uses
  %9 = alloca %"class.cvc5::internal::theory::arith::linear::Constant", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::theory::arith::linear::VarList", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::theory::arith::linear::Variable", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::theory::arith::linear::SumPair", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::theory::arith::linear::SumPair", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::theory::arith::linear::SumPair", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !120
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %_ZN4cvc58internal6theory5arith6linear7SumPairC2ERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc58internal6theory5arith6linear7SumPairC2ERKS4_.exit, !prof !121

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal6theory5arith6linear7SumPairC2ERKS4_.exit

_ZN4cvc58internal6theory5arith6linear7SumPairC2ERKS4_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.q = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear7SumPairC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal6theory5arith6linear8Constant10mkConstantEPNS0_11NodeManagerERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::Constant") align 8 %3, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4)
end_hunk_1

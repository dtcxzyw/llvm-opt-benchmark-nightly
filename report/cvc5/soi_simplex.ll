begin_hunk_0_@_ZNK4cvc58internal13DeltaRationalplERKS1_:bb.a
_ZN4cvc58internal8RationalD2Ev.exit6:             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit7

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4cvc58internal8RationalD2Ev.exit7 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit7:             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4cvc58internal8RationalD2Ev.exit8 unwind label %bb.i

bb.i:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit7
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit8:             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN4cvc58internal6theory5arith6linear20LinearEqualityModule13updateTrackedEjRKNS0_13DeltaRationalE(ptr noundef nonnull align 8 dereferenceable(456), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13DeltaRationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %bb.a
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN4cvc58internal8RationalD2Ev.exit1 unwind label %bb.c

bb.c:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit1:             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  ret void
}

declare noundef i32 @_ZN4cvc58internal6theory5arith6linear8ErrorSet9popSignalEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear24SimplexDecisionProcedure21checkBasicForConflictEj(ptr noundef nonnull align 8 dereferenceable(304), i32 noundef) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure14reportConflictEj(ptr noundef nonnull align 8 dereferenceable(304), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10qeAddRangeEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %.not7 = icmp eq i32 %1, %2
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi i32 [ %1, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.f = zext i32 %.08 to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !17
  call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure15addToInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.j, i32 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !477
  call void @_ZN4cvc58internal8DenseMapIbE3setEjRKb(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.k = add i32 %.08, 1                          ; 2 uses
  %.not = icmp eq i32 %i.k, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !478
}

declare void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure15addToInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not7 = icmp eq i32 %1, %2
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi i32 [ %1, %.lr.ph ], [ %i.ar, %bb.b ] ; 2 uses
  %i.h = zext i32 %.08 to i64
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !17
  tail call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure20removeFromInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.l, i32 noundef %i.k)
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = zext i32 %i.p to i64
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.t
  store i32 %i.s, ptr %i.v, align 4, !tbaa !16
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.w
  store i32 %i.p, ptr %i.x, align 4, !tbaa !16
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  store i32 %i.k, ptr %i.af, align 4, !tbaa !16
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !16
  %i.ag = load i32, ptr %i.r, align 4, !tbaa !16  ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ah
  store i32 -1, ptr %i.ai, align 4, !tbaa !16
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.ak = lshr i32 %i.ag, 6
  %.zext.i.i.i = zext nneg i32 %i.ak to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.zext.i.i.i ; 2 uses
  %i.am = and i64 %i.ah, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = xor i64 %i.an, -1
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !72
  %i.aq = and i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !72
  store ptr %i.r, ptr %i.f, align 8, !tbaa !181
  %i.ar = add i32 %.08, 1                         ; 2 uses
  %.not = icmp eq i32 %i.ar, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !479
}

declare void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure20removeFromInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(800) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 12 uses
  %wide.trip.count = zext i32 %1 to i64           ; 7 uses
  %min.iters.check = icmp ult i32 %1, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.c = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = xor i32 %2, -1
  %i.f = icmp ult i32 %i.e, %i.d
  %4 = trunc i64 %i.c to i32
  %i.g = xor i32 %3, -1
  %i.h = icmp ult i32 %i.g, %4
  %i.i = icmp ugt i64 %i.c, 4294967295
  %i.j = or i1 %i.h, %i.i
  %i.k = or i1 %i.f, %i.j
  br i1 %i.k, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.l = zext i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.m
  %i.n = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 %i.n
  %scevgep10.a = getelementptr i8, ptr %i.o, i64 %i.m
  %i.p = zext i32 %3 to i64
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  %scevgep11.a = getelementptr i8, ptr %i.b, i64 %i.q
  %i.r = getelementptr i8, ptr %i.b, i64 %i.n
  %scevgep12 = getelementptr i8, ptr %i.r, i64 %i.q
  %bound0 = icmp ult ptr %scevgep, %scevgep12
  %bound1 = icmp ult ptr %scevgep11.a, %scevgep10.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = trunc nuw i64 %index to i32              ; 2 uses
  %i.t = add i32 %2, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = add i32 %3, %i.s
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !16, !alias.scope !480, !noalias !483
  %wide.load13.a = load <4 x i32>, ptr %i.z, align 4, !tbaa !16, !alias.scope !480, !noalias !483
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load14.a = load <4 x i32>, ptr %i.y, align 4, !tbaa !16, !alias.scope !483
  %wide.load15 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !16, !alias.scope !483
  store <4 x i32> %wide.load14.a, ptr %i.v, align 4, !tbaa !16, !alias.scope !480, !noalias !483
  store <4 x i32> %wide.load15, ptr %i.z, align 4, !tbaa !16, !alias.scope !480, !noalias !483
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !16, !alias.scope !483
  store <4 x i32> %wide.load13.a, ptr %i.aa, align 4, !tbaa !16, !alias.scope !483
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = trunc nuw i64 %indvars.iv.ph to i32     ; 2 uses
  %i.ad = add i32 %2, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ae ; 2 uses
  %i.ag = add i32 %3, %i.ac
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !16
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !16
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.al = add nsw i64 %wide.trip.count, -1
  %i.am = icmp eq i64 %indvars.iv.ph, %i.al
  br i1 %i.am, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.an = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ao = add i32 %2, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = add i32 %3, %i.an
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.av = load i32, ptr %i.at, align 4, !tbaa !16
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !16
  store i32 %i.au, ptr %i.at, align 4, !tbaa !16
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %i.ay = add i32 %2, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = add i32 %3, %i.ax
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !16
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !16
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !486
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD15quickExplainRecEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = load i32, ptr @_ZN4cvc58internal6theory5arith6linear17ARITHVAR_SENTINELE, align 4, !tbaa !16 ; 2 uses
  %.not = icmp eq i32 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197, !nonnull !177, !align !178
  %i.i = tail call noundef ptr @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule16selectSlackEntryEjb(ptr noundef nonnull align 8 dereferenceable(456) %i.h, i32 noundef %i.e, i1 noundef zeroext false)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ult i32 %1, %2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.n = zext i32 %1 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !17
  %i.p = icmp eq i32 %i.o, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i8 1, ptr %i.c, align 1, !tbaa !477
  call void @_ZN4cvc58internal8DenseMapIbE3setEjRKb(ptr noundef nonnull align 8 dereferenceable(88) %i.l, i32 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !487

bb.e:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.u = zext i32 %1 to i64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.z = call noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure29constructInfeasiblityFunctionERNS0_9TimerStatEj(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.x)
  store i32 %i.z, ptr %i.d, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 1, ptr %i.b, align 1, !tbaa !477
  call void @_ZN4cvc58internal8DenseMapIbE3setEjRKb(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i32 noundef %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ad = zext i32 %i.x to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !77 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !179 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16 ; 2 uses
  %i.al = zext i32 %i.ag to i64
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !16
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ao
  store i32 %i.ag, ptr %i.ap, align 4, !tbaa !16
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 2
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.au, -1                       ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aw
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD15quickExplainRecEjj:bb.a
  br i1 %i.ex, label %bb.o, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i61

bb.o:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i58
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ev, ptr align 4 %i.ek, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i61

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i61: ; preds = %bb.o, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i58
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.not.i17.i.i62 = icmp eq ptr %i.ek, null
  br i1 %.not.i17.i.i62, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i63, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.en) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i63

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i63: ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i61
  store ptr %i.ev, ptr %i.cr, align 8, !tbaa !77
  store ptr %i.ey, ptr %i.cs, align 8, !tbaa !181
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.ez, ptr %i.ct, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit64

_ZNSt6vectorIjSaIjEE9push_backERKj.exit64:        ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i63
  %i.fa = load ptr, ptr %i.cg, align 8, !tbaa !197, !nonnull !177, !align !178
  %i.fb = load i32, ptr %i.d, align 8, !tbaa !17
  %i.fc = call noundef ptr @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule16selectSlackEntryEjb(ptr noundef nonnull align 8 dereferenceable(456) %i.fa, i32 noundef %i.fb, i1 noundef zeroext false) ; 2 uses
  %.not55 = icmp eq ptr %i.fc, null
  br i1 %.not55, label %._crit_edge85, label %bb.k, !llvm.loop !488

._crit_edge85:                                    ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit64, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.fd = zext i32 %1 to i64                      ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !181
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !77 ; 3 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 4 uses
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = add i32 %1, %i.fm                       ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !179
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fd ; 2 uses
  %i.fr = icmp sgt i64 %i.fk, 4
  br i1 %i.fr, label %bb.q, label %bb.r, !prof !489

bb.q:                                             ; preds = %._crit_edge85
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fq, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit

bb.r:                                             ; preds = %._crit_edge85
  %i.fs = icmp eq i64 %i.fk, 4
  br i1 %i.fs, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit

bb.s:                                             ; preds = %bb.r
  %i.ft = load i32, ptr %i.fh, align 4, !tbaa !16
  store i32 %i.ft, ptr %i.fq, align 4, !tbaa !16
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !179 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.fw, align 8, !tbaa !179 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %.promoted.i.i
  br i1 %i.fx, label %_ZN4cvc58internal8DenseSet5purgeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !77
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.gc = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.gd, %bb.t ]
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4 ; 4 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16 ; 2 uses
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gf
  store i32 -1, ptr %i.gg, align 4, !tbaa !16
  %i.gh = lshr i32 %i.ge, 6
  %.zext.i.i.i65 = zext nneg i32 %i.gh to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.zext.i.i.i65 ; 2 uses
  %i.gj = and i64 %i.gf, 63
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = xor i64 %i.gk, -1
  %i.gm = load i64, ptr %i.gi, align 8, !tbaa !72
  %i.gn = and i64 %i.gm, %i.gl
  store i64 %i.gn, ptr %i.gi, align 8, !tbaa !72
  %i.go = icmp eq ptr %i.fv, %i.gd
  br i1 %i.go, label %._crit_edge.i.i, label %bb.t, !llvm.loop !180

._crit_edge.i.i:                                  ; preds = %bb.t
  store ptr %i.gd, ptr %i.fw, align 8, !tbaa !181
  br label %_ZN4cvc58internal8DenseSet5purgeEv.exit

_ZN4cvc58internal8DenseSet5purgeEv.exit:          ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit, %._crit_edge.i.i
  %i.gp = load ptr, ptr %i.fe, align 8, !tbaa !77 ; 4 uses
  %i.gq = load ptr, ptr %i.ff, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.gq, %i.gp
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN4cvc58internal8DenseSet5purgeEv.exit
  store ptr %i.gp, ptr %i.ff, align 8, !tbaa !181
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZN4cvc58internal8DenseSet5purgeEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.fd ; 2 uses
  %i.gs = add i32 %i.fn, -1
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gr, align 4, !tbaa !16
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !16
  store i32 %i.gw, ptr %i.gr, align 4, !tbaa !16
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !16
  %i.gx = add i32 %1, 1                           ; 7 uses
  %i.gy = add i32 %i.fm, -1
  %i.gz = lshr i32 %i.gy, 1
  %i.ha = add i32 %i.gz, %i.gx                    ; 11 uses
  %i.hb = icmp eq i32 %i.ha, %i.fn
  br i1 %i.hb, label %bb.v, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i
  %.08.i = phi i32 [ %i.ha, %.lr.ph.i ], [ %i.ir, %bb.u ] ; 2 uses
  %i.hh = zext i32 %.08.i to i64
  %i.hi = load ptr, ptr %i.fo, align 8, !tbaa !77
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !16 ; 3 uses
  %i.hl = load i32, ptr %i.d, align 8, !tbaa !17
  call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure20removeFromInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i32 noundef %i.hl, i32 noundef %i.hk)
  %i.hm = zext i32 %i.hk to i64
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !77 ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !16 ; 2 uses
  %i.hq = load ptr, ptr %i.hf, align 8, !tbaa !179 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !16 ; 2 uses
  %i.ht = zext i32 %i.hp to i64
  %i.hu = load ptr, ptr %i.hd, align 8, !tbaa !77 ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ht
  store i32 %i.hs, ptr %i.hv, align 4, !tbaa !16
  %i.hw = zext i32 %i.hs to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hw
  store i32 %i.hp, ptr %i.hx, align 4, !tbaa !16
  %i.hy = ptrtoint ptr %i.hq to i64
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = lshr exact i64 %i.ia, 2
  %i.ic = trunc i64 %i.ib to i32
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ie
  store i32 %i.hk, ptr %i.if, align 4, !tbaa !16
  store i32 %i.id, ptr %i.ho, align 4, !tbaa !16
  %i.ig = load i32, ptr %i.hr, align 4, !tbaa !16 ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ih
  store i32 -1, ptr %i.ii, align 4, !tbaa !16
  %i.ij = load ptr, ptr %i.hg, align 8, !tbaa !83
  %i.ik = lshr i32 %i.ig, 6
  %.zext.i.i.i.i = zext nneg i32 %i.ik to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.zext.i.i.i.i ; 2 uses
  %i.im = and i64 %i.ih, 63
  %i.in = shl nuw i64 1, %i.im
  %i.io = xor i64 %i.in, -1
  %i.ip = load i64, ptr %i.il, align 8, !tbaa !72
  %i.iq = and i64 %i.ip, %i.io
  store i64 %i.iq, ptr %i.il, align 8, !tbaa !72
  store ptr %i.hr, ptr %i.hf, align 8, !tbaa !181
  %i.ir = add i32 %.08.i, 1                       ; 2 uses
  %.not.i66 = icmp eq i32 %i.ir, %i.fn
  br i1 %.not.i66, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit, label %bb.u, !llvm.loop !479

_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit: ; preds = %bb.u
  %i.is = call noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD15quickExplainRecEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, i32 noundef %i.ha, i32 noundef %i.fn)
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit
  %.047 = phi i32 [ %i.is, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit ], [ %i.fn, %_ZNSt6vectorIjSaIjEE5clearEv.exit ] ; 6 uses
  %i.it = sub i32 %.047, %i.ha                    ; 3 uses
  %.not.i67 = icmp eq i32 %.047, %i.ha
  br i1 %.not.i67, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.v
  %i.iu = load ptr, ptr %i.fo, align 8, !tbaa !77 ; 12 uses
  %wide.trip.count.i = zext i32 %i.it to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %i.it, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i68
  %i.iv = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = sub i32 -2, %1
  %i.iy = icmp ult i32 %i.ix, %i.iw
  %3 = trunc i64 %i.iv to i32
  %i.iz = xor i32 %i.ha, -1
  %i.ja = icmp ult i32 %i.iz, %3
  %i.jb = icmp ugt i64 %i.iv, 4294967295
  %i.jc = or i1 %i.ja, %i.jb
  %i.jd = or i1 %i.iy, %i.jc
  br i1 %i.jd, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.je = zext i32 %i.gx to i64
  %i.jf = shl nuw nsw i64 %i.je, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.iu, i64 %i.jf
  %i.jg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.jh = getelementptr i8, ptr %i.iu, i64 %i.jg
  %scevgep109.a = getelementptr i8, ptr %i.jh, i64 %i.jf
  %i.ji = zext i32 %i.ha to i64
  %i.jj = shl nuw nsw i64 %i.ji, 2                ; 2 uses
  %scevgep110.a = getelementptr i8, ptr %i.iu, i64 %i.jj
  %i.jk = getelementptr i8, ptr %i.iu, i64 %i.jg
  %scevgep111 = getelementptr i8, ptr %i.jk, i64 %i.jj
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %scevgep110.a, %scevgep109.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jl = trunc nuw i64 %index to i32             ; 2 uses
  %i.jm = add i32 %i.gx, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jn ; 3 uses
  %i.jp = add i32 %i.ha, %i.jl
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jq ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jo, align 4, !tbaa !16, !alias.scope !490, !noalias !493
  %wide.load112.a = load <4 x i32>, ptr %i.js, align 4, !tbaa !16, !alias.scope !490, !noalias !493
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %wide.load113.a = load <4 x i32>, ptr %i.jr, align 4, !tbaa !16, !alias.scope !493
  %wide.load114 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !16, !alias.scope !493
  store <4 x i32> %wide.load113.a, ptr %i.jo, align 4, !tbaa !16, !alias.scope !490, !noalias !493
  store <4 x i32> %wide.load114, ptr %i.js, align 4, !tbaa !16, !alias.scope !490, !noalias !493
  store <4 x i32> %wide.load, ptr %i.jr, align 4, !tbaa !16, !alias.scope !493
  store <4 x i32> %wide.load112.a, ptr %i.jt, align 4, !tbaa !16, !alias.scope !493
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i68, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i68 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jv = trunc nuw i64 %indvars.iv.i.ph to i32   ; 2 uses
  %i.jw = add i32 %i.gx, %i.jv
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jx ; 2 uses
  %i.jz = add i32 %i.ha, %i.jv
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.jy, align 4, !tbaa !16
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !16
  store i32 %i.kd, ptr %i.jy, align 4, !tbaa !16
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !16
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ke = add nsw i64 %wide.trip.count.i, -1
  %i.kf = icmp eq i64 %indvars.iv.i.ph, %i.ke
  br i1 %i.kf, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.kg = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.kh = add i32 %i.gx, %i.kg
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ki ; 2 uses
  %i.kk = add i32 %i.ha, %i.kg
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.kj, align 4, !tbaa !16
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !16
  store i32 %i.ko, ptr %i.kj, align 4, !tbaa !16
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !16
  %i.kp = trunc i64 %indvars.iv.i to i32
  %i.kq = add i32 %i.kp, 1                        ; 2 uses
  %i.kr = add i32 %i.gx, %i.kq
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ks ; 2 uses
  %i.ku = add i32 %i.ha, %i.kq
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.kv ; 2 uses
  %i.kx = load i32, ptr %i.kt, align 4, !tbaa !16
  %i.ky = load i32, ptr %i.kw, align 4, !tbaa !16
  store i32 %i.ky, ptr %i.kt, align 4, !tbaa !16
  store i32 %i.kx, ptr %i.kw, align 4, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit, label %scalar.ph, !llvm.loop !496

_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.v
  %i.kz = add i32 %i.it, %i.gx                    ; 3 uses
  %i.la = icmp eq i32 %i.kz, %.047
  br i1 %i.la, label %bb.x, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i70
  %.08.i71 = phi i32 [ %i.kz, %.lr.ph.i70 ], [ %i.mq, %bb.w ] ; 2 uses
  %i.lg = zext i32 %.08.i71 to i64
  %i.lh = load ptr, ptr %i.fo, align 8, !tbaa !77
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !16 ; 3 uses
  %i.lk = load i32, ptr %i.d, align 8, !tbaa !17
  call void @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure20removeFromInfeasFuncERNS0_9TimerStatEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 noundef %i.lk, i32 noundef %i.lj)
  %i.ll = zext i32 %i.lj to i64
  %i.lm = load ptr, ptr %i.ld, align 8, !tbaa !77 ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !16 ; 2 uses
  %i.lp = load ptr, ptr %i.le, align 8, !tbaa !179 ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -4 ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !16 ; 2 uses
  %i.ls = zext i32 %i.lo to i64
  %i.lt = load ptr, ptr %i.lc, align 8, !tbaa !77 ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.ls
  store i32 %i.lr, ptr %i.lu, align 4, !tbaa !16
  %i.lv = zext i32 %i.lr to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lv
  store i32 %i.lo, ptr %i.lw, align 4, !tbaa !16
  %i.lx = ptrtoint ptr %i.lp to i64
  %i.ly = ptrtoint ptr %i.lt to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 2
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = add i32 %i.mb, -1                       ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.md
  store i32 %i.lj, ptr %i.me, align 4, !tbaa !16
  store i32 %i.mc, ptr %i.ln, align 4, !tbaa !16
  %i.mf = load i32, ptr %i.lq, align 4, !tbaa !16 ; 2 uses
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.mg
  store i32 -1, ptr %i.mh, align 4, !tbaa !16
  %i.mi = load ptr, ptr %i.lf, align 8, !tbaa !83
  %i.mj = lshr i32 %i.mf, 6
  %.zext.i.i.i.i72 = zext nneg i32 %i.mj to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %.zext.i.i.i.i72 ; 2 uses
  %i.ml = and i64 %i.mg, 63
  %i.mm = shl nuw i64 1, %i.ml
  %i.mn = xor i64 %i.mm, -1
  %i.mo = load i64, ptr %i.mk, align 8, !tbaa !72
  %i.mp = and i64 %i.mo, %i.mn
  store i64 %i.mp, ptr %i.mk, align 8, !tbaa !72
  store ptr %i.lq, ptr %i.le, align 8, !tbaa !181
  %i.mq = add i32 %.08.i71, 1                     ; 2 uses
  %.not.i73 = icmp eq i32 %i.mq, %.047
  br i1 %.not.i73, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit74, label %bb.w, !llvm.loop !479

_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit74: ; preds = %bb.w
  %i.mr = call noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD15quickExplainRecEjj(ptr noundef nonnull align 8 dereferenceable(800) %0, i32 noundef %i.kz, i32 noundef %.047)
  br label %bb.x

bb.x:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit74, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit, %bb.b
  %.046 = phi i32 [ %1, %bb.b ], [ %i.mr, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD13qeRemoveRangeEjj.exit74 ], [ %.047, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11qeSwapRangeEjjj.exit ]
  ret i32 %.046
}

declare noundef ptr @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule16selectSlackEntryEjb(ptr noundef nonnull align 8 dereferenceable(456), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure29constructInfeasiblityFunctionERNS0_9TimerStatEj(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure18find_basic_in_sgnsERKSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEENS4_23ArithVarIntPairHashFuncESt8equal_toIS7_ESaIS6_IKS7_SA_EEEjiRKNS0_8DenseSetEb(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(88), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD12quickExplainEv(ptr noundef nonnull align 8 dereferenceable(800) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !181
end_hunk_1

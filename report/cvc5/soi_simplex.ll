inline.NumInlined: 1924
inline.NumDeleted: 789
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11SOIConflictEv:bb.a
bb.h:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ah
}

declare noundef i32 @_ZN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure29constructInfeasiblityFunctionERNS0_9TimerStatE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8soiRoundEv(ptr noundef nonnull align 8 dereferenceable(800) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::theory::arith::linear::UpdateInfo", align 8 ; 14 uses
  %i.a = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD22degeneratePivotsInARowEv(ptr noundef nonnull align 8 dereferenceable(800) %0)
  %i.b = icmp ugt i32 %i.a, 99
  %. = select i1 %i.b, i64 ptrtoint (ptr @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb0EEEbRKNS3_10UpdateInfoES8_ to i64), i64 ptrtoint (ptr @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb1EEEbRKNS3_10UpdateInfoES8_ to i64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD12selectUpdateEMNS3_20LinearEqualityModuleEKFbRKNS3_10UpdateInfoES8_E(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::arith::linear::UpdateInfo") align 8 %1, ptr noundef nonnull align 8 dereferenceable(800) %0, i64 %., i64 0)
  %i.c = load i32, ptr %1, align 8, !tbaa !421
  %i.d = load i32, ptr @_ZN4cvc58internal6theory5arith6linear17ARITHVAR_SENTINELE, align 4, !tbaa !16
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD11SOIConflictEv(ptr noundef nonnull align 8 dereferenceable(800) %0)
          to label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !436  ; 4 uses
  %i.j = icmp eq i32 %i.i, 4
  %.0.i = select i1 %i.j, i32 6, i32 %i.i         ; 5 uses
  invoke void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD15updateAndSignalERKNS3_10UpdateInfoE(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef nonnull align 8 dereferenceable(204) %1)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !64   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65
  %i.q = icmp eq i32 %.0.i, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !183  ; 2 uses
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %spec.store.select.i = select i1 %i.u, i32 %i.s, i32 %i.t
  store i32 %spec.store.select.i, ptr %i.r, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not.i14 = icmp eq i32 %.0.i, 5
  br i1 %.not.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.v, align 4, !tbaa !183
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %.0.i, ptr %i.o, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.w = icmp slt i32 %.0.i, 3
  br i1 %i.w, label %bb.m, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.z, align 8, !tbaa !179 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %.promoted.i.i
  br i1 %i.aa, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.af = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ag, %bb.n ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  store i32 -1, ptr %i.aj, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  store i32 0, ptr %i.ak, align 4, !tbaa !16
  %i.al = icmp eq ptr %i.y, %i.ag
  br i1 %i.al, label %._crit_edge.i.i, label %bb.n, !llvm.loop !186

._crit_edge.i.i:                                  ; preds = %bb.n
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !181
  br label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit

bb.o:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.l, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.i, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %._crit_edge.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !437, !range !416, !noundef !177
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !437
  br i1 %i.aq, label %bb.p, label %_ZNSt14_Optional_baseIN4cvc58internal13DeltaRationalELb0ELb0EED2Ev.exit.i

bb.p:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i.i:  ; preds = %bb.p
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(72) %i.an)
          to label %_ZNSt14_Optional_baseIN4cvc58internal13DeltaRationalELb0ELb0EED2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #27
  unreachable

_ZNSt14_Optional_baseIN4cvc58internal13DeltaRationalELb0ELb0EED2Ev.exit.i: ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i.i, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD8logPivotENS3_18WitnessImprovementE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !437, !range !416, !noundef !177
  %i.az = trunc nuw i8 %i.ay to i1
  store i8 0, ptr %i.ax, align 8, !tbaa !437
  br i1 %i.az, label %bb.s, label %_ZN4cvc58internal6theory5arith6linear10UpdateInfoD2Ev.exit

bb.s:                                             ; preds = %_ZNSt14_Optional_baseIN4cvc58internal13DeltaRationalELb0ELb0EED2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i1.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #27
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i1.i: ; preds = %bb.s
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %_ZN4cvc58internal6theory5arith6linear10UpdateInfoD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i1.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #27
  unreachable

_ZN4cvc58internal6theory5arith6linear10UpdateInfoD2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4cvc58internal13DeltaRationalELb0ELb0EED2Ev.exit.i, %_ZN4cvc58internal8RationalD2Ev.exit.i.i.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %.0

bb.v:                                             ; preds = %bb.o, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.am, %bb.o ]
  call void @_ZN4cvc58internal6theory5arith6linear10UpdateInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb0EEEbRKNS3_10UpdateInfoES8_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 5 uses
  %4 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !436  ; 2 uses
  %i.c = icmp eq i32 %i.b, 4
  %.0.i = select i1 %i.c, i32 5, i32 %i.b         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.e = load i32, ptr %i.d, align 8, !tbaa !436  ; 2 uses
  %i.f = icmp eq i32 %i.e, 4
  %.0.i26 = select i1 %i.f, i32 5, i32 %i.e       ; 2 uses
  %i.g = icmp eq i32 %.0.i, %.0.i26
  br i1 %i.g, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  switch i32 %.0.i, label %bb.ae [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.l
    i32 5, label %bb.o
    i32 6, label %bb.w
    i32 7, label %bb.z
    i32 4, label %bb.aa
    i32 3, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.i = load i32, ptr %1, align 8, !tbaa !421
  %i.j = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.h, i32 noundef %i.i)
  %i.k = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.l = load i32, ptr %2, align 8, !tbaa !421
  %i.m = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.k, i32 noundef %i.l)
  %i.n = xor i1 %i.j, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.q = load i32, ptr %1, align 8, !tbaa !421
  %i.r = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.p, i32 noundef %i.q)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i8, ptr %i.s, align 8, !tbaa !439, !range !416, !noundef !177
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.y = load i8, ptr %i.x, align 8, !tbaa !439, !range !416, !noundef !177
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28, label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28: ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 2 uses
  %i.ac = icmp eq i32 %i.w, %i.ab
  br i1 %i.ac, label %bb.i, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32

bb.i:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28
  %i.ad = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ae = load i32, ptr %1, align 8, !tbaa !421
  %i.af = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ad, i32 noundef %i.ae)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ah = load i32, ptr %2, align 8, !tbaa !421
  %i.ai = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ag, i32 noundef %i.ah)
  %i.aj = xor i1 %i.af, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.am = load i32, ptr %1, align 8, !tbaa !421
  %i.an = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.al, i32 noundef %i.am)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32: ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28
  %i.ao = icmp sgt i32 %i.w, %i.ab
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.l:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.aq = load i32, ptr %1, align 8, !tbaa !421
  %i.ar = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ap, i32 noundef %i.aq)
  %i.as = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.at = load i32, ptr %2, align 8, !tbaa !421
  %i.au = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.as, i32 noundef %i.at)
  %i.av = xor i1 %i.ar, %i.au
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ay = load i32, ptr %1, align 8, !tbaa !421
  %i.az = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ax, i32 noundef %i.ay)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %1, align 8, !tbaa !421   ; 2 uses
  %i.bb = load i32, ptr %2, align 8, !tbaa !421   ; 2 uses
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !437, !range !416, !noundef !177
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i: ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !200 ; 2 uses
  %i.bi = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 0)
  %i.bj = icmp eq i32 %i.bh, 0
  br i1 %i.bj, label %bb.r, label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i

bb.r:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !200
  %i.bm = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bl, i32 0)
  br label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i

_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i:   ; preds = %bb.r, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i
  %.0.i.i = phi i32 [ %i.bm, %bb.r ], [ %i.bi, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i ] ; 2 uses
  %i.bn = icmp eq i32 %.0.i.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !437, !range !416, !noundef !177
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i: ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !200 ; 2 uses
  %i.bt = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bs, i32 0)
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %bb.t, label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i

bb.t:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !200
  %i.bx = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bw, i32 0)
  br label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i

_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i: ; preds = %bb.t, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i
  %.0.i18.i = phi i32 [ %i.bx, %bb.t ], [ %i.bt, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i ] ; 2 uses
  %i.by = icmp eq i32 %.0.i18.i, 0                ; 2 uses
  %or.cond.i = or i1 %i.bn, %i.by
  %i.bz = or i32 %.0.i18.i, %.0.i.i
  %or.cond3.i = icmp ne i32 %i.bz, 0
  %or.cond16.not.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond16.not.i, label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i
  %i.ca = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear10UpdateInfo7leavingEv(ptr noundef nonnull align 8 dereferenceable(204) %1)
  %i.cb = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear10UpdateInfo7leavingEv(ptr noundef nonnull align 8 dereferenceable(204) %2)
  %i.cc = icmp uge i32 %i.ca, %i.cb
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.v:                                             ; preds = %bb.o
  %i.cd = icmp ugt i32 %i.ba, %i.bb
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.cf = load i32, ptr %1, align 8, !tbaa !421
  %i.cg = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ce, i32 noundef %i.cf)
  %i.ch = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ci = load i32, ptr %2, align 8, !tbaa !421
  %i.cj = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ch, i32 noundef %i.ci)
  %i.ck = xor i1 %i.cg, %i.cj
  br i1 %i.ck, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.y:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.cn = load i32, ptr %1, align 8, !tbaa !421
  %i.co = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.cm, i32 noundef %i.cn)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.z:                                             ; preds = %bb.b
  %i.cp = load i32, ptr %1, align 8, !tbaa !421
  %i.cq = load i32, ptr %2, align 8, !tbaa !421
  %i.cr = icmp uge i32 %i.cp, %i.cq
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.aa:                                            ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb0EEEbRKNS3_10UpdateInfoES8_, ptr noundef nonnull @.str.68, i32 noundef 465)
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.22)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #27
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #27
  unreachable

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb0EEEbRKNS3_10UpdateInfoES8_, ptr noundef nonnull @.str.68, i32 noundef 467)
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.22)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #27
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #27
  unreachable

bb.ai:                                            ; preds = %bb.a
  %i.cy = icmp sgt i32 %.0.i, %.0.i26
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit: ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.e, %bb.d, %bb.ai, %bb.z, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32
  %.0 = phi i1 [ %i.cy, %bb.ai ], [ %i.r, %bb.e ], [ %i.ao, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32 ], [ %i.an, %bb.k ], [ %i.az, %bb.n ], [ %i.by, %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i ], [ %i.cr, %bb.z ], [ %i.o, %bb.d ], [ %i.ak, %bb.j ], [ %i.aw, %bb.m ], [ %i.cd, %bb.v ], [ %i.cc, %bb.u ], [ %i.cl, %bb.x ], [ %i.co, %bb.y ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb1EEEbRKNS3_10UpdateInfoES8_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 5 uses
  %4 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !436  ; 2 uses
  %i.c = icmp eq i32 %i.b, 4
  %.0.i = select i1 %i.c, i32 6, i32 %i.b         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.e = load i32, ptr %i.d, align 8, !tbaa !436  ; 2 uses
  %i.f = icmp eq i32 %i.e, 4
  %.0.i26 = select i1 %i.f, i32 6, i32 %i.e       ; 2 uses
  %i.g = icmp eq i32 %.0.i, %.0.i26
  br i1 %i.g, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  switch i32 %.0.i, label %bb.ae [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.l
    i32 5, label %bb.o
    i32 6, label %bb.w
    i32 7, label %bb.z
    i32 4, label %bb.aa
    i32 3, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.i = load i32, ptr %1, align 8, !tbaa !421
  %i.j = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.h, i32 noundef %i.i)
  %i.k = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.l = load i32, ptr %2, align 8, !tbaa !421
  %i.m = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.k, i32 noundef %i.l)
  %i.n = xor i1 %i.j, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.q = load i32, ptr %1, align 8, !tbaa !421
  %i.r = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.p, i32 noundef %i.q)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i8, ptr %i.s, align 8, !tbaa !439, !range !416, !noundef !177
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.y = load i8, ptr %i.x, align 8, !tbaa !439, !range !416, !noundef !177
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28, label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28: ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 2 uses
  %i.ac = icmp eq i32 %i.w, %i.ab
  br i1 %i.ac, label %bb.i, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32

bb.i:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28
  %i.ad = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ae = load i32, ptr %1, align 8, !tbaa !421
  %i.af = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ad, i32 noundef %i.ae)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ah = load i32, ptr %2, align 8, !tbaa !421
  %i.ai = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ag, i32 noundef %i.ah)
  %i.aj = xor i1 %i.af, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.am = load i32, ptr %1, align 8, !tbaa !421
  %i.an = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.al, i32 noundef %i.am)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32: ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit28
  %i.ao = icmp sgt i32 %i.w, %i.ab
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.l:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.aq = load i32, ptr %1, align 8, !tbaa !421
  %i.ar = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ap, i32 noundef %i.aq)
  %i.as = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.at = load i32, ptr %2, align 8, !tbaa !421
  %i.au = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.as, i32 noundef %i.at)
  %i.av = xor i1 %i.ar, %i.au
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ay = load i32, ptr %1, align 8, !tbaa !421
  %i.az = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ax, i32 noundef %i.ay)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %1, align 8, !tbaa !421   ; 2 uses
  %i.bb = load i32, ptr %2, align 8, !tbaa !421   ; 2 uses
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !437, !range !416, !noundef !177
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i: ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !200 ; 2 uses
  %i.bi = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bh, i32 0)
  %i.bj = icmp eq i32 %i.bh, 0
  br i1 %i.bj, label %bb.r, label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i

bb.r:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !200
  %i.bm = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bl, i32 0)
  br label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i

_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i:   ; preds = %bb.r, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i
  %.0.i.i = phi i32 [ %i.bm, %bb.r ], [ %i.bi, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit.i ] ; 2 uses
  %i.bn = icmp eq i32 %.0.i.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !437, !range !416, !noundef !177
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i: ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !200 ; 2 uses
  %i.bt = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bs, i32 0)
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %bb.t, label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i

bb.t:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !200
  %i.bx = tail call noundef i32 @llvm.scmp.i32.i32(i32 %i.bw, i32 0)
  br label %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i

_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i: ; preds = %bb.t, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i
  %.0.i18.i = phi i32 [ %i.bx, %bb.t ], [ %i.bt, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo13nonbasicDeltaEv.exit17.i ] ; 2 uses
  %i.by = icmp eq i32 %.0.i18.i, 0                ; 2 uses
  %or.cond.i = or i1 %i.bn, %i.by
  %i.bz = or i32 %.0.i18.i, %.0.i.i
  %or.cond3.i = icmp ne i32 %i.bz, 0
  %or.cond16.not.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond16.not.i, label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i
  %i.ca = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear10UpdateInfo7leavingEv(ptr noundef nonnull align 8 dereferenceable(204) %1)
  %i.cb = tail call noundef i32 @_ZNK4cvc58internal6theory5arith6linear10UpdateInfo7leavingEv(ptr noundef nonnull align 8 dereferenceable(204) %2)
  %i.cc = icmp uge i32 %i.ca, %i.cb
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.v:                                             ; preds = %bb.o
  %i.cd = icmp ugt i32 %i.ba, %i.bb
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.cf = load i32, ptr %1, align 8, !tbaa !421
  %i.cg = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ce, i32 noundef %i.cf)
  %i.ch = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.ci = load i32, ptr %2, align 8, !tbaa !421
  %i.cj = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.ch, i32 noundef %i.ci)
  %i.ck = xor i1 %i.cg, %i.cj
  br i1 %i.ck, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule12preferFrozenERKNS3_10UpdateInfoES7_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull align 8 dereferenceable(204) %2)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.y:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %0, align 8, !tbaa !523, !nonnull !177, !align !178
  %i.cn = load i32, ptr %1, align 8, !tbaa !421
  %i.co = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory5arith6linear14ArithVariables14hasEitherBoundEj(ptr noundef nonnull align 8 dereferenceable(568) %i.cm, i32 noundef %i.cn)
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.z:                                             ; preds = %bb.b
  %i.cp = load i32, ptr %1, align 8, !tbaa !421
  %i.cq = load i32, ptr %2, align 8, !tbaa !421
  %i.cr = icmp uge i32 %i.cp, %i.cq
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

bb.aa:                                            ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb1EEEbRKNS3_10UpdateInfoES8_, ptr noundef nonnull @.str.68, i32 noundef 465)
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.22)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #27
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #27
  unreachable

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule13preferWitnessILb1EEEbRKNS3_10UpdateInfoES8_, ptr noundef nonnull @.str.68, i32 noundef 467)
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.22)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #27
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #27
  unreachable

bb.ai:                                            ; preds = %bb.a
  %i.cy = icmp sgt i32 %.0.i, %.0.i26
  br label %_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit

_ZNK4cvc58internal6theory5arith6linear20LinearEqualityModule18preferNeitherBoundERKNS3_10UpdateInfoES7_.exit: ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.e, %bb.d, %bb.ai, %bb.z, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32
  %.0 = phi i1 [ %i.cy, %bb.ai ], [ %i.r, %bb.e ], [ %i.ao, %_ZNK4cvc58internal6theory5arith6linear10UpdateInfo12errorsChangeEv.exit32 ], [ %i.an, %bb.k ], [ %i.az, %bb.n ], [ %i.by, %_ZNK4cvc58internal13DeltaRational3sgnEv.exit19.i ], [ %i.cr, %bb.z ], [ %i.o, %bb.d ], [ %i.ak, %bb.j ], [ %i.aw, %bb.m ], [ %i.cd, %bb.v ], [ %i.cc, %bb.u ], [ %i.cl, %bb.x ], [ %i.co, %bb.y ]
  ret i1 %.0
}

declare void @_ZN4cvc58internal9CodeTimerC1ERNS0_9TimerStatEb(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal9CodeTimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPDD2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPDE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.e to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.f, align 8
  br label %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit

_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i ], [ %i.i, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit ] ; 4 uses
  %i.j = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #25
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !81

_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IjiESt6vectorIjSaIjEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit.i.i.i.i, %_ZN4cvc58internal6theory5arith6linear23SumOfInfeasibilitiesSPD10StatisticsD2Ev.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !67
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #25
  br label %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit

_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt4pairIjiES0_IKS1_St6vectorIjSaIjEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt13unordered_mapISt4pairIjiESt6vectorIjSaIjEEN4cvc58internal6theory5arith6linear24SimplexDecisionProcedure23ArithVarIntPairHashFuncESt8equal_toIS1_ESaIS0_IKS1_S4_EEED2Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIjSaIjEED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3

_ZNSt6vectorIjSaIjEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i4, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ax
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.av) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.g, %_ZNSt6vectorIjSaIjEED2Ev.exit3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.h, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4cvc58internal8DenseSetD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #25
  br label %_ZN4cvc58internal8DenseSetD2Ev.exit

_ZN4cvc58internal8DenseSetD2Ev.exit:              ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 464
end_hunk_0

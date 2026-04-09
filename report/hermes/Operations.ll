inline.NumInlined: 2743
inline.NumDeleted: 1013
begin_hunk_0_@_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_:bb.a
  %.fr = freeze double %i.do                      ; 3 uses
  %i.dp = tail call double @llvm.fabs.f64(double %.fr) ; 4 uses
  %or.cond7.i = fcmp one double %i.dp, 0x7FF0000000000000
  %i.dq = tail call double @llvm.trunc.f64(double %i.dp)
  %i.dr = fcmp oeq double %i.dq, %i.dp
  %or.cond = and i1 %or.cond7.i, %i.dr
  br i1 %or.cond, label %bb.ad, label %.critedge35
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm16isIntegralNumberEd:bb.a
  br i1 %or.cond7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.trunc.f64(double %i.a)
  %i.c = fcmp oeq double %i.b, %i.a
  br label %bb.c

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm14numberToBigIntERNS0_7RuntimeEd:bb.a
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %or.cond7.i = fcmp one double %i.a, 0x7FF0000000000000
  %i.b = tail call double @llvm.trunc.f64(double %i.a)
  %i.c = fcmp oeq double %i.b, %i.a
  %or.cond = and i1 %or.cond7.i, %i.c
  br i1 %or.cond, label %bb.b, label %_ZN6hermes2vm16isIntegralNumberEd.exit.thread
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm14numberToBigIntERNS0_7RuntimeEd:bb.a
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
end_hunk_3

inline.NumInlined: 564
inline.NumDeleted: 131
begin_hunk_0_@_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ak = call noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %6) #21 ; 3 uses
  %i.al = call double @llvm.floor.f64(double %i.ak)
  %i.am = fcmp oeq double %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode:bb.a
.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6icu_786number4impl6DecNumD2Ev.exit.us
  %.06983.us = phi double [ %i.cc, %_ZN6icu_786number4impl6DecNumD2Ev.exit.us ], [ %i.bj, %.lr.ph ] ; 4 uses
  %.382.us = phi i32 [ %.4.us, %_ZN6icu_786number4impl6DecNumD2Ev.exit.us ], [ %.070, %.lr.ph ] ; 3 uses
  %i.bs = call double @llvm.floor.f64(double %.06983.us)
  %i.bt = fcmp oeq double %.06983.us, %i.bs
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.us
end_hunk_1
begin_hunk_2_@_ZN6icu_7812FixedDecimalC2Edi:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = icmp eq i32 %2, 0
  %i.c = tail call double @llvm.floor.f64(double %1)
  %i.d = fcmp oeq double %1, %i.c
  %or.cond.i = or i1 %i.b, %i.d
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi
define dso_local noundef i64 @_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = tail call double @llvm.floor.f64(double %0)
  %i.c = fcmp oeq double %0, %i.b
  %or.cond = or i1 %i.a, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN6icu_7812FixedDecimal4initEd
define dso_local void @_ZN6icu_7812FixedDecimal4initEd(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 9 uses
  %i.c = tail call double @llvm.floor.f64(double %i.b) ; 2 uses
  %i.d = fcmp une double %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = fmul double %i.b, 1.000000e+01           ; 2 uses
  %i.f = tail call double @llvm.floor.f64(double %i.e)
  %i.g = fcmp une double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.c:                                             ; preds = %bb.b
  %i.h = fmul double %i.b, 1.000000e+02           ; 2 uses
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fcmp une double %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.d:                                             ; preds = %bb.c
  %i.k = fmul double %i.b, 1.000000e+03           ; 2 uses
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fcmp une double %i.k, %i.l
  br i1 %i.m, label %bb.e, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.e:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_ZN6icu_7812FixedDecimal4initEd:bb.a
_ZN6icu_7812FixedDecimal8decimalsEd.exit:         ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge.i
  %.3.i = phi i32 [ %i.t, %._crit_edge.i ], [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ] ; 7 uses
  %i.x = icmp eq i32 %.3.i, 0
  %i.y = call double @llvm.floor.f64(double %1)
  %i.z = fcmp oeq double %1, %i.y
  %or.cond.i = or i1 %i.z, %i.x
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.f

end_hunk_5
begin_hunk_6_@_ZN6icu_7812FixedDecimal4initEd:bb.a
  br i1 %.not19.i, label %bb.h, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fsub double %i.b, %i.c                  ; 4 uses
  switch i32 %.3.i, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
end_hunk_6
begin_hunk_7_@_ZN6icu_7812FixedDecimalC2ERKNS_13UnicodeStringER10UErrorCode:bb.a
  %i.db = xor i32 %i.bx, -1
  %i.dc = add i32 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = call double @llvm.floor.f64(double %i.by)
  %i.df = fcmp oeq double %i.by, %i.de
  %or.cond.i = or i1 %i.df, %i.dd
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.v

end_hunk_7
begin_hunk_8_@_ZN6icu_7812FixedDecimal18createWithExponentEdii
define dso_local void @_ZN6icu_7812FixedDecimal18createWithExponentEdii(ptr dead_on_unwind noalias writable writeonly sret(%"class.icu_78::FixedDecimal") align 8 captures(none) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call double @llvm.floor.f64(double %1)
  %i.c = fcmp oeq double %1, %i.b
  %or.cond.i = or i1 %i.a, %i.c
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

end_hunk_8
begin_hunk_9_@_ZN6icu_7812FixedDecimal8decimalsEd:bb.a
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %0) ; 6 uses
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fcmp une double %i.b, %i.c
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = fmul double %i.b, 1.000000e+01           ; 2 uses
  %i.f = tail call double @llvm.floor.f64(double %i.e)
  %i.g = fcmp une double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = fmul double %i.b, 1.000000e+02           ; 2 uses
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fcmp une double %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = fmul double %i.b, 1.000000e+03           ; 2 uses
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fcmp une double %i.k, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
end_hunk_9
begin_hunk_10_@uprv_isInfinite_78
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FixedDecimal9quickInitEd(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1) ; 11 uses
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul double %i.a, 1.000000e+01           ; 2 uses
  %i.e = tail call double @llvm.floor.f64(double %i.d)
  %i.f = fcmp une double %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = fmul double %i.a, 1.000000e+02           ; 2 uses
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fcmp une double %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul double %i.a, 1.000000e+03           ; 2 uses
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fcmp une double %i.j, %i.k
  br i1 %i.l, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.014.lcssa.ph = phi i32 [ 2, %bb.c ], [ 3, %bb.d ], [ 1, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = fcmp oeq double %i.a, %i.b
  br i1 %i.m, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_10
begin_hunk_11_@_ZN6icu_7812FixedDecimal9quickInitEd:bb.a
  br i1 %.not19.i, label %bb.h, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.g
  %i.p = fsub double %i.a, %i.b                   ; 4 uses
  switch i32 %.014.lcssa.ph, label %.unreachabledefault [
    i32 1, label %bb.i
    i32 2, label %bb.j
end_hunk_11
begin_hunk_12_@_ZNK6icu_786LocaleeqERKS0_

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

end_hunk_12

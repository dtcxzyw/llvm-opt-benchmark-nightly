inline.NumInlined: 120
inline.NumDeleted: 89
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal18ArrayBufferFromHexIKhEEbRKNS_4base6VectorIT_EEbPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 3 uses
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.a, label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.f
  %i.b = phi i64 [ %18, %bb.f ], [ 0, %.lr.ph ]
  %.01328.a = phi i32 [ %17, %bb.f ], [ 0, %.lr.ph ]
  %.01427.a = phi i64 [ %.115.us, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.val.a = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val.a, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 6 uses
  %i.g = add i8 %i.d, -48
  %or.cond.i.i.a = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i.a, label %7, label %bb.b

bb.b:                                             ; preds = %.lr.ph.a
  %4 = add i8 %i.d, -97
  %or.cond5.i.i.us = icmp ult i8 %4, 6
  br i1 %or.cond5.i.i.us, label %6, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i8 %i.d, -65
  %or.cond5.i.i.a = icmp ult i8 %i.h, 6
  br i1 %or.cond5.i.i.a, label %5, label %.critedge

5:                                                ; preds = %bb.c
  %.sroa.2.0.insert.ext.i20.i.i.us = add nuw nsw i8 %i.d, 9
  %.sroa.2.0.insert.shift.i21.i.i.us = and i8 %.sroa.2.0.insert.ext.i20.i.i.us, 31
  br label %bb.d

6:                                                ; preds = %bb.b
  %.sroa.2.0.insert.ext.i17.i.i.us = add nuw nsw i8 %i.d, 9
  %.sroa.2.0.insert.shift.i18.i.i.us = and i8 %.sroa.2.0.insert.ext.i17.i.i.us, 31
  br label %bb.d

7:                                                ; preds = %.lr.ph.a
  %.sroa.2.0.insert.shift.i.i.i.us = and i8 %i.d, 15
  br label %bb.d

bb.d:                                             ; preds = %7, %6, %5
  %.sroa.0.0.i.in.i.us = phi i8 [ %.sroa.2.0.insert.shift.i.i.i.us, %7 ], [ %.sroa.2.0.insert.shift.i18.i.i.us, %6 ], [ %.sroa.2.0.insert.shift.i21.i.i.us, %5 ]
  %8 = add i8 %i.f, -48
  %or.cond.i6.i.us = icmp ult i8 %8, 10
  br i1 %or.cond.i6.i.us, label %13, label %9

9:                                                ; preds = %bb.d
  %10 = add i8 %i.f, -97
  %or.cond5.i7.i.us = icmp ult i8 %10, 6
  br i1 %or.cond5.i7.i.us, label %12, label %bb.e

bb.e:                                             ; preds = %9
  %i.i = add i8 %i.f, -65
  %or.cond8.i.i.a = icmp ult i8 %i.i, 6
  br i1 %or.cond8.i.i.a, label %11, label %.critedge

11:                                               ; preds = %bb.e
  %.sroa.2.0.insert.ext.i20.i10.i.us = add nuw nsw i8 %i.f, 9
  %.sroa.2.0.insert.shift.i21.i11.i.us = and i8 %.sroa.2.0.insert.ext.i20.i10.i.us, 31
  br label %bb.f

12:                                               ; preds = %9
  %.sroa.2.0.insert.ext.i17.i13.i.us = add nuw nsw i8 %i.f, 9
  %.sroa.2.0.insert.shift.i18.i14.i.us = and i8 %.sroa.2.0.insert.ext.i17.i13.i.us, 31
  br label %bb.f

13:                                               ; preds = %bb.d
  %.sroa.2.0.insert.shift.i.i17.i.us = and i8 %i.f, 15
  br label %bb.f

bb.f:                                             ; preds = %13, %12, %11
  %.sroa.0.0.i9.in.i.us = phi i8 [ %.sroa.2.0.insert.shift.i.i17.i.us, %13 ], [ %.sroa.2.0.insert.shift.i18.i14.i.us, %12 ], [ %.sroa.2.0.insert.shift.i21.i11.i.us, %11 ]
  %14 = shl nuw i8 %.sroa.0.0.i.in.i.us, 4
  %15 = add nuw i8 %.sroa.0.0.i9.in.i.us, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427.a
  store atomic i8 %15, ptr %16 monotonic, align 1
  %.115.us = add i64 %.01427.a, 1
  %17 = add i32 %.01328.a, 2                      ; 2 uses
  %18 = zext i32 %17 to i64                       ; 2 uses
  %.not.us.not = icmp ugt i64 %i.a, %18
  br i1 %.not.us.not, label %.lr.ph.a, label %.critedge, !llvm.loop !5

_ZNK2v85MaybeIhE2ToEPh.exit5.i.a:                 ; preds = %.lr.ph, %bb.l
  %19 = phi i64 [ %i.n, %bb.l ], [ 0, %.lr.ph ]
  %.01328 = phi i32 [ %i.m, %bb.l ], [ 0, %.lr.ph ]
  %.01427 = phi i64 [ %.115, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.val = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds nuw i8, ptr %.val, i64 %19 ; 2 uses
  %21 = load i8, ptr %20, align 1                 ; 6 uses
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 1
  %23 = load i8, ptr %22, align 1                 ; 6 uses
  %i.j = add i8 %21, -48
  %or.cond.i6.i.a = icmp ult i8 %i.j, 10
  br i1 %or.cond.i6.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %.sroa.2.0.insert.shift.i.i.i = and i8 %21, 15
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.h:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %i.k = add i8 %21, -97
  %or.cond5.i7.i.a = icmp ult i8 %i.k, 6
  br i1 %or.cond5.i7.i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.insert.ext.i17.i.i = add nuw nsw i8 %21, 9
  %.sroa.2.0.insert.shift.i18.i.i = and i8 %.sroa.2.0.insert.ext.i17.i.i, 31
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.j:                                             ; preds = %bb.h
  %i.l = add i8 %21, -65
  %or.cond8.i8.i.a = icmp ult i8 %i.l, 6
  br i1 %or.cond8.i8.i.a, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.sroa.2.0.insert.ext.i20.i.i = add nuw nsw i8 %21, 9
  %.sroa.2.0.insert.shift.i21.i.i = and i8 %.sroa.2.0.insert.ext.i20.i.i, 31
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a: ; preds = %bb.k, %bb.i, %bb.g
  %.sroa.0.0.i.in.i = phi i8 [ %.sroa.2.0.insert.shift.i.i.i, %bb.g ], [ %.sroa.2.0.insert.shift.i18.i.i, %bb.i ], [ %.sroa.2.0.insert.shift.i21.i.i, %bb.k ]
  %24 = add i8 %23, -48
  %or.cond.i6.i = icmp ult i8 %24, 10
  br i1 %or.cond.i6.i, label %25, label %26

25:                                               ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  %.sroa.2.0.insert.shift.i.i17.i = and i8 %23, 15
  br label %bb.l

26:                                               ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  %27 = add i8 %23, -97
  %or.cond5.i7.i = icmp ult i8 %27, 6
  br i1 %or.cond5.i7.i, label %_ZNRSt8optionalIhE5valueEv.exit, label %28

_ZNRSt8optionalIhE5valueEv.exit:                  ; preds = %26
  %.sroa.2.0.insert.ext.i17.i13.i = add nuw nsw i8 %23, 9
  %.sroa.2.0.insert.shift.i18.i14.i = and i8 %.sroa.2.0.insert.ext.i17.i13.i, 31
  br label %bb.l

28:                                               ; preds = %26
  %29 = add i8 %23, -65
  %or.cond8.i8.i = icmp ult i8 %29, 6
  br i1 %or.cond8.i8.i, label %_ZNRSt8optionalIhE5valueEv.exit16, label %.critedge

_ZNRSt8optionalIhE5valueEv.exit16:                ; preds = %28
  %.sroa.2.0.insert.ext.i20.i10.i = add nuw nsw i8 %23, 9
  %.sroa.2.0.insert.shift.i21.i11.i = and i8 %.sroa.2.0.insert.ext.i20.i10.i, 31
  br label %bb.l

bb.l:                                             ; preds = %25, %_ZNRSt8optionalIhE5valueEv.exit, %_ZNRSt8optionalIhE5valueEv.exit16
  %.sroa.0.0.i9.in.i = phi i8 [ %.sroa.2.0.insert.shift.i.i17.i, %25 ], [ %.sroa.2.0.insert.shift.i18.i14.i, %_ZNRSt8optionalIhE5valueEv.exit ], [ %.sroa.2.0.insert.shift.i21.i11.i, %_ZNRSt8optionalIhE5valueEv.exit16 ]
  %30 = shl nuw i8 %.sroa.0.0.i.in.i, 4
  %31 = add nuw i8 %.sroa.0.0.i9.in.i, %30
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427
  store i8 %31, ptr %32, align 1
  %.115 = add i64 %.01427, 1
  %i.m = add i32 %.01328, 2                       ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.not = icmp ugt i64 %i.a, %i.n
  br i1 %.not.not, label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %bb.l, %bb.j, %28, %bb.f, %bb.c, %bb.e, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.f ], [ false, %28 ], [ false, %bb.j ], [ true, %bb.l ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal18ArrayBufferFromHexIKtEEbRKNS_4base6VectorIT_EEbPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 3 uses
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.a, label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.f
  %i.b = phi i64 [ %16, %bb.f ], [ 0, %.lr.ph ]
  %.01328.a = phi i32 [ %15, %bb.f ], [ 0, %.lr.ph ]
  %.01427.a = phi i64 [ %.115.us, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %.val.a = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %.val.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal18ArrayBufferFromHexIKtEEbRKNS_4base6VectorIT_EEbPhm:bb.a
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = add i16 %i.d, -48
  %or.cond.i.i.a = icmp ult i16 %i.g, 10
  br i1 %or.cond.i.i.a, label %9, label %4

4:                                                ; preds = %.lr.ph.a
  %5 = add i16 %i.d, -97
  %or.cond5.i.i.us = icmp ult i16 %5, 6
  br i1 %or.cond5.i.i.us, label %bb.b, label %6

6:                                                ; preds = %4
  %7 = add i16 %i.d, -65
  %or.cond8.i.i.us = icmp ult i16 %7, 6
  br i1 %or.cond8.i.i.us, label %8, label %.critedge

8:                                                ; preds = %6
  %.sroa.2.0.insert.ext.i20.i.i.us = add nuw nsw i16 %i.d, 9
  %.sroa.2.0.insert.shift.i21.i.i.us = and i16 %.sroa.2.0.insert.ext.i20.i.i.us, 31
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.us

bb.b:                                             ; preds = %4
  %.sroa.2.0.insert.ext.i17.i.i.us = add nuw nsw i16 %i.d, 9
  %.sroa.2.0.insert.shift.i.i.i.a = and i16 %.sroa.2.0.insert.ext.i17.i.i.us, 31
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.us

9:                                                ; preds = %.lr.ph.a
  %.sroa.2.0.insert.shift.i.i.i.us = and i16 %i.d, 15
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.us

_ZNK2v85MaybeIhE2ToEPh.exit5.i.us:                ; preds = %9, %bb.b, %8
  %.sroa.0.0.i.in.i.us = phi i16 [ %.sroa.2.0.insert.shift.i.i.i.us, %9 ], [ %.sroa.2.0.insert.shift.i.i.i.a, %bb.b ], [ %.sroa.2.0.insert.shift.i21.i.i.us, %8 ]
  %10 = add i16 %i.f, -48
  %or.cond.i6.i.us = icmp ult i16 %10, 10
  br i1 %or.cond.i6.i.us, label %13, label %11

11:                                               ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.us
  %12 = add i16 %i.f, -97
  %or.cond5.i7.i.us = icmp ult i16 %12, 6
  br i1 %or.cond5.i7.i.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %11
  %i.h = add i16 %i.f, -65
  %or.cond5.i.i.a = icmp ult i16 %i.h, 6
  br i1 %or.cond5.i.i.a, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0.insert.ext.i17.i.i.a = add nuw nsw i16 %i.f, 9
  %.sroa.2.0.insert.shift.i18.i.i.a = and i16 %.sroa.2.0.insert.ext.i17.i.i.a, 31
  br label %bb.f

bb.e:                                             ; preds = %11
  %i.i = add nuw nsw i16 %i.f, 9
  %.sroa.2.0.insert.shift.i18.i14.i.us = and i16 %i.i, 31
  br label %bb.f

13:                                               ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.us
  %.sroa.2.0.insert.shift.i.i17.i.us = and i16 %i.f, 15
  br label %bb.f

bb.f:                                             ; preds = %13, %bb.e, %bb.d
  %.sroa.0.0.i9.in.i.us = phi i16 [ %.sroa.2.0.insert.shift.i.i17.i.us, %13 ], [ %.sroa.2.0.insert.shift.i18.i14.i.us, %bb.e ], [ %.sroa.2.0.insert.shift.i18.i.i.a, %bb.d ]
  %i.j = shl nuw nsw i16 %.sroa.0.0.i.in.i.us, 4
  %.sroa.2.0.insert.ext.i20.i.i.a = add nuw nsw i16 %.sroa.0.0.i9.in.i.us, %i.j
  %.sroa.017.0.extract.trunc.us = trunc nuw i16 %.sroa.2.0.insert.ext.i20.i.i.a to i8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427.a
  store atomic i8 %.sroa.017.0.extract.trunc.us, ptr %14 monotonic, align 1
  %.115.us = add i64 %.01427.a, 1
  %15 = add i32 %.01328.a, 2                      ; 2 uses
  %16 = zext i32 %15 to i64                       ; 2 uses
  %.not.us.not = icmp ugt i64 %i.a, %16
  br i1 %.not.us.not, label %.lr.ph.a, label %.critedge, !llvm.loop !7

_ZNK2v85MaybeIhE2ToEPh.exit5.i.a:                 ; preds = %.lr.ph, %bb.l
  %17 = phi i64 [ %i.p, %bb.l ], [ 0, %.lr.ph ]
  %.01328 = phi i32 [ %i.o, %bb.l ], [ 0, %.lr.ph ]
  %.01427 = phi i64 [ %.115, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.val = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %17 ; 2 uses
  %19 = load i16, ptr %18, align 2                ; 6 uses
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 2
  %21 = load i16, ptr %20, align 2                ; 6 uses
  %i.k = add i16 %19, -48
  %or.cond.i6.i.a = icmp ult i16 %i.k, 10
  br i1 %or.cond.i6.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %.sroa.2.0.insert.shift.i.i17.i.a = and i16 %19, 15
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.h:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %i.l = add i16 %19, -97
  %or.cond5.i7.i.a = icmp ult i16 %i.l, 6
  br i1 %or.cond5.i7.i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.insert.ext.i17.i13.i.a = add nuw nsw i16 %19, 9
  %.sroa.2.0.insert.shift.i18.i14.i.a = and i16 %.sroa.2.0.insert.ext.i17.i13.i.a, 31
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.j:                                             ; preds = %bb.h
  %i.m = add i16 %19, -65
  %or.cond8.i8.i.a = icmp ult i16 %i.m, 6
  br i1 %or.cond8.i8.i.a, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.sroa.2.0.insert.ext.i20.i10.i.a = add nuw nsw i16 %19, 9
  %.sroa.2.0.insert.shift.i21.i11.i.a = and i16 %.sroa.2.0.insert.ext.i20.i10.i.a, 31
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a: ; preds = %bb.k, %bb.i, %bb.g
  %.sroa.0.0.i9.in.i.a = phi i16 [ %.sroa.2.0.insert.shift.i.i17.i.a, %bb.g ], [ %.sroa.2.0.insert.shift.i18.i14.i.a, %bb.i ], [ %.sroa.2.0.insert.shift.i21.i11.i.a, %bb.k ]
  %i.n = add i16 %21, -48
  %or.cond.i6.i = icmp ult i16 %i.n, 10
  br i1 %or.cond.i6.i, label %22, label %23

22:                                               ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  %.sroa.2.0.insert.shift.i.i17.i = and i16 %21, 15
  br label %bb.l

23:                                               ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  %24 = add i16 %21, -97
  %or.cond5.i7.i = icmp ult i16 %24, 6
  br i1 %or.cond5.i7.i, label %_ZNRSt8optionalIhE5valueEv.exit, label %25

_ZNRSt8optionalIhE5valueEv.exit:                  ; preds = %23
  %.sroa.2.0.insert.ext.i17.i13.i = add nuw nsw i16 %21, 9
  %.sroa.2.0.insert.shift.i18.i14.i = and i16 %.sroa.2.0.insert.ext.i17.i13.i, 31
  br label %bb.l

25:                                               ; preds = %23
  %26 = add i16 %21, -65
  %or.cond8.i8.i = icmp ult i16 %26, 6
  br i1 %or.cond8.i8.i, label %_ZNRSt8optionalIhE5valueEv.exit16, label %.critedge

_ZNRSt8optionalIhE5valueEv.exit16:                ; preds = %25
  %.sroa.2.0.insert.ext.i20.i10.i = add nuw nsw i16 %21, 9
  %.sroa.2.0.insert.shift.i21.i11.i = and i16 %.sroa.2.0.insert.ext.i20.i10.i, 31
  br label %bb.l

bb.l:                                             ; preds = %22, %_ZNRSt8optionalIhE5valueEv.exit, %_ZNRSt8optionalIhE5valueEv.exit16
  %.sroa.0.0.i9.in.i = phi i16 [ %.sroa.2.0.insert.shift.i.i17.i, %22 ], [ %.sroa.2.0.insert.shift.i18.i14.i, %_ZNRSt8optionalIhE5valueEv.exit ], [ %.sroa.2.0.insert.shift.i21.i11.i, %_ZNRSt8optionalIhE5valueEv.exit16 ]
  %27 = shl nuw nsw i16 %.sroa.0.0.i9.in.i.a, 4
  %28 = add nuw nsw i16 %.sroa.0.0.i9.in.i, %27
  %.sroa.017.0.extract.trunc = trunc nuw i16 %28 to i8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427
  store i8 %.sroa.017.0.extract.trunc, ptr %29, align 1
  %.115 = add i64 %.01427, 1
  %i.o = add i32 %.01328, 2                       ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not.not = icmp ugt i64 %i.a, %i.p
  br i1 %.not.not, label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %bb.l, %bb.j, %25, %bb.f, %6, %bb.c, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %6 ], [ true, %bb.f ], [ false, %25 ], [ false, %bb.j ], [ true, %bb.l ]
  ret i1 %.not.lcssa
}

end_hunk_1

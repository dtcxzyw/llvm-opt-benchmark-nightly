inline.NumInlined: 120
inline.NumDeleted: 89
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal18ArrayBufferFromHexIKhEEbRKNS_4base6VectorIT_EEbPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %.critedge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a, %bb.l
  %i.b = phi i64 [ %i.n, %bb.l ], [ 0, %bb.a ]
  %.01328.a = phi i32 [ %i.m, %bb.l ], [ 0, %bb.a ]
  %.01427.a = phi i64 [ %.115, %bb.l ], [ 0, %bb.a ] ; 2 uses
  %.val.a = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val.a, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 4 uses
  %4 = zext i8 %i.d to i16                        ; 3 uses
  %i.g = add i8 %i.d, -48
  %or.cond.i.i.a = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.a
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i16 %4, 8
  %.sroa.2.0.insert.shift.i.i.i = and i16 %.sroa.2.0.insert.ext.i.i.i, 3840
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

bb.c:                                             ; preds = %.lr.ph.a
  %i.h = add i8 %i.d, -97
  %or.cond5.i.i.a = icmp ult i8 %i.h, 6
  br i1 %or.cond5.i.i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %5 = shl nuw nsw i16 %4, 8
  %.sroa.2.0.insert.ext.i17.i.i = add nuw nsw i16 %5, 2304
  %.sroa.2.0.insert.shift.i18.i.i = and i16 %.sroa.2.0.insert.ext.i17.i.i, 7936
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

bb.e:                                             ; preds = %bb.c
  %i.i = add i8 %i.d, -65
  %or.cond8.i.i.a = icmp ult i8 %i.i, 6
  br i1 %or.cond8.i.i.a, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %6 = shl nuw nsw i16 %4, 8
  %.sroa.2.0.insert.ext.i20.i.i = add nuw nsw i16 %6, 2304
  %.sroa.2.0.insert.shift.i21.i.i = and i16 %.sroa.2.0.insert.ext.i20.i.i, 7936
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

_ZNK2v85MaybeIhE2ToEPh.exit5.i.a:                 ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.0.0.i.in.i = phi i16 [ %.sroa.2.0.insert.shift.i.i.i, %bb.b ], [ %.sroa.2.0.insert.shift.i18.i.i, %bb.d ], [ %.sroa.2.0.insert.shift.i21.i.i, %bb.f ]
  %7 = zext i8 %i.f to i16                        ; 3 uses
  %i.j = add i8 %i.f, -48
  %or.cond.i6.i.a = icmp ult i8 %i.j, 10
  br i1 %or.cond.i6.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %.sroa.2.0.insert.ext.i.i16.i = shl nuw nsw i16 %7, 8
  %.sroa.2.0.insert.shift.i.i17.i = and i16 %.sroa.2.0.insert.ext.i.i16.i, 3840
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.h:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %i.k = add i8 %i.f, -97
  %or.cond5.i7.i.a = icmp ult i8 %i.k, 6
  br i1 %or.cond5.i7.i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %8 = shl nuw nsw i16 %7, 8
  %.sroa.2.0.insert.ext.i17.i13.i = add nuw nsw i16 %8, 2304
  %.sroa.2.0.insert.shift.i18.i14.i = and i16 %.sroa.2.0.insert.ext.i17.i13.i, 7936
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.j:                                             ; preds = %bb.h
  %i.l = add i8 %i.f, -65
  %or.cond8.i8.i.a = icmp ult i8 %i.l, 6
  br i1 %or.cond8.i8.i.a, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %9 = shl nuw nsw i16 %7, 8
  %.sroa.2.0.insert.ext.i20.i10.i = add nuw nsw i16 %9, 2304
  %.sroa.2.0.insert.shift.i21.i11.i = and i16 %.sroa.2.0.insert.ext.i20.i10.i, 7936
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a: ; preds = %bb.g, %bb.i, %bb.k
  %.sroa.0.0.i9.in.i = phi i16 [ %.sroa.2.0.insert.shift.i.i17.i, %bb.g ], [ %.sroa.2.0.insert.shift.i18.i14.i, %bb.i ], [ %.sroa.2.0.insert.shift.i21.i11.i, %bb.k ]
  %.sroa.5.0.extract.shift.i = lshr exact i16 %.sroa.0.0.i9.in.i, 8
  %sh.diff.i = lshr exact i16 %.sroa.0.0.i.in.i, 4
  %10 = add nuw nsw i16 %.sroa.5.0.extract.shift.i, %sh.diff.i
  %.sroa.017.0.extract.trunc = trunc nuw i16 %10 to i8 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427.a ; 2 uses
  br i1 %1, label %_ZNRSt8optionalIhE5valueEv.exit, label %_ZNRSt8optionalIhE5valueEv.exit16

_ZNRSt8optionalIhE5valueEv.exit:                  ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  store atomic i8 %.sroa.017.0.extract.trunc, ptr %11 monotonic, align 1
  br label %bb.l

_ZNRSt8optionalIhE5valueEv.exit16:                ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKhEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  store i8 %.sroa.017.0.extract.trunc, ptr %11, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZNRSt8optionalIhE5valueEv.exit16, %_ZNRSt8optionalIhE5valueEv.exit
  %.115 = add i64 %.01427.a, 1
  %i.m = add i32 %.01328.a, 2                     ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.not = icmp ugt i64 %i.a, %i.n
  br i1 %.not.not, label %.lr.ph.a, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %bb.l, %bb.e, %bb.j, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.j ], [ false, %bb.e ], [ true, %bb.l ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN2v88internal18ArrayBufferFromHexIKtEEbRKNS_4base6VectorIT_EEbPhm(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %.critedge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a, %bb.l
  %i.b = phi i64 [ %i.p, %bb.l ], [ 0, %bb.a ]
  %.01328.a = phi i32 [ %i.o, %bb.l ], [ 0, %bb.a ]
  %.01427.a = phi i64 [ %.115, %bb.l ], [ 0, %bb.a ] ; 2 uses
  %.val.a = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %.val.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal18ArrayBufferFromHexIKtEEbRKNS_4base6VectorIT_EEbPhm:bb.a
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = add i16 %i.d, -48
  %or.cond.i.i.a = icmp ult i16 %i.g, 10
  br i1 %or.cond.i.i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.a
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i16 %i.d, 8
  %.sroa.2.0.insert.shift.i.i.i.a = and i16 %.sroa.2.0.insert.ext.i.i.i, 3840
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

bb.c:                                             ; preds = %.lr.ph.a
  %i.h = add i16 %i.d, -97
  %or.cond5.i.i.a = icmp ult i16 %i.h, 6
  br i1 %or.cond5.i.i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = shl nuw nsw i16 %i.d, 8
  %.sroa.2.0.insert.ext.i17.i.i.a = add nuw nsw i16 %4, 2304
  %.sroa.2.0.insert.shift.i18.i.i.a = and i16 %.sroa.2.0.insert.ext.i17.i.i.a, 7936
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

bb.e:                                             ; preds = %bb.c
  %i.i = add i16 %i.d, -65
  %or.cond8.i.i = icmp ult i16 %i.i, 6
  br i1 %or.cond8.i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw nsw i16 %i.d, 8
  %.sroa.2.0.insert.ext.i20.i.i.a = add nuw nsw i16 %i.j, 2304
  %.sroa.2.0.insert.shift.i21.i.i = and i16 %.sroa.2.0.insert.ext.i20.i.i.a, 7936
  br label %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a

_ZNK2v85MaybeIhE2ToEPh.exit5.i.a:                 ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.0.0.i.in.i = phi i16 [ %.sroa.2.0.insert.shift.i.i.i.a, %bb.b ], [ %.sroa.2.0.insert.shift.i18.i.i.a, %bb.d ], [ %.sroa.2.0.insert.shift.i21.i.i, %bb.f ]
  %i.k = add i16 %i.f, -48
  %or.cond.i6.i.a = icmp ult i16 %i.k, 10
  br i1 %or.cond.i6.i.a, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %.sroa.2.0.insert.ext.i.i16.i = shl nuw nsw i16 %i.f, 8
  %.sroa.2.0.insert.shift.i.i17.i.a = and i16 %.sroa.2.0.insert.ext.i.i16.i, 3840
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.h:                                             ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit5.i.a
  %i.l = add i16 %i.f, -97
  %or.cond5.i7.i.a = icmp ult i16 %i.l, 6
  br i1 %or.cond5.i7.i.a, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %5 = shl nuw nsw i16 %i.f, 8
  %.sroa.2.0.insert.ext.i17.i13.i.a = add nuw nsw i16 %5, 2304
  %.sroa.2.0.insert.shift.i18.i14.i.a = and i16 %.sroa.2.0.insert.ext.i17.i13.i.a, 7936
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

bb.j:                                             ; preds = %bb.h
  %i.m = add i16 %i.f, -65
  %or.cond8.i8.i.a = icmp ult i16 %i.m, 6
  br i1 %or.cond8.i8.i.a, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %6 = shl nuw nsw i16 %i.f, 8
  %.sroa.2.0.insert.ext.i20.i10.i.a = add nuw nsw i16 %6, 2304
  %.sroa.2.0.insert.shift.i21.i11.i.a = and i16 %.sroa.2.0.insert.ext.i20.i10.i.a, 7936
  br label %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a

_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a: ; preds = %bb.g, %bb.i, %bb.k
  %.sroa.0.0.i9.in.i.a = phi i16 [ %.sroa.2.0.insert.shift.i.i17.i.a, %bb.g ], [ %.sroa.2.0.insert.shift.i18.i14.i.a, %bb.i ], [ %.sroa.2.0.insert.shift.i21.i11.i.a, %bb.k ]
  %.sroa.5.0.extract.shift.i = lshr exact i16 %.sroa.0.0.i9.in.i.a, 8
  %sh.diff.i = lshr exact i16 %.sroa.0.0.i.in.i, 4
  %i.n = add nuw nsw i16 %.sroa.5.0.extract.shift.i, %sh.diff.i
  %.sroa.017.0.extract.trunc = trunc nuw i16 %i.n to i8 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %.01427.a ; 2 uses
  br i1 %1, label %_ZNRSt8optionalIhE5valueEv.exit, label %_ZNRSt8optionalIhE5valueEv.exit16

_ZNRSt8optionalIhE5valueEv.exit:                  ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  store atomic i8 %.sroa.017.0.extract.trunc, ptr %7 monotonic, align 1
  br label %bb.l

_ZNRSt8optionalIhE5valueEv.exit16:                ; preds = %_ZN2v88internal12_GLOBAL__N_124HandleRemainingHexValuesIKtEESt8optionalIhERKNS_4base6VectorIT_EEm.exit.a
  store i8 %.sroa.017.0.extract.trunc, ptr %7, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZNRSt8optionalIhE5valueEv.exit16, %_ZNRSt8optionalIhE5valueEv.exit
  %.115 = add i64 %.01427.a, 1
  %i.o = add i32 %.01328.a, 2                     ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not.not = icmp ugt i64 %i.a, %i.p
  br i1 %.not.not, label %.lr.ph.a, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %bb.l, %bb.e, %bb.j, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.j ], [ false, %bb.e ], [ true, %bb.l ]
  ret i1 %.not.lcssa
}

end_hunk_1

begin_hunk_0
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %0, i32 %1, i32 noundef %2, ptr noundef %i.a)
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 4 uses
  br i1 %i.b, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = bitcast double %i.c to i64               ; 12 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.g = shl i64 %i.d, 1
end_hunk_0
begin_hunk_1
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %3 = icmp eq i64 %i.d, -9223372036854775808
  br i1 %3, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i64 %i.d, -1
  %i.u = bitcast i64 %i.t to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

end_hunk_1
begin_hunk_2

bb.j:                                             ; preds = %bb.i
  %i.z = icmp slt i64 %i.d, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i64 %i.d, -1
  %i.ab = bitcast i64 %i.aa to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit
end_hunk_2
begin_hunk_3
  %i.ad = bitcast i64 %i.ac to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.a, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.1 = phi double [ %i.ad, %bb.l ], [ %i.c, %bb.i ], [ %i.c, %bb.b ], [ 0x7FF0000000000000, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.w, %bb.h ], [ %i.u, %bb.g ], [ %i.ab, %bb.k ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret double %.1
}
end_hunk_3
begin_hunk_4
  %.0 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.m, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.s, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.x = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, ptr noundef %i.a)
  %i.y = load double, ptr %i.a, align 8, !tbaa !7 ; 4 uses
  br i1 %i.x, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit
  %i.z = bitcast double %i.y to i64               ; 12 uses
  %i.aa = and i64 %i.z, 9218868437227405312
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = shl i64 %i.z, 1
end_hunk_4
begin_hunk_5
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %3 = icmp eq i64 %i.z, -9223372036854775808
  br i1 %3, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %i.z, -1
  %i.aq = bitcast i64 %i.ap to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

end_hunk_5
begin_hunk_6

bb.n:                                             ; preds = %bb.m
  %i.av = icmp slt i64 %i.z, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i64 %i.z, -1
  %i.ax = bitcast i64 %i.aw to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit
end_hunk_6
begin_hunk_7
  %i.az = bitcast i64 %i.ay to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit: ; preds = %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit, %bb.f, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p
  %.1.i = phi double [ %i.az, %bb.p ], [ %i.y, %bb.m ], [ %i.y, %bb.f ], [ 0x7FF0000000000000, %bb.h ], [ 0.000000e+00, %bb.j ], [ %i.as, %bb.l ], [ %i.aq, %bb.k ], [ %i.ax, %bb.o ], [ %i.y, %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret double %.1.i
end_hunk_7
begin_hunk_8
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %0, i32 %1, i32 noundef %2, ptr noundef %i.a)
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 5 uses
  %i.d = fcmp ult double %i.c, 0x47EFFFFFE0000000
  br i1 %i.d, label %bb.d, label %bb.b

end_hunk_8
begin_hunk_9
  br i1 %i.h, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit
  %i.i = bitcast double %i.c to i64               ; 8 uses
  %i.j = icmp eq i64 %i.i, 9218868437227405312
  br i1 %i.j, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit, label %bb.f

end_hunk_9
begin_hunk_10
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %3 = icmp eq i64 %i.i, -9223372036854775808
  br i1 %3, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.g
  %i.l = add nsw i64 %i.i, -1
  %i.m = bitcast i64 %i.l to double               ; 2 uses
  %i.n = icmp eq i64 %i.i, -4503599627370496
  br i1 %i.n, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit
end_hunk_10
begin_hunk_11
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52

_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52: ; preds = %bb.i, %bb.j, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread
  %.0.i497081 = phi double [ %.0.i4970, %bb.j ], [ %.0.i497082, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ %.0.i4970, %bb.i ] ; 4 uses
  %.0.i51 = phi float [ 0x7FF0000000000000, %bb.j ], [ %i.u, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ 0x47EFFFFFE0000000, %bb.i ] ; 6 uses
  %i.v = fcmp ult double %.0.i497081, 0x47EFFFFFE0000000
  br i1 %i.v, label %bb.m, label %bb.k
end_hunk_11
begin_hunk_12
  br i1 %i.b, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58, label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54
  %i.y = bitcast double %.0.i497081 to i64        ; 4 uses
  %i.z = icmp eq i64 %i.y, 9218868437227405312
  br i1 %i.z, label %.thread89, label %bb.o

end_hunk_12
begin_hunk_13
  br i1 %i.aa, label %bb.p, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56

bb.p:                                             ; preds = %bb.o
  %4 = icmp eq i64 %i.y, -9223372036854775808
  br i1 %4, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56: ; preds = %bb.o, %bb.p
end_hunk_13

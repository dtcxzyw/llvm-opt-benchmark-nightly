inline.NumInlined: 79
inline.NumDeleted: 30
begin_hunk_0_@_ZNK6icu_786number17FractionPrecision21withSignificantDigitsEii23UNumberRoundingPriority:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_786number9Precision28constructFractionSignificantERKNS0_17FractionPrecisionEii23UNumberRoundingPriorityb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %5 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx, i64 3, i1 false)
  %i.d = trunc i32 %2 to i16
  %i.e = trunc i32 %3 to i16
  store i32 4, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.d, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.e, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.a, ptr %.sroa.814.0..sroa_idx, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_ZNK6icu_786number17FractionPrecision13withMinDigitsEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 12), (24, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %2, -1
  %or.cond = icmp ult i32 %i.c, 999
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !47
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 21
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.8.0..sroa_idx.i, i64 3, i1 false)
  %i.f = trunc nuw nsw i32 %2 to i16
  store i32 4, ptr %0, align 8, !alias.scope !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8, !alias.scope !47
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 1, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !47
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.f, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !47
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !47
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.814.0..sroa_idx.i, align 4, !alias.scope !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.h, align 8, !alias.scope !47
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 9, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 65810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_ZNK6icu_786number17FractionPrecision13withMaxDigitsEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 12), (24, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %2, -1
  %or.cond = icmp ult i32 %i.c, 999
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !50
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 21
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.8.0..sroa_idx.i, i64 3, i1 false)
  %i.f = trunc nuw nsw i32 %2 to i16
  store i32 4, ptr %0, align 8, !alias.scope !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8, !alias.scope !50
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 1, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !50
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.f, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !50
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !50
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %.sroa.814.0..sroa_idx.i, align 4, !alias.scope !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.h, align 8, !alias.scope !50
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 9, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 65810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786number9Precision12withCurrencyERKNS_12CurrencyUnitER10UErrorCode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call double @ucurr_getRoundingIncrementForUsage_78(ptr noundef nonnull %i.c, i32 noundef %i.e, ptr noundef nonnull %3) #14 ; 3 uses
  %i.g = load i32, ptr %i.d, align 8
  %i.h = tail call i32 @ucurr_getDefaultFractionDigitsForUsage_78(ptr noundef nonnull %i.c, i32 noundef %i.g, ptr noundef nonnull %3) #14 ; 3 uses
  %i.i = fcmp une double %i.f, 0.000000e+00
  br i1 %i.i, label %bb.d, label %_ZN6icu_786number9Precision13fixedFractionEi.exit

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.j, label %_ZN6icu_786number9Precision18constructIncrementEms.exit.i, label %_ZN6icu_786number9Precision9incrementEd.exit

_ZN6icu_786number9Precision18constructIncrementEms.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !53
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %4) #14, !noalias !53
  %i.k = call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity11setToDoubleEd(ptr noundef nonnull align 8 dereferenceable(66) %4, double noundef %i.f) #14, !noalias !53 ; 0 uses
  call void @_ZN6icu_786number4impl15DecimalQuantity15roundToInfinityEv(ptr noundef nonnull align 8 dereferenceable(66) %4) #14, !noalias !53
  %i.l = call noundef i32 @_ZN6icu_786number4impl15DecimalQuantity17adjustToZeroScaleEv(ptr noundef nonnull align 8 dereferenceable(66) %4) #14, !noalias !53
  %i.m = call noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr noundef nonnull align 8 dereferenceable(66) %4, i1 noundef zeroext false) #14, !noalias !53 ; 3 uses
  %i.n = trunc i32 %i.l to i16                    ; 3 uses
  %switch.selectcmp.i = icmp eq i64 %i.m, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 7, i32 5
  %switch.selectcmp2.i = icmp eq i64 %i.m, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 6, i32 %switch.select.i
  %i.o = icmp sgt i16 %i.n, 0
  %i.p = sub i16 0, %i.n
  %i.q = select i1 %i.o, i16 0, i16 %i.p
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dereferenceable(66) %4) #14, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !53
  br label %_ZN6icu_786number9Precision9incrementEd.exit

_ZN6icu_786number9Precision9incrementEd.exit:     ; preds = %bb.d, %_ZN6icu_786number9Precision18constructIncrementEms.exit.i
  %.sroa.6.0 = phi i16 [ %i.n, %_ZN6icu_786number9Precision18constructIncrementEms.exit.i ], [ undef, %bb.d ]
  %.sroa.713.0 = phi i16 [ %i.q, %_ZN6icu_786number9Precision18constructIncrementEms.exit.i ], [ undef, %bb.d ]
  %.sink.i = phi i32 [ %switch.select3.i, %_ZN6icu_786number9Precision18constructIncrementEms.exit.i ], [ 9, %bb.d ]
  %.sroa.412.sroa.0.0.insert.insert = phi i64 [ %i.m, %_ZN6icu_786number9Precision18constructIncrementEms.exit.i ], [ 65810, %bb.d ]
  store i32 %.sink.i, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.412.sroa.0.0.insert.insert, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sroa.713.0, ptr %.sroa.713.0..sroa_idx, align 2
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.814.0..sroa_idx, align 4
  br label %bb.e

_ZN6icu_786number9Precision13fixedFractionEi.exit: ; preds = %bb.c
  %or.cond.i = icmp ult i32 %i.h, 1000            ; 2 uses
  %.sink.i8 = select i1 %or.cond.i, i32 2, i32 9
  store i32 %.sink.i8, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = shl nuw nsw i32 %i.h, 16
  %i.s = or i32 %i.r, %i.h
  %.sroa.49.sroa.0.0.insert.insert = select i1 %or.cond.i, i32 %i.s, i32 65810
  store i32 %.sroa.49.sroa.0.0.insert.insert, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 -1, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_786number9Precision13fixedFractionEi.exit, %_ZN6icu_786number9Precision9incrementEd.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.u, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

declare double @ucurr_getRoundingIncrementForUsage_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ucurr_getDefaultFractionDigitsForUsage_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786number17CurrencyPrecision12withCurrencyERKNS_12CurrencyUnitE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 12), (24, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK6icu_786number9Precision12withCurrencyERKNS_12CurrencyUnitER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::Precision") align 8 %3, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 9, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK6icu_786number18IncrementPrecision15withMinFractionEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::Precision") align 8 captures(none) initializes((0, 4), (8, 12), (24, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %2, 1000
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 18, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  %i.c = trunc nuw nsw i32 %2 to i16
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.c, ptr %.sroa.4.0..sroa_idx2, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 9, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 65810, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl12RoundingImplC2ERKNS0_9PrecisionE25UNumberFormatRoundingModeRKNS_12CurrencyUnitER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(37) initializes((0, 37)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.b, align 4
  %i.c = load i32, ptr %1, align 8
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNK6icu_786number9Precision12withCurrencyERKNS_12CurrencyUnitER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::Precision") align 8 %5, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_786number4impl12RoundingImpl11passThroughEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::number::impl::RoundingImpl") align 8 captures(none) initializes((0, 40)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_786number4impl12RoundingImpl19isSignificantDigitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(37) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 3
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_786number4impl12RoundingImpl24chooseMultiplierAndApplyERNS1_15DecimalQuantityERKNS1_18MultiplierProducerER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity12getMagnitudeEv(ptr noundef nonnull align 8 dereferenceable(66) %1) #14 ; 3 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.a) #14 ; 8 uses
  %i.f = tail call noundef zeroext i1 @_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi(ptr noundef nonnull align 8 dereferenceable(66) %1, i32 noundef %i.e) #14 ; 0 uses
  tail call void @_ZNK6icu_786number4impl12RoundingImpl5applyERNS1_15DecimalQuantityER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.g = tail call noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity9isZeroishEv(ptr noundef nonnull align 8 dereferenceable(66) %1) #14
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity12getMagnitudeEv(ptr noundef nonnull align 8 dereferenceable(66) %1) #14
  %i.k = add nsw i32 %i.e, %i.a
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.a, 1
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.m) #14 ; 3 uses
  %i.r = icmp eq i32 %i.e, %i.q
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = sub nsw i32 %i.q, %i.e
  %i.t = tail call noundef zeroext i1 @_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi(ptr noundef nonnull align 8 dereferenceable(66) %1, i32 noundef %i.s) #14 ; 0 uses
  tail call void @_ZNK6icu_786number4impl12RoundingImpl5applyERNS1_15DecimalQuantityER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.1 = phi i32 [ %i.e, %bb.c ], [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.q, %bb.e ], [ %i.e, %bb.d ]
  ret i32 %.1
}

declare noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity12getMagnitudeEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786number4impl12RoundingImpl5applyERNS1_15DecimalQuantityER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !56
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond69 = select i1 %i.b, i1 true, i1 %i.e
  br i1 %or.cond69, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  switch i32 %i.f, label %bb.ag [
    i32 0, label %bb.c
    i32 9, label %bb.c
    i32 1, label %bb.d
end_hunk_0

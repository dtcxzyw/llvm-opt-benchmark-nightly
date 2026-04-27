inline.NumInlined: 243
inline.NumDeleted: 76
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl12InvertNewtonENS0_8RWDigitsENS0_6DigitsES2_:bb.a
  %6 = alloca %"class.v8::bigint::Digits", align 8 ; 5 uses
  %7 = alloca %"class.v8::bigint::Digits", align 8 ; 5 uses
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  %8 = alloca %"class.v8::bigint::Digits", align 8 ; 5 uses
  %9 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %i.b = add i32 %4, 5                            ; 2 uses
  %i.c = shl i32 %4, 6                            ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v86bigint13ProcessorImpl12InvertNewtonENS0_8RWDigitsENS0_6DigitsES2_:bb.a
  %i.au = add i64 %.0.copyload.i, 1
  store i64 %i.au, ptr %i.at, align 4
  %i.av = add nuw nsw i32 %i.k, 2                 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aw = shl nuw nsw i32 %i.av, 1
  %.sroa.speculated.i.i211 = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.aw) ; 2 uses
  store ptr %1, ptr %8, align 8
  store i32 %i.av, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.sroa.0194.0.copyload, i32 %.sroa.speculated.i.i211, ptr %1, i32 %i.av, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %8) #10
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v86bigint13ProcessorImpl12InvertNewtonENS0_8RWDigitsENS0_6DigitsES2_:bb.a
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1
  %i.cy = shl i32 %i.bt, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.2.0.copyload, i32 %i.cy) ; 2 uses
  store ptr %1, ptr %8, align 8
  store i32 %i.bt, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.sroa.0194.0.copyload, i32 %.sroa.speculated.i.i, ptr %1, i32 %i.bt, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %8) #10
  %i.cz = load i32, ptr %i.ax, align 8
end_hunk_2

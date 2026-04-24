inline.NumInlined: 141
inline.NumDeleted: 74
begin_hunk_0_@_ZNK6icu_785units21ComplexUnitsConverter7convertEdPNS_6number4impl12RoundingImplER10UErrorCode:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.promoted = phi double [ %i.j, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.051 = phi i64 [ -1, %bb.b ], [ 1, %bb.a ]
  %11 = phi double [ -1.000000e+00, %bb.b ], [ 1.000000e+00, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.k = add nsw i32 %i.h, -1                     ; 2 uses
  %i.l = load i32, ptr %4, align 4
end_hunk_0
begin_hunk_1_@_ZNK6icu_785units21ComplexUnitsConverter7convertEdPNS_6number4impl12RoundingImplER10UErrorCode:bb.a
.lr.ph91:                                         ; preds = %bb.p
  %i.bm = add nsw i32 %i.bk, -1
  %i.bn = load double, ptr %i.a, align 8
  %i.bo = fmul double %11, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6icu_785units21ComplexUnitsConverter7convertEdPNS_6number4impl12RoundingImplER10UErrorCode:bb.a
  %i.cb = load ptr, ptr %5, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv97
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = mul nsw i64 %i.cd, %.051
  call void @_ZN6icu_7811FormattableC1El(ptr noundef nonnull align 8 dereferenceable(112) %7, i64 noundef %i.ce) #9
  %i.cf = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #9 ; 3 uses
  %.not66 = icmp eq ptr %i.cf, null
end_hunk_2

inline.NumInlined: 1474
inline.NumDeleted: 558
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIdEET_RKNS_10Decimal256Ei:bb.a
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = load <4 x i64>, ptr %0, align 8          ; 3 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = shufflevector <4 x i64> %i.a, <4 x i64> <i64 0, i64 0, i64 0, i64 poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0> ; 2 uses
  %5 = shufflevector <4 x i64> %i.a, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 9007199254740991>, <4 x i32> <i32 3, i32 2, i32 1, i32 7> ; 2 uses
  %6 = icmp eq <4 x i64> %4, %5
  %7 = icmp ult <4 x i64> %4, %5
  %8 = shufflevector <4 x i1> %6, <4 x i1> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %9 = freeze <4 x i1> %8
  %10 = bitcast <4 x i1> %9 to i4
  %11 = icmp eq i4 %10, -1
  br i1 %11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sub nsw i32 0, %1                        ; 2 uses
end_hunk_0

inline.NumInlined: 1474
inline.NumDeleted: 558
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIdEET_RKNS_10Decimal256Ei:bb.a
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = load <4 x i64>, ptr %0, align 8          ; 5 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = extractelement <4 x i64> %i.a, i64 3
  %5 = icmp eq i64 %4, 0
  %6 = extractelement <4 x i64> %i.a, i64 2
  %7 = icmp eq i64 %6, 0
  %or.cond = select i1 %5, i1 %7, i1 false
  %8 = extractelement <4 x i64> %i.a, i64 1
  %9 = icmp eq i64 %8, 0
  %or.cond21 = select i1 %or.cond, i1 %9, i1 false
  %10 = extractelement <4 x i64> %i.a, i64 0
  %11 = icmp ult i64 %10, 9007199254740991
  %or.cond22 = select i1 %or.cond21, i1 %11, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sub nsw i32 0, %1                        ; 2 uses
end_hunk_0

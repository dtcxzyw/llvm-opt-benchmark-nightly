begin_hunk_0_@ConvertToIeeeSingle
define dso_local void @ConvertToIeeeSingle(double noundef %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = fcmp olt double %0, 0.000000e+00         ; 3 uses
  %.024 = select i1 %i.b, i64 -9223372036854775808, i64 0 ; 3 uses
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.i, label %bb.b

end_hunk_0
begin_hunk_1_@ConvertToIeeeSingle:bb.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = select i1 %i.b, i64 -9223372034715680768, i64 2139095040
  br label %bb.h

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@ConvertToIeeeDouble
define dso_local void @ConvertToIeeeDouble(double noundef %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = fcmp olt double %0, 0.000000e+00         ; 3 uses
  %.048 = select i1 %i.b, i64 -9223372036854775808, i64 0 ; 4 uses
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.k, label %bb.b

end_hunk_2
begin_hunk_3_@ConvertToIeeeDouble:bb.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = select i1 %i.b, i64 -9223372034708340736, i64 2146435072
  br label %bb.j

bb.d:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@ConvertToIeeeExtended:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = fcmp olt double %0, 0.000000e+00         ; 3 uses
  %.036 = select i1 %i.b, i32 32768, i32 0
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.g, label %bb.b

end_hunk_4
begin_hunk_5_@ConvertToIeeeExtended:bb.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = select i1 %i.b, i32 65535, i32 32767
  br label %bb.g

bb.d:                                             ; preds = %bb.b
end_hunk_5

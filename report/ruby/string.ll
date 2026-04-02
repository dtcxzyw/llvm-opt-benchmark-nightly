begin_hunk_0
@.str.229 = private unnamed_addr constant [17 x i8] c"invalid radix %d\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"non-ASCII character detected\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"unterminated dumped string\00", align 1
@.str.232 = private unnamed_addr constant [63 x i8] c"dumped string contained Unicode escape but used force_encoding\00", align 1
@.str.233 = private unnamed_addr constant [40 x i8] c"dumped string has unknown encoding name\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"invalid escape\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.bg, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %1 = load i32, ptr %i.bc, align 1
  %2 = icmp ne i32 %1, 1886741550
  %3 = zext i1 %2 to i32
  %i.bh = icmp eq i32 %3, 0
  %i.bi = getelementptr i8, ptr %.061105, i64 5
  %spec.select = select i1 %i.bh, ptr %i.bi, ptr %i.bc ; 4 uses
  %.pre = ptrtoint ptr %spec.select to i64
  %.pre147 = sub i64 %i.az, %.pre
  %i.bj = icmp slt i64 %.pre147, 18
  br i1 %i.bj, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %4 = load i128, ptr %spec.select, align 1
  %5 = xor i128 %4, 53706165822922349142233056565091329582
  %6 = getelementptr i8, ptr %spec.select, i64 16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i128
  %9 = xor i128 %8, 34
  %10 = or i128 %5, %9
  %11 = icmp ne i128 %10, 0
  %12 = zext i1 %11 to i32
  %.not36 = icmp eq i32 %12, 0
  br i1 %.not36, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
end_hunk_1

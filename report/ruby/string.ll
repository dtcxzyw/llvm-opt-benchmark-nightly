begin_hunk_0
@.str.229 = private unnamed_addr constant [17 x i8] c"invalid radix %d\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"non-ASCII character detected\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"unterminated dumped string\00", align 1
@str_undump.force_encoding_suffix = internal constant [18 x i8] c".force_encoding(\22\00", align 16
@str_undump.dup_suffix = internal constant [5 x i8] c".dup\00", align 1
@.str.232 = private unnamed_addr constant [63 x i8] c"dumped string contained Unicode escape but used force_encoding\00", align 1
@.str.233 = private unnamed_addr constant [40 x i8] c"dumped string has unknown encoding name\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"invalid escape\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.bg, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.bc, ptr noundef nonnull dereferenceable(4) @str_undump.dup_suffix, i64 4)
  %i.bh = icmp eq i32 %bcmp, 0
  %i.bi = getelementptr i8, ptr %.061105, i64 5
  %spec.select = select i1 %i.bh, ptr %i.bi, ptr %i.bc ; 3 uses
  %.pre = ptrtoint ptr %spec.select to i64
  %.pre147 = sub i64 %i.az, %.pre
  %i.bj = icmp slt i64 %.pre147, 18
  br i1 %i.bj, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %bcmp35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %spec.select, ptr noundef nonnull dereferenceable(17) @str_undump.force_encoding_suffix, i64 17)
  %.not36 = icmp eq i32 %bcmp35, 0
  br i1 %.not36, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
end_hunk_1

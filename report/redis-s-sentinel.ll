begin_hunk_0
define dso_local void @sentinelIsRunning() local_unnamed_addr #0 {
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %2 = load <32 x i8>, ptr @sentinel, align 32
  %.fr = freeze <32 x i8> %2
  %3 = icmp eq <32 x i8> %.fr, zeroinitializer    ; 2 uses
  %4 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 32), align 32
  %.fr45 = freeze <8 x i8> %4
  %5 = icmp eq <8 x i8> %.fr45, zeroinitializer
  %6 = shufflevector <32 x i1> %3, <32 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %6, %5
  %7 = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <32 x i1> %7, <32 x i1> %3, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %9 = bitcast <32 x i1> %8 to i32
end_hunk_0
begin_hunk_1
  br i1 %or.cond, label %.thread324, label %91

.thread324:                                       ; preds = %76
  %89 = load i32, ptr %85, align 8, !tbaa !39
  %.fr412 = freeze i32 %89                        ; 2 uses
  %90 = and i32 %.fr412, 9
  %or.cond300 = icmp ne i32 %90, 9
  br label %92

end_hunk_1
begin_hunk_2
  br label %92

92:                                               ; preds = %._crit_edge376, %.thread324
  %93 = phi i32 [ %.fr412, %.thread324 ], [ %.pre377, %._crit_edge376 ]
  %.not255327 = phi i1 [ %or.cond300, %.thread324 ], [ true, %._crit_edge376 ] ; 2 uses
  %94 = and i32 %93, 1
  %.not253 = icmp eq i32 %94, 0
end_hunk_2

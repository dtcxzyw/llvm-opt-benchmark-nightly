begin_hunk_0
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid signal number (%d)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"bad handler\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"SYSTEM_DEFAULT\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
end_hunk_0
begin_hunk_1

bb.l:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %.0 to i64
  %4 = getelementptr i8, ptr %i.z, i64 %i.ak      ; 2 uses
  %5 = load i16, ptr %4, align 1
  %6 = xor i16 %5, 18771
  %i.al = getelementptr i8, ptr %4, i64 2
  %7 = load i8, ptr %i.al, align 1
  %8 = zext i8 %7 to i16
  %9 = xor i16 %8, 71
  %10 = or i16 %6, %9
  %11 = icmp ne i16 %10, 0
  %12 = zext i1 %11 to i32
  %i.am = icmp eq i32 %12, 0
  %spec.select = select i1 %i.am, i32 %i.ai, i32 %.0
  br label %bb.m

end_hunk_1
begin_hunk_2
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.o, %.thread.i
  %i.al = phi ptr [ %i.ak, %bb.o ], [ %i.aj, %.thread.i ] ; 11 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62
  switch i64 %i.an, label %trap_handler.exit [
end_hunk_2
begin_hunk_3
  br label %thread-pre-split.thread.sink.split.i

bb.q:                                             ; preds = %RSTRING_PTR.exit.i
  %5 = load i64, ptr %i.al, align 1
  %6 = xor i64 %5, 4926741477529442643
  %7 = getelementptr i8, ptr %i.al, i64 6
  %8 = load i64, ptr %7, align 1
  %9 = xor i64 %8, 6074323736256136287
  %10 = or i64 %6, %9
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %i.ap = icmp eq i32 %12, 0
  br i1 %i.ap, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

bb.r:                                             ; preds = %RSTRING_PTR.exit.i
  %13 = load i32, ptr %i.al, align 1
  %14 = xor i32 %13, 1598507347
  %15 = getelementptr i8, ptr %i.al, i64 3
  %16 = load i32, ptr %15, align 1
  %17 = xor i32 %16, 1313294687
  %18 = or i32 %14, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %i.aq = icmp eq i32 %20, 0
  br i1 %i.aq, label %thread-pre-split.thread.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %21 = load i32, ptr %i.al, align 1
  %22 = xor i32 %21, 1598507347
  %23 = getelementptr i8, ptr %i.al, i64 3
  %24 = load i32, ptr %23, align 1
  %25 = xor i32 %24, 1279673439
  %26 = or i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %i.ar = icmp eq i32 %28, 0
  br i1 %i.ar, label %bb.p, label %bb.t

bb.t:                                             ; preds = %bb.s
  %29 = load i32, ptr %i.al, align 1
  %30 = xor i32 %29, 1095124292
  %31 = getelementptr i8, ptr %i.al, i64 3
  %32 = load i32, ptr %31, align 1
  %33 = xor i32 %32, 1414288705
  %34 = or i32 %30, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %i.as = icmp eq i32 %36, 0
  br i1 %i.as, label %bb.p, label %trap_handler.exit

bb.u:                                             ; preds = %RSTRING_PTR.exit.i
  %37 = load i32, ptr %i.al, align 1
  %38 = xor i32 %37, 1330530121
  %39 = getelementptr i8, ptr %i.al, i64 4
  %40 = load i16, ptr %39, align 1
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, 17746
  %43 = or i32 %38, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %i.at = icmp eq i32 %45, 0
  br i1 %i.at, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

bb.v:                                             ; preds = %RSTRING_PTR.exit.i
  %46 = load i32, ptr %i.al, align 1
  %47 = icmp ne i32 %46, 1414092869
  %48 = zext i1 %47 to i32
  %i.au = icmp eq i32 %48, 0
  br i1 %i.au, label %thread-pre-split.thread.sink.split.i, label %trap_handler.exit

thread-pre-split.thread.sink.split.i:             ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %RSTRING_PTR.exit.i
end_hunk_3

begin_hunk_0
@.str.21 = private unnamed_addr constant [13 x i8] c"System Calls\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Opened %s\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@str = private unnamed_addr constant [22 x i8] c"\09...parsing complete.\00", align 1
@str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate graph storage. Exiting\00", align 1
@str.2 = private unnamed_addr constant [46 x i8] c"Could not allocate signature storage. Exiting\00", align 1
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @parseConfigFile(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.8) ; 13 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_1
begin_hunk_2
  br i1 %.not51, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %2 = load i128, ptr %i.a, align 16
  %3 = xor i128 140100793717143881344492782898197586256, %2
  %4 = getelementptr i8, ptr %i.a, i64 16
  %5 = load i64, ptr %4, align 16
  %6 = zext i64 %5 to i128
  %7 = xor i128 7957695015158969703, %6
  %8 = or i128 %3, %7
  %9 = icmp ne i128 %8, 0
  %10 = zext i1 %9 to i32
  %.not52 = icmp eq i32 %10, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_2
begin_hunk_3
  br i1 %.not53, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %11 = load i32, ptr %i.a, align 16
  %12 = xor i32 1701603686, %11
  %13 = getelementptr i8, ptr %i.a, i64 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = xor i32 115, %15
  %17 = or i32 %12, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %.not55 = icmp eq i32 %19, 0
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_3
begin_hunk_4
  br i1 %.not56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %20 = load i64, ptr %i.a, align 16
  %21 = xor i64 8247626254411852147, %20
  %22 = getelementptr i8, ptr %i.a, i64 8
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i64
  %25 = xor i64 29541, %24
  %26 = or i64 %21, %25
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %.not58 = icmp eq i32 %28, 0
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_4
begin_hunk_5
  br i1 %.not59, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %29 = load i64, ptr %i.a, align 16
  %30 = xor i64 8367802883984418163, %29
  %31 = getelementptr i8, ptr %i.a, i64 3
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 7309475734889194354, %32
  %34 = or i64 %30, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %.not61 = icmp eq i32 %36, 0
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_5
begin_hunk_6
  br i1 %.not72, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %37 = load i32, ptr %i.a, align 16
  %38 = xor i32 1701603686, %37
  %39 = getelementptr i8, ptr %i.a, i64 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = xor i32 32, %41
  %43 = or i32 %38, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %.not74 = icmp eq i32 %45, 0
  br i1 %.not74, label %.preheader100, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_6
begin_hunk_7
  br i1 %.not67, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %46 = load i64, ptr %i.a, align 16
  %47 = xor i64 8247626254411852147, %46
  %48 = getelementptr i8, ptr %i.a, i64 8
  %49 = load i16, ptr %48, align 8
  %50 = zext i16 %49 to i64
  %51 = xor i64 8293, %50
  %52 = or i64 %47, %51
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %.not69 = icmp eq i32 %54, 0
  br i1 %.not69, label %.preheader99, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_7
begin_hunk_8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12
end_hunk_8

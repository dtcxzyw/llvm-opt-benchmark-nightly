begin_hunk_0
@.str.2 = private unnamed_addr constant [52 x i8] c"cli_filetype2: Error initializing entity converter\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Recognized old fashioned tar file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Recognized POSIX tar file\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Recognized ISO 9660 CD-ROM data\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Recognized High Sierra CD-ROM data\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"cli_addtypesigs: Need to allocate AC trie in engine->root[0]\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"cli_addtypesigs: Can't initialise AC pattern matcher\0A\00", align 1
end_hunk_0
begin_hunk_1
  br label %.thread109.sink.split

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 32769 ; 2 uses
  %5 = load i32, ptr %i.bv, align 1
  %6 = xor i32 %5, 808469571
  %7 = getelementptr i8, ptr %i.bv, i64 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %9, 49
  %11 = or i32 %6, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %.not88 = icmp eq i32 %13, 0
  br i1 %.not88, label %.thread109.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 37633 ; 2 uses
  %14 = load i32, ptr %i.bw, align 1
  %15 = xor i32 %14, 808469571
  %16 = getelementptr i8, ptr %i.bw, i64 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, 49
  %20 = or i32 %15, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %.not90 = icmp eq i32 %22, 0
  br i1 %.not90, label %.thread109.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32776 ; 2 uses
  %23 = load i32, ptr %i.bx, align 1
  %24 = xor i32 %23, 1330791491
  %25 = getelementptr i8, ptr %i.bx, i64 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, 77
  %29 = or i32 %24, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %.not92 = icmp eq i32 %31, 0
  br i1 %.not92, label %.thread109.sink.split, label %.thread109

.thread109.sink.split:                            ; preds = %bb.z, %bb.x, %bb.y, %bb.v, %bb.w
end_hunk_1

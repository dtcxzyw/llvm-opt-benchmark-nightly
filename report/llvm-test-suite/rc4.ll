begin_hunk_0
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.rc4_state, align 4          ; 73 uses
  %i.a = alloca [30 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq i32 %0, 2
end_hunk_0
begin_hunk_1
.split.1:                                         ; preds = %.split.preheader
  %puts18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2) ; 0 uses
  %3 = load i64, ptr %i.a, align 16
  %4 = load i64, ptr getelementptr inbounds nuw (i8, ptr @output, i64 30), align 1
  %5 = icmp ne i64 %3, %4
  %6 = zext i1 %5 to i32
  %.not.1 = icmp eq i32 %6, 0
  br i1 %.not.1, label %.split.2, label %.split35.us

.split.2:                                         ; preds = %.split.1
  %puts18.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 3) ; 0 uses
  %7 = load i64, ptr %i.a, align 16
  %8 = load i64, ptr getelementptr inbounds nuw (i8, ptr @output, i64 60), align 1
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %.not.2 = icmp eq i32 %10, 0
  br i1 %.not.2, label %.split.3, label %.split35.us

.split.3:                                         ; preds = %.split.2
  %puts18.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 4) ; 0 uses
  %11 = load i128, ptr %i.a, align 16
  %12 = load i128, ptr getelementptr inbounds nuw (i8, ptr @output, i64 90), align 1
  %13 = xor i128 %11, %12
  %14 = getelementptr i8, ptr %i.a, i64 16
  %15 = load i32, ptr %14, align 16
  %16 = load i32, ptr getelementptr (i8, ptr getelementptr inbounds nuw (i8, ptr @output, i64 90), i64 16), align 1
  %17 = zext i32 %15 to i128
  %18 = zext i32 %16 to i128
  %19 = xor i128 %17, %18
  %20 = or i128 %13, %19
  %21 = icmp ne i128 %20, 0
  %22 = zext i1 %21 to i32
  %.not.3 = icmp eq i32 %22, 0
  br i1 %.not.3, label %.split.4, label %.split35.us

.split.4:                                         ; preds = %.split.3
  %puts18.3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 5) ; 0 uses
  %23 = load i128, ptr %i.a, align 16
  %24 = load i128, ptr getelementptr inbounds nuw (i8, ptr @output, i64 120), align 1
  %25 = xor i128 %23, %24
  %26 = getelementptr i8, ptr %i.a, i64 12
  %27 = load i128, ptr %26, align 4
  %28 = load i128, ptr getelementptr (i8, ptr getelementptr inbounds nuw (i8, ptr @output, i64 120), i64 12), align 1
  %29 = xor i128 %27, %28
  %30 = or i128 %25, %29
  %31 = icmp ne i128 %30, 0
  %32 = zext i1 %31 to i32
  %.not.4 = icmp eq i32 %32, 0
  br i1 %.not.4, label %.split.5, label %.split35.us

.split.5:                                         ; preds = %.split.4
  %puts18.4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 6) ; 0 uses
  %33 = load i64, ptr %i.a, align 16
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @output, i64 150), align 1
  %35 = xor i64 %33, %34
  %36 = getelementptr i8, ptr %i.a, i64 8
  %37 = load i16, ptr %36, align 8
  %38 = load i16, ptr getelementptr (i8, ptr getelementptr inbounds nuw (i8, ptr @output, i64 150), i64 8), align 1
  %39 = zext i16 %37 to i64
  %40 = zext i16 %38 to i64
  %41 = xor i64 %39, %40
  %42 = or i64 %35, %41
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %.not.5 = icmp eq i32 %44, 0
  br i1 %.not.5, label %.split38.us.loopexit42, label %.split35.us

.split38.us.loopexit42:                           ; preds = %.split.5
end_hunk_1

begin_hunk_0
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.rc4_state, align 4          ; 73 uses
  %i.a = alloca [30 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq i32 %0, 2
end_hunk_0
begin_hunk_1
.split.1:                                         ; preds = %.split.preheader
  %puts18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2) ; 0 uses
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @output, i64 30), i64 8)
  %.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not.1, label %.split.2, label %.split35.us

.split.2:                                         ; preds = %.split.1
  %puts18.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 3) ; 0 uses
  %bcmp.2 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @output, i64 60), i64 8)
  %.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %.not.2, label %.split.3, label %.split35.us

.split.3:                                         ; preds = %.split.2
  %puts18.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 4) ; 0 uses
  %bcmp.3 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %i.a, ptr noundef nonnull dereferenceable(20) getelementptr inbounds nuw (i8, ptr @output, i64 90), i64 20)
  %.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %.not.3, label %.split.4, label %.split35.us

.split.4:                                         ; preds = %.split.3
  %puts18.3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 5) ; 0 uses
  %bcmp.4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(28) %i.a, ptr noundef nonnull dereferenceable(28) getelementptr inbounds nuw (i8, ptr @output, i64 120), i64 28)
  %.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %.not.4, label %.split.5, label %.split35.us

.split.5:                                         ; preds = %.split.4
  %puts18.4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 6) ; 0 uses
  %bcmp.5 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.a, ptr noundef nonnull dereferenceable(10) getelementptr inbounds nuw (i8, ptr @output, i64 150), i64 10)
  %.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %.not.5, label %.split38.us.loopexit42, label %.split35.us

.split38.us.loopexit42:                           ; preds = %.split.5
end_hunk_1

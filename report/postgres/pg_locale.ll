Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_locale?download=true
inline.NumInlined: 54
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_iswalnum
define dso_local zeroext i1 @pg_iswalnum(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 3
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswupper(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -65
  %i.e = icmp ult i32 %i.d, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswlower(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -97
  %i.e = icmp ult i32 %i.d, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswgraph(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -33
  %i.e = icmp ult i32 %i.d, 94
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswprint(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -32
  %i.e = icmp ult i32 %i.d, 95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswpunct(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 64
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswspace(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp slt i8 %i.g, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 %i.j(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.k, %bb.d ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswxdigit(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = add nsw i32 %0, -48
  %.not = icmp ult i32 %2, 10
  %i.e = add nsw i32 %0, -65
  %or.cond = icmp ult i32 %i.e, 6
  %or.cond13 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %0, -97
  %i.g = icmp ult i32 %i.f, 6
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 %i.i(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e
  %.0 = phi i1 [ %i.j, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswcased(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 2
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_towupper(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i32 %0 to i8
  %i.f = add nsw i8 %i.e, -97
  %or.cond.i = icmp ult i8 %i.f, 26
  %i.g = add nuw nsw i32 %0, 224
  %spec.select.i = select i1 %or.cond.i, i32 %i.g, i32 %0
  %i.h = and i32 %spec.select.i, 255
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_towlower(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i32 %0 to i8
  %i.f = add nsw i8 %i.e, -65
  %or.cond.i = icmp ult i8 %i.f, 26
  %i.g = or i32 %0, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.g, i32 %0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %spec.select.i, %bb.c ], [ %i.j, %bb.d ], [ %0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @pg_icu_unicode_version() local_unnamed_addr #13 {
bb.a:
  ret ptr @.str.23
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 7) i32 @builtin_locale_encoding(ptr noundef %0) local_unnamed_addr #0 {
sub_0:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 67
  br i1 %.not, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.25) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.tail.thread
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(16) @.str.26) #23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 151027844) #19 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1680, ptr noundef nonnull @__func__.builtin_locale_encoding) #19
  unreachable

bb.c:                                             ; preds = %bb.a, %.tail.thread, %.tail
  %.0 = phi i32 [ 6, %.tail.thread ], [ -1, %.tail ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @builtin_validate_locale(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
sub_0:
  %i.a = load i8, ptr %1, align 1
  %.not19 = icmp eq i8 %i.a, 67
  br i1 %.not19, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %.thread, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.25) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.a

bb.a:                                             ; preds = %.tail.thread
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.28) #23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.26) #23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 151027844) #19 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1707, ptr noundef nonnull @__func__.builtin_validate_locale) #19
  unreachable

.thread:                                          ; preds = %bb.a, %.tail.thread, %.tail, %bb.b
  %.018 = phi ptr [ @.str.26, %bb.b ], [ @.str.25, %bb.a ], [ @.str.25, %.tail.thread ], [ @.str.24, %.tail ] ; 2 uses
  %i.m = tail call i32 @builtin_locale_encoding(ptr noundef nonnull %.018) ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %.not14 = icmp eq i32 %0, %i.m
  %or.cond = or i1 %i.n, %.not14
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/pthread_mutex?download=true
begin_hunk_0_@pthread_mutex_trytake:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1
  %.not12 = icmp eq i8 %i.g, 2
  br i1 %.not12, label %bb.f, label %pthread_mutex_add.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call i32 @nxrmutex_trylock(ptr noundef nonnull %i.d) #6 ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sub nsw i32 0, %i.h
  br label %pthread_mutex_add.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %pthread_mutex_add.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i8, ptr %i.a, align 8
  %i.o = and i8 %i.n, 1
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %pthread_mutex_add.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @tls_get_info() #6
  %i.q = load ptr, ptr %0, align 8
  %.not6.i = icmp eq ptr %i.q, null
  br i1 %.not6.i, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.2) #5
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %0, align 8
  store ptr %0, ptr %i.r, align 8
  br label %pthread_mutex_add.exit

pthread_mutex_add.exit:                           ; preds = %bb.l, %bb.i, %bb.e, %bb.c, %bb.g, %bb.h
  %.0 = phi i32 [ 16, %bb.e ], [ 130, %bb.c ], [ %i.j, %bb.g ], [ %i.h, %bb.h ], [ %i.h, %bb.i ], [ %i.h, %bb.l ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @pthread_mutex_give(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %pthread_mutex_remove.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %pthread_mutex_remove.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @tls_get_info() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.015.in.i = phi ptr [ %i.h, %bb.e ], [ %.015.i, %bb.f ]
  %.0.i = phi ptr [ null, %bb.e ], [ %.015.i, %bb.f ] ; 2 uses
  %.015.i = load ptr, ptr %.015.in.i, align 8     ; 4 uses
  %i.i = icmp ne ptr %.015.i, null
  %i.j = icmp ne ptr %.015.i, %0                  ; 2 uses
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.f, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  br i1 %i.j, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.3) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = icmp eq ptr %.0.i, null
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.m, ptr %i.h, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %i.m, ptr %.0.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %0, align 8
  br label %pthread_mutex_remove.exit

pthread_mutex_remove.exit:                        ; preds = %bb.l, %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = tail call i32 @nxrmutex_unlock(ptr noundef nonnull %i.n) #6
  %i.p = sub nsw i32 0, %i.o
  ret i32 %i.p
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @pthread_mutex_breaklock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 319, ptr noundef nonnull @.str.1) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %pthread_mutex_remove.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @tls_get_info() #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.015.in.i = phi ptr [ %i.e, %bb.d ], [ %.015.i, %bb.e ]
  %.0.i = phi ptr [ null, %bb.d ], [ %.015.i, %bb.e ] ; 2 uses
  %.015.i = load ptr, ptr %.015.in.i, align 8     ; 4 uses
  %i.f = icmp ne ptr %.015.i, null
  %i.g = icmp ne ptr %.015.i, %0                  ; 2 uses
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.g, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.3) #5
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %.0.i, null
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.e, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.j, ptr %.0.i, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %0, align 8
  br label %pthread_mutex_remove.exit

pthread_mutex_remove.exit:                        ; preds = %bb.c, %bb.k
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call i32 @nxrmutex_breaklock(ptr noundef nonnull %i.k, ptr noundef %1) #6
  %i.m = sub nsw i32 0, %i.l
  ret i32 %i.m
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_breaklock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @pthread_mutex_restorelock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i32 @nxrmutex_restorelock(ptr noundef nonnull %i.a, i32 noundef %1) #6 ; 2 uses
  %2 = sub nsw i32 0, %i.b
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %pthread_mutex_add.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %pthread_mutex_add.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @tls_get_info() #6
  %i.h = load ptr, ptr %0, align 8
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.2) #5
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %0, align 8
  store ptr %0, ptr %i.i, align 8
  br label %pthread_mutex_add.exit

pthread_mutex_add.exit:                           ; preds = %bb.g, %bb.d, %bb.c
  %.0 = phi i32 [ %2, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxrmutex_restorelock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local zeroext i1 @nxmutex_is_hold(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_reset(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local ptr @tls_get_info() local_unnamed_addr #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone noreturn nounwind optsize }
attributes #6 = { noredzone nounwind optsize }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !10}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"Code Model", i32 4}
!4 = !{i32 1, !"Large Data Threshold", i64 0}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0

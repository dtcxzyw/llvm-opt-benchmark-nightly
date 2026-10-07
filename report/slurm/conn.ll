Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/conn?download=true
inline.NumInlined: 12
begin_hunk_0_@conn_g_send:bb.a
bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i64 %i.g
}

declare void @_log_flag_hex(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @conn_g_sendv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8 ; 2 uses
  %i.b = and i64 %i.a, 16
  %.not = icmp ne i64 %i.b, 0
  %i.c = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i64 [ %i.a, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = and i64 %i.e, 16
  %.not17 = icmp eq i64 %i.f, 0
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.l = tail call i32 %i.k(ptr noundef %0) #9, !inline_history !8
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.h, i64 noundef %i.j, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.conn_g_sendv, i32 noundef %i.l, i32 noundef %i.m, i64 noundef %i.d) #9
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !16

.loopexit:                                        ; preds = %bb.d, %bb.a
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 72), align 8
  %i.p = tail call i64 %i.o(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9 ; 2 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.r = and i64 %i.q, 1024
  %.not16 = icmp eq i64 %i.r, 0
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.s = tail call i32 @get_log_level() #9
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.v = tail call i32 %i.u(ptr noundef %0) #9, !inline_history !8
  %i.w = ptrtoint ptr %0 to i64
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.conn_g_sendv, i32 noundef %i.v, i64 noundef %i.p, i64 noundef %i.w) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.loopexit
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_g_peek(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 80), align 8
  %i.c = tail call i32 %i.b(ptr noundef %0) #9    ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 16
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.g = tail call i32 %i.f(ptr noundef %0) #9, !inline_history !8
  %i.h = ptrtoint ptr %0 to i64
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.conn_g_peek, i32 noundef %i.g, i64 noundef %i.h) #9
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @conn_g_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 88), align 8
  %i.b = tail call i64 %i.a(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9 ; 4 uses
  %i.c = icmp slt i64 %i.b, 1
  %.pre12 = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8 ; 2 uses
  %i.d = and i64 %.pre12, 16
  %.not = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.f = tail call i32 %i.e(ptr noundef %0) #9, !inline_history !8
  %i.g = ptrtoint ptr %0 to i64
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %1, i64 noundef %i.b, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.conn_g_recv, i32 noundef %i.f, i64 noundef %i.g) #9
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre12, %bb.a ], [ %.pre, %bb.b ]
  %i.i = and i64 %i.h, 1024
  %.not11 = icmp eq i64 %i.i, 0
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @get_log_level() #9
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.m = tail call i32 %i.l(ptr noundef %0) #9, !inline_history !8
  %i.n = ptrtoint ptr %0 to i64
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.conn_g_recv, i32 noundef %i.m, i64 noundef %i.b, i64 noundef %i.n) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @conn_g_get_delay(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 96), align 8
  %i.b = tail call { i64, i64 } %i.a(ptr noundef %0) #9
  ret { i64, i64 } %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_g_negotiate_tls(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 104), align 8
  %i.b = tail call i32 %i.a(ptr noundef %0) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @conn_g_is_client_authenticated(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 112), align 8
  %i.b = tail call zeroext i1 %i.a(ptr noundef %0) #9
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_g_set_fds(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 128), align 8
  %i.b = tail call i32 %i.a(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_g_set_callbacks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 136), align 8
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_g_shutdown(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 144), align 8
  %i.b = tail call i32 %i.a(ptr noundef %0) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conn_blocking_g_shutdown(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 120), align 8
  %i.b = tail call i32 %i.a(ptr noundef nonnull %0) #9, !inline_history !8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ops, i64 144), align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #9 ; 3 uses
  %1 = add i32 %i.d, -1019
  %or.cond = icmp ult i32 %1, -2
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %cond22 = icmp eq i32 %i.d, 1018
  %spec.select = select i1 %cond22, i16 4, i16 1
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.f = zext i16 %i.e to i32
  %i.g = tail call i32 @wait_fd(i32 noundef %i.b, i32 noundef %i.f, i16 noundef signext %spec.select) #9 ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.c, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.conn_blocking_g_shutdown, i32 noundef %i.b) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.a
  %.2 = phi i32 [ %i.g, %bb.e ], [ 0, %bb.a ], [ %i.d, %bb.c ]
  ret i32 %.2
}

declare i32 @wait_fd(i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{ptr @conn_g_get_fd}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{ptr @conn_g_load_ca_cert}
!12 = !{ptr @conn_g_load_own_cert}
!13 = !{ptr @conn_g_load_self_signed_cert}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
end_hunk_0

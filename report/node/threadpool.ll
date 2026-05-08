inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0
@cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@once = internal global i32 0, align 4
@slow_io_pending_wq = internal global %struct.uv__queue zeroinitializer, align 8
@run_slow_work_message = internal global %struct.uv__queue zeroinitializer, align 8
@wq = internal global %struct.uv__queue zeroinitializer, align 8
@idle_threads = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"UV_THREADPOOL_SIZE\00", align 1
end_hunk_0
begin_hunk_1_@worker:bb.a
  br i1 %i.c, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @run_slow_work_message, align 8 ; 3 uses
  %i.e = icmp eq ptr %i.d, @wq
  br i1 %i.e, label %bb.d, label %bb.f

end_hunk_1
begin_hunk_2_@worker:bb.a
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store ptr @run_slow_work_message, ptr @run_slow_work_message, align 8
  store ptr @run_slow_work_message, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8
  %i.v = load i32, ptr @slow_io_work_running, align 4 ; 2 uses
  %i.w = load i32, ptr @nthreads, align 4
  %i.x = add i32 %i.w, 1
end_hunk_2
begin_hunk_3_@worker:bb.a
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @wq, ptr @run_slow_work_message, align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8
  store ptr @run_slow_work_message, ptr %i.z, align 8
end_hunk_3
begin_hunk_4_@worker:bb.a
  br i1 %.not30, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @wq, ptr @run_slow_work_message, align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @wq, i64 8), align 8 ; 2 uses
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @run_slow_work_message, i64 8), align 8
  store ptr @run_slow_work_message, ptr %i.ai, align 8
end_hunk_4

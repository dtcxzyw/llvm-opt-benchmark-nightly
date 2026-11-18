Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/call?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct._GSourceFuncs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.gtk_wrap_communication = type { %struct._GCond, %union._GMutex, ptr, i32 }
%struct._GCond = type { ptr, [2 x i32] }
%union._GMutex = type { ptr }
%struct.fd_set = type { [16 x i64] }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [15 x i8] c"LUA ERROR : %s\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/darktable/darktable/src/lua/call.c\00", align 1
@__func__.dt_lua_async_call_alien_internal = private unnamed_addr constant [33 x i8] c"dt_lua_async_call_alien_internal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__FUNCTION__.dt_lua_gtk_wrap_callback = private unnamed_addr constant [25 x i8] c"dt_lua_gtk_wrap_callback\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ending\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dispatch\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"dt_lua_bg_threads\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"lua thread\00", align 1
@__FUNCTION__.gtk_wrap = private unnamed_addr constant [9 x i8] c"gtk_wrap\00", align 1
@__FUNCTION__.execute_cb = private unnamed_addr constant [11 x i8] c"execute_cb\00", align 1
@__FUNCTION__.sleep_cb = private unnamed_addr constant [9 x i8] c"sleep_cb\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@__FUNCTION__.read_cb = private unnamed_addr constant [8 x i8] c"read_cb\00", align 1
@stacked_job_funcs = internal global %struct._GSourceFuncs { ptr @stacked_job_prepare, ptr null, ptr @stacked_job_dispatch, ptr @stacked_job_finalize, ptr null, ptr null }, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"lua_stacked_job_source\00", align 1
@__FUNCTION__.stacked_job_dispatch = private unnamed_addr constant [21 x i8] c"stacked_job_dispatch\00", align 1
@__FUNCTION__.run_async_thread = private unnamed_addr constant [17 x i8] c"run_async_thread\00", align 1
@alien_job_funcs = internal global %struct._GSourceFuncs { ptr @alien_job_prepare, ptr null, ptr @alien_job_dispatch, ptr @alien_job_finalize, ptr null, ptr null }, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"lua_alien_job_source\00", align 1
@__FUNCTION__.alien_job_dispatch = private unnamed_addr constant [19 x i8] c"alien_job_dispatch\00", align 1
@__func__.alien_job_destroy = private unnamed_addr constant [18 x i8] c"alien_job_destroy\00", align 1
@string_job_funcs = internal global %struct._GSourceFuncs { ptr @string_job_prepare, ptr null, ptr @string_job_dispatch, ptr @string_job_finalize, ptr null, ptr null }, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"lua_string_job_source\00", align 1
@__FUNCTION__.string_job_dispatch = private unnamed_addr constant [20 x i8] c"string_job_dispatch\00", align 1
@end_job_funcs = internal global %struct._GSourceFuncs { ptr @end_job_prepare, ptr null, ptr @end_job_dispatch, ptr null, ptr null, ptr null }, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"lua_end_job_source\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"LUA ERROR : no thread found, this should never happen\00", align 1
@__FUNCTION__.run_async_thread_main = private unnamed_addr constant [22 x i8] c"run_async_thread_main\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @dt_lua_check_print_error(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, ptr noundef %i.d) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 %1
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @dt_lua_treated_pcall(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @create_backtrace, i32 noundef 0) #13
  tail call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef 1) #13
  %i.a = tail call i32 @lua_pcallk(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i64 noundef 0, ptr noundef null) #13 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %dt_lua_check_print_error.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !57
  %i.d = and i32 %i.c, 8192
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #13
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, ptr noundef %i.e) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #13
  br label %dt_lua_check_print_error.exit

dt_lua_check_print_error.exit:                    ; preds = %bb.a, %bb.d
  tail call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef -1) #13
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #13
  ret i32 %i.a
}

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @create_backtrace(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #13
  tail call void @luaL_traceback(ptr noundef %0, ptr noundef %0, ptr noundef %i.a, i32 noundef 0) #13
  ret i32 1
}

declare void @lua_rotate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @lua_pcallk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @dt_lua_async_call_internal(ptr nofree readnone captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lua_newthread(ptr noundef %2) #13 ; 4 uses
  tail call void @lua_pushlightuserdata(ptr noundef %i.a, ptr noundef %5) #13
  tail call void @lua_pushlightuserdata(ptr noundef %i.a, ptr noundef %6) #13
  %i.b = sext i32 %4 to i64
  tail call void @lua_pushinteger(ptr noundef %i.a, i64 noundef %i.b) #13
  %i.c = tail call i32 @lua_getfield(ptr noundef %2, i32 noundef -1001000, ptr noundef nonnull @.str.9) #13 ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %2, i32 noundef -2) #13
  %i.d = tail call i32 @luaL_ref(ptr noundef %2, i32 noundef -2) #13
  tail call void @lua_settop(ptr noundef %2, i32 noundef -3) #13
  %i.e = add nsw i32 %3, 1
  tail call void @lua_xmove(ptr noundef %2, ptr noundef %i.a, i32 noundef %i.e) #13
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3264), align 8, !tbaa !58
  %i.g = sext i32 %i.d to i64
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @g_async_queue_push(ptr noundef %i.f, ptr noundef %i.h) #13
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3248), align 8, !tbaa !59
  tail call void @g_main_context_wakeup(ptr noundef %i.i) #13
  ret void
}

declare ptr @lua_newthread(ptr noundef) local_unnamed_addr #1

declare void @lua_pushlightuserdata(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_xmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_async_queue_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_main_context_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_lua_async_call_alien_internal(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ...) local_unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 28 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3272), align 8, !tbaa !60
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 6 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %5, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %3, ptr %i.f, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.va_start.p0(ptr nonnull %7)
  %.not5657 = icmp eq i32 %6, 4
  br i1 %.not5657, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ap
  %i.i = phi ptr [ null, %.lr.ph ], [ %.sink, %bb.ap ]
  %.058 = phi i32 [ %6, %.lr.ph ], [ %i.ef, %bb.ap ] ; 2 uses
  %i.j = zext i32 %.058 to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = call ptr @g_list_append(ptr noundef %i.i, ptr noundef %i.k) #13 ; 5 uses
  switch i32 %.058, label %bb.al [
    i32 0, label %bb.d
    i32 1, label %bb.k
    i32 2, label %bb.u
    i32 3, label %bb.ab
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %7, align 16               ; 3 uses
  %i.n = icmp ult i32 %i.m, 41
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.h, align 16
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = add nuw nsw i32 %i.m, 8
  store i32 %i.r, ptr %7, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = call ptr @g_list_append(ptr noundef %i.l, ptr noundef %i.w) #13
  %i.y = load i32, ptr %7, align 16               ; 3 uses
  %i.z = icmp ult i32 %i.y, 41
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.h, align 16
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = add nuw nsw i32 %i.y, 8
  store i32 %i.ad, ptr %7, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.ac, %bb.h ], [ %i.ae, %bb.i ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ai = call ptr @g_list_append(ptr noundef %i.x, ptr noundef %i.ah) #13
  br label %bb.am

bb.k:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %7, align 16              ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.h, align 16
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %7, align 16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.g, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !87
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call ptr @g_list_append(ptr noundef %i.l, ptr noundef %i.at) #13
  %i.av = load i32, ptr %7, align 16              ; 3 uses
  %i.aw = icmp ult i32 %i.av, 41
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.h, align 16
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr i8, ptr %i.ax, i64 %i.ay
  %i.ba = add nuw nsw i32 %i.av, 8
  store i32 %i.ba, ptr %7, align 16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.g, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = phi ptr [ %i.az, %bb.o ], [ %i.bb, %bb.p ]
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !88
  %i.bf = call ptr @g_list_append(ptr noundef %i.au, ptr noundef %i.be) #13
  %i.bg = load i32, ptr %7, align 16              ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 41
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.h, align 16
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr i8, ptr %i.bi, i64 %i.bj
  %i.bl = add nuw nsw i32 %i.bg, 8
  store i32 %i.bl, ptr %7, align 16
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.g, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = phi ptr [ %i.bk, %bb.r ], [ %i.bm, %bb.s ]
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !90 ; 4 uses
  %i.bq = call ptr @g_closure_ref(ptr noundef %i.bp) #13 ; 0 uses
  call void @g_closure_sink(ptr noundef %i.bp) #13
  call void @g_closure_set_marshal(ptr noundef %i.bp, ptr noundef nonnull @g_cclosure_marshal_generic) #13
  %i.br = call ptr @g_list_append(ptr noundef %i.bf, ptr noundef %i.bp) #13
  br label %bb.am

bb.u:                                             ; preds = %bb.c
  %i.bs = load i32, ptr %7, align 16              ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 41
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.h, align 16
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv
  %i.bx = add nuw nsw i32 %i.bs, 8
  store i32 %i.bx, ptr %7, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.g, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ca = phi ptr [ %i.bw, %bb.v ], [ %i.by, %bb.w ]
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !91
  %i.cc = call ptr @g_list_append(ptr noundef %i.l, ptr noundef %i.cb) #13
  %i.cd = load i32, ptr %7, align 16              ; 3 uses
  %i.ce = icmp ult i32 %i.cd, 41
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = load ptr, ptr %i.h, align 16
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr i8, ptr %i.cf, i64 %i.cg
  %i.ci = add nuw nsw i32 %i.cd, 8
  store i32 %i.ci, ptr %7, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  store ptr %i.ck, ptr %i.g, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cl = phi ptr [ %i.ch, %bb.y ], [ %i.cj, %bb.z ]
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !88
  %i.cn = call ptr @g_list_append(ptr noundef %i.cc, ptr noundef %i.cm) #13
  br label %bb.am

bb.ab:                                            ; preds = %bb.c
  %i.co = load i32, ptr %7, align 16              ; 3 uses
  %i.cp = icmp ult i32 %i.co, 41
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = load ptr, ptr %i.h, align 16
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cr
  %i.ct = add nuw nsw i32 %i.co, 8
  store i32 %i.ct, ptr %7, align 16
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  store ptr %i.cv, ptr %i.g, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cw = phi ptr [ %i.cs, %bb.ac ], [ %i.cu, %bb.ad ]
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !91
  %i.cy = call ptr @g_list_append(ptr noundef %i.l, ptr noundef %i.cx) #13
  %i.cz = load i32, ptr %7, align 16              ; 3 uses
  %i.da = icmp ult i32 %i.cz, 41
  br i1 %i.da, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %i.h, align 16
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = add nuw nsw i32 %i.cz, 8
  store i32 %i.de, ptr %7, align 16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.g, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dh = phi ptr [ %i.dd, %bb.af ], [ %i.df, %bb.ag ]
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !88
  %i.dj = call ptr @g_list_append(ptr noundef %i.cy, ptr noundef %i.di) #13
  %i.dk = load i32, ptr %7, align 16              ; 3 uses
  %i.dl = icmp ult i32 %i.dk, 41
  br i1 %i.dl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load ptr, ptr %i.h, align 16
  %i.dn = zext nneg i32 %i.dk to i64
  %i.do = getelementptr i8, ptr %i.dm, i64 %i.dn
  %i.dp = add nuw nsw i32 %i.dk, 8
  store i32 %i.dp, ptr %7, align 16
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.g, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ds = phi ptr [ %i.do, %bb.ai ], [ %i.dq, %bb.aj ]
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !90 ; 4 uses
  %i.du = call ptr @g_closure_ref(ptr noundef %i.dt) #13 ; 0 uses
  call void @g_closure_sink(ptr noundef %i.dt) #13
  call void @g_closure_set_marshal(ptr noundef %i.dt, ptr noundef nonnull @g_cclosure_marshal_generic) #13
  %i.dv = call ptr @g_list_append(ptr noundef %i.dj, ptr noundef %i.dt) #13
  br label %bb.am

bb.al:                                            ; preds = %bb.c
  store ptr %i.l, ptr %i.c, align 8
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__func__.dt_lua_async_call_alien_internal, ptr noundef nonnull @.str.2) #15
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aa, %bb.t, %bb.j
  %.sink = phi ptr [ %i.dv, %bb.ak ], [ %i.cn, %bb.aa ], [ %i.br, %bb.t ], [ %i.ai, %bb.j ] ; 2 uses
  %i.dw = load i32, ptr %7, align 16              ; 3 uses
  %i.dx = icmp ult i32 %i.dw, 41
  br i1 %i.dx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dy = load ptr, ptr %i.h, align 16
  %i.dz = zext nneg i32 %i.dw to i64
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = add nuw nsw i32 %i.dw, 8
  store i32 %i.eb, ptr %7, align 16
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ec = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.g, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ee = phi ptr [ %i.ea, %bb.an ], [ %i.ec, %bb.ao ]
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !92 ; 2 uses
  %.not56 = icmp eq i32 %i.ef, 4
  br i1 %.not56, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.ap
  store ptr %.sink, ptr %i.c, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %7)
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3272), align 8, !tbaa !60
  call void @g_async_queue_push(ptr noundef %i.eg, ptr noundef nonnull %i.b) #13
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3248), align 8, !tbaa !59
  call void @g_main_context_wakeup(ptr noundef %i.eh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %._crit_edge.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_closure_ref(ptr noundef) local_unnamed_addr #1

declare void @g_closure_sink(ptr noundef) local_unnamed_addr #1

declare void @g_closure_set_marshal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_cclosure_marshal_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nounwind uwtable
define void @dt_lua_async_call_string_internal(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #14 ; 5 uses
  %i.b = tail call noalias ptr @strdup(ptr noundef %2) #13
  store ptr %i.b, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %3, ptr %i.e, align 8, !tbaa !71
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3280), align 8, !tbaa !72
  tail call void @g_async_queue_push(ptr noundef %i.f, ptr noundef nonnull %i.a) #13
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3248), align 8, !tbaa !59
  tail call void @g_main_context_wakeup(ptr noundef %i.g) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef i32 @dt_lua_gtk_wrap_callback(ptr noundef %0) #0 {
bb.a:
  tail call void @dt_lua_lock_internal(ptr noundef nonnull @__FUNCTION__.dt_lua_gtk_wrap_callback, ptr noundef nonnull @.str.1, i32 noundef 637, i32 noundef 1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @g_mutex_lock(ptr noundef nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %i.d = tail call i32 @lua_gettop(ptr noundef %i.c) #13
  %i.e = add nsw i32 %i.d, -1
  %i.f = tail call i32 @lua_pcallk(ptr noundef %i.c, i32 noundef %i.e, i32 noundef -1, i32 noundef 0, i64 noundef 0, ptr noundef null) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !76
  tail call void @g_cond_signal(ptr noundef %0) #13
  tail call void @g_mutex_unlock(ptr noundef nonnull %i.a) #13
  tail call void @dt_lua_unlock_internal(ptr noundef nonnull @__FUNCTION__.dt_lua_gtk_wrap_callback, i32 noundef 644) #13
  ret i32 0
}

declare void @dt_lua_lock_internal(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @g_mutex_lock(ptr noundef) local_unnamed_addr #1

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @g_cond_signal(ptr noundef) local_unnamed_addr #1

declare void @g_mutex_unlock(ptr noundef) local_unnamed_addr #1

declare void @dt_lua_unlock_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_lua_gtk_wrap_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef %1) #13 ; 0 uses
  %i.b = sext i32 %2 to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @gtk_wrap, i32 noundef 3) #13
  ret void
}

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gtk_wrap(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.gtk_wrap_communication, align 8 ; 9 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1001001) #13
  tail call void @lua_rotate(ptr noundef %0, i32 noundef 1, i32 noundef 1) #13
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.c = load i64, ptr %i.b, align 8, !tbaa !108
  %i.d = tail call i64 @pthread_self() #16
  %.not = icmp eq i64 %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lua_gettop(ptr noundef %0) #13
  %i.f = add nsw i32 %i.e, -1
  tail call void @lua_callk(ptr noundef %0, i32 noundef %i.f, i32 noundef -1, i64 noundef 0, ptr noundef null) #13
  %i.g = tail call i32 @lua_gettop(ptr noundef %0) #13
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @dt_lua_unlock_internal(ptr noundef nonnull @__FUNCTION__.gtk_wrap, i32 noundef 660) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  call void @g_mutex_init(ptr noundef nonnull %i.h) #13
  call void @g_cond_init(ptr noundef nonnull %1) #13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %0, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store i32 -1, ptr %i.j, align 8, !tbaa !76
  call void @g_main_context_invoke_full(ptr noundef null, i32 noundef 100, ptr noundef nonnull @dt_lua_gtk_wrap_callback, ptr noundef nonnull %1, ptr noundef null) #13
  call void @g_mutex_lock(ptr noundef nonnull %i.h) #13
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  call void @g_cond_wait(ptr noundef nonnull %1, ptr noundef nonnull %i.h) #13
  %i.m = load i32, ptr %i.j, align 8, !tbaa !76
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @g_mutex_unlock(ptr noundef nonnull %i.h) #13
  call void @g_mutex_clear(ptr noundef nonnull %i.h) #13
  call void @dt_lua_lock_internal(ptr noundef nonnull @__FUNCTION__.gtk_wrap, ptr noundef nonnull @.str.1, i32 noundef 672, i32 noundef 0) #13
  %i.o = load i32, ptr %i.j, align 8, !tbaa !76
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @lua_gettop(ptr noundef %0) #13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.r = call i32 @lua_error(ptr noundef %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef i32 @dt_lua_init_call(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dt_lua_push_darktable_lib(ptr noundef %0) #13 ; 0 uses
  %i.b = tail call i64 @dt_lua_init_singleton(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #13 ; 5 uses
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3) #13
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @ending_cb, i32 noundef 0) #13
  tail call void @dt_lua_type_register_const_type(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.4) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @dispatch_cb, i32 noundef 0) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @dt_lua_type_member_common, i32 noundef 1) #13
  tail call void @dt_lua_type_register_const_type(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.5) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @execute_cb, i32 noundef 0) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @dt_lua_type_member_common, i32 noundef 1) #13
  tail call void @dt_lua_type_register_const_type(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.6) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @sleep_cb, i32 noundef 0) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @dt_lua_type_member_common, i32 noundef 1) #13
  tail call void @dt_lua_type_register_const_type(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.7) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @read_cb, i32 noundef 0) #13
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @dt_lua_type_member_common, i32 noundef 1) #13
  tail call void @dt_lua_type_register_const_type(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.8) #13
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #13
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -1001000, ptr noundef nonnull @.str.9) #13
  %i.c = tail call ptr @g_main_context_new() #13
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3248), align 8, !tbaa !59
  %i.d = tail call ptr @g_async_queue_new() #13
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3264), align 8, !tbaa !58
  %i.e = tail call ptr @g_source_new(ptr noundef nonnull @stacked_job_funcs, i32 noundef 96) #13 ; 2 uses
  tail call void @g_source_set_name(ptr noundef %i.e, ptr noundef nonnull @.str.12) #13
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3248), align 8, !tbaa !59
  %i.g = tail call i32 @g_source_attach(ptr noundef %i.e, ptr noundef %i.f) #13 ; 0 uses
  %i.h = tail call ptr @g_async_queue_new() #13
end_hunk_0

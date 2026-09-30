Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/luajit?download=true
inline.NumInlined: 29
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@empty_argv = internal global [2 x ptr] zeroinitializer, align 16
@progname = internal unnamed_addr global ptr @.str.1, align 8
@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@smain.0 = internal unnamed_addr global ptr null, align 8
@smain.1 = internal unnamed_addr global i32 0, align 8
@smain.2 = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"luajit\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@globalL = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"usage: \00", align 1
@.str.4 = private unnamed_addr constant [480 x i8] c" [options]... [script [args]...].\0AAvailable options are:\0A  -e chunk  Execute string 'chunk'.\0A  -l name   Require library 'name'.\0A  -b ...    Save or list bytecode.\0A  -j cmd    Perform LuaJIT control command.\0A  -O[opt]   Control LuaJIT optimizations.\0A  -i        Enter interactive mode after executing 'script'.\0A  -v        Show version information.\0A  -E        Ignore environment variables.\0A  --        Stop handling options.\0A  -         Execute stdin and stop handling options.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LUA_INIT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%sinterrupted!\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"LuaJIT 2.1.1788460057 -- Copyright (C) 2005-2026 Mike Pall. https://luajit.org/\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"jit\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"jit.\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"module \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"unknown luaJIT command or jit.* modules not installed\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"jit.opt\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"bcsave\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"JIT: ON\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"JIT: OFF\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"'<eof>'\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"(error object is not a string)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %.not14 = icmp eq i8 %i.b, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr @progname, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %1, %bb.c ], [ %1, %bb.b ], [ @empty_argv, %bb.a ]
  %i.c = tail call ptr @luaL_newstate() #10       ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @l_message(ptr noundef nonnull @.str)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store i32 %0, ptr @smain.1, align 8, !tbaa !16
  store ptr %.0, ptr @smain.0, align 8, !tbaa !17
  %i.e = tail call i32 @lua_cpcall(ptr noundef nonnull %i.c, ptr noundef nonnull @pmain, ptr noundef null) #10 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %report.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call i32 @lua_type(ptr noundef nonnull %i.c, i32 noundef -1) #10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %report.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @lua_tolstring(ptr noundef nonnull %i.c, i32 noundef -1, ptr noundef null) #10 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %spec.store.select.i = select i1 %i.i, ptr @.str.36, ptr %i.h
  tail call fastcc void @l_message(ptr noundef nonnull %spec.store.select.i)
  tail call void @lua_settop(ptr noundef nonnull %i.c, i32 noundef -2) #10
  br label %report.exit

report.exit:                                      ; preds = %bb.f, %bb.g, %bb.h
  tail call void @lua_close(ptr noundef nonnull %i.c) #10
  %2 = icmp ne i32 %i.e, 0
  %i.j = load i32, ptr @smain.2, align 4
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = select i1 %2, i1 true, i1 %i.k
  %i.m = zext i1 %i.l to i32
  br label %bb.i

bb.i:                                             ; preds = %report.exit, %bb.e
  %.011 = phi i32 [ 1, %bb.e ], [ %i.m, %report.exit ]
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @luaL_newstate() local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @l_message(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @progname, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.c = tail call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.b) #11 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.e = tail call i32 @fputc(i32 noundef 58, ptr noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.g = tail call i32 @fputc(i32 noundef 32, ptr noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.i = tail call i32 @fputs(ptr noundef %0, ptr noundef %i.h) #11 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.k = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.m = tail call i32 @fflush(ptr noundef %i.l)  ; 0 uses
  ret void
}

declare i32 @lua_cpcall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @pmain(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @smain.0, align 8, !tbaa !17 ; 10 uses
  store ptr %0, ptr @globalL, align 8, !tbaa !21
  tail call void @luaJIT_version_2_1_1788460057() #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not44.i = icmp eq ptr %i.c, null
  br i1 %.not44.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.k
  %.0 = phi i32 [ %.2, %bb.k ], [ 0, %bb.a ]      ; 11 uses
  %i.d = phi ptr [ %i.ad, %bb.k ], [ %i.c, %bb.a ] ; 6 uses
  %.045.i = phi i32 [ %i.aa, %bb.k ], [ 1, %bb.a ] ; 8 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %.not33.i = icmp eq i8 %i.e, 45
  br i1 %.not33.i, label %bb.b, label %collectargs.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  switch i8 %i.g, label %collectargs.exit.thread [
    i8 45, label %bb.c
    i8 0, label %collectargs.exit
    i8 105, label %bb.d
    i8 118, label %bb.e
    i8 101, label %bb.f
    i8 106, label %bb.g
    i8 108, label %bb.g
    i8 79, label %bb.k
    i8 98, label %bb.i
    i8 69, label %.sink.split.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %.not37.i = icmp eq i8 %i.i, 0
  %i.j = add nsw i32 %.045.i, 1
  br i1 %.not37.i, label %collectargs.exit, label %collectargs.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %.not35.i = icmp eq i8 %i.l, 0
  br i1 %.not35.i, label %.thread129, label %collectargs.exit.thread

.thread129:                                       ; preds = %bb.d
  %i.m = or i32 %.0, 1
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !12
  %i.n = icmp eq i8 %.pre, 0
  br i1 %i.n, label %.sink.split.i, label %collectargs.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.o = or i32 %.0, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.b
  %.3 = phi i32 [ %i.o, %bb.f ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.p = or i32 %.3, 8                            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %.045.i, 1                   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %collectargs.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.b
  %.not34.i = icmp eq i32 %.0, 0
  br i1 %.not34.i, label %bb.j, label %collectargs.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %.045.i, 1
  br label %collectargs.exit

.sink.split.i:                                    ; preds = %.thread129, %bb.e, %bb.b
  %.1 = phi i32 [ %.0, %bb.e ], [ %.0, %bb.b ], [ %i.m, %.thread129 ]
  %.sink71.i = phi i32 [ 2, %bb.e ], [ 16, %bb.b ], [ 2, %.thread129 ]
  %i.z = or i32 %.sink71.i, %.1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h, %bb.g, %bb.b
  %.2 = phi i32 [ %i.z, %.sink.split.i ], [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %.0, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %.045.i, %.sink.split.i ], [ %i.t, %bb.h ], [ %.045.i, %bb.g ], [ %.045.i, %bb.b ]
  %i.aa = add nsw i32 %.1.i, 1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %collectargs.exit, label %.lr.ph.i, !llvm.loop !23

collectargs.exit:                                 ; preds = %bb.b, %.lr.ph.i, %bb.k, %bb.c, %bb.j
  %.5 = phi i32 [ 4, %bb.j ], [ %.0, %bb.c ], [ %.2, %bb.k ], [ %.0, %.lr.ph.i ], [ %.0, %bb.b ] ; 3 uses
  %.030.i = phi i32 [ %i.y, %bb.j ], [ %i.j, %bb.c ], [ %i.aa, %bb.k ], [ %.045.i, %.lr.ph.i ], [ %.045.i, %bb.b ] ; 3 uses
  %i.ae = icmp slt i32 %.030.i, 0
  br i1 %i.ae, label %collectargs.exit.thread, label %bb.l

collectargs.exit.thread:                          ; preds = %bb.h, %bb.d, %bb.e, %bb.b, %bb.c, %bb.i, %collectargs.exit
  tail call fastcc void @print_usage()
  store i32 1, ptr @smain.2, align 4, !tbaa !28
  br label %bb.bd

bb.l:                                             ; preds = %collectargs.exit
  %i.af = and i32 %.5, 16
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #10
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.2) #10
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.m, %bb.l
  %.not77 = phi i1 [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.a ]
  %.57076 = phi i32 [ %.5, %bb.l ], [ %.5, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.030.i7175 = phi i32 [ %.030.i, %bb.l ], [ %.030.i, %bb.m ], [ 1, %bb.a ] ; 8 uses
  %i.ag = tail call i32 @lua_gc(ptr noundef %0, i32 noundef 0, i32 noundef 0) #10 ; 0 uses
  tail call void @luaL_openlibs(ptr noundef %0) #10
  %i.ah = tail call i32 @lua_gc(ptr noundef %0, i32 noundef 1, i32 noundef -1) #10 ; 0 uses
  %i.ai = load i32, ptr @smain.1, align 8, !tbaa !16 ; 3 uses
  %i.aj = sub nsw i32 %i.ai, %.030.i7175
  tail call void @lua_createtable(ptr noundef %0, i32 noundef %i.aj, i32 noundef range(i32 0, -2147483648) %.030.i7175) #10
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %.lr.ph.preheader.i, label %createargtable.exit

.lr.ph.preheader.i:                               ; preds = %.thread
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i44 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.am) #10
  %i.an = trunc i64 %indvars.iv.i to i32
  %i.ao = sub i32 %i.an, %.030.i7175
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.ao) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %createargtable.exit, label %.lr.ph.i44, !llvm.loop !24

createargtable.exit:                              ; preds = %.lr.ph.i44, %.thread
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.5) #10
  br i1 %.not77, label %bb.n, label %bb.s

bb.n:                                             ; preds = %createargtable.exit
  %i.ap = tail call ptr @getenv(ptr noundef nonnull @.str.6) #10 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
end_hunk_0

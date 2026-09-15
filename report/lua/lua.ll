Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lua?download=true
inline.NumInlined: 34
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@l_getenv = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@progname = internal unnamed_addr global ptr @.str.4, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"'%s' needs argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unrecognized option '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [449 x i8] c"usage: %s [options] [script [args]]\0AAvailable options are:\0A  -e stat   execute string 'stat'\0A  -i        enter interactive mode after executing 'script'\0A  -l mod    require library 'mod' into global 'mod'\0A  -l g=mod  require library 'mod' into global 'g'\0A  -v        show version information\0A  -E        ignore environment variables\0A  -W        turn warnings on\0A  --        stop handling options\0A  -         stop handling options and execute stdin\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Lua 5.5.1  Copyright (C) 1994-2026 Lua.org, PUC-Rio\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"=LUA_INIT_5_5\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@globalL = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"(error object is a %s value)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"@off\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"@on\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"'arg' is not a table\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"LUA_READLINELIB\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"libreadline.so\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"rl_readline_name\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@l_readline = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [12 x i8] c"add_history\00", align 1
@l_addhist = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [34 x i8] c"unable to load readline library '\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"return %s;\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@checklocal.space = internal constant [3 x i8] c" \09\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.40 = private unnamed_addr constant [64 x i8] c"warning: locals do not survive across lines in interactive mode\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"too many results to print\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"(error message not a string)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaL_newstate() #11       ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  tail call fastcc void @l_message(ptr noundef %i.c, ptr noundef nonnull @.str)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ...) @lua_gc(ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  tail call void @lua_pushcclosure(ptr noundef nonnull %i.a, ptr noundef nonnull @pmain, i32 noundef 0) #11
  %i.e = sext i32 %0 to i64
  tail call void @lua_pushinteger(ptr noundef nonnull %i.a, i64 noundef %i.e) #11
  tail call void @lua_pushlightuserdata(ptr noundef nonnull %i.a, ptr noundef %1) #11
  %i.f = tail call i32 @lua_pcallk(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 0, i64 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.g = tail call i32 @lua_toboolean(ptr noundef nonnull %i.a, i32 noundef -1) #11
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %report.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @lua_tolstring(ptr noundef nonnull %i.a, i32 noundef -1, ptr noundef null) #11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %spec.store.select.i = select i1 %i.i, ptr @.str.45, ptr %i.h
  %i.j = load ptr, ptr @progname, align 8, !tbaa !11
  tail call fastcc void @l_message(ptr noundef %i.j, ptr noundef nonnull %spec.store.select.i)
  tail call void @lua_settop(ptr noundef nonnull %i.a, i32 noundef -2) #11
  br label %report.exit

report.exit:                                      ; preds = %bb.c, %bb.d
  tail call void @lua_close(ptr noundef nonnull %i.a) #11
  %i.k = icmp eq i32 %i.g, 0
  %2 = icmp ne i32 %i.f, 0
  %.not17 = select i1 %i.k, i1 true, i1 %2
  %i.l = zext i1 %.not17 to i32
  br label %bb.e

bb.e:                                             ; preds = %report.exit, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.l, %report.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @luaL_newstate() local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @l_message(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #12 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, ptr noundef %1) #12 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  ret void
}

declare i32 @lua_gc(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @pmain(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @lua_tointegerx(ptr noundef %0, i32 noundef 1, ptr noundef null) #11 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 2) #11 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %collectargs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not46.i = icmp eq i8 %i.e, 0
  br i1 %.not46.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr @progname, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %.not4763.i = icmp eq ptr %i.g, null
  br i1 %.not4763.i, label %collectargs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.r
  %i.h = phi ptr [ %i.ap, %bb.r ], [ %i.g, %bb.d ] ; 7 uses
  %.065.i = phi i32 [ %i.am, %bb.r ], [ 1, %bb.d ] ; 15 uses
  %.04164.i = phi i32 [ %.3.i, %bb.r ], [ 0, %bb.d ] ; 9 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %.not48.i = icmp eq i8 %i.i, 45
  br i1 %.not48.i, label %bb.e, label %collectargs.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  switch i8 %i.k, label %collectargs.exit.loopexit [
    i8 45, label %bb.f
    i8 0, label %collectargs.exit
    i8 69, label %bb.h
    i8 87, label %bb.j
    i8 105, label %bb.k
    i8 118, label %bb.l
    i8 101, label %bb.n
    i8 108, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %.not52.i = icmp eq i8 %i.m, 0
  br i1 %.not52.i, label %bb.g, label %collectargs.exit

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %.065.i, 1                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %.not53.i = icmp eq ptr %i.q, null
  %i.r = select i1 %.not53.i, i32 0, i32 %i.n
  br label %collectargs.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %.not51.i = icmp eq i8 %i.t, 0
  br i1 %.not51.i, label %bb.i, label %collectargs.exit

bb.i:                                             ; preds = %bb.h
  %i.u = or i32 %.04164.i, 16
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %.not50.i = icmp eq i8 %i.w, 0
  br i1 %.not50.i, label %bb.r, label %collectargs.exit

bb.k:                                             ; preds = %bb.e
  %i.x = or i32 %.04164.i, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.142.i = phi i32 [ %i.x, %bb.k ], [ %.04164.i, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %.not49.i = icmp eq i8 %i.z, 0
  br i1 %.not49.i, label %bb.m, label %collectargs.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = or i32 %.142.i, 4
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.ab = or i32 %.04164.i, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.2.i = phi i32 [ %i.ab, %bb.n ], [ %.04164.i, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.af = add nsw i32 %.065.i, 1                  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %collectargs.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.al = icmp eq i8 %i.ak, 45
  br i1 %i.al, label %collectargs.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.j, %bb.i
  %.3.i = phi i32 [ %i.u, %bb.i ], [ %.04164.i, %bb.j ], [ %i.aa, %bb.m ], [ %.2.i, %bb.q ], [ %.2.i, %bb.o ] ; 2 uses
  %.1.i = phi i32 [ %.065.i, %bb.i ], [ %.065.i, %bb.j ], [ %.065.i, %bb.m ], [ %i.af, %bb.q ], [ %.065.i, %bb.o ]
  %i.am = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %.not47.i = icmp eq ptr %i.ap, null
  br i1 %.not47.i, label %collectargs.exit, label %.lr.ph.i

collectargs.exit.loopexit:                        ; preds = %bb.e
  br label %collectargs.exit

collectargs.exit:                                 ; preds = %bb.r, %.lr.ph.i, %bb.h, %bb.j, %bb.l, %bb.p, %bb.q, %bb.e, %collectargs.exit.loopexit, %bb.d, %bb.a, %bb.f, %bb.g
  %.051 = phi i32 [ %.065.i, %bb.e ], [ -1, %bb.a ], [ 0, %bb.d ], [ %i.r, %bb.g ], [ %.065.i, %bb.f ], [ 0, %bb.r ], [ %.065.i, %bb.q ], [ %.065.i, %bb.p ], [ %.065.i, %bb.l ], [ %.065.i, %bb.j ], [ %.065.i, %bb.h ], [ %.065.i, %.lr.ph.i ], [ %.065.i, %collectargs.exit.loopexit ] ; 7 uses
  %.043.i = phi i32 [ %.04164.i, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ %.04164.i, %bb.g ], [ 1, %bb.f ], [ %.3.i, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %bb.h ], [ %.04164.i, %.lr.ph.i ], [ 1, %collectargs.exit.loopexit ] ; 5 uses
  %i.aq = icmp sgt i32 %.051, 0                   ; 2 uses
  %i.ar = select i1 %i.aq, i32 %.051, i32 %i.b    ; 2 uses
  tail call void @luaL_checkversion_(ptr noundef %0, double noundef 5.050000e+02, i64 noundef 136) #11
  %i.as = icmp eq i32 %.043.i, 1
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %collectargs.exit
  %i.at = sext i32 %.051 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  tail call fastcc void @print_usage(ptr noundef %i.av)
  br label %runargs.exit.thread

bb.t:                                             ; preds = %collectargs.exit
  %i.aw = and i32 %.043.i, 4
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ay = tail call i64 @fwrite(ptr noundef nonnull @.str.8, i64 noundef 1, i64 noundef 51, ptr noundef %i.ax) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !13
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.az) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not31 = icmp samesign ult i32 %.043.i, 16
end_hunk_0

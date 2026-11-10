Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/loadlib?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.lua_Debug = type { i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [8 x i8] c"package\00", align 1, !guid !10
@pk_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.15, ptr @ll_loadlib }, %struct.luaL_Reg { ptr @.str.16, ptr @ll_seeall }, %struct.luaL_Reg zeroinitializer], align 16, !guid !11
@.str.3 = private unnamed_addr constant [8 x i8] c"loaders\00", align 1, !guid !12
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !guid !13
@.str.5 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1, !guid !14
@.str.6 = private unnamed_addr constant [138 x i8] c"./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua\00", align 1, !guid !15
@.str.7 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1, !guid !16
@.str.8 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1, !guid !17
@.str.9 = private unnamed_addr constant [69 x i8] c"./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so\00", align 1, !guid !18
@.str.10 = private unnamed_addr constant [10 x i8] c"/\0A;\0A?\0A!\0A-\00", align 1, !guid !19
@.str.11 = private unnamed_addr constant [7 x i8] c"config\00", align 1, !guid !20
@.str.12 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1, !guid !21
@.str.13 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1, !guid !22
@.str.14 = private unnamed_addr constant [8 x i8] c"preload\00", align 1, !guid !23
@ll_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.41, ptr @ll_module }, %struct.luaL_Reg { ptr @.str.42, ptr @ll_require }, %struct.luaL_Reg zeroinitializer], align 16, !guid !24
@.str.15 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1, !guid !25
@.str.16 = private unnamed_addr constant [7 x i8] c"seeall\00", align 1, !guid !26
@.str.17 = private unnamed_addr constant [7 x i8] c"absent\00", align 1, !guid !27
@.str.18 = private unnamed_addr constant [5 x i8] c"init\00", align 1, !guid !28
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !guid !29
@.str.20 = private unnamed_addr constant [10 x i8] c"LOADLIB: \00", align 1, !guid !30
@.str.21 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1, !guid !31
@.str.22 = private unnamed_addr constant [8 x i8] c"__index\00", align 1, !guid !32
@.str.23 = private unnamed_addr constant [34 x i8] c"'package.preload' must be a table\00", align 1, !guid !33
@.str.24 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1, !guid !34
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1, !guid !35
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !guid !36
@.str.27 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1, !guid !37
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !38
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1, !guid !39
@.str.30 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1, !guid !40
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !guid !41
@.str.33 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1, !guid !42
@.str.35 = private unnamed_addr constant [2 x i8] c"_\00", align 1, !guid !43
@.str.36 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1, !guid !44
@.str.37 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1, !guid !45
@.str.38 = private unnamed_addr constant [3 x i8] c";;\00", align 1, !guid !46
@.str.39 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1, !guid !47
@.str.40 = private unnamed_addr constant [2 x i8] c"\01\00", align 1, !guid !48
@.str.41 = private unnamed_addr constant [7 x i8] c"module\00", align 1, !guid !49
@.str.42 = private unnamed_addr constant [8 x i8] c"require\00", align 1, !guid !50
@.str.43 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1, !guid !51
@.str.44 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1, !guid !52
@.str.45 = private unnamed_addr constant [3 x i8] c"_M\00", align 1, !guid !53
@.str.46 = private unnamed_addr constant [9 x i8] c"_PACKAGE\00", align 1, !guid !54
@.str.47 = private unnamed_addr constant [2 x i8] c"f\00", align 1, !guid !55
@.str.48 = private unnamed_addr constant [40 x i8] c"'module' not called from a Lua function\00", align 1, !guid !56
@sentinel_ = internal constant i32 0, align 4, !guid !57
@.str.49 = private unnamed_addr constant [43 x i8] c"loop or previous error loading module '%s'\00", align 1, !guid !58
@.str.50 = private unnamed_addr constant [34 x i8] c"'package.loaders' must be a table\00", align 1, !guid !59
@.str.51 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1, !guid !60

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_package(ptr noundef %0) local_unnamed_addr #0 !guid !63 {
bb.a:
  %i.a = tail call i32 @luaL_newmetatable(ptr noundef %0, ptr noundef nonnull @.str) #6 ; 0 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @gctm, i32 noundef 0) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.1) #6
  tail call void @luaL_register(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @pk_funcs) #6
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  tail call void @lua_replace(ptr noundef %0, i32 noundef -10001) #6
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 4, i32 noundef 0) #6
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @loader_preload, i32 noundef 0) #6
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 1) #6
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @loader_Lua, i32 noundef 0) #6
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 2) #6
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @loader_C, i32 noundef 0) #6
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 3) #6
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @loader_Croot, i32 noundef 0) #6
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef 4) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3) #6
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.5) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  br label %setpath.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #6
  %i.e = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.6) #6 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  br label %setpath.exit

setpath.exit:                                     ; preds = %bb.b, %bb.c
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.4) #6
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.8) #6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %setpath.exit
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.9) #6
  br label %setpath.exit25

bb.e:                                             ; preds = %setpath.exit
  %i.h = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #6
  %i.i = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef %i.h, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.9) #6 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  br label %setpath.exit25

setpath.exit25:                                   ; preds = %bb.d, %bb.e
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.7) #6
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef 9) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.11) #6
  %i.j = tail call ptr @luaL_findtable(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.12, i32 noundef 2) #6 ; 0 uses
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.13) #6
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.14) #6
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -10002) #6
  tail call void @luaL_register(ptr noundef %0, ptr noundef null, ptr noundef nonnull @ll_funcs) #6
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @luaL_newmetatable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @gctm(ptr noundef %0) #0 !guid !64 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str) #6
  store ptr null, ptr %i.a, align 8, !tbaa !62
  ret i32 0
}

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_replace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @luaL_findtable(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @luaL_checkudata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ll_loadlib(ptr noundef %0) #0 !guid !65 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #6 ; 0 uses
  %i.c = tail call fastcc i32 @ll_loadfunc(ptr noundef %0, ptr noundef %i.a)
  tail call void @lua_pushnil(ptr noundef %0) #6
  tail call void @lua_insert(ptr noundef %0, i32 noundef -2) #6
  %i.d = icmp eq i32 %i.c, 1
  %i.e = select i1 %i.d, ptr @.str.17, ptr @.str.18
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull %i.e) #6
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ll_seeall(ptr noundef %0) #0 !guid !66 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #6
  %i.a = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef 1) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 1) #6
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  %i.b = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef 1) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -10002) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.22) #6
  ret i32 0
}

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 3) i32 @ll_loadfunc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !guid !67 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %1) #6 ; 0 uses
  tail call void @lua_gettable(ptr noundef %0, i32 noundef -10000) #6
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #6
  br label %ll_register.exit

bb.c:                                             ; preds = %bb.a
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  %i.e = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #6 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !62
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str) #6
  %i.f = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #6 ; 0 uses
  %i.g = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %1) #6 ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #6
  tail call void @lua_settable(ptr noundef %0, i32 noundef -10000) #6
  br label %ll_register.exit

ll_register.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !62
  %i.i = icmp eq ptr %i.h, null
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 58) #6
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %ll_register.exit
  store ptr null, ptr %.0.i, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %ll_register.exit, %.thread
  %.1 = phi i32 [ 1, %.thread ], [ 2, %ll_register.exit ]
  ret i32 %.1
}

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #2

declare void @lua_insert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_newuserdata(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_getmetatable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @loader_preload(ptr noundef %0) #0 !guid !68 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6 ; 2 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.14) #6
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.23) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef %i.a) #6
  %i.e = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %i.a) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @loader_Lua(ptr noundef %0) #0 !guid !69 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6
  %i.b = tail call fastcc ptr @findfile(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @.str.4) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @luaL_loadfile(ptr noundef %0, ptr noundef nonnull %i.b) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6
  %i.f = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %i.g = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.e, ptr noundef nonnull %i.b, ptr noundef %i.f) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @loader_C(ptr noundef %0) #0 !guid !70 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6 ; 3 uses
  %i.b = tail call fastcc ptr @findfile(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 45) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %spec.select.i = select i1 %.not.i, ptr %i.a, ptr %i.e
  %i.f = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.35) #6
  %i.g = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %i.f) #6 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  %i.h = tail call fastcc i32 @ll_loadfunc(ptr noundef %0, ptr noundef nonnull %i.b) ; 0 uses
  %i.i = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6
  %i.j = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %i.k = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.i, ptr noundef nonnull %i.b, ptr noundef %i.j) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @loader_Croot(ptr noundef %0) #0 !guid !71 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6 ; 6 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #7 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.f) #6
  %i.g = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %i.h = tail call fastcc ptr @findfile(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull @.str.7) ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 45) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %spec.select.i = select i1 %.not.i, ptr %i.a, ptr %i.k
  %i.l = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.35) #6
  %i.m = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %i.l) #6 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  %i.n = tail call fastcc i32 @ll_loadfunc(ptr noundef %0, ptr noundef nonnull %i.h)
  %.not = icmp eq i32 %i.n, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6
  %i.p = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %i.q = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.o, ptr noundef nonnull %i.h, ptr noundef %i.p) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @findfile(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !guid !72 {
bb.a:
  %i.a = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #6
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef %2) #6
  %i.b = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %2) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 0) #6
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.013.i = phi ptr [ %i.b, %bb.c ], [ %.013.i.be, %.backedge ] ; 7 uses
  %i.e = load i8, ptr %.013.i, align 1, !tbaa !73
  switch i8 %i.e, label %bb.f [
    i8 59, label %bb.e
    i8 0, label %pushnexttemplate.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.i
  %.013.i.be = phi ptr [ %i.f, %bb.e ], [ %.0.i, %bb.i ]
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.013.i, i32 noundef 59) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.013.i) #7
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i, i64 %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi ptr [ %i.j, %bb.g ], [ %i.g, %bb.f ] ; 2 uses
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = ptrtoint ptr %.013.i to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %.013.i, i64 noundef %i.m) #6
  %i.n = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %i.o = tail call ptr @luaL_gsub(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull @.str.29, ptr noundef %i.a) #6 ; 3 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  %i.p = tail call noalias ptr @fopen(ptr noundef readonly %i.o, ptr noundef nonnull @.str.32) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.r = tail call i32 @fclose(ptr noundef nonnull %i.p) ; 0 uses
  br label %pushnexttemplate.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %i.o) #6 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef -2) #6
  tail call void @lua_concat(ptr noundef %0, i32 noundef 2) #6
  br label %.backedge

pushnexttemplate.exit.thread:                     ; preds = %bb.d, %.thread
  %.2 = phi ptr [ %i.o, %.thread ], [ null, %bb.d ]
  ret ptr %.2
}

declare i32 @luaL_loadfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @luaL_gsub(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_concat(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @ll_module(ptr noundef %0) #0 !guid !75 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 4 uses
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6 ; 9 uses
  %i.b = tail call i32 @lua_gettop(ptr noundef %0) #6 ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.12) #6
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %i.c, ptr noundef %i.a) #6
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  %i.f = tail call ptr @luaL_findtable(ptr noundef %0, i32 noundef -10002, ptr noundef %i.a, i32 noundef 1) #6
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %i.a) #6
  br label %dooptions.exit

bb.d:                                             ; preds = %bb.b
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %i.c, ptr noundef %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.44) #6
  %i.h = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.i = icmp eq i32 %i.h, 0
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.45) #6
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.a) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.44) #6
  %i.j = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #7 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.0.i = select i1 %i.k, ptr %i.a, ptr %i.l
  %i.m = ptrtoint ptr %.0.i to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.o) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.46) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.p = call i32 @lua_getstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %1) #6
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @lua_getinfo(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #6
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call i32 @lua_iscfunction(ptr noundef %0, i32 noundef -1) #6
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %setfenv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.u = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.48) #6 ; 0 uses
  br label %setfenv.exit

setfenv.exit:                                     ; preds = %bb.i, %bb.j
  call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #6
  %i.v = call i32 @lua_setfenv(ptr noundef %0, i32 noundef -2) #6 ; 0 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.not6.i = icmp slt i32 %i.b, 2
  br i1 %.not6.i, label %dooptions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %setfenv.exit, %.lr.ph.i
  %.07.i = phi i32 [ %i.w, %.lr.ph.i ], [ 2, %setfenv.exit ] ; 3 uses
  call void @lua_pushvalue(ptr noundef %0, i32 noundef %.07.i) #6
  call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #6
  call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 0) #6
  %i.w = add nuw i32 %.07.i, 1
  %exitcond.not.i = icmp eq i32 %.07.i, %i.b
  br i1 %exitcond.not.i, label %dooptions.exit, label %.lr.ph.i, !llvm.loop !74

dooptions.exit:                                   ; preds = %.lr.ph.i, %setfenv.exit, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %setfenv.exit ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ll_require(ptr noundef %0) #0 !guid !77 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #6 ; 9 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef 1) #6
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.12) #6
  tail call void @lua_getfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #6
  %i.b = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #6
  %i.d = icmp eq ptr %i.c, @sentinel_
  br i1 %i.d, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %i.a) #6 ; 0 uses
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10001, ptr noundef nonnull @.str.3) #6
  %i.f = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.50) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ %i.p, %bb.m ]     ; 2 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -2, i32 noundef %.0) #6
  %i.i = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -2, ptr noundef null) #6
  %i.l = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %i.a, ptr noundef %i.k) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.a) #6
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 1) #6
  %i.m = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef -1) #6
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lua_concat(ptr noundef %0, i32 noundef 2) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.p = add nuw nsw i32 %.0, 1
  br label %bb.g

bb.n:                                             ; preds = %bb.i
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef nonnull @sentinel_) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #6
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.a) #6
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 1) #6
  %i.q = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #6
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lua_setfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @lua_getfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #6
  %i.s = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #6
  %i.t = icmp eq ptr %i.s, @sentinel_
  br i1 %i.t, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #6
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #6
  tail call void @lua_setfield(ptr noundef %0, i32 noundef 2, ptr noundef %i.a) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.b, %bb.c
  ret i32 1
}

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lua_getstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_getinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_iscfunction(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_setfenv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushlightuserdata(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 4883675319195015779}
!9 = !{i64 -8829470454099626666}
!10 = !{i64 6057897302651647077}
!11 = !{i64 -4824898628270684016}
!12 = !{i64 -2635079336299320858}
!13 = !{i64 6667810631862428055}
!14 = !{i64 3583605657383560581}
!15 = !{i64 -4071379808611006893}
!16 = !{i64 -5224644177847576991}
!17 = !{i64 7491006486187783945}
!18 = !{i64 -5503096289861552116}
!19 = !{i64 -2618623975181953603}
!20 = !{i64 5931911691010511443}
!21 = !{i64 7436021707540204651}
!22 = !{i64 -1348599025392809679}
!23 = !{i64 -5372606279566532765}
!24 = !{i64 -6666935200675840305}
!25 = !{i64 -6015930638198928166}
!26 = !{i64 -6429662277816353654}
!27 = !{i64 3253260666976544898}
!28 = !{i64 -7129317391696275310}
!29 = !{i64 9028510207481014663}
!30 = !{i64 1535762846505160604}
!31 = !{i64 7610052247122761745}
!32 = !{i64 8290934546931499738}
!33 = !{i64 -892431810928965109}
!34 = !{i64 890959334015563502}
!35 = !{i64 -5158939515289662868}
!36 = !{i64 7027029415059522128}
!37 = !{i64 -3288415836289411840}
!38 = !{i64 3282511783464868218}
!39 = !{i64 7197032817157959535}
!40 = !{i64 -4124311614697596717}
!41 = !{i64 -831674269122593819}
!42 = !{i64 -5433842748994050748}
!43 = !{i64 -7656372032504803182}
!44 = !{i64 2752854006826376090}
!45 = !{i64 -4761316933523940785}
!46 = !{i64 -5228145160771587492}
!47 = !{i64 -3999865010352460063}
!48 = !{i64 -5528757648042313361}
!49 = !{i64 -4872441013003051041}
!50 = !{i64 -1863120659438099015}
!51 = !{i64 7783001747529961652}
!52 = !{i64 -1387701583001214755}
!53 = !{i64 2569320823895463208}
!54 = !{i64 -535884456593267549}
!55 = !{i64 3740431226074482250}
!56 = !{i64 -3886620760339532516}
!57 = !{i64 2457691068526900033}
!58 = !{i64 -3014622951747018602}
!59 = !{i64 -3587280251957463441}
!60 = !{i64 -8114700283671805320}
!61 = !{!"any pointer", !5, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{i64 3567431607794448565}
!64 = !{i64 -5781141711033678696}
!65 = !{i64 -4403879901584797107}
!66 = !{i64 -8762273087654548840}
!67 = !{i64 7072120335808761469}
!68 = !{i64 5444080686236261653}
!69 = !{i64 -534122442855475325}
!70 = !{i64 -2973415838633479310}
!71 = !{i64 9104094067174640954}
!72 = !{i64 -494255113216586513}
!73 = !{!5, !5, i64 0}
!74 = distinct !{!74, !76}
!75 = !{i64 5257986605706619627}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{i64 3566399279535576290}
end_hunk_0

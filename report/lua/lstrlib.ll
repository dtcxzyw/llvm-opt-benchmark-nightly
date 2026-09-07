Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.luaL_Buffer = type { ptr, i64, i64, ptr, %union.anon }
%union.anon = type { x86_fp80, [1008 x i8] }
%struct.str_Writer = type { i32, %struct.luaL_Buffer }
%struct.MatchState = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.anon] }
%struct.anon = type { ptr, i64 }
%struct.Header = type { ptr, i32, i32 }

@strlib = internal constant [18 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str, ptr @str_byte }, %struct.luaL_Reg { ptr @.str.1, ptr @str_char }, %struct.luaL_Reg { ptr @.str.2, ptr @str_dump }, %struct.luaL_Reg { ptr @.str.3, ptr @str_find }, %struct.luaL_Reg { ptr @.str.4, ptr @str_format }, %struct.luaL_Reg { ptr @.str.5, ptr @gmatch }, %struct.luaL_Reg { ptr @.str.6, ptr @str_gsub }, %struct.luaL_Reg { ptr @.str.7, ptr @str_len }, %struct.luaL_Reg { ptr @.str.8, ptr @str_lower }, %struct.luaL_Reg { ptr @.str.9, ptr @str_match }, %struct.luaL_Reg { ptr @.str.10, ptr @str_rep }, %struct.luaL_Reg { ptr @.str.11, ptr @str_reverse }, %struct.luaL_Reg { ptr @.str.12, ptr @str_sub }, %struct.luaL_Reg { ptr @.str.13, ptr @str_upper }, %struct.luaL_Reg { ptr @.str.14, ptr @str_pack }, %struct.luaL_Reg { ptr @.str.15, ptr @str_packsize }, %struct.luaL_Reg { ptr @.str.16, ptr @str_unpack }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"malformed pattern (missing arguments to '%%b')\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid capture index %%%d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"-+0 \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"-#0\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"-+#0 \00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"specifier '%%q' cannot have modifiers\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"invalid conversion '%s' to 'format'\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"-+#0 123456789.\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"invalid format (too long)\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"invalid conversion specification: '%s'\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"value has no literal form\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"\\%d\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"\\%03d\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"1e9999\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"-1e9999\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"(0/0)\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"string/function/table\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"result too long\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"unfinished string for format 'z'\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@stringmetamethods = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.77, ptr @arith_add }, %struct.luaL_Reg { ptr @.str.78, ptr @arith_sub }, %struct.luaL_Reg { ptr @.str.79, ptr @arith_mul }, %struct.luaL_Reg { ptr @.str.80, ptr @arith_mod }, %struct.luaL_Reg { ptr @.str.81, ptr @arith_pow }, %struct.luaL_Reg { ptr @.str.82, ptr @arith_div }, %struct.luaL_Reg { ptr @.str.83, ptr @arith_idiv }, %struct.luaL_Reg { ptr @.str.84, ptr @arith_unm }, %struct.luaL_Reg { ptr @.str.76, ptr null }, %struct.luaL_Reg zeroinitializer], align 16
@.str.76 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"attempt to %s a '%s' with a '%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_string(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @luaL_checkversion_(ptr noundef %0, double noundef 5.050000e+02, i64 noundef 136) #12
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 17) #12
  tail call void @luaL_setfuncs(ptr noundef %0, ptr noundef nonnull @strlib, i32 noundef 0) #12
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 9) #12
  tail call void @luaL_setfuncs(ptr noundef %0, ptr noundef nonnull @stringmetamethods, i32 noundef 0) #12
  %i.a = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.37) #12 ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #12
  %i.b = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #12 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.76) #12
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #12
  ret i32 1
}

declare void @luaL_checkversion_(ptr noundef, double noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_setfuncs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @str_byte(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #12
  %i.c = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 1) #12 ; 6 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  %i.g = sub nsw i64 0, %i.d
  %i.h = icmp slt i64 %i.c, %i.g
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.d, 1
  %i.j = add i64 %i.i, %i.c
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.c, %bb.a ], [ 1, %bb.b ] ; 4 uses
  %i.k = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef %i.c) #12 ; 5 uses
  %i.l = icmp sgt i64 %i.k, %i.d
  br i1 %i.l, label %getendpos.exit, label %bb.d

bb.d:                                             ; preds = %posrelatI.exit
  %i.m = icmp sgt i64 %i.k, -1
  br i1 %i.m, label %getendpos.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sub nsw i64 0, %i.d
  %i.o = icmp slt i64 %i.k, %i.n
  br i1 %i.o, label %getendpos.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i64 %i.d, 1
  %i.q = add i64 %i.p, %i.k
  br label %getendpos.exit

getendpos.exit:                                   ; preds = %posrelatI.exit, %bb.d, %bb.e, %bb.f
  %.0.i27 = phi i64 [ %i.q, %bb.f ], [ %i.d, %posrelatI.exit ], [ %i.k, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %i.r = icmp ugt i64 %.0.i, %.0.i27
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %getendpos.exit
  %i.s = sub nuw i64 %.0.i27, %.0.i               ; 2 uses
  %i.t = icmp ugt i64 %i.s, 2147483646
  br i1 %i.t, label %bb.h, label %.lr.ph, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.v = trunc nuw nsw i64 %i.s to i32
  %i.w = add nuw nsw i32 %i.v, 1                  ; 2 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.17) #12
  %i.x = getelementptr i8, ptr %i.b, i64 %.0.i
  %1 = add i64 %.0.i27, 1
  %2 = sub i64 %1, %.0.i
  %wide.trip.count = and i64 %2, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ab) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %getendpos.exit, %bb.h
  %.022 = phi i32 [ 0, %getendpos.exit ], [ %i.u, %bb.h ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_char(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 16       ; 4 uses
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = call ptr @luaL_buffinitsize(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.b) #12
  %.not14 = icmp slt i32 %i.a, 1
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nuw i32 %i.a, 1
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.f = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.e) #12 ; 2 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.h = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull @.str.18) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = trunc i64 %i.f to i8
  %i.j = getelementptr i8, ptr %i.c, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  store i8 %i.i, ptr %i.k, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @luaL_pushresultsize(ptr noundef nonnull %1, i64 noundef %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_dump(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.str_Writer, align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef 2) #12
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #12
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @lua_iscfunction(ptr noundef %0, i32 noundef 1) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.critedge, !prof !14

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.19) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #12
  store i32 0, ptr %1, align 16, !tbaa !20
  %i.f = call i32 @lua_dump(ptr noundef %0, ptr noundef nonnull @writer, ptr noundef nonnull %1, i32 noundef %i.a) #12 ; 0 uses
  call void @lua_settop(ptr noundef %0, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @str_find(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @str_format(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.luaL_Buffer, align 16       ; 27 uses
  %i.d = alloca [32 x i8], align 16               ; 28 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = tail call i32 @lua_gettop(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.g = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #12
  %.not165 = icmp eq i64 %i.h, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 25 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ck
  %.074164 = phi ptr [ %i.g, %.lr.ph ], [ %.276, %bb.ck ] ; 5 uses
  %.077163 = phi i32 [ 1, %.lr.ph ], [ %.178, %bb.ck ] ; 4 uses
  %i.n = load i8, ptr %.074164, align 1, !tbaa !13 ; 2 uses
  %.not = icmp eq i8 %i.n, 37
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 16, !tbaa !21  ; 2 uses
  %i.p = load i64, ptr %i.k, align 8, !tbaa !22
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre = load i8, ptr %.074164, align 1, !tbaa !13
  %.pre168 = load i64, ptr %i.j, align 16, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi i64 [ %.pre168, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = phi i8 [ %.pre, %bb.d ], [ %i.n, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.074164, i64 1
  %i.v = load ptr, ptr %1, align 16, !tbaa !23
  %i.w = add i64 %i.s, 1
  store i64 %i.w, ptr %i.j, align 16, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 %i.t, ptr %i.x, align 1, !tbaa !13
  br label %bb.ck

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.074164, i64 1 ; 5 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = icmp eq i8 %i.z, 37
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.j, align 16, !tbaa !21 ; 2 uses
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !22
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre175 = load i8, ptr %i.y, align 1, !tbaa !13
  %.pre176 = load i64, ptr %i.j, align 16, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i64 [ %.pre176, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = phi i8 [ %.pre175, %bb.h ], [ 37, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.074164, i64 2
  %i.ai = load ptr, ptr %1, align 16, !tbaa !23
  %i.aj = add i64 %i.af, 1
  store i64 %i.aj, ptr %i.j, align 16, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !13
  br label %bb.ck

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.al = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 120) #12 ; 9 uses
  %i.am = add nsw i32 %.077163, 1                 ; 16 uses
  %.not82 = icmp slt i32 %.077163, %i.f
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull @.str.30) #12
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.ao = call i64 @strspn(ptr noundef nonnull readonly %i.y, ptr noundef nonnull @.str.42) #13 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 21
  br i1 %i.aq, label %bb.m, label %getformat.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.43) #12 ; 0 uses
  br label %getformat.exit

getformat.exit:                                   ; preds = %bb.l, %bb.m
  store i8 37, ptr %i.d, align 16, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.y, i64 %i.ap, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !13
  %i.at = getelementptr inbounds i8, ptr %i.y, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.at, align 1, !tbaa !13
  switch i8 %i.av, label %bb.ci [
end_hunk_0

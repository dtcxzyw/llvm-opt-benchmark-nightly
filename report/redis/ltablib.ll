inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.luaL_Buffer = type { ptr, i32, ptr, [8192 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@tab_funcs = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.1, ptr @tconcat }, %struct.luaL_Reg { ptr @.str.2, ptr @foreach }, %struct.luaL_Reg { ptr @.str.3, ptr @foreachi }, %struct.luaL_Reg { ptr @.str.4, ptr @getn }, %struct.luaL_Reg { ptr @.str.5, ptr @maxn }, %struct.luaL_Reg { ptr @.str.6, ptr @tinsert }, %struct.luaL_Reg { ptr @.str.7, ptr @tremove }, %struct.luaL_Reg { ptr @.str.8, ptr @setn }, %struct.luaL_Reg { ptr @.str.9, ptr @sort }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foreachi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"getn\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"maxn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"setn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"'setn' is obsolete\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_table(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @luaL_register(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @tab_funcs) #3
  ret i32 1
}

declare void @luaL_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @tconcat(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 8        ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call ptr @luaL_optlstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #3
  call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.c = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #3
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = call i32 @lua_type(ptr noundef %0, i32 noundef 4) #3
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 4) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = trunc i64 %.in to i32                    ; 5 uses
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #3
  %i.j = icmp slt i32 %i.d, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %addfield.exit
  %.019 = phi i32 [ %i.p, %addfield.exit ], [ %i.d, %bb.d ] ; 3 uses
  call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.019) #3
  %i.k = call i32 @lua_isstring(ptr noundef %0, i32 noundef -1) #3
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %addfield.exit

bb.e:                                             ; preds = %.lr.ph
  %i.l = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #3
  %i.m = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.l) #3
  %i.n = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %i.m, i32 noundef %.019) #3 ; 0 uses
  br label %addfield.exit

addfield.exit:                                    ; preds = %.lr.ph, %bb.e
  call void @luaL_addvalue(ptr noundef nonnull %1) #3
  %i.o = load i64, ptr %i.a, align 8, !tbaa !8
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.b, i64 noundef %i.o) #3
  %i.p = add i32 %.019, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %i.i
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d
  %i.q = icmp eq i32 %i.d, %i.i
  br i1 %i.q, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %addfield.exit, %._crit_edge
  call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.i) #3
  %i.r = call i32 @lua_isstring(ptr noundef %0, i32 noundef -1) #3
  %.not.i17 = icmp eq i32 %i.r, 0
  br i1 %.not.i17, label %bb.f, label %addfield.exit18

bb.f:                                             ; preds = %._crit_edge.thread
  %i.s = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #3
  %i.t = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.s) #3
  %i.u = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %i.t, i32 noundef %i.i) #3 ; 0 uses
  br label %addfield.exit18

addfield.exit18:                                  ; preds = %._crit_edge.thread, %bb.f
  call void @luaL_addvalue(ptr noundef nonnull %1) #3
  br label %bb.g

bb.g:                                             ; preds = %addfield.exit18, %._crit_edge
  call void @luaL_pushresult(ptr noundef nonnull %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @foreach(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 6) #3
  tail call void @lua_pushnil(ptr noundef %0) #3
  %i.a = tail call i32 @lua_next(ptr noundef %0, i32 noundef 1) #3
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -3) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -3) #3
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #3
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #3
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #3
  %i.d = tail call i32 @lua_next(ptr noundef %0, i32 noundef 1) #3
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @foreachi(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 6) #3
  %.not15 = icmp slt i32 %i.b, 1
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = add nuw nsw i64 %i.a, 1
  %wide.trip.count = and i64 %1, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #3
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %indvars.iv) #3
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.c) #3
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #3
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #3
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @getn(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3
  %sext = shl i64 %i.a, 32
  %i.b = ashr exact i64 %sext, 32
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.b) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @maxn(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  tail call void @lua_pushnil(ptr noundef %0) #3
  %i.a = tail call i32 @lua_next(ptr noundef %0, i32 noundef 1) #3
  %.not12 = icmp eq i32 %i.a, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi double [ %.2, %bb.c ], [ 0.000000e+00, %bb.a ] ; 3 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #3
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call double @lua_tonumber(ptr noundef %0, i32 noundef -1) #3 ; 2 uses
  %i.e = fcmp ogt double %i.d, %.013
  %.1 = select i1 %i.e, double %i.d, double %.013
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.2 = phi double [ %.1, %bb.b ], [ %.013, %.lr.ph ] ; 2 uses
  %i.f = tail call i32 @lua_next(ptr noundef %0, i32 noundef 1) #3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.2, %bb.c ]
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %.0.lcssa) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tinsert(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = tail call i32 @lua_gettop(ptr noundef %0) #3
  switch i32 %i.d, label %bb.c [
    i32 2, label %.loopexit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #3
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %.not = icmp slt i32 %i.b, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.024 = phi i32 [ %i.g, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = add nsw i32 %.024, -1                    ; 3 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.g) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.024) #3
  %i.h = icmp sgt i32 %i.g, %i.f
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !15

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.12) #3
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.019 = phi i32 [ %i.c, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %.lr.ph ]
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.019) #3
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.021 = phi i32 [ %i.i, %bb.c ], [ 0, %.loopexit ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @tremove(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %sext = shl i64 %i.a, 32
  %i.c = ashr exact i64 %sext, 32
  %i.d = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef %i.c) #3
  %i.e = trunc i64 %i.d to i32                    ; 5 uses
  %i.f = icmp slt i32 %i.e, 1
  %.not = icmp sgt i32 %i.e, %i.b
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.e) #3
  %i.g = icmp slt i32 %i.e, %i.b
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %i.h, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = add nuw nsw i32 %.022, 1                 ; 3 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.h) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.022) #3
  %exitcond.not = icmp eq i32 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @lua_pushnil(ptr noundef %0) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %i.b) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.019 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @setn(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.13) #3 ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sort(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 5) #3
  %i.a = tail call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #3
  tail call void @luaL_checkstack(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.10) #3
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #3
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 6) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = trunc i64 %i.a to i32
  tail call void @lua_settop(ptr noundef %0, i32 noundef 2) #3
  tail call fastcc void @auxsort(ptr noundef %0, i32 noundef 1, i32 noundef %i.d)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_optlstring(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare i32 @lua_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare double @lua_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @auxsort(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.y
  %.087111 = phi i32 [ %.087..185, %bb.y ], [ %2, %bb.a ] ; 11 uses
  %.090110 = phi i32 [ %..090, %bb.y ], [ %1, %bb.a ] ; 11 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.090110) #3
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.087111) #3
  %i.b = tail call fastcc i32 @sort_comp(ptr noundef %0, i32 noundef -1, i32 noundef -2)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.090110) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.087111) #3
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = sub nsw i32 %.087111, %.090110           ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i32 %.087111, %.090110
  %i.f = sdiv i32 %i.e, 2                         ; 5 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.f) #3
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.090110) #3
  %i.g = tail call fastcc i32 @sort_comp(ptr noundef %0, i32 noundef -2, i32 noundef -1)
  %.not97 = icmp eq i32 %i.g, 0
  br i1 %.not97, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %i.f) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.090110) #3
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %.087111) #3
  %i.h = tail call fastcc i32 @sort_comp(ptr noundef %0, i32 noundef -1, i32 noundef -2)
  %.not98 = icmp eq i32 %i.h, 0
  br i1 %.not98, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %i.f) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.087111) #3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.i = icmp eq i32 %i.c, 2
  br i1 %i.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.f) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #3
  %i.j = add nsw i32 %.087111, -1                 ; 4 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.j) #3
  br label %bb.l

bb.l:                                             ; preds = %bb.x, %bb.k
  %.lcssa.sink = phi i32 [ %i.f, %bb.k ], [ %i.k, %bb.x ]
  %.lcssa119.sink = phi i32 [ %i.j, %bb.k ], [ %i.q, %bb.x ] ; 2 uses
  %.084 = phi i32 [ %.090110, %bb.k ], [ %i.k, %bb.x ]
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.lcssa.sink) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %.lcssa119.sink) #3
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %.185 = phi i32 [ %.084, %bb.l ], [ %i.k, %bb.r ] ; 5 uses
  %i.k = add nsw i32 %.185, 1                     ; 9 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.k) #3
  %i.l = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #3
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -4) #3
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #3
  %i.n = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1) #3
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  br label %sort_comp.exit

bb.o:                                             ; preds = %bb.m
  %i.o = tail call i32 @lua_lessthan(ptr noundef %0, i32 noundef -1, i32 noundef -2) #3
  br label %sort_comp.exit

sort_comp.exit:                                   ; preds = %bb.n, %bb.o
  %.0.i = phi i32 [ %i.o, %bb.o ], [ %i.n, %bb.n ]
  %.not99 = icmp eq i32 %.0.i, 0
  br i1 %.not99, label %.preheader, label %bb.p

bb.p:                                             ; preds = %sort_comp.exit
  %.not103 = icmp slt i32 %.185, %.087111
  br i1 %.not103, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14) #3 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  br label %bb.m, !llvm.loop !17

.preheader:                                       ; preds = %sort_comp.exit, %bb.w
  %.1 = phi i32 [ %i.q, %bb.w ], [ %.lcssa119.sink, %sort_comp.exit ] ; 3 uses
  %i.q = add nsw i32 %.1, -1                      ; 3 uses
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.q) #3
  %i.r = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #3
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -4) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -3) #3
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #3
  %i.t = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1) #3
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  br label %sort_comp.exit105

bb.t:                                             ; preds = %.preheader
  %i.u = tail call i32 @lua_lessthan(ptr noundef %0, i32 noundef -3, i32 noundef -1) #3
  br label %sort_comp.exit105

sort_comp.exit105:                                ; preds = %bb.s, %bb.t
  %.0.i104 = phi i32 [ %i.u, %bb.t ], [ %i.t, %bb.s ]
  %.not100 = icmp eq i32 %.0.i104, 0
  br i1 %.not100, label %bb.x, label %bb.u

bb.u:                                             ; preds = %sort_comp.exit105
  %.not102 = icmp sgt i32 %.1, %.090110
  br i1 %.not102, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14) #3 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  br label %.preheader, !llvm.loop !18

bb.x:                                             ; preds = %sort_comp.exit105
  %.not101 = icmp sgt i32 %.1, %i.k
  br i1 %.not101, label %bb.l, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lua_settop(ptr noundef %0, i32 noundef -4) #3
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.j) #3
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef 1, i32 noundef %i.k) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %i.j) #3
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef 1, i32 noundef %i.k) #3
  %i.w = sub nsw i32 %i.k, %.090110
  %i.x = sub nsw i32 %.087111, %i.k
  %i.y = icmp slt i32 %i.w, %i.x                  ; 4 uses
  %i.z = add nsw i32 %.185, 2                     ; 2 uses
  %..090 = select i1 %i.y, i32 %i.z, i32 %.090110 ; 2 uses
  %.087..185 = select i1 %i.y, i32 %.087111, i32 %.185 ; 2 uses
  %.185..087 = select i1 %i.y, i32 %.185, i32 %.087111
  %.090. = select i1 %i.y, i32 %.090110, i32 %i.z
  tail call fastcc void @auxsort(ptr noundef %0, i32 noundef %.090., i32 noundef %.185..087)
  %i.aa = icmp slt i32 %..090, %.087..185
  br i1 %i.aa, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.y, %bb.d, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sort_comp(ptr noundef %0, i32 noundef range(i32 -3, 0) %1, i32 noundef range(i32 -2, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #3
  %i.c = add nsw i32 %1, -1
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %i.c) #3
  %i.d = add nsw i32 %2, -2
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %i.d) #3
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #3
  %i.e = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1) #3
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @lua_lessthan(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  ret i32 %.0
}

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_lessthan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.luaL_Strbuf = type { ptr, ptr, ptr, ptr, [512 x i8] }
%struct.MatchState = type { i32, ptr, ptr, ptr, ptr, i32, [32 x %struct.anon] }
%struct.anon = type { ptr, i64 }
%struct.Header = type { ptr, i32, i32 }
%union.Ftypes = type { double, [32 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@_ZL6strlib = internal constant [18 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.1, ptr @_ZL8str_byteP9lua_State }, %struct.luaL_Reg { ptr @.str.2, ptr @_ZL8str_charP9lua_State }, %struct.luaL_Reg { ptr @.str.3, ptr @_ZL8str_findP9lua_State }, %struct.luaL_Reg { ptr @.str.4, ptr @_ZL10str_formatP9lua_State }, %struct.luaL_Reg { ptr @.str.5, ptr @_ZL6gmatchP9lua_State }, %struct.luaL_Reg { ptr @.str.6, ptr @_ZL8str_gsubP9lua_State }, %struct.luaL_Reg { ptr @.str.7, ptr @_ZL7str_lenP9lua_State }, %struct.luaL_Reg { ptr @.str.8, ptr @_ZL9str_lowerP9lua_State }, %struct.luaL_Reg { ptr @.str.9, ptr @_ZL9str_matchP9lua_State }, %struct.luaL_Reg { ptr @.str.10, ptr @_ZL7str_repP9lua_State }, %struct.luaL_Reg { ptr @.str.11, ptr @_ZL11str_reverseP9lua_State }, %struct.luaL_Reg { ptr @.str.12, ptr @_ZL7str_subP9lua_State }, %struct.luaL_Reg { ptr @.str.13, ptr @_ZL9str_upperP9lua_State }, %struct.luaL_Reg { ptr @.str.14, ptr @_ZL9str_splitP9lua_State }, %struct.luaL_Reg { ptr @.str.15, ptr @_ZL8str_packP9lua_State }, %struct.luaL_Reg { ptr @.str.16, ptr @_ZL12str_packsizeP9lua_State }, %struct.luaL_Reg { ptr @.str.17, ptr @_ZL10str_unpackP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
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
@.str.14 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"malformed pattern (missing arguments to '%%b')\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"invalid capture index %%%d\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"invalid capture index\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"missing argument #%d\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"'%%*' does not take a form\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\\000\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"string/function/table\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"size specifier is too large\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"unfinished string for format 'z'\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"__index\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z14luaopen_stringP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @_ZL6strlib)
  tail call void @_Z15lua_createtableP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  tail call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef 0)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef -2)
  %i.a = tail call noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef %0, i32 noundef -2) ; 0 uses
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef -2)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.63)
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
  ret i32 1
}

declare void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, -2147483648) i32 @_ZL8str_byteP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.c = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !12
  %i.e = icmp slt i32 %i.c, 0
  %i.f = trunc i64 %i.d to i32
  %i.g = add nsw i32 %i.f, 1
  %i.h = select i1 %i.e, i32 %i.g, i32 0
  %.0.i = add nsw i32 %i.h, %i.c                  ; 2 uses
  %i.i = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.0.i, i32 0)
  %i.j = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef %i.i) ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.l = icmp slt i32 %i.j, 0
  %i.m = trunc i64 %i.k to i32
  %i.n = add nsw i32 %i.m, 1
  %i.o = select i1 %i.l, i32 %i.n, i32 0
  %.0.i28 = add nsw i32 %i.o, %i.j
  %i.p = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.0.i28, i32 0)
  %i.q = call i32 @llvm.smax.i32(i32 %.0.i, i32 1) ; 4 uses
  %i.r = zext nneg i32 %i.p to i64
  %spec.select29 = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.r) ; 2 uses
  %spec.select = trunc nuw nsw i64 %spec.select29 to i32 ; 3 uses
  %i.s = icmp samesign ugt i32 %i.q, %spec.select
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = sub nuw nsw i32 %spec.select, %i.q
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %.not.not = icmp eq i64 %spec.select29, 2147483647
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.18) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.u, ptr noundef nonnull @.str.18)
  %i.v = zext nneg i32 %i.q to i64
  %i.w = add nuw nsw i32 %spec.select, 1
  %1 = sub nsw i32 %i.w, %i.q
  %wide.trip.count = zext i32 %1 to i64
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %gep, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !43

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.025
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8str_charP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 4 uses
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = call noundef ptr @_Z17luaL_buffinitsizeP9lua_StateP11luaL_Strbufm(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not16 = icmp slt i32 %i.a, 1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_Z19luaL_pushresultsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 1

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.018 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.a ]   ; 4 uses
  %.01417 = phi ptr [ %i.g, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef %.018) ; 2 uses
  %i.e = icmp ult i32 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %.018, ptr noundef nonnull @.str.19) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = trunc nuw i32 %i.d to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01417, i64 1
  store i8 %i.f, ptr %.01417, align 1, !tbaa !13
  %i.h = add nuw i32 %.018, 1
  %exitcond.not = icmp eq i32 %.018, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8str_findP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL12str_find_auxP9lua_Statei(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10str_formatP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 40 uses
  %i.c = alloca [32 x i8], align 16               ; 14 uses
  %i.d = alloca [512 x i8], align 16              ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef %0, ptr noundef nonnull %1)
  %.not91 = icmp eq i64 %i.h, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.06290 = phi i32 [ 1, %.lr.ph ], [ %.062.be, %.backedge ] ; 6 uses
  %.06489 = phi ptr [ %i.g, %.lr.ph ], [ %.064.be, %.backedge ] ; 6 uses
  %i.m = load i8, ptr %.06489, align 1, !tbaa !13 ; 2 uses
  %.not = icmp eq i8 %i.m, 37
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre = load i8, ptr %.06489, align 1, !tbaa !13
  %.pre99 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre99, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.s = phi i8 [ %.pre, %bb.d ], [ %i.m, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.06489, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.u, ptr %1, align 8, !tbaa !20
  store i8 %i.s, ptr %i.r, align 1, !tbaa !13
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.06489, i64 1 ; 7 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  switch i8 %i.w, label %bb.m [
    i8 37, label %bb.g
    i8 42, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre100 = load i8, ptr %i.v, align 1, !tbaa !13
  %.pre101 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %.pre101, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.ac = phi i8 [ %.pre100, %bb.h ], [ 37, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.06489, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ae, ptr %1, align 8, !tbaa !20
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !13
  br label %.backedge

bb.j:                                             ; preds = %bb.f
  %i.af = add nsw i32 %.06290, 1                  ; 3 uses
  %.not72 = icmp slt i32 %.06290, %i.f
  br i1 %.not72, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %i.af) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.06489, i64 2
  call void @_Z16luaL_addvalueanyP11luaL_Strbufi(ptr noundef nonnull %1, i32 noundef %i.af)
  br label %.backedge

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ah = add nsw i32 %.06290, 1                  ; 13 uses
  %.not71 = icmp slt i32 %.06290, %i.f
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %i.ah) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %i.v, align 1, !tbaa !13   ; 2 uses
  %.not39.i = icmp eq i8 %i.ai, 0
  br i1 %.not39.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %i.aj = phi i8 [ %i.ao, %bb.p ], [ %i.ai, %bb.o ] ; 3 uses
  %.040.i = phi ptr [ %i.an, %bb.p ], [ %i.v, %bb.o ] ; 2 uses
  %i.ak = zext nneg i8 %i.aj to i64
  %memchr.bounds.i = icmp ugt i8 %i.aj, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, 325494096527361
  %memchr.bits.i = icmp eq i64 %i.am, 0
  %memchr31.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr31.not.i, label %.critedge.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13  ; 2 uses
  %.not.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !45

.critedge.loopexit.i:                             ; preds = %bb.p, %.lr.ph.i
  %.0.lcssa.ph.i = phi ptr [ %.040.i, %.lr.ph.i ], [ %i.an, %bb.p ]
  %.lcssa.ph.i = phi i8 [ %i.aj, %.lr.ph.i ], [ 0, %bb.p ]
  %i.ap = add i8 %.lcssa.ph.i, -48
  %i.aq = icmp ult i8 %i.ap, 10
  %i.ar = zext i1 %i.aq to i64
  br label %.critedge.i

end_hunk_0

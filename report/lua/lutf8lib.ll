Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lutf8lib?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.luaL_Buffer = type { ptr, i64, i64, ptr, %union.anon }
%union.anon = type { x86_fp80, [1008 x i8] }

@funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.2, ptr @byteoffset }, %struct.luaL_Reg { ptr @.str.3, ptr @codepoint }, %struct.luaL_Reg { ptr @.str.4, ptr @utfchar }, %struct.luaL_Reg { ptr @.str.5, ptr @utflen }, %struct.luaL_Reg { ptr @.str.6, ptr @iter_codes }, %struct.luaL_Reg { ptr @.str.1, ptr null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"[\00-\7F\C2-\FD][\80-\BF]*\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"charpattern\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"codepoint\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"position out of bounds\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of bounds\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@utf8_decode.limits = internal unnamed_addr constant [6 x i32] [i32 -1, i32 128, i32 2048, i32 65536, i32 2097152, i32 67108864], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"initial position out of bounds\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"final position out of bounds\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_utf8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @luaL_checkversion_(ptr noundef %0, double noundef 5.050000e+02, i64 noundef 136) #4
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 6) #4
  tail call void @luaL_setfuncs(ptr noundef %0, ptr noundef nonnull @funcs, i32 noundef 0) #4
  %i.a = tail call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 14) #4 ; 0 uses
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.1) #4
  ret i32 1
}

declare void @luaL_checkversion_(ptr noundef, double noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_setfuncs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @byteoffset(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 6 uses
  %i.c = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #4 ; 6 uses
  %i.d = icmp sgt i64 %i.c, -1
  %i.e = load i64, ptr %i.a, align 8
  %i.f = add nsw i64 %i.e, 1
  %i.g = select i1 %i.d, i64 1, i64 %i.f
  %i.h = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef %i.g) #4 ; 4 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp sgt i64 %i.h, -1
  br i1 %i.j, label %u_posrelat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub i64 0, %i.h
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %u_posrelat.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.h, 1
  %i.n = add i64 %i.m, %i.i
  br label %u_posrelat.exit

u_posrelat.exit:                                  ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.h, %bb.a ] ; 3 uses
  %i.o = icmp sgt i64 %.0.i, 0                    ; 2 uses
  %i.p = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.q = icmp sle i64 %i.p, %i.i
  %.0 = select i1 %i.o, i64 %i.p, i64 %.0.i       ; 2 uses
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  br i1 %i.r, label %bb.d, label %u_posrelat.exit.thread, !prof !16

u_posrelat.exit.thread:                           ; preds = %bb.b, %u_posrelat.exit
  %.058 = phi i64 [ %.0, %u_posrelat.exit ], [ 0, %bb.b ]
  %i.s = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %u_posrelat.exit.thread, %u_posrelat.exit
  %.059 = phi i64 [ %.058, %u_posrelat.exit.thread ], [ %.0, %u_posrelat.exit ] ; 9 uses
  %i.t = icmp eq i64 %i.c, 0
  br i1 %i.t, label %.preheader60, label %bb.f

.preheader60:                                     ; preds = %bb.d
  %i.u = icmp sgt i64 %.059, 0
  br i1 %i.u, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader60, %bb.e
  %.177 = phi i64 [ %i.y, %bb.e ], [ %.059, %.preheader60 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %.177
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = icmp slt i8 %i.w, -64
  br i1 %i.x, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %.177, -1
  %i.z = icmp sgt i64 %.177, 1
  br i1 %i.z, label %.lr.ph, label %.critedge.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %.059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp slt i64 %i.c, 0
  br i1 %i.ae, label %.preheader62, label %.preheader66

.preheader66:                                     ; preds = %bb.h
  %i.af = load i64, ptr %i.a, align 8             ; 2 uses
  %.14869 = add nsw i64 %i.c, -1                  ; 2 uses
  %i.ag = icmp ne i64 %i.c, 1
  %i.ah = icmp slt i64 %.059, %i.af
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.preheader64, label %.critedge

.preheader62:                                     ; preds = %bb.h
  %i.aj = icmp sgt i64 %.059, 0
  br i1 %i.aj, label %.preheader61, label %.critedge.thread98

.preheader61:                                     ; preds = %.preheader62, %.critedge2
  %.274 = phi i64 [ %i.an, %.critedge2 ], [ %.059, %.preheader62 ] ; 3 uses
  %.04773 = phi i64 [ %i.ar, %.critedge2 ], [ %i.c, %.preheader62 ] ; 3 uses
  %i.ak = icmp samesign ugt i64 %.274, 1
  br i1 %i.ak, label %.lr.ph117, label %.critedge2.thread

bb.i:                                             ; preds = %.lr.ph117
  %i.al = icmp sgt i64 %.3116, 2
  br i1 %i.al, label %.lr.ph117, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.preheader61, %bb.i
  %smin.le = call i64 @llvm.smin.i64(i64 %.274, i64 1)
  %1 = add i64 %smin.le, -1
  %i.am = add nsw i64 %.04773, 1
  br label %.critedge

.lr.ph117:                                        ; preds = %.preheader61, %bb.i
  %.3116 = phi i64 [ %i.an, %bb.i ], [ %.274, %.preheader61 ] ; 2 uses
  %i.an = add nsw i64 %.3116, -1                  ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = icmp slt i8 %i.ap, -64
  br i1 %i.aq, label %bb.i, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph117
  %i.ar = add nsw i64 %.04773, 1                  ; 2 uses
  %i.as = icmp slt i64 %.04773, -1
  br i1 %i.as, label %.preheader61, label %.critedge

.loopexit65:                                      ; preds = %bb.j
  %.148 = add nsw i64 %.14871, -1                 ; 2 uses
  %i.at = icmp samesign ugt i64 %.14871, 1
  %i.au = icmp slt i64 %i.aw, %i.af
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.preheader64, label %.critedge

.preheader64:                                     ; preds = %.preheader66, %.loopexit65
  %.14871 = phi i64 [ %.148, %.loopexit65 ], [ %.14869, %.preheader66 ] ; 2 uses
  %.470 = phi i64 [ %i.aw, %.loopexit65 ], [ %.059, %.preheader66 ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader64, %bb.j
  %.5 = phi i64 [ %i.aw, %bb.j ], [ %.470, %.preheader64 ]
  %i.aw = add nsw i64 %.5, 1                      ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %i.b, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = icmp slt i8 %i.ay, -64
  br i1 %i.az, label %bb.j, label %.loopexit65

.critedge:                                        ; preds = %.loopexit65, %.critedge2, %.critedge2.thread, %.preheader66
  %.249 = phi i64 [ %i.am, %.critedge2.thread ], [ %i.ar, %.critedge2 ], [ %.14869, %.preheader66 ], [ %.148, %.loopexit65 ]
  %.6 = phi i64 [ %1, %.critedge2.thread ], [ %i.an, %.critedge2 ], [ %.059, %.preheader66 ], [ %i.aw, %.loopexit65 ]
  %.not = icmp eq i64 %.249, 0
  br i1 %.not, label %.critedge.thread, label %.critedge.thread98

.critedge.thread98:                               ; preds = %.preheader62, %.critedge
  call void @lua_pushnil(ptr noundef %0) #4
  br label %bb.m

.critedge.thread:                                 ; preds = %.lr.ph, %bb.e, %.preheader60, %.critedge
  %.697 = phi i64 [ %.6, %.critedge ], [ %.059, %.preheader60 ], [ %.177, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.ba = add nsw i64 %.697, 1                    ; 2 uses
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ba) #4
  %i.bb = getelementptr inbounds i8, ptr %i.b, i64 %.697
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12  ; 2 uses
  %.not55 = icmp sgt i8 %i.bc, -1
  br i1 %.not55, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.bd = icmp samesign ult i8 %i.bc, -64
  br i1 %i.bd, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  %i.be = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  br label %bb.m

.preheader:                                       ; preds = %bb.k, %.preheader
  %.7 = phi i64 [ %i.bj, %.preheader ], [ %.697, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 %.7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %i.bi = icmp slt i8 %i.bh, -64
  %i.bj = add nsw i64 %.7, 1                      ; 2 uses
  br i1 %i.bi, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.critedge.thread
  %.pre-phi = phi i64 [ %i.ba, %.critedge.thread ], [ %i.bj, %.preheader ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.pre-phi) #4
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l, %.critedge.thread98, %bb.g
  %.050 = phi i32 [ 1, %.critedge.thread98 ], [ %i.be, %bb.l ], [ 2, %.loopexit ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal i32 @codepoint(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 1) #4 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i64 %i.c, -1
  br i1 %i.e, label %u_posrelat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 0, %i.c
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %u_posrelat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.c, 1
  %i.i = add i64 %i.h, %i.d
  br label %u_posrelat.exit

u_posrelat.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.j = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef %.0.i) #4 ; 4 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.l = icmp sgt i64 %i.j, -1
  br i1 %i.l, label %u_posrelat.exit42, label %bb.d

bb.d:                                             ; preds = %u_posrelat.exit
  %i.m = sub i64 0, %i.j
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %u_posrelat.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.j, 1
  %i.p = add i64 %i.o, %i.k
  br label %u_posrelat.exit42

u_posrelat.exit42:                                ; preds = %u_posrelat.exit, %bb.d, %bb.e
  %.0.i41 = phi i64 [ %i.p, %bb.e ], [ %i.j, %u_posrelat.exit ], [ 0, %bb.d ] ; 4 uses
  %i.q = call i32 @lua_toboolean(ptr noundef %0, i32 noundef 4) #4
  %i.r = icmp sgt i64 %.0.i, 0
  br i1 %i.r, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %u_posrelat.exit42
  %i.s = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %u_posrelat.exit42
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11
  %.not = icmp sgt i64 %.0.i41, %i.t
  br i1 %.not, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = icmp sgt i64 %.0.i, %.0.i41
  br i1 %i.v, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = sub nsw i64 %.0.i41, %.0.i               ; 2 uses
  %i.x = icmp sgt i64 %i.w, 2147483646
  br i1 %i.x, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = trunc i64 %i.w to i32
  %i.z = add nsw i32 %i.y, 1
  call void @luaL_checkstack(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.10) #4
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %.0.i41 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %.0.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %i.aa
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %.fr = freeze i32 %i.q
  %.not39.not = icmp eq i32 %.fr, 0
  br i1 %.not39.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %.03260.us = phi i32 [ %i.bi, %bb.q ], [ 0, %.lr.ph ]
  %.03359.us = phi ptr [ %i.bg, %bb.q ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.ae = load i8, ptr %.03359.us, align 1, !tbaa !12 ; 3 uses
  %i.af = zext i8 %i.ae to i32                    ; 4 uses
  %i.ag = icmp sgt i8 %i.ae, -1
  br i1 %i.ag, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.ah = icmp samesign ugt i8 %i.ae, -3
  br i1 %i.ah, label %.loopexit.sink.split, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.l
  %i.ai = and i32 %i.af, 64
  %.not51.i.us = icmp eq i32 %i.ai, 0
  br i1 %.not51.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us, %bb.m
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.m ], [ 0, %.preheader.i.us ]
  %.03253.i.us = phi i32 [ %i.aq, %bb.m ], [ 0, %.preheader.i.us ]
  %.03452.i.us = phi i32 [ %i.ar, %bb.m ], [ %i.af, %.preheader.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03359.us, i64 %indvars.iv.next.i.us
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = and i32 %i.al, 192
  %i.an = icmp eq i32 %i.am, 128
  br i1 %i.an, label %bb.m, label %.loopexit.sink.split

bb.m:                                             ; preds = %.lr.ph.i.us
  %i.ao = shl i32 %.03253.i.us, 6
  %i.ap = and i32 %i.al, 63
  %i.aq = or disjoint i32 %i.ap, %i.ao            ; 2 uses
  %i.ar = shl i32 %.03452.i.us, 1                 ; 2 uses
  %i.as = and i32 %.03452.i.us, 32
  %.not.i.us = icmp eq i32 %i.as, 0
  br i1 %.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.i.us

._crit_edge.loopexit.i.us:                        ; preds = %bb.m
  %i.at = trunc nuw nsw i64 %indvars.iv.next.i.us to i32
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %.preheader.i.us
  %.034.lcssa.i.us = phi i32 [ %i.af, %.preheader.i.us ], [ %i.ar, %._crit_edge.loopexit.i.us ]
  %.032.lcssa.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.aq, %._crit_edge.loopexit.i.us ]
  %.0.lcssa.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.at, %._crit_edge.loopexit.i.us ] ; 2 uses
  %i.au = and i32 %.034.lcssa.i.us, 63
  %i.av = mul nuw nsw i32 %.0.lcssa.i.us, 5
  %i.aw = shl i32 %i.au, %i.av
  %i.ax = or i32 %i.aw, %.032.lcssa.i.us          ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit.sink.split, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.us
  %i.az = zext nneg i32 %.0.lcssa.i.us to i64     ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = icmp ult i32 %i.ax, %i.bb
  br i1 %i.bc, label %.loopexit.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.03359.us, i64 %i.az
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.us
  %.140.i.us = phi ptr [ %i.bd, %bb.o ], [ %.03359.us, %.lr.ph.split.us ]
  %.3.i.us = phi i32 [ %i.ax, %bb.o ], [ %i.af, %.lr.ph.split.us ] ; 3 uses
  %i.be = icmp samesign ugt i32 %.3.i.us, 1114111
  %i.bf = and i32 %.3.i.us, 2095104
  %or.cond.i.us = icmp eq i32 %i.bf, 55296
  %or.cond47.i.us = or i1 %i.be, %or.cond.i.us
  br i1 %or.cond47.i.us, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.140.i.us, i64 1 ; 2 uses
  %i.bh = zext nneg i32 %.3.i.us to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.bh) #4
  %i.bi = add nuw nsw i32 %.03260.us, 1           ; 2 uses
  %i.bj = icmp ult ptr %i.bg, %i.aa
  br i1 %i.bj, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %.03260 = phi i32 [ %i.cm, %bb.v ], [ 0, %.lr.ph ]
  %.03359 = phi ptr [ %i.ck, %bb.v ], [ %i.ac, %.lr.ph ] ; 4 uses
  %i.bk = load i8, ptr %.03359, align 1, !tbaa !12 ; 3 uses
  %i.bl = zext i8 %i.bk to i32                    ; 4 uses
  %i.bm = icmp sgt i8 %i.bk, -1
  br i1 %i.bm, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.bn = icmp samesign ugt i8 %i.bk, -3
  br i1 %i.bn, label %.loopexit.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bo = and i32 %i.bl, 64
  %.not51.i = icmp eq i32 %i.bo, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.preheader.i ]
  %.03253.i = phi i32 [ %i.bw, %bb.s ], [ 0, %.preheader.i ]
  %.03452.i = phi i32 [ %i.bx, %bb.s ], [ %i.bl, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03359, i64 %indvars.iv.next.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !12
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = and i32 %i.br, 192
  %i.bt = icmp eq i32 %i.bs, 128
  br i1 %i.bt, label %bb.s, label %.loopexit.sink.split

bb.s:                                             ; preds = %.lr.ph.i
  %i.bu = shl i32 %.03253.i, 6
  %i.bv = and i32 %i.br, 63
  %i.bw = or disjoint i32 %i.bv, %i.bu            ; 2 uses
  %i.bx = shl i32 %.03452.i, 1                    ; 2 uses
  %i.by = and i32 %.03452.i, 32
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.s
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ %i.bl, %.preheader.i ], [ %i.bx, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bw, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bz, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ca = and i32 %.034.lcssa.i, 63
  %i.cb = mul nuw nsw i32 %.0.lcssa.i, 5
  %i.cc = shl i32 %i.ca, %i.cb
  %i.cd = or i32 %i.cc, %.032.lcssa.i             ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.loopexit.sink.split, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.cf = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15
  %i.ci = icmp ult i32 %i.cd, %i.ch
  br i1 %i.ci, label %.loopexit.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %.03359, i64 %i.cf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split
  %.140.i = phi ptr [ %i.cj, %bb.u ], [ %.03359, %.lr.ph.split ]
  %.3.i = phi i32 [ %i.cd, %bb.u ], [ %i.bl, %.lr.ph.split ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.140.i, i64 1 ; 2 uses
  %i.cl = zext nneg i32 %.3.i to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.cl) #4
  %i.cm = add nuw nsw i32 %.03260, 1              ; 2 uses
  %i.cn = icmp ult ptr %i.ck, %i.aa
  br i1 %i.cn, label %.lr.ph.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.t, %._crit_edge.i, %bb.r, %.lr.ph.i, %bb.l, %._crit_edge.i.us, %bb.n, %bb.p, %.lr.ph.i.us, %bb.j
  %.str.11.sink = phi ptr [ @.str.10, %bb.j ], [ @.str.11, %bb.l ], [ @.str.11, %.lr.ph.i.us ], [ @.str.11, %.lr.ph.i ], [ @.str.11, %bb.p ], [ @.str.11, %bb.n ], [ @.str.11, %._crit_edge.i.us ], [ @.str.11, %bb.r ], [ @.str.11, %._crit_edge.i ], [ @.str.11, %bb.t ]
  %i.co = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull %.str.11.sink) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.q, %.loopexit.sink.split, %bb.k, %bb.i
  %.2 = phi i32 [ 0, %bb.i ], [ %i.co, %.loopexit.sink.split ], [ %i.bi, %bb.q ], [ 0, %bb.k ], [ %i.cm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @utfchar(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 16       ; 5 uses
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #4 ; 3 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 1) #4 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2147483648
  br i1 %i.d, label %pushutfchar.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.12) #4 ; 0 uses
  br label %pushutfchar.exit

pushutfchar.exit:                                 ; preds = %bb.b, %bb.c
  %i.f = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %i.c) #4 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #4
  %.not10 = icmp slt i32 %i.a, 1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %pushutfchar.exit9
  %.011 = phi i32 [ %i.k, %pushutfchar.exit9 ], [ 1, %bb.d ] ; 4 uses
  %i.g = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %.011) #4 ; 2 uses
  %i.h = icmp ult i64 %i.g, 2147483648
  br i1 %i.h, label %pushutfchar.exit9, label %bb.e, !prof !13

bb.e:                                             ; preds = %.lr.ph
  %i.i = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %.011, ptr noundef nonnull @.str.12) #4 ; 0 uses
  br label %pushutfchar.exit9

pushutfchar.exit9:                                ; preds = %.lr.ph, %bb.e
  %i.j = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %i.g) #4 ; 0 uses
  call void @luaL_addvalue(ptr noundef nonnull %1) #4
  %i.k = add nuw i32 %.011, 1
  %exitcond.not = icmp eq i32 %.011, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %pushutfchar.exit9, %bb.d
  call void @luaL_pushresult(ptr noundef nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %pushutfchar.exit
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 3) i32 @utflen(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 3 uses
  %i.c = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 2, i64 noundef 1) #4 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i64 %i.c, -1
  br i1 %i.e, label %u_posrelat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 0, %i.c
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %u_posrelat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %i.c, 1
  %i.i = add i64 %i.h, %i.d
  br label %u_posrelat.exit

u_posrelat.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.j = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef -1) #4 ; 4 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.l = icmp sgt i64 %i.j, -1
  br i1 %i.l, label %u_posrelat.exit37, label %bb.d

bb.d:                                             ; preds = %u_posrelat.exit
  %i.m = sub i64 0, %i.j
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %u_posrelat.exit37, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.j, 1
  %i.p = add i64 %i.o, %i.k
  br label %u_posrelat.exit37

u_posrelat.exit37:                                ; preds = %u_posrelat.exit, %bb.d, %bb.e
  %.0.i36 = phi i64 [ %i.p, %bb.e ], [ %i.j, %u_posrelat.exit ], [ 0, %bb.d ] ; 4 uses
  %i.q = call i32 @lua_toboolean(ptr noundef %0, i32 noundef 4) #4
  %i.r = icmp sgt i64 %.0.i, 0                    ; 2 uses
  %i.s = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = icmp sle i64 %i.s, %i.t
  %.024 = select i1 %i.r, i64 %i.s, i64 %.0.i     ; 3 uses
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %u_posrelat.exit37
  %i.w = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #4 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %u_posrelat.exit37
  %i.x = phi i64 [ %.pre, %bb.f ], [ %i.t, %u_posrelat.exit37 ]
  %.not = icmp sgt i64 %.0.i36, %i.x
  br i1 %.not, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15) #4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not33.not53 = icmp slt i64 %.024, %.0.i36
  br i1 %.not33.not53, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %.fr = freeze i32 %i.q
  %.not34.not = icmp eq i32 %.fr, 0
  %i.z = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not34.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.155.us = phi i64 [ %i.bf, %bb.o ], [ %.024, %.lr.ph ] ; 6 uses
  %.02554.us = phi i64 [ %i.bg, %bb.o ], [ 0, %.lr.ph ]
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %.155.us ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12  ; 3 uses
  %i.ac = zext i8 %i.ab to i32                    ; 4 uses
  %i.ad = icmp sgt i8 %i.ab, -1
  br i1 %i.ad, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.ae = icmp samesign ugt i8 %i.ab, -3
  br i1 %i.ae, label %.thread, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.j
  %i.af = and i32 %i.ac, 64
  %.not51.i.us = icmp eq i32 %i.af, 0
  br i1 %.not51.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us, %bb.k
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.k ], [ 0, %.preheader.i.us ]
  %.03253.i.us = phi i32 [ %i.an, %bb.k ], [ 0, %.preheader.i.us ]
  %.03452.i.us = phi i32 [ %i.ao, %bb.k ], [ %i.ac, %.preheader.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.i.us
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 192
  %i.ak = icmp eq i32 %i.aj, 128
  br i1 %i.ak, label %bb.k, label %.thread

bb.k:                                             ; preds = %.lr.ph.i.us
  %i.al = shl i32 %.03253.i.us, 6
  %i.am = and i32 %i.ai, 63
  %i.an = or disjoint i32 %i.am, %i.al            ; 2 uses
  %i.ao = shl i32 %.03452.i.us, 1                 ; 2 uses
  %i.ap = and i32 %.03452.i.us, 32
  %.not.i.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.i.us

._crit_edge.loopexit.i.us:                        ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.i.us to i32
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %.preheader.i.us
  %.034.lcssa.i.us = phi i32 [ %i.ac, %.preheader.i.us ], [ %i.ao, %._crit_edge.loopexit.i.us ]
  %.032.lcssa.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.an, %._crit_edge.loopexit.i.us ]
  %.0.lcssa.i.us = phi i32 [ 0, %.preheader.i.us ], [ %i.aq, %._crit_edge.loopexit.i.us ] ; 2 uses
  %i.ar = and i32 %.034.lcssa.i.us, 63
  %i.as = mul nuw nsw i32 %.0.lcssa.i.us, 5
  %i.at = shl i32 %i.ar, %i.as
  %i.au = or i32 %i.at, %.032.lcssa.i.us          ; 3 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.us
  %i.aw = zext nneg i32 %.0.lcssa.i.us to i64     ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.az = icmp ult i32 %i.au, %i.ay
  br i1 %i.az, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.us
  %.140.i.us = phi ptr [ %i.ba, %bb.m ], [ %i.aa, %.lr.ph.split.us ]
  %.3.i.us = phi i32 [ %i.au, %bb.m ], [ %i.ac, %.lr.ph.split.us ] ; 2 uses
  %i.bb = icmp samesign ugt i32 %.3.i.us, 1114111
  %i.bc = and i32 %.3.i.us, 2095104
  %or.cond.i.us = icmp eq i32 %i.bc, 55296
  %or.cond47.i.us = or i1 %i.bb, %or.cond.i.us
  br i1 %or.cond47.i.us, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.140.i.us, i64 1
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.z                     ; 2 uses
  %i.bg = add nuw nsw i64 %.02554.us, 1           ; 2 uses
  %.not33.not.us = icmp slt i64 %i.bf, %.0.i36
  br i1 %.not33.not.us, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.155 = phi i64 [ %i.ck, %bb.t ], [ %.024, %.lr.ph ] ; 5 uses
  %.02554 = phi i64 [ %i.cl, %bb.t ], [ 0, %.lr.ph ]
  %i.bh = getelementptr inbounds i8, ptr %i.b, i64 %.155 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12  ; 3 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = icmp sgt i8 %i.bi, -1
  br i1 %i.bk, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  %i.bl = icmp samesign ugt i8 %i.bi, -3
  br i1 %i.bl, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.bm = and i32 %i.bj, 64
  %.not51.i = icmp eq i32 %i.bm, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader.i ]
  %.03253.i = phi i32 [ %i.bu, %bb.q ], [ 0, %.preheader.i ]
  %.03452.i = phi i32 [ %i.bv, %bb.q ], [ %i.bj, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 192
  %i.br = icmp eq i32 %i.bq, 128
  br i1 %i.br, label %bb.q, label %.thread

bb.q:                                             ; preds = %.lr.ph.i
  %i.bs = shl i32 %.03253.i, 6
  %i.bt = and i32 %i.bp, 63
  %i.bu = or disjoint i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = shl i32 %.03452.i, 1                    ; 2 uses
  %i.bw = and i32 %.03452.i, 32
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ %i.bj, %.preheader.i ], [ %i.bv, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bu, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bx, %._crit_edge.loopexit.i ] ; 2 uses
  %i.by = and i32 %.034.lcssa.i, 63
  %i.bz = mul nuw nsw i32 %.0.lcssa.i, 5
  %i.ca = shl i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, %.032.lcssa.i             ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.cd = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = icmp ult i32 %i.cb, %i.cf
  br i1 %i.cg, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cd
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split
  %.140.i = phi ptr [ %i.ch, %bb.s ], [ %i.bh, %.lr.ph.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.140.i, i64 1
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.z                     ; 2 uses
  %i.cl = add nuw nsw i64 %.02554, 1              ; 2 uses
  %.not33.not = icmp slt i64 %i.ck, %.0.i36
  br i1 %.not33.not, label %.lr.ph.split, label %._crit_edge

.thread:                                          ; preds = %bb.p, %._crit_edge.i, %bb.r, %.lr.ph.i, %bb.n, %bb.l, %._crit_edge.i.us, %bb.j, %.lr.ph.i.us
  %.150 = phi i64 [ %.155.us, %.lr.ph.i.us ], [ %.155.us, %bb.n ], [ %.155, %.lr.ph.i ], [ %.155.us, %bb.j ], [ %.155.us, %._crit_edge.i.us ], [ %.155.us, %bb.l ], [ %.155, %bb.r ], [ %.155, %._crit_edge.i ], [ %.155, %bb.p ]
  call void @lua_pushnil(ptr noundef %0) #4
  %i.cm = add nsw i64 %.150, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %bb.o, %bb.i, %.thread
  %.sink = phi i64 [ %i.cm, %.thread ], [ 0, %bb.i ], [ %i.bg, %bb.o ], [ %i.cl, %bb.t ]
  %.229 = phi i32 [ 2, %.thread ], [ 1, %bb.i ], [ 1, %bb.o ], [ 1, %bb.t ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sink) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.229
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @iter_codes(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef 2) #4
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #4
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %i.d = icmp sgt i8 %i.c, -65
  br i1 %i.d, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.11) #4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %i.a, 0
  %i.f = select i1 %.not, ptr @iter_auxstrict, ptr @iter_auxlax
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 0) #4
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #4
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef 0) #4
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxlax(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @iter_aux(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxstrict(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @iter_aux(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iter_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = call i64 @lua_tointegerx(ptr noundef %0, i32 noundef 2, ptr noundef null) #4 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.i, %.preheader ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = icmp slt i8 %i.g, -64
  %i.i = add i64 %.0, 1
  br i1 %i.h, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %i.c, %bb.a ], [ %.0, %.preheader ] ; 3 uses
  %.not = icmp ult i64 %.1, %i.d
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12    ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 4 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i8 %i.k, -3
  br i1 %i.n, label %utf8_decode.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.o = and i32 %i.l, 64
  %.not51.i = icmp eq i32 %i.o, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ]
  %.03253.i = phi i32 [ %i.w, %bb.d ], [ 0, %.preheader.i ]
  %.03452.i = phi i32 [ %i.x, %bb.d ], [ %i.l, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %i.t = icmp eq i32 %i.s, 128
  br i1 %i.t, label %bb.d, label %utf8_decode.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = shl i32 %.03253.i, 6
  %i.v = and i32 %i.r, 63
  %i.w = or disjoint i32 %i.v, %i.u               ; 2 uses
  %i.x = shl i32 %.03452.i, 1                     ; 2 uses
  %i.y = and i32 %.03452.i, 32
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.z = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ %i.l, %.preheader.i ], [ %i.x, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.w, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.z, %._crit_edge.loopexit.i ] ; 2 uses
  %i.aa = and i32 %.034.lcssa.i, 63
  %i.ab = mul nuw nsw i32 %.0.lcssa.i, 5
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = or i32 %i.ac, %.032.lcssa.i             ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %utf8_decode.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.af = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = icmp ult i32 %i.ad, %i.ah
  br i1 %i.ai, label %utf8_decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.af
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.140.i = phi ptr [ %i.aj, %bb.f ], [ %i.j, %bb.b ]
  %.3.i = phi i32 [ %i.ad, %bb.f ], [ %i.l, %bb.b ] ; 3 uses
  %.not45.i = icmp eq i32 %1, 0
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp samesign ugt i32 %.3.i, 1114111
  %i.al = and i32 %.3.i, 2095104
  %or.cond.i = icmp eq i32 %i.al, 55296
  %or.cond47.i = or i1 %i.ak, %or.cond.i
  br i1 %or.cond47.i, label %utf8_decode.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.140.i, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = icmp slt i8 %i.an, -64
  br i1 %i.ao, label %utf8_decode.exit.thread, label %bb.j

utf8_decode.exit.thread:                          ; preds = %.lr.ph.i, %bb.e, %._crit_edge.i, %bb.h, %bb.c, %bb.i
  %i.ap = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.11) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.1, 1
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.aq) #4
  %i.ar = zext nneg i32 %.3.i to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ar) #4
  br label %bb.k

bb.k:                                             ; preds = %utf8_decode.exit.thread, %bb.j, %.loopexit
  %.117 = phi i32 [ 0, %.loopexit ], [ %i.ap, %utf8_decode.exit.thread ], [ 2, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.117
}

declare i64 @lua_tointegerx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!7, !7, i64 0}
!16 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lutf8lib?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }
%struct.luaL_Strbuf = type { ptr, ptr, ptr, ptr, [512 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@_ZL5funcs = internal constant [6 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.3, ptr @_ZL10byteoffsetP9lua_State }, %struct.luaL_Reg { ptr @.str.4, ptr @_ZL9codepointP9lua_State }, %struct.luaL_Reg { ptr @.str.5, ptr @_ZL7utfcharP9lua_State }, %struct.luaL_Reg { ptr @.str.6, ptr @_ZL6utflenP9lua_State }, %struct.luaL_Reg { ptr @.str.7, ptr @_ZL10iter_codesP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"[\00-\7F\C2-\F4][\80-\BF]*\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"charpattern\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"codepoint\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"position out of range\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@_ZZL11utf8_decodePKcPiE6limits = internal unnamed_addr constant [4 x i32] [i32 255, i32 127, i32 2047, i32 65535], align 16
@.str.13 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"final position out of string\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12luaopen_utf8P9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @_ZL5funcs)
  tail call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 14)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2)
  ret i32 1
}

declare void @_Z13luaL_registerP9lua_StatePKcPK8luaL_Reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10byteoffsetP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 4 uses
  %i.c = call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 6 uses
  %i.d = icmp sgt i32 %i.c, -1
  %i.e = load i64, ptr %i.a, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = add nsw i32 %i.f, 1
  %i.h = select i1 %i.d, i32 1, i32 %i.g
  %i.i = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef %i.h) ; 4 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.k = icmp sgt i32 %i.i, -1
  br i1 %i.k, label %_ZL10u_posrelatim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %i.i to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp ult i64 %i.j, %i.m
  br i1 %i.n, label %_ZL10u_posrelatim.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %i.j to i32
  %i.p = add nsw i32 %i.i, 1
  %i.q = add i32 %i.p, %i.o
  br label %_ZL10u_posrelatim.exit

_ZL10u_posrelatim.exit:                           ; preds = %bb.a, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ %i.i, %bb.a ] ; 4 uses
  %i.r = icmp sgt i32 %.0.i, 0
  br i1 %i.r, label %bb.d, label %_ZL10u_posrelatim.exit.thread

bb.d:                                             ; preds = %_ZL10u_posrelatim.exit
  %i.s = add nsw i32 %.0.i, -1                    ; 7 uses
  %i.t = trunc i64 %i.j to i32                    ; 3 uses
  %.not = icmp sgt i32 %i.s, %i.t
  br i1 %.not, label %_ZL10u_posrelatim.exit.thread, label %bb.e

_ZL10u_posrelatim.exit.thread:                    ; preds = %bb.b, %bb.d, %_ZL10u_posrelatim.exit
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.8) #5
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.c, 0
  br i1 %i.u, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e
  %.not64 = icmp eq i32 %.0.i, 1
  br i1 %.not64, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.059 = phi i32 [ %2, %bb.f ], [ %i.s, %.preheader ] ; 4 uses
  %1 = zext nneg i32 %.059 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp slt i8 %i.w, -64
  br i1 %i.x, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph
  %2 = add nsw i32 %.059, -1
  %i.y = icmp sgt i32 %.059, 1
  br i1 %i.y, label %.lr.ph, label %.critedge.thread, !llvm.loop !12

bb.g:                                             ; preds = %bb.e
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.9) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp slt i32 %i.c, 0
  br i1 %i.ad, label %.preheader45, label %.preheader48

.preheader48:                                     ; preds = %bb.i
  %.13751 = add nsw i32 %i.c, -1                  ; 2 uses
  %i.ae = icmp ne i32 %i.c, 1
  %i.af = icmp samesign ule i32 %.0.i, %i.t
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %.preheader47.preheader, label %.critedge

.preheader47.preheader:                           ; preds = %.preheader48
  %i.ah = zext nneg i32 %i.s to i64
  br label %.preheader47

.preheader45:                                     ; preds = %bb.i
  %.not63 = icmp eq i32 %i.s, 0
  br i1 %.not63, label %.critedge.thread83, label %.preheader44

.preheader44:                                     ; preds = %.preheader45, %.critedge2
  %.156 = phi i32 [ %indvars.le, %.critedge2 ], [ %i.s, %.preheader45 ] ; 2 uses
  %.03655 = phi i32 [ %i.aq, %.critedge2 ], [ %i.c, %.preheader45 ] ; 3 uses
  %i.ai = icmp ugt i32 %.156, 1
  br i1 %i.ai, label %.lr.ph93, label %.critedge2.thread

.lr.ph93:                                         ; preds = %.preheader44
  %i.aj = zext i32 %.156 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ak = icmp sgt i64 %indvars.iv7092, 2
  br i1 %i.ak, label %bb.k, label %.critedge2.thread, !llvm.loop !14

.critedge2.thread:                                ; preds = %.preheader44, %bb.j
  %i.al = add nsw i32 %.03655, 1
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph93, %bb.j
  %indvars.iv7092 = phi i64 [ %i.aj, %.lr.ph93 ], [ %indvars.iv.next71, %bb.j ] ; 2 uses
  %indvars.iv.next71 = add nsw i64 %indvars.iv7092, -1 ; 3 uses
  %i.am = and i64 %indvars.iv.next71, 4294967295
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = icmp slt i8 %i.ao, -64
  br i1 %i.ap, label %bb.j, label %.critedge2, !llvm.loop !14

.critedge2:                                       ; preds = %bb.k
  %indvars.le = trunc i64 %indvars.iv.next71 to i32 ; 3 uses
  %i.aq = add nsw i32 %.03655, 1                  ; 2 uses
  %i.ar = icmp slt i32 %.03655, -1
  %i.as = icmp ne i32 %indvars.le, 0
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %.preheader44, label %.critedge, !llvm.loop !15

.preheader47:                                     ; preds = %.preheader47.preheader, %bb.m
  %.13753 = phi i32 [ %.137, %bb.m ], [ %.13751, %.preheader47.preheader ] ; 2 uses
  %.352 = phi i64 [ %indvars.iv.next, %bb.m ], [ %i.ah, %.preheader47.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader47, %bb.l
  %indvars.iv = phi i64 [ %.352, %.preheader47 ], [ %indvars.iv.next, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp slt i8 %i.av, -64
  br i1 %i.aw, label %bb.l, label %bb.m, !llvm.loop !16

bb.m:                                             ; preds = %bb.l
  %i.ax = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %.137 = add nsw i32 %.13753, -1                 ; 2 uses
  %i.ay = icmp samesign ugt i32 %.13753, 1
  %i.az = icmp slt i32 %i.ax, %i.t
  %i.ba = and i1 %i.ay, %i.az
  br i1 %i.ba, label %.preheader47, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.m, %.critedge2, %.critedge2.thread, %.preheader48
  %.238 = phi i32 [ %i.al, %.critedge2.thread ], [ %i.aq, %.critedge2 ], [ %.13751, %.preheader48 ], [ %.137, %bb.m ]
  %.5 = phi i32 [ 0, %.critedge2.thread ], [ %indvars.le, %.critedge2 ], [ %i.s, %.preheader48 ], [ %i.ax, %bb.m ]
  %i.bb = icmp eq i32 %.238, 0
  br i1 %i.bb, label %.critedge.thread, label %.critedge.thread83

.critedge.thread:                                 ; preds = %.lr.ph, %bb.f, %.preheader, %.critedge
  %.582 = phi i32 [ %.5, %.critedge ], [ 0, %.preheader ], [ %.059, %.lr.ph ], [ 0, %bb.f ]
  %i.bc = add nuw nsw i32 %.582, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.bc)
  br label %bb.n

.critedge.thread83:                               ; preds = %.preheader45, %.critedge
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread83, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9codepointP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 1) ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %_ZL10u_posrelatim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %_ZL10u_posrelatim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.d to i32
  %i.j = add nsw i32 %i.c, 1
  %i.k = add i32 %i.j, %i.i
  br label %_ZL10u_posrelatim.exit

_ZL10u_posrelatim.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.l = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef %.0.i) ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %_ZL10u_posrelatim.exit36, label %bb.d

bb.d:                                             ; preds = %_ZL10u_posrelatim.exit
  %i.o = sext i32 %i.l to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %_ZL10u_posrelatim.exit36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i64 %i.m to i32
  %i.s = add nsw i32 %i.l, 1
  %i.t = add i32 %i.s, %i.r
  br label %_ZL10u_posrelatim.exit36

_ZL10u_posrelatim.exit36:                         ; preds = %_ZL10u_posrelatim.exit, %bb.d, %bb.e
  %.0.i35 = phi i32 [ %i.t, %bb.e ], [ %i.l, %_ZL10u_posrelatim.exit ], [ 0, %bb.d ] ; 4 uses
  %i.u = icmp sgt i32 %.0.i, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL10u_posrelatim.exit36
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10) #5
  unreachable

bb.g:                                             ; preds = %_ZL10u_posrelatim.exit36
  %i.v = trunc i64 %i.m to i32
  %.not = icmp sgt i32 %.0.i35, %i.v
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.10) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %.0.i, %.0.i35
  br i1 %i.w, label %.loopexit40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %reass.sub = sub nsw i32 %.0.i35, %.0.i
  %i.x = add nuw nsw i32 %reass.sub, 1
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.x, ptr noundef nonnull @.str.11)
  %i.y = zext nneg i32 %.0.i35 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = zext nneg i32 %.0.i to i64
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.z
  br i1 %i.ad, label %.lr.ph, label %.loopexit40

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %.048 = phi i32 [ %i.bd, %bb.o ], [ 0, %bb.j ]
  %.02947 = phi ptr [ %i.bc, %bb.o ], [ %i.ac, %bb.j ] ; 4 uses
  %i.ae = load i8, ptr %.02947, align 1, !tbaa !11 ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = icmp sgt i8 %i.ae, -1
  br i1 %i.ag, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.lr.ph ] ; 5 uses
  %.032.i = phi i32 [ %i.ap, %bb.k ], [ %i.af, %.lr.ph ] ; 3 uses
  %.030.i = phi i32 [ %i.ao, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = and i32 %.032.i, 64
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02947, i64 %indvars.iv.next.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %.not45.i = icmp eq i32 %i.al, 128
  %i.am = shl i32 %.030.i, 6
  %i.an = and i32 %i.ak, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %.loopexit, !llvm.loop !18

bb.l:                                             ; preds = %.preheader.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ar = and i32 %.032.i, 63
  %i.as = mul nuw nsw i32 %i.aq, 5
  %i.at = shl i32 %i.ar, %i.as
  %i.au = or i32 %i.at, %.030.i                   ; 4 uses
  %i.av = icmp samesign ugt i64 %indvars.iv.i, 3
  %i.aw = icmp ugt i32 %i.au, 1114111
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11utf8_decodePKcPiE6limits, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !19
  %.not44.i = icmp ule i32 %i.au, %i.ay
  %i.az = and i32 %i.au, 2095104
  %i.ba = icmp eq i32 %i.az, 55296
  %or.cond48.i = or i1 %i.ba, %.not44.i
  br i1 %or.cond48.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.02947, i64 %indvars.iv.i
  br label %bb.o

.loopexit:                                        ; preds = %bb.l, %bb.m, %bb.k
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  unreachable

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.135.i = phi ptr [ %i.bb, %bb.n ], [ %.02947, %.lr.ph ]
  %.3.i = phi i32 [ %i.au, %bb.n ], [ %i.af, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.135.i, i64 1 ; 2 uses
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.3.i)
  %i.bd = add nuw nsw i32 %.048, 1                ; 2 uses
  %i.be = icmp ult ptr %i.bc, %i.z
  br i1 %i.be, label %.lr.ph, label %.loopexit40, !llvm.loop !20

.loopexit40:                                      ; preds = %bb.o, %bb.j, %bb.i
  %.030 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.030
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL7utfcharP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 3 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %or.cond.i = icmp ult i32 %i.d, 1114112
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.13) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = icmp samesign ult i32 %i.d, 128
  br i1 %i.f, label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 1, %bb.d ] ; 3 uses
  %.015.i.i = phi i64 [ %i.l, %.preheader.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ %i.m, %.preheader.i.i ], [ 63, %bb.d ]
  %i.g = trunc i64 %.015.i.i to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = sub nsw i64 8, %indvars.iv.i.i
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  store i8 %i.i, ptr %i.k, align 1, !tbaa !11
  %i.l = lshr i64 %.015.i.i, 6                    ; 3 uses
  %i.m = lshr i32 %.0.i.i, 1                      ; 3 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = icmp samesign ugt i64 %i.l, %i.n
end_hunk_0

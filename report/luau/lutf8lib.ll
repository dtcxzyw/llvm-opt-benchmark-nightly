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
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
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
  %.059 = phi i32 [ %i.z, %bb.f ], [ %i.s, %.preheader ] ; 4 uses
  %i.v = zext nneg i32 %.059 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = icmp slt i8 %i.x, -64
  br i1 %i.y, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.lr.ph
  %i.z = add nsw i32 %.059, -1
  %i.aa = icmp sgt i32 %.059, 1
  br i1 %i.aa, label %.lr.ph, label %.critedge.thread, !llvm.loop !15

bb.g:                                             ; preds = %bb.e
  %i.ab = zext nneg i32 %i.s to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = icmp slt i8 %i.ad, -64
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.9) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = icmp slt i32 %i.c, 0
  br i1 %i.af, label %.preheader45, label %.preheader48

.preheader48:                                     ; preds = %bb.i
  %.13751 = add nsw i32 %i.c, -1                  ; 2 uses
  %i.ag = icmp ne i32 %i.c, 1
  %i.ah = icmp samesign ule i32 %.0.i, %i.t
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader47.preheader, label %.critedge

.preheader47.preheader:                           ; preds = %.preheader48
  %i.aj = zext nneg i32 %i.s to i64
  br label %.preheader47

.preheader45:                                     ; preds = %bb.i
  %.not63 = icmp eq i32 %i.s, 0
  br i1 %.not63, label %.critedge.thread83, label %.preheader44

.preheader44:                                     ; preds = %.preheader45, %.critedge2
  %.156 = phi i32 [ %indvars.le, %.critedge2 ], [ %i.s, %.preheader45 ] ; 2 uses
  %.03655 = phi i32 [ %i.ar, %.critedge2 ], [ %i.c, %.preheader45 ] ; 3 uses
  %i.ak = icmp ugt i32 %.156, 1
  br i1 %i.ak, label %.lr.ph93, label %.critedge2.thread

.lr.ph93:                                         ; preds = %.preheader44
  %i.al = zext i32 %.156 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.am = icmp sgt i64 %indvars.iv7092, 2
  br i1 %i.am, label %bb.k, label %.critedge2.thread, !llvm.loop !16

.critedge2.thread:                                ; preds = %.preheader44, %bb.j
  %1 = add nsw i32 %.03655, 1
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph93, %bb.j
  %indvars.iv7092 = phi i64 [ %i.al, %.lr.ph93 ], [ %indvars.iv.next71, %bb.j ] ; 2 uses
  %indvars.iv.next71 = add nsw i64 %indvars.iv7092, -1 ; 3 uses
  %i.an = and i64 %indvars.iv.next71, 4294967295
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = icmp slt i8 %i.ap, -64
  br i1 %i.aq, label %bb.j, label %.critedge2, !llvm.loop !16

.critedge2:                                       ; preds = %bb.k
  %indvars.le = trunc i64 %indvars.iv.next71 to i32 ; 3 uses
  %i.ar = add nsw i32 %.03655, 1                  ; 2 uses
  %i.as = icmp slt i32 %.03655, -1
  %i.at = icmp ne i32 %indvars.le, 0
  %i.au = and i1 %i.as, %i.at
  br i1 %i.au, label %.preheader44, label %.critedge, !llvm.loop !17

.preheader47:                                     ; preds = %.preheader47.preheader, %bb.m
  %.13753 = phi i32 [ %.137, %bb.m ], [ %.13751, %.preheader47.preheader ] ; 2 uses
  %.352 = phi i64 [ %indvars.iv.next, %bb.m ], [ %i.aj, %.preheader47.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader47, %bb.l
  %indvars.iv = phi i64 [ %.352, %.preheader47 ], [ %indvars.iv.next, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = icmp slt i8 %i.aw, -64
  br i1 %i.ax, label %bb.l, label %bb.m, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.ay = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %.137 = add nsw i32 %.13753, -1                 ; 2 uses
  %i.az = icmp samesign ugt i32 %.13753, 1
  %i.ba = icmp slt i32 %i.ay, %i.t
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %.preheader47, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.m, %.critedge2, %.critedge2.thread, %.preheader48
  %.238 = phi i32 [ %1, %.critedge2.thread ], [ %i.ar, %.critedge2 ], [ %.13751, %.preheader48 ], [ %.137, %bb.m ]
  %.5 = phi i32 [ 0, %.critedge2.thread ], [ %indvars.le, %.critedge2 ], [ %i.s, %.preheader48 ], [ %i.ay, %bb.m ]
  %i.bc = icmp eq i32 %.238, 0
  br i1 %i.bc, label %.critedge.thread, label %.critedge.thread83

.critedge.thread:                                 ; preds = %.lr.ph, %bb.f, %.preheader, %.critedge
  %.582 = phi i32 [ %.5, %.critedge ], [ 0, %.preheader ], [ %.059, %.lr.ph ], [ 0, %bb.f ]
  %i.bd = add nuw nsw i32 %.582, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.bd)
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
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
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
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
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
  %i.ae = load i8, ptr %.02947, align 1, !tbaa !12 ; 2 uses
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
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %.not45.i = icmp eq i32 %i.al, 128
  %i.am = shl i32 %.030.i, 6
  %i.an = and i32 %i.ak, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %.loopexit, !llvm.loop !0

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
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
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
  store i8 %i.i, ptr %i.k, align 1, !tbaa !12
  %i.l = lshr i64 %.015.i.i, 6                    ; 3 uses
  %i.m = lshr i32 %.0.i.i, 1                      ; 3 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = icmp samesign ugt i64 %i.l, %i.n
  br i1 %i.o, label %.preheader.i.i, label %bb.e, !llvm.loop !21

bb.e:                                             ; preds = %.preheader.i.i
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.q = xor i32 %i.m, -1
  %i.r = shl nsw i32 %i.q, 1
  %i.s = zext i32 %i.r to i64
  %i.t = or i64 %i.l, %i.s
  %i.u = shl i64 %indvars.iv.i.i, 32
  %sext.i.i = sub i64 30064771072, %i.u
  %i.v = ashr exact i64 %sext.i.i, 32
  br label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit

_ZL11buffutfcharP9lua_StateiPcPPKc.exit:          ; preds = %bb.d, %bb.e
  %.sink29.i.i = phi i64 [ %i.v, %bb.e ], [ 7, %bb.d ]
  %.sink.in.i.i = phi i64 [ %i.t, %bb.e ], [ %i.e, %bb.d ]
  %.1.i.i = phi i32 [ %i.p, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.sink.i.i = trunc i64 %.sink.in.i.i to i8
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %.sink29.i.i
  store i8 %.sink.i.i, ptr %i.w, align 1, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %narrow.i = sub nsw i32 0, %.1.i.i
  %i.y = sext i32 %narrow.i to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = sext i32 %.1.i.i to i64
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.z, i64 noundef %i.aa)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef %0, ptr noundef nonnull %1)
  %.not30 = icmp slt i32 %i.b, 1
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24, %bb.f
  call void @_Z15luaL_pushresultP11luaL_Strbuf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24
  %.031 = phi i32 [ 1, %.lr.ph ], [ %i.az, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24 ] ; 4 uses
  %i.ac = call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef %.031) ; 3 uses
  %or.cond.i12 = icmp ult i32 %i.ac, 1114112
  br i1 %or.cond.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %.031, ptr noundef nonnull @.str.13) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ac, 128
  br i1 %i.ae, label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24, label %.preheader.i.i13

.preheader.i.i13:                                 ; preds = %bb.i, %.preheader.i.i13
  %indvars.iv.i.i14 = phi i64 [ %indvars.iv.next.i.i17, %.preheader.i.i13 ], [ 1, %bb.i ] ; 3 uses
  %.015.i.i15 = phi i64 [ %i.ak, %.preheader.i.i13 ], [ %i.ad, %bb.i ] ; 2 uses
  %.0.i.i16 = phi i32 [ %i.al, %.preheader.i.i13 ], [ 63, %bb.i ]
  %i.af = trunc i64 %.015.i.i15 to i8
  %i.ag = and i8 %i.af, 63
  %i.ah = or disjoint i8 %i.ag, -128
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i14, 1 ; 2 uses
  %i.ai = sub nsw i64 8, %indvars.iv.i.i14
  %i.aj = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !12
  %i.ak = lshr i64 %.015.i.i15, 6                 ; 3 uses
  %i.al = lshr i32 %.0.i.i16, 1                   ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp samesign ugt i64 %i.ak, %i.am
  br i1 %i.an, label %.preheader.i.i13, label %bb.j, !llvm.loop !21

bb.j:                                             ; preds = %.preheader.i.i13
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.i.i17 to i32
  %i.ap = xor i32 %i.al, -1
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = or i64 %i.ak, %i.ar
  %i.at = shl i64 %indvars.iv.i.i14, 32
  %sext.i.i18 = sub i64 30064771072, %i.at
  %i.au = ashr exact i64 %sext.i.i18, 32
  br label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24

_ZL11buffutfcharP9lua_StateiPcPPKc.exit24:        ; preds = %bb.i, %bb.j
  %.sink29.i.i19 = phi i64 [ %i.au, %bb.j ], [ 7, %bb.i ]
  %.sink.in.i.i20 = phi i64 [ %i.as, %bb.j ], [ %i.ad, %bb.i ]
  %.1.i.i21 = phi i32 [ %i.ao, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %.sink.i.i22 = trunc i64 %.sink.in.i.i20 to i8
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %.sink29.i.i19
  store i8 %.sink.i.i22, ptr %i.av, align 1, !tbaa !12
  %narrow.i23 = sub nsw i32 0, %.1.i.i21
  %i.aw = sext i32 %narrow.i23 to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ab, i64 %i.aw
  %i.ay = sext i32 %.1.i.i21 to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.ax, i64 noundef %i.ay)
  %i.az = add nuw i32 %.031, 1
  %exitcond.not = icmp eq i32 %.031, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !22

bb.k:                                             ; preds = %._crit_edge, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 1, 3) i32 @_ZL6utflenP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 1) ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
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
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.l = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef -1) ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %_ZL10u_posrelatim.exit35, label %bb.d

bb.d:                                             ; preds = %_ZL10u_posrelatim.exit
  %i.o = sext i32 %i.l to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %_ZL10u_posrelatim.exit35, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i64 %i.m to i32
  %i.s = add nsw i32 %i.l, 1
  %i.t = add i32 %i.s, %i.r
  br label %_ZL10u_posrelatim.exit35

_ZL10u_posrelatim.exit35:                         ; preds = %_ZL10u_posrelatim.exit, %bb.d, %bb.e
  %.0.i34 = phi i32 [ %i.t, %bb.e ], [ %i.l, %_ZL10u_posrelatim.exit ], [ 0, %bb.d ] ; 3 uses
  %i.u = icmp sgt i32 %.0.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL10u_posrelatim.exit35
  %i.v = add nsw i32 %.0.i, -1                    ; 2 uses
  %i.w = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp sgt i32 %i.v, %i.w
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZL10u_posrelatim.exit35
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #5
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not31 = icmp sgt i32 %.0.i34, %i.w
  br i1 %.not31, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not32.not52.not = icmp sgt i32 %.0.i, %.0.i34
  br i1 %.not32.not52.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = ptrtoint ptr %i.b to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15) #5
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.02254 = phi i32 [ %i.v, %.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  %.02353 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.o ]
  %i.y = sext i32 %.02254 to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12   ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.j
  %i.ac = zext i8 %i.aa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %.032.i = phi i32 [ %i.al, %bb.k ], [ %i.ac, %.preheader.i.preheader ] ; 3 uses
  %.030.i = phi i32 [ %i.ak, %bb.k ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ad = and i32 %.032.i, 64
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not45.i = icmp eq i32 %i.ah, 128
  %i.ai = shl i32 %.030.i, 6
  %i.aj = and i32 %i.ag, 63
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %.thread, !llvm.loop !0

bb.l:                                             ; preds = %.preheader.i
  %i.am = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.an = and i32 %.032.i, 63
  %i.ao = mul nuw nsw i32 %i.am, 5
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = or i32 %i.ap, %.030.i                   ; 3 uses
  %i.ar = icmp samesign ugt i64 %indvars.iv.i, 3
  %i.as = icmp ugt i32 %i.aq, 1114111
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11utf8_decodePKcPiE6limits, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %.not44.i = icmp ule i32 %i.aq, %i.au
  %i.av = and i32 %i.aq, 2095104
  %i.aw = icmp eq i32 %i.av, 55296
  %or.cond48.i = or i1 %i.aw, %.not44.i
  br i1 %or.cond48.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i
  br label %bb.o

.thread:                                          ; preds = %bb.m, %bb.l, %bb.k
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  %i.ay = add nsw i32 %.02254, 1
  br label %._crit_edge

bb.o:                                             ; preds = %bb.j, %bb.n
  %.135.i = phi ptr [ %i.ax, %bb.n ], [ %i.z, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %.135.i, i64 1
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.x
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = add nuw nsw i32 %.02353, 1              ; 2 uses
  %.not32.not = icmp sgt i32 %.0.i34, %i.bc
  br i1 %.not32.not, label %bb.j, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.o, %.preheader, %.thread
  %.sink = phi i32 [ %i.ay, %.thread ], [ 0, %.preheader ], [ %i.bd, %bb.o ]
  %.2 = phi i32 [ 2, %.thread ], [ 1, %.preheader ], [ 1, %bb.o ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10iter_codesP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 0 uses
  tail call void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef %0, ptr noundef nonnull @_ZL8iter_auxP9lua_State, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef 1)
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef 0)
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z11lua_pushnilP9lua_State(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #1

declare void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Z15luaL_pushresultP11luaL_Strbuf(ptr noundef) local_unnamed_addr #1

declare void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 3) i32 @_ZL8iter_auxP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call noundef i32 @_Z14lua_tointegerxP9lua_StateiPi(ptr noundef %0, i32 noundef 2, ptr noundef null) ; 4 uses
  %i.d = icmp slt i32 %i.c, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  br i1 %i.d, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre31 = trunc i64 %.pre to i32
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  %i.f = trunc i64 %.pre to i32                   ; 3 uses
  %.not = icmp sgt i32 %i.c, %i.f
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.g, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = icmp slt i8 %i.i, -64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.j, label %.preheader, label %.loopexit.loopexit, !llvm.loop !24

.loopexit.loopexit:                               ; preds = %.preheader
  %i.k = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit, %bb.b
  %.pre-phi = phi i32 [ %.pre31, %..loopexit_crit_edge ], [ %i.f, %.loopexit.loopexit ], [ %i.f, %bb.b ]
  %.1 = phi i32 [ 0, %..loopexit_crit_edge ], [ %i.k, %.loopexit.loopexit ], [ %i.e, %bb.b ] ; 3 uses
  %.not20 = icmp slt i32 %.1, %.pre-phi
  br i1 %.not20, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.loopexit
  %i.l = sext i32 %.1 to i64
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12    ; 2 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp sgt i8 %i.n, -1
  br i1 %i.p, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.032.i = phi i32 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %.030.i = phi i32 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = and i32 %.032.i, 64
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 192
  %.not45.i = icmp eq i32 %i.u, 128
  %i.v = shl i32 %.030.i, 6
  %i.w = and i32 %i.t, 63
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %_ZL11utf8_decodePKcPi.exit.thread, !llvm.loop !0

bb.e:                                             ; preds = %.preheader.i
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aa = and i32 %.032.i, 63
  %i.ab = mul nuw nsw i32 %i.z, 5
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = or i32 %i.ac, %.030.i                   ; 4 uses
  %i.ae = icmp samesign ugt i64 %indvars.iv.i, 3
  %i.af = icmp ugt i32 %i.ad, 1114111
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i, label %_ZL11utf8_decodePKcPi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11utf8_decodePKcPiE6limits, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %.not44.i = icmp ule i32 %i.ad, %i.ah
  %i.ai = and i32 %i.ad, 2095104
  %i.aj = icmp eq i32 %i.ai, 55296
  %or.cond48.i = or i1 %i.aj, %.not44.i
  br i1 %or.cond48.i, label %_ZL11utf8_decodePKcPi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.135.i = phi ptr [ %i.ak, %bb.g ], [ %i.m, %bb.c ]
  %.3.i = phi i32 [ %i.ad, %bb.g ], [ %i.o, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %.135.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = icmp slt i8 %i.am, -64
  br i1 %i.an, label %_ZL11utf8_decodePKcPi.exit.thread, label %bb.i

_ZL11utf8_decodePKcPi.exit.thread:                ; preds = %bb.d, %bb.f, %bb.e, %bb.h
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.1, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.ao)
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.3.i)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.017 = phi i32 [ 2, %bb.i ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.017
}

declare void @_Z13lua_pushvalueP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z14lua_tointegerxP9lua_StateiPi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
end_hunk_0

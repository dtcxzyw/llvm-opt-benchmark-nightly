inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { ptr }

@.str = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Attempt to modify a readonly table\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"'for' initial value must be a number\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"'for' limit must be a number\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"'for' step must be a number\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaV_tonumber(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  switch i32 %i.c, label %bb.d [
    i32 3, label %bb.e
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = call i32 @luaO_str2d(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %i.a, align 8, !tbaa !11
  store double %i.g, ptr %1, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ %1, %bb.c ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden i32 @luaO_str2d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaV_tostring(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = load double, ptr %1, align 8, !tbaa !10
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.e) #8 ; 0 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9
  %i.h = call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.g) #8
  store ptr %i.h, ptr %1, align 8, !tbaa !10
  store i32 4, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaV_gettable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.b = add nuw nsw i32 %.03348, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.b, 100
  br i1 %exitcond.not, label %bb.m, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.pre, %bb.a ], [ %i.ac, %bb.b ]
  %.03149 = phi ptr [ %1, %bb.a ], [ %.3, %bb.b ] ; 5 uses
  %.03348 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]
  %i.d = icmp eq i32 %i.c, 5
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %.03149, align 8, !tbaa !10 ; 2 uses
  %i.f = tail call ptr @luaH_get(ptr noundef %i.e, ptr noundef %2) #8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.critedge.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !22
  %4 = and i8 %i.n, 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %bb.g, label %.critedge.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = tail call ptr @luaT_gettm(ptr noundef nonnull %i.k, i32 noundef 0, ptr noundef %i.q) #8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.critedge, label %bb.j

.critedge.critedge:                               ; preds = %bb.f, %bb.e, %bb.g, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i64, ptr %i.f, align 8, !tbaa !10
  store i64 %i.u, ptr %3, align 8, !tbaa !10
  %i.v = load i32, ptr %i.t, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !8
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.x = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %.03149, i32 noundef 0) #8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %.03149, ptr noundef nonnull @.str.1) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.3 = phi ptr [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 6
  br i1 %i.ad, label %bb.k, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.03149, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = load i64, ptr %.3, align 8, !tbaa !10
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !10
  %i.al = load i32, ptr %i.af, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !8
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %.03149, align 8, !tbaa !10
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !10
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.au, ptr %i.at, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp slt i64 %i.bd, 49
  br i1 %i.be, label %bb.l, label %callTMres.exit

bb.l:                                             ; preds = %bb.k
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 3) #8
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !34
  br label %callTMres.exit

callTMres.exit:                                   ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %i.ba, %bb.k ], [ %.pre.i, %bb.l ] ; 2 uses
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = ptrtoint ptr %i.ah to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %i.bj, ptr %i.ai, align 8, !tbaa !34
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.bf, i32 noundef 1) #8
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bi ; 2 uses
  %i.bm = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16 ; 2 uses
  store ptr %i.bn, ptr %i.ai, align 8, !tbaa !34
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !10
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !8
  br label %.critedge

bb.m:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %callTMres.exit, %bb.m
  ret void
}

declare hidden ptr @luaH_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaT_gettm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden ptr @luaT_gettmbyobj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaG_typeerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaV_settable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
.peel.begin:
  %4 = alloca %struct.lua_TValue, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.sroa.gep56 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %.0.sroa.gep, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.d = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #8
  br label %bb.i

bb.c:                                             ; preds = %.peel.begin
  %i.h = load ptr, ptr %1, align 8, !tbaa !10     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36
  %.not.peel = icmp eq i32 %i.j, 0
  br i1 %.not.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = tail call ptr @luaH_set(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2) #8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %i.s = load i8, ptr %i.r, align 2, !tbaa !22
  %i.t = and i8 %i.s, 2
  %.not52.peel = icmp eq i8 %i.t, 0
  br i1 %.not52.peel, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = tail call ptr @luaT_gettm(ptr noundef nonnull %i.p, i32 noundef 1, ptr noundef %i.w) #8 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  %.3.peel = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.x, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.3.peel, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !8   ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 6
  br i1 %i.ab, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.i
  %i.ac = load i64, ptr %.3.peel, align 8, !tbaa !10 ; 2 uses
  store i64 %i.ac, ptr %4, align 8, !tbaa !10
  store i32 %i.aa, ptr %.0.sroa.gep56, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.peel.next, %bb.x
  %.in = phi i64 [ %i.ac, %.peel.next ], [ %i.cx, %bb.x ]
  %i.ad = phi i32 [ %i.aa, %.peel.next ], [ %i.bp, %bb.x ]
  %.04469 = phi i32 [ 1, %.peel.next ], [ %i.cy, %bb.x ]
  %i.ae = inttoptr i64 %.in to ptr                ; 7 uses
  %i.af = icmp eq i32 %i.ad, 5
end_hunk_0
begin_hunk_1_@luaV_equalval:bb.a
  %i.ak = tail call ptr @luaT_gettm(ptr noundef nonnull %i.r, i32 noundef 4, ptr noundef %i.aj) #8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %get_compTM.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ak) #8
  %.not27.i = icmp eq i32 %i.am, 0
  br i1 %.not27.i, label %get_compTM.exit.thread, label %get_compTM.exit

bb.n:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %get_compTM.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !10 ; 4 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %get_compTM.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !22
  %i.ax = and i8 %i.aw, 16
  %.not.i34 = icmp eq i8 %i.ax, 0
  br i1 %.not.i34, label %bb.q, label %get_compTM.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = tail call ptr @luaT_gettm(ptr noundef nonnull %i.ar, i32 noundef 4, ptr noundef %i.bb) #8 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %get_compTM.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq ptr %i.ar, %i.at
  br i1 %i.be, label %get_compTM.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = icmp eq ptr %i.at, null
  br i1 %i.bf, label %get_compTM.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !22
  %i.bi = and i8 %i.bh, 16
  %.not26.i36 = icmp eq i8 %i.bi, 0
  br i1 %.not26.i36, label %bb.u, label %get_compTM.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 328
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = tail call ptr @luaT_gettm(ptr noundef nonnull %i.at, i32 noundef 4, ptr noundef %i.bl) #8 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %get_compTM.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bm) #8
  %.not27.i37 = icmp eq i32 %i.bo, 0
  br i1 %.not27.i37, label %get_compTM.exit.thread, label %get_compTM.exit

bb.w:                                             ; preds = %bb.a
  %i.bp = load ptr, ptr %1, align 8, !tbaa !10
  %i.bq = load ptr, ptr %2, align 8, !tbaa !10
  %i.br = icmp eq ptr %i.bp, %i.bq
  br label %get_compTM.exit.thread

get_compTM.exit:                                  ; preds = %bb.i, %bb.r, %bb.m, %bb.v
  %.0 = phi ptr [ %i.aa, %bb.m ], [ %i.bc, %bb.v ], [ %i.bc, %bb.r ], [ %i.aa, %bb.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.bw = load i64, ptr %.0, align 8, !tbaa !10
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !8
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !10
  %i.cd = load i32, ptr %i.a, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !8
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !35
  %i.cn = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp slt i64 %i.cq, 49
  br i1 %i.cr, label %bb.x, label %callTMres.exit

bb.x:                                             ; preds = %get_compTM.exit
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 3) #8
  %.pre.i = load ptr, ptr %i.bs, align 8, !tbaa !34
  br label %callTMres.exit

callTMres.exit:                                   ; preds = %get_compTM.exit, %bb.x
  %i.cs = phi ptr [ %i.cn, %get_compTM.exit ], [ %.pre.i, %bb.x ] ; 2 uses
  %i.ct = ptrtoint ptr %i.bt to i64
  %i.cu = ptrtoint ptr %i.bv to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %i.cw, ptr %i.bs, align 8, !tbaa !34
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.cs, i32 noundef 1) #8
  %i.cx = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cv ; 2 uses
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16 ; 2 uses
  store ptr %i.da, ptr %i.bs, align 8, !tbaa !34
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !10
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !8
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !8
  switch i32 %i.dh, label %.fold.split [
    i32 0, label %get_compTM.exit.thread
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %callTMres.exit
  %i.di = load i32, ptr %i.df, align 8, !tbaa !10
  %i.dj = icmp ne i32 %i.di, 0
  br label %get_compTM.exit.thread

.fold.split:                                      ; preds = %callTMres.exit
  br label %get_compTM.exit.thread

get_compTM.exit.thread:                           ; preds = %bb.v, %bb.m, %bb.t, %bb.s, %bb.o, %bb.p, %bb.q, %bb.u, %bb.j, %bb.f, %bb.g, %bb.h, %bb.l, %bb.k, %bb.y, %.fold.split, %callTMres.exit, %bb.n, %bb.e, %bb.a, %bb.w, %bb.d, %bb.c, %bb.b
  %.028.shrunk = phi i1 [ %i.br, %bb.w ], [ true, %bb.e ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ true, %bb.a ], [ true, %bb.n ], [ true, %.fold.split ], [ false, %callTMres.exit ], [ %i.dj, %bb.y ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.u ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.m ], [ false, %bb.v ]
  %.028 = zext i1 %.028.shrunk to i32
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_concat(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %luaV_tostring.exit74, %bb.a
  %.062 = phi i32 [ %2, %bb.a ], [ %i.bn, %luaV_tostring.exit74 ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.a ], [ %i.bm, %luaV_tostring.exit74 ] ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.g = sext i32 %.062 to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8
  %.off = add i32 %i.l, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.c, label %luaV_tostring.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8
  switch i32 %i.n, label %luaV_tostring.exit.thread [
    i32 4, label %bb.e
    i32 3, label %luaV_tostring.exit.a
  ]

luaV_tostring.exit.a:                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.o = load double, ptr %i.h, align 8, !tbaa !10
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.o) #8 ; 0 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #9
  %i.r = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.q) #8
  store ptr %i.r, ptr %i.h, align 8, !tbaa !10
  store i32 4, ptr %i.m, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.e

luaV_tostring.exit.thread:                        ; preds = %bb.c, %bb.b
  %i.s = call fastcc i32 @call_binTM(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, i32 noundef 15)
  %.not70 = icmp eq i32 %i.s, 0
  br i1 %.not70, label %bb.d, label %luaV_tostring.exit74

bb.d:                                             ; preds = %luaV_tostring.exit.thread
  call void @luaG_concaterror(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h) #8
  br label %luaV_tostring.exit74

bb.e:                                             ; preds = %bb.c, %luaV_tostring.exit.a
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.x = icmp sgt i32 %.0, 1
  br i1 %i.x, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.y = zext nneg i32 %.0 to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.k, align 8, !tbaa !8
  %cond = icmp eq i32 %i.z, 3
  br i1 %cond, label %bb.g, label %luaV_tostring.exit74

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.aa = load double, ptr %i.j, align 8, !tbaa !10
  %i.ab = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.aa) #8 ; 0 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9
  %i.ad = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.ac) #8
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !10
  store i32 4, ptr %i.k, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %luaV_tostring.exit74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.06581 = phi i64 [ %i.v, %.lr.ph.preheader ], [ %i.ar, %bb.i ] ; 3 uses
  %i.ae = sub nsw i64 0, %indvars.iv
  %i.af = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !8
  switch i32 %i.ai, label %.critedge.loopexit.split.loop.exit [
    i32 4, label %.critedge2
    i32 3, label %luaV_tostring.exit76
  ]

luaV_tostring.exit76:                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !10
  %i.ak = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.aj) #8 ; 0 uses
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9
  %i.am = call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.al) #8
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !10
  store i32 4, ptr %i.ah, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %luaV_tostring.exit76
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.aq = sub i64 -3, %.06581
  %.not72 = icmp ult i64 %i.ap, %i.aq
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge2
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.5) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge2
  %i.ar = add i64 %i.ap, %.06581                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !40

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.loopexit.split.loop.exit, %.preheader
  %.065.lcssa = phi i64 [ %i.v, %.preheader ], [ %.06581, %.critedge.loopexit.split.loop.exit ], [ %i.ar, %bb.i ]
  %.063.lcssa = phi i32 [ 1, %.preheader ], [ %i.as, %.critedge.loopexit.split.loop.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = call ptr @luaZ_openspace(ptr noundef %0, ptr noundef nonnull %i.au, i64 noundef %.065.lcssa) #8 ; 2 uses
  %i.aw = zext i32 %.063.lcssa to i64             ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.j
  %indvars.iv90 = phi i64 [ %i.aw, %.critedge ], [ %indvars.iv.next91, %bb.j ] ; 3 uses
  %.16687 = phi i64 [ 0, %.critedge ], [ %i.be, %bb.j ] ; 2 uses
  %i.ax = sub nsw i64 0, %indvars.iv90
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %.16687
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bb, i1 false)
  %i.be = add i64 %i.bb, %.16687                  ; 2 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, -1
  %i.bf = trunc nuw i64 %indvars.iv90 to i32
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.j, label %bb.k, !llvm.loop !41

bb.k:                                             ; preds = %bb.j
  %i.bh = sub nsw i64 0, %i.aw
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.bh ; 2 uses
  %i.bj = call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef %i.av, i64 noundef %i.be) #8
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 4, ptr %i.bk, align 8, !tbaa !8
  %i.bl = add nsw i32 %.063.lcssa, -1
  br label %luaV_tostring.exit74

luaV_tostring.exit74:                             ; preds = %bb.f, %bb.g, %bb.k, %luaV_tostring.exit.thread, %bb.d
  %.1 = phi i32 [ 1, %bb.g ], [ 1, %bb.d ], [ %i.bl, %bb.k ], [ 1, %luaV_tostring.exit.thread ], [ 1, %bb.f ] ; 2 uses
  %i.bm = sub nsw i32 %.0, %.1                    ; 2 uses
  %i.bn = sub nsw i32 %.062, %.1
  %i.bo = icmp sgt i32 %i.bm, 1
  br i1 %i.bo, label %bb.b, label %bb.l, !llvm.loop !42

bb.l:                                             ; preds = %luaV_tostring.exit74
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @call_binTM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 5, 16) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %1, i32 noundef %4) #8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %2, i32 noundef %4) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !8
  %i.f = icmp eq i32 %.pre, 0
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.016 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = load i64, ptr %.016, align 8, !tbaa !10
  store i64 %i.l, ptr %i.k, align 8, !tbaa !10
  %i.m = load i32, ptr %i.g, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !8
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.q, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.s, ptr %i.t, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.w, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.y, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.af, 49
  br i1 %i.ag, label %bb.c, label %callTMres.exit

bb.c:                                             ; preds = %.thread
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 3) #8
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %callTMres.exit

callTMres.exit:                                   ; preds = %.thread, %bb.c
  %i.ah = phi ptr [ %i.ac, %.thread ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.ai = ptrtoint ptr %3 to i64
  %i.aj = ptrtoint ptr %i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.al, ptr %i.j, align 8, !tbaa !34
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.ah, i32 noundef 1) #8
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ak ; 2 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 2 uses
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !34
end_hunk_1
begin_hunk_2_@luaV_execute:bb.a
  %i.jj = and i32 %i.jh, 255
  %i.jk = zext nneg i32 %i.jj to i64
  %.v842 = select i1 %.not790, ptr %.1713, ptr %i.z
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.v842, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !8
  %i.jo = icmp eq i32 %i.jn, 3
  br i1 %i.jo, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !8
  %i.jr = icmp eq i32 %i.jq, 3
  br i1 %i.jr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.js = load double, ptr %i.jg, align 8, !tbaa !10
  %i.jt = load double, ptr %i.jl, align 8, !tbaa !10
  %i.ju = fdiv double %i.js, %i.jt
  store double %i.ju, ptr %i.cb, align 8, !tbaa !10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.jv, align 8, !tbaa !8
  br label %.critedge.backedge

bb.at:                                            ; preds = %bb.ar, %bb.aq
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  call fastcc void @Arith(ptr noundef nonnull %0, ptr noundef %i.cb, ptr noundef nonnull %i.jg, ptr noundef %i.jl, i32 noundef 8)
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.au:                                            ; preds = %bb.l
  %i.jx = lshr i32 %i.ad, 23                      ; 2 uses
  %i.jy = and i32 %i.jx, 255
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.jz
  %i.kb = zext nneg i32 %i.jx to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.kb
  %.not787839 = icmp slt i32 %i.ad, 0
  %i.kd = select i1 %.not787839, ptr %i.ka, ptr %i.kc ; 3 uses
  %i.ke = lshr i32 %i.ad, 14
  %i.kf = and i32 %i.ad, 4194304
  %.not788 = icmp eq i32 %i.kf, 0
  %i.kg = and i32 %i.ke, 255
  %i.kh = zext nneg i32 %i.kg to i64
  %.v840 = select i1 %.not788, ptr %.1713, ptr %i.z
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %.v840, i64 %i.kh ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !8
  %i.kl = icmp eq i32 %i.kk, 3
  br i1 %i.kl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !8
  %i.ko = icmp eq i32 %i.kn, 3
  br i1 %i.ko, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kp = load double, ptr %i.kd, align 8, !tbaa !10 ; 2 uses
  %i.kq = load double, ptr %i.ki, align 8, !tbaa !10 ; 2 uses
  %i.kr = fdiv double %i.kp, %i.kq
  %i.ks = call double @llvm.floor.f64(double %i.kr)
  %i.kt = fneg double %i.ks
  %i.ku = call double @llvm.fmuladd.f64(double %i.kt, double %i.kq, double %i.kp)
  store double %i.ku, ptr %i.cb, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.kv, align 8, !tbaa !8
  br label %.critedge.backedge

bb.ax:                                            ; preds = %bb.av, %bb.au
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  call fastcc void @Arith(ptr noundef nonnull %0, ptr noundef %i.cb, ptr noundef nonnull %i.kd, ptr noundef %i.ki, i32 noundef 9)
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.ay:                                            ; preds = %bb.l
  %i.kx = lshr i32 %i.ad, 23                      ; 2 uses
  %i.ky = and i32 %i.kx, 255
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.kz
  %i.lb = zext nneg i32 %i.kx to i64
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.lb
  %.not785837 = icmp slt i32 %i.ad, 0
  %i.ld = select i1 %.not785837, ptr %i.la, ptr %i.lc ; 3 uses
  %i.le = lshr i32 %i.ad, 14
  %i.lf = and i32 %i.ad, 4194304
  %.not786 = icmp eq i32 %i.lf, 0
  %i.lg = and i32 %i.le, 255
  %i.lh = zext nneg i32 %i.lg to i64
  %.v838 = select i1 %.not786, ptr %.1713, ptr %i.z
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %.v838, i64 %i.lh ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !8
  %i.ll = icmp eq i32 %i.lk, 3
  br i1 %i.ll, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !8
  %i.lo = icmp eq i32 %i.ln, 3
  br i1 %i.lo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lp = load double, ptr %i.ld, align 8, !tbaa !10
  %i.lq = load double, ptr %i.li, align 8, !tbaa !10
  %i.lr = call double @pow(double noundef %i.lp, double noundef %i.lq) #8, !tbaa !4
  store double %i.lr, ptr %i.cb, align 8, !tbaa !10
  %i.ls = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.ls, align 8, !tbaa !8
  br label %.critedge.backedge

bb.bb:                                            ; preds = %bb.az, %bb.ay
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  call fastcc void @Arith(ptr noundef nonnull %0, ptr noundef %i.cb, ptr noundef nonnull %i.ld, ptr noundef %i.li, i32 noundef 10)
  %i.lt = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.bc:                                            ; preds = %bb.l
  %i.lu = lshr i32 %i.ad, 23
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.lv ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !8
  %i.lz = icmp eq i32 %i.ly, 3
  br i1 %i.lz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ma = load double, ptr %i.lw, align 8, !tbaa !10
  %i.mb = fneg double %i.ma
  store double %i.mb, ptr %i.cb, align 8, !tbaa !10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.mc, align 8, !tbaa !8
  br label %.critedge.backedge

bb.be:                                            ; preds = %bb.bc
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  call fastcc void @Arith(ptr noundef nonnull %0, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.lw, ptr noundef nonnull %i.lw, i32 noundef 11)
  %i.md = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.bf:                                            ; preds = %bb.l
  %i.me = lshr i32 %i.ad, 23
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !8
  switch i32 %i.mi, label %.fold.split [
    i32 0, label %bb.bh
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.mj = load i32, ptr %i.mg, align 8, !tbaa !10
  %i.mk = icmp eq i32 %i.mj, 0
  %i.ml = zext i1 %i.mk to i32
  br label %bb.bh

.fold.split:                                      ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %.fold.split, %bb.bg
  %i.mm = phi i32 [ 1, %bb.bf ], [ %i.ml, %bb.bg ], [ 0, %.fold.split ]
  store i32 %i.mm, ptr %i.cb, align 8, !tbaa !10
  %i.mn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.mn, align 8, !tbaa !8
  br label %.critedge.backedge

bb.bi:                                            ; preds = %bb.l
  %i.mo = lshr i32 %i.ad, 23
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.mp ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !8
  switch i32 %i.ms, label %bb.bl [
    i32 5, label %bb.bj
    i32 4, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !10
  %i.mu = call i32 @luaH_getn(ptr noundef %i.mt) #8
  %i.mv = sitofp i32 %i.mu to double
  store double %i.mv, ptr %i.cb, align 8, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.mw, align 8, !tbaa !8
  br label %.critedge.backedge

bb.bk:                                            ; preds = %bb.bi
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !10
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !10
  %i.na = uitofp i64 %i.mz to double
  store double %i.na, ptr %i.cb, align 8, !tbaa !10
  %i.nb = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.nb, align 8, !tbaa !8
  br label %.critedge.backedge

bb.bl:                                            ; preds = %bb.bi
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.nc = call fastcc i32 @call_binTM(ptr noundef nonnull %0, ptr noundef nonnull %i.mq, ptr noundef nonnull @luaO_nilobject_, ptr noundef nonnull %i.cb, i32 noundef 12)
  %.not784 = icmp eq i32 %i.nc, 0
  br i1 %.not784, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @luaG_typeerror(ptr noundef nonnull %0, ptr noundef nonnull %i.mq, ptr noundef nonnull @.str.6) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.nd = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.bo:                                            ; preds = %bb.l
  %i.ne = lshr i32 %i.ad, 23                      ; 2 uses
  %i.nf = lshr i32 %i.ad, 14
  %i.ng = and i32 %i.nf, 511                      ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %reass.sub = sub nsw i32 %i.ng, %i.ne
  %i.nh = add nsw i32 %reass.sub, 1
  call void @luaV_concat(ptr noundef nonnull %0, i32 noundef %i.nh, i32 noundef %i.ng)
  %i.ni = load ptr, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 120
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !68
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 112
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !75
  %.not783 = icmp ult i64 %i.nk, %i.nm
  br i1 %.not783, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @luaC_step(ptr noundef nonnull %0) #8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nn = load ptr, ptr %i.f, align 8, !tbaa !39  ; 3 uses
  %i.no = zext nneg i32 %i.ne to i64
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.ca ; 2 uses
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !10
  store i64 %i.nr, ptr %i.nq, align 8, !tbaa !10
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i32 %i.nt, ptr %i.nu, align 8, !tbaa !8
  br label %.critedge.backedge

bb.br:                                            ; preds = %bb.l
  %i.nv = lshr i32 %i.ad, 14
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr [4 x i8], ptr %i.ac, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -524284
  br label %.critedge.backedge

bb.bs:                                            ; preds = %bb.l
  %i.nz = lshr i32 %i.ad, 23                      ; 2 uses
  %i.oa = and i32 %i.nz, 255
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ob
  %i.od = zext nneg i32 %i.nz to i64
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.od
  %.not781835 = icmp slt i32 %i.ad, 0
  %i.of = select i1 %.not781835, ptr %i.oc, ptr %i.oe ; 2 uses
  %i.og = lshr i32 %i.ad, 14
  %i.oh = and i32 %i.ad, 4194304
  %.not782 = icmp eq i32 %i.oh, 0
  %i.oi = and i32 %i.og, 255
  %i.oj = zext nneg i32 %i.oi to i64
  %.v836 = select i1 %.not782, ptr %.1713, ptr %i.z
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %.v836, i64 %i.oj ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !8
  %i.op = icmp eq i32 %i.om, %i.oo
  br i1 %i.op, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.oq = call i32 @luaV_equalval(ptr noundef nonnull %0, ptr noundef nonnull %i.of, ptr noundef nonnull %i.ok)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.or = phi i32 [ 0, %bb.bs ], [ %i.oq, %bb.bt ]
  %i.os = icmp eq i32 %i.or, %i.bz
  br i1 %i.os, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ot = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ou = lshr i32 %i.ot, 14
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr [4 x i8], ptr %i.ac, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 -524284
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2718 = phi ptr [ %i.ox, %bb.bv ], [ %i.ac, %bb.bu ]
  %i.oy = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %.2718, i64 4
  br label %.critedge.backedge

bb.bx:                                            ; preds = %bb.l
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.pa = lshr i32 %i.ad, 23                      ; 2 uses
  %i.pb = and i32 %i.pa, 255
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.pc
  %i.pe = zext nneg i32 %i.pa to i64
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.pe
  %.not779833 = icmp slt i32 %i.ad, 0
  %i.pg = select i1 %.not779833, ptr %i.pd, ptr %i.pf
  %i.ph = lshr i32 %i.ad, 14
  %i.pi = and i32 %i.ad, 4194304
  %.not780 = icmp eq i32 %i.pi, 0
  %i.pj = and i32 %i.ph, 255
  %i.pk = zext nneg i32 %i.pj to i64
  %.v834 = select i1 %.not780, ptr %.1713, ptr %i.z
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %.v834, i64 %i.pk
  %i.pm = call i32 @luaV_lessthan(ptr noundef nonnull %0, ptr noundef %i.pg, ptr noundef %i.pl)
  %i.pn = icmp eq i32 %i.pm, %i.bz
  br i1 %i.pn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.po = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.pp = lshr i32 %i.po, 14
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr [4 x i8], ptr %i.ac, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 -524284
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.3719 = phi ptr [ %i.ps, %bb.by ], [ %i.ac, %bb.bx ]
  %i.pt = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.pu = getelementptr inbounds nuw i8, ptr %.3719, i64 4
  br label %.critedge.backedge

bb.ca:                                            ; preds = %bb.l
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.pv = lshr i32 %i.ad, 23                      ; 2 uses
  %i.pw = and i32 %i.pv, 255
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.px
  %i.pz = zext nneg i32 %i.pv to i64
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %.1713, i64 %i.pz
  %.not777832 = icmp slt i32 %i.ad, 0
  %i.qb = select i1 %.not777832, ptr %i.py, ptr %i.qa ; 7 uses
  %i.qc = lshr i32 %i.ad, 14
  %i.qd = and i32 %i.ad, 4194304
  %.not778 = icmp eq i32 %i.qd, 0
  %i.qe = and i32 %i.qc, 255
  %i.qf = zext nneg i32 %i.qe to i64
  %.v = select i1 %.not778, ptr %.1713, ptr %i.z
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %.v, i64 %i.qf ; 7 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !8  ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !8
  %.not.i809 = icmp eq i32 %i.qi, %i.qk
  br i1 %.not.i809, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ql = call i32 @luaG_ordererror(ptr noundef nonnull %0, ptr noundef nonnull %i.qb, ptr noundef nonnull %i.qg) #8
  br label %lessequal.exit

bb.cc:                                            ; preds = %bb.ca
  switch i32 %i.qi, label %bb.ci [
    i32 3, label %bb.cd
    i32 4, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.qm = load double, ptr %i.qb, align 8, !tbaa !10
  %i.qn = load double, ptr %i.qg, align 8, !tbaa !10
  %i.qo = fcmp ole double %i.qm, %i.qn
  %i.qp = zext i1 %i.qo to i32
  br label %lessequal.exit

bb.ce:                                            ; preds = %bb.cc
  %i.qq = load ptr, ptr %i.qb, align 8, !tbaa !10 ; 2 uses
  %i.qr = load ptr, ptr %i.qg, align 8, !tbaa !10 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 24 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 24 ; 2 uses
  %i.qu = call i32 @strcoll(ptr noundef nonnull readonly %i.qs, ptr noundef nonnull readonly %i.qt) #9 ; 2 uses
  %.not52.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not52.i.i, label %.lr.ph.preheader.i.i, label %l_strcmp.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ce
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !10
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !10
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ch, %.lr.ph.preheader.i.i
  %.02956.i.i = phi i64 [ %i.ri, %bb.ch ], [ %i.qw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03255.i.i = phi ptr [ %i.rh, %bb.ch ], [ %i.qt, %.lr.ph.preheader.i.i ]
  %.03554.i.i = phi i64 [ %i.rg, %bb.ch ], [ %i.qy, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03853.i.i = phi ptr [ %i.rf, %bb.ch ], [ %i.qs, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.qz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03853.i.i) #9 ; 3 uses
  %i.ra = icmp eq i64 %i.qz, %.02956.i.i
  br i1 %i.ra, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i.i
  %i.rb = icmp ne i64 %.02956.i.i, %.03554.i.i
  %i.rc = zext i1 %i.rb to i32
end_hunk_2
begin_hunk_3_@luaV_execute:bb.a
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = shl nsw i32 %i.acj, 4
  %i.acr = sext i32 %i.acq to i64
  %.not760 = icmp sgt i64 %i.acp, %i.acr
  br i1 %.not760, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef %i.acj) #8
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.acs = load ptr, ptr %i.f, align 8, !tbaa !39 ; 2 uses
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.acs, i64 %i.ca ; 2 uses
  %i.acu = sext i32 %i.acj to i64
  %i.acv = getelementptr inbounds [16 x i8], ptr %i.act, i64 %i.acu
  store ptr %i.acv, ptr %i.l, align 8, !tbaa !34
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fi
  %.0731 = phi i32 [ %i.acj, %bb.fl ], [ %i.abu, %bb.fi ] ; 2 uses
  %.0729 = phi ptr [ %i.act, %bb.fl ], [ %i.cb, %bb.fi ] ; 2 uses
  %.12 = phi ptr [ %i.acs, %bb.fl ], [ %.1713, %bb.fi ] ; 2 uses
  %i.acw = icmp sgt i32 %.0731, 0
  br i1 %i.acw, label %.lr.ph, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.fp, %bb.ez, %bb.q, %bb.fm, %bb.eu, %bb.l, %bb.er, %bb.du, %bb.dv, %bb.dw, %bb.dl, %bb.de, %bb.bj, %bb.bk, %bb.bn, %bb.bd, %bb.be, %bb.ba, %bb.bb, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.ak, %bb.al, %bb.ag, %bb.ah, %bb.v, %bb.w, %bb.x, %bb.y, %bb.fh, %bb.fa, %bb.em, %bb.ej, %bb.cx, %bb.cs, %bb.cn, %bb.bz, %bb.bw, %bb.br, %bb.bq, %bb.bh, %bb.ad, %bb.ac, %bb.z, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m
  %.0716.be = phi ptr [ %i.wb, %bb.dw ], [ %i.ac, %bb.fm ], [ %i.ac, %bb.m ], [ %i.ac, %bb.n ], [ %spec.select, %bb.o ], [ %i.ac, %bb.du ], [ %i.ac, %bb.r ], [ %i.ac, %bb.s ], [ %i.ac, %bb.t ], [ %i.ac, %bb.u ], [ %.9725, %bb.eu ], [ %i.ac, %bb.z ], [ %i.ac, %bb.ac ], [ %i.ac, %bb.ad ], [ %i.ac, %bb.v ], [ %i.ac, %bb.ag ], [ %i.ac, %bb.ak ], [ %i.ac, %bb.ao ], [ %i.ac, %bb.as ], [ %i.ac, %bb.aw ], [ %i.ac, %bb.ba ], [ %i.ac, %bb.bh ], [ %i.ac, %bb.bd ], [ %i.ac, %bb.bq ], [ %i.ny, %bb.br ], [ %i.oz, %bb.bw ], [ %i.pu, %bb.bz ], [ %i.rx, %bb.cn ], [ %i.sl, %bb.cs ], [ %i.te, %bb.cx ], [ %i.ac, %bb.bj ], [ %i.ac, %bb.dv ], [ %.9725, %bb.er ], [ %.9725, %bb.ez ], [ %i.xi, %bb.ej ], [ %i.yu, %bb.em ], [ %i.ac, %bb.l ], [ %i.ac, %bb.fa ], [ %.10726.lcssa, %bb.fh ], [ %i.ac, %bb.y ], [ %i.ac, %bb.x ], [ %i.ac, %bb.w ], [ %i.ac, %bb.ah ], [ %i.ac, %bb.al ], [ %i.ac, %bb.ap ], [ %i.ac, %bb.at ], [ %i.ac, %bb.ax ], [ %i.ac, %bb.bb ], [ %i.ac, %bb.be ], [ %i.ac, %bb.bn ], [ %i.ac, %bb.bk ], [ %i.ac, %bb.de ], [ %i.ac, %bb.q ], [ %i.ac, %bb.dl ], [ %i.ac, %bb.fp ]
  %.0712.be = phi ptr [ %.1713, %bb.dw ], [ %.12, %bb.fm ], [ %.1713, %bb.m ], [ %.1713, %bb.n ], [ %.1713, %bb.o ], [ %.1713, %bb.du ], [ %.1713, %bb.r ], [ %i.do, %bb.s ], [ %i.dx, %bb.t ], [ %i.ec, %bb.u ], [ %.1713, %bb.eu ], [ %i.fh, %bb.z ], [ %i.fu, %bb.ac ], [ %i.gi, %bb.ad ], [ %.1713, %bb.v ], [ %.1713, %bb.ag ], [ %.1713, %bb.ak ], [ %.1713, %bb.ao ], [ %.1713, %bb.as ], [ %.1713, %bb.aw ], [ %.1713, %bb.ba ], [ %.1713, %bb.bh ], [ %.1713, %bb.bd ], [ %i.nn, %bb.bq ], [ %.1713, %bb.br ], [ %i.oy, %bb.bw ], [ %i.pt, %bb.bz ], [ %i.rw, %bb.cn ], [ %.1713, %bb.cs ], [ %.1713, %bb.cx ], [ %.1713, %bb.bj ], [ %.1713, %bb.dv ], [ %.1713, %bb.er ], [ %.1713, %bb.ez ], [ %.1713, %bb.ej ], [ %i.yd, %bb.em ], [ %.1713, %bb.l ], [ %.1713, %bb.fa ], [ %i.abs, %bb.fh ], [ %.1713, %bb.y ], [ %.1713, %bb.x ], [ %.1713, %bb.w ], [ %i.hf, %bb.ah ], [ %i.ic, %bb.al ], [ %i.iz, %bb.ap ], [ %i.jw, %bb.at ], [ %i.kw, %bb.ax ], [ %i.lt, %bb.bb ], [ %i.md, %bb.be ], [ %i.nd, %bb.bn ], [ %.1713, %bb.bk ], [ %i.tq, %bb.de ], [ %.1713, %bb.q ], [ %i.vd, %bb.dl ], [ %.12, %bb.fp ]
  br label %.critedge

.lr.ph:                                           ; preds = %bb.fm
  %i.acx = sext i32 %i.acj to i64                 ; 2 uses
  %i.acy = sub nsw i64 0, %i.acx
  %wide.trip.count = zext nneg i32 %.0731 to i64
  br label %bb.fn

bb.fn:                                            ; preds = %.lr.ph, %bb.fp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fp ] ; 5 uses
  %i.acz = icmp slt i64 %indvars.iv, %i.acx
  br i1 %i.acz, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ada = load ptr, ptr %i.abv, align 8, !tbaa !78
  %i.adb = getelementptr inbounds [16 x i8], ptr %i.ada, i64 %i.acy
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %i.adb, i64 %indvars.iv ; 2 uses
  %i.add = getelementptr inbounds nuw [16 x i8], ptr %.0729, i64 %indvars.iv
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !10
  store i64 %i.ade, ptr %i.add, align 8, !tbaa !10
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink957 = phi i32 [ %i.adg, %bb.fo ], [ 0, %bb.fn ]
  %i.adh = getelementptr inbounds nuw [16 x i8], ptr %.0729, i64 %indvars.iv
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store i32 %.sink957, ptr %i.adi, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.backedge, label %bb.fn, !llvm.loop !89

.critedge.thread:                                 ; preds = %bb.dq, %bb.dh, %bb.da, %bb.j
  ret void
}

declare hidden void @luaC_barrierf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaH_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @luaO_fb2int(i32 noundef) local_unnamed_addr #2

declare hidden void @luaC_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Arith(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 5, 12) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %.sroa.060 = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  switch i32 %i.d, label %luaV_tonumber.exit [
    i32 3, label %bb.d
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = call i32 @luaO_str2d(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #8
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %luaV_tonumber.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %i.b, align 8, !tbaa !11
  store double %i.h, ptr %.sroa.060, align 8, !tbaa !10
  br label %bb.d

luaV_tonumber.exit:                               ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0.i.ph = phi ptr [ %2, %bb.a ], [ %.sroa.060, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  switch i32 %i.j, label %luaV_tonumber.exit53 [
    i32 3, label %._crit_edge
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = call i32 @luaO_str2d(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #8
  %.not.i51 = icmp eq i32 %i.m, 0
  br i1 %.not.i51, label %luaV_tonumber.exit53, label %._crit_edge

luaV_tonumber.exit53:                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %3, %bb.d ], [ %i.a, %bb.e ]
  %i.n = load double, ptr %.in, align 8, !tbaa !10 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.o = load double, ptr %.0.i.ph, align 8, !tbaa !10 ; 8 uses
  switch i32 %4, label %default.unreachable63 [
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.p = fadd double %i.o, %i.n
  store double %i.p, ptr %1, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !8
  br label %bb.o

bb.g:                                             ; preds = %._crit_edge
  %i.r = fsub double %i.o, %i.n
  store double %i.r, ptr %1, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !8
  br label %bb.o

bb.h:                                             ; preds = %._crit_edge
  %i.t = fmul double %i.o, %i.n
  store double %i.t, ptr %1, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !8
  br label %bb.o

bb.i:                                             ; preds = %._crit_edge
  %i.v = fdiv double %i.o, %i.n
  store double %i.v, ptr %1, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !8
  br label %bb.o

bb.j:                                             ; preds = %._crit_edge
  %i.x = fdiv double %i.o, %i.n
  %i.y = call double @llvm.floor.f64(double %i.x)
  %i.z = fneg double %i.y
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double %i.n, double %i.o)
  store double %i.aa, ptr %1, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.ab, align 8, !tbaa !8
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.ac = call double @pow(double noundef %i.o, double noundef %i.n) #8, !tbaa !4
  store double %i.ac, ptr %1, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !8
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.ae = fneg double %i.o
  store double %i.ae, ptr %1, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !8
  br label %bb.o

default.unreachable63:                            ; preds = %._crit_edge
  unreachable

bb.m:                                             ; preds = %luaV_tonumber.exit53, %luaV_tonumber.exit
  %i.ag = call fastcc i32 @call_binTM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %1, i32 noundef %4)
  %.not50 = icmp eq i32 %i.ag, 0
  br i1 %.not50, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @luaG_aritherror(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare hidden i32 @luaH_getn(ptr noundef) local_unnamed_addr #2

declare hidden i32 @luaD_precall(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaF_close(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @luaD_poscall(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaH_resizearray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @luaH_setnum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @luaF_newLclosure(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaF_findupval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare hidden i32 @luaO_rawequalObj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaD_callhook(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaG_aritherror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"lua_TValue", !6, i64 0, !5, i64 8}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !19, i64 24}
!16 = !{!"Table", !17, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !5, i64 12, !6, i64 16, !19, i64 24, !20, i64 32, !21, i64 40, !21, i64 48, !17, i64 56, !5, i64 64}
!17 = !{!"p1 _ZTS8GCObject", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTS5Table", !18, i64 0}
!20 = !{!"p1 _ZTS10lua_TValue", !18, i64 0}
!21 = !{!"p1 _ZTS4Node", !18, i64 0}
!22 = !{!16, !6, i64 10}
!23 = !{!24, !25, i64 32}
!24 = !{!"lua_State", !17, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !20, i64 16, !20, i64 24, !25, i64 32, !26, i64 40, !27, i64 48, !20, i64 56, !20, i64 64, !26, i64 72, !26, i64 80, !5, i64 88, !5, i64 92, !28, i64 96, !28, i64 98, !6, i64 100, !6, i64 101, !5, i64 104, !5, i64 108, !18, i64 112, !9, i64 120, !9, i64 136, !17, i64 152, !17, i64 160, !29, i64 168, !30, i64 176}
!25 = !{!"p1 _ZTS12global_State", !18, i64 0}
!26 = !{!"p1 _ZTS8CallInfo", !18, i64 0}
!27 = !{!"p1 int", !18, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!"p1 _ZTS11lua_longjmp", !18, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS7TString", !18, i64 0}
!33 = !{!24, !20, i64 64}
!34 = !{!24, !20, i64 16}
!35 = !{!24, !20, i64 56}
!36 = !{!16, !5, i64 12}
!37 = distinct !{!37, !14, !38}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{!24, !20, i64 24}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = !{!24, !27, i64 48}
!44 = !{!24, !26, i64 40}
!45 = !{!46, !20, i64 8}
!46 = !{!"CallInfo", !20, i64 0, !20, i64 8, !20, i64 16, !27, i64 24, !5, i64 32, !5, i64 36}
!47 = !{!48, !49, i64 32}
!48 = !{!"LClosure", !17, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !17, i64 16, !19, i64 24, !49, i64 32, !6, i64 40}
!49 = !{!"p1 _ZTS5Proto", !18, i64 0}
!50 = !{!51, !20, i64 16}
!51 = !{!"Proto", !17, i64 0, !6, i64 8, !6, i64 9, !20, i64 16, !27, i64 24, !52, i64 32, !27, i64 40, !54, i64 48, !55, i64 56, !32, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !17, i64 104, !6, i64 112, !6, i64 113, !6, i64 114, !6, i64 115}
!52 = !{!"p2 _ZTS5Proto", !53, i64 0}
!53 = !{!"any p2 pointer", !18, i64 0}
!54 = !{!"p1 _ZTS6LocVar", !18, i64 0}
!55 = !{!"p2 _ZTS7TString", !53, i64 0}
!56 = !{!24, !6, i64 100}
!57 = !{!24, !5, i64 108}
!58 = !{!24, !5, i64 104}
!59 = !{!51, !27, i64 24}
!60 = !{!51, !27, i64 40}
!61 = !{!24, !6, i64 10}
!62 = distinct !{!62, !14}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTS5UpVal", !18, i64 0}
!65 = !{!66, !20, i64 16}
!66 = !{!"UpVal", !17, i64 0, !6, i64 8, !6, i64 9, !20, i64 16, !6, i64 24}
!67 = !{!48, !19, i64 24}
!68 = !{!69, !30, i64 120}
!69 = !{!"global_State", !70, i64 0, !18, i64 16, !18, i64 24, !6, i64 32, !6, i64 33, !5, i64 36, !17, i64 40, !71, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !72, i64 88, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !5, i64 144, !5, i64 148, !18, i64 152, !9, i64 160, !74, i64 176, !66, i64 184, !6, i64 224, !6, i64 296}
!70 = !{!"stringtable", !71, i64 0, !5, i64 8, !5, i64 12}
!71 = !{!"p2 _ZTS8GCObject", !53, i64 0}
!72 = !{!"Mbuffer", !73, i64 0, !30, i64 8, !30, i64 16}
!73 = !{!"p1 omnipotent char", !18, i64 0}
!74 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!75 = !{!69, !30, i64 112}
!76 = !{!46, !20, i64 16}
!77 = !{!24, !17, i64 152}
!78 = !{!46, !20, i64 0}
!79 = distinct !{!79, !14}
!80 = !{!46, !27, i64 24}
!81 = !{!46, !5, i64 36}
!82 = !{!16, !5, i64 64}
!83 = distinct !{!83, !14}
!84 = !{!51, !52, i64 32}
!85 = !{!49, !49, i64 0}
!86 = !{!51, !6, i64 112}
!87 = distinct !{!87, !14}
!88 = !{!51, !6, i64 113}
!89 = distinct !{!89, !14}
end_hunk_3

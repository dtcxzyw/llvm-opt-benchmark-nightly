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
define hidden noundef ptr @luaV_tonumber(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
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
define hidden range(i32 0, 2) i32 @luaV_tostring(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaV_gettable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %.thread39
  %i.b = add nuw nsw i32 %.03355, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.b, 100
  br i1 %exitcond.not, label %bb.l, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.pre, %bb.a ], [ %i.ad, %bb.b ]
  %.03156 = phi ptr [ %1, %bb.a ], [ %.3, %bb.b ] ; 5 uses
  %.03355 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]
  %i.d = icmp eq i32 %i.c, 5
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %.03156, align 8, !tbaa !10 ; 2 uses
  %i.f = tail call ptr @luaH_get(ptr noundef %i.e, ptr noundef %2) #8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !22
  %i.o = and i8 %i.n, 1
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = tail call ptr @luaT_gettm(ptr noundef nonnull %i.k, i32 noundef 0, ptr noundef %i.r) #8 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %.thread39

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.f, align 8, !tbaa !10
  store i64 %i.v, ptr %3, align 8, !tbaa !10
  %i.w = load i32, ptr %i.u, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !8
  br label %.thread43

bb.h:                                             ; preds = %bb.c
  %i.y = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %.03156, i32 noundef 0) #8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %.thread39

bb.i:                                             ; preds = %bb.h
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %.03156, ptr noundef nonnull @.str.1) #8
  br label %.thread39

.thread39:                                        ; preds = %bb.g, %bb.h, %bb.i
  %.3 = phi ptr [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.s, %bb.g ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !8  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 6
  br i1 %i.ae, label %bb.j, label %bb.b

bb.j:                                             ; preds = %.thread39
  %i.af = getelementptr inbounds nuw i8, ptr %.03156, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = load i64, ptr %.3, align 8, !tbaa !10
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !10
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %.03156, align 8, !tbaa !10
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !10
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !8
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.av, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp slt i64 %i.be, 49
  br i1 %i.bf, label %bb.k, label %callTMres.exit

bb.k:                                             ; preds = %bb.j
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 3) #8
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !34
  br label %callTMres.exit

callTMres.exit:                                   ; preds = %bb.j, %bb.k
  %i.bg = phi ptr [ %i.bb, %bb.j ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = ptrtoint ptr %i.ai to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !34
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.bg, i32 noundef 1) #8
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bj ; 2 uses
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16 ; 2 uses
  store ptr %i.bo, ptr %i.aj, align 8, !tbaa !34
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !10
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !8
  br label %.thread43

bb.l:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  br label %.thread43

.thread43:                                        ; preds = %.thread, %callTMres.exit, %bb.l
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
define hidden void @luaV_settable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
.peel.begin:
  %4 = alloca %struct.lua_TValue, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = icmp eq i32 %i.d, 5
  %.074.lcssa76.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.074.lcssa76.sroa.gep105 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %i.e, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.f = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #8
  br label %bb.i

bb.c:                                             ; preds = %.peel.begin
  %i.j = load ptr, ptr %1, align 8, !tbaa !10     ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %.not.peel = icmp eq i32 %i.l, 0
  br i1 %.not.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call ptr @luaH_set(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef %2) #8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !22
  %i.v = and i8 %i.u, 2
  %.not52.peel = icmp eq i8 %i.v, 0
  br i1 %.not52.peel, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 304
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = tail call ptr @luaT_gettm(ptr noundef nonnull %i.r, i32 noundef 1, ptr noundef %i.y) #8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  %.3.peel = phi ptr [ %i.f, %bb.a ], [ %i.f, %bb.b ], [ %i.z, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3.peel, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !8  ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 6
  br i1 %i.ad, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.i
  %i.ae = load i64, ptr %.3.peel, align 8, !tbaa !10 ; 2 uses
  store i64 %i.ae, ptr %4, align 8, !tbaa !10
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.peel.next, %bb.x
  %.in = phi i64 [ %i.ae, %.peel.next ], [ %i.cz, %bb.x ]
  %i.af = phi i32 [ %i.ac, %.peel.next ], [ %i.br, %bb.x ]
  %.04473 = phi i32 [ 1, %.peel.next ], [ %i.da, %bb.x ]
  %i.ag = inttoptr i64 %.in to ptr                ; 7 uses
  %i.ah = icmp eq i32 %i.af, 5
  br i1 %i.ah, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = call ptr @luaH_set(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef %2) #8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !22
  %i.at = and i8 %i.as, 2
  %.not52 = icmp eq i8 %i.at, 0
  br i1 %.not52, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 304
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = call ptr @luaT_gettm(ptr noundef nonnull %i.ap, i32 noundef 1, ptr noundef %i.aw) #8 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.o, %bb.n, %bb.p, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa75 = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.ak, %bb.m ], [ %i.ak, %bb.p ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ] ; 2 uses
  %.lcssa = phi ptr [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.ag, %bb.m ], [ %i.ag, %bb.p ], [ %i.ag, %bb.n ], [ %i.ag, %bb.o ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa75, i64 8
  %i.ba = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.ba, ptr %.lcssa75, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 10
  store i8 0, ptr %i.bd, align 2, !tbaa !22
  %i.be = icmp sgt i32 %i.bc, 3
  br i1 %i.be, label %bb.q, label %.thread60

bb.q:                                             ; preds = %.thread
  %i.bf = load ptr, ptr %3, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = and i8 %i.bh, 3
  %.not53 = icmp eq i8 %i.bi, 0
  br i1 %.not53, label %.thread60, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = and i8 %i.bk, 4
  %.not54 = icmp eq i8 %i.bl, 0
  br i1 %.not54, label %.thread60, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @luaC_barrierback(ptr noundef %0, ptr noundef nonnull %.lcssa) #8
  br label %.thread60

bb.t:                                             ; preds = %bb.j
  %i.bm = call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.t, %bb.u
  %.3 = phi ptr [ %i.bm, %bb.t ], [ %i.bm, %bb.u ], [ %i.ax, %bb.p ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !8  ; 3 uses
  %i.bs = icmp eq i32 %i.br, 6
  br i1 %i.bs, label %.loopexit, label %bb.x

.loopexit:                                        ; preds = %bb.v, %bb.i
  %.3.lcssa = phi ptr [ %.3.peel, %bb.i ], [ %.3, %bb.v ] ; 2 uses
  %.074.lcssa76.sroa.phi = phi ptr [ %.074.lcssa76.sroa.gep, %bb.i ], [ %.074.lcssa76.sroa.gep105, %bb.v ]
  %.074.lcssa76 = phi ptr [ %1, %bb.i ], [ %4, %bb.v ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.bw = load i64, ptr %.3.lcssa, align 8, !tbaa !10
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !10
  %i.bx = load i32, ptr %i.bt, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !8
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %.074.lcssa76, align 8, !tbaa !10
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !10
  %i.cc = load i32, ptr %.074.lcssa76.sroa.phi, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !8
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !8
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35
  %i.cs = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp slt i64 %i.cv, 65
  br i1 %i.cw, label %bb.w, label %callTM.exit

bb.w:                                             ; preds = %.loopexit
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 4) #8
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !34
  br label %callTM.exit

callTM.exit:                                      ; preds = %.loopexit, %bb.w
  %i.cx = phi ptr [ %i.cs, %.loopexit ], [ %.pre.i, %bb.w ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store ptr %i.cy, ptr %i.bu, align 8, !tbaa !34
  call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.cx, i32 noundef 0) #8
  br label %.thread60

bb.x:                                             ; preds = %bb.v
  %i.cz = load i64, ptr %.3, align 8, !tbaa !10   ; 2 uses
  store i64 %i.cz, ptr %4, align 8, !tbaa !10
  store i32 %i.br, ptr %i.b, align 8, !tbaa !8
  %i.da = add nuw nsw i32 %.04473, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, 100
  br i1 %exitcond.not, label %.loopexit80, label %bb.j, !llvm.loop !37

.loopexit80:                                      ; preds = %bb.x
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  br label %.thread60

.thread60:                                        ; preds = %bb.q, %bb.r, %bb.s, %.thread, %callTM.exit, %.loopexit80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

declare hidden ptr @luaH_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaC_barrierback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessthan(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @luaG_ordererror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.h [
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load double, ptr %1, align 8, !tbaa !10
  %i.g = load double, ptr %2, align 8, !tbaa !10
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !10     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.n = tail call i32 @strcoll(ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.m) #9 ; 2 uses
  %.not52.i = icmp eq i32 %i.n, 0
  br i1 %.not52.i, label %.lr.ph.preheader.i, label %l_strcmp.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.02956.i = phi i64 [ %i.z, %bb.g ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.03255.i = phi ptr [ %i.y, %bb.g ], [ %i.m, %.lr.ph.preheader.i ]
  %.03554.i = phi i64 [ %i.x, %bb.g ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.03853.i = phi ptr [ %i.w, %bb.g ], [ %i.l, %.lr.ph.preheader.i ] ; 2 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03853.i) #9 ; 3 uses
  %i.t = icmp eq i64 %i.s, %.02956.i
  br i1 %i.t, label %l_strcmp.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i64 %i.s, %.03554.i
  br i1 %i.u, label %l_strcmp.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %i.s, 1                          ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03853.i, i64 %i.v ; 2 uses
  %i.x = sub i64 %.03554.i, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %i.v ; 2 uses
  %i.z = sub i64 %.02956.i, %i.v
  %i.aa = tail call i32 @strcoll(ptr noundef nonnull %i.w, ptr noundef %i.y) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.lr.ph.i, label %l_strcmp.exit

l_strcmp.exit:                                    ; preds = %bb.f, %bb.g, %.lr.ph.i, %bb.e
  %.2.ph.i = phi i32 [ %i.n, %bb.e ], [ %i.aa, %bb.g ], [ -1, %bb.f ], [ 0, %.lr.ph.i ]
  %.lobit = lshr i32 %.2.ph.i, 31
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ab = tail call fastcc i32 @call_orderTM(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 13) ; 2 uses
  %.not20 = icmp eq i32 %i.ab, -1
  br i1 %.not20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @luaG_ordererror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %l_strcmp.exit, %bb.d, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ], [ %.lobit, %l_strcmp.exit ], [ %i.ac, %bb.i ], [ %i.ab, %bb.h ]
  ret i32 %.0
}

declare hidden i32 @luaG_ordererror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @call_orderTM(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 13, 15) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %1, i32 noundef %3) #8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %2, i32 noundef %3) #8
  %i.f = tail call i32 @luaO_rawequalObj(ptr noundef nonnull %i.a, ptr noundef %i.e) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.k, ptr %i.h, align 8, !tbaa !10
  %i.l = load i32, ptr %i.b, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.p, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !8
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %2, align 8, !tbaa !10
  store i64 %i.v, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 %i.x, ptr %i.y, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp slt i64 %i.ae, 49
  br i1 %i.af, label %bb.d, label %callTMres.exit

bb.d:                                             ; preds = %bb.c
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef 3) #8
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %callTMres.exit

callTMres.exit:                                   ; preds = %bb.c, %bb.d
  %i.ag = phi ptr [ %i.ab, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ah = ptrtoint ptr %i.h to i64
  %i.ai = ptrtoint ptr %i.j to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !34
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef %i.ag, i32 noundef 1) #8
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.aj ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !34
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !8
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  switch i32 %i.av, label %.fold.split [
    i32 0, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %callTMres.exit
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !10
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  br label %bb.f

.fold.split:                                      ; preds = %callTMres.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.fold.split, %callTMres.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.av, %callTMres.exit ], [ %i.ay, %bb.e ], [ 1, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaV_equalval(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  switch i32 %i.b, label %bb.w [
    i32 0, label %get_compTM.exit.thread
    i32 3, label %bb.b
    i32 1, label %bb.c
end_hunk_0

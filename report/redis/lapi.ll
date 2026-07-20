inline.NumInlined: 51
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.CallS = type { ptr, i32 }
%struct.CCallS = type { ptr, ptr }
%struct.Zio = type { i64, ptr, ptr, ptr, ptr }

@lua_ident = dso_local local_unnamed_addr constant [141 x i8] c"$Lua: Lua 5.1.5 Copyright (C) 1994-2012 Lua.org, PUC-Rio $\0A$Authors: R. Ierusalimschy, L. H. de Figueiredo & W. Celes $\0A$URL: www.lua.org $\0A\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"no calling environment\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@luaT_typenames = external hidden local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Attempt to modify a readonly table\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @luaA_pushobject(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !20
  store i64 %i.c, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !21
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lua_checkstack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 8000
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = add nsw i64 %i.i, %i.j
  %i.l = icmp sgt i64 %i.k, 8000
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.f
  %i.r = shl nuw nsw i32 %1, 4
  %i.s = zext nneg i32 %i.r to i64
  %.not = icmp sgt i64 %i.q, %i.s
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef %1) #15
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.c, %bb.d ], [ %.pre, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.j ; 2 uses
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.y, ptr %i.w, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.g, %bb.f
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_xmove(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = sext i32 %2 to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.e
  store ptr %i.f, ptr %i.b, align 8, !tbaa !8
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.h, align 8, !tbaa !8
  %i.n = load i64, ptr %i.k, align 8, !tbaa !20
  store i64 %i.n, ptr %i.l, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.h, align 8, !tbaa !8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.w, ptr %i.u, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv.epil.init ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !8   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !8
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @lua_setlevel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((96, 98)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i16, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i16 %i.b, ptr %i.c, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lua_atpanic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  store ptr %1, ptr %i.c, align 8, !tbaa !31
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_newthread(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @luaE_newthread(ptr noundef nonnull %0) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 8, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.h, align 8, !tbaa !8
  ret ptr %i.g
}

declare hidden void @luaC_step(ptr noundef) local_unnamed_addr #3

declare hidden ptr @luaE_newthread(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lua_gettop(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_settop(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.g = icmp ult ptr %.promoted, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi ptr [ %i.i, %.lr.ph ], [ %.promoted, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !21
  %i.k = icmp ult ptr %i.i, %i.f
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !42

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %bb.b
  %.sink = phi ptr [ %i.o, %bb.b ], [ %i.f, %.preheader ], [ %i.f, %.lr.ph ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_remove(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %.not28.i = icmp ult ptr %i.f, %i.h
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.f, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %1, -10000
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.l
  br label %index2adr.exit

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.i [
    i32 -10000, label %bb.f
    i32 -10001, label %bb.g
    i32 -10002, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  br label %index2adr.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  store ptr %i.x, ptr %i.v, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.y, align 8, !tbaa !21
  br label %index2adr.exit

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %index2adr.exit

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %i.af = sub nuw nsw i32 -10002, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = zext i8 %i.ah to i32
  %.not.i = icmp samesign ugt i32 %i.af, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
end_hunk_0
begin_hunk_1_@lua_pushinteger:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = sitofp i64 %1 to double
  store double %i.c, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !21
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lua_pushlstring(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = tail call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #15
  store ptr %i.i, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 4, ptr %i.j, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.g, align 8, !tbaa !8
  ret void
}

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @lua_pushstring(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.b, align 8, !tbaa !8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41
  %.not.i = icmp ult i64 %i.j, %i.l
  br i1 %.not.i, label %lua_pushlstring.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %lua_pushlstring.exit

lua_pushlstring.exit:                             ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = tail call ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.f) #15
  store ptr %i.o, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 4, ptr %i.p, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.m, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %lua_pushlstring.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_pushvfstring(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @luaO_pushvfstring(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %i.g
}

declare hidden ptr @luaO_pushvfstring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_pushfstring(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.g = call ptr @luaO_pushvfstring(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #15
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nounwind uwtable
define dso_local void @lua_pushcclosure(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @luaC_step(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %getcurrenv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %getcurrenv.exit

getcurrenv.exit:                                  ; preds = %bb.d, %bb.e
  %.0.in.i = phi ptr [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !20
  %i.q = tail call ptr @luaF_newCclosure(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %.0.i) #15 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %1, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = sext i32 %2 to i64                       ; 3 uses
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !8
  %.not2324 = icmp eq i32 %2, 0
  br i1 %.not2324, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %getcurrenv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %3 = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.u, -1    ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.z = getelementptr inbounds [16 x i8], ptr %i.y, i64 %indvars.iv.next.prol ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.x, i64 %indvars.iv.next.prol ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !20
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.af = icmp eq i32 %2, 1
  br i1 %i.af, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %indvars.iv.next ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.x, i64 %indvars.iv.next ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !20
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !21
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv.next.1 ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.x, i64 %indvars.iv.next.1 ; 2 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !21
  %.not23.1 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not23.1, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %getcurrenv.exit
  %i.au = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.w, %getcurrenv.exit ] ; 2 uses
  store ptr %i.q, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 6, ptr %i.av, align 8, !tbaa !21
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !8
  ret void
}

declare hidden ptr @luaF_newCclosure(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_pushboolean(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp ne i32 %1, 0
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %i.b, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_pushlightuserdata(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @lua_pushthread(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 8, ptr %i.c, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = icmp eq ptr %i.i, %0
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local void @lua_gettable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %.not28.i = icmp ult ptr %i.f, %i.h
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.f, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %1, -10000
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.l
  br label %index2adr.exit

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.i [
    i32 -10000, label %bb.f
    i32 -10001, label %bb.g
    i32 -10002, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  br label %index2adr.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  store ptr %i.x, ptr %i.v, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.y, align 8, !tbaa !21
  br label %index2adr.exit

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %index2adr.exit

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %i.af = sub nuw nsw i32 -10002, %1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = zext i8 %i.ah to i32
  %.not.i = icmp samesign ugt i32 %i.af, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ak = sub nuw nsw i32 -10003, %1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al
  %i.an = select i1 %.not.i, ptr @luaO_nilobject_, ptr %i.am
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi ptr [ %.luaO_nilobject_.i, %bb.b ], [ %i.m, %bb.d ], [ %i.an, %bb.i ], [ %i.p, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 2 uses
  tail call void @luaV_gettable(ptr noundef %0, ptr noundef %.1.i, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.aq) #15
  ret void
}

declare hidden void @luaV_gettable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_1

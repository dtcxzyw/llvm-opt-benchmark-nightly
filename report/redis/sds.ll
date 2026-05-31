inline.NumInlined: 136
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"SDS_NOINIT\00", align 1
@SDS_NOINIT = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"initlen + hdrlen + 1 > initlen\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sds.c\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"bufsize >= sdsReqSize(initlen, type)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"newlen > len\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"hdrlen + newlen + 1 > reqlen\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"type == SDS_TYPE_5 || usable <= sdsTypeMaxSize(type)\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"(incr > 0 && oldlen+incr < 32) || (incr < 0 && oldlen >= (unsigned int)(-incr))\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"(incr >= 0 && sh->alloc-sh->len >= incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))\00", align 1
@.str.10 = private unnamed_addr constant [105 x i8] c"(incr >= 0 && sh->alloc-sh->len >= (unsigned int)incr) || (incr < 0 && sh->len >= (unsigned int)(-incr))\00", align 1
@.str.11 = private unnamed_addr constant [97 x i8] c"(incr >= 0 && sh->alloc-sh->len >= (uint64_t)incr) || (incr < 0 && sh->len >= (uint64_t)(-incr))\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@switch.table.sdsnewplacement.3 = private unnamed_addr constant [5 x i64] [i64 1, i64 3, i64 5, i64 9, i64 17], align 8
@switch.table.sdsResize = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 5, i32 9, i32 17], align 4
@switch.table.sdsResize.6 = private unnamed_addr constant [3 x i64] [i64 255, i64 65535, i64 4294967295], align 8
@switch.table.sdstemplate.9 = private unnamed_addr constant [5 x i64] [i64 -1, i64 -3, i64 -5, i64 -9, i64 -17], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 0, 5) i8 @sdsReqType(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 32
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 253
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %0, 65531
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %0, 4294967287
  %. = select i1 %i.d, i8 3, i8 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_sdsnewlen(ptr noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ult i64 %1, 32
  br i1 %i.b, label %sdsReqType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 253
  br i1 %i.c, label %sdsReqType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %1, 65531
  br i1 %i.d, label %sdsReqType.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 4294967287
  %..i = select i1 %i.e, i8 3, i8 4
  br label %sdsReqType.exit

sdsReqType.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i8 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ %..i, %bb.d ] ; 2 uses
  %i.f = icmp eq i8 %.0.i, 0
  %i.g = icmp eq i64 %1, 0
  %or.cond = and i1 %i.g, %i.f
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i ; 4 uses
  %i.h = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = zext nneg i32 %switch.load to i64
  %i.j = add i64 %1, 1
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %bb.f, label %bb.e, !prof !13

bb.e:                                             ; preds = %sdsReqType.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 108) #21
  tail call void @abort() #22
  unreachable

bb.f:                                             ; preds = %sdsReqType.exit
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call ptr @ztrymalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = call ptr @zmalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.r = xor i32 %switch.load, -1
  %i.s = sext i32 %i.r to i64
  %i.t = add i64 %i.q, %i.s                       ; 3 uses
  %switch.tableidx = add nsw i8 %spec.store.select, -1 ; 2 uses
  %i.u = icmp ult i8 %switch.tableidx, 3
  br i1 %i.u, label %switch.lookup, label %adjustTypeIfNeeded.exit

switch.lookup:                                    ; preds = %bb.j
  %i.v = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.v
  %switch.load28 = load i64, ptr %switch.gep27, align 8
  %i.w = icmp ugt i64 %i.t, %switch.load28
  br i1 %i.w, label %bb.k, label %adjustTypeIfNeeded.exit

bb.k:                                             ; preds = %switch.lookup
  %i.x = icmp ult i64 %i.t, 65531
  br i1 %i.x, label %adjustTypeIfNeeded.exit, label %sdsReqType.exit.i

sdsReqType.exit.i:                                ; preds = %bb.k
  %i.y = icmp ult i64 %i.t, 4294967287
  %..i.i = select i1 %i.y, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit:                          ; preds = %bb.j, %sdsReqType.exit.i, %bb.k, %switch.lookup
  %.1 = phi i8 [ %spec.store.select, %bb.j ], [ %spec.store.select, %switch.lookup ], [ %..i.i, %sdsReqType.exit.i ], [ 2, %bb.k ]
  %i.z = call ptr @sdsnewplacement(ptr noundef nonnull %i.o, i64 noundef %i.q, i8 noundef signext %.1, ptr noundef %0, i64 noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %adjustTypeIfNeeded.exit
  %.0 = phi ptr [ %i.z, %adjustTypeIfNeeded.exit ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare ptr @ztrymalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsnewplacement(ptr noundef writeonly captures(ret: address, provenance) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i8 %2, 7                             ; 4 uses
  %i.b = icmp samesign ult i8 %i.a, 5
  br i1 %i.b, label %switch.lookup, label %sdsReqSize.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsnewplacement.3, i64 %i.c
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsReqSize.exit

sdsReqSize.exit:                                  ; preds = %bb.a, %switch.lookup
  %.0.i.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.d = add i64 %4, 1
  %i.e = add i64 %i.d, %.0.i.i
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %sdsReqSize.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 133) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %sdsReqSize.exit
  %i.f = icmp samesign ult i8 %i.a, 5
  br i1 %i.f, label %switch.lookup57, label %sdsHdrSize.exit

switch.lookup57:                                  ; preds = %bb.c
  %i.g = zext nneg i8 %i.a to i64
  %switch.gep58 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsnewplacement.3, i64 %i.g
  %switch.load59 = load i64, ptr %switch.gep58, align 8
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.c, %switch.lookup57
  %.0.i = phi i64 [ %switch.load59, %switch.lookup57 ], [ 0, %bb.c ] ; 2 uses
  %i.h = xor i64 %.0.i, -1
  %i.i = add i64 %1, %i.h                         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i ; 13 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -1
  switch i8 %2, label %bb.i [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %sdsHdrSize.exit
  %.tr = trunc i64 %4 to i8
  %i.l = shl i8 %.tr, 3
  br label %.sink.split

bb.e:                                             ; preds = %sdsHdrSize.exit
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -3
  %i.n = trunc i64 %4 to i8
  store i8 %i.n, ptr %i.m, align 1, !tbaa !17
  %i.o = trunc i64 %i.i to i8
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 -2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !17
  br label %.sink.split

bb.f:                                             ; preds = %sdsHdrSize.exit
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.r = trunc i64 %4 to i16
  store i16 %i.r, ptr %i.q, align 1, !tbaa !18
  %i.s = trunc i64 %i.i to i16
end_hunk_0
begin_hunk_1_@sdscatrepr:bb.a
._crit_edge:                                      ; preds = %sdscatlen.exit27, %sdscatlen.exit
  %.019.lcssa = phi ptr [ %i.r, %sdscatlen.exit ], [ %.1, %sdscatlen.exit27 ] ; 6 uses
  %i.hs = getelementptr i8, ptr %.019.lcssa, i64 -1
  %.val.i.i63 = load i8, ptr %i.hs, align 1, !tbaa !17 ; 2 uses
  %i.ht = and i8 %.val.i.i63, 7
  switch i8 %i.ht, label %sdslen.exit.i64 [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
    i8 4, label %bb.cn
  ]

bb.cj:                                            ; preds = %._crit_edge
  %i.hu = lshr i8 %.val.i.i63, 3
  %i.hv = zext nneg i8 %i.hu to i64
  br label %sdslen.exit.i64

bb.ck:                                            ; preds = %._crit_edge
  %i.hw = getelementptr inbounds i8, ptr %.019.lcssa, i64 -3
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.hy = zext i8 %i.hx to i64
  br label %sdslen.exit.i64

bb.cl:                                            ; preds = %._crit_edge
  %i.hz = getelementptr inbounds i8, ptr %.019.lcssa, i64 -5
  %i.ia = load i16, ptr %i.hz, align 1, !tbaa !18
  %i.ib = zext i16 %i.ia to i64
  br label %sdslen.exit.i64

bb.cm:                                            ; preds = %._crit_edge
  %i.ic = getelementptr inbounds i8, ptr %.019.lcssa, i64 -9
  %i.id = load i32, ptr %i.ic, align 1, !tbaa !9
  %i.ie = zext i32 %i.id to i64
  br label %sdslen.exit.i64

bb.cn:                                            ; preds = %._crit_edge
  %i.if = getelementptr inbounds i8, ptr %.019.lcssa, i64 -17
  %i.ig = load i64, ptr %i.if, align 1, !tbaa !14
  br label %sdslen.exit.i64

sdslen.exit.i64:                                  ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %._crit_edge
  %.0.i.i65 = phi i64 [ %i.ig, %bb.cn ], [ %i.hv, %bb.cj ], [ %i.hy, %bb.ck ], [ %i.ib, %bb.cl ], [ %i.ie, %bb.cm ], [ 0, %._crit_edge ] ; 2 uses
  %i.ih = tail call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.019.lcssa, i64 noundef 1, i32 noundef 1) ; 9 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %sdscatlen.exit69, label %bb.co

bb.co:                                            ; preds = %sdslen.exit.i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0.i.i65
  store i8 34, ptr %i.ij, align 1
  %i.ik = add i64 %.0.i.i65, 1                    ; 6 uses
  %i.il = getelementptr i8, ptr %i.ih, i64 -1     ; 2 uses
  %.val.i16.i66 = load i8, ptr %i.il, align 1, !tbaa !17
  %i.im = and i8 %.val.i16.i66, 7
  switch i8 %i.im, label %sdssetlen.exit.i67 [
    i8 0, label %bb.cp
    i8 1, label %bb.cq
    i8 2, label %bb.cr
    i8 3, label %bb.cs
    i8 4, label %bb.ct
  ]

bb.cp:                                            ; preds = %bb.co
  %.tr.i.i68 = trunc i64 %i.ik to i8
  %i.in = shl i8 %.tr.i.i68, 3
  store i8 %i.in, ptr %i.il, align 1, !tbaa !17
  br label %sdssetlen.exit.i67

bb.cq:                                            ; preds = %bb.co
  %i.io = trunc i64 %i.ik to i8
  %i.ip = getelementptr inbounds i8, ptr %i.ih, i64 -3
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !17
  br label %sdssetlen.exit.i67

bb.cr:                                            ; preds = %bb.co
  %i.iq = trunc i64 %i.ik to i16
  %i.ir = getelementptr inbounds i8, ptr %i.ih, i64 -5
  store i16 %i.iq, ptr %i.ir, align 1, !tbaa !18
  br label %sdssetlen.exit.i67

bb.cs:                                            ; preds = %bb.co
  %i.is = trunc i64 %i.ik to i32
  %i.it = getelementptr inbounds i8, ptr %i.ih, i64 -9
  store i32 %i.is, ptr %i.it, align 1, !tbaa !9
  br label %sdssetlen.exit.i67

bb.ct:                                            ; preds = %bb.co
  %i.iu = getelementptr inbounds i8, ptr %i.ih, i64 -17
  store i64 %i.ik, ptr %i.iu, align 1, !tbaa !14
  br label %sdssetlen.exit.i67

sdssetlen.exit.i67:                               ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik
  store i8 0, ptr %i.iv, align 1, !tbaa !17
  br label %sdscatlen.exit69

sdscatlen.exit69:                                 ; preds = %sdslen.exit.i64, %sdssetlen.exit.i67
  ret ptr %i.ih
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @sdsneedsrepr(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %._crit_edge [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !14
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.not18 = icmp eq i64 %.0.i, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 1
  %i.q = add i64 %.in, -1                         ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %sdslen.exit, %bb.g
  %.in = phi i64 [ %i.q, %bb.g ], [ %.0.i, %sdslen.exit ]
  %.019 = phi ptr [ %i.p, %bb.g ], [ %0, %sdslen.exit ] ; 2 uses
  %i.r = load i8, ptr %.019, align 1, !tbaa !17   ; 2 uses
  switch i8 %i.r, label %bb.h [
    i8 92, label %._crit_edge
    i8 34, label %._crit_edge
    i8 10, label %._crit_edge
    i8 13, label %._crit_edge
    i8 9, label %._crit_edge
    i8 7, label %._crit_edge
    i8 8, label %._crit_edge
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @__ctype_b_loc() #25
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = sext i8 %i.r to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  %i.x = and i16 %i.w, 24576
  %or.cond = icmp eq i16 %i.x, 16384
  br i1 %or.cond, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.h, %bb.g, %bb.a, %sdslen.exit
  %.014 = phi i32 [ 0, %sdslen.exit ], [ 0, %bb.a ], [ 1, %bb.h ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 0, %bb.g ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @is_hex_digit(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -48
  %or.cond = icmp ult i8 %i.a, 10
  %i.b = and i8 %0, -33
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 6
  %narrow = or i1 %or.cond, %i.d
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 16) i32 @hex_digit_to_int(i8 noundef signext %0) local_unnamed_addr #0 {
  switch i8 %0, label %bb.b [
    i8 70, label %bb.a
    i8 49, label %bb.c
    i8 50, label %2
    i8 51, label %3
    i8 52, label %4
    i8 53, label %5
    i8 54, label %6
    i8 55, label %7
    i8 56, label %8
    i8 57, label %9
    i8 97, label %10
    i8 65, label %10
    i8 98, label %11
    i8 66, label %11
    i8 99, label %12
    i8 67, label %12
    i8 100, label %13
    i8 68, label %13
    i8 101, label %14
    i8 69, label %14
    i8 102, label %bb.a
  ]

2:                                                ; preds = %1
  br label %bb.c

3:                                                ; preds = %1
  br label %bb.c

4:                                                ; preds = %1
  br label %bb.c

5:                                                ; preds = %1
  br label %bb.c

6:                                                ; preds = %1
  br label %bb.c

7:                                                ; preds = %1
  br label %bb.c

8:                                                ; preds = %1
  br label %bb.c

9:                                                ; preds = %1
  br label %bb.c

10:                                               ; preds = %1, %1
  br label %bb.c

11:                                               ; preds = %1, %1
  br label %bb.c

12:                                               ; preds = %1, %1
  br label %bb.c

13:                                               ; preds = %1, %1
  br label %bb.c

14:                                               ; preds = %1, %1
  br label %bb.c

bb.a:                                             ; preds = %1, %1
  br label %bb.c

bb.b:                                             ; preds = %1
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.b, %bb.a, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %.0 = phi i32 [ 0, %bb.b ], [ 15, %bb.a ], [ 14, %14 ], [ 2, %2 ], [ 3, %3 ], [ 4, %4 ], [ 5, %5 ], [ 6, %6 ], [ 7, %7 ], [ 8, %8 ], [ 9, %9 ], [ 10, %10 ], [ 11, %11 ], [ 12, %12 ], [ 13, %13 ], [ 1, %1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdssplitargs(ptr noundef readonly captures(none) %0, ptr noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i32 0, ptr %1, align 4, !tbaa !9
  %i.b = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  %.not152235 = icmp eq i8 %i.b, 0
  br i1 %.not152235, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #25       ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.d = phi i8 [ %i.is, %.loopexit ], [ %i.b, %.lr.ph.preheader ]
  %.066237 = phi ptr [ %i.in, %.loopexit ], [ null, %.lr.ph.preheader ] ; 4 uses
  %.071236 = phi ptr [ %spec.select190, %.loopexit ], [ %0, %.lr.ph.preheader ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i8 [ %i.d, %.lr.ph ], [ %i.l, %bb.c ]
  %.172153 = phi ptr [ %.071236, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !18
  %i.j = and i16 %i.i, 8192
  %.not80 = icmp eq i16 %i.j, 0
  br i1 %.not80, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.172153, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !45

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.m = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sdsempty.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.p = add i64 %i.o, -4                         ; 3 uses
  %i.q = icmp ugt i64 %i.p, 255
  br i1 %i.q, label %bb.e, label %adjustTypeIfNeeded.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.p, 65531
  br i1 %i.r, label %adjustTypeIfNeeded.exit.i.i, label %sdsReqType.exit.i.i.i

sdsReqType.exit.i.i.i:                            ; preds = %bb.e
  %i.s = icmp ult i64 %i.p, 4294967287
  %..i.i.i.i = select i1 %i.s, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i.i

adjustTypeIfNeeded.exit.i.i:                      ; preds = %sdsReqType.exit.i.i.i, %bb.e, %bb.d
  %.1.i.i = phi i8 [ 2, %bb.e ], [ 1, %bb.d ], [ %..i.i.i.i, %sdsReqType.exit.i.i.i ]
  %i.t = call ptr @sdsnewplacement(ptr noundef nonnull %i.m, i64 noundef %i.o, i8 noundef signext %.1.i.i, ptr noundef nonnull @.str.4, i64 noundef 0)
  br label %sdsempty.exit

sdsempty.exit:                                    ; preds = %.critedge, %adjustTypeIfNeeded.exit.i.i
  %.0.i.i = phi ptr [ %i.t, %adjustTypeIfNeeded.exit.i.i ], [ null, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.f

bb.f:                                             ; preds = %sdscatlen.exit, %sdsempty.exit
  %.062159 = phi i32 [ 0, %sdsempty.exit ], [ %.163, %sdscatlen.exit ] ; 7 uses
  %.064158 = phi i32 [ 0, %sdsempty.exit ], [ %.165, %sdscatlen.exit ]
  %.270157 = phi ptr [ %.0.i.i, %sdsempty.exit ], [ %.3, %sdscatlen.exit ] ; 42 uses
  %.273156 = phi ptr [ %.172153, %sdsempty.exit ], [ %spec.select, %sdscatlen.exit ] ; 21 uses
  %.not83 = icmp eq i32 %.064158, 0
  br i1 %.not83, label %bb.az, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %.273156, align 1, !tbaa !17
  switch i8 %i.u, label %.thread141 [
    i8 92, label %bb.h
    i8 34, label %bb.am
    i8 0, label %.preheader
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.273156, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.w, label %.thread [
    i8 120, label %bb.i
    i8 0, label %.thread141
    i8 110, label %bb.aa
    i8 114, label %bb.w
    i8 116, label %bb.x
    i8 98, label %bb.y
    i8 97, label %bb.z
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.273156, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17    ; 3 uses
  %i.z = add i8 %i.y, -58
  %or.cond.i = icmp ult i8 %i.z, -10
  %i.aa = and i8 %i.y, -33
  %i.ab = add i8 %i.aa, -71
  %i.ac = icmp ult i8 %i.ab, -6
  %narrow.i.not = and i1 %or.cond.i, %i.ac
  br i1 %narrow.i.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.273156, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17  ; 3 uses
  %i.af = add i8 %i.ae, -58
  %or.cond.i98 = icmp ult i8 %i.af, -10
  %i.ag = and i8 %i.ae, -33
  %i.ah = add i8 %i.ag, -71
  %i.ai = icmp ult i8 %i.ah, -6
  %narrow.i99.not = and i1 %or.cond.i98, %i.ai
  br i1 %narrow.i99.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call i32 @hex_digit_to_int(i8 noundef signext %i.y)
  %i.ak = shl nuw nsw i32 %i.aj, 4
  %i.al = call i32 @hex_digit_to_int(i8 noundef signext %i.ae)
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = trunc nuw i32 %i.am to i8
  %i.ao = getelementptr i8, ptr %.270157, i64 -1
  %.val.i.i = load i8, ptr %i.ao, align 1, !tbaa !17 ; 2 uses
  %i.ap = and i8 %.val.i.i, 7
  switch i8 %i.ap, label %sdslen.exit.i [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.aq = lshr i8 %.val.i.i, 3
  %i.ar = zext nneg i8 %i.aq to i64
  br label %sdslen.exit.i

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %.270157, i64 -3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i8 %i.at to i64
  br label %sdslen.exit.i

bb.n:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %.270157, i64 -5
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !18
  %i.ax = zext i16 %i.aw to i64
  br label %sdslen.exit.i

bb.o:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %.270157, i64 -9
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i32 %i.az to i64
  br label %sdslen.exit.i

bb.p:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %.270157, i64 -17
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !14
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.0.i.i100 = phi i64 [ %i.bc, %bb.p ], [ %i.ar, %bb.l ], [ %i.au, %bb.m ], [ %i.ax, %bb.n ], [ %i.ba, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.bd = call ptr @_sdsMakeRoomFor(ptr noundef nonnull %.270157, i64 noundef 1, i32 noundef 1) ; 9 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %sdscatlen.exit, label %bb.q

bb.q:                                             ; preds = %sdslen.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.i.i100
  store i8 %i.an, ptr %i.bf, align 1
  %i.bg = add i64 %.0.i.i100, 1                   ; 6 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  %.val.i16.i = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bi = and i8 %.val.i16.i, 7
  switch i8 %i.bi, label %sdssetlen.exit.i [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %.tr.i.i = trunc i64 %i.bg to i8
  %i.bj = shl i8 %.tr.i.i, 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  br label %sdssetlen.exit.i

bb.t:                                             ; preds = %bb.q
end_hunk_1

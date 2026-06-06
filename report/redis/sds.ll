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
@switch.table.hex_digit_to_int = private unnamed_addr constant [54 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4
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
define dso_local ptr @_sdsnewlen(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
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
  %3 = xor i32 %switch.load, -1
  %4 = sext i32 %3 to i64
  %i.r = add i64 %i.q, %4                         ; 3 uses
  %switch.tableidx = add nsw i8 %spec.store.select, -1 ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx, 3
  br i1 %i.s, label %switch.lookup, label %adjustTypeIfNeeded.exit

switch.lookup:                                    ; preds = %bb.j
  %i.t = zext nneg i8 %switch.tableidx to i64
  %switch.gep27 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.t
  %switch.load28 = load i64, ptr %switch.gep27, align 8
  %i.u = icmp ugt i64 %i.r, %switch.load28
  br i1 %i.u, label %bb.k, label %adjustTypeIfNeeded.exit

bb.k:                                             ; preds = %switch.lookup
  %i.v = icmp ult i64 %i.r, 65531
  br i1 %i.v, label %adjustTypeIfNeeded.exit, label %sdsReqType.exit.i

sdsReqType.exit.i:                                ; preds = %bb.k
  %i.w = icmp ult i64 %i.r, 4294967287
  %..i.i = select i1 %i.w, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit:                          ; preds = %bb.j, %sdsReqType.exit.i, %bb.k, %switch.lookup
  %.1 = phi i8 [ %spec.store.select, %bb.j ], [ %spec.store.select, %switch.lookup ], [ %..i.i, %sdsReqType.exit.i ], [ 2, %bb.k ]
  %i.x = call ptr @sdsnewplacement(ptr noundef nonnull %i.o, i64 noundef %i.q, i8 noundef signext %.1, ptr noundef %0, i64 noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %adjustTypeIfNeeded.exit
  %.0 = phi ptr [ %i.x, %adjustTypeIfNeeded.exit ], [ null, %bb.i ]
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
define dso_local ptr @sdsnewplacement(ptr nofree noundef writeonly captures(ret: address, provenance) %0, i64 noundef %1, i8 noundef signext %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #1 {
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
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 -3
  store i16 %i.s, ptr %i.t, align 1, !tbaa !18
  br label %.sink.split

bb.g:                                             ; preds = %sdsHdrSize.exit
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 -9
  %i.v = trunc i64 %4 to i32
  store i32 %i.v, ptr %i.u, align 1, !tbaa !9
  %i.w = trunc i64 %i.i to i32
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -5
  store i32 %i.w, ptr %i.x, align 1, !tbaa !9
  br label %.sink.split

bb.h:                                             ; preds = %sdsHdrSize.exit
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 -17
  store i64 %4, ptr %i.y, align 1, !tbaa !14
  %i.z = getelementptr inbounds i8, ptr %i.j, i64 -9
  store i64 %i.i, ptr %i.z, align 1, !tbaa !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink = phi i8 [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.e ], [ %i.l, %bb.d ]
  store i8 %.sink, ptr %i.k, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %sdsHdrSize.exit
  %i.aa = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !20
  %i.ab = icmp eq ptr %3, %i.aa
  br i1 %i.ab, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not53 = icmp eq ptr %3, null
  br i1 %.not53, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %4, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not54 = icmp eq i64 %4, 0
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %4
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  ret ptr %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsnewlen(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsnewlen(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdstrynewlen(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsnewlen(ptr noundef %0, i64 noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsempty() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_sdsnewlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = add i64 %i.d, -4                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 255
  br i1 %i.f, label %bb.c, label %adjustTypeIfNeeded.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.e, 65531
  br i1 %i.g, label %adjustTypeIfNeeded.exit.i, label %sdsReqType.exit.i.i

sdsReqType.exit.i.i:                              ; preds = %bb.c
  %i.h = icmp ult i64 %i.e, 4294967287
  %..i.i.i = select i1 %i.h, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i

adjustTypeIfNeeded.exit.i:                        ; preds = %sdsReqType.exit.i.i, %bb.c, %bb.b
  %.1.i = phi i8 [ 2, %bb.c ], [ 1, %bb.b ], [ %..i.i.i, %sdsReqType.exit.i.i ]
  %i.i = call ptr @sdsnewplacement(ptr noundef nonnull %i.b, i64 noundef %i.d, i8 noundef signext %.1.i, ptr noundef nonnull @.str.4, i64 noundef 0)
  br label %_sdsnewlen.exit

_sdsnewlen.exit:                                  ; preds = %bb.a, %adjustTypeIfNeeded.exit.i
  %.0.i = phi ptr [ %i.i, %adjustTypeIfNeeded.exit.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsnew(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.split3, label %.split

.split3:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = call ptr @zmalloc_usable(i64 noundef 4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_sdsnewlen.exit, label %bb.b

bb.b:                                             ; preds = %.split3
  %i.e = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.f = add i64 %i.e, -4                         ; 3 uses
  %i.g = icmp ugt i64 %i.f, 255
  br i1 %i.g, label %bb.c, label %adjustTypeIfNeeded.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %i.f, 65531
  br i1 %i.h, label %adjustTypeIfNeeded.exit.i, label %sdsReqType.exit.i.i

sdsReqType.exit.i.i:                              ; preds = %bb.c
  %i.i = icmp ult i64 %i.f, 4294967287
  %..i.i.i = select i1 %i.i, i8 3, i8 4
  br label %adjustTypeIfNeeded.exit.i

adjustTypeIfNeeded.exit.i:                        ; preds = %sdsReqType.exit.i.i, %bb.c, %bb.b
  %.1.i = phi i8 [ 2, %bb.c ], [ 1, %bb.b ], [ %..i.i.i, %sdsReqType.exit.i.i ]
  %i.j = call ptr @sdsnewplacement(ptr noundef nonnull %i.c, i64 noundef %i.e, i8 noundef signext %.1.i, ptr noundef null, i64 noundef 0)
  br label %_sdsnewlen.exit

_sdsnewlen.exit:                                  ; preds = %.split3, %adjustTypeIfNeeded.exit.i
  %.0.i = phi ptr [ %i.j, %adjustTypeIfNeeded.exit.i ], [ null, %.split3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

.split:                                           ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.l = tail call ptr @_sdsnewlen(ptr noundef nonnull readonly %0, i64 noundef %i.k, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %_sdsnewlen.exit, %.split
  %phi.call = phi ptr [ %i.l, %.split ], [ %.0.i, %_sdsnewlen.exit ]
  ret ptr %phi.call
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsdup(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
end_hunk_0
begin_hunk_1_@sdsclear:bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -3
  store i8 0, ptr %i.c, align 1, !tbaa !17
  br label %sdssetlen.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -5
  store i16 0, ptr %i.d, align 1, !tbaa !18
  br label %sdssetlen.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -9
  store i32 0, ptr %i.e, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -17
  store i64 0, ptr %i.f, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  store i8 0, ptr %0, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !17 ; 2 uses
  %i.c = and i8 %.val.i, 7                        ; 5 uses
  switch i8 %i.c, label %sdsavail.exit [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -3
  %i.e = getelementptr inbounds i8, ptr %0, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  %i.h = load i8, ptr %i.d, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i64
  %i.j = sub nsw i64 %i.g, %i.i
  br label %sdsavail.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -5
  %i.l = getelementptr inbounds i8, ptr %0, i64 -3
  %i.m = load i16, ptr %i.l, align 1, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = load i16, ptr %i.k, align 1, !tbaa !18
  %i.p = zext i16 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  br label %sdsavail.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = getelementptr inbounds i8, ptr %0, i64 -5
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = load i32, ptr %i.r, align 1, !tbaa !9
  %i.v = sub i32 %i.t, %i.u
  %i.w = zext i32 %i.v to i64
  br label %sdsavail.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17
  %i.y = getelementptr inbounds i8, ptr %0, i64 -9
  %i.z = load i64, ptr %i.y, align 1, !tbaa !14
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !14
  %i.ab = sub i64 %i.z, %i.aa
  br label %sdsavail.exit

sdsavail.exit:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %bb.e ], [ %i.j, %bb.b ], [ %i.q, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp ult i64 %.0.i, %1
  br i1 %.not, label %bb.f, label %sdssetalloc.exit

bb.f:                                             ; preds = %sdsavail.exit
  switch i8 %i.c, label %sdsHdrSize.exit [
    i8 0, label %sdslen.exit.thread
    i8 1, label %sdslen.exit.thread98
    i8 2, label %sdslen.exit.thread101
    i8 3, label %sdslen.exit.thread104
    i8 4, label %sdslen.exit.thread107
  ]

sdslen.exit.thread:                               ; preds = %bb.f
  %i.ac = lshr i8 %.val.i, 3
  %i.ad = zext nneg i8 %i.ac to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread98:                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread101:                            ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -5
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !18
  %i.aj = zext i16 %i.ai to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread104:                            ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %0, i64 -9
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !9
  %i.am = zext i32 %i.al to i64
  br label %sdsHdrSize.exit

sdslen.exit.thread107:                            ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %0, i64 -17
  %i.ao = load i64, ptr %i.an, align 1, !tbaa !14
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.f, %sdslen.exit.thread107, %sdslen.exit.thread104, %sdslen.exit.thread101, %sdslen.exit.thread98, %sdslen.exit.thread
  %.0.i5697 = phi i64 [ %i.ag, %sdslen.exit.thread98 ], [ %i.aj, %sdslen.exit.thread101 ], [ %i.ad, %sdslen.exit.thread ], [ %i.ao, %sdslen.exit.thread107 ], [ %i.am, %sdslen.exit.thread104 ], [ 0, %bb.f ] ; 15 uses
  %.0.i57.neg = phi i64 [ -3, %sdslen.exit.thread98 ], [ -5, %sdslen.exit.thread101 ], [ -1, %sdslen.exit.thread ], [ -17, %sdslen.exit.thread107 ], [ -9, %sdslen.exit.thread104 ], [ 0, %bb.f ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.0.i57.neg ; 5 uses
  %i.aq = add i64 %.0.i5697, %1                   ; 6 uses
  %i.ar = icmp ugt i64 %i.aq, %.0.i5697
  br i1 %i.ar, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %sdsHdrSize.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 284) #21
  tail call void @abort() #22
  unreachable

bb.h:                                             ; preds = %sdsHdrSize.exit
  %i.as = icmp eq i32 %2, 1
  br i1 %i.as, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = icmp ult i64 %i.aq, 1048576
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = shl nuw nsw i64 %i.aq, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.av = add i64 %i.aq, 1048576
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.047 = phi i64 [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %i.aq, %bb.h ] ; 4 uses
  %i.aw = icmp ult i64 %.047, 253
  br i1 %i.aw, label %sdsHdrSize.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ult i64 %.047, 65531
  br i1 %i.ax, label %sdsHdrSize.exit60, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i64 %.047, 4294967287          ; 2 uses
  %spec.select = select i1 %i.ay, i8 3, i8 4
  %spec.select189 = select i1 %i.ay, i32 9, i32 17
  br label %sdsHdrSize.exit60

default.unreachable151:                           ; preds = %adjustTypeIfNeeded.exit73
  unreachable

sdsHdrSize.exit60:                                ; preds = %bb.n, %bb.l, %bb.m
  %.0.i58153 = phi i8 [ 2, %bb.m ], [ 1, %bb.l ], [ %spec.select, %bb.n ] ; 6 uses
  %.0.i59 = phi i32 [ 5, %bb.m ], [ 3, %bb.l ], [ %spec.select189, %bb.n ] ; 8 uses
  %i.az = zext nneg i32 %.0.i59 to i64            ; 4 uses
  %i.ba = add i64 %.047, 1
  %i.bb = add i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.p, label %bb.o, !prof !13

bb.o:                                             ; preds = %sdsHdrSize.exit60
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 300) #21
  tail call void @abort() #22
  unreachable

bb.p:                                             ; preds = %sdsHdrSize.exit60
  %i.bd = icmp eq i8 %i.c, %.0.i58153
  br i1 %i.bd, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.be = call ptr @zrealloc_usable(ptr noundef %i.ap, i64 noundef %i.bb, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %sdssetalloc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az ; 4 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bi = xor i32 %.0.i59, -1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj                    ; 4 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.bl = icmp ult i8 %switch.tableidx, 3
  br i1 %i.bl, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.r
  %i.bm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.bm
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bn = icmp ugt i64 %i.bk, %switch.load
  br i1 %i.bn, label %bb.s, label %adjustTypeIfNeeded.exit.thread

bb.s:                                             ; preds = %switch.lookup
  %i.bo = icmp ult i64 %i.bk, 65531
  br i1 %i.bo, label %adjustTypeIfNeeded.exit.thread114, label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit.thread114:                ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 5 ; 2 uses
  %i.bq = add nuw i64 %.0.i5697, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 2, ptr %i.br, align 1, !tbaa !17
  %i.bs = trunc i64 %.0.i5697 to i16
  store i16 %i.bs, ptr %i.be, align 1, !tbaa !18
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit:                          ; preds = %bb.s
  %i.bt = icmp ult i64 %i.bk, 4294967287          ; 3 uses
  %..i.i = select i1 %i.bt, i8 3, i8 4
  %i.bu = select i1 %i.bt, i64 9, i64 17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bu ; 6 uses
  %i.bw = add nuw i64 %.0.i5697, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bv, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -1
  store i8 %..i.i, ptr %i.bx, align 1, !tbaa !17
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.by = trunc i64 %.0.i5697 to i32
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -9
  store i32 %i.by, ptr %i.bz, align 1, !tbaa !9
  br label %adjustTypeIfNeeded.exit.thread

bb.u:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -17
  store i64 %.0.i5697, ptr %i.ca, align 1, !tbaa !14
  br label %adjustTypeIfNeeded.exit.thread

bb.v:                                             ; preds = %bb.p
  %i.cb = call ptr @zmalloc_usable(i64 noundef %i.bb, ptr noundef nonnull %i.a) #21 ; 6 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %sdssetalloc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ce = xor i32 %.0.i59, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = icmp samesign ult i8 %.0.i58153, 4
  br i1 %i.ch, label %switch.lookup191, label %adjustTypeIfNeeded.exit73.thread128

adjustTypeIfNeeded.exit73.thread128:              ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.az ; 3 uses
  %i.cj = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cj, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -1
  store i8 %.0.i58153, ptr %i.ck, align 1, !tbaa !17
  %i.cl = xor i32 %.0.i59, -1
  %i.cm = sext i32 %i.cl to i64
  br label %adjustTypeIfNeeded.exit.thread.thread176

switch.lookup191:                                 ; preds = %bb.w
  %i.cn = zext nneg i8 %.0.i58153 to i64
  %3 = getelementptr [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.cn
  %switch.gep192 = getelementptr i8, ptr %3, i64 -8
  %switch.load193 = load i64, ptr %switch.gep192, align 8
  %i.co = icmp ugt i64 %i.cg, %switch.load193
  br i1 %i.co, label %bb.x, label %adjustTypeIfNeeded.exit73

bb.x:                                             ; preds = %switch.lookup191
  %i.cp = icmp ult i64 %i.cg, 65531
  br i1 %i.cp, label %adjustTypeIfNeeded.exit73.thread, label %sdsReqType.exit.i67

adjustTypeIfNeeded.exit73.thread:                 ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 5 ; 2 uses
  %i.cr = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cq, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cr, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 2, ptr %i.cs, align 1, !tbaa !17
  br label %bb.y

sdsReqType.exit.i67:                              ; preds = %bb.x
  %i.ct = icmp ult i64 %i.cg, 4294967287          ; 2 uses
  %.pre = select i1 %i.ct, i64 9, i64 17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.pre ; 4 uses
  %i.cv = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cv, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -1 ; 2 uses
  br i1 %i.ct, label %adjustTypeIfNeeded.exit73.thread165, label %adjustTypeIfNeeded.exit73.thread161

adjustTypeIfNeeded.exit73.thread161:              ; preds = %sdsReqType.exit.i67
  store i8 4, ptr %i.cw, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread176

adjustTypeIfNeeded.exit73.thread165:              ; preds = %sdsReqType.exit.i67
  store i8 3, ptr %i.cw, align 1, !tbaa !17
  br label %adjustTypeIfNeeded.exit.thread.thread180

adjustTypeIfNeeded.exit73:                        ; preds = %switch.lookup191
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.az ; 6 uses
  %i.cy = add nuw i64 %.0.i5697, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.cy, i1 false)
  call void @zfree(ptr noundef nonnull %i.ap) #21
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -1
  store i8 %.0.i58153, ptr %i.cz, align 1, !tbaa !17
  switch i8 %.0.i58153, label %default.unreachable151 [
    i8 3, label %adjustTypeIfNeeded.exit.thread.thread180
    i8 1, label %adjustTypeIfNeeded.exit.thread.thread185
    i8 2, label %bb.y
  ]

adjustTypeIfNeeded.exit.thread.thread185:         ; preds = %adjustTypeIfNeeded.exit73
  %i.da = trunc i64 %.0.i5697 to i8
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -3
  store i8 %i.da, ptr %i.db, align 1, !tbaa !17
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dd = xor i32 %.0.i59, -1
  %i.de = sext i32 %i.dd to i64
  %i.df = add i64 %i.dc, %i.de
  br label %sdsTypeMaxSize.exit

bb.y:                                             ; preds = %adjustTypeIfNeeded.exit73.thread, %adjustTypeIfNeeded.exit73
  %i.dg = phi ptr [ %i.cq, %adjustTypeIfNeeded.exit73.thread ], [ %i.cx, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2126 = phi i32 [ 5, %adjustTypeIfNeeded.exit73.thread ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.dh = trunc i64 %.0.i5697 to i16
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -5
  store i16 %i.dh, ptr %i.di, align 1, !tbaa !18
  %i.dj = xor i32 %.2126, -1
  %i.dk = sext i32 %i.dj to i64
  br label %adjustTypeIfNeeded.exit.thread.thread170

adjustTypeIfNeeded.exit.thread.thread180:         ; preds = %adjustTypeIfNeeded.exit73, %adjustTypeIfNeeded.exit73.thread165
  %i.dl = phi ptr [ %i.cu, %adjustTypeIfNeeded.exit73.thread165 ], [ %i.cx, %adjustTypeIfNeeded.exit73 ] ; 2 uses
  %.2169 = phi i32 [ 9, %adjustTypeIfNeeded.exit73.thread165 ], [ %.0.i59, %adjustTypeIfNeeded.exit73 ]
  %i.dm = trunc i64 %.0.i5697 to i32
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -9
  store i32 %i.dm, ptr %i.dn, align 1, !tbaa !9
  %i.do = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dp = xor i32 %.2169, -1
  %i.dq = sext i32 %i.dp to i64
  %i.dr = add i64 %i.do, %i.dq
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread.thread176:         ; preds = %adjustTypeIfNeeded.exit73.thread128, %adjustTypeIfNeeded.exit73.thread161
  %i.ds = phi ptr [ %i.ci, %adjustTypeIfNeeded.exit73.thread128 ], [ %i.cu, %adjustTypeIfNeeded.exit73.thread161 ] ; 2 uses
  %.2132 = phi i64 [ %i.cm, %adjustTypeIfNeeded.exit73.thread128 ], [ -18, %adjustTypeIfNeeded.exit73.thread161 ]
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -17
  store i64 %.0.i5697, ptr %i.dt, align 1, !tbaa !14
  %i.du = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dv = add i64 %i.du, %.2132
  br label %.critedge

adjustTypeIfNeeded.exit.thread.thread170:         ; preds = %bb.y, %adjustTypeIfNeeded.exit.thread114
  %.092.ph = phi i64 [ -6, %adjustTypeIfNeeded.exit.thread114 ], [ %i.dk, %bb.y ]
  %.046.ph = phi ptr [ %i.bp, %adjustTypeIfNeeded.exit.thread114 ], [ %i.dg, %bb.y ]
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dx = add i64 %i.dw, %.092.ph
  br label %sdsTypeMaxSize.exit

adjustTypeIfNeeded.exit.thread:                   ; preds = %switch.lookup, %bb.t, %bb.u
  %.093 = phi i8 [ 3, %bb.t ], [ 4, %bb.u ], [ %i.c, %switch.lookup ]
  %.092 = phi i32 [ 9, %bb.t ], [ 17, %bb.u ], [ %.0.i59, %switch.lookup ]
  %.046 = phi ptr [ %i.bv, %bb.t ], [ %i.bv, %bb.u ], [ %i.bg, %switch.lookup ] ; 4 uses
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !14
  %i.dz = xor i32 %.092, -1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = add i64 %i.dy, %i.ea                    ; 4 uses
  switch i8 %.093, label %.critedge [
    i8 3, label %bb.aa
    i8 1, label %sdsTypeMaxSize.exit
    i8 2, label %bb.z
  ]

bb.z:                                             ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

bb.aa:                                            ; preds = %adjustTypeIfNeeded.exit.thread
  br label %sdsTypeMaxSize.exit

sdsTypeMaxSize.exit:                              ; preds = %adjustTypeIfNeeded.exit.thread.thread180, %adjustTypeIfNeeded.exit.thread.thread170, %adjustTypeIfNeeded.exit.thread.thread185, %adjustTypeIfNeeded.exit.thread, %bb.z, %bb.aa
  %i.ec = phi i64 [ %i.eb, %bb.z ], [ %i.df, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %i.eb, %adjustTypeIfNeeded.exit.thread ], [ %i.dx, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dr, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %i.eb, %bb.aa ] ; 2 uses
  %.046175 = phi ptr [ %.046, %bb.z ], [ %i.cx, %adjustTypeIfNeeded.exit.thread.thread185 ], [ %.046, %adjustTypeIfNeeded.exit.thread ], [ %.046.ph, %adjustTypeIfNeeded.exit.thread.thread170 ], [ %i.dl, %adjustTypeIfNeeded.exit.thread.thread180 ], [ %.046, %bb.aa ]
  %.0.i77 = phi i64 [ 65535, %bb.z ], [ 255, %adjustTypeIfNeeded.exit.thread.thread185 ], [ 255, %adjustTypeIfNeeded.exit.thread ], [ 65535, %adjustTypeIfNeeded.exit.thread.thread170 ], [ 4294967295, %adjustTypeIfNeeded.exit.thread.thread180 ], [ 4294967295, %bb.aa ]
  %.not141 = icmp ugt i64 %i.ec, %.0.i77
  br i1 %.not141, label %bb.ab, label %.critedge, !prof !23

bb.ab:                                            ; preds = %sdsTypeMaxSize.exit
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 325) #21
  call void @abort() #22
  unreachable

.critedge:                                        ; preds = %bb.r, %adjustTypeIfNeeded.exit.thread.thread176, %adjustTypeIfNeeded.exit.thread, %sdsTypeMaxSize.exit
  %i.ed = phi i64 [ %i.ec, %sdsTypeMaxSize.exit ], [ %i.eb, %adjustTypeIfNeeded.exit.thread ], [ %i.bk, %bb.r ], [ %i.dv, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 4 uses
  %.046137 = phi ptr [ %.046175, %sdsTypeMaxSize.exit ], [ %.046, %adjustTypeIfNeeded.exit.thread ], [ %i.bg, %bb.r ], [ %i.ds, %adjustTypeIfNeeded.exit.thread.thread176 ] ; 10 uses
  %i.ee = getelementptr i8, ptr %.046137, i64 -1
  %.val.i78 = load i8, ptr %i.ee, align 1, !tbaa !17
  %i.ef = and i8 %.val.i78, 7
  switch i8 %i.ef, label %sdssetalloc.exit [
    i8 4, label %bb.af
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %.critedge
  %i.eg = trunc i64 %i.ed to i8
  %i.eh = getelementptr inbounds i8, ptr %.046137, i64 -2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !17
  br label %sdssetalloc.exit

bb.ad:                                            ; preds = %.critedge
  %i.ei = trunc i64 %i.ed to i16
  %i.ej = getelementptr inbounds i8, ptr %.046137, i64 -3
  store i16 %i.ei, ptr %i.ej, align 1, !tbaa !18
  br label %sdssetalloc.exit

bb.ae:                                            ; preds = %.critedge
  %i.ek = trunc i64 %i.ed to i32
  %i.el = getelementptr inbounds i8, ptr %.046137, i64 -5
  store i32 %i.ek, ptr %i.el, align 1, !tbaa !9
  br label %sdssetalloc.exit

bb.af:                                            ; preds = %.critedge
  %i.em = getelementptr inbounds i8, ptr %.046137, i64 -9
  store i64 %i.ed, ptr %i.em, align 1, !tbaa !14
  br label %sdssetalloc.exit

sdssetalloc.exit:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.critedge, %bb.v, %bb.q, %sdsavail.exit
  %.0 = phi ptr [ null, %bb.q ], [ %0, %sdsavail.exit ], [ null, %bb.v ], [ %.046137, %.critedge ], [ %.046137, %bb.ac ], [ %.046137, %bb.ad ], [ %.046137, %bb.ae ], [ %.046137, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsMakeRoomFor(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsMakeRoomForNonGreedy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_sdsMakeRoomFor(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsRemoveFreeSpace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
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

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call ptr @sdsResize(ptr noundef nonnull %0, i64 noundef %.0.i, i32 noundef %1)
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdsResize(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !tbaa !17   ; 3 uses
  %i.c = and i8 %.val, 7                          ; 5 uses
  switch i8 %i.c, label %sdsalloc.exit [
    i8 0, label %sdslen.exit.thread
    i8 1, label %sdslen.exit.thread133
    i8 2, label %sdslen.exit.thread138
    i8 3, label %sdslen.exit.thread143
    i8 4, label %sdslen.exit.thread148
  ]

sdslen.exit.thread:                               ; preds = %bb.a
  %i.d = lshr i8 %.val, 3
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  br label %sdsalloc.exit

sdslen.exit.thread133:                            ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 -2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = zext i8 %i.j to i64
  br label %sdsalloc.exit

sdslen.exit.thread138:                            ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -5 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3
  %i.p = load i16, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i16 %i.p to i64
  br label %sdsalloc.exit

sdslen.exit.thread143:                            ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9 ; 2 uses
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 -5
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %sdsalloc.exit

sdslen.exit.thread148:                            ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -17 ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !14
  %i.z = getelementptr inbounds i8, ptr %0, i64 -9
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !14
  br label %sdsalloc.exit

sdsalloc.exit:                                    ; preds = %bb.a, %sdslen.exit.thread, %sdslen.exit.thread133, %sdslen.exit.thread138, %sdslen.exit.thread143, %sdslen.exit.thread148
  %i.ab = phi ptr [ %i.x, %sdslen.exit.thread148 ], [ %i.b, %sdslen.exit.thread ], [ %i.f, %sdslen.exit.thread133 ], [ %i.l, %sdslen.exit.thread138 ], [ %i.r, %sdslen.exit.thread143 ], [ %0, %bb.a ] ; 2 uses
  %i.ac = phi i64 [ 17, %sdslen.exit.thread148 ], [ 1, %sdslen.exit.thread ], [ 3, %sdslen.exit.thread133 ], [ 5, %sdslen.exit.thread138 ], [ 9, %sdslen.exit.thread143 ], [ 0, %bb.a ]
  %.0.i59132 = phi i64 [ %i.y, %sdslen.exit.thread148 ], [ %i.e, %sdslen.exit.thread ], [ %i.h, %sdslen.exit.thread133 ], [ %i.n, %sdslen.exit.thread138 ], [ %i.t, %sdslen.exit.thread143 ], [ 0, %bb.a ]
  %.0.i114130 = phi i32 [ 17, %sdslen.exit.thread148 ], [ 1, %sdslen.exit.thread ], [ 3, %sdslen.exit.thread133 ], [ 5, %sdslen.exit.thread138 ], [ 9, %sdslen.exit.thread143 ], [ 0, %bb.a ] ; 5 uses
  %.0.i61 = phi i64 [ %i.aa, %sdslen.exit.thread148 ], [ %i.e, %sdslen.exit.thread ], [ %i.k, %sdslen.exit.thread133 ], [ %i.q, %sdslen.exit.thread138 ], [ %i.w, %sdslen.exit.thread143 ], [ 0, %bb.a ]
  %i.ad = icmp eq i64 %.0.i61, %1
  br i1 %i.ad, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %sdsalloc.exit
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i59132) ; 12 uses
  %i.ae = icmp ult i64 %1, 32
  br i1 %i.ae, label %sdsReqType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i64 %1, 253
  br i1 %i.af, label %sdsReqType.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %1, 65531
  br i1 %i.ag, label %sdsReqType.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i64 %1, 4294967287
  %..i = select i1 %i.ah, i8 3, i8 4
  br label %sdsReqType.exit

sdsReqType.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i62 = phi i8 [ 2, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ], [ %..i, %bb.e ] ; 2 uses
  %i.ai = icmp ne i32 %2, 0
  %i.aj = icmp eq i8 %.0.i62, 0
  %or.cond = and i1 %i.ai, %i.aj
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i62 ; 7 uses
  %i.ak = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize, i64 %i.ak
  %switch.load = load i32, ptr %switch.gep, align 4 ; 4 uses
  %i.al = icmp eq i8 %i.c, %spec.store.select
  %i.am = icmp samesign ult i8 %spec.store.select, %i.c
  %i.an = icmp samesign ugt i8 %spec.store.select, 1
  %i.ao = and i1 %i.am, %i.an
  %i.ap = select i1 %i.al, i1 true, i1 %i.ao      ; 2 uses
  %.pn.in.sroa.speculated = select i1 %i.ap, i32 %.0.i114130, i32 %switch.load
  %.pn = zext nneg i32 %.pn.in.sroa.speculated to i64
  %.in = add i64 %1, 1
  %i.aq = add i64 %.in, %.pn                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !14
  br i1 %i.ap, label %bb.f, label %bb.q

bb.f:                                             ; preds = %sdsReqType.exit
  switch i8 %i.c, label %sdsAllocSize.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ar = lshr i8 %.val, 3
  %narrow.i = add nuw nsw i8 %i.ar, 2
  %i.as = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds i8, ptr %0, i64 -2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 4
  br label %sdsAllocSize.exit

bb.i:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds i8, ptr %0, i64 -3
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !18
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 6
  br label %sdsAllocSize.exit

bb.j:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds i8, ptr %0, i64 -5
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 10
  br label %sdsAllocSize.exit

bb.k:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds i8, ptr %0, i64 -9
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !14
  %i.bh = add i64 %i.bg, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i66 = phi i64 [ %i.bh, %bb.k ], [ %i.as, %bb.g ], [ %i.aw, %bb.h ], [ %i.ba, %bb.i ], [ %i.be, %bb.j ], [ 0, %bb.f ] ; 2 uses
  store i64 %.0.i66, ptr %i.a, align 8, !tbaa !14
  %i.bi = tail call i64 @je_nallocx(i64 noundef %i.aq, i32 noundef 0) #23
  %i.bj = icmp eq i64 %i.bi, %.0.i66
  br i1 %i.bj, label %sdssetlen.exit, label %bb.l

bb.l:                                             ; preds = %sdsAllocSize.exit
  %i.bk = call ptr @zrealloc_usable(ptr noundef %i.ab, i64 noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef null) #21 ; 6 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ac ; 4 uses
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bo = xor i32 %.0.i114130, -1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i64 %i.bn, %i.bp                    ; 3 uses
  %switch.tableidx = add nsw i8 %i.c, -1          ; 2 uses
  %i.br = icmp ult i8 %switch.tableidx, 3
  br i1 %i.br, label %switch.lookup, label %sdssetlen.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bs = zext nneg i8 %switch.tableidx to i64
  %switch.gep172 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.bs
  %switch.load173 = load i64, ptr %switch.gep172, align 8
  %i.bt = icmp ugt i64 %i.bq, %switch.load173
  br i1 %i.bt, label %bb.n, label %sdssetlen.exit

bb.n:                                             ; preds = %switch.lookup
  %i.bu = icmp ult i64 %i.bq, 65531
  br i1 %i.bu, label %adjustTypeIfNeeded.exit.thread157, label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit.thread157:                ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 5 ; 2 uses
  %i.bw = add i64 %spec.select, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bm, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 2, ptr %i.bx, align 1, !tbaa !17
  %i.by = trunc i64 %spec.select to i16
  store i16 %i.by, ptr %i.bk, align 1, !tbaa !18
  br label %sdssetlen.exit

adjustTypeIfNeeded.exit:                          ; preds = %bb.n
  %i.bz = icmp ult i64 %i.bq, 4294967287          ; 3 uses
  %..i.i = select i1 %i.bz, i8 3, i8 4
  %i.ca = select i1 %i.bz, i64 9, i64 17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ca ; 6 uses
  %i.cc = add i64 %spec.select, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %i.bm, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -1
  store i8 %..i.i, ptr %i.cd, align 1, !tbaa !17
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.ce = trunc i64 %spec.select to i32
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -9
  store i32 %i.ce, ptr %i.cf, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.p:                                             ; preds = %adjustTypeIfNeeded.exit
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 -17
  store i64 %spec.select, ptr %i.cg, align 1, !tbaa !14
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %bb.m, %switch.lookup, %bb.p, %bb.o, %adjustTypeIfNeeded.exit.thread157, %sdsAllocSize.exit
  %.0 = phi i32 [ %.0.i114130, %sdsAllocSize.exit ], [ 17, %bb.p ], [ %.0.i114130, %switch.lookup ], [ %.0.i114130, %bb.m ], [ 9, %bb.o ], [ 5, %adjustTypeIfNeeded.exit.thread157 ]
  %.049 = phi ptr [ %0, %sdsAllocSize.exit ], [ %i.cb, %bb.p ], [ %i.bm, %switch.lookup ], [ %i.bm, %bb.m ], [ %i.cb, %bb.o ], [ %i.bv, %adjustTypeIfNeeded.exit.thread157 ] ; 2 uses
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ci = xor i32 %.0, -1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = add i64 %i.ch, %i.cj
  %.phi.trans.insert = getelementptr i8, ptr %.049, i64 -1
  %.val.i80.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !17
  br label %bb.t

bb.q:                                             ; preds = %sdsReqType.exit
  %i.cl = call ptr @zmalloc_usable(i64 noundef %i.aq, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !14
  %i.co = xor i32 %switch.load, -1
  %i.cp = sext i32 %i.co to i64
  %i.cq = add i64 %i.cn, %i.cp                    ; 3 uses
  %switch.tableidx174 = add nsw i8 %spec.store.select, -1 ; 2 uses
  %i.cr = icmp ult i8 %switch.tableidx174, 3
  br i1 %i.cr, label %switch.lookup175, label %adjustTypeIfNeeded.exit79

switch.lookup175:                                 ; preds = %bb.r
  %i.cs = zext nneg i8 %switch.tableidx174 to i64
  %switch.gep176 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdsResize.6, i64 %i.cs
  %switch.load177 = load i64, ptr %switch.gep176, align 8
  %i.ct = icmp ugt i64 %i.cq, %switch.load177
  br i1 %i.ct, label %bb.s, label %adjustTypeIfNeeded.exit79

bb.s:                                             ; preds = %switch.lookup175
  %i.cu = icmp ult i64 %i.cq, 65531
  br i1 %i.cu, label %adjustTypeIfNeeded.exit79, label %sdsReqType.exit.i73

sdsReqType.exit.i73:                              ; preds = %bb.s
  %i.cv = icmp ult i64 %i.cq, 4294967287          ; 2 uses
  %..i.i74 = select i1 %i.cv, i8 3, i8 4
  %..i75 = select i1 %i.cv, i32 9, i32 17
  br label %adjustTypeIfNeeded.exit79

adjustTypeIfNeeded.exit79:                        ; preds = %bb.r, %sdsReqType.exit.i73, %bb.s, %switch.lookup175
  %.1111 = phi i8 [ %spec.store.select, %bb.r ], [ %spec.store.select, %switch.lookup175 ], [ %..i.i74, %sdsReqType.exit.i73 ], [ 2, %bb.s ] ; 2 uses
  %.0107 = phi i32 [ %switch.load, %bb.r ], [ %switch.load, %switch.lookup175 ], [ %..i75, %sdsReqType.exit.i73 ], [ 5, %bb.s ] ; 2 uses
  %i.cw = zext nneg i32 %.0107 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cw ; 3 uses
  %i.cy = add i64 %spec.select, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 1 %0, i64 %i.cy, i1 false)
  call void @zfree(ptr noundef %i.ab) #21
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -1
  store i8 %.1111, ptr %i.cz, align 1, !tbaa !17
  %i.da = load i64, ptr %i.a, align 8, !tbaa !14
  %i.db = xor i32 %.0107, -1
  %i.dc = sext i32 %i.db to i64
  %i.dd = add i64 %i.da, %i.dc
  br label %bb.t

bb.t:                                             ; preds = %sdssetlen.exit, %adjustTypeIfNeeded.exit79
  %.val.i80 = phi i8 [ %.val.i80.pre, %sdssetlen.exit ], [ %.1111, %adjustTypeIfNeeded.exit79 ] ; 6 uses
  %.251 = phi ptr [ %.049, %sdssetlen.exit ], [ %i.cx, %adjustTypeIfNeeded.exit79 ] ; 15 uses
  %.148 = phi i64 [ %i.ck, %sdssetlen.exit ], [ %i.dd, %adjustTypeIfNeeded.exit79 ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.251, i64 %spec.select
  store i8 0, ptr %i.de, align 1, !tbaa !17
  %i.df = and i8 %.val.i80, 7
  switch i8 %i.df, label %sdssetlen.exit82 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %.251, i64 -1
  %.tr.i81 = trunc i64 %spec.select to i8
  %i.dh = shl i8 %.tr.i81, 3                      ; 2 uses
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !17
  br label %sdssetlen.exit82

bb.v:                                             ; preds = %bb.t
  %i.di = trunc i64 %spec.select to i8
  %i.dj = getelementptr inbounds i8, ptr %.251, i64 -3
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !17
  br label %sdssetlen.exit82

bb.w:                                             ; preds = %bb.t
  %i.dk = trunc i64 %spec.select to i16
  %i.dl = getelementptr inbounds i8, ptr %.251, i64 -5
  store i16 %i.dk, ptr %i.dl, align 1, !tbaa !18
  br label %sdssetlen.exit82

bb.x:                                             ; preds = %bb.t
  %i.dm = trunc i64 %spec.select to i32
  %i.dn = getelementptr inbounds i8, ptr %.251, i64 -9
  store i32 %i.dm, ptr %i.dn, align 1, !tbaa !9
  br label %sdssetlen.exit82

bb.y:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds i8, ptr %.251, i64 -17
  store i64 %spec.select, ptr %i.do, align 1, !tbaa !14
  br label %sdssetlen.exit82

sdssetlen.exit82:                                 ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.val.i83 = phi i8 [ %.val.i80, %bb.t ], [ %i.dh, %bb.u ], [ %.val.i80, %bb.v ], [ %.val.i80, %bb.w ], [ %.val.i80, %bb.x ], [ %.val.i80, %bb.y ]
  %i.dp = and i8 %.val.i83, 7
  switch i8 %i.dp, label %.critedge [
    i8 4, label %bb.ac
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
  ]

bb.z:                                             ; preds = %sdssetlen.exit82
  %i.dq = trunc i64 %.148 to i8
  %i.dr = getelementptr inbounds i8, ptr %.251, i64 -2
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !17
  br label %.critedge

bb.aa:                                            ; preds = %sdssetlen.exit82
  %i.ds = trunc i64 %.148 to i16
  %i.dt = getelementptr inbounds i8, ptr %.251, i64 -3
  store i16 %i.ds, ptr %i.dt, align 1, !tbaa !18
  br label %.critedge

bb.ab:                                            ; preds = %sdssetlen.exit82
  %i.du = trunc i64 %.148 to i32
  %i.dv = getelementptr inbounds i8, ptr %.251, i64 -5
  store i32 %i.du, ptr %i.dv, align 1, !tbaa !9
  br label %.critedge

bb.ac:                                            ; preds = %sdssetlen.exit82
  %i.dw = getelementptr inbounds i8, ptr %.251, i64 -9
  store i64 %.148, ptr %i.dw, align 1, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %sdssetlen.exit82, %bb.l, %bb.q
  %.1 = phi ptr [ null, %bb.l ], [ null, %bb.q ], [ %.251, %sdssetlen.exit82 ], [ %.251, %bb.z ], [ %.251, %bb.aa ], [ %.251, %bb.ab ], [ %.251, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ad

bb.ad:                                            ; preds = %sdsalloc.exit, %.critedge
  %.2 = phi ptr [ %.1, %.critedge ], [ %0, %sdsalloc.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @je_nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sdsAllocPtr(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %i.d = icmp samesign ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %sdsHdrSize.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sdstemplate.9, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %bb.a, %switch.lookup
  %.0.i.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.0.i.neg
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local void @sdsIncrLen(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val = load i8, ptr %i.a, align 1, !tbaa !17   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.q [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3                         ; 3 uses
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.c to i64
  %i.f = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, 32
  br i1 %i.g, label %.critedge, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %1, 0
  %i.i = zext nneg i8 %i.c to i32
  %i.j = trunc i64 %1 to i32
  %i.k = sub i32 0, %i.j
  %i.l = icmp uge i32 %i.i, %i.k
  %i.m = select i1 %i.h, i1 %i.l, i1 false
  br i1 %i.m, label %..critedge_crit_edge, label %.thread, !prof !24

..critedge_crit_edge:                             ; preds = %bb.d
  %.pre = zext nneg i8 %i.c to i64
  %.pre84 = add nsw i64 %1, %.pre
  br label %.critedge

.thread:                                          ; preds = %bb.c, %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 468) #21
  tail call void @abort() #22
  unreachable

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.c
  %.pre-phi85 = phi i64 [ %.pre84, %..critedge_crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %.tr = trunc i64 %.pre-phi85 to i8
  %i.n = shl i8 %.tr, 3
  store i8 %i.n, ptr %i.a, align 1, !tbaa !17
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3 ; 3 uses
  %i.p = icmp sgt i64 %1, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %0, i64 -2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = sub nsw i64 %i.s, %i.u
  %.not58 = icmp slt i64 %i.v, %1
  br i1 %.not58, label %.critedge62, label %.critedge60

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = trunc i64 %1 to i32
  %i.z = sub i32 0, %i.y
  %.not82 = icmp ult i32 %i.x, %i.z
  br i1 %.not82, label %.critedge62, label %.critedge60, !prof !16

.critedge62:                                      ; preds = %bb.f, %bb.g
end_hunk_1
begin_hunk_2_@sdscatrepr:bb.a
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
define dso_local range(i32 0, 2) i32 @sdsneedsrepr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
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
bb.a:
  %switch.tableidx = add i8 %0, -49               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 54
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.hex_digit_to_int, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sdssplitargs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
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
end_hunk_2

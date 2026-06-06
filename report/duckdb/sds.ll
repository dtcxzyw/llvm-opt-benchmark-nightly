inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str.2 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1 = private unnamed_addr constant [5 x i8] c"\02\04\06\0A\12", align 8
@switch.table._ZN10duckdb_hll16hex_digit_to_intEc = private unnamed_addr constant [54 x i8] c"\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", align 4
@switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3 = private unnamed_addr constant [5 x i64] [i64 -2, i64 -4, i64 -6, i64 -10, i64 -18], align 8

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll9sdsnewlenEPKvm(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 32
  br i1 %i.a, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 256
  br i1 %i.b, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %1, 65536
  br i1 %i.c, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %1, 4294967296
  %..i = select i1 %i.d, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit

_ZN10duckdb_hllL10sdsReqTypeEm.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i8 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ %..i, %bb.d ] ; 2 uses
  %i.e = icmp eq i8 %.0.i, 0
  %i.f = icmp eq i64 %1, 0
  %or.cond = and i1 %i.f, %i.e
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i ; 2 uses
  %i.g = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.h = add i64 %1, 1
  %i.i = add i64 %i.h, %switch.ext                ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #27 ; 3 uses
  %i.k = icmp ne ptr %0, null                     ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.e

default.unreachable65:                            ; preds = %bb.g
  unreachable

bb.e:                                             ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10duckdb_hllL10sdsReqTypeEm.exit
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %switch.ext ; 12 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1
  switch i8 %spec.store.select, label %default.unreachable65 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %.tr = trunc i64 %1 to i8
  %i.o = shl i8 %.tr, 3
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.q = trunc i64 %1 to i8                       ; 2 uses
  store i8 %i.q, ptr %i.p, align 1, !tbaa !7
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -3
  store i8 %i.q, ptr %i.r, align 1, !tbaa !9
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -6
  %i.t = trunc i64 %1 to i16                      ; 2 uses
  store i16 %i.t, ptr %i.s, align 1, !tbaa !10
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i16 %i.t, ptr %i.u, align 1, !tbaa !13
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -10
  %i.w = trunc i64 %1 to i32                      ; 2 uses
  store i32 %i.w, ptr %i.v, align 1, !tbaa !14
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 -6
  store i32 %i.w, ptr %i.x, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -18
  store i64 %1, ptr %i.y, align 1, !tbaa !17
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 -10
  store i64 %1, ptr %i.z, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink = phi i8 [ 4, %bb.l ], [ 3, %bb.k ], [ 2, %bb.j ], [ 1, %bb.i ], [ %i.o, %bb.h ]
  store i8 %.sink, ptr %i.n, align 1, !tbaa !21
  %i.aa = icmp ne i64 %1, 0
  %or.cond3 = and i1 %i.k, %i.aa
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  store i8 0, ptr %i.ab, align 1, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.o
  %.0 = phi ptr [ %i.m, %bb.o ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll8sdsemptyEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(5) ptr @malloc(i64 noundef 5) #27 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.a, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !9
  store i8 1, ptr %i.d, align 1, !tbaa !21
  store i8 0, ptr %i.c, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit

_ZN10duckdb_hll9sdsnewlenEPKvm.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll6sdsnewEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit, label %.split

_ZN10duckdb_hll9sdsnewlenEPKvm.exit:              ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(5) ptr @calloc(i64 1, i64 5) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %calloc, i64 3
  store i8 1, ptr %i.c, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit5

.split:                                           ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 14 uses
  %i.e = icmp ult i64 %i.d, 32
  br i1 %i.e, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.b

bb.b:                                             ; preds = %.split
  %i.f = icmp ult i64 %i.d, 256
  br i1 %i.f, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.d, 65536
  br i1 %i.g, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %i.d, 4294967296
  %..i.i = select i1 %i.h, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i

_ZN10duckdb_hllL10sdsReqTypeEm.exit.i:            ; preds = %bb.d, %bb.c, %bb.b, %.split
  %.0.i.i = phi i8 [ 2, %bb.c ], [ 0, %.split ], [ 1, %bb.b ], [ %..i.i, %bb.d ] ; 2 uses
  %i.i = icmp eq i8 %.0.i.i, 0
  %i.j = icmp eq i64 %i.d, 0                      ; 2 uses
  %or.cond.i = and i1 %i.j, %i.i
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %.0.i.i ; 2 uses
  %i.k = zext nneg i8 %spec.store.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.l = add i64 %i.d, 1
  %i.m = add i64 %i.l, %switch.ext
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #27 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit5, label %bb.e

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.e:                                             ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %switch.ext ; 12 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -1
  switch i8 %spec.store.select.i, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %.tr.i = trunc i64 %i.d to i8
  %i.r = shl i8 %.tr.i, 3
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.t = trunc i64 %i.d to i8                     ; 2 uses
  store i8 %i.t, ptr %i.s, align 1, !tbaa !7
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !9
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 -6
  %i.w = trunc i64 %i.d to i16                    ; 2 uses
  store i16 %i.w, ptr %i.v, align 1, !tbaa !10
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i16 %i.w, ptr %i.x, align 1, !tbaa !13
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 -10
  %i.z = trunc i64 %i.d to i32                    ; 2 uses
  store i32 %i.z, ptr %i.y, align 1, !tbaa !14
  %i.aa = getelementptr inbounds i8, ptr %i.p, i64 -6
  store i32 %i.z, ptr %i.aa, align 1, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 -18
  store i64 %i.d, ptr %i.ab, align 1, !tbaa !17
  %i.ac = getelementptr inbounds i8, ptr %i.p, i64 -10
  store i64 %i.d, ptr %i.ac, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink.i = phi i8 [ 4, %bb.j ], [ 3, %bb.i ], [ 2, %bb.h ], [ 1, %bb.g ], [ %i.r, %bb.f ]
  store i8 %.sink.i, ptr %i.q, align 1, !tbaa !21
  br i1 %i.j, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %0, i64 %i.d, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.d
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit5

_ZN10duckdb_hll9sdsnewlenEPKvm.exit5:             ; preds = %bb.m, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, %_ZN10duckdb_hll9sdsnewlenEPKvm.exit
  %phi.call = phi ptr [ %i.b, %_ZN10duckdb_hll9sdsnewlenEPKvm.exit ], [ %i.p, %bb.m ], [ null, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i ]
  ret ptr %phi.call
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll6sdsdupEPc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -10
  %i.n = load i32, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -18
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.o, %bb.e ], [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 8 uses
  %i.r = icmp ult i64 %.0.i, 32
  br i1 %i.r, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.s = icmp ult i64 %.0.i, 256
  br i1 %i.s, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp ult i64 %.0.i, 65536
  br i1 %i.t, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp ult i64 %.0.i, 4294967296
  %..i.i = select i1 %i.u, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i

_ZN10duckdb_hllL10sdsReqTypeEm.exit.i:            ; preds = %bb.a, %bb.b, %bb.i, %bb.h, %bb.g, %_ZN10duckdb_hllL6sdslenEPc.exit
  %.0.i4 = phi i64 [ %.0.i, %bb.h ], [ %.0.i, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.0.i, %bb.g ], [ %.0.i, %bb.i ], [ 0, %bb.a ], [ %i.f, %bb.b ] ; 10 uses
  %.0.i.i = phi i8 [ 2, %bb.h ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ 1, %bb.g ], [ %..i.i, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = icmp eq i8 %.0.i.i, 0
  %i.w = icmp eq i64 %.0.i4, 0                    ; 2 uses
  %or.cond.i = and i1 %i.w, %i.v
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %.0.i.i ; 2 uses
  %i.x = zext nneg i8 %spec.store.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.y = add i64 %.0.i4, 1
  %i.z = add i64 %i.y, %switch.ext
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #27 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit, label %bb.j

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.j:                                             ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %switch.ext ; 12 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  switch i8 %spec.store.select.i, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i = trunc i64 %.0.i4 to i8
  %i.ae = shl i8 %.tr.i, 3
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ag = trunc i64 %.0.i4 to i8                  ; 2 uses
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !7
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -3
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !9
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 -6
  %i.aj = trunc i64 %.0.i4 to i16                 ; 2 uses
  store i16 %i.aj, ptr %i.ai, align 1, !tbaa !10
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i16 %i.aj, ptr %i.ak, align 1, !tbaa !13
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.ac, i64 -10
  %i.am = trunc i64 %.0.i4 to i32                 ; 2 uses
  store i32 %i.am, ptr %i.al, align 1, !tbaa !14
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -6
  store i32 %i.am, ptr %i.an, align 1, !tbaa !16
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 -18
  store i64 %.0.i4, ptr %i.ao, align 1, !tbaa !17
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -10
  store i64 %.0.i4, ptr %i.ap, align 1, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i = phi i8 [ 4, %bb.o ], [ 3, %bb.n ], [ 2, %bb.m ], [ 1, %bb.l ], [ %i.ae, %bb.k ]
  store i8 %.sink.i, ptr %i.ad, align 1, !tbaa !21
  br i1 %i.w, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %0, i64 %.0.i4, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i4
  store i8 0, ptr %i.aq, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit

_ZN10duckdb_hll9sdsnewlenEPKvm.exit:              ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, %bb.r
  %.0.i2 = phi ptr [ %i.ac, %bb.r ], [ null, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i ]
  ret ptr %.0.i2
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN10duckdb_hll7sdsfreeEPc(ptr noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = and i8 %i.c, 7                           ; 2 uses
  %i.e = icmp samesign ult i8 %i.d, 5
  br i1 %i.e, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %bb.b, %switch.lookup
  %.0.i.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %0, i64 %.0.i.neg
  tail call void @free(ptr noundef %i.g) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll12sdsupdatelenEPc(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %i.a to i8
  %i.e = shl i8 %.tr.i, 3
  store i8 %i.e, ptr %i.b, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.d:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.a to i16
  %i.i = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 %i.h, ptr %i.i, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.e:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.a to i32
  %i.k = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 %i.j, ptr %i.k, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 %i.a, ptr %i.l, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll8sdsclearEPc(ptr nofree noundef captures(none) initializes((0, 1)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = and i8 %i.b, 7
  switch i8 %i.c, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 0, ptr %i.d, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 0, ptr %i.e, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 0, ptr %i.f, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 0, ptr %i.g, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  store i8 0, ptr %0, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = and i8 %i.b, 7                           ; 4 uses
  switch i8 %i.c, label %_ZN10duckdb_hllL8sdsavailEPc.exit [
    i8 4, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

end_hunk_0
begin_hunk_1_@_ZN10duckdb_hll14sdsMakeRoomForEPcm:bb.a
bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %0, i64 -18
  %i.y = getelementptr inbounds i8, ptr %0, i64 -10
  %i.z = load i64, ptr %i.y, align 1, !tbaa !20
  %i.aa = load i64, ptr %i.x, align 1, !tbaa !17
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit

_ZN10duckdb_hllL8sdsavailEPc.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.d ], [ %i.ab, %bb.e ], [ %i.j, %bb.b ], [ %i.q, %bb.c ], [ 0, %bb.a ]
  %.not = icmp ult i64 %.0.i, %1
  br i1 %.not, label %bb.f, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.f:                                             ; preds = %_ZN10duckdb_hllL8sdsavailEPc.exit
  %i.ac = zext i8 %i.b to i32                     ; 2 uses
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %_ZN10duckdb_hllL6sdslenEPc.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = lshr i32 %i.ac, 3
  %i.af = zext nneg i32 %i.ae to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.i:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -6
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !10
  %i.al = zext i16 %i.ak to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.j:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %0, i64 -10
  %i.an = load i32, ptr %i.am, align 1, !tbaa !14
  %i.ao = zext i32 %i.an to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.k:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -18
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i47 = phi i64 [ %i.aq, %bb.k ], [ %i.af, %bb.g ], [ %i.ai, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ 0, %bb.f ] ; 6 uses
  %i.ar = icmp samesign ult i8 %i.c, 5
  br i1 %i.ar, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.as = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.as
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %switch.lookup
  %.0.i48.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ]
  %i.at = getelementptr inbounds i8, ptr %0, i64 %.0.i48.neg ; 2 uses
  %i.au = add i64 %.0.i47, %1                     ; 3 uses
  %i.av = icmp ult i64 %i.au, 1048576
  %i.aw = shl nuw nsw i64 %i.au, 1
  %i.ax = add i64 %i.au, 1048576
  %.042 = select i1 %i.av, i64 %i.aw, i64 %i.ax   ; 8 uses
  %i.ay = icmp ult i64 %.042, 256
  br i1 %i.ay, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.az = icmp ult i64 %.042, 65536
  br i1 %i.az, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp ult i64 %.042, 4294967296          ; 2 uses
  %spec.select = select i1 %i.ba, i8 3, i8 4
  %spec.select76 = select i1 %i.ba, i64 10, i64 18
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51

default.unreachable56:                            ; preds = %bb.p
  unreachable

_ZN10duckdb_hllL10sdsHdrSizeEc.exit51:            ; preds = %bb.m, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit, %bb.l
  %.0.i4958 = phi i8 [ 2, %bb.l ], [ 1, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %spec.select, %bb.m ] ; 3 uses
  %.0.i50 = phi i64 [ 6, %bb.l ], [ 4, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %spec.select76, %bb.m ] ; 3 uses
  %i.bb = icmp eq i8 %i.c, %.0.i4958
  %i.bc = add i64 %.042, 1
  %i.bd = add i64 %i.bc, %.0.i50                  ; 2 uses
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51
  %i.be = tail call ptr @realloc(ptr noundef %i.at, i64 noundef %i.bd) #30 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.o:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit51
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bd) #27 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0.i50 ; 10 uses
  %i.bj = add i64 %.0.i47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %0, i64 %i.bj, i1 false)
  tail call void @free(ptr noundef %i.at) #29
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -1
  store i8 %.0.i4958, ptr %i.bk, align 1, !tbaa !21
  switch i8 %.0.i4958, label %default.unreachable56 [
    i8 4, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread
    i8 1, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67
    i8 2, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70
    i8 3, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73
  ]

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67:     ; preds = %bb.p
  %i.bl = trunc i64 %.0.i47 to i8
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -4
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  br label %bb.q

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70:     ; preds = %bb.p
  %i.bn = trunc i64 %.0.i47 to i16
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -6
  store i16 %i.bn, ptr %i.bo, align 1, !tbaa !10
  br label %bb.r

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73:     ; preds = %bb.p
  %i.bp = trunc i64 %.0.i47 to i32
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -10
  store i32 %i.bp, ptr %i.bq, align 1, !tbaa !14
  br label %bb.s

_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread:       ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %i.bi, i64 -18
  store i64 %.0.i47, ptr %i.br, align 1, !tbaa !17
  br label %bb.t

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i50 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  %i.bt = and i8 %.pre, 7
  switch i8 %i.bt, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit [
    i8 4, label %bb.t
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

bb.q:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04169 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread67 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.bu = trunc i64 %.042 to i8
  %i.bv = getelementptr inbounds i8, ptr %.04169, i64 -3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !9
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.r:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04172 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread70 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.bw = trunc i64 %.042 to i16
  %i.bx = getelementptr inbounds i8, ptr %.04172, i64 -4
  store i16 %i.bw, ptr %i.bx, align 1, !tbaa !13
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.s:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04175 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread73 ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.by = trunc i64 %.042 to i32
  %i.bz = getelementptr inbounds i8, ptr %.04175, i64 -6
  store i32 %i.by, ptr %i.bz, align 1, !tbaa !16
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.t:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread, %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %.04166 = phi ptr [ %i.bi, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.thread ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.04166, i64 -10
  store i64 %.042, ptr %i.ca, align 1, !tbaa !20
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

_ZN10duckdb_hllL11sdssetallocEPcm.exit:           ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_ZN10duckdb_hllL9sdssetlenEPcm.exit, %bb.o, %bb.n, %_ZN10duckdb_hllL8sdsavailEPc.exit
  %.0 = phi ptr [ null, %bb.n ], [ %0, %_ZN10duckdb_hllL8sdsavailEPc.exit ], [ null, %bb.o ], [ %i.bs, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ], [ %.04169, %bb.q ], [ %.04172, %bb.r ], [ %.04175, %bb.s ], [ %.04166, %bb.t ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll18sdsRemoveFreeSpaceEPc(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = and i8 %i.b, 7                           ; 3 uses
  %i.d = icmp samesign ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %bb.a, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ] ; 4 uses
  %i.f = zext i8 %i.b to i32                      ; 2 uses
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %_ZN10duckdb_hllL6sdslenEPc.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.h = lshr i32 %i.f, 3
  %i.i = zext nneg i32 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.thread

bb.c:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.j = getelementptr inbounds i8, ptr %0, i64 -4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.m = getelementptr inbounds i8, ptr %0, i64 -6
  %i.n = load i16, ptr %i.m, align 1, !tbaa !10
  %i.o = zext i16 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.p = getelementptr inbounds i8, ptr %0, i64 -10
  %i.q = load i32, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i32 %i.q to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %i.s = getelementptr inbounds i8, ptr %0, i64 -18
  %i.t = load i64, ptr %i.s, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit.thread:           ; preds = %bb.b, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit
  %.0.i38.ph = phi i64 [ 0, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit ], [ %i.i, %bb.b ]
  %i.u = sub nsw i64 0, %.0.i
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i38 = phi i64 [ %i.t, %bb.f ], [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 5 uses
  %i.w = sub nsw i64 0, %.0.i
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 3 uses
  %i.y = icmp ult i64 %.0.i38, 32
  br i1 %i.y, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41, label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.z = icmp ult i64 %.0.i38, 256
  br i1 %i.z, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread

_ZN10duckdb_hllL10sdsHdrSizeEc.exit41:            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.thread, %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.g
  %i.aa = phi i1 [ false, %bb.g ], [ true, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ true, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ]
  %i.ab = phi i8 [ 1, %bb.g ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 3 uses
  %.0.i384348 = phi i64 [ %.0.i38, %bb.g ], [ %.0.i38, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.0.i38.ph, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 5 uses
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.x, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %i.v, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 2 uses
  %.0.i40 = phi i64 [ 4, %bb.g ], [ 2, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ 2, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 2 uses
  %i.ad = icmp eq i8 %i.c, %i.ab
  br i1 %i.ad, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread, label %bb.i

_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread:     ; preds = %bb.g, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41
  %i.ae = phi ptr [ %i.ac, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41 ], [ %i.x, %bb.g ]
  %.0.i38434865 = phi i64 [ %.0.i384348, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41 ], [ %.0.i38, %bb.g ] ; 2 uses
  %i.af = or disjoint i64 %.0.i, 1
  %i.ag = add i64 %i.af, %.0.i38434865
  %i.ah = tail call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.i:                                             ; preds = %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41
  %i.ak = add nuw nsw i64 %.0.i384348, 1          ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, %.0.i40
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #27 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0.i40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.ak, i1 false)
  tail call void @free(ptr noundef %i.ac) #29
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ap, align 1, !tbaa !21
  %.tr.i = trunc nuw i64 %.0.i384348 to i8        ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = shl i8 %.tr.i, 3                        ; 2 uses
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i8 %.tr.i, ptr %i.ar, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.l, %bb.k, %bb.h
  %i.as = phi i8 [ %.pre, %bb.h ], [ %i.ab, %bb.l ], [ %i.aq, %bb.k ]
  %.0.i3844 = phi i64 [ %.0.i38434865, %bb.h ], [ %.0.i384348, %bb.l ], [ %.0.i384348, %bb.k ] ; 4 uses
  %.035 = phi ptr [ %i.aj, %bb.h ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ] ; 9 uses
  %i.at = and i8 %i.as, 7
  switch i8 %i.at, label %_ZN10duckdb_hllL11sdssetallocEPcm.exit [
    i8 4, label %bb.p
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.m:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.au = trunc i64 %.0.i3844 to i8
  %i.av = getelementptr inbounds i8, ptr %.035, i64 -3
  store i8 %i.au, ptr %i.av, align 1, !tbaa !9
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.n:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.aw = trunc i64 %.0.i3844 to i16
  %i.ax = getelementptr inbounds i8, ptr %.035, i64 -4
  store i16 %i.aw, ptr %i.ax, align 1, !tbaa !13
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.o:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.ay = trunc i64 %.0.i3844 to i32
  %i.az = getelementptr inbounds i8, ptr %.035, i64 -6
  store i32 %i.ay, ptr %i.az, align 1, !tbaa !16
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

bb.p:                                             ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit
  %i.ba = getelementptr inbounds i8, ptr %.035, i64 -10
  store i64 %.0.i3844, ptr %i.ba, align 1, !tbaa !20
  br label %_ZN10duckdb_hllL11sdssetallocEPcm.exit

_ZN10duckdb_hllL11sdssetallocEPcm.exit:           ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZN10duckdb_hllL9sdssetlenEPcm.exit, %bb.i, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread
  %.0 = phi ptr [ null, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit41.thread ], [ null, %bb.i ], [ %.035, %_ZN10duckdb_hllL9sdssetlenEPcm.exit ], [ %.035, %bb.m ], [ %.035, %bb.n ], [ %.035, %bb.o ], [ %.035, %bb.p ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN10duckdb_hll12sdsAllocSizeEPc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL8sdsallocEPc.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -4
  %i.k = load i16, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -6
  %i.n = load i32, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -10
  %i.q = load i64, ptr %i.p, align 1, !tbaa !20
  br label %_ZN10duckdb_hllL8sdsallocEPc.exit

_ZN10duckdb_hllL8sdsallocEPc.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = and i8 %i.b, 7                           ; 2 uses
  %i.s = icmp samesign ult i8 %i.r, 5
  br i1 %i.s, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %_ZN10duckdb_hllL8sdsallocEPc.exit
  %i.t = zext nneg i8 %i.r to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.t
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %_ZN10duckdb_hllL8sdsallocEPc.exit, %switch.lookup
  %.0.i2 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %_ZN10duckdb_hllL8sdsallocEPc.exit ]
  %i.u = add i64 %.0.i, 1
  %i.v = add i64 %i.u, %.0.i2
  ret i64 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_hll11sdsAllocPtrEPc(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %i.d = icmp samesign ult i8 %i.c, 5
  br i1 %i.d, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit

_ZN10duckdb_hllL10sdsHdrSizeEc.exit:              ; preds = %bb.a, %switch.lookup
  %.0.i.neg = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.0.i.neg
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll10sdsIncrLenEPcl(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = and i8 %i.b, 7
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %i.b, 3
  %i.e = zext nneg i8 %i.d to i64
  %i.f = add nsw i64 %1, %i.e                     ; 2 uses
  %.tr = trunc i64 %i.f to i8
  %i.g = shl i8 %.tr, 3
  store i8 %i.g, ptr %i.a, align 1, !tbaa !21
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7
  %i.j = trunc i64 %1 to i8
  %i.k = add i8 %i.i, %i.j                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -6 ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !10
  %i.o = trunc i64 %1 to i16
  %i.p = add i16 %i.n, %i.o                       ; 2 uses
  store i16 %i.p, ptr %i.m, align 1, !tbaa !10
  %i.q = zext i16 %i.p to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %0, i64 -10 ; 2 uses
  %i.s = load i32, ptr %i.r, align 1, !tbaa !14
  %i.t = trunc i64 %1 to i32
  %i.u = add i32 %i.s, %i.t                       ; 2 uses
  store i32 %i.u, ptr %i.r, align 1, !tbaa !14
  %i.v = zext i32 %i.u to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds i8, ptr %0, i64 -18 ; 2 uses
  %i.x = load i64, ptr %i.w, align 1, !tbaa !17
  %i.y = add i64 %i.x, %1                         ; 2 uses
  store i64 %i.y, ptr %i.w, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.y, %bb.f ], [ %i.f, %bb.b ], [ %i.l, %bb.c ], [ %i.q, %bb.d ], [ %i.v, %bb.e ], [ 0, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  store i8 0, ptr %i.z, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll11sdsgrowzeroEPcm(ptr noundef captures(address, ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL6sdslenEPc.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -10
  %i.n = load i32, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -18
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.not = icmp ugt i64 %1, %.0.i
  br i1 %.not, label %bb.g, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.r = sub nuw i64 %1, %.0.i                    ; 2 uses
  %i.s = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %0, i64 noundef %i.r) ; 13 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.0.i
  %i.v = add i64 %i.r, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %i.y = and i8 %i.x, 7
  switch i8 %i.y, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %.tr.i = trunc i64 %1 to i8
  %i.z = shl i8 %.tr.i, 3
  store i8 %i.z, ptr %i.w, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = trunc i64 %1 to i8
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = trunc i64 %1 to i16
  %i.ad = getelementptr inbounds i8, ptr %i.s, i64 -6
  store i16 %i.ac, ptr %i.ad, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.l:                                             ; preds = %bb.h
  %i.ae = trunc i64 %1 to i32
  %i.af = getelementptr inbounds i8, ptr %i.s, i64 -10
  store i32 %i.ae, ptr %i.af, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.m:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.s, i64 -18
  store i64 %1, ptr %i.ag, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZN10duckdb_hllL6sdslenEPc.exit
  %.0 = phi ptr [ null, %bb.g ], [ %0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll9sdscatlenEPcPKvm(ptr noundef captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
end_hunk_1
begin_hunk_2_@_ZN10duckdb_hll9sdscpylenEPcPKcm:bb.a
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.q:                                             ; preds = %bb.m
  %i.ar = trunc i64 %2 to i32
  %i.as = getelementptr inbounds i8, ptr %.014, i64 -10
  store i32 %i.ar, ptr %i.as, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.r:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds i8, ptr %.014, i64 -18
  store i64 %2, ptr %i.at, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_ZN10duckdb_hllL6sdslenEPc.exit
  %.0 = phi ptr [ null, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.014, %bb.m ], [ %.014, %bb.n ], [ %.014, %bb.o ], [ %.014, %bb.p ], [ %.014, %bb.q ], [ %.014, %bb.r ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll6sdscpyEPcPKc(ptr noundef captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = tail call noundef ptr @_ZN10duckdb_hll9sdscpylenEPcPKcm(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_hll9sdsll2strEPcx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %.023 = phi i64 [ %i.a, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = urem i64 %.023, 10
  %i.c = trunc nuw nsw i64 %i.b to i8
  %i.d = or disjoint i8 %i.c, 48
  %i.e = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 3 uses
  store i8 %i.d, ptr %.024, align 1, !tbaa !21
  %i.f = udiv i64 %.023, 10
  %.not = icmp samesign ult i64 %.023, 10
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.024, i64 2
  store i8 45, ptr %i.e, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ]  ; 3 uses
  store i8 0, ptr %.1, align 1, !tbaa !21
  %.225 = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  %i.i = icmp ult ptr %0, %.225
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.227 = phi ptr [ %.2, %.lr.ph ], [ %.225, %bb.e ] ; 3 uses
  %.026 = phi ptr [ %i.l, %.lr.ph ], [ %0, %bb.e ] ; 3 uses
  %i.j = load i8, ptr %.026, align 1, !tbaa !21
  %i.k = load i8, ptr %.227, align 1, !tbaa !21
  store i8 %i.k, ptr %.026, align 1, !tbaa !21
  store i8 %i.j, ptr %.227, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %.2 = getelementptr inbounds i8, ptr %.227, i64 -1 ; 2 uses
  %i.m = icmp ult ptr %i.l, %.2
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.n = ptrtoint ptr %.1 to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_hll10sdsull2strEPcy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.b ]  ; 4 uses
  %.018 = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %i.a = urem i64 %.018, 10
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = or disjoint i8 %i.b, 48
  %i.d = getelementptr inbounds nuw i8, ptr %.019, i64 1 ; 3 uses
  store i8 %i.c, ptr %.019, align 1, !tbaa !21
  %i.e = udiv i64 %.018, 10
  %.not = icmp ult i64 %.018, 10
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !25

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !tbaa !21
  %i.f = icmp ult ptr %0, %.019
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.021 = phi ptr [ %i.i, %.lr.ph ], [ %0, %bb.c ] ; 3 uses
  %.120 = phi ptr [ %i.j, %.lr.ph ], [ %.019, %bb.c ] ; 3 uses
  %i.g = load i8, ptr %.021, align 1, !tbaa !21
  %i.h = load i8, ptr %.120, align 1, !tbaa !21
  store i8 %i.h, ptr %.021, align 1, !tbaa !21
  store i8 %i.g, ptr %.120, align 1, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.120, i64 -1 ; 2 uses
  %i.k = icmp ult ptr %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll15sdsfromlonglongEx(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %.023.i = phi i64 [ %i.b, %bb.a ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = urem i64 %.023.i, 10
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 3 uses
  store i8 %i.e, ptr %.024.i, align 1, !tbaa !21
  %i.g = udiv i64 %.023.i, 10
  %.not.i = icmp samesign ult i64 %.023.i, 10
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i64 %0, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  store i8 45, ptr %i.f, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  store i8 0, ptr %.1.i, align 1, !tbaa !21
  %.225.i = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  %i.j = icmp ult ptr %i.a, %.225.i
  br i1 %i.j, label %.lr.ph.i, label %_ZN10duckdb_hll9sdsll2strEPcx.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.227.i = phi ptr [ %.2.i, %.lr.ph.i ], [ %.225.i, %bb.e ] ; 3 uses
  %.026.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.a, %bb.e ] ; 3 uses
  %i.k = load i8, ptr %.026.i, align 1, !tbaa !21
  %i.l = load i8, ptr %.227.i, align 1, !tbaa !21
  store i8 %i.l, ptr %.026.i, align 1, !tbaa !21
  store i8 %i.k, ptr %.227.i, align 1, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.026.i, i64 1 ; 2 uses
  %.2.i = getelementptr inbounds i8, ptr %.227.i, i64 -1 ; 2 uses
  %i.n = icmp ult ptr %i.m, %.2.i
  br i1 %i.n, label %.lr.ph.i, label %_ZN10duckdb_hll9sdsll2strEPcx.exit, !llvm.loop !24

_ZN10duckdb_hll9sdsll2strEPcx.exit:               ; preds = %.lr.ph.i, %bb.e
  %i.o = ptrtoint ptr %.1.i to i64
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %sext = shl i64 %i.q, 32                        ; 2 uses
  %i.s = ashr exact i64 %sext, 32                 ; 9 uses
  %i.t = icmp ult i64 %i.s, 32
  br i1 %i.t, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_hll9sdsll2strEPcx.exit
  %i.u = icmp ult i64 %i.s, 256
  br i1 %i.u, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ult i64 %i.s, 65536
  br i1 %i.v, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp ult i64 %i.s, 4294967296
  %..i.i = select i1 %i.w, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i

_ZN10duckdb_hllL10sdsReqTypeEm.exit.i:            ; preds = %bb.h, %bb.g, %bb.f, %_ZN10duckdb_hll9sdsll2strEPcx.exit
  %.0.i.i = phi i8 [ 2, %bb.g ], [ 0, %_ZN10duckdb_hll9sdsll2strEPcx.exit ], [ 1, %bb.f ], [ %..i.i, %bb.h ] ; 2 uses
  %i.x = icmp eq i8 %.0.i.i, 0
  %i.y = icmp eq i64 %sext, 0                     ; 2 uses
  %or.cond.i = and i1 %i.y, %i.x
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %.0.i.i ; 2 uses
  %i.z = zext nneg i8 %spec.store.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.aa = add nsw i64 %i.s, 1
  %i.ab = add nsw i64 %i.aa, %switch.ext
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #27 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit, label %bb.i

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.i:                                             ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %switch.ext ; 12 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  switch i8 %spec.store.select.i, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %.tr.i = trunc i64 %i.q to i8
  %i.ag = shl i8 %.tr.i, 3
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ai = trunc i64 %i.q to i8                    ; 2 uses
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !7
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !9
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -6
  %i.al = trunc i64 %i.q to i16                   ; 2 uses
  store i16 %i.al, ptr %i.ak, align 1, !tbaa !10
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -4
  store i16 %i.al, ptr %i.am, align 1, !tbaa !13
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 -10
  store i32 %i.r, ptr %i.an, align 1, !tbaa !14
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -6
  store i32 %i.r, ptr %i.ao, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 -18
  store i64 %i.s, ptr %i.ap, align 1, !tbaa !17
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -10
  store i64 %i.s, ptr %i.aq, align 1, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i = phi i8 [ 4, %bb.n ], [ 3, %bb.m ], [ 2, %bb.l ], [ 1, %bb.k ], [ %i.ag, %bb.j ]
  store i8 %.sink.i, ptr %i.af, align 1, !tbaa !21
  br i1 %i.y, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 16 %i.a, i64 %i.s, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.s
  store i8 0, ptr %i.ar, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdsnewlenEPKvm.exit

_ZN10duckdb_hll9sdsnewlenEPKvm.exit:              ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, %bb.q
  %.0.i = phi ptr [ %i.ae, %bb.q ], [ null, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN10duckdb_hll13sdscatvprintfEPcPKcP13__va_list_tag(ptr noundef captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1024
  br i1 %i.d, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.124.ph = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.b ]
  %.1.ph = phi i64 [ 1024, %bb.a ], [ %i.c, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.f
  %.124 = phi ptr [ %i.l, %bb.f ], [ %.124.ph, %.preheader ] ; 8 uses
  %.1 = phi i64 [ %i.k, %bb.f ], [ %.1.ph, %.preheader ] ; 3 uses
  %i.g = getelementptr i8, ptr %.124, i64 %.1
  %i.h = getelementptr i8, ptr %i.g, i64 -2       ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !21
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.i = call i32 @vsnprintf(ptr noundef nonnull %.124, i64 noundef %.1, ptr noundef nonnull %1, ptr noundef nonnull %3) #29 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.j = load i8, ptr %i.h, align 1, !tbaa !21
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq ptr %.124, %i.a
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %.124) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = shl i64 %.1, 1                           ; 2 uses
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #27 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.c, !llvm.loop !27

bb.g:                                             ; preds = %bb.c
  %i.n = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.124) #28 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 7
  switch i32 %i.r, label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.q, 3
  %i.t = zext nneg i32 %i.s to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds i8, ptr %0, i64 -4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = zext i8 %i.v to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds i8, ptr %0, i64 -6
  %i.y = load i16, ptr %i.x, align 1, !tbaa !10
  %i.z = zext i16 %i.y to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.k:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -10
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i32 %i.ab to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

bb.l:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 -18
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i.i

_ZN10duckdb_hllL6sdslenEPc.exit.i.i:              ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.ae, %bb.l ], [ %i.t, %bb.h ], [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.ac, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %i.af = call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %0, i64 noundef %i.n) ; 10 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN10duckdb_hll6sdscatEPcPKc.exit, label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %.124, i64 %i.n, i1 false)
  %i.ai = add i64 %.0.i.i.i, %i.n                 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = and i8 %i.ak, 7
  switch i8 %i.al, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %.tr.i.i.i = trunc i64 %i.ai to i8
  %i.am = shl i8 %.tr.i.i.i, 3
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.an = trunc i64 %i.ai to i8
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.p:                                             ; preds = %bb.m
  %i.ap = trunc i64 %i.ai to i16
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -6
  store i16 %i.ap, ptr %i.aq, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

bb.q:                                             ; preds = %bb.m
  %i.ar = trunc i64 %i.ai to i32
  %i.as = getelementptr inbounds i8, ptr %i.af, i64 -10
  store i32 %i.ar, ptr %i.as, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN10duckdb_hll10sdstoupperEPc:bb.a
  %exitcond.not = icmp eq i64 %i.w, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZN10duckdb_hllL6sdslenEPc.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN10duckdb_hll6sdscmpEPcS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL6sdslenEPc.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -10
  %i.n = load i32, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -18
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 7
  switch i32 %i.u, label %_ZN10duckdb_hllL6sdslenEPc.exit17 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.v = lshr i32 %i.t, 3
  %i.w = zext nneg i32 %i.v to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit17

bb.h:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.x = getelementptr inbounds i8, ptr %1, i64 -4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit17

bb.i:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -6
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !10
  %i.ac = zext i16 %i.ab to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit17

bb.j:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -10
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i32 %i.ae to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit17

bb.k:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -18
  %i.ah = load i64, ptr %i.ag, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit17

_ZN10duckdb_hllL6sdslenEPc.exit17:                ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i16 = phi i64 [ %i.ah, %bb.k ], [ %i.w, %bb.g ], [ %i.z, %bb.h ], [ %i.ac, %bb.i ], [ %i.af, %bb.j ], [ 0, %_ZN10duckdb_hllL6sdslenEPc.exit ] ; 2 uses
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %.0.i16)
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ai) #28 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = tail call i32 @llvm.ucmp.i32.i64(i64 %.0.i, i64 %.0.i16)
  %.0 = select i1 %i.ak, i32 %i.al, i32 %i.aj
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll11sdssplitlenEPKclS1_iPi(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  %i.b = icmp slt i64 %1, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #27 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = add nsw i32 %3, -1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = sub nsw i64 %1, %i.g                     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = icmp eq i32 %3, 1
  %i.k = zext nneg i32 %3 to i64                  ; 2 uses
  %i.l = icmp ne ptr %0, null                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.x
  %.062106 = phi ptr [ %i.c, %.lr.ph ], [ %.2, %bb.x ] ; 3 uses
  %.063105 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.x ] ; 7 uses
  %.065104 = phi i64 [ 0, %.lr.ph ], [ %.166, %bb.x ] ; 5 uses
  %.067103 = phi i32 [ 5, %.lr.ph ], [ %.168, %bb.x ] ; 3 uses
  %.069102 = phi i32 [ 0, %.lr.ph ], [ %.170, %bb.x ] ; 6 uses
  %i.m = add nsw i32 %.069102, 2
  %i.n = icmp slt i32 %.067103, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nsw i32 %.067103, 1                  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call ptr @realloc(ptr noundef %.062106, i64 noundef %i.q) #30 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.168 = phi i32 [ %i.o, %bb.e ], [ %.067103, %bb.d ]
  %.2 = phi ptr [ %i.r, %bb.e ], [ %.062106, %bb.d ] ; 4 uses
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.063105
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = load i8, ptr %2, align 1, !tbaa !21
  %i.w = icmp eq i8 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds i8, ptr %0, i64 %.063105
  %bcmp = tail call i32 @bcmp(ptr %i.x, ptr %2, i64 %i.k)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.065104
  %i.aa = sub nsw i64 %.063105, %.065104          ; 13 uses
  %i.ab = icmp ult i64 %i.aa, 32
  br i1 %i.ab, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp ult i64 %i.aa, 256
  br i1 %i.ac, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ult i64 %i.aa, 65536
  br i1 %i.ad, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp ult i64 %i.aa, 4294967296
  %..i.i = select i1 %i.ae, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i

_ZN10duckdb_hllL10sdsReqTypeEm.exit.i:            ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i8 [ 2, %bb.k ], [ 0, %bb.i ], [ 1, %bb.j ], [ %..i.i, %bb.l ] ; 2 uses
  %i.af = icmp eq i8 %.0.i.i, 0
  %i.ag = icmp eq i64 %.063105, %.065104
  %or.cond.i = and i1 %i.ag, %i.af
  %spec.store.select.i = select i1 %or.cond.i, i8 1, i8 %.0.i.i ; 2 uses
  %i.ah = zext nneg i8 %spec.store.select.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.ai = add i64 %i.aa, 1
  %i.aj = add i64 %i.ai, %switch.ext              ; 2 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #27 ; 3 uses
  br i1 %i.l, label %bb.n, label %bb.m

default.unreachable:                              ; preds = %bb.o, %bb.ad
  unreachable

bb.m:                                             ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.aj, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %switch.ext ; 12 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  switch i8 %spec.store.select.i, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc i64 %i.aa to i8
  %i.ao = shl i8 %.tr.i, 3
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.aq = trunc i64 %i.aa to i8                   ; 2 uses
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !7
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !9
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 -6
  %i.at = trunc i64 %i.aa to i16                  ; 2 uses
  store i16 %i.at, ptr %i.as, align 1, !tbaa !10
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -4
  store i16 %i.at, ptr %i.au, align 1, !tbaa !13
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds i8, ptr %i.am, i64 -10
  %i.aw = trunc i64 %i.aa to i32                  ; 2 uses
  store i32 %i.aw, ptr %i.av, align 1, !tbaa !14
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 -6
  store i32 %i.aw, ptr %i.ax, align 1, !tbaa !16
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 -18
  store i64 %i.aa, ptr %i.ay, align 1, !tbaa !17
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 -10
  store i64 %i.aa, ptr %i.az, align 1, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi i8 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.r ], [ 1, %bb.q ], [ %i.ao, %bb.p ]
  store i8 %.sink.i, ptr %i.an, align 1, !tbaa !21
  %i.ba = icmp ne i64 %.063105, %.065104
  %or.cond3.i = and i1 %i.l, %i.ba
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %i.z, i64 %i.aa, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aa
  store i8 0, ptr %i.bb, align 1, !tbaa !21
  %i.bc = sext i32 %.069102 to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.2, i64 %i.bc
  store ptr %i.am, ptr %i.bd, align 8, !tbaa !28
  %i.be = add nsw i32 %.069102, 1
  %i.bf = add nsw i64 %.063105, %i.k              ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.h, %bb.w
  %.170 = phi i32 [ %i.be, %bb.w ], [ %.069102, %bb.h ] ; 2 uses
  %.166 = phi i64 [ %i.bf, %bb.w ], [ %.065104, %bb.h ] ; 2 uses
  %.164 = phi i64 [ %i.bg, %bb.w ], [ %.063105, %bb.h ]
  %i.bh = add nsw i64 %.164, 1                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.h
  br i1 %i.bi, label %bb.d, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.x, %.preheader
  %.069.lcssa = phi i32 [ 0, %.preheader ], [ %.170, %bb.x ] ; 3 uses
  %.065.lcssa = phi i64 [ 0, %.preheader ], [ %.166, %bb.x ] ; 4 uses
  %.062.lcssa = phi ptr [ %i.c, %.preheader ], [ %.2, %bb.x ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %.065.lcssa
  %i.bk = sub nsw i64 %1, %.065.lcssa             ; 13 uses
  %i.bl = icmp ult i64 %i.bk, 32
  br i1 %i.bl, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.bm = icmp ult i64 %i.bk, 256
  br i1 %i.bm, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = icmp ult i64 %i.bk, 65536
  br i1 %i.bn, label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = icmp ult i64 %i.bk, 4294967296
  %..i.i75 = select i1 %i.bo, i8 3, i8 4
  br label %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76

_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76:          ; preds = %bb.aa, %bb.z, %bb.y, %._crit_edge
  %.0.i.i77 = phi i8 [ 2, %bb.z ], [ 0, %._crit_edge ], [ 1, %bb.y ], [ %..i.i75, %bb.aa ] ; 2 uses
  %i.bp = icmp eq i8 %.0.i.i77, 0
  %i.bq = icmp eq i64 %1, %.065.lcssa
  %or.cond.i78 = and i1 %i.bq, %i.bp
  %spec.store.select.i79 = select i1 %or.cond.i78, i8 1, i8 %.0.i.i77 ; 2 uses
  %i.br = zext nneg i8 %spec.store.select.i79 to i64
  %switch.gep149 = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll11sdssplitlenEPKclS1_iPi.1, i64 %i.br
  %switch.load150 = load i8, ptr %switch.gep149, align 1
  %switch.ext151 = zext i8 %switch.load150 to i64 ; 2 uses
  %i.bs = add i64 %i.bk, 1
  %i.bt = add i64 %i.bs, %switch.ext151           ; 2 uses
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #27 ; 3 uses
  %i.bv = icmp ne ptr %0, null                    ; 2 uses
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bt, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN10duckdb_hllL10sdsReqTypeEm.exit.i76
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %.loopexit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %switch.ext151 ; 12 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -1
  switch i8 %spec.store.select.i79, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %.tr.i85 = trunc i64 %i.bk to i8
  %i.bz = shl i8 %.tr.i85, 3
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.cb = trunc i64 %i.bk to i8                   ; 2 uses
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !7
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 -3
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 -6
  %i.ce = trunc i64 %i.bk to i16                  ; 2 uses
  store i16 %i.ce, ptr %i.cd, align 1, !tbaa !10
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i16 %i.ce, ptr %i.cf, align 1, !tbaa !13
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 -10
  %i.ch = trunc i64 %i.bk to i32                  ; 2 uses
  store i32 %i.ch, ptr %i.cg, align 1, !tbaa !14
  %i.ci = getelementptr inbounds i8, ptr %i.bx, i64 -6
  store i32 %i.ch, ptr %i.ci, align 1, !tbaa !16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 -18
  store i64 %i.bk, ptr %i.cj, align 1, !tbaa !17
  %i.ck = getelementptr inbounds i8, ptr %i.bx, i64 -10
  store i64 %i.bk, ptr %i.ck, align 1, !tbaa !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sink.i82 = phi i8 [ 4, %bb.ai ], [ 3, %bb.ah ], [ 2, %bb.ag ], [ 1, %bb.af ], [ %i.bz, %bb.ae ]
  store i8 %.sink.i82, ptr %i.by, align 1, !tbaa !21
  %i.cl = icmp ne i64 %1, %.065.lcssa
  %or.cond3.i83 = and i1 %i.bv, %i.cl
  br i1 %or.cond3.i83, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.bj, i64 %i.bk, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bk
  store i8 0, ptr %i.cm, align 1, !tbaa !21
  %i.cn = sext i32 %.069.lcssa to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %.062.lcssa, i64 %i.cn
  store ptr %i.bx, ptr %i.co, align 8, !tbaa !28
  %i.cp = add nsw i32 %.069.lcssa, 1
  br label %.sink.split

.loopexit.sink.split:                             ; preds = %bb.n, %bb.ac
  %.069.lcssa.sink = phi i32 [ %.069.lcssa, %bb.ac ], [ %.069102, %bb.n ] ; 2 uses
  %.062.lcssa.sink = phi ptr [ %.062.lcssa, %bb.ac ], [ %.2, %bb.n ] ; 2 uses
  %i.cq = sext i32 %.069.lcssa.sink to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.062.lcssa.sink, i64 %i.cq
  store ptr null, ptr %i.cr, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split
  %.069100 = phi i32 [ %.069.lcssa.sink, %.loopexit.sink.split ], [ %.069102, %bb.e ] ; 2 uses
  %.3 = phi ptr [ %.062.lcssa.sink, %.loopexit.sink.split ], [ %.062106, %bb.e ] ; 2 uses
  %i.cs = icmp sgt i32 %.069100, 0
  br i1 %i.cs, label %.lr.ph111.preheader, label %._crit_edge112

.lr.ph111.preheader:                              ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %.069100 to i64
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %_ZN10duckdb_hll7sdsfreeEPc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next, %_ZN10duckdb_hll7sdsfreeEPc.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.3, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN10duckdb_hll7sdsfreeEPc.exit, label %bb.am

bb.am:                                            ; preds = %.lr.ph111
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = and i8 %i.cx, 7                         ; 2 uses
  %i.cz = icmp samesign ult i8 %i.cy, 5
  br i1 %i.cz, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i88

switch.lookup:                                    ; preds = %bb.am
  %i.da = zext nneg i8 %i.cy to i64
  %switch.gep151 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.da
  %switch.load152 = load i64, ptr %switch.gep151, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i88

_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i88:          ; preds = %bb.am, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load152, %switch.lookup ], [ 0, %bb.am ]
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 %.0.i.neg.i
  tail call void @free(ptr noundef %i.db) #29
  br label %_ZN10duckdb_hll7sdsfreeEPc.exit

_ZN10duckdb_hll7sdsfreeEPc.exit:                  ; preds = %.lr.ph111, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge112, label %.lr.ph111, !llvm.loop !39

._crit_edge112:                                   ; preds = %_ZN10duckdb_hll7sdsfreeEPc.exit, %.loopexit
  tail call void @free(ptr noundef %.3) #29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.al, %._crit_edge112
  %.sink = phi i32 [ 0, %._crit_edge112 ], [ %i.cp, %bb.al ], [ 0, %bb.c ]
  %.060.ph = phi ptr [ null, %._crit_edge112 ], [ %.062.lcssa, %bb.al ], [ %i.c, %bb.c ]
  store i32 %.sink, ptr %4, align 4, !tbaa !3
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.b, %bb.a
  %.060 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %.060.ph, %.sink.split ]
  ret ptr %.060
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @_ZN10duckdb_hll15sdsfreesplitresEPPci(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %1, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.a = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10duckdb_hll7sdsfreeEPc.exit
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN10duckdb_hll7sdsfreeEPc.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN10duckdb_hll7sdsfreeEPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = and i8 %i.f, 7                           ; 2 uses
  %i.h = icmp samesign ult i8 %i.g, 5
  br i1 %i.h, label %switch.lookup, label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i8 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN10duckdb_hll12sdssplitargsEPKcPi.3, i64 %i.i
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i

_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i:            ; preds = %bb.b, %switch.lookup
  %.0.i.neg.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %.0.i.neg.i
  tail call void @free(ptr noundef %i.j) #29
  br label %_ZN10duckdb_hll7sdsfreeEPc.exit

_ZN10duckdb_hll7sdsfreeEPc.exit:                  ; preds = %.lr.ph, %_ZN10duckdb_hllL10sdsHdrSizeEc.exit.i
  %.not4 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %_ZN10duckdb_hll7sdsfreeEPc.exit, %.preheader
  tail call void @free(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN10duckdb_hll10sdscatreprEPcPKcm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL6sdslenEPc.exit.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
end_hunk_3
begin_hunk_4_@_ZN10duckdb_hll10sdscatreprEPcPKcm:bb.a
  %.0.i.i40 = phi i64 [ %i.gd, %bb.bo ], [ %i.fs, %bb.bk ], [ %i.fv, %bb.bl ], [ %i.fy, %bb.bm ], [ %i.gb, %bb.bn ], [ 0, %bb.bj ] ; 2 uses
  %i.ge = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %.01750, i64 noundef 2) ; 9 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23, label %bb.bp

bb.bp:                                            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i39
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.0.i.i40
  store i16 25180, ptr %i.gg, align 1
  %i.gh = add i64 %.0.i.i40, 2                    ; 6 uses
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 -1 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !21
  %i.gk = and i8 %i.gj, 7
  switch i8 %i.gk, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41 [
    i8 0, label %bb.bq
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bt
    i8 4, label %bb.bu
  ]

bb.bq:                                            ; preds = %bb.bp
  %.tr.i.i42 = trunc i64 %i.gh to i8
  %i.gl = shl i8 %.tr.i.i42, 3
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41

bb.br:                                            ; preds = %bb.bp
  %i.gm = trunc i64 %i.gh to i8
  %i.gn = getelementptr inbounds i8, ptr %i.ge, i64 -4
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41

bb.bs:                                            ; preds = %bb.bp
  %i.go = trunc i64 %i.gh to i16
  %i.gp = getelementptr inbounds i8, ptr %i.ge, i64 -6
  store i16 %i.go, ptr %i.gp, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41

bb.bt:                                            ; preds = %bb.bp
  %i.gq = trunc i64 %i.gh to i32
  %i.gr = getelementptr inbounds i8, ptr %i.ge, i64 -10
  store i32 %i.gq, ptr %i.gr, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41

bb.bu:                                            ; preds = %bb.bp
  %i.gs = getelementptr inbounds i8, ptr %i.ge, i64 -18
  store i64 %i.gh, ptr %i.gs, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41:          ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh
  store i8 0, ptr %i.gt, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23

bb.bv:                                            ; preds = %.lr.ph
  %i.gu = tail call i32 @isprint(i32 noundef %i.aj) #28
  %.not18 = icmp eq i32 %i.gu, 0
  br i1 %.not18, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gv = tail call noundef ptr (ptr, ptr, ...) @_ZN10duckdb_hll12sdscatprintfEPcPKcz(ptr noundef %.01750, ptr noundef nonnull @.str.8, i32 noundef %i.aj)
  br label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23

bb.bx:                                            ; preds = %bb.bv
  %i.gw = zext i8 %i.ai to i32
  %i.gx = tail call noundef ptr (ptr, ptr, ...) @_ZN10duckdb_hll12sdscatprintfEPcPKcz(ptr noundef %.01750, ptr noundef nonnull @.str.9, i32 noundef %i.gw)
  br label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23

_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23:          ; preds = %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41, %_ZN10duckdb_hllL6sdslenEPc.exit.i39, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i36, %_ZN10duckdb_hllL6sdslenEPc.exit.i34, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i31, %_ZN10duckdb_hllL6sdslenEPc.exit.i29, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i26, %_ZN10duckdb_hllL6sdslenEPc.exit.i24, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i21, %_ZN10duckdb_hllL6sdslenEPc.exit.i19, %bb.bw, %bb.bx, %bb.m
  %.1 = phi ptr [ %i.gv, %bb.bw ], [ %i.gx, %bb.bx ], [ %i.ak, %bb.m ], [ %i.ex, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i36 ], [ %i.bc, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i21 ], [ %i.cj, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i26 ], [ %i.dq, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i31 ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i19 ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i24 ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i29 ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i34 ], [ null, %_ZN10duckdb_hllL6sdslenEPc.exit.i39 ], [ %i.ge, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i41 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.01651, i64 1
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %.017.lcssa = phi ptr [ %i.r, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ], [ %.1, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit23 ] ; 6 uses
  %i.gz = getelementptr inbounds i8, ptr %.017.lcssa, i64 -1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !21
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = and i32 %i.hb, 7
  switch i32 %i.hc, label %_ZN10duckdb_hllL6sdslenEPc.exit.i44 [
    i32 0, label %bb.by
    i32 1, label %bb.bz
    i32 2, label %bb.ca
    i32 3, label %bb.cb
    i32 4, label %bb.cc
  ]

bb.by:                                            ; preds = %._crit_edge
  %i.hd = lshr i32 %i.hb, 3
  %i.he = zext nneg i32 %i.hd to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i44

bb.bz:                                            ; preds = %._crit_edge
  %i.hf = getelementptr inbounds i8, ptr %.017.lcssa, i64 -4
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !7
  %i.hh = zext i8 %i.hg to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i44

bb.ca:                                            ; preds = %._crit_edge
  %i.hi = getelementptr inbounds i8, ptr %.017.lcssa, i64 -6
  %i.hj = load i16, ptr %i.hi, align 1, !tbaa !10
  %i.hk = zext i16 %i.hj to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i44

bb.cb:                                            ; preds = %._crit_edge
  %i.hl = getelementptr inbounds i8, ptr %.017.lcssa, i64 -10
  %i.hm = load i32, ptr %i.hl, align 1, !tbaa !14
  %i.hn = zext i32 %i.hm to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i44

bb.cc:                                            ; preds = %._crit_edge
  %i.ho = getelementptr inbounds i8, ptr %.017.lcssa, i64 -18
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i44

_ZN10duckdb_hllL6sdslenEPc.exit.i44:              ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %._crit_edge
  %.0.i.i45 = phi i64 [ %i.hp, %bb.cc ], [ %i.he, %bb.by ], [ %i.hh, %bb.bz ], [ %i.hk, %bb.ca ], [ %i.hn, %bb.cb ], [ 0, %._crit_edge ] ; 2 uses
  %i.hq = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %.017.lcssa, i64 noundef 1) ; 9 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit48, label %bb.cd

bb.cd:                                            ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i44
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.0.i.i45
  store i8 34, ptr %i.hs, align 1
  %i.ht = add i64 %.0.i.i45, 1                    ; 6 uses
  %i.hu = getelementptr inbounds i8, ptr %i.hq, i64 -1 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !21
  %i.hw = and i8 %i.hv, 7
  switch i8 %i.hw, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46 [
    i8 0, label %bb.ce
    i8 1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
  ]

bb.ce:                                            ; preds = %bb.cd
  %.tr.i.i47 = trunc i64 %i.ht to i8
  %i.hx = shl i8 %.tr.i.i47, 3
  store i8 %i.hx, ptr %i.hu, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46

bb.cf:                                            ; preds = %bb.cd
  %i.hy = trunc i64 %i.ht to i8
  %i.hz = getelementptr inbounds i8, ptr %i.hq, i64 -4
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46

bb.cg:                                            ; preds = %bb.cd
  %i.ia = trunc i64 %i.ht to i16
  %i.ib = getelementptr inbounds i8, ptr %i.hq, i64 -6
  store i16 %i.ia, ptr %i.ib, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46

bb.ch:                                            ; preds = %bb.cd
  %i.ic = trunc i64 %i.ht to i32
  %i.id = getelementptr inbounds i8, ptr %i.hq, i64 -10
  store i32 %i.ic, ptr %i.id, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46

bb.ci:                                            ; preds = %bb.cd
  %i.ie = getelementptr inbounds i8, ptr %i.hq, i64 -18
  store i64 %i.ht, ptr %i.ie, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46:          ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ht
  store i8 0, ptr %i.if, align 1, !tbaa !21
  br label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit48

_ZN10duckdb_hll9sdscatlenEPcPKvm.exit48:          ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i44, %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i46
  ret ptr %i.hq
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZN10duckdb_hll12is_hex_digitEc(i8 noundef signext %0) local_unnamed_addr #20 {
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
define noundef range(i32 0, 16) i32 @_ZN10duckdb_hll16hex_digit_to_intEc(i8 noundef signext %0) local_unnamed_addr #20 {
bb.a:
  %switch.tableidx = add i8 %0, -49               ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 54
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN10duckdb_hll16hex_digit_to_intEc, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_hll12sdssplitargsEPKcPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_hllL16CharacterIsSpaceEc.exit103, %bb.a
  %.sink = phi i32 [ %i.im, %_ZN10duckdb_hllL16CharacterIsSpaceEc.exit103 ], [ 0, %bb.a ]
  %.071 = phi ptr [ %spec.select163, %_ZN10duckdb_hllL16CharacterIsSpaceEc.exit103 ], [ %0, %bb.a ]
  %.066 = phi ptr [ %i.ii, %_ZN10duckdb_hllL16CharacterIsSpaceEc.exit103 ], [ null, %bb.a ] ; 5 uses
  store i32 %.sink, ptr %1, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.172 = phi ptr [ %.071, %bb.b ], [ %i.b, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.172, align 1, !tbaa !21
  switch i8 %i.a, label %.critedge [
    i8 0, label %bb.cm
    i8 32, label %bb.d
    i8 12, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.172, i64 1
  br label %bb.c, !llvm.loop !42

.critedge:                                        ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(5) ptr @malloc(i64 noundef 5) #27 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN10duckdb_hll8sdsemptyEv.exit.preheader, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.c, align 1, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.g, align 1, !tbaa !9
  store i8 1, ptr %i.f, align 1, !tbaa !21
  store i8 0, ptr %i.e, align 1, !tbaa !21
  br label %_ZN10duckdb_hll8sdsemptyEv.exit.preheader

_ZN10duckdb_hll8sdsemptyEv.exit.preheader:        ; preds = %bb.e, %.critedge
  %.270140.ph = phi ptr [ null, %.critedge ], [ %i.e, %bb.e ]
  br label %_ZN10duckdb_hll8sdsemptyEv.exit

_ZN10duckdb_hll8sdsemptyEv.exit:                  ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit.preheader, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit
  %.062142 = phi i32 [ %.163, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ], [ 0, %_ZN10duckdb_hll8sdsemptyEv.exit.preheader ] ; 7 uses
  %.064141 = phi i32 [ %.165, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ], [ 0, %_ZN10duckdb_hll8sdsemptyEv.exit.preheader ]
  %.270140 = phi ptr [ %.3, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ], [ %.270140.ph, %_ZN10duckdb_hll8sdsemptyEv.exit.preheader ] ; 42 uses
  %.273139 = phi ptr [ %spec.select, %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit ], [ %.172, %_ZN10duckdb_hll8sdsemptyEv.exit.preheader ] ; 21 uses
  %.not82 = icmp eq i32 %.064141, 0
  br i1 %.not82, label %bb.ax, label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_hll8sdsemptyEv.exit
  %i.h = load i8, ptr %.273139, align 1, !tbaa !21
  switch i8 %i.h, label %.thread130 [
    i8 92, label %bb.g
    i8 34, label %bb.al
    i8 0, label %.preheader
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.273139, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21    ; 2 uses
  switch i8 %i.j, label %.thread [
    i8 120, label %bb.h
    i8 0, label %.thread130
    i8 110, label %bb.z
    i8 114, label %bb.v
    i8 116, label %bb.w
    i8 98, label %bb.x
    i8 97, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.273139, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21    ; 3 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -71
  %i.p = icmp ult i8 %i.o, -6
  %narrow.i.not = and i1 %or.cond.i, %i.p
  br i1 %narrow.i.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.273139, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 3 uses
  %i.s = add i8 %i.r, -58
  %or.cond.i95 = icmp ult i8 %i.s, -10
  %i.t = and i8 %i.r, -33
  %i.u = add i8 %i.t, -71
  %i.v = icmp ult i8 %i.u, -6
  %narrow.i96.not = and i1 %or.cond.i95, %i.v
  br i1 %narrow.i96.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call noundef i32 @_ZN10duckdb_hll16hex_digit_to_intEc(i8 noundef signext %i.l)
  %i.x = shl nuw nsw i32 %i.w, 4
  %i.y = tail call noundef i32 @_ZN10duckdb_hll16hex_digit_to_intEc(i8 noundef signext %i.r)
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %.270140, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 7
  switch i32 %i.ae, label %_ZN10duckdb_hllL6sdslenEPc.exit.i [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = lshr i32 %i.ad, 3
  %i.ag = zext nneg i32 %i.af to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds i8, ptr %.270140, i64 -4
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = zext i8 %i.ai to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.m:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %.270140, i64 -6
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !10
  %i.am = zext i16 %i.al to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.n:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %.270140, i64 -10
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i32 %i.ao to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

bb.o:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds i8, ptr %.270140, i64 -18
  %i.ar = load i64, ptr %i.aq, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit.i

_ZN10duckdb_hllL6sdslenEPc.exit.i:                ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i.i97 = phi i64 [ %i.ar, %bb.o ], [ %i.ag, %bb.k ], [ %i.aj, %bb.l ], [ %i.am, %bb.m ], [ %i.ap, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %i.as = tail call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %.270140, i64 noundef 1) ; 9 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN10duckdb_hll9sdscatlenEPcPKvm.exit, label %bb.p

bb.p:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0.i.i97
  store i8 %i.aa, ptr %i.au, align 1
  %i.av = add i64 %.0.i.i97, 1                    ; 6 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = and i8 %i.ax, 7
  switch i8 %i.ay, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %.tr.i.i = trunc i64 %i.av to i8
  %i.az = shl i8 %.tr.i.i, 3
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ba = trunc i64 %i.av to i8
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -4
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.s:                                             ; preds = %bb.p
  %i.bc = trunc i64 %i.av to i16
  %i.bd = getelementptr inbounds i8, ptr %i.as, i64 -6
  store i16 %i.bc, ptr %i.bd, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.t:                                             ; preds = %bb.p
  %i.be = trunc i64 %i.av to i32
  %i.bf = getelementptr inbounds i8, ptr %i.as, i64 -10
  store i32 %i.be, ptr %i.bf, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

bb.u:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 -18
  store i64 %i.av, ptr %i.bg, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit.i

_ZN10duckdb_hllL9sdssetlenEPcm.exit.i:            ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
end_hunk_4

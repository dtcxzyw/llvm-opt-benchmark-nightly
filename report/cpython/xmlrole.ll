inline.NumInlined: 49
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@KW_DOCTYPE = internal constant [8 x i8] c"DOCTYPE\00", align 1
@KW_SYSTEM = internal constant [7 x i8] c"SYSTEM\00", align 1
@KW_PUBLIC = internal constant [7 x i8] c"PUBLIC\00", align 1
@KW_ENTITY = internal constant [7 x i8] c"ENTITY\00", align 1
@KW_ATTLIST = internal constant [8 x i8] c"ATTLIST\00", align 1
@KW_ELEMENT = internal constant [8 x i8] c"ELEMENT\00", align 1
@KW_NOTATION = internal constant [9 x i8] c"NOTATION\00", align 1
@KW_INCLUDE = internal constant [8 x i8] c"INCLUDE\00", align 1
@KW_IGNORE = internal constant [7 x i8] c"IGNORE\00", align 1
@KW_NDATA = internal constant [6 x i8] c"NDATA\00", align 1
@KW_CDATA = internal constant [6 x i8] c"CDATA\00", align 1
@KW_ID = internal constant [3 x i8] c"ID\00", align 1
@KW_IDREF = internal constant [6 x i8] c"IDREF\00", align 1
@KW_IDREFS = internal constant [7 x i8] c"IDREFS\00", align 1
@KW_ENTITIES = internal constant [9 x i8] c"ENTITIES\00", align 1
@KW_NMTOKEN = internal constant [8 x i8] c"NMTOKEN\00", align 1
@KW_NMTOKENS = internal constant [9 x i8] c"NMTOKENS\00", align 1
@KW_IMPLIED = internal constant [8 x i8] c"IMPLIED\00", align 1
@KW_REQUIRED = internal constant [9 x i8] c"REQUIRED\00", align 1
@KW_FIXED = internal constant [6 x i8] c"FIXED\00", align 1
@KW_EMPTY = internal constant [6 x i8] c"EMPTY\00", align 1
@KW_ANY = internal constant [4 x i8] c"ANY\00", align 1
@KW_PCDATA = internal constant [7 x i8] c"PCDATA\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @PyExpat_XmlPrologStateInit(ptr noundef writeonly captures(none) initializes((0, 8), (16, 28)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @prolog0, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 20
  store i32 1, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @prolog0(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit.sink.split
    i32 12, label %bb.b
    i32 11, label %bb.c
    i32 13, label %bb.d
    i32 14, label %common.exit
    i32 16, label %bb.e
    i32 29, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.d:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %4, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = shl i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = tail call i32 %i.b(ptr noundef %4, ptr noundef %i.g, ptr noundef %3, ptr noundef nonnull @KW_DOCTYPE) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %common.exit.sink.split

bb.f:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.g
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @error, %bb.f ], [ @prolog1, %bb.a ], [ @prolog1, %bb.d ], [ @prolog1, %bb.c ], [ @prolog1, %bb.b ], [ @doctype0, %bb.e ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 2, %bb.f ], [ 0, %bb.a ], [ 56, %bb.d ], [ 55, %bb.c ], [ 1, %bb.b ], [ 3, %bb.e ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 59, %bb.g ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @PyExpat_XmlPrologStateInitExternalEntity(ptr noundef writeonly captures(none) initializes((0, 8), (16, 24)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @externalSubset0, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 20
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 61) i32 @externalSubset0(ptr noundef captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  store ptr @externalSubset1, ptr %0, align 8, !tbaa !10
  %i.a = icmp eq i32 %1, 12
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @externalSubset1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 57, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @prolog1(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 11, label %bb.b
    i32 13, label %bb.c
    i32 14, label %common.exit
    i32 16, label %bb.d
    i32 29, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %4, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = shl i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = tail call i32 %i.b(ptr noundef %4, ptr noundef %i.g, ptr noundef %3, ptr noundef nonnull @KW_DOCTYPE) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @doctype0, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %.thread, %bb.g, %bb.a, %bb.a, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 2, %bb.f ], [ 55, %bb.b ], [ 56, %bb.c ], [ 0, %bb.a ], [ 3, %bb.e ], [ -1, %.thread ], [ 59, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @doctype0(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a, %bb.a
  %error.sink = phi ptr [ @doctype1, %bb.a ], [ @doctype1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 4, %bb.a ], [ 4, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @error(ptr readnone captures(none) %0, i32 %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @doctype1(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 15, label %common.exit
    i32 25, label %common.exit.sink.split
    i32 17, label %bb.b
    i32 18, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.thread, label %common.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @doctype3, %bb.c ], [ @internalSubset, %bb.a ], [ @prolog2, %bb.b ], [ @doctype2, %bb.d ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 3, %bb.c ], [ 7, %bb.a ], [ 8, %bb.b ], [ 3, %bb.d ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.e, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.e ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 61) i32 @internalSubset(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 15, label %common.exit
    i32 16, label %bb.b
    i32 11, label %bb.j
    i32 13, label %bb.k
    i32 28, label %bb.l
    i32 26, label %bb.m
    i32 -4, label %common.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %4, i64 128        ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = shl i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = tail call i32 %i.b(ptr noundef %4, ptr noundef %i.g, ptr noundef %3, ptr noundef nonnull @KW_ENTITY) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @entity0, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.j = load i32, ptr %i.c, align 8, !tbaa !18
  %i.k = shl i32 %i.j, 1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = tail call i32 %i.i(ptr noundef nonnull %4, ptr noundef %i.m, ptr noundef %3, ptr noundef nonnull @KW_ATTLIST) #5
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @attlist0, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.p = load i32, ptr %i.c, align 8, !tbaa !18
  %i.q = shl i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = tail call i32 %i.o(ptr noundef nonnull %4, ptr noundef %i.s, ptr noundef %3, ptr noundef nonnull @KW_ELEMENT) #5
  %.not29 = icmp eq i32 %i.t, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @element0, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.v = load i32, ptr %i.c, align 8, !tbaa !18
  %i.w = shl i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = tail call i32 %i.u(ptr noundef nonnull %4, ptr noundef %i.y, ptr noundef %3, ptr noundef nonnull @KW_NOTATION) #5
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @notation0, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.j:                                             ; preds = %bb.a
  br label %common.exit

bb.k:                                             ; preds = %bb.a
  br label %common.exit

bb.l:                                             ; preds = %bb.a
  br label %common.exit

bb.m:                                             ; preds = %bb.a
  store ptr @doctype5, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.n:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.n
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %.thread, %bb.n, %bb.a, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.a ], [ 11, %bb.c ], [ 33, %bb.e ], [ 39, %bb.g ], [ 17, %bb.i ], [ 55, %bb.j ], [ 56, %bb.k ], [ 60, %bb.l ], [ 3, %bb.m ], [ -1, %.thread ], [ 59, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @prolog2(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  %5 = add i32 %1, -11                            ; 2 uses
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 31)
  switch i32 %6, label %bb.e [
    i32 2, label %common.exit
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.e:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.f, %bb.e, %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 2, %bb.d ], [ 55, %bb.b ], [ 56, %bb.c ], [ -1, %bb.f ], [ 59, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @doctype3(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @doctype4, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 5, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @doctype2(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @doctype3, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 6, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity0(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 22, label %common.exit.sink.split
    i32 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.a, %bb.b
  %error.sink = phi ptr [ @entity1, %bb.a ], [ @entity2, %bb.b ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 11, %bb.a ], [ 9, %bb.b ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist0(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a, %bb.a
  %error.sink = phi ptr [ @attlist1, %bb.a ], [ @attlist1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 34, %bb.a ], [ 34, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element0(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a, %bb.a
  %error.sink = phi ptr [ @element1, %bb.a ], [ @element1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 40, %bb.a ], [ 40, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 39, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @notation0(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @notation1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ %1, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 17, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @doctype5(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 17, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @prolog2, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 8, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity1(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @entity7, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 10, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @entity2(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 18, label %bb.b
    i32 27, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @entity4, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @entity3, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %0, i64 12
  store i32 11, ptr %i.f, align 4, !tbaa !19
  br label %common.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %.thread, %bb.g, %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 11, %bb.a ], [ 12, %bb.f ], [ 11, %bb.c ], [ 11, %bb.e ], [ -1, %.thread ], [ 59, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @entity7(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 18, label %bb.b
    i32 27, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @entity9, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @entity8, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %0, i64 12
  store i32 11, ptr %i.f, align 4, !tbaa !19
  br label %common.exit

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %.thread, %bb.g, %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 11, %bb.a ], [ 12, %bb.f ], [ 11, %bb.c ], [ 11, %bb.e ], [ -1, %.thread ], [ 59, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity9(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @entity10, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 13, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity8(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @entity9, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 14, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @declClose(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %bb.b
    i32 17, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @externalSubset1, ptr @internalSubset
  store ptr %i.e, ptr %0, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.b, %bb.b ], [ -1, %bb.e ], [ 59, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity10(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @externalSubset1, ptr @internalSubset
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.b
  %error.sink = phi ptr [ %i.c, %bb.b ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 15, %bb.b ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 61) i32 @externalSubset1(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 33, label %bb.b
    i32 34, label %bb.c
    i32 15, label %bb.g
    i32 26, label %common.exit
    i32 -4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @condSect0, ptr %0, align 8, !tbaa !10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i32 %i.b, -1
  store i32 %i.d, ptr %i.a, align 8, !tbaa !14
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %common.exit

bb.f:                                             ; preds = %bb.a
  %i.g = tail call i32 @internalSubset(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.g

common.exit:                                      ; preds = %bb.e, %bb.c, %bb.a
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %common.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.b ], [ -1, %common.exit ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @condSect0(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %common.exit
    i32 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_INCLUDE) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %common.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IGNORE) #5
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %.thread, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.b, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @condSect1, %bb.b ], [ @condSect2, %bb.c ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 0, %bb.b ], [ 0, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 59, %bb.d ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @condSect1(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 25, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @externalSubset1, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.d ], [ 59, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @condSect2(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 25, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @externalSubset1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 58, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity4(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @entity5, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 13, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity3(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @entity4, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 14, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @entity5(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %common.exit
    i32 17, label %bb.b
    i32 18, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not10 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not10, ptr @externalSubset1, ptr @internalSubset
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call i32 %i.e(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NDATA) #5
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.b, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ %i.c, %bb.b ], [ @entity6, %bb.c ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 15, %bb.b ], [ 11, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 59, %bb.d ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @entity6(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 12
  store i32 11, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 11, %bb.a ], [ 16, %bb.b ], [ -1, %bb.d ], [ 59, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist1(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 17, label %bb.b
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @externalSubset1, ptr @internalSubset
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.a, %bb.a, %bb.b
  %error.sink = phi ptr [ @attlist2, %bb.a ], [ %i.c, %bb.b ], [ @attlist2, %bb.a ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 22, %bb.a ], [ 33, %bb.b ], [ 22, %bb.a ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @attlist2(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.j [
    i32 15, label %common.exit
    i32 18, label %.preheader
    i32 23, label %common.exit.sink.split
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_CDATA) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %common.exit.sink.split

bb.b:                                             ; preds = %.preheader
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ID) #5
  %.not.1 = icmp eq i32 %i.e, 0
  br i1 %.not.1, label %bb.c, label %common.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.g = tail call i32 %i.f(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IDREF) #5
  %.not.2 = icmp eq i32 %i.g, 0
  br i1 %.not.2, label %bb.d, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.i = tail call i32 %i.h(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IDREFS) #5
  %.not.3 = icmp eq i32 %i.i, 0
  br i1 %.not.3, label %bb.e, label %common.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.k = tail call i32 %i.j(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ENTITY) #5
  %.not.4 = icmp eq i32 %i.k, 0
  br i1 %.not.4, label %bb.f, label %common.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.m = tail call i32 %i.l(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ENTITIES) #5
  %.not.5 = icmp eq i32 %i.m, 0
  br i1 %.not.5, label %bb.g, label %common.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.o = tail call i32 %i.n(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NMTOKEN) #5
  %.not.6 = icmp eq i32 %i.o, 0
  br i1 %.not.6, label %bb.h, label %common.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.q = tail call i32 %i.p(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NMTOKENS) #5
  %.not.7 = icmp eq i32 %i.q, 0
  br i1 %.not.7, label %bb.i, label %common.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.s = tail call i32 %i.r(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NOTATION) #5
  %.not21 = icmp eq i32 %i.s, 0
  br i1 %.not21, label %.thread, label %common.exit.sink.split

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  %i.w = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.w, %i.v
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.a, %bb.i, %.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @attlist8, %.preheader ], [ @attlist5, %bb.i ], [ @attlist8, %bb.h ], [ @attlist8, %bb.g ], [ @attlist8, %bb.f ], [ @attlist8, %bb.e ], [ @attlist8, %bb.d ], [ @attlist8, %bb.c ], [ @attlist8, %bb.b ], [ @attlist3, %bb.a ]
  %.1.ph = phi i32 [ -1, %.thread ], [ 23, %.preheader ], [ 33, %bb.i ], [ 30, %bb.h ], [ 29, %bb.g ], [ 28, %bb.f ], [ 27, %bb.e ], [ 26, %bb.d ], [ 25, %bb.c ], [ 24, %bb.b ], [ 33, %bb.a ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.j, %bb.a
  %.1 = phi i32 [ 33, %bb.a ], [ 59, %bb.j ], [ %.1.ph, %common.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @attlist8(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 15, label %common.exit
    i32 20, label %bb.b
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %4, i64 128        ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %i.g = tail call i32 %i.b(ptr noundef %4, ptr noundef %i.f, ptr noundef %3, ptr noundef nonnull @KW_IMPLIED) #5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %common.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.i = load i32, ptr %i.c, align 8, !tbaa !18
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %2, i64 %i.j
  %i.l = tail call i32 %i.h(ptr noundef nonnull %4, ptr noundef %i.k, ptr noundef %3, ptr noundef nonnull @KW_REQUIRED) #5
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.d, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.n = load i32, ptr %i.c, align 8, !tbaa !18
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %2, i64 %i.o
  %i.q = tail call i32 %i.m(ptr noundef nonnull %4, ptr noundef %i.p, ptr noundef %3, ptr noundef nonnull @KW_FIXED) #5
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %.thread, label %common.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %i.t = icmp eq i32 %i.s, 0
  %i.u = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @attlist9, %bb.d ], [ @attlist1, %bb.c ], [ @attlist1, %bb.b ], [ @attlist1, %bb.a ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 33, %bb.d ], [ 36, %bb.c ], [ 35, %bb.b ], [ 37, %bb.a ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.e, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.e ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist5(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 23, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @attlist6, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 33, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist3(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 19, label %common.exit.sink.split
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a, %bb.a, %bb.a
  %error.sink = phi ptr [ @attlist4, %bb.a ], [ @attlist4, %bb.a ], [ @attlist4, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 31, %bb.a ], [ 31, %bb.a ], [ 31, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist9(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @attlist1, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 38, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist6(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @attlist7, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 32, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist7(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 24, label %common.exit.sink.split
    i32 21, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.a, %bb.b
  %error.sink = phi ptr [ @attlist8, %bb.a ], [ @attlist6, %bb.b ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 33, %bb.a ], [ 33, %bb.b ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @attlist4(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 24, label %common.exit.sink.split
    i32 21, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.a, %bb.b
  %error.sink = phi ptr [ @attlist8, %bb.a ], [ @attlist3, %bb.b ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 33, %bb.a ], [ 33, %bb.b ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 33, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @element1(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 18, label %bb.b
    i32 23, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_EMPTY) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.d, align 4, !tbaa !19
  br label %common.exit

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.f = tail call i32 %i.e(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ANY) #5
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.g, align 4, !tbaa !19
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  store ptr @element2, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !20
  br label %common.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %.thread, %bb.g, %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 39, %bb.a ], [ 44, %bb.f ], [ 42, %bb.c ], [ 41, %bb.e ], [ -1, %.thread ], [ 59, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @element2(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 20, label %bb.b
    i32 23, label %bb.c
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
    i32 30, label %bb.d
    i32 31, label %bb.e
    i32 32, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr i8, ptr %4, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %i.g = tail call i32 %i.b(ptr noundef %4, ptr noundef %i.f, ptr noundef %3, ptr noundef nonnull @KW_PCDATA) #5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread, label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8, !tbaa !20
  br label %common.exit.sink.split

bb.d:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.e:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.f:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.g
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @element7, %bb.f ], [ @element7, %bb.e ], [ @element7, %bb.d ], [ @element3, %bb.b ], [ @element6, %bb.c ], [ @element7, %bb.a ], [ @element7, %bb.a ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 54, %bb.f ], [ 52, %bb.e ], [ 53, %bb.d ], [ 43, %bb.b ], [ 44, %bb.c ], [ 51, %bb.a ], [ 51, %bb.a ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.g, %bb.a
  %.0 = phi i32 [ 39, %bb.a ], [ 59, %bb.g ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element3(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 15, label %common.exit
    i32 24, label %bb.b
    i32 36, label %bb.c
    i32 21, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.b, align 4, !tbaa !19
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  store ptr @element4, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.e:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %common.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.f, %bb.e, %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 39, %bb.a ], [ 39, %bb.d ], [ 45, %bb.b ], [ 46, %bb.c ], [ -1, %bb.f ], [ 59, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element6(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 15, label %common.exit
    i32 23, label %bb.b
    i32 18, label %bb.c
    i32 41, label %bb.c
    i32 30, label %bb.d
    i32 31, label %bb.e
    i32 32, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  br label %common.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  store ptr @element7, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  store ptr @element7, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.e:                                             ; preds = %bb.a
  store ptr @element7, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  store ptr @element7, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.g:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.g, %i.f
  br i1 %or.cond.i, label %common.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.h, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 39, %bb.a ], [ 54, %bb.f ], [ 44, %bb.b ], [ 51, %bb.c ], [ 53, %bb.d ], [ 52, %bb.e ], [ -1, %bb.h ], [ 59, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element7(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 15, label %common.exit
    i32 24, label %bb.b
    i32 36, label %bb.d
    i32 35, label %bb.f
    i32 37, label %bb.h
    i32 38, label %bb.j
    i32 21, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %common.exit

bb.c:                                             ; preds = %bb.b
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.e, align 4, !tbaa !19
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !20
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %common.exit

bb.e:                                             ; preds = %bb.d
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.j, align 4, !tbaa !19
  br label %common.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !20
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %common.exit

bb.g:                                             ; preds = %bb.f
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.o, align 4, !tbaa !19
  br label %common.exit

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !20
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %common.exit

bb.i:                                             ; preds = %bb.h
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.t, align 4, !tbaa !19
  br label %common.exit

bb.j:                                             ; preds = %bb.a
  store ptr @element6, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.k:                                             ; preds = %bb.a
  store ptr @element6, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.l:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %common.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.m, %bb.l, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %bb.k, %bb.j
  %.0 = phi i32 [ 48, %bb.h ], [ 49, %bb.k ], [ 39, %bb.a ], [ 45, %bb.b ], [ 46, %bb.d ], [ 47, %bb.f ], [ 50, %bb.j ], [ 45, %bb.c ], [ 46, %bb.e ], [ 47, %bb.g ], [ 48, %bb.i ], [ -1, %bb.m ], [ 59, %bb.l ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element4(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 18, label %common.exit.sink.split
    i32 41, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a, %bb.a
  %error.sink = phi ptr [ @element5, %bb.a ], [ @element5, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 51, %bb.a ], [ 51, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 39, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @element5(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %common.exit
    i32 36, label %bb.b
    i32 21, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 12
  store i32 39, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  store ptr @element4, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.e, %bb.d, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 39, %bb.a ], [ 39, %bb.c ], [ 46, %bb.b ], [ -1, %bb.e ], [ 59, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 60) i32 @notation1(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %common.exit
    i32 18, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 %i.b(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %common.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call i32 %i.d(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %.thread, label %common.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %common.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  br label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.b, %.thread
  %error.sink = phi ptr [ @error, %.thread ], [ @notation3, %bb.b ], [ @notation2, %bb.c ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 17, %bb.b ], [ 17, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.d, %bb.a
  %.0 = phi i32 [ 17, %bb.a ], [ 59, %bb.d ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @notation3(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 27, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 12
  store i32 17, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 17, %bb.a ], [ 19, %bb.b ], [ -1, %bb.d ], [ 59, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @notation2(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 15, label %common.exit
    i32 27, label %common.exit.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.b, %bb.a
  %error.sink = phi ptr [ @notation4, %bb.a ], [ @error, %bb.b ]
  %.0.ph = phi i32 [ 21, %bb.a ], [ -1, %bb.b ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 17, %bb.a ], [ 59, %bb.b ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @notation4(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 15, label %common.exit
    i32 27, label %bb.b
    i32 17, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @declClose, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr i8, ptr %0, i64 12
  store i32 17, ptr %i.a, align 4, !tbaa !19
  br label %common.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, ptr @externalSubset1, ptr @internalSubset
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  br label %common.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @error, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %bb.e, %bb.d, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 17, %bb.a ], [ 20, %bb.c ], [ 19, %bb.b ], [ -1, %bb.e ], [ 59, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -1, 60) i32 @doctype4(ptr noundef captures(none) %0, i32 noundef %1, ptr readnone captures(none) %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 15, label %common.exit
    i32 25, label %common.exit.sink.split
    i32 17, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %common.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %1, 28
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %common.exit, label %common.exit.sink.split

common.exit.sink.split:                           ; preds = %bb.c, %bb.a, %bb.b
  %error.sink = phi ptr [ @internalSubset, %bb.a ], [ @prolog2, %bb.b ], [ @error, %bb.c ]
  %.0.ph = phi i32 [ 7, %bb.a ], [ 8, %bb.b ], [ -1, %bb.c ]
  store ptr %error.sink, ptr %0, align 8, !tbaa !10
  br label %common.exit

common.exit:                                      ; preds = %common.exit.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 59, %bb.c ], [ %.0.ph, %common.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"prolog_state", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!11, !7, i64 20}
!14 = !{!11, !7, i64 16}
!15 = !{!11, !7, i64 24}
!16 = !{!17, !12, i64 48}
!17 = !{!"encoding", !8, i64 0, !8, i64 32, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !7, i64 128, !8, i64 132, !8, i64 133}
!18 = !{!17, !7, i64 128}
!19 = !{!11, !7, i64 12}
!20 = !{!11, !7, i64 8}
end_hunk_0

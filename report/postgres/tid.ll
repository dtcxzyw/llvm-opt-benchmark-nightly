Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tid?download=true
inline.NumInlined: 74
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StringInfoData = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tid.c\00", align 1
@__func__.tidin = private unnamed_addr constant [6 x i8] c"tidin\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(%u,%u)\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"cannot look at latest visible tid for relation \22%s.%s\22\00", align 1
@__func__.currtid_internal = private unnamed_addr constant [17 x i8] c"currtid_internal\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctid\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ctid isn't of type TID\00", align 1
@__func__.currtid_for_view = private unnamed_addr constant [17 x i8] c"currtid_for_view\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"currtid cannot handle views with no CTID\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"the view has no rules\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"only one select rule is allowed in views\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"currtid cannot handle this view\00", align 1
@CheckXidAlive = external local_unnamed_addr global i32, align 4
@bsysscan = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"scan started during logical decoding\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"../../../../src/include/access/tableam.h\00", align 1
@__func__.table_beginscan_common = private unnamed_addr constant [23 x i8] c"table_beginscan_common\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @tidin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [2 x ptr], align 16                 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %switch.early.test

switch.early.test:                                ; preds = %bb.a, %bb.d
  %.061 = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]    ; 4 uses
  %.04560 = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %i.g = load i8, ptr %.04560, align 1            ; 2 uses
  switch i8 %i.g, label %bb.b [
    i8 41, label %.critedge
    i8 0, label %.critedge
    i8 44, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.h = icmp eq i8 %i.g, 40
  %i.i = icmp eq i32 %.061, 0
  %or.cond3 = and i1 %i.h, %i.i
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.early.test, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.04560, i64 1
  %i.k = add nuw nsw i32 %.061, 1
  %2 = zext nneg i32 %.061 to i64
  %3 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store ptr %i.j, ptr %3, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.k, %bb.c ], [ %.061, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04560, i64 1
  %i.m = icmp sgt i32 %.1, 1
  br i1 %i.m, label %bb.f, label %switch.early.test, !llvm.loop !5

.critedge:                                        ; preds = %switch.early.test, %switch.early.test
  %i.n = tail call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #10
  br i1 %i.n, label %bb.e, label %bb.r

bb.e:                                             ; preds = %.critedge
  %i.o = tail call i32 @errcode(i32 noundef 33685634) #10 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.d) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 72, ptr noundef nonnull @__func__.tidin) #10
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #11    ; 3 uses
  store i32 0, ptr %i.q, align 4
  %4 = load ptr, ptr %1, align 16
  %i.r = call i64 @__isoc23_strtoul(ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef 10) #10 ; 3 uses
  %i.s = load i32, ptr %i.q, align 4
  %.not50 = icmp eq i32 %i.s, 0
  br i1 %.not50, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load i8, ptr %i.t, align 1
  %.not51 = icmp eq i8 %i.u, 44
  br i1 %.not51, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #10
  br i1 %i.v, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @errcode(i32 noundef 33685634) #10 ; 0 uses
  %i.x = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.d) #10 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 80, ptr noundef nonnull @__func__.tidin) #10
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.y = add i64 %i.r, 2147483648
  %or.cond56 = icmp ult i64 %i.y, 6442450944
  br i1 %or.cond56, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #10
  br i1 %i.z, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @errcode(i32 noundef 33685634) #10 ; 0 uses
  %i.ab = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.d) #10 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef nonnull @__func__.tidin) #10
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %i.ac = call i64 @__isoc23_strtoul(ptr noundef %6, ptr noundef nonnull %i.a, i32 noundef 10) #10 ; 2 uses
  %i.ad = load i32, ptr %i.q, align 4
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp ne i8 %i.af, 41
  %i.ah = icmp ugt i64 %i.ac, 65535
  %or.cond5 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond5, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #10
  br i1 %i.ai, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aj = call i32 @errcode(i32 noundef 33685634) #10 ; 0 uses
  %i.ak = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.d) #10 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 103, ptr noundef nonnull @__func__.tidin) #10
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.al = trunc nuw i64 %i.ac to i16
  %i.am = call ptr @palloc(i64 noundef 6) #10     ; 4 uses
  %i.an = lshr i64 %i.r, 16
  %i.ao = trunc i64 %i.an to i16
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = trunc i64 %i.r to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.al, ptr %i.ar, align 2
  %i.as = ptrtoint ptr %i.am to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.k, %bb.l, %bb.h, %bb.i, %.critedge, %bb.e, %bb.q
  %.046 = phi i64 [ %i.as, %bb.q ], [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @tidout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.val = load i16, ptr %i.d, align 2
  %i.e = getelementptr i8, ptr %i.d, i64 2
  %.val4 = load i16, ptr %i.e, align 2
  %i.f = zext i16 %.val to i32
  %i.g = shl nuw i32 %i.f, 16
  %i.h = zext i16 %.val4 to i32
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = getelementptr i8, ptr %i.d, i64 4
  %.val5 = load i16, ptr %i.j, align 2
  %i.k = zext i16 %.val5 to i32
  %i.l = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.i, i32 noundef %i.k) #10 ; 0 uses
  %i.m = call ptr @pstrdup(ptr noundef nonnull %i.a) #10
  %i.n = ptrtoint ptr %i.m to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.n
}

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @tidrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #10 ; 2 uses
  %i.e = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #10
  %i.f = trunc i32 %i.e to i16
  %i.g = tail call ptr @palloc(i64 noundef 6) #10 ; 4 uses
  %i.h = lshr i32 %i.d, 16
  %i.i = trunc nuw i32 %i.h to i16
  store i16 %i.i, ptr %i.g, align 2
  %i.j = trunc i32 %i.d to i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %i.j, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i16 %i.f, ptr %i.l, align 2
  %i.m = ptrtoint ptr %i.g to i64
  ret i64 %i.m
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @tidsend(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @pq_begintypsend(ptr noundef nonnull %1) #10
  %.val = load i16, ptr %i.c, align 2
  %i.d = getelementptr i8, ptr %i.c, i64 2
  %.val3 = load i16, ptr %i.d, align 2
  %i.e = zext i16 %.val to i32
  %i.f = shl nuw i32 %i.e, 16
  %i.g = zext i16 %.val3 to i32
  %i.h = or disjoint i32 %i.f, %i.g
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 4) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.i = call i32 @llvm.bswap.i32(i32 %i.h)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !10 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  store i32 %i.i, ptr %i.n, align 1, !noalias !10
  %i.o = add i32 %i.l, 4
  store i32 %i.o, ptr %i.k, align 8, !alias.scope !10
  %i.p = getelementptr i8, ptr %i.c, i64 4
  %.val4 = load i16, ptr %i.p, align 2
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.q = call i16 @llvm.bswap.i16(i16 %.val4)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !11
  %i.s = load i32, ptr %i.k, align 8, !alias.scope !11 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i16 %i.q, ptr %i.u, align 1, !noalias !11
  %i.v = add i32 %i.s, 2
  store i32 %i.v, ptr %i.k, align 8, !alias.scope !11
  %i.w = call ptr @pq_endtypsend(ptr noundef nonnull %1) #10
  %i.x = ptrtoint ptr %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.x
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #2

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @tideq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @ItemPointerCompare(ptr noundef %i.c, ptr noundef %i.f) #10
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i1 %i.h to i64
  ret i64 %i.i
}

declare i32 @ItemPointerCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @tidne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @ItemPointerCompare(ptr noundef %i.c, ptr noundef %i.f) #10
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @tidlt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @ItemPointerCompare(ptr noundef %i.c, ptr noundef %i.f) #10
  %.lobit = lshr i32 %i.g, 31
  %i.h = zext nneg i32 %.lobit to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @tidle(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @ItemPointerCompare(ptr noundef %i.c, ptr noundef %i.f) #10
  %i.h = icmp slt i32 %i.g, 1
  %i.i = zext i1 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @tidgt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @ItemPointerCompare(ptr noundef %i.c, ptr noundef %i.f) #10
  %i.h = icmp sgt i32 %i.g, 0
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/string_utils?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@appendShellStringNoError:bb.a
bb.i:                                             ; preds = %bb.e
  tail call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext 39) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.019 = phi i1 [ true, %bb.c ], [ %.018, %bb.i ]
  ret i1 %.019
}

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @appendConnStrVal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not37 = icmp eq i8 %i.a, 0
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi i8 [ %i.g, %bb.c ], [ %i.a, %bb.a ]  ; 3 uses
  %.02238 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.a ]
  %i.c = and i8 %i.b, -33
  %i.d = add i8 %i.c, -65
  %or.cond34 = icmp ult i8 %i.d, 26
  %i.e = add i8 %i.b, -48
  %or.cond33 = icmp ult i8 %i.e, 10
  %or.cond35 = or i1 %or.cond33, %or.cond34
  br i1 %or.cond35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.b, label %.critedge [
    i8 95, label %bb.c
    i8 46, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.02238, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext 39) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge
  %.023 = phi ptr [ %1, %.critedge ], [ %i.j, %bb.f ] ; 3 uses
  %i.h = load i8, ptr %.023, align 1              ; 2 uses
  switch i8 %i.h, label %bb.f [
    i8 0, label %bb.g
    i8 39, label %bb.e
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  tail call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext 92) #11
  %.pre = load i8, ptr %.023, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = phi i8 [ %i.h, %bb.d ], [ %.pre, %bb.e ]
  tail call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext %i.i) #11
  %i.j = getelementptr inbounds nuw i8, ptr %.023, i64 1
  br label %bb.d, !llvm.loop !21

bb.g:                                             ; preds = %bb.d
  tail call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext 39) #11
  br label %bb.h

._crit_edge:                                      ; preds = %bb.c
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @appendPsqlMetaConnect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PQExpBufferData, align 8    ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.022 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.g ]  ; 2 uses
  %.0 = phi i1 [ false, %bb.a ], [ %.1, %bb.g ]   ; 4 uses
  %i.a = load i8, ptr %.022, align 1              ; 4 uses
  switch i8 %i.a, label %bb.d [
    i8 0, label %bb.h
    i8 10, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = load ptr, ptr @stderr, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.7, ptr noundef %1) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = and i8 %i.a, -33
  %i.e = add i8 %i.d, -65
  %or.cond30 = icmp ult i8 %i.e, 26
  %i.f = add i8 %i.a, -48
  %or.cond29 = icmp ult i8 %i.f, 10
  %or.cond31 = or i1 %or.cond29, %or.cond30
  br i1 %or.cond31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.a, label %bb.f [
    i8 95, label %bb.g
    i8 46, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.d, %bb.f
  %.1 = phi i1 [ %.0, %bb.d ], [ true, %bb.f ], [ %.0, %bb.e ], [ %.0, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %.022, i64 1
  br label %bb.b, !llvm.loop !22

bb.h:                                             ; preds = %bb.b
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @initPQExpBuffer(ptr noundef nonnull %2) #11
  call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull @.str.9) #11
  call void @appendPQExpBufferStr(ptr noundef nonnull %2, ptr noundef nonnull @.str.10) #11
  call void @appendConnStrVal(ptr noundef nonnull %2, ptr noundef %1)
  %i.h = load ptr, ptr %2, align 8
  %i.i = call ptr @fmtIdEnc(ptr noundef %i.h, i32 noundef 0)
  call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef %i.i) #11
  call void @termPQExpBuffer(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull @.str.11) #11
  %i.j = tail call ptr @fmtIdEnc(ptr noundef %1, i32 noundef 0)
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef %i.j) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @appendPQExpBufferChar(ptr noundef %0, i8 noundef signext 10) #11
  ret void
}

declare void @initPQExpBuffer(ptr noundef) local_unnamed_addr #4

declare void @termPQExpBuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef zeroext i1 @parsePGArray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.d, 123
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.a, 4294967295
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %.not52 = icmp eq i8 %i.h, 125
  br i1 %.not52, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.a, 2147483647                 ; 2 uses
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.k, ptr %1, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.043 = phi ptr [ %i.n, %bb.e ], [ %spec.select, %.critedge ] ; 3 uses
  %.041 = phi ptr [ %i.m, %bb.e ], [ %i.aa, %.critedge ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ %i.ad, %.critedge ] ; 3 uses
  %i.o = load i8, ptr %.043, align 1              ; 2 uses
  switch i8 %i.o, label %bb.g [
    i8 125, label %bb.m
    i8 0, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = sext i32 %.0 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.p
  store ptr %.041, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %bb.g
  %3 = phi i8 [ %.pr, %.backedge ], [ %i.o, %bb.g ] ; 2 uses
  %.1.a = phi ptr [ %.144.be, %.backedge ], [ %.043, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %.1.be, %.backedge ], [ %.041, %bb.g ] ; 5 uses
  switch i8 %3, label %bb.i [
    i8 125, label %.critedge
    i8 44, label %.critedge
    i8 0, label %.loopexit
    i8 34, label %.preheader
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.1.a, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %3, ptr %.1, align 1
  br label %.backedge

.preheader:                                       ; preds = %bb.h, %bb.k
  %.144.pn = phi ptr [ %.346, %bb.k ], [ %.1.a, %bb.h ] ; 3 uses
  %.2 = phi ptr [ %i.y, %bb.k ], [ %.1, %bb.h ]   ; 3 uses
  %.245 = getelementptr inbounds nuw i8, ptr %.144.pn, i64 1 ; 2 uses
  %i.t = load i8, ptr %.245, align 1              ; 2 uses
  switch i8 %i.t, label %bb.k [
    i8 34, label %bb.l
    i8 0, label %.loopexit
    i8 92, label %bb.j
  ]

bb.j:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.144.pn, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %i.x = phi i8 [ %i.v, %bb.j ], [ %i.t, %.preheader ]
  %.346 = phi ptr [ %i.u, %bb.j ], [ %.245, %.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.x, ptr %.2, align 1
  br label %.preheader, !llvm.loop !23

bb.l:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.144.pn, i64 2
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.i
  %.144.be = phi ptr [ %i.r, %bb.i ], [ %i.z, %bb.l ] ; 2 uses
  %.1.be = phi ptr [ %i.s, %bb.i ], [ %.2, %bb.l ]
  %.pr = load i8, ptr %.144.be, align 1
  br label %bb.h, !llvm.loop !24

.critedge:                                        ; preds = %bb.h, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 0, ptr %.1, align 1
  %i.ab = load i8, ptr %.1.a, align 1
  %i.ac = icmp eq i8 %i.ab, 44
  %spec.select.idx = zext i1 %i.ac to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1.a, i64 %spec.select.idx
  %i.ad = add i32 %.0, 1
  br label %bb.f, !llvm.loop !25

bb.m:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.043, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %.not54 = icmp eq i8 %i.af, 0
  br i1 %.not54, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  store i32 %.0, ptr %2, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %bb.j, %.preheader, %bb.m, %bb.d, %bb.a, %bb.b, %bb.c, %bb.n
  %.042 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.c ], [ false, %.preheader ], [ false, %bb.f ]
  ret i1 %.042
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @appendPGArray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 123
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext 44) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.thread79, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @pg_strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread79, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.067 = phi ptr [ %i.l, %bb.e ], [ %1, %bb.d ]  ; 2 uses
  %i.k = load i8, ptr %.067, align 1
  switch i8 %i.k, label %bb.e [
    i8 0, label %bb.j
    i8 125, label %.thread79
    i8 123, label %.thread79
    i8 92, label %.thread79
    i8 44, label %.thread79
    i8 34, label %.thread79
    i8 32, label %.thread79
    i8 13, label %.thread79
    i8 12, label %.thread79
    i8 11, label %.thread79
    i8 10, label %.thread79
    i8 9, label %.thread79
  ]

bb.e:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.067, i64 1
  br label %.preheader, !llvm.loop !26

.thread79:                                        ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %bb.c, %bb.d
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext 34) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.thread79
  %.1 = phi ptr [ %1, %.thread79 ], [ %i.n, %bb.h ] ; 2 uses
  %i.m = load i8, ptr %.1, align 1                ; 2 uses
  switch i8 %i.m, label %bb.h [
    i8 0, label %bb.i
    i8 92, label %bb.g
    i8 34, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext 92) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext %i.m) #11
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.f, !llvm.loop !27

bb.i:                                             ; preds = %bb.f
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext 34) #11
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @appendReloptionsArray(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = call zeroext i1 @parsePGArray(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.c, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 4              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %.pre33 = load ptr, ptr %i.a, align 8           ; 5 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %.pre33, align 8           ; 2 uses
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 61) #12 ; 3 uses
  %.not.peel = icmp eq ptr %i.g, null
  br i1 %.not.peel, label %._crit_edge31, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %bb.b, %.lr.ph
  %.0.peel = phi ptr [ %i.h, %bb.b ], [ @.str.13, %.lr.ph ] ; 4 uses
  %.pre = load i32, ptr @fmtIdEncoding, align 4   ; 2 uses
  %.not.i.i.peel = icmp eq i32 %.pre, -1
  %..i.i.peel = select i1 %.not.i.i.peel, i32 6, i32 %.pre
  %i.i = tail call ptr @fmtIdEnc(ptr noundef nonnull %i.f, i32 noundef %..i.i.peel)
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %2, ptr noundef %i.i) #11
  %i.j = load i32, ptr @fmtIdEncoding, align 4    ; 2 uses
  %.not.i.i25.peel = icmp eq i32 %i.j, -1
  %..i.i26.peel = select i1 %.not.i.i25.peel, i32 6, i32 %i.j
  %i.k = tail call ptr @fmtIdEnc(ptr noundef nonnull %.0.peel, i32 noundef %..i.i26.peel)
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %.0.peel) #12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge31
  tail call void @appendStringLiteral(ptr noundef %0, ptr noundef nonnull %.0.peel, i32 noundef %3, i1 noundef zeroext %4)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge31
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull %.0.peel) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.peel.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.f:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  br label %._crit_edge

.peel.next:                                       ; preds = %bb.e, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.pre33, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 61) #12 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.peel.next
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.peel.next, %bb.g
  %.0 = phi ptr [ %i.r, %bb.g ], [ @.str.13, %.peel.next ] ; 4 uses
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  %i.s = load i32, ptr @fmtIdEncoding, align 4    ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, -1
  %..i.i = select i1 %.not.i.i, i32 6, i32 %i.s
  %i.t = tail call ptr @fmtIdEnc(ptr noundef nonnull %i.p, i32 noundef %..i.i)
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %2, ptr noundef %i.t) #11
  %i.u = load i32, ptr @fmtIdEncoding, align 4    ; 2 uses
  %.not.i.i25 = icmp eq i32 %i.u, -1
  %..i.i26 = select i1 %.not.i.i25, i32 6, i32 %i.u
  %i.v = tail call ptr @fmtIdEnc(ptr noundef nonnull %.0, i32 noundef %..i.i26)
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %.0) #12
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @appendPQExpBufferStr(ptr noundef %0, ptr noundef nonnull %.0) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @appendStringLiteral(ptr noundef %0, ptr noundef nonnull %.0, i32 noundef %3, i1 noundef zeroext %4)
  br label %bb.k
end_hunk_0

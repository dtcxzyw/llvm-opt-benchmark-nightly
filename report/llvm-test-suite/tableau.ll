inline.NumInlined: 239
inline.NumDeleted: 57
begin_hunk_0
@.str.27 = private unnamed_addr constant [6 x i8] c"\22  }\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"l(\22%d\22,\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"n(\22\22, [a(\22OBJECT\22,\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c")],\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"]))\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"l(\22%d->%d\22,\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"e(\22\22,[],\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"r(\22%d\22)))\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @tab_PathCreate(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @memory_Malloc(i32 noundef 16) #14 ; 4 uses
  %i.b = shl i32 %0, 3
  %i.c = add i32 %i.b, 8
  %i.d = tail call ptr @memory_Malloc(i32 noundef %i.c) #14 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.f, align 8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @tab_PathDelete(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = shl i32 %i.c, 3
  %i.e = add i32 %i.d, 8                          ; 4 uses
  %i.f = icmp ult i32 %i.e, 1024
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.h = urem i32 %i.e, %i.g                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  %i.i = sub i32 %i.g, %i.h
  %i.j = select i1 %.not.i.i.i, i32 0, i32 %i.i
  %.1.i.i.i = add i32 %i.j, %i.e
  %i.k = load i32, ptr @memory_OFFSET, align 4
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.r, ptr @memory_BIGBLOCKS, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not20.i = icmp eq ptr %i.r, null
  br i1 %.not20.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.o, align 8
  store ptr %i.t, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = load i32, ptr @memory_MARKSIZE, align 4
  %i.v = add i32 %.1.i.i.i, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 16                 ; 2 uses
  %i.y = load i64, ptr @memory_FREEDBYTES, align 8
  %i.z = add i64 %i.x, %i.y
  store i64 %i.z, ptr @memory_FREEDBYTES, align 8
  %i.aa = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %i.aa, %i.x
  store i64 %i.ac, ptr @memory_MAXMEM, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 -16
  tail call void @free(ptr noundef nonnull %i.ad) #14
  br label %memory_Free.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr @memory_FREEDBYTES, align 8
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr @memory_FREEDBYTES, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  store ptr %i.am, ptr %i.a, align 8
  %i.an = load ptr, ptr %i.af, align 8
  store ptr %i.a, ptr %i.an, align 8
  br label %memory_Free.exit

memory_Free.exit:                                 ; preds = %bb.i, %bb.j
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i64, ptr @memory_FREEDBYTES, align 8
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr @memory_FREEDBYTES, align 8
  %i.au = load ptr, ptr %i.ao, align 8
  store ptr %i.au, ptr %0, align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %0, ptr %i.av, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @tab_PathContainsClause(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 12
  %.val9 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val10 = load i32, ptr %i.b, align 8
  %i.c = icmp ugt i32 %.val9, %.val10
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val11 = load ptr, ptr %0, align 8
  %i.d = sext i32 %.val9 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val11, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ %.0, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.0, i64 8
  %.0.val = load ptr, ptr %i.g, align 8
  %i.h = icmp eq ptr %.0.val, %1
  br i1 %i.h, label %.loopexit, label %bb.c, !llvm.loop !4

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @tab_PathContainsClauseRobust(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 12
  %.val9.i = load i32, ptr %i.a, align 4          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val10.i = load i32, ptr %i.b, align 8         ; 3 uses
  %i.c = icmp ugt i32 %.val9.i, %.val10.i
  br i1 %i.c, label %tab_PathContainsClause.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val11.i = load ptr, ptr %0, align 8           ; 2 uses
  %i.d = sext i32 %.val9.i to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val11.i, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ %.0.i, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.0.i, i64 8
  %.0.val.i = load ptr, ptr %i.g, align 8
  %i.h = icmp eq ptr %.0.val.i, %1
  br i1 %i.h, label %tab_PathContainsClause.exit, label %bb.c, !llvm.loop !4

bb.e:                                             ; preds = %bb.c
  %.not21.i = icmp slt i32 %.val10.i, 0
  br i1 %.not21.i, label %tab_PathContainsClause.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val11.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.011.in.i = phi ptr [ %i.j, %bb.f ], [ %.011.i, %bb.h ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 3 uses
  %.not19.i = icmp eq ptr %.011.i, null
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %.011.i, i64 8
  %.011.val.i = load ptr, ptr %i.k, align 8
  %i.l = icmp eq ptr %.011.val.i, %1
  br i1 %i.l, label %tab_PathContainsClauseSoft.exit, label %bb.g, !llvm.loop !6

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %2 = trunc nuw i64 %indvars.iv.next.i to i32
  %.not.i6 = icmp slt i32 %.val10.i, %2
  br i1 %.not.i6, label %tab_PathContainsClause.exit, label %bb.f, !llvm.loop !7

tab_PathContainsClauseSoft.exit:                  ; preds = %bb.h
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i64 @fwrite(ptr nonnull @.str, i64 57, i64 1, ptr %i.m) #15 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8
  tail call void @clause_PParentsFPrint(ptr noundef %i.o, ptr noundef %1) #14
  %i.p = load ptr, ptr @stderr, align 8
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  br label %tab_PathContainsClause.exit

tab_PathContainsClause.exit:                      ; preds = %bb.d, %bb.i, %bb.a, %bb.e, %tab_PathContainsClauseSoft.exit
  %.0 = phi i32 [ 0, %bb.i ], [ 1, %tab_PathContainsClauseSoft.exit ], [ 0, %bb.e ], [ 0, %bb.a ], [ 1, %bb.d ]
  ret i32 %.0
}

declare void @clause_PParentsFPrint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @tab_AddSplitAtCursor(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val7 = load i32, ptr %i.a, align 8
  %i.b = sext i32 %.val7 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr @memory_Malloc(i32 noundef 56) #14 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %.not = icmp eq i32 %1, 0
  %. = select i1 %.not, i64 40, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load i32, ptr %i.a, align 8
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %i.a, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  store ptr %i.e, ptr %i.k, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tab_AddClauseOnItsLevel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val5 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val6 = load i32, ptr %i.b, align 8
  %i.c = icmp sgt i32 %.val5, %.val6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdout, align 8
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.1) #14
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.2) #14
  tail call void (ptr, ...) @misc_UserErrorReport(ptr noundef nonnull @.str.3) #14
  tail call fastcc void @misc_Error()
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val7 = load ptr, ptr %1, align 8
  %i.f = sext i32 %.val5 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val7, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %0, ptr %i.k, align 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.j, ptr %i.h, align 8
  ret void
}

declare void @misc_UserErrorReport(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_Error() unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 @fflush(ptr noundef %i.a)  ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @tab_Depth(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %tab_IsLeaf.exit, label %tab_IsLeaf.exit.thread

tab_IsLeaf.exit:                                  ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.b, align 8
  %.not7 = icmp eq ptr %.val2.i, null
  br i1 %.not7, label %common.ret8, label %tab_IsLeaf.exit.thread

common.ret8:                                      ; preds = %tab_IsLeaf.exit, %bb.a, %tab_IsLeaf.exit.thread
  %common.ret8.op = phi i32 [ %i.h, %tab_IsLeaf.exit.thread ], [ 0, %bb.a ], [ 0, %tab_IsLeaf.exit ]
  ret i32 %common.ret8.op

tab_IsLeaf.exit.thread:                           ; preds = %bb.b, %tab_IsLeaf.exit
  %i.c = tail call i32 @tab_Depth(ptr noundef %.val.i)
  %i.d = add nsw i32 %i.c, 1
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.e, align 8
  %i.f = tail call i32 @tab_Depth(ptr noundef %.val5)
  %i.g = tail call i32 @misc_Max(i32 noundef %i.d, i32 noundef %i.f) #14
  %i.h = add nsw i32 %i.g, 1
  br label %common.ret8
}

declare i32 @misc_Max(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @tab_IsClosed(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not22 = icmp eq ptr %0, null
  br i1 %.not22, label %tab_HasEmptyClause.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr23 = phi ptr [ %.val13, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %.val14 = load ptr, ptr %.tr23, align 8         ; 2 uses
  %.not4.i = icmp eq ptr %.val14, null
  br i1 %.not4.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %clause_IsEmptyClause.exit.thread.i
  %.05.i = phi ptr [ %.0.val6.i, %clause_IsEmptyClause.exit.thread.i ], [ %.val14, %.lr.ph ] ; 2 uses
  %i.a = getelementptr i8, ptr %.05.i, i64 8
  %.0.val.i = load ptr, ptr %i.a, align 8         ; 4 uses
  %.not.i.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i.i, label %clause_IsEmptyClause.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr i8, ptr %.0.val.i, i64 68
  %.val.i.i = load i32, ptr %i.b, align 4
  %.not8.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not8.i.i, label %bb.c, label %clause_IsEmptyClause.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.val.i, i64 72
  %.val6.i.i = load i32, ptr %i.c, align 8
  %.not9.i.i = icmp eq i32 %.val6.i.i, 0
  br i1 %.not9.i.i, label %clause_IsEmptyClause.exit.i, label %clause_IsEmptyClause.exit.thread.i

clause_IsEmptyClause.exit.i:                      ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.0.val.i, i64 64
  %.val7.i.i = load i32, ptr %i.d, align 8
  %.not3.i = icmp eq i32 %.val7.i.i, 0
  br i1 %.not3.i, label %tab_HasEmptyClause.exit, label %clause_IsEmptyClause.exit.thread.i

clause_IsEmptyClause.exit.thread.i:               ; preds = %clause_IsEmptyClause.exit.i, %bb.c, %bb.b, %.lr.ph.i
  %.0.val6.i = load ptr, ptr %.05.i, align 8      ; 2 uses
  %.not.i = icmp eq ptr %.0.val6.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !8

.loopexit:                                        ; preds = %clause_IsEmptyClause.exit.thread.i, %.lr.ph
  %i.e = getelementptr i8, ptr %.tr23, i64 40
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not17 = icmp eq ptr %.val, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.f = getelementptr i8, ptr %.tr23, i64 32     ; 2 uses
  %.val11 = load ptr, ptr %i.f, align 8
  %.not18 = icmp eq ptr %.val11, null
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.g = getelementptr inbounds nuw i8, ptr %.tr23, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %tab_HasEmptyClause.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 @tab_IsClosed(ptr noundef nonnull %.val)
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %tab_HasEmptyClause.exit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.f
  %.val13 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not = icmp eq ptr %.val13, null
  br i1 %.not, label %tab_HasEmptyClause.exit, label %.lr.ph

tab_HasEmptyClause.exit:                          ; preds = %tailrecurse, %bb.f, %clause_IsEmptyClause.exit.i, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 1, %clause_IsEmptyClause.exit.i ], [ 0, %bb.f ], [ 0, %tailrecurse ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @tab_Delete(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call fastcc void @tab_DeleteGen(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tab_DeleteGen(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val15 = load ptr, ptr %i.a, align 8
  tail call fastcc void @tab_DeleteGen(ptr noundef %.val15, ptr noundef %1, i32 noundef %2)
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val16 = load ptr, ptr %i.b, align 8
  tail call fastcc void @tab_DeleteGen(ptr noundef %.val16, ptr noundef %1, i32 noundef %2)
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val17 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not6.i = icmp eq ptr %.val17, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.val17, %bb.b ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @memory_FREEDBYTES, align 8
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr @memory_FREEDBYTES, align 8
  %i.j = load ptr, ptr %i.d, align 8
  store ptr %i.j, ptr %.07.i, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.k, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.b
  %.not13 = icmp eq i32 %2, 0
  %.val = load ptr, ptr %0, align 8               ; 6 uses
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %list_Delete.exit
  %.not6.i18 = icmp eq ptr %.val, null
  br i1 %.not6.i18, label %list_Delete.exit23, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.c, %.lr.ph.i19
  %.07.i20 = phi ptr [ %.0.val.i21, %.lr.ph.i19 ], [ %.val, %bb.c ] ; 3 uses
  %.0.val.i21 = load ptr, ptr %.07.i20, align 8   ; 2 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr @memory_FREEDBYTES, align 8
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr @memory_FREEDBYTES, align 8
  %i.r = load ptr, ptr %i.l, align 8
  store ptr %i.r, ptr %.07.i20, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i20, ptr %i.s, align 8
  %.not.i22 = icmp eq ptr %.0.val.i21, null
  br i1 %.not.i22, label %list_Delete.exit23, label %.lr.ph.i19, !llvm.loop !9

bb.d:                                             ; preds = %list_Delete.exit
  %i.t = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i24 = icmp eq ptr %.val, null
  br i1 %.not.i24, label %list_Nconc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not16.i = icmp eq ptr %i.t, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.val, %bb.e ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.f, label %.preheader.i, !llvm.loop !10

bb.f:                                             ; preds = %.preheader.i
  store ptr %i.t, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %.val, %bb.f ], [ %i.t, %bb.d ], [ %.val, %bb.e ]
  store ptr %.0.i, ptr %1, align 8
  br label %list_Delete.exit23

list_Delete.exit23:                               ; preds = %.lr.ph.i19, %bb.c, %list_Nconc.exit
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 448), align 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @memory_FREEDBYTES, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr @memory_FREEDBYTES, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %i.aa, ptr %0, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 448), align 8
  store ptr %0, ptr %i.ab, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %list_Delete.exit23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tab_SetSplitLevels(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tab_SetSplitLevelsRec(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tab_SetSplitLevelsRec(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not30 = icmp eq ptr %0, null
  br i1 %.not30, label %tailrecurse._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.a = load i32, ptr @memory_ALIGN, align 4     ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %tailrecurse
  %.tr2632 = phi i32 [ %1, %.preheader.lr.ph ], [ %i.ef, %tailrecurse ] ; 7 uses
  %.tr31 = phi ptr [ %0, %.preheader.lr.ph ], [ %.val21, %tailrecurse ] ; 3 uses
  %.027 = load ptr, ptr %.tr31, align 8           ; 3 uses
  %.not2528 = icmp eq ptr %.027, null
  br i1 %.not2528, label %tailrecurse, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = icmp sgt i32 %.tr2632, 0
  %i.c = icmp samesign ugt i32 %.tr2632, 63
  %i.d = add nsw i32 %.tr2632, -64
  %i.e = lshr i32 %i.d, 6
  %i.f = add nuw nsw i32 %i.e, 1
  %storemerge.i.i = select i1 %i.c, i32 %i.f, i32 0 ; 4 uses
  %i.g = add nuw nsw i32 %storemerge.i.i, 1       ; 3 uses
  %i.h = shl nuw nsw i32 %i.g, 3
  %i.i = and i32 %.tr2632, 63
  %i.j = zext nneg i32 %storemerge.i.i to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw i64 1, %i.k
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %clause_SetSplitFieldBit.exit.us
  %.029.us = phi ptr [ %.0.us, %clause_SetSplitFieldBit.exit.us ], [ %.027, %.lr.ph ] ; 2 uses
  %i.m = getelementptr i8, ptr %.029.us, i64 8    ; 3 uses
  %.0.val18.us = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val18.us, i64 12
  store i32 %.tr2632, ptr %i.n, align 4
  %.0.val17.us = load ptr, ptr %i.m, align 8      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val17.us, i64 24
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.04.i.us = add i32 %i.p, -1                    ; 3 uses
  %i.q = icmp sgt i32 %.04.i.us, -1
  br i1 %i.q, label %.lr.ph.i.us, label %clause_ClearSplitField.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val17.us, i64 16 ; 5 uses
  %i.s = zext nneg i32 %.04.i.us to i64           ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.us, %.prol.preheader
  %indvars.iv.i.us.prol = phi i64 [ %indvars.iv.next.i.us.prol, %.prol.preheader ], [ %i.s, %.lr.ph.i.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.us ]
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.us.prol
  store i64 0, ptr %i.v, align 8
  %indvars.iv.next.i.us.prol = add nsw i64 %indvars.iv.i.us.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.us
  %indvars.iv.i.us.unr = phi i64 [ %i.s, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.prol, %.prol.preheader ]
  %i.w = icmp ult i32 %.04.i.us, 3
  br i1 %i.w, label %clause_ClearSplitField.exit.us.loopexit, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us.new ], [ %indvars.iv.i.us.unr, %.prol.loopexit ] ; 5 uses
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.us
  store i64 0, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.r, align 8
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i.us
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  store i64 0, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.r, align 8
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.i.us
  %i.ae = getelementptr i8, ptr %i.ad, i64 -16
  store i64 0, ptr %i.ae, align 8
  %indvars.iv.next.i.us.2 = add nsw i64 %indvars.iv.i.us, -3 ; 2 uses
  %i.af = load ptr, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.us.2
  store i64 0, ptr %i.ag, align 8
  %indvars.iv.next.i.us.3 = add nsw i64 %indvars.iv.i.us, -4
  %.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.2, 0
  br i1 %.not.i.us.3, label %clause_ClearSplitField.exit.us.loopexit, label %.lr.ph.i.us.new, !llvm.loop !13

clause_ClearSplitField.exit.us.loopexit:          ; preds = %.lr.ph.i.us.new, %.prol.loopexit
  %.0.val16.us.pre = load ptr, ptr %i.m, align 8  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.val16.us.pre, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %clause_ClearSplitField.exit.us

clause_ClearSplitField.exit.us:                   ; preds = %clause_ClearSplitField.exit.us.loopexit, %.lr.ph.split.us
  %i.ah = phi i32 [ %.pre, %clause_ClearSplitField.exit.us.loopexit ], [ %i.p, %.lr.ph.split.us ]
  %.0.val16.us = phi ptr [ %.0.val16.us.pre, %clause_ClearSplitField.exit.us.loopexit ], [ %.0.val17.us, %.lr.ph.split.us ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val16.us, i64 24 ; 4 uses
  %.not.i22.us = icmp ult i32 %storemerge.i.i, %i.ah
  br i1 %.not.i22.us, label %.clause_ExpandSplitField.exit_crit_edge.i.us, label %bb.b

bb.b:                                             ; preds = %clause_ClearSplitField.exit.us
  %i.aj = tail call ptr @memory_Malloc(i32 noundef %i.h) #14 ; 4 uses
  %i.ak = load i32, ptr %i.ai, align 8
  %.not28.i.i.us = icmp eq i32 %i.ak, 0
  br i1 %.not28.i.i.us, label %.lr.ph27.preheader.i.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val16.us, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i.us
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %i.aq = load i32, ptr %i.ai, align 8            ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i.i.us, %i.ar
  br i1 %i.as, label %bb.c, label %.preheader.i.i.us, !llvm.loop !14

.preheader.i.i.us:                                ; preds = %bb.c
  %2 = icmp ult i32 %i.aq, %i.g
  br i1 %2, label %.lr.ph27.preheader.i.i.us, label %._crit_edge.i.i.us

.lr.ph27.preheader.i.i.us:                        ; preds = %bb.b, %.preheader.i.i.us
  %.lcssa.i7.i.us = phi i32 [ %i.aq, %.preheader.i.i.us ], [ 0, %bb.b ] ; 2 uses
  %i.at = zext nneg i32 %.lcssa.i7.i.us to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %scevgep.i.i.us = getelementptr i8, ptr %i.aj, i64 %i.au
  %i.av = sub nsw i32 %storemerge.i.i, %.lcssa.i7.i.us
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.us, i8 0, i64 %i.ay, i1 false)
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %.lr.ph27.preheader.i.i.us, %.preheader.i.i.us
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val16.us, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 5 uses
  %.not.i.i.us = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.us, label %memory_Free.exit.i.i.us, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.us
  %i.bb = load i32, ptr %i.ai, align 8
  %i.bc = shl i32 %i.bb, 3                        ; 4 uses
  %i.bd = icmp ult i32 %i.bc, 1024
  br i1 %i.bd, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = urem i32 %i.bc, %i.a                    ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq i32 %i.be, 0
  %i.bf = sub i32 %i.a, %i.be
  %i.bg = select i1 %.not.i.i.i.i.i.us, i32 0, i32 %i.bf
  %.1.i.i.i.i.i.us = add i32 %i.bg, %i.bc
  %i.bh = load i32, ptr @memory_OFFSET, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.ba, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 4 uses
  br i1 %.not.i.i.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.bo, ptr @memory_BIGBLOCKS, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not20.i.i.i.us = icmp eq ptr %i.bo, null
  br i1 %.not20.i.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.bl, align 8
  store ptr %i.bq, ptr %i.bo, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = load i32, ptr @memory_MARKSIZE, align 4
  %i.bs = add i32 %.1.i.i.i.i.i.us, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 16               ; 2 uses
  %i.bv = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bw = add i64 %i.bu, %i.bv
  store i64 %i.bw, ptr @memory_FREEDBYTES, align 8
  %i.bx = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = add nuw i64 %i.bx, %i.bu
  store i64 %i.bz, ptr @memory_MAXMEM, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = getelementptr inbounds i8, ptr %i.ba, i64 -16
  tail call void @free(ptr noundef nonnull %i.ca) #14
  br label %memory_Free.exit.i.i.us

bb.m:                                             ; preds = %bb.d
  %i.cb = zext nneg i32 %i.bc to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = sext i32 %i.cf to i64
  %i.ch = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ci = add i64 %i.ch, %i.cg
  store i64 %i.ci, ptr @memory_FREEDBYTES, align 8
  %i.cj = load ptr, ptr %i.cd, align 8
  store ptr %i.cj, ptr %i.ba, align 8
  %i.ck = load ptr, ptr %i.cc, align 8
  store ptr %i.ba, ptr %i.ck, align 8
  br label %memory_Free.exit.i.i.us

memory_Free.exit.i.i.us:                          ; preds = %bb.m, %bb.l, %._crit_edge.i.i.us
  store ptr %i.aj, ptr %i.az, align 8
  store i32 %i.g, ptr %i.ai, align 8
  br label %clause_SetSplitFieldBit.exit.us

.clause_ExpandSplitField.exit_crit_edge.i.us:     ; preds = %clause_ClearSplitField.exit.us
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %.0.val16.us, i64 16
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8
  br label %clause_SetSplitFieldBit.exit.us

clause_SetSplitFieldBit.exit.us:                  ; preds = %.clause_ExpandSplitField.exit_crit_edge.i.us, %memory_Free.exit.i.i.us
  %i.cl = phi ptr [ %.pre.i.us, %.clause_ExpandSplitField.exit_crit_edge.i.us ], [ %i.aj, %memory_Free.exit.i.i.us ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.j ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = or i64 %i.cn, %i.l
  store i64 %i.co, ptr %i.cm, align 8
  %.0.us = load ptr, ptr %.029.us, align 8        ; 2 uses
  %.not25.us = icmp eq ptr %.0.us, null
  br i1 %.not25.us, label %tailrecurse, label %.lr.ph.split.us, !llvm.loop !15

.lr.ph.split:                                     ; preds = %.lr.ph, %clause_SetSplitField.exit
  %.029 = phi ptr [ %.0, %clause_SetSplitField.exit ], [ %.027, %.lr.ph ] ; 2 uses
  %i.cp = getelementptr i8, ptr %.029, i64 8      ; 2 uses
  %.0.val18 = load ptr, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.val18, i64 12
  store i32 %.tr2632, ptr %i.cq, align 4
  %.0.val = load ptr, ptr %i.cp, align 8          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8            ; 2 uses
  %.not.i23 = icmp eq i32 %i.cs, 0
  br i1 %.not.i23, label %clause_SetSplitField.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 5 uses
  %.not20.i = icmp eq ptr %i.cu, null
  br i1 %.not20.i, label %memory_Free.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = shl i32 %i.cs, 3                        ; 4 uses
  %i.cw = icmp ult i32 %i.cv, 1024
  br i1 %i.cw, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = urem i32 %i.cv, %i.a                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cx, 0
  %i.cy = sub i32 %i.a, %i.cx
  %i.cz = select i1 %.not.i.i.i.i, i32 0, i32 %i.cy
  %.1.i.i.i.i = add i32 %i.cz, %i.cv
  %i.da = load i32, ptr @memory_OFFSET, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cu, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.df, null
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 4 uses
  br i1 %.not.i.i24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dh, ptr %i.di, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr %i.dh, ptr @memory_BIGBLOCKS, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not20.i.i = icmp eq ptr %i.dh, null
  br i1 %.not20.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = load ptr, ptr %i.de, align 8
  store ptr %i.dj, ptr %i.dh, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dk = load i32, ptr @memory_MARKSIZE, align 4
  %i.dl = add i32 %.1.i.i.i.i, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 16               ; 2 uses
  %i.do = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dp = add i64 %i.dn, %i.do
  store i64 %i.dp, ptr @memory_FREEDBYTES, align 8
  %i.dq = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = add nuw i64 %i.dq, %i.dn
  store i64 %i.ds, ptr @memory_MAXMEM, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dt = getelementptr inbounds i8, ptr %i.cu, i64 -16
  tail call void @free(ptr noundef nonnull %i.dt) #14
  br label %memory_Free.exit.i

bb.x:                                             ; preds = %bb.o
  %i.du = zext nneg i32 %i.cv to i64
end_hunk_0

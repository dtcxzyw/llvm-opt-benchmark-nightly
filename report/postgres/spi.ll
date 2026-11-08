Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/spi?download=true
inline.NumInlined: 126
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_SPI_commit:bb.a
  %i.f = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.g = call i32 @errcode(i32 noundef 1282) #16  ; 0 uses
  %i.h = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.53) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__func__._SPI_commit) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i1 @IsSubTransaction() #16
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.k = call i32 @errcode(i32 noundef 1282) #16  ; 0 uses
  %i.l = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.54) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 257, ptr noundef nonnull @__func__._SPI_commit) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @SaveTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.n = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #17
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr @PG_exception_stack, align 8
  %i.q = load ptr, ptr @_SPI_current, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  store i8 1, ptr %i.r, align 1
  call void @HoldPinnedPortals() #16
  call void @ForgetPortalSnapshots() #16
  call void @CommitTransactionCommand() #16
  call void @StartTransactionCommand() #16
  br i1 %0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @RestoreTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.s = load ptr, ptr @_SPI_current, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  store i8 0, ptr %i.t, align 1
  store ptr %i.m, ptr @PG_exception_stack, align 8
  store ptr %i.n, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.k:                                             ; preds = %bb.g
  store ptr %i.m, ptr @PG_exception_stack, align 8
  store ptr %i.n, ptr @error_context_stack, align 8
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.u = call ptr @CopyErrorData() #16
  call void @FlushErrorState() #16
  call void @AbortCurrentTransaction() #16
  call void @StartTransactionCommand() #16
  br i1 %0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @RestoreTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.v = load ptr, ptr @_SPI_current, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 73
  store i8 0, ptr %i.w, align 1
  call void @ReThrowError(ptr noundef %i.u) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @SPI_commit_and_chain() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_SPI_commit(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SPI_rollback() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_SPI_rollback(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_SPI_rollback(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SavedTransactionCharacteristics, align 4 ; 5 uses
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = load ptr, ptr @CurrentMemoryContext, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.b = load ptr, ptr @_SPI_current, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.g = call i32 @errcode(i32 noundef 1282) #16  ; 0 uses
  %i.h = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.53) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 342, ptr noundef nonnull @__func__._SPI_rollback) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i1 @IsSubTransaction() #16
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.k = call i32 @errcode(i32 noundef 1282) #16  ; 0 uses
  %i.l = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.55) #16 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__func__._SPI_rollback) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @SaveTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.n = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #17
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr @PG_exception_stack, align 8
  %i.q = load ptr, ptr @_SPI_current, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  store i8 1, ptr %i.r, align 1
  call void @HoldPinnedPortals() #16
  call void @ForgetPortalSnapshots() #16
  call void @AbortCurrentTransaction() #16
  call void @StartTransactionCommand() #16
  br i1 %0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @RestoreTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.s = load ptr, ptr @_SPI_current, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  store i8 0, ptr %i.t, align 1
  store ptr %i.m, ptr @PG_exception_stack, align 8
  store ptr %i.n, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.k:                                             ; preds = %bb.g
  store ptr %i.m, ptr @PG_exception_stack, align 8
  store ptr %i.n, ptr @error_context_stack, align 8
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.u = call ptr @CopyErrorData() #16
  call void @FlushErrorState() #16
  call void @AbortCurrentTransaction() #16
  call void @StartTransactionCommand() #16
  br i1 %0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @RestoreTransactionCharacteristics(ptr noundef nonnull %1) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.a, ptr @CurrentMemoryContext, align 8
  %i.v = load ptr, ptr @_SPI_current, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 73
  store i8 0, ptr %i.w, align 1
  call void @ReThrowError(ptr noundef %i.u) #18
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @SPI_rollback_and_chain() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_SPI_rollback(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AtEOXact_SPI(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %_SPI_connected.promoted = load i32, ptr @_SPI_connected, align 4 ; 4 uses
  %i.a = icmp sgt i32 %_SPI_connected.promoted, -1
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @_SPI_stack, align 8       ; 4 uses
  %i.c = zext nneg i32 %_SPI_connected.promoted to i64 ; 2 uses
  %i.d = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 73
  %i.f = load i8, ptr %i.e, align 1, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr @SPI_processed, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr @SPI_tuptable, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.m = load i32, ptr %i.l, align 8
  store i32 %i.m, ptr @SPI_result, align 4
  %indvars.iv.next.peel = add nsw i64 %i.c, -1    ; 3 uses
  %1 = trunc nsw i64 %indvars.iv.next.peel to i32
  store i32 %1, ptr @_SPI_connected, align 4
  %i.n = icmp eq i32 %_SPI_connected.promoted, 0
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %indvars.iv.next.peel
  %storemerge.peel = select i1 %i.n, ptr null, ptr %i.o
  store ptr %storemerge.peel, ptr @_SPI_current, align 8
  %.not = icmp eq i32 %_SPI_connected.promoted, 0
  br i1 %.not, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.peel, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 73
  %i.r = load i8, ptr %i.q, align 1, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr @SPI_processed, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr @SPI_tuptable, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.y = load i32, ptr %i.x, align 8
  store i32 %i.y, ptr @SPI_result, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %2 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %2, ptr @_SPI_connected, align 4
  %3 = icmp eq i64 %indvars.iv, 0
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %indvars.iv.next
  %storemerge = select i1 %3, ptr null, ptr %i.z
  store ptr %storemerge, ptr @_SPI_current, align 8
  %i.aa = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aa, label %.peel.next, label %.thread, !llvm.loop !9

.thread:                                          ; preds = %bb.c, %.peel.next, %bb.b
  br i1 %0, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.thread
  %i.ab = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @errcode(i32 noundef 64) #16 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #16 ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.5) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 473, ptr noundef nonnull @__func__.AtEOXact_SPI) #16
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.a, %bb.d, %bb.e, %.thread
  ret void
}

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AtEOSubXact_SPI(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_SPI_connected, align 4   ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr @_SPI_stack, align 8
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %i.c, i64 %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i32, ptr %i.f, align 8
  %.not.peel = icmp eq i32 %i.g, %1
  br i1 %.not.peel, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 73
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not32.peel = icmp eq ptr %i.l, null
  br i1 %.not32.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @MemoryContextDelete(ptr noundef nonnull %i.l) #16
  store ptr null, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not33.peel = icmp eq ptr %i.n, null
  br i1 %.not33.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @MemoryContextDelete(ptr noundef nonnull %i.n) #16
  store ptr null, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr @SPI_processed, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr @SPI_tuptable, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.t = load i32, ptr %i.s, align 8
  store i32 %i.t, ptr @SPI_result, align 4
  %i.u = load i32, ptr @_SPI_connected, align 4
  %i.v = add i32 %i.u, -1                         ; 5 uses
  store i32 %i.v, ptr @_SPI_connected, align 4
  %i.w = icmp slt i32 %i.v, 0
  %i.x = load ptr, ptr @_SPI_stack, align 8       ; 2 uses
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.x, i64 %i.y
  %storemerge.peel = select i1 %i.w, ptr null, ptr %i.z
  store ptr %storemerge.peel, ptr @_SPI_current, align 8
  %i.aa = icmp sgt i32 %i.v, -1
  br i1 %i.aa, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %i.ab = phi ptr [ %i.ax, %bb.m ], [ %i.x, %bb.g ]
  %i.ac = phi i32 [ %i.av, %bb.m ], [ %i.v, %bb.g ]
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i32, ptr %i.af, align 8
  %.not = icmp eq i32 %i.ag, %1
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 73
  %i.ai = load i8, ptr %i.ah, align 1, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.al, null
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @MemoryContextDelete(ptr noundef nonnull %i.al) #16
  store ptr null, ptr %i.ak, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.an, null
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @MemoryContextDelete(ptr noundef nonnull %i.an) #16
  store ptr null, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ap = load i64, ptr %i.ao, align 8
  store i64 %i.ap, ptr @SPI_processed, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  store ptr %i.ar, ptr @SPI_tuptable, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.at = load i32, ptr %i.as, align 8
  store i32 %i.at, ptr @SPI_result, align 4
  %i.au = load i32, ptr @_SPI_connected, align 4
  %i.av = add i32 %i.au, -1                       ; 5 uses
  store i32 %i.av, ptr @_SPI_connected, align 4
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = load ptr, ptr @_SPI_stack, align 8      ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %i.ay
  %storemerge = select i1 %i.aw, ptr null, ptr %i.az
  store ptr %storemerge, ptr @_SPI_current, align 8
  %i.ba = icmp sgt i32 %i.av, -1
  br i1 %i.ba, label %.lr.ph, label %.thread, !llvm.loop !10

.thread:                                          ; preds = %bb.m, %.lr.ph, %bb.h, %bb.g
  br i1 %0, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.thread
  %i.bb = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #16
  br i1 %i.bb, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call i32 @errcode(i32 noundef 64) #16 ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #16 ; 0 uses
  %i.be = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.5) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 533, ptr noundef nonnull @__func__.AtEOSubXact_SPI) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph.preheader, %bb.a, %bb.n, %bb.o, %.thread
  %i.bf = load ptr, ptr @_SPI_current, align 8    ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  %or.cond3 = or i1 %0, %i.bg
  br i1 %or.cond3, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %.not34 = icmp ult i32 %i.bi, %1
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @MemoryContextReset(ptr noundef %i.bk) #16
  %.pre = load ptr, ptr @_SPI_current, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = phi ptr [ %.pre, %bb.q ], [ %i.bf, %bb.p ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.bn, null
  br i1 %.not35, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.r, %bb.x
  %storemerge3653.sink = phi ptr [ %i.bo, %bb.x ], [ %i.bn, %bb.r ] ; 5 uses
  %.sroa.10.051 = phi ptr [ %.sroa.0.1, %bb.x ], [ %i.bm, %bb.r ] ; 2 uses
  %i.bo = load ptr, ptr %storemerge3653.sink, align 8 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %storemerge3653.sink, i64 -40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge3653.sink, i64 8
  %i.br = load i32, ptr %i.bq, align 8
end_hunk_0

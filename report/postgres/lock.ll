Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/lock?download=true
inline.NumInlined: 87
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@SetupLockInTable:bb.a
  %i.z = call ptr @hash_search_with_hash_value(ptr noundef %i.y, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef 2, ptr noundef null) #18
  %.not83 = icmp eq ptr %i.z, null
  br i1 %.not83, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.aa = call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.ab = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.22) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1367, ptr noundef nonnull @__func__.SetupLockInTable) #18
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ac = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = and i32 %3, 15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ag = load ptr, ptr %i.af, align 128          ; 2 uses
  %.not84 = icmp eq ptr %i.ag, null
  %. = select i1 %.not84, ptr %1, ptr %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %., ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.h, label %dlist_push_tail.exit

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.ak, align 8
  store ptr %i.ak, ptr %i.am, align 8
  br label %dlist_push_tail.exit

dlist_push_tail.exit:                             ; preds = %bb.g, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.ak, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ak, align 8            ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.al, ptr %i.ar, align 8
  store ptr %i.al, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.at = zext nneg i32 %i.ae to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.i, label %dlist_push_tail.exit86

bb.i:                                             ; preds = %dlist_push_tail.exit
  store ptr %i.au, ptr %i.au, align 8
  store ptr %i.au, ptr %i.aw, align 8
  br label %dlist_push_tail.exit86

dlist_push_tail.exit86:                           ; preds = %dlist_push_tail.exit, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.au, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.au, align 8            ; 2 uses
  store ptr %i.ba, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.av, ptr %i.bb, align 8
  store ptr %i.av, ptr %i.au, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %dlist_push_tail.exit86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bg = sext i32 %4 to i64                      ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = shl nuw i32 1, %4
  %i.bn = and i32 %i.bl, %i.bm
  %.not85 = icmp eq i32 %i.bn, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bg
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.c, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, ptr noundef %i.bs, i32 noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bx) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1458, ptr noundef nonnull @__func__.SetupLockInTable) #18
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.c, %bb.d, %bb.a
  %.076 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.d ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret ptr %.076
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @LockCheckConflicts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  %i.b = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.b                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, %i.g
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %.not6474 = icmp slt i32 %.fr, 1
  br i1 %.not6474, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.n = add nuw i32 %.fr, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.n, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.05175 = phi i32 [ 0, %.lr.ph ], [ %.152, %bb.e ] ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = shl nuw i32 1, %i.o                      ; 2 uses
  %i.q = and i32 %i.p, %i.g
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.p, %i.l
  %.not72 = icmp ne i32 %i.u, 0
  %i.v = sext i1 %.not72 to i32
  %spec.select = add i32 %i.t, %i.v               ; 2 uses
  %i.w = add i32 %spec.select, %.05175
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %spec.select.sink = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %.152 = phi i32 [ %i.w, %bb.d ], [ %.05175, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %spec.select.sink, ptr %i.x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.c, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.e
  %i.y = icmp eq i32 %.152, 0
  br i1 %i.y, label %.critedge, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr @MyProc, align 8          ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 384
  %i.ae = load ptr, ptr %i.ad, align 128
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not65 = icmp eq ptr %i.al, null
  %.not668392 = icmp eq ptr %i.al, %i.aj
  %.not6683 = select i1 %.not65, i1 true, i1 %.not668392
  br i1 %.not6683, label %.critedge, label %.lr.ph87.split

.lr.ph87.split:                                   ; preds = %bb.i, %bb.p
  %.sroa.0.085 = phi ptr [ %i.bd, %bb.p ], [ %i.al, %bb.i ] ; 4 uses
  %.284 = phi i32 [ %.6, %bb.p ], [ %.152, %bb.i ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.085, i64 -32
  %.not67 = icmp eq ptr %3, %i.am
  br i1 %.not67, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.lr.ph87.split
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.085, i64 -16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.aa, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.085, i64 -8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, %i.g                     ; 2 uses
  %.not68 = icmp eq i32 %i.as, 0
  br i1 %.not68, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.o
  %.15079 = phi i32 [ %5, %bb.o ], [ 1, %bb.k ]   ; 3 uses
  %.378 = phi i32 [ %.4, %bb.o ], [ %.284, %bb.k ] ; 2 uses
  %i.at = shl nuw i32 1, %.15079
  %i.au = and i32 %i.at, %i.as
  %.not71 = icmp eq i32 %i.au, 0
  br i1 %.not71, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.preheader
  %4 = sext i32 %.15079 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.a, i64 %4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #19 ; 0 uses
  %i.az = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.14) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1634, ptr noundef nonnull @__func__.LockCheckConflicts) #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.aw, -1
  store i32 %i.ba, ptr %i.av, align 4
  %i.bb = add i32 %.378, -1
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.n
  %.4 = phi i32 [ %i.bb, %bb.n ], [ %.378, %.preheader ] ; 3 uses
  %5 = add i32 %.15079, 1                         ; 2 uses
  %.not69 = icmp sgt i32 %5, %.fr
  br i1 %.not69, label %._crit_edge81, label %.preheader, !llvm.loop !17

._crit_edge81:                                    ; preds = %bb.o
  %.not70 = icmp eq i32 %.4, 0
  br i1 %.not70, label %.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge81, %bb.k, %bb.j, %.lr.ph87.split
  %.6 = phi i32 [ %.284, %.lr.ph87.split ], [ %.284, %bb.k ], [ %.284, %bb.j ], [ %.4, %._crit_edge81 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.085, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not66 = icmp eq ptr %i.bd, %i.aj
  br i1 %.not66, label %.critedge, label %.lr.ph87.split, !llvm.loop !18

.critedge:                                        ; preds = %bb.p, %._crit_edge81, %bb.i, %bb.b, %bb.h, %bb.g, %._crit_edge, %bb.a
  %.457 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.b ], [ true, %bb.i ], [ false, %._crit_edge81 ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GrantLock(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  %i.i = shl nuw i32 1, %2                        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8
  %i.m = load i32, ptr %i.f, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.e
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.m, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = xor i32 %i.i, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = or i32 %i.w, %i.i
  store i32 %i.x, ptr %i.v, align 8
  ret void
}

declare i32 @JoinWaitQueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @hash_search_with_hash_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @DescribeLockTag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @GetLockmodeName(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @LockMethods, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  ret ptr %i.h
}

declare void @GetLockHoldersAndWaiters(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errdetail_log_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @DeadLockReport() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @WaitOnLock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ErrorContextCallback, align 8 ; 7 uses
  %3 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @waitonlock_error_callback, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr @error_context_stack, align 8
  store ptr %i.c, ptr %2, align 8
  store ptr %2, ptr @error_context_stack, align 8
  call void @set_ps_display_suffix(ptr noundef nonnull @.str.39) #18
  store ptr %0, ptr @awaitedLock, align 8
  store ptr %1, ptr @awaitedOwner, align 8
  %i.d = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.e = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.f = call i32 @__sigsetjmp(ptr noundef nonnull %3, i32 noundef 0) #21
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %3, ptr @PG_exception_stack, align 8
  %i.h = call i32 @ProcSleep(ptr noundef %0) #18
  store ptr %i.d, ptr @PG_exception_stack, align 8
  store ptr %i.e, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  store ptr null, ptr @awaitedLock, align 8
  call void @set_ps_display_remove_suffix() #18
  %i.i = load ptr, ptr %2, align 8
  store ptr %i.i, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.h

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr @PG_exception_stack, align 8
  store ptr %i.e, ptr @error_context_stack, align 8
  call void @set_ps_display_remove_suffix() #18
  call void @pg_re_throw() #20
  unreachable
}

declare void @LogAccessExclusiveLock(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GrantAwaitedLock() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @awaitedLock, align 8      ; 4 uses
  %i.b = load ptr, ptr @awaitedOwner, align 8     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8
  br label %GrantLockLocal.exit

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %wide.trip.count.i, %bb.c ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.b, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = load i32, ptr %i.h, align 8
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %GrantLockLocal.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @ResourceOwnerRememberLock(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  br label %GrantLockLocal.exit

GrantLockLocal.exit:                              ; preds = %bb.b, %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @GetAwaitedLock() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @awaitedLock, align 8
  ret ptr %i.a
end_hunk_0

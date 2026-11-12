Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varsup?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@GetNewTransactionId:bb.a

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.bf = icmp ugt i32 %i.af, 2
  %or.cond.i44 = and i1 %i.z, %i.bf
  %i.bg = sub i32 %i.w, %i.af
  %i.bh = icmp sgt i32 %i.bg, -1
  %i.bi = icmp ule i32 %i.af, %i.w
  %.0.i45 = select i1 %or.cond.i44, i1 %i.bh, i1 %i.bi
  br i1 %.0.i45, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @get_database_name(i32 noundef %i.al) #4 ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  %i.bk = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #4 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bk, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bl = sub i32 %i.aj, %i.w                     ; 2 uses
  %i.bm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.bj, i32 noundef %i.bl) #4 ; 0 uses
  br label %.sink.split

bb.s:                                             ; preds = %bb.p
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = sub i32 %i.aj, %i.w                     ; 2 uses
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, i32 noundef %i.al, i32 noundef %i.bn) #4 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.r
  %.sink53 = phi i32 [ %i.bl, %bb.r ], [ %i.bn, %bb.t ]
  %.str.8.sink = phi ptr [ @.str.8, %bb.r ], [ @.str.10, %bb.t ]
  %.sink = phi i32 [ 172, %bb.r ], [ 181, %bb.t ]
  %i.bp = uitofp i32 %.sink53 to double
  %i.bq = fdiv nnan double %i.bp, f0x41DFFFFFFFC00000
  %i.br = fmul nnan double %i.bq, 1.000000e+02
  %i.bs = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.7, double noundef %i.br) #4 ; 0 uses
  %i.bt = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull %.str.8.sink) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.GetNewTransactionId) #4
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q, %bb.s, %bb.o
  %i.bu = load ptr, ptr @MainLWLockArray, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 384
  %i.bw = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.bv, i32 noundef 0) #4 ; 0 uses
  %i.bx = load ptr, ptr @TransamVariables, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload32 = load i64, ptr %i.by, align 8 ; 2 uses
  %i.bz = trunc i64 %.sroa.0.0.copyload32 to i32
  br label %FullTransactionIdAdvance.exit

FullTransactionIdAdvance.exit:                    ; preds = %bb.u, %bb.g
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload32, %bb.u ], [ %.sroa.0.0.copyload, %bb.g ]
  %.0 = phi i32 [ %i.bz, %bb.u ], [ %i.w, %bb.g ] ; 6 uses
  tail call void @ExtendCLOG(i32 noundef %.0) #4
  tail call void @ExtendCommitTs(i32 noundef %.0) #4
  tail call void @ExtendSUBTRANS(i32 noundef %.0) #4
  %i.ca = load ptr, ptr @TransamVariables, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cd = add i64 %i.cc, 1                        ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, 2
  %i.cf = trunc i64 %i.cd to i32
  %i.cg = icmp ult i32 %i.cf, 3
  %or.cond.i46 = and i1 %i.ce, %i.cg
  %i.ch = sub i64 1, %i.cc
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = add i64 %i.cc, 2
  %i.ck = add i64 %i.cj, %i.ci
  %storemerge.i = select i1 %or.cond.i46, i64 %i.ck, i64 %i.cd
  store i64 %storemerge.i, ptr %i.cb, align 8
  br i1 %0, label %bb.w, label %bb.v

bb.v:                                             ; preds = %FullTransactionIdAdvance.exit
  %i.cl = load ptr, ptr @MyProc, align 8          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  store i32 %.0, ptr %i.cm, align 4
  %i.cn = load ptr, ptr @ProcGlobal, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  store i32 %.0, ptr %i.ct, align 4
  br label %bb.z

bb.w:                                             ; preds = %FullTransactionIdAdvance.exit
  %i.cu = load ptr, ptr @ProcGlobal, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr @MyProc, align 8          ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 68
  %i.dd = load i8, ptr %i.dc, align 4             ; 3 uses
  %i.de = icmp ult i8 %i.dd, 64
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.dg = zext nneg i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  store i32 %.0, ptr %i.dh, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !6
  %narrow = add nuw nsw i8 %i.dd, 1               ; 2 uses
  store i8 %narrow, ptr %i.db, align 1
  %i.di = load ptr, ptr @MyProc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 68
  store i8 %narrow, ptr %i.dj, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 1, ptr %i.dk, align 1
  %i.dl = load ptr, ptr @MyProc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 69
  store i8 1, ptr %i.dm, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %i.dn = load ptr, ptr @MainLWLockArray, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 384
  tail call void @LWLockRelease(ptr noundef nonnull %i.do) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.sroa.036.0 = phi i64 [ 1, %bb.d ], [ %.sroa.0.0, %bb.z ]
  ret i64 %.sroa.036.0
}

declare zeroext i1 @IsInParallelMode() local_unnamed_addr #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @RecoveryInProgress() local_unnamed_addr #1

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #1

declare void @SendPostmasterSignal(i32 noundef) local_unnamed_addr #1

declare ptr @get_database_name(i32 noundef) local_unnamed_addr #1

declare i32 @errcode(i32 noundef) local_unnamed_addr #1

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #1

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #1

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #1

declare void @ExtendCLOG(i32 noundef) local_unnamed_addr #1

declare void @ExtendCommitTs(i32 noundef) local_unnamed_addr #1

declare void @ExtendSUBTRANS(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ReadNextFullTransactionId() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #4 ; 0 uses
  %i.d = load ptr, ptr @TransamVariables, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %i.f = load ptr, ptr @MainLWLockArray, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  tail call void @LWLockRelease(ptr noundef nonnull %i.g) #4
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: nounwind uwtable
define dso_local void @AdvanceNextFullTransactionIdPastXid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @TransamVariables, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = icmp ugt i32 %0, 2
  %i.f = icmp ugt i32 %i.d, 2
  %or.cond.i = and i1 %i.e, %i.f
  %i.g = sub i32 %0, %i.d
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = icmp uge i32 %0, %i.d
  %.0.i = select i1 %or.cond.i, i1 %i.h, i1 %i.i
  %1 = lshr i64 %i.c, 32                          ; 2 uses
  br i1 %.0.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %0, 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 3) ; 2 uses
  %i.k = icmp ult i32 %spec.store.select, %i.d
  br i1 %i.k, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %1, 1
  %i.m = and i64 %i.l, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.m, %bb.c ], [ %1, %bb.b ]
  %i.n = shl nuw i64 %.0, 32
  %i.o = zext i32 %spec.store.select to i64
  %i.p = or disjoint i64 %i.n, %i.o
  %i.q = load ptr, ptr @MainLWLockArray, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.r, i32 noundef 0) #4 ; 0 uses
  %i.t = load ptr, ptr @TransamVariables, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.p, ptr %i.u, align 8
  %i.v = load ptr, ptr @MainLWLockArray, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  tail call void @LWLockRelease(ptr noundef nonnull %i.w) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AdvanceOldestClogXid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5632
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #4 ; 0 uses
  %i.d = load ptr, ptr @TransamVariables, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp ugt i32 %i.f, 2
  %i.h = icmp ugt i32 %0, 2
  %or.cond.i = and i1 %i.h, %i.g
  %i.i = sub i32 %i.f, %0
  %i.j = icmp slt i32 %i.i, 0
  %i.k = icmp ult i32 %i.f, %0
  %.0.i = select i1 %or.cond.i, i1 %i.j, i1 %i.k
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr @MainLWLockArray, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 5632
  tail call void @LWLockRelease(ptr noundef nonnull %i.m) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SetTransactionIdLimit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, 2147483647                   ; 2 uses
  %i.b = icmp ult i32 %i.a, 3
  %i.c = add i32 %0, -2147483646
  %spec.select = select i1 %i.b, i32 %i.c, i32 %i.a ; 8 uses
  %i.d = add i32 %spec.select, -3000000           ; 2 uses
  %i.e = icmp ult i32 %i.d, 3
  %i.f = add nuw nsw i32 %spec.select, -3000003
  %.041 = select i1 %i.e, i32 %i.f, i32 %i.d
  %i.g = add i32 %spec.select, -100000000         ; 2 uses
  %i.h = icmp ult i32 %i.g, 3
  %i.i = add nuw nsw i32 %spec.select, -100000003
  %.042 = select i1 %i.h, i32 %i.i, i32 %i.g      ; 3 uses
  %i.j = load i32, ptr @autovacuum_freeze_max_age, align 4
  %i.k = add i32 %i.j, %0                         ; 3 uses
  %i.l = icmp ult i32 %i.k, 3
  %i.m = add nuw nsw i32 %i.k, 3
  %.043 = select i1 %i.l, i32 %i.m, i32 %i.k      ; 3 uses
  %i.n = load ptr, ptr @MainLWLockArray, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.o, i32 noundef 0) #4 ; 0 uses
  %i.q = load ptr, ptr @TransamVariables, align 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %.043, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %.042, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %.041, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 %spec.select, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32                    ; 7 uses
  %i.aa = load ptr, ptr @MainLWLockArray, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  tail call void @LWLockRelease(ptr noundef nonnull %i.ab) #4
  %i.ac = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #4
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i32 noundef %spec.select, i32 noundef %1) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__func__.SetTransactionIdLimit) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = icmp ugt i32 %i.z, 2                    ; 2 uses
  %i.af = sub i32 %i.z, %.043
  %i.ag = icmp sgt i32 %i.af, -1
  %i.ah = icmp ule i32 %.043, %i.z
  %.0.i = select i1 %i.ae, i1 %i.ag, i1 %i.ah
  %i.ai = load i8, ptr @IsUnderPostmaster, align 1, !range !4
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond = select i1 %.0.i, i1 %i.aj, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.ak = load i8, ptr @InRecovery, align 1, !range !4 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond3 = select i1 %or.cond.not, i1 true, i1 %i.al
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SendPostmasterSignal(i32 noundef 4) #4
  %.pre = load i8, ptr @InRecovery, align 1, !range !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi i8 [ %.pre, %bb.d ], [ %i.ak, %bb.c ]
  %i.an = sub i32 %i.z, %.042
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = icmp ugt i32 %.042, %i.z
  %.0.i53 = select i1 %i.ae, i1 %i.ao, i1 %i.ap
  %i.aq = trunc nuw i8 %i.am to i1
  %or.cond5 = select i1 %.0.i53, i1 true, i1 %i.aq
  br i1 %or.cond5, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call zeroext i1 @IsTransactionState() #4
  br i1 %i.ar, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.as = tail call ptr @get_database_name(i32 noundef %1) #4 ; 2 uses
  %.not51 = icmp eq ptr %i.as, null
  br i1 %.not51, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #4
  br i1 %i.at, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.au = sub i32 %spec.select, %i.z              ; 2 uses
  %i.av = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.as, i32 noundef %i.au) #4 ; 0 uses
  br label %.sink.split

.thread:                                          ; preds = %bb.f, %bb.g
  %i.aw = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #4
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ax = sub i32 %spec.select, %i.z              ; 2 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %i.ax) #4 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink59 = phi i32 [ %i.au, %bb.i ], [ %i.ax, %bb.j ]
  %.sink = phi i32 [ 491, %bb.i ], [ 500, %bb.j ]
  %i.az = uitofp i32 %.sink59 to double
  %i.ba = fdiv nnan double %i.az, f0x41DFFFFFFFC00000
  %i.bb = fmul nnan double %i.ba, 1.000000e+02
  %i.bc = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.7, double noundef %i.bb) #4 ; 0 uses
  %i.bd = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.10) #4 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.SetTransactionIdLimit) #4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %.thread, %bb.e
  ret void
}

declare zeroext i1 @IsTransactionState() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @ForceTransactionIdLimitUpdate() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #4 ; 0 uses
  %i.d = load ptr, ptr @TransamVariables, align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.l = load i32, ptr %i.k, align 4
  %i.m = load ptr, ptr @MainLWLockArray, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  tail call void @LWLockRelease(ptr noundef nonnull %i.n) #4
  %i.o = icmp ult i32 %i.j, 3
end_hunk_0

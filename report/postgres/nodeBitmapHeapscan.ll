Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeBitmapHeapscan?download=true
inline.NumInlined: 27
inline.NumDeleted: 21
begin_hunk_0_@ExecBitmapHeapInstrumentInitDSM:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecBitmapHeapInstrumentInitWorker(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = add nsw i64 %i.i, -3458764513820540928
  %i.k = tail call ptr @shm_toc_lookup(ptr noundef %i.d, i64 noundef %i.j, i1 noundef zeroext false) #5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecBitmapHeapRetrieveInstrumentation(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, 72
  %i.g = add nsw i64 %i.f, 8                      ; 2 uses
  %i.h = tail call ptr @palloc(i64 noundef %i.g) #5 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @ExecScan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @BitmapHeapNext(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @MultiExecProcNode(ptr noundef %i.p) #5 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.q, ptr %i.r, align 8
  %.not35.i = icmp eq ptr %i.q, null
  br i1 %.not35.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 501
  br i1 %i.t, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__func__.BitmapTableScanSetup) #5
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %i.z = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.w, i8 1, ptr nonnull elementtype(i8) %i.w) #5, !srcloc !14
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %SpinLockAcquire.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @s_lock(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.2, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #5 ; 0 uses
  br label %SpinLockAcquire.exit.i.i

SpinLockAcquire.exit.i.i:                         ; preds = %bb.h, %bb.g
  %i.ab = load i32, ptr %i.x, align 4             ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.i

bb.i:                                             ; preds = %SpinLockAcquire.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile i8 0, ptr %i.w, align 4
  %.not.i.i = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i, label %bb.j, label %BitmapShouldInitializeSharedState.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @ConditionVariableSleep(ptr noundef nonnull %i.y, i32 noundef 134217768) #5
  br label %bb.g

BitmapShouldInitializeSharedState.exit.i:         ; preds = %bb.i
  %i.ad = tail call zeroext i1 @ConditionVariableCancelSleep() #5 ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %SpinLockAcquire.exit.i.i
  store i32 1, ptr %i.x, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile i8 0, ptr %i.w, align 4
  %i.ae = tail call zeroext i1 @ConditionVariableCancelSleep() #5 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call ptr @MultiExecProcNode(ptr noundef %i.ag) #5 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.ah, ptr %i.ai, align 8
  %.not36.i = icmp eq ptr %i.ah, null
  br i1 %.not36.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.ah, align 4
  %i.ak = icmp eq i32 %i.aj, 501
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__func__.BitmapTableScanSetup) #5
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.an = tail call i64 @tbm_prepare_shared_iterate(ptr noundef nonnull %i.ah) #5
  store i64 %i.an, ptr %i.j, align 8
  %i.ao = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.w, i8 1, ptr nonnull elementtype(i8) %i.w) #5, !srcloc !14
  %.not.i.i39.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i39.i, label %BitmapDoneInitializingSharedState.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call i32 @s_lock(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.2, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #5 ; 0 uses
  br label %BitmapDoneInitializingSharedState.exit.i

BitmapDoneInitializingSharedState.exit.i:         ; preds = %bb.o, %bb.n
  store i32 2, ptr %i.x, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile i8 0, ptr %i.w, align 8
  tail call void @ConditionVariableBroadcast(ptr noundef nonnull %i.y) #5
  br label %bb.p

bb.p:                                             ; preds = %BitmapDoneInitializingSharedState.exit.i, %BitmapShouldInitializeSharedState.exit.i
  %i.aq = load i64, ptr %i.j, align 8
  %.in.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.pre.i = load ptr, ptr %.in.phi.trans.insert.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %i.ar = phi ptr [ %.pre.i, %bb.p ], [ %i.q, %bb.d ]
  %i.as = phi i64 [ %i.aq, %bb.p ], [ 0, %bb.d ]
  %i.at = tail call { i8, ptr } @tbm_begin_iterate(ptr noundef %i.ar, ptr noundef %i.n, i64 noundef %i.as) #5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.av, null
  br i1 %.not37.i, label %bb.r, label %BitmapTableScanSetup.exit

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call zeroext i1 @ScanRelIsReadOnly(ptr noundef nonnull %0) #5
  %i.ax = load i32, ptr @CheckXidAlive, align 4
  %1 = icmp ne i32 %i.ax, 0
  %i.ay = load i8, ptr @bsysscan, align 1, !range !12
  %2 = icmp eq i8 %i.ay, 0
  %.not8.i.i.i = select i1 %1, i1 %2, i1 false
  br i1 %.not8.i.i.i, label %bb.s, label %table_beginscan_bm.exit.i, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.az = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 931, ptr noundef nonnull @__func__.table_beginscan_common) #5
  unreachable

table_beginscan_bm.exit.i:                        ; preds = %bb.r
  %i.bb = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 228
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 7
  %i.bj = and i32 %i.bi, 2048
  %.1.i = select i1 %i.aw, i32 1282, i32 258
  %i.bk = or disjoint i32 %i.bj, %.1.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call ptr %i.bo(ptr noundef %i.bf, ptr noundef %i.bd, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef %i.bk) #5, !inline_history !8 ; 2 uses
  store ptr %i.bp, ptr %i.au, align 8
  br label %BitmapTableScanSetup.exit

BitmapTableScanSetup.exit:                        ; preds = %bb.q, %table_beginscan_bm.exit.i
  %i.bq = phi ptr [ %i.bp, %table_beginscan_bm.exit.i ], [ %i.av, %bb.q ] ; 3 uses
  %i.br = extractvalue { i8, ptr } %i.at, 1
  %i.bs = extractvalue { i8, ptr } %i.at, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i8 %i.bs, ptr %i.bt, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i, i8 0, i64 7, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.br, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i8 1, ptr %i.f, align 8
  br label %bb.t

bb.t:                                             ; preds = %BitmapTableScanSetup.exit, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.by = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 320
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 336
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call zeroext i1 %i.cd(ptr noundef nonnull %i.by, ptr noundef %i.e, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bw) #5, !inline_history !9
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.aa
  %i.ck = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.w, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  call void @ProcessInterrupts() #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = load i8, ptr %i.bv, align 8, !range !12, !noundef !13
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  store ptr %i.e, ptr %i.cf, align 8
  %i.cn = load ptr, ptr %i.cg, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %ExecQualAndReset.exit.thread, label %ExecQualAndReset.exit

ExecQualAndReset.exit.thread:                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.cp = load ptr, ptr %i.ch, align 8
  call void @MemoryContextReset(ptr noundef %i.cp) #5
  br label %.loopexit

ExecQualAndReset.exit:                            ; preds = %bb.x
  %i.cq = load ptr, ptr %i.ch, align 8
  %i.cr = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.cq, ptr @CurrentMemoryContext, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call i64 %i.ct(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #5, !inline_history !0
  store ptr %i.cr, ptr @CurrentMemoryContext, align 8
  %.not23 = icmp eq i64 %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.cv = load ptr, ptr %i.ch, align 8
  call void @MemoryContextReset(ptr noundef %i.cv) #5
  br i1 %.not23, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %ExecQualAndReset.exit
  %i.cw = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not21 = icmp eq ptr %i.cw, null
  br i1 %.not21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 432 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8
  %i.cz = fadd double %i.cy, 1.000000e+00
  store double %i.cz, ptr %i.cx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.da = load ptr, ptr %i.cj, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef %i.e) #5, !inline_history !10
  %i.dd = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 320
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 336
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call zeroext i1 %i.di(ptr noundef nonnull %i.dd, ptr noundef %i.e, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bw) #5, !inline_history !9
  br i1 %i.dj, label %bb.u, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.aa, %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef %i.e) #5, !inline_history !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %ExecQualAndReset.exit, %ExecQualAndReset.exit.thread, %._crit_edge
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @BitmapHeapRecheck(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ExecQualAndReset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.i, ptr @CurrentMemoryContext, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i64 %i.l(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #5, !inline_history !0
  store ptr %i.j, ptr @CurrentMemoryContext, align 8
  %i.n = icmp ne i64 %i.m, 0
  br label %ExecQualAndReset.exit

ExecQualAndReset.exit:                            ; preds = %bb.a, %bb.b
  %.0.i.i = phi i1 [ %i.n, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void @MemoryContextReset(ptr noundef %i.p) #5
  ret i1 %.0.i.i
}

declare void @ProcessInterrupts() local_unnamed_addr #2

declare ptr @MultiExecProcNode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @tbm_prepare_shared_iterate(ptr noundef) local_unnamed_addr #2

declare { i8, ptr } @tbm_begin_iterate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @ScanRelIsReadOnly(ptr noundef) local_unnamed_addr #2

declare void @ConditionVariableSleep(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @ConditionVariableCancelSleep() local_unnamed_addr #2

declare i32 @s_lock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ConditionVariableBroadcast(ptr noundef) local_unnamed_addr #2

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = !{i64 2149451688}
!8 = distinct !{null, null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !18}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{i64 1954120, i64 1954136}
!15 = !{i64 2149451894}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0

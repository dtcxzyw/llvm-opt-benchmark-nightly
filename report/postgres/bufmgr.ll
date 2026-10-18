Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bufmgr?download=true
inline.NumInlined: 640
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@CheckPointBuffers:bb.a
LockBufHdr.exit.i:                                ; preds = %._crit_edge.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %i.l, %bb.b ], [ %i.r, %._crit_edge.i.i ] ; 2 uses
  %i.t = or disjoint i64 %.lcssa.i.i, 4194304     ; 2 uses
  %i.u = or i64 %.lcssa.i.i, %spec.select.i
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %.split.i, label %.split98.i

.split98.i:                                       ; preds = %LockBufHdr.exit.i, %.split98.i
  %.0.i.i = phi i64 [ %i.y, %.split98.i ], [ %i.t, %LockBufHdr.exit.i ] ; 2 uses
  %i.w = and i64 %.0.i.i, -4194305
  %i.x = call { i64, i8 } asm sideeffect "\09lock\09\09\09\09\0A\09cmpxchgq\09$4,$5\09\0A   setz\09\09$2\09\09\0A", "={ax},=*m,=q,{ax},r,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.k, i64 %.0.i.i, i64 %i.w, ptr nonnull elementtype(i64) %i.k) #20, !srcloc !12 ; 2 uses
  %i.y = extractvalue { i64, i8 } %i.x, 0
  %i.z = extractvalue { i64, i8 } %i.x, 1
  %.not.i106.i = icmp eq i8 %i.z, 0
  br i1 %.not.i106.i, label %.split98.i, label %UnlockBufHdrExt.exit.i

.split.i:                                         ; preds = %LockBufHdr.exit.i
  %i.aa = load ptr, ptr @CkptBufferIds, align 8
  %i.ab = sext i32 %.096111.i to i64
  %i.ac = getelementptr inbounds [20 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ae, ptr %i.ad, align 4
  %i.af = load i32, ptr %i.j, align 8
  store i32 %i.af, ptr %i.ac, align 4
  %i.ag = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load i32, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %.val.i, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %i.j, i64 12
  %.val105.i = load i32, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.val105.i, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.al, ptr %i.am, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.split.i
  %.0.i107.i = phi i64 [ %i.t, %.split.i ], [ %i.aq, %bb.c ] ; 2 uses
  %i.an = and i64 %.0.i107.i, -1077936129
  %i.ao = or disjoint i64 %i.an, 1073741824
  %i.ap = call { i64, i8 } asm sideeffect "\09lock\09\09\09\09\0A\09cmpxchgq\09$4,$5\09\0A   setz\09\09$2\09\09\0A", "={ax},=*m,=q,{ax},r,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.k, i64 %.0.i107.i, i64 %i.ao, ptr nonnull elementtype(i64) %i.k) #20, !srcloc !12 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 0
  %i.ar = extractvalue { i64, i8 } %i.ap, 1
  %.not.i108.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i108.i, label %bb.c, label %UnlockBufHdrExt.exit.loopexit.i

UnlockBufHdrExt.exit.loopexit.i:                  ; preds = %bb.c
  %i.as = add i32 %.096111.i, 1
  br label %UnlockBufHdrExt.exit.i

UnlockBufHdrExt.exit.i:                           ; preds = %.split98.i, %UnlockBufHdrExt.exit.loopexit.i
  %.197.i = phi i32 [ %i.as, %UnlockBufHdrExt.exit.loopexit.i ], [ %.096111.i, %.split98.i ] ; 7 uses
  %i.at = load volatile i32, ptr @ProcSignalBarrierPending, align 4
  %.not104.i = icmp eq i32 %i.at, 0
  br i1 %.not104.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %UnlockBufHdrExt.exit.i
  call void @ProcessProcSignalBarrier() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %UnlockBufHdrExt.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr @NBuffers, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.e
  %i.ax = icmp eq i32 %.197.i, 0
  br i1 %i.ax, label %BufferSync.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  store ptr @checkpoint_flush_after, ptr %2, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ay, align 8
  %i.az = load ptr, ptr @CkptBufferIds, align 8
  %i.ba = sext i32 %.197.i to i64
  call fastcc void @sort_checkpoint_bufferids(ptr noundef %i.az, i64 noundef %i.ba)
  %i.bb = icmp sgt i32 %.197.i, 0
  br i1 %i.bb, label %.lr.ph118.preheader.i, label %._crit_edge119.thread.i

._crit_edge119.thread.i:                          ; preds = %bb.f
  %i.bc = call ptr @binaryheap_allocate(i32 noundef 0, ptr noundef nonnull @ts_ckpt_progress_comparator, ptr noundef null) #20
  br label %._crit_edge125.i

.lr.ph118.preheader.i:                            ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %.197.i to i64
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.n, %.lr.ph118.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph118.preheader.i ], [ %indvars.iv.next136.i, %bb.n ] ; 3 uses
  %.087115.i = phi i32 [ 0, %.lr.ph118.preheader.i ], [ %.188.i, %bb.n ] ; 3 uses
  %.089114.i = phi ptr [ null, %.lr.ph118.preheader.i ], [ %.2.i, %bb.n ] ; 4 uses
  %.094113.i = phi i32 [ 0, %.lr.ph118.preheader.i ], [ %.195.i, %bb.n ] ; 4 uses
  %i.bd = load ptr, ptr @CkptBufferIds, align 8
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.bd, i64 %indvars.iv135.i
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = icmp ne i32 %.087115.i, 0
  %.not102.i = icmp eq i32 %.087115.i, %i.bf
  %or.cond.i = select i1 %i.bg, i1 %.not102.i, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph118.i
  %i.bh = add i32 %.094113.i, 1                   ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, 40                   ; 2 uses
  %i.bk = icmp eq ptr %.089114.i, null
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = call ptr @palloc(i64 noundef %i.bj) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = call ptr @repalloc(ptr noundef nonnull %.089114.i, i64 noundef %i.bj) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.190.i = phi ptr [ %i.bl, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  %i.bn = sext i32 %.094113.i to i64
  %i.bo = getelementptr inbounds [40 x i8], ptr %.190.i, i64 %i.bn ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i8 0, i64 40, i1 false)
  store i32 %i.bf, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = trunc nuw nsw i64 %indvars.iv135.i to i32
  store i32 %i.bq, ptr %i.bp, align 8
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph118.i
  %i.br = add i32 %.094113.i, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [40 x i8], ptr %.089114.i, i64 %i.bs
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.195.i = phi i32 [ %i.bh, %bb.j ], [ %.094113.i, %bb.k ] ; 4 uses
  %.2.i = phi ptr [ %.190.i, %bb.j ], [ %.089114.i, %bb.k ] ; 4 uses
  %.188.i = phi i32 [ %i.bf, %bb.j ], [ %.087115.i, %bb.k ]
  %.0.i = phi ptr [ %i.bo, %bb.j ], [ %i.bt, %bb.k ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8
  %i.bx = load volatile i32, ptr @ProcSignalBarrierPending, align 4
  %.not103.i = icmp eq i32 %i.bx, 0
  br i1 %.not103.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ProcessProcSignalBarrier() #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge119.i, label %.lr.ph118.i, !llvm.loop !36

._crit_edge119.i:                                 ; preds = %bb.n
  %i.by = call ptr @binaryheap_allocate(i32 noundef %.195.i, ptr noundef nonnull @ts_ckpt_progress_comparator, ptr noundef null) #20 ; 3 uses
  %i.bz = icmp sgt i32 %.195.i, 0
  br i1 %i.bz, label %.lr.ph124.i, label %._crit_edge125.i

.lr.ph124.i:                                      ; preds = %._crit_edge119.i
  %i.ca = uitofp nneg i32 %.197.i to double
  %wide.trip.count141.i = zext nneg i32 %.195.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph124.i
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph124.i ], [ %indvars.iv.next139.i, %bb.o ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %.2.i, i64 %indvars.iv138.i ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fdiv double %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store double %i.cf, ptr %i.cg, align 8
  %i.ch = ptrtoint ptr %i.cb to i64
  call void @binaryheap_add_unordered(ptr noundef %i.by, i64 noundef %i.ch) #20
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %wide.trip.count141.i
  br i1 %exitcond142.not.i, label %._crit_edge125.i, label %bb.o, !llvm.loop !37

._crit_edge125.i:                                 ; preds = %bb.o, %._crit_edge119.i, %._crit_edge119.thread.i
  %i.ci = phi ptr [ %i.bc, %._crit_edge119.thread.i ], [ %i.by, %._crit_edge119.i ], [ %i.by, %bb.o ] ; 7 uses
  %.089.lcssa146.i = phi ptr [ null, %._crit_edge119.thread.i ], [ %.2.i, %._crit_edge119.i ], [ %.2.i, %bb.o ]
  call void @binaryheap_build(ptr noundef %i.ci) #20
  %i.cj = load i32, ptr %i.ci, align 8
  %.not99126.i = icmp eq i32 %i.cj, 0
  br i1 %.not99126.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %._crit_edge125.i
  %i.ck = sitofp i32 %.197.i to double
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph130.i
  %.091128.i = phi i32 [ 0, %.lr.ph130.i ], [ %.192.i, %bb.v ] ; 3 uses
  %.093127.i = phi i32 [ 0, %.lr.ph130.i ], [ %i.cx, %bb.v ]
  %i.cl = call i64 @binaryheap_first(ptr noundef nonnull %i.ci) #20 ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr               ; 5 uses
  %i.cn = load ptr, ptr @CkptBufferIds, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [20 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.cu = load ptr, ptr @BufferDescriptors, align 8
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = add i32 %.093127.i, 1                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = load volatile i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, 1073741824
  %.not100.i = icmp eq i64 %i.da, 0
  br i1 %.not100.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = call fastcc i32 @SyncOneBuffer(i32 noundef %i.ct, i1 noundef zeroext false, ptr noundef nonnull %2)
  %i.dc = and i32 %i.db, 1
  %.not101.i = icmp eq i32 %i.dc, 0
  br i1 %.not101.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 64), align 8
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 64), align 8
  %i.df = add i32 %.091128.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.192.i = phi i32 [ %i.df, %bb.r ], [ %.091128.i, %bb.q ], [ %.091128.i, %bb.p ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %4 = load double, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %5 = load double, ptr %i.dg, align 8
  %6 = fadd double %4, %5
  store double %6, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 28 ; 2 uses
  %i.di = load <2 x i32>, ptr %i.dh, align 4
  %i.dj = add <2 x i32> %i.di, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.dj, ptr %i.dh, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = extractelement <2 x i32> %i.dj, i64 0
  %i.dn = icmp eq i32 %i.dm, %i.dl
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = call i64 @binaryheap_remove_first(ptr noundef nonnull %i.ci) #20 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @binaryheap_replace_first(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dp = sitofp i32 %i.cx to double
  %i.dq = fdiv double %i.dp, %i.ck
  call void @CheckpointWriteDelay(i32 noundef %0, double noundef %i.dq) #20
  %i.dr = load i32, ptr %i.ci, align 8
  %.not99.i = icmp eq i32 %i.dr, 0
  br i1 %.not99.i, label %._crit_edge131.i, label %bb.p, !llvm.loop !38

._crit_edge131.i:                                 ; preds = %bb.v, %._crit_edge125.i
  %.091.lcssa.i = phi i32 [ 0, %._crit_edge125.i ], [ %.192.i, %bb.v ]
  call void @IssuePendingWritebacks(ptr noundef nonnull %2, i32 noundef 3)
  call void @pfree(ptr noundef %.089.lcssa146.i) #20
  call void @binaryheap_free(ptr noundef nonnull %i.ci) #20
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 40), align 8
  %i.dt = add i32 %i.ds, %.091.lcssa.i
  store i32 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @CheckpointStats, i64 40), align 8
  br label %BufferSync.exit

BufferSync.exit:                                  ; preds = %bb.a, %._crit_edge.i, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @BufferGetBlockNumber(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = xor i32 %0, -1
  %i.c = load ptr, ptr @LocalBufferDescriptors, align 8
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %0, -1
  %i.g = load ptr, ptr @BufferDescriptors, align 8
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @BufferGetTag(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = xor i32 %0, -1
  %i.c = load ptr, ptr @LocalBufferDescriptors, align 8
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %0, -1
  %i.g = load ptr, ptr @BufferDescriptors, align 8
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.c ]  ; 4 uses
  %i.j = load i64, ptr %.0, align 4
  %i.k = getelementptr i8, ptr %.0, i64 8
  %.val.i = load i32, ptr %i.k, align 4
  store i64 %i.j, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.val.i, ptr %.sroa.4.0..sroa_idx, align 4
  %i.l = getelementptr i8, ptr %.0, i64 12
  %.0.val = load i32, ptr %i.l, align 4
  store i32 %.0.val, ptr %2, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RelationGetNumberOfBlocksInFork(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 119
  %i.d = load i8, ptr %i.c, align 1
  switch i8 %i.d, label %bb.e [
    i8 114, label %bb.b
    i8 116, label %bb.b
    i8 109, label %bb.b
    i8 105, label %bb.c
    i8 83, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull %0, i32 noundef %1) #20, !inline_history !39
  %i.j = add i64 %i.i, 8191
  %i.k = lshr i64 %i.j, 13
  %i.l = trunc i64 %i.k to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %RelationGetSmgr.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, i32 noundef %i.q) #20 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8
  tail call void @smgrpin(ptr noundef %i.r) #20
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %RelationGetSmgr.exit

RelationGetSmgr.exit:                             ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %bb.c ]
  %i.t = tail call i32 @smgrnblocks(ptr noundef %i.s, i32 noundef %1) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %RelationGetSmgr.exit, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.t, %RelationGetSmgr.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local zeroext i1 @BufferIsPermanent(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  %i.c = load ptr, ptr @BufferDescriptors, align 8
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load volatile i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 2147483648
  %i.i = icmp ne i64 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i64 @BufferGetLSNAtomic(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.c = xor i32 %0, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @BufferBlocks, align 8
  %i.h = add nsw i32 %0, -1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 13
end_hunk_0
begin_hunk_1_@sort_pending_writebacks_med3:bb.a
  br i1 %i.ab, label %buffertag_comparator.exit41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp sgt i32 %.val24.i24, %.val23.i25
  br i1 %i.ac, label %buffertag_comparator.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %buffertag_comparator.exit41, label %buffertag_comparator.exit28

buffertag_comparator.exit28:                      ; preds = %bb.p, %bb.o, %rlocator_comparator.exit.i22, %bb.l, %bb.j
  %i.ai = icmp ult i32 %.val.i.i, %.val.i25.i17
  br i1 %i.ai, label %buffertag_comparator.exit41, label %bb.q

bb.q:                                             ; preds = %buffertag_comparator.exit28
  %i.aj = icmp ugt i32 %.val.i.i, %.val.i25.i17
  br i1 %i.aj, label %buffertag_comparator.exit41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp samesign ult i64 %.sroa.028.4.extract.shift.i, %.sroa.0.4.extract.shift.i21
  br i1 %i.ak, label %buffertag_comparator.exit41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = icmp samesign ugt i64 %.sroa.028.4.extract.shift.i, %.sroa.0.4.extract.shift.i21
  br i1 %i.al, label %buffertag_comparator.exit41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = icmp ult i32 %.sroa.028.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i20
  br i1 %i.am, label %buffertag_comparator.exit41, label %rlocator_comparator.exit.i35

rlocator_comparator.exit.i35:                     ; preds = %bb.t
  %.not.i36 = icmp ugt i32 %.sroa.028.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i20
  br i1 %.not.i36, label %buffertag_comparator.exit41, label %bb.u

bb.u:                                             ; preds = %rlocator_comparator.exit.i35
  %i.an = getelementptr i8, ptr %0, i64 12
  %.val24.i37 = load i32, ptr %i.an, align 4      ; 2 uses
  %i.ao = getelementptr i8, ptr %2, i64 12
  %.val23.i38 = load i32, ptr %i.ao, align 4      ; 2 uses
  %i.ap = icmp slt i32 %.val24.i37, %.val23.i38
  br i1 %i.ap, label %buffertag_comparator.exit41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp sgt i32 %.val24.i37, %.val23.i38
  br i1 %i.aq, label %buffertag_comparator.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp ult i32 %i.as, %i.au
  %spec.select = select i1 %i.av, ptr %2, ptr %0
  br label %buffertag_comparator.exit41

buffertag_comparator.exit:                        ; preds = %bb.h, %bb.g, %rlocator_comparator.exit.i, %bb.d, %bb.b
  %i.aw = load i64, ptr %2, align 4               ; 2 uses
  %i.ax = getelementptr i8, ptr %2, i64 8
  %.val.i25.i43 = load i32, ptr %i.ax, align 4    ; 4 uses
  %.sroa.0.0.extract.trunc.i46 = trunc i64 %i.aw to i32 ; 4 uses
  %.sroa.0.4.extract.shift.i47 = lshr i64 %i.aw, 32 ; 4 uses
  %i.ay = icmp ult i32 %.val.i25.i, %.val.i25.i43
  br i1 %i.ay, label %buffertag_comparator.exit54.thread, label %bb.x

bb.x:                                             ; preds = %buffertag_comparator.exit
  %i.az = icmp ugt i32 %.val.i25.i, %.val.i25.i43
  br i1 %i.az, label %buffertag_comparator.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = icmp samesign ult i64 %.sroa.0.4.extract.shift.i, %.sroa.0.4.extract.shift.i47
  br i1 %i.ba, label %buffertag_comparator.exit54.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = icmp samesign ugt i64 %.sroa.0.4.extract.shift.i, %.sroa.0.4.extract.shift.i47
  br i1 %i.bb, label %buffertag_comparator.exit41, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp ult i32 %.sroa.0.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i46
  br i1 %i.bc, label %buffertag_comparator.exit54.thread, label %rlocator_comparator.exit.i48

rlocator_comparator.exit.i48:                     ; preds = %bb.aa
  %.not.i49 = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i46
  br i1 %.not.i49, label %buffertag_comparator.exit41, label %bb.ab

bb.ab:                                            ; preds = %rlocator_comparator.exit.i48
  %i.bd = getelementptr i8, ptr %1, i64 12
  %.val24.i50 = load i32, ptr %i.bd, align 4      ; 2 uses
  %i.be = getelementptr i8, ptr %2, i64 12
  %.val23.i51 = load i32, ptr %i.be, align 4      ; 2 uses
  %i.bf = icmp slt i32 %.val24.i50, %.val23.i51
  br i1 %i.bf, label %buffertag_comparator.exit54.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = icmp sgt i32 %.val24.i50, %.val23.i51
  br i1 %i.bg, label %buffertag_comparator.exit41, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp ugt i32 %i.bi, %i.bk
  br i1 %i.bl, label %buffertag_comparator.exit41, label %buffertag_comparator.exit54.thread

buffertag_comparator.exit54.thread:               ; preds = %bb.aa, %buffertag_comparator.exit, %bb.y, %bb.ab, %bb.ad
  %i.bm = icmp ult i32 %.val.i.i, %.val.i25.i43
  br i1 %i.bm, label %buffertag_comparator.exit41, label %bb.ae

bb.ae:                                            ; preds = %buffertag_comparator.exit54.thread
  %i.bn = icmp ugt i32 %.val.i.i, %.val.i25.i43
  br i1 %i.bn, label %buffertag_comparator.exit41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = icmp samesign ult i64 %.sroa.028.4.extract.shift.i, %.sroa.0.4.extract.shift.i47
  br i1 %i.bo, label %buffertag_comparator.exit41, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = icmp samesign ugt i64 %.sroa.028.4.extract.shift.i, %.sroa.0.4.extract.shift.i47
  br i1 %i.bp, label %buffertag_comparator.exit41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bq = icmp ult i32 %.sroa.028.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i46
  br i1 %i.bq, label %buffertag_comparator.exit41, label %rlocator_comparator.exit.i61

rlocator_comparator.exit.i61:                     ; preds = %bb.ah
  %.not.i62 = icmp ugt i32 %.sroa.028.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i46
  br i1 %.not.i62, label %buffertag_comparator.exit41, label %bb.ai

bb.ai:                                            ; preds = %rlocator_comparator.exit.i61
  %i.br = getelementptr i8, ptr %0, i64 12
  %.val24.i63 = load i32, ptr %i.br, align 4      ; 2 uses
  %i.bs = getelementptr i8, ptr %2, i64 12
  %.val23.i64 = load i32, ptr %i.bs, align 4      ; 2 uses
  %i.bt = icmp slt i32 %.val24.i63, %.val23.i64
  br i1 %i.bt, label %buffertag_comparator.exit41, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = icmp sgt i32 %.val24.i63, %.val23.i64
  br i1 %i.bu, label %buffertag_comparator.exit41, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp ult i32 %i.bw, %i.by
  %spec.select78 = select i1 %i.bz, ptr %0, ptr %2
  br label %buffertag_comparator.exit41

buffertag_comparator.exit41:                      ; preds = %bb.ad, %bb.ak, %bb.w, %bb.ac, %bb.x, %rlocator_comparator.exit.i48, %bb.z, %bb.m, %bb.i, %bb.k, %bb.n, %bb.p, %bb.ae, %bb.ag, %rlocator_comparator.exit.i61, %bb.aj, %bb.ai, %bb.af, %buffertag_comparator.exit54.thread, %bb.ah, %bb.q, %bb.s, %rlocator_comparator.exit.i35, %bb.v, %bb.u, %bb.r, %buffertag_comparator.exit28, %bb.t
  %i.ca = phi ptr [ %1, %bb.ad ], [ %1, %bb.m ], [ %0, %bb.ah ], [ %1, %bb.ac ], [ %0, %bb.q ], [ %0, %bb.s ], [ %0, %rlocator_comparator.exit.i35 ], [ %0, %bb.v ], [ %1, %bb.x ], [ %2, %bb.u ], [ %2, %bb.r ], [ %2, %buffertag_comparator.exit28 ], [ %2, %bb.t ], [ %spec.select, %bb.w ], [ %2, %bb.ae ], [ %2, %bb.ag ], [ %2, %rlocator_comparator.exit.i61 ], [ %2, %bb.aj ], [ %spec.select78, %bb.ak ], [ %0, %bb.ai ], [ %0, %bb.af ], [ %0, %buffertag_comparator.exit54.thread ], [ %1, %bb.p ], [ %1, %bb.n ], [ %1, %bb.k ], [ %1, %bb.i ], [ %1, %bb.z ], [ %1, %rlocator_comparator.exit.i48 ]
  ret ptr %i.ca
}

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #3

declare void @UnpinLocalBufferNoOwner(i32 noundef) local_unnamed_addr #3

declare ptr @pgaio_io_get_handle_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pgaio_io_get_target_data(ptr noundef) local_unnamed_addr #3

declare void @pgstat_report_checksum_failures_in_db(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @PageIsVerified(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errhint_plural(ptr noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #3

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #3

declare i32 @errhint_internal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{null}
!3 = distinct !{!3, !10}
!4 = distinct !{!4, !10}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"branch_weights", i32 1999, i32 1}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", i32 1, i32 0}
!12 = !{i64 2327239, i64 2327256, i64 2327279}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{null}
!19 = distinct !{null, ptr @TerminateBufferIO}
!20 = distinct !{!20, !10}
!21 = !{!"branch_weights", i32 1, i32 127}
!22 = !{!"branch_weights", i32 127, i32 255873}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !17}
!28 = distinct !{!28, !10, !17}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{null}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = !{i64 2151247389}
!62 = distinct !{!62, !10}
!63 = !{!"branch_weights", i32 1, i32 1999}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
end_hunk_1

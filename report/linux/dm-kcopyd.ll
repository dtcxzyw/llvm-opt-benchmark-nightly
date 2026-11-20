Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dm-kcopyd?download=true
inline.NumInlined: 104
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@run_complete_job:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @run_pages_job(ptr noundef initializes((272, 280)) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = trunc i64 %i.d to i32
  %i.f = load ptr, ptr %0, align 8                ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 272        ; 4 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 12       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %alloc_pl.exit.i, %bb.a
  %.016.i = phi i32 [ %i.e, %bb.a ], [ %i.r, %alloc_pl.exit.i ]
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 32), align 16
  %i.j = tail call noalias align 8 dereferenceable_or_null(16) ptr @__kmalloc_cache_noprof(ptr noundef %i.i, i32 noundef range(i32 3264, 75777) 75776, i64 noundef 16) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @alloc_pages_noprof(i32 noundef 75778, i32 noundef 0) #9 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %.not20.i.i = icmp eq ptr %i.k, null
  br i1 %.not20.i.i, label %bb.d, label %alloc_pl.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.j) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not19.i = icmp eq ptr %i.m, null
  br i1 %.not19.i, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.f, align 8
  %i.o = load i32, ptr %i.h, align 4
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.h, align 4
  br label %alloc_pl.exit.i

alloc_pl.exit.i:                                  ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8
  store ptr %i.q, ptr %.0.i, align 8
  store ptr %.0.i, ptr %i.g, align 8
  %i.r = add i32 %.016.i, -1                      ; 2 uses
  %.not20.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i, label %kcopyd_get_pages.exit, label %bb.b, !llvm.loop !37

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.s, null
  br i1 %.not21.i, label %kcopyd_get_pages.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @kcopyd_put_pages(ptr noundef %i.f, ptr noundef nonnull %i.s) #10, !srcloc !38
  br label %kcopyd_get_pages.exit.thread

kcopyd_get_pages.exit:                            ; preds = %alloc_pl.exit.i
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 216
  %i.v = getelementptr i8, ptr %i.t, i64 180      ; 2 uses
  %i.w = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.v) #9
  %i.x = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.y = getelementptr i8, ptr %i.t, i64 224      ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.u, ptr %i.x, align 8
  %i.aa = getelementptr i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.aa, align 8
  store volatile ptr %i.x, ptr %i.z, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.v, i64 noundef %i.w) #9
  br label %kcopyd_get_pages.exit.thread

kcopyd_get_pages.exit.thread:                     ; preds = %bb.h, %bb.g, %kcopyd_get_pages.exit
  %.0 = phi i32 [ 0, %kcopyd_get_pages.exit ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @run_io_job(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.dm_io_request, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  store i32 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @complete_io, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.k, align 8
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 344
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not16 = icmp eq i64 %i.u, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.v, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr i8, ptr %i.l, i64 168
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %io_job_start.exit, label %.preheader.i, !prof !14

.preheader.i:                                     ; preds = %bb.d
  tail call void @_raw_spin_lock_irq(ptr noundef @throttle_spinlock) #9
  %i.y = load volatile i32, ptr %i.x, align 4     ; 2 uses
  %i.z = icmp ugt i32 %i.y, 99
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i, !prof !39

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aa = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = getelementptr i8, ptr %i.x, i64 8       ; 4 uses
  %i.ad = getelementptr i8, ptr %i.x, i64 12      ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i32 [ %i.y, %.lr.ph.i ], [ %i.bc, %bb.k ]
  %.033.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bb, %bb.k ] ; 2 uses
  %i.af = load volatile i64, ptr @jiffies, align 64
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4
  %i.ai = sub i32 %i.ag, %i.ah                    ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4
  %i.aj = load i32, ptr %i.ab, align 4
  %.not32.i = icmp eq i32 %i.aj, 0
  %.pre.i = load i32, ptr %i.ac, align 4          ; 2 uses
  br i1 %.not32.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %.pre.i, %i.ai                  ; 2 uses
  store i32 %i.ak, ptr %i.ac, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %i.ak, %bb.f ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.am = load i32, ptr %i.ad, align 4
  %i.an = add i32 %i.am, %i.ai                    ; 8 uses
  store i32 %i.an, ptr %i.ad, align 4
  %i.ao = icmp ugt i32 %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  store i32 %i.an, ptr %i.ac, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = phi i32 [ %i.an, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.aq = icmp ugt i32 %i.an, 1023
  br i1 %i.aq, label %fls.exit.i, label %bb.j, !prof !14

fls.exit.i:                                       ; preds = %bb.i
  %i.ar = lshr i32 %i.an, 10
  %i.as = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 4194304) %i.ar, i32 -1) #12, !srcloc !40
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = lshr i32 %i.an, %i.at                   ; 2 uses
  store i32 %i.au, ptr %i.ad, align 4
  %i.av = lshr i32 %i.ap, %i.at                   ; 2 uses
  store i32 %i.av, ptr %i.ac, align 4
  br label %bb.j

bb.j:                                             ; preds = %fls.exit.i, %bb.i
  %i.aw = phi i32 [ %i.au, %fls.exit.i ], [ %i.an, %bb.i ]
  %i.ax = phi i32 [ %i.av, %fls.exit.i ], [ %i.ap, %bb.i ]
  %i.ay = mul i32 %i.aw, %i.ae
  %i.az = udiv i32 %i.ay, 100
  %i.ba = sub i32 %i.ax, %i.az
  %2 = icmp slt i32 %i.ba, 1
  %exitcond.not.i = icmp eq i32 %.033.i, 10
  %or.cond.i = select i1 %2, i1 true, i1 %exitcond.not.i, !prof !41
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.k, !prof !41

bb.k:                                             ; preds = %bb.j
  %i.bb = add nuw nsw i32 %.033.i, 1
  tail call void @_raw_spin_unlock_irq(ptr noundef @throttle_spinlock) #9
  tail call void @msleep(i32 noundef 100) #9
  tail call void @_raw_spin_lock_irq(ptr noundef @throttle_spinlock) #9
  %i.bc = load volatile i32, ptr %i.x, align 4    ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 99
  br i1 %i.bd, label %._crit_edge.i, label %bb.e, !prof !42

._crit_edge.i:                                    ; preds = %bb.k, %bb.j, %.preheader.i
  %i.be = getelementptr i8, ptr %i.x, i64 4       ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef @throttle_spinlock) #9
  %.pre = load i32, ptr %i.a, align 8
  br label %io_job_start.exit

io_job_start.exit:                                ; preds = %bb.d, %._crit_edge.i
  %i.bh = phi i32 [ %i.b, %bb.d ], [ %.pre, %._crit_edge.i ]
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %io_job_start.exit
  %i.bj = getelementptr i8, ptr %0, i64 48
  %i.bk = call i32 @dm_io(ptr noundef nonnull %1, i32 noundef 1, ptr noundef %i.bj, ptr noundef null, i16 noundef zeroext 0) #9
  br label %bb.n

bb.m:                                             ; preds = %io_job_start.exit
  %i.bl = getelementptr i8, ptr %0, i64 72
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %0, i64 80
  %i.bo = call i32 @dm_io(ptr noundef nonnull %1, i32 noundef %i.bm, ptr noundef %i.bn, ptr noundef null, i16 noundef zeroext 0) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.014 = phi i32 [ -5, %bb.c ], [ %i.bk, %bb.l ], [ %i.bo, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.014
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @kcopyd_put_pages(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.e ]    ; 5 uses
  %i.c = load ptr, ptr %.0, align 8               ; 2 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = load i32, ptr %i.b, align 8
  %.not = icmp ult i32 %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @__free_pages(ptr noundef %i.g, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %.0) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8
  store ptr %i.h, ptr %.0, align 8
  store ptr %.0, ptr %0, align 8
  %i.i = load i32, ptr %i.a, align 4
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.b, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @complete_io(i64 noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %io_job_finish.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef @throttle_spinlock) #9
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  %i.h = load volatile i32, ptr %i.c, align 4
  %i.i = icmp ugt i32 %i.h, 99
  br i1 %i.i, label %bb.f, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %.not17.i = icmp eq i32 %i.g, 0
  br i1 %.not17.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load volatile i64, ptr @jiffies, align 64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub i32 %i.k, %i.m                       ; 2 uses
  store i32 %i.k, ptr %i.l, align 4
  %i.o = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, %i.n                       ; 2 uses
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr i8, ptr %i.c, i64 12       ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, %i.n                       ; 3 uses
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp ugt i32 %i.q, %i.t
  br i1 %i.u, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  store i32 %i.t, ptr %i.o, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef @throttle_spinlock, i64 noundef %i.d) #9
  br label %io_job_finish.exit

io_job_finish.exit:                               ; preds = %bb.a, %bb.f
  %.not = icmp eq i64 %0, 0
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.old = trunc i32 %.pre to i1                   ; 2 uses
  br i1 %.not, label %io_job_finish.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %io_job_finish.exit
  br i1 %.old, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = or i64 %i.w, %0
  store i64 %i.x, ptr %i.v, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %1, i64 28
  store i32 1, ptr %i.y, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 2
  %.not18 = icmp eq i32 %i.ab, 0
  %i.ac = trunc i32 %.pre to i1
  %or.cond = select i1 %.not18, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.l, label %bb.k

io_job_finish.exit._crit_edge:                    ; preds = %io_job_finish.exit
  br i1 %.old, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %io_job_finish.exit._crit_edge
  %i.ad = getelementptr i8, ptr %1, i64 40
  store i32 1, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %io_job_finish.exit._crit_edge, %bb.j
  %.sink.sink = phi i64 [ 200, %bb.j ], [ 216, %bb.k ], [ 200, %io_job_finish.exit._crit_edge ]
  %.sink31.sink = phi i64 [ 208, %bb.j ], [ 224, %bb.k ], [ 208, %io_job_finish.exit._crit_edge ]
  %i.ae = getelementptr i8, ptr %i.a, i64 %.sink.sink
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 180    ; 2 uses
  %i.ah = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ag) #9
  %i.ai = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.aj = getelementptr i8, ptr %i.a, i64 %.sink31.sink ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.al = getelementptr i8, ptr %1, i64 16
  store ptr %i.ak, ptr %i.al, align 8
  store volatile ptr %i.ai, ptr %i.ak, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ag, i64 noundef %i.ah) #9
  %i.am = getelementptr i8, ptr %i.a, i64 128
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.a, i64 136
  %i.ap = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.an, ptr noundef %i.ao) #9 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dm_io(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__dm_get_module_param(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #12 = { nounwind memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2148016176, i64 2148016215, i64 2148016236, i64 2148016273, i64 2148016296, i64 2148016167}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 2158144705, i64 2158144580}
!17 = !{i64 2158145228, i64 2158145704, i64 2158145737, i64 2158145772, i64 2158145788, i64 2158146629, i64 2158146687, i64 2158146736, i64 2158146546, i64 2158145847, i64 2158145879}
!18 = !{!"auto-init"}
!19 = !{i64 2148018302, i64 2148018341, i64 2148018362, i64 2148018399, i64 2148018422, i64 2148018431}
!20 = distinct !{!20, !12}
!21 = !{i64 18642}
!22 = !{i64 16746}
!23 = !{i64 14687}
!24 = distinct !{!24, !12}
!25 = !{i64 2158181715, i64 2158181590}
!26 = !{i64 2158182238, i64 2158182714, i64 2158182747, i64 2158182782, i64 2158182798, i64 2158183639, i64 2158183697, i64 2158183746, i64 2158183556, i64 2158182857, i64 2158182889}
!27 = !{i64 2158184319, i64 2158184194}
!28 = !{i64 2158184842, i64 2158185318, i64 2158185351, i64 2158185386, i64 2158185402, i64 2158186243, i64 2158186301, i64 2158186350, i64 2158186160, i64 2158185461, i64 2158185493}
!29 = !{i64 2158186911, i64 2158186786}
!30 = !{i64 2158187434, i64 2158187910, i64 2158187943, i64 2158187978, i64 2158187994, i64 2158188835, i64 2158188893, i64 2158188942, i64 2158188752, i64 2158188053, i64 2158188085}
!31 = !{i64 2158189509, i64 2158189384}
!32 = !{i64 2158190032, i64 2158190508, i64 2158190541, i64 2158190576, i64 2158190592, i64 2158191433, i64 2158191491, i64 2158191540, i64 2158191350, i64 2158190651, i64 2158190683}
!33 = distinct !{!33, !12}
!34 = !{i64 16014}
!35 = distinct !{!35, !12}
!36 = !{ptr @run_complete_job, ptr @run_io_job, ptr @run_pages_job}
!37 = distinct !{!37, !12}
!38 = !{i64 6294}
!39 = !{!"branch_weights", i32 1999, i32 1}
!40 = !{i64 1709038}
!41 = !{!"branch_weights", i32 4001, i32 1}
!42 = !{!"branch_weights", i32 1, i32 0}
end_hunk_0

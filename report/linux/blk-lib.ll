Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-lib?download=true
inline.NumInlined: 64
inline.NumDeleted: 36
begin_hunk_0_@blkdev_issue_discard:bb.a
__blkdev_issue_discard.exit:                      ; preds = %bio_discard_limit.exit.i.i, %bb.d
  %.not = icmp eq ptr %.08, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %__blkdev_issue_discard.exit
  %i.aa = call i32 @submit_bio_wait(ptr noundef nonnull %.08) #5 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -95
  %spec.store.select = select i1 %i.ab, i32 0, i32 %i.aa
  call void @bio_put(ptr noundef nonnull %.08) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %__blkdev_issue_discard.exit
  %.0 = phi i32 [ %spec.store.select, %bb.f ], [ 0, %__blkdev_issue_discard.exit ]
  call void @blk_finish_plug(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -95, 1) i32 @__blkdev_issue_zeroout(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 200
  %.val.val19 = load i32, ptr %i.c, align 8
  %i.d = lshr i32 %.val.val, 9
  %i.e = sub nsw i32 0, %i.d
  %i.f = and i32 %i.e, 8388607
  %i.g = tail call i32 @llvm.umin.i32(i32 %.val.val19, i32 %i.f) ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr i8, ptr %0, i64 48
  %i.j = load volatile i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 256
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %__blkdev_issue_write_zeroes.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %i.q = load volatile i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 256
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bdev_read_only.exit, label %__blkdev_issue_write_zeroes.exit

bdev_read_only.exit:                              ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.m, i64 352
  %i.t = load volatile i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 2
  %.not22 = icmp eq i64 %i.u, 0
  br i1 %.not22, label %bb.c, label %__blkdev_issue_write_zeroes.exit

bb.c:                                             ; preds = %bdev_read_only.exit
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not34.i = icmp eq i64 %2, 0
  br i1 %.not34.i, label %__blkdev_issue_write_zeroes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = and i32 %5, 4
  %.not27.i = icmp eq i32 %i.v, 0
  %i.w = and i32 %5, 1
  %.not29.i = icmp eq i32 %i.w, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.036.i = phi i64 [ %1, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.02535.i = phi i64 [ %2, %.lr.ph.i ], [ %i.ao, %bb.g ] ; 2 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 %.02535.i, i64 range(i64 0, 4294967296) %i.h) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  br i1 %.not27.i, label %fatal_signal_pending.exit.thread.i, label %task_sigpending.exit.i.i

task_sigpending.exit.i.i:                         ; preds = %bb.e
  %i.z = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !13
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 2
  %.not.i.i20 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i20, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 2152
  %.val.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.val.i.i, 256
  %.not28.i = icmp eq i64 %i.ae, 0
  br i1 %.not28.i, label %fatal_signal_pending.exit.thread.i, label %__blkdev_issue_write_zeroes.exit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i, %bb.e
  %i.af = tail call ptr @bio_alloc_bioset(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 9, i32 noundef %3, ptr noundef @fs_bio_set) #5 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  store i64 %.036.i, ptr %i.ag, align 8
  br i1 %.not29.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %fatal_signal_pending.exit.thread.i
  %i.ah = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = or i32 %i.ai, 268435456
  store i32 %i.aj, ptr %i.ah, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %fatal_signal_pending.exit.thread.i
  %i.ak = shl nuw i32 %i.y, 9
  %i.al = getelementptr i8, ptr %i.af, i64 48
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %4, align 8
  %i.an = tail call ptr @bio_chain_and_submit(ptr noundef %i.am, ptr noundef %i.af) #5
  store ptr %i.an, ptr %4, align 8
  %i.ao = sub nuw i64 %.02535.i, %i.x             ; 2 uses
  %i.ap = add i64 %i.x, %.036.i
  %i.aq = tail call i32 @__SCT__cond_resched() #5 ; 0 uses
  %.not.i21 = icmp eq i64 %i.ao, 0
  br i1 %.not.i21, label %__blkdev_issue_write_zeroes.exit, label %bb.e

bb.h:                                             ; preds = %bb.c
  %i.ar = and i32 %5, 2
  %.not18 = icmp eq i32 %i.ar, 0
  br i1 %.not18, label %bb.i, label %__blkdev_issue_write_zeroes.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #8, !srcloc !14
  br label %__blkdev_issue_write_zeroes.exit

__blkdev_issue_write_zeroes.exit:                 ; preds = %bb.g, %fatal_signal_pending.exit.i, %bb.b, %bb.a, %bb.d, %bb.i, %bb.h, %bdev_read_only.exit
  %.0 = phi i32 [ -1, %bdev_read_only.exit ], [ -95, %bb.h ], [ 0, %bb.i ], [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %bb.d ], [ 0, %fatal_signal_pending.exit.i ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @__zero_page, align 8      ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load volatile i64, ptr %i.b, align 8     ; 2 uses
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = and i64 %i.c, 1
  %i.f = add nsw i64 %i.e, -1
  %i.g = or i64 %i.f, %i.c
  %i.h = and i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %.not41 = icmp eq i64 %2, 0
  br i1 %.not41, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = and i32 %5, 4
  %.not33 = icmp eq i32 %i.j, 0
  %i.k = getelementptr i8, ptr %i.i, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.043 = phi i64 [ %1, %.lr.ph ], [ %.2, %bb.e ] ; 2 uses
  %.02742 = phi i64 [ %2, %.lr.ph ], [ %.229, %bb.e ] ; 2 uses
  %i.l = add i64 %.02742, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256)
  br i1 %.not33, label %fatal_signal_pending.exit.thread, label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %bb.b
  %i.o = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !13
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 2
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %i.s = getelementptr i8, ptr %i.p, i64 2152
  %.val.i = load i64, ptr %i.s, align 8
  %i.t = and i64 %.val.i, 256
  %.not34 = icmp eq i64 %i.t, 0
  br i1 %.not34, label %fatal_signal_pending.exit.thread, label %.thread

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit, %bb.b
  %i.u = trunc nuw nsw i64 %i.n to i16
  %i.v = tail call ptr @bio_alloc_bioset(ptr noundef %0, i16 noundef zeroext %i.u, i32 noundef 1, i32 noundef %3, ptr noundef @fs_bio_set) #5 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 40
  store i64 %.043, ptr %i.w, align 8
  br label %bb.c

bb.c:                                             ; preds = %folio_size.exit, %fatal_signal_pending.exit.thread
  %.128 = phi i64 [ %.02742, %fatal_signal_pending.exit.thread ], [ %.229, %folio_size.exit ] ; 2 uses
  %.1 = phi i64 [ %.043, %fatal_signal_pending.exit.thread ], [ %.2, %folio_size.exit ]
  %i.x = load volatile i64, ptr %i.i, align 8
  %i.y = and i64 %i.x, 64
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %folio_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.k, align 16
  %i.z = and i64 %.val.i.i, 255
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.aa = shl i64 4096, %.0.i.i
  %i.ab = shl i64 %.128, 9
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ad = and i64 %i.ac, 4294966784
  %i.ae = tail call zeroext i1 @bio_add_folio(ptr noundef %i.v, ptr noundef %i.i, i64 noundef %i.ad, i64 noundef 0) #5 ; 2 uses
  %i.af = lshr exact i64 %i.ac, 9
  %i.ag = and i64 %i.af, 8388607
  %6 = select i1 %i.ae, i64 %i.ag, i64 0          ; 2 uses
  %.229 = sub i64 %.128, %6                       ; 3 uses
  %.2 = add i64 %6, %.1                           ; 2 uses
  %.not35 = icmp ne i64 %.229, 0                  ; 2 uses
  %or.cond.not = select i1 %i.ae, i1 %.not35, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.e, !llvm.loop !15

bb.e:                                             ; preds = %folio_size.exit
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = tail call ptr @bio_chain_and_submit(ptr noundef %i.ah, ptr noundef %i.v) #5
  store ptr %i.ai, ptr %4, align 8
  %i.aj = tail call i32 @__SCT__cond_resched() #5 ; 0 uses
  br i1 %.not35, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.e, %fatal_signal_pending.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @blkdev_issue_zeroout(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.blk_plug, align 8           ; 5 uses
  %6 = alloca %struct.blk_plug, align 8           ; 7 uses
  %i.b = or i64 %2, %1
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i32, ptr %i.d, align 8
  %i.e = lshr i32 %.val.val, 9                    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = zext i32 %i.f to i64
  %i.h = and i64 %i.b, %i.g
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bdev_read_only.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 48
  %i.j = load volatile i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 256
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bdev_read_only.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %i.q = load volatile i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 256
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bdev_read_only.exit, label %bdev_read_only.exit.thread

bdev_read_only.exit:                              ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.m, i64 352
  %i.t = load volatile i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, 2
  %.not29 = icmp eq i64 %i.u, 0
  br i1 %.not29, label %bb.d, label %bdev_read_only.exit.thread

bb.d:                                             ; preds = %bdev_read_only.exit
  %i.v = getelementptr i8, ptr %.val, i64 200
  %.val20.val = load i32, ptr %i.v, align 8       ; 2 uses
  %.not18 = icmp eq i32 %.val20.val, 0
  br i1 %.not18, label %blkdev_issue_write_zeroes.exit.thread26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sub nsw i32 0, %i.e
  %i.x = and i32 %i.w, 8388607
  %i.y = tail call i32 @llvm.umin.i32(i32 %.val20.val, i32 %i.x)
  %i.z = zext nneg i32 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !annotation !12
  call void @blk_start_plug(ptr noundef nonnull %6) #5
  %.not34.i.i = icmp eq i64 %2, 0
  br i1 %.not34.i.i, label %.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.aa = and i32 %4, 4
  %.not27.i.i = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %4, 1
  %.not29.i.i = icmp eq i32 %i.ab, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i = phi ptr [ null, %.lr.ph.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.036.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.at, %bb.h ] ; 2 uses
  %.02535.i.i = phi i64 [ %2, %.lr.ph.i.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.ac = call i64 @llvm.umin.i64(i64 %.02535.i.i, i64 range(i64 0, 4294967296) %i.z) ; 3 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  br i1 %.not27.i.i, label %fatal_signal_pending.exit.thread.i.i, label %task_sigpending.exit.i.i.i

task_sigpending.exit.i.i.i:                       ; preds = %bb.f
  %i.ae = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !13
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = load volatile i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %fatal_signal_pending.exit.thread.i.i, label %fatal_signal_pending.exit.i.i

fatal_signal_pending.exit.i.i:                    ; preds = %task_sigpending.exit.i.i.i
  %i.ai = getelementptr i8, ptr %i.af, i64 2152
  %.val.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = and i64 %.val.i.i.i, 256
  %.not28.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not28.i.i, label %fatal_signal_pending.exit.thread.i.i, label %__blkdev_issue_write_zeroes.exit.i

fatal_signal_pending.exit.thread.i.i:             ; preds = %fatal_signal_pending.exit.i.i, %task_sigpending.exit.i.i.i, %bb.f
  %i.ak = call ptr @bio_alloc_bioset(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 9, i32 noundef %3, ptr noundef @fs_bio_set) #5 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  store i64 %.036.i.i, ptr %i.al, align 8
  br i1 %.not29.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %fatal_signal_pending.exit.thread.i.i
  %i.am = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = or i32 %i.an, 268435456
  store i32 %i.ao, ptr %i.am, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %fatal_signal_pending.exit.thread.i.i
  %i.ap = shl nuw i32 %i.ad, 9
  %i.aq = getelementptr i8, ptr %i.ak, i64 48
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = call ptr @bio_chain_and_submit(ptr noundef %.019.i, ptr noundef %i.ak) #5 ; 2 uses
  %i.as = sub nuw i64 %.02535.i.i, %i.ac          ; 2 uses
  %i.at = add i64 %i.ac, %.036.i.i
  %i.au = call i32 @__SCT__cond_resched() #5      ; 0 uses
  %.not.i.i22 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i22, label %__blkdev_issue_write_zeroes.exit.i, label %bb.f

__blkdev_issue_write_zeroes.exit.i:               ; preds = %bb.h, %fatal_signal_pending.exit.i.i
  %.1.i = phi ptr [ %.019.i, %fatal_signal_pending.exit.i.i ], [ %i.ar, %bb.h ] ; 3 uses
  %.not.i21 = icmp eq ptr %.1.i, null
  br i1 %.not.i21, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %__blkdev_issue_write_zeroes.exit.i, %bb.e
  call void @blk_finish_plug(ptr noundef nonnull %6) #5
  br label %blkdev_issue_write_zeroes.exit.thread

bb.i:                                             ; preds = %__blkdev_issue_write_zeroes.exit.i
  %i.av = call i32 @bio_submit_or_kill(ptr noundef nonnull %.1.i, i32 noundef %4) #5 ; 3 uses
  call void @bio_put(ptr noundef nonnull %.1.i) #5
  call void @blk_finish_plug(ptr noundef nonnull %6) #5
  %.not13.i = icmp eq i32 %i.av, 0
  br i1 %.not13.i, label %blkdev_issue_write_zeroes.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr i8, ptr %.val.i, i64 200
  %.val.val.i = load i32, ptr %i.aw, align 8
  %.not14.i = icmp eq i32 %.val.val.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %.not19 = icmp eq i32 %i.av, -95
  %or.cond = select i1 %.not14.i, i1 true, i1 %.not19
  br i1 %or.cond, label %blkdev_issue_write_zeroes.exit.thread26, label %bdev_read_only.exit.thread

blkdev_issue_write_zeroes.exit.thread:            ; preds = %.thread.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bdev_read_only.exit.thread

blkdev_issue_write_zeroes.exit.thread26:          ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ax = and i32 %4, 2
  %.not.i23 = icmp eq i32 %i.ax, 0
  br i1 %.not.i23, label %bb.k, label %blkdev_issue_zero_pages.exit

bb.k:                                             ; preds = %blkdev_issue_write_zeroes.exit.thread26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false), !annotation !12
  call void @blk_start_plug(ptr noundef nonnull %5) #5
  call fastcc void @__blkdev_issue_zero_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %4) #8, !srcloc !16
  %i.ay = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not10.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = call i32 @bio_submit_or_kill(ptr noundef nonnull %i.ay, i32 noundef %4) #5
  call void @bio_put(ptr noundef nonnull %i.ay) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi i32 [ %i.az, %bb.l ], [ 0, %bb.k ]
  call void @blk_finish_plug(ptr noundef nonnull %5) #5
  br label %blkdev_issue_zero_pages.exit

blkdev_issue_zero_pages.exit:                     ; preds = %blkdev_issue_write_zeroes.exit.thread26, %bb.m
  %.08.i = phi i32 [ %.0.i, %bb.m ], [ -95, %blkdev_issue_write_zeroes.exit.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bdev_read_only.exit.thread

bdev_read_only.exit.thread:                       ; preds = %bb.j, %bb.c, %bb.b, %blkdev_issue_write_zeroes.exit.thread, %bdev_read_only.exit, %bb.a, %blkdev_issue_zero_pages.exit
  %.0 = phi i32 [ %.08.i, %blkdev_issue_zero_pages.exit ], [ -22, %bb.a ], [ -1, %bdev_read_only.exit ], [ %i.av, %bb.j ], [ 0, %blkdev_issue_write_zeroes.exit.thread ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @blkdev_issue_secure_erase(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.blk_plug, align 8           ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i32, ptr %i.b, align 8
  %i.c = lshr i32 %.val.val, 9                    ; 2 uses
end_hunk_0

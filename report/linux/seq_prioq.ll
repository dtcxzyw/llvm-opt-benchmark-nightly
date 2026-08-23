Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/seq_prioq?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"\013ALSA: seq: inconsistent prioq cell count\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @snd_seq_prioq_new() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef 24) #6 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_seq_prioq_delete(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  store ptr null, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 20       ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %snd_seq_prioq_cell_out.exit
  %i.h = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #7
  %i.i = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not23.i = icmp eq ptr %i.i, null
  br i1 %.not23.i, label %snd_seq_prioq_cell_out.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  store ptr null, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  store ptr null, ptr %i.j, align 8
  %i.n = load i32, ptr %i.c, align 8
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %snd_seq_prioq_cell_out.exit

snd_seq_prioq_cell_out.exit:                      ; preds = %bb.c, %bb.e
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.h) #7
  tail call void @snd_seq_cell_free(ptr noundef %i.i) #7
  %.pr = load i32, ptr %i.c, align 8
  %i.p = icmp sgt i32 %.pr, 0
  br i1 %i.p, label %bb.c, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %snd_seq_prioq_cell_out.exit, %bb.b
  tail call void @kfree(ptr noundef nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_seq_cell_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @snd_seq_prioq_cell_out(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.b) #7
  %i.d = load ptr, ptr %0, align 8                ; 8 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 1
  %i.j = icmp eq i8 %i.i, 0
  %i.k = getelementptr i8, ptr %i.d, i64 4
  %.val.i = load i32, ptr %1, align 4             ; 3 uses
  %.val5.i = load i32, ptr %i.k, align 4          ; 3 uses
  br i1 %i.j, label %event_is_ready.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.val.i, %.val5.i
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %.val.i, %.val5.i
  br i1 %i.m, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %i.d, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %.not.i.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.i, label %.thread35, label %.thread

event_is_ready.exit:                              ; preds = %bb.c
  %.not38 = icmp ult i32 %.val.i, %.val5.i
  br i1 %.not38, label %.thread35, label %.thread

bb.g:                                             ; preds = %bb.b
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %.thread35, label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %event_is_ready.exit, %bb.g
  %i.r = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %0, align 8
  %i.t = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  store ptr null, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  store ptr null, ptr %i.r, align 8
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 8
  br label %.thread35

.thread35:                                        ; preds = %bb.f, %bb.e, %event_is_ready.exit, %bb.i, %bb.g
  %.01934 = phi ptr [ %i.d, %bb.i ], [ null, %bb.g ], [ null, %event_is_ready.exit ], [ null, %bb.e ], [ null, %bb.f ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.c) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.thread35
  %.0 = phi ptr [ %.01934, %.thread35 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @snd_seq_prioq_cell_in(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not55 = icmp eq ptr %1, null
  %spec.select = or i1 %.not, %.not55
  br i1 %spec.select, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 1          ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 16
  %i.d = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #7
  %i.f = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = icmp ne i8 %i.c, 0                       ; 3 uses
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %compare_timestamp.exit.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 1
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = getelementptr i8, ptr %1, i64 4
  %i.n = getelementptr i8, ptr %i.g, i64 4
  %.val.i = load i32, ptr %i.m, align 4           ; 3 uses
  %.val5.i = load i32, ptr %i.n, align 4          ; 3 uses
  br i1 %i.l, label %compare_timestamp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ugt i32 %.val.i, %.val5.i
  br i1 %i.o, label %compare_timestamp.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %.val.i, %.val5.i
  br i1 %i.p, label %bb.f, label %compare_timestamp.exit.thread63

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.g, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %.not.i.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.i, label %compare_timestamp.exit.thread63, label %compare_timestamp.exit.thread

compare_timestamp.exit:                           ; preds = %bb.c
  %.not73 = icmp ult i32 %.val.i, %.val5.i
  br i1 %.not73, label %compare_timestamp.exit.thread63, label %compare_timestamp.exit.thread

compare_timestamp.exit.thread:                    ; preds = %bb.f, %bb.d, %compare_timestamp.exit
  %i.u = getelementptr i8, ptr %i.g, i64 40
  store ptr %1, ptr %i.u, align 8
  store ptr %1, ptr %i.f, align 8
  %i.v = getelementptr i8, ptr %1, i64 40
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8
  br label %bb.q

compare_timestamp.exit.thread63:                  ; preds = %bb.f, %bb.e, %compare_timestamp.exit, %bb.b
  %i.z = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.04676 = load ptr, ptr %0, align 8             ; 3 uses
  %.not5777 = icmp eq ptr %.04676, null
  br i1 %.not5777, label %.thread69.thread104, label %.lr.ph

.lr.ph:                                           ; preds = %compare_timestamp.exit.thread63
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = load i8, ptr %i.a, align 1
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = getelementptr i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 4 uses
  %i.ag = getelementptr i8, ptr %1, i64 8
  br i1 %i.ad, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ah = icmp slt i32 %i.aa, 1
  br i1 %i.ah, label %.thread, label %.lr.ph132

.lr.ph.split.us:                                  ; preds = %bb.g
  %i.ai = add nsw i32 %.in, -1
  %i.aj = icmp slt i32 %.in, 2
  br i1 %i.aj, label %.thread, label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.in = phi i32 [ %i.ai, %.lr.ph.split.us ], [ %i.aa, %.lr.ph.split.us.preheader ] ; 2 uses
  %.05078.us131 = phi ptr [ %.04680.us130, %.lr.ph.split.us ], [ null, %.lr.ph.split.us.preheader ]
  %.04680.us130 = phi ptr [ %.046.us, %.lr.ph.split.us ], [ %.04676, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.ak = getelementptr i8, ptr %.04680.us130, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp ult i32 %i.af, %i.al
  %i.an = icmp eq i32 %i.af, %i.al
  %or.cond3.us = select i1 %i.an, i1 %i.i, i1 false
  %or.cond59.us = select i1 %i.am, i1 true, i1 %or.cond3.us
  br i1 %or.cond59.us, label %.thread69, label %bb.g

bb.g:                                             ; preds = %.lr.ph132
  %i.ao = getelementptr i8, ptr %.04680.us130, i64 40
  %.046.us = load ptr, ptr %i.ao, align 8         ; 2 uses
  %.not57.us = icmp eq ptr %.046.us, null
  br i1 %.not57.us, label %.thread69.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.04680 = phi ptr [ %.046, %bb.l ], [ %.04676, %.lr.ph ] ; 6 uses
  %.04979 = phi i32 [ %i.ay, %bb.l ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.05078 = phi ptr [ %.04680, %bb.l ], [ null, %.lr.ph ]
  %i.ap = getelementptr i8, ptr %.04680, i64 4
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = icmp ugt i32 %i.af, %i.aq
  br i1 %i.ar, label %compare_timestamp_rel.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.as = icmp eq i32 %i.af, %i.aq
  br i1 %i.as, label %bb.i, label %compare_timestamp_rel.exit

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.au = getelementptr i8, ptr %.04680, i64 8
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = icmp ugt i32 %i.at, %i.av
  br i1 %i.aw, label %compare_timestamp_rel.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp ne i32 %i.at, %i.av
  %.19.i = sext i1 %i.ax to i32
  br label %compare_timestamp_rel.exit

compare_timestamp_rel.exit:                       ; preds = %.lr.ph.split, %bb.h, %bb.i, %bb.j
  %.0.i60 = phi i32 [ %.19.i, %bb.j ], [ -1, %bb.h ], [ 1, %.lr.ph.split ], [ 1, %bb.i ] ; 2 uses
  %i.ay = add i32 %.04979, -1
  %i.az = icmp slt i32 %.04979, 1
  br i1 %i.az, label %.thread, label %bb.k

.thread:                                          ; preds = %compare_timestamp_rel.exit, %.lr.ph.split.us, %.lr.ph.split.us.preheader
  %i.ba = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %compare_timestamp_rel.exit
  %i.bb = icmp slt i32 %.0.i60, 0
  %i.bc = icmp eq i32 %.0.i60, 0
  %or.cond3 = select i1 %i.bc, i1 %i.i, i1 false
  %or.cond59 = select i1 %i.bb, i1 true, i1 %or.cond3
  br i1 %or.cond59, label %.thread69, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %.04680, i64 40
  %.046 = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not57 = icmp eq ptr %.046, null
  br i1 %.not57, label %.thread69.thread, label %.lr.ph.split

.thread69:                                        ; preds = %bb.k, %.lr.ph132
  %.050.lcssa = phi ptr [ %.05078.us131, %.lr.ph132 ], [ %.05078, %bb.k ] ; 2 uses
  %.046.lcssa = phi ptr [ %.04680.us130, %.lr.ph132 ], [ %.04680, %bb.k ] ; 2 uses
  %.not58 = icmp eq ptr %.050.lcssa, null
  br i1 %.not58, label %.thread69.thread104, label %.thread69.thread

.thread69.thread:                                 ; preds = %bb.l, %bb.g, %.thread69
end_hunk_0

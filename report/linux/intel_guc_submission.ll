Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_guc_submission?download=true
inline.NumInlined: 1050
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@intel_guc_submission_enable:bb.a
guc_route_semaphores.exit22:                      ; preds = %bb.ak, %guc_fini_engine_stats.exit, %guc_init_global_schedule_policy.exit, %guc_init_global_schedule_policy.exit.thread
  %.010 = phi i32 [ 0, %guc_init_global_schedule_policy.exit.thread ], [ 0, %guc_init_global_schedule_policy.exit ], [ %.0, %guc_fini_engine_stats.exit ], [ %.0, %bb.ak ]
  ret i32 %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_guc_submission_disable(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2872
  %i.b = tail call zeroext i1 @mutex_is_locked(ptr noundef %i.a) #21
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2864
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1624
  %i.g = tail call zeroext i1 @cancel_delayed_work(ptr noundef %i.f) #21 ; 0 uses
  br label %guc_cancel_busyness_worker.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1624
  %i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i.h) #21 ; 0 uses
  br label %guc_cancel_busyness_worker.exit

guc_cancel_busyness_worker.exit:                  ; preds = %bb.c, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 -624
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 1656
  %i.m = load i8, ptr %i.l, align 8
  %i.n = icmp ult i8 %i.m, 12
  br i1 %i.n, label %guc_route_semaphores.exit, label %bb.e

bb.e:                                             ; preds = %guc_cancel_busyness_worker.exit
  %i.o = getelementptr i8, ptr %0, i64 -600
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 176
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef %i.p, i32 50972, i32 noundef range(i32 -2147483393, 1) 0, i1 noundef zeroext true) #21, !inline_history !5
  br label %guc_route_semaphores.exit

guc_route_semaphores.exit:                        ; preds = %guc_cancel_busyness_worker.exit, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i32 @intel_guc_sched_disable_gucid_threshold_max(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1144
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.neg = sdiv i32 %i.b, -16
  %i.c = add i32 %.neg, %i.b
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_guc_submission_init_early(ptr noundef initializes((1120, 1124), (1480, 1496)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1480
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 1484
  store i32 1, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 1488
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 1120
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1160       ; 3 uses
  store volatile ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 1168
  store volatile ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 1128
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 1132
  store i32 33554437, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 1136
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 1184       ; 3 uses
  store volatile ptr %i.j, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 1192
  store volatile ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 1200
  store i64 4503599625273344, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 1208       ; 3 uses
  store volatile ptr %i.m, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 1216
  store volatile ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 1224
  store ptr @destroyed_worker_func, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %0, i64 1232
  store i64 4503599625273344, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 1240       ; 3 uses
  store volatile ptr %i.q, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 1248
  store volatile ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 1256
  store ptr @reset_fail_worker_func, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 1600
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 1624
  store i64 4503599625273344, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 1632       ; 3 uses
  store volatile ptr %i.v, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %0, i64 1640
  store volatile ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %0, i64 1648
  store ptr @guc_timestamp_ping, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 1656
  tail call void @timer_init_key(ptr noundef %i.y, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #21
  %i.z = getelementptr i8, ptr %0, i64 1268
  store i32 34, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 1144
  store i32 65535, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 1272
  store i32 46080, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.ac, align 4
  %.not.i = icmp eq i32 %.val.i, -1
  br i1 %.not.i, label %__guc_submission_supported.exit.thread, label %__guc_submission_supported.exit

__guc_submission_supported.exit.thread:           ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 1280
  store i8 0, ptr %i.ad, align 8
  br label %__guc_submission_selected.exit

__guc_submission_supported.exit:                  ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 -624
  %.val2.i = load ptr, ptr %i.ae, align 8         ; 2 uses
  %i.af = getelementptr i8, ptr %.val2.i, i64 1656
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = icmp ugt i8 %i.ag, 10                   ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 1280
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %i.ai, align 8
  br i1 %i.ah, label %bb.b, label %__guc_submission_selected.exit

bb.b:                                             ; preds = %__guc_submission_supported.exit
  %i.ak = getelementptr i8, ptr %.val2.i, i64 1572
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 1
  br label %__guc_submission_selected.exit

__guc_submission_selected.exit:                   ; preds = %__guc_submission_supported.exit.thread, %__guc_submission_supported.exit, %bb.b
  %.0.i = phi i8 [ %i.an, %bb.b ], [ 0, %__guc_submission_supported.exit ], [ 0, %__guc_submission_supported.exit.thread ]
  %i.ao = getelementptr i8, ptr %0, i64 1281
  store i8 %.0.i, ptr %i.ao, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroyed_worker_func(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -1196
  %.val.i = load i32, ptr %i.b, align 4
  %i.c = icmp eq i32 %.val.i, 10
  br i1 %i.c, label %intel_guc_is_ready.exit, label %intel_guc_is_ready.exit.thread

intel_guc_is_ready.exit:                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -552
  %.val2.i = load i8, ptr %i.d, align 8, !range !20, !noundef !21
  %i.e = trunc nuw i8 %.val2.i to i1
  br i1 %i.e, label %bb.b, label %intel_guc_is_ready.exit.thread

bb.b:                                             ; preds = %intel_guc_is_ready.exit
  %i.f = getelementptr i8, ptr %0, i64 1480       ; 8 uses
  %i.g = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.h = load volatile i32, ptr %i.f, align 8     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !29

.lr.ph.i.i.i:                                     ; preds = %bb.b, %raw_atomic_try_cmpxchg.exit.i.i.i
  %.047.i.i.i = phi i32 [ %i.o, %raw_atomic_try_cmpxchg.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.j = add i32 %.047.i.i.i, 1
  %i.k = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.j, ptr elementtype(i32) %i.f, i32 %.047.i.i.i) #19, !srcloc !27 ; 2 uses
  %i.l = extractvalue { i8, i32 } %i.k, 0         ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %intel_gt_pm_get.exit, label %raw_atomic_try_cmpxchg.exit.i.i.i, !prof !19

raw_atomic_try_cmpxchg.exit.i.i.i:                ; preds = %.lr.ph.i.i.i
  %i.o = extractvalue { i8, i32 } %i.k, 1         ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !30

raw_atomic_fetch_add_unless.exit.i.i.i:           ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i, %bb.b
  %i.q = tail call i32 @__intel_wakeref_get_first(ptr noundef %i.f) #21 ; 0 uses
  br label %intel_gt_pm_get.exit

intel_gt_pm_get.exit:                             ; preds = %.lr.ph.i.i.i, %raw_atomic_fetch_add_unless.exit.i.i.i
  %i.r = getelementptr i8, ptr %0, i64 -80        ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 -16        ; 7 uses
  %i.t = load volatile ptr, ptr %i.s, align 8
  %.not43.i = icmp eq ptr %i.t, %i.s
  br i1 %.not43.i, label %deregister_destroyed_contexts.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %intel_gt_pm_get.exit
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i.a

.critedge28.i:                                    ; preds = %.critedge.i.i, %bb.e
  %i.u = load volatile ptr, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i, label %deregister_destroyed_contexts.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.critedge28.i, %.lr.ph.i
  %i.v = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.r) #21 ; 2 uses
  %i.w = load volatile ptr, ptr %i.s, align 8     ; 16 uses
  %.not22.i = icmp eq ptr %i.w, %i.s
  %i.x = getelementptr i8, ptr %i.w, i64 -648     ; 3 uses
  %.not2327.i = icmp eq ptr %i.x, null
  %.not23.i = or i1 %.not22.i, %.not2327.i
  br i1 %.not23.i, label %.loopexit.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.a
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  store volatile ptr %i.aa, ptr %i.z, align 8
  store volatile ptr %i.w, ptr %i.w, align 8
  store volatile ptr %i.w, ptr %i.y, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.v) #21
  %i.ac = getelementptr i8, ptr %i.w, i64 -632    ; 2 uses
  %.val29.i.i = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.val29.i.i, i64 8
  %.val29.val.i.i = load ptr, ptr %i.ad, align 8  ; 5 uses
  %i.ae = getelementptr i8, ptr %.val29.val.i.i, i64 624
  %i.af = getelementptr i8, ptr %i.w, i64 -216    ; 6 uses
  %i.ag = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.af) #21 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val29.val.i.i, i64 1656
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %.critedge.i.i, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %i.ak = load volatile i32, ptr %i.aj, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %submission_disabled.exit.i.i, label %.critedge.i.i, !prof !19

submission_disabled.exit.i.i:                     ; preds = %bb.d
  %i.al = getelementptr i8, ptr %.val29.val.i.i, i64 3488
  %i.am = load volatile i64, ptr %i.al, align 8
  %.in.i.i.i.i = icmp slt i64 %i.am, 0
  br i1 %.in.i.i.i.i, label %.critedge.i.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %submission_disabled.exit.i.i
  %i.an = getelementptr i8, ptr %.val29.val.i.i, i64 3304 ; 6 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, ptr elementtype(i32) %i.an) #19, !srcloc !25
  %i.ao = getelementptr i8, ptr %i.w, i64 -212    ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, -67
  %i.ar = or disjoint i32 %i.aq, 2
  store i32 %i.ar, ptr %i.ao, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.af, i64 noundef %i.ag) #21
  %i.as = getelementptr i8, ptr %i.w, i64 -24
  %i.at = load i16, ptr %i.as, align 8
  %i.au = zext i16 %i.at to i32
  %.val30.i.i = load ptr, ptr %i.ac, align 8
  %i.av = getelementptr i8, ptr %.val30.i.i, i64 8
  %.val30.val.i.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %.val30.val.i.i, i64 624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 17667, ptr %i.a, align 8, !annotation !41
  store i32 %i.au, ptr %1, align 4
  %i.ax = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.aw, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1, i1 noundef zeroext true) #22, !srcloc !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %.critedge28.i, label %bb.f

.critedge.i.i:                                    ; preds = %submission_disabled.exit.i.i, %bb.d, %bb.c
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.af, i64 noundef %i.ag) #21
  %i.ay = getelementptr i8, ptr %.val29.val.i.i, i64 1744 ; 2 uses
  %i.az = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ay) #21
  call fastcc void @__release_guc_id(ptr noundef %i.ae, ptr noundef nonnull %i.x) #22, !srcloc !31
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ay, i64 noundef %i.az) #21
  call fastcc void @__guc_context_destroy(ptr noundef nonnull %i.x) #22, !srcloc !106
  br label %.critedge28.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr i8, ptr %i.w, i64 8
  %i.bb = getelementptr i8, ptr %i.w, i64 -212    ; 2 uses
  %i.bc = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.af) #21 ; 2 uses
  %.val.i.i = load i32, ptr %i.bb, align 4        ; 2 uses
  %i.bd = and i32 %.val.i.i, 2
  %.not31.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not31.i.i, label %guc_lrc_desc_unpin.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = and i32 %.val.i.i, -67
  %i.bf = or disjoint i32 %i.be, 64
  store i32 %i.bf, ptr %i.bb, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.af, i64 noundef %i.bc) #21
  %i.bg = load volatile i32, ptr %i.an, align 4   ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !29

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.bn, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.bi = add i32 %.06.i.i.i.i, -1
  %i.bj = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, i32 %i.bi, ptr elementtype(i32) %i.an, i32 %.06.i.i.i.i) #19, !srcloc !27 ; 2 uses
  %i.bk = extractvalue { i8, i32 } %i.bj, 0       ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 2
  call void @llvm.assume(i1 %i.bl)
  %i.bm = trunc nuw i8 %i.bk to i1
  br i1 %i.bm, label %guc_lrc_desc_unpin.exit.i, label %raw_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !19, !llvm.loop !105

raw_atomic_try_cmpxchg.exit.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i
  %i.bn = extractvalue { i8, i32 } %i.bj, 1       ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !30

atomic_add_unless.exit.i.i.i.i:                   ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i.i, %bb.g
  call void @__intel_wakeref_put_last(ptr noundef %i.an, i64 noundef 1) #21
  br label %guc_lrc_desc_unpin.exit.i, !llvm.loop !105

guc_lrc_desc_unpin.exit.thread.i:                 ; preds = %bb.f
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.af, i64 noundef %i.bc) #21
  br label %guc_lrc_desc_unpin.exit.i

guc_lrc_desc_unpin.exit.i:                        ; preds = %.lr.ph.i.i.i.i, %guc_lrc_desc_unpin.exit.thread.i, %atomic_add_unless.exit.i.i.i.i
  %i.bp = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.r) #21
  %2 = getelementptr i8, ptr %0, i64 -8           ; 2 uses
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.w, ptr %2, align 8
  store ptr %i.s, ptr %i.w, align 8
  store ptr %i.bq, ptr %i.ba, align 8
  store volatile ptr %i.w, ptr %i.bq, align 8
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.lr.ph.i.a, %guc_lrc_desc_unpin.exit.i
  %.lcssa62.sink.i = phi i64 [ %i.bp, %guc_lrc_desc_unpin.exit.i ], [ %i.v, %.lr.ph.i.a ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %.lcssa62.sink.i) #21
  br label %deregister_destroyed_contexts.exit

deregister_destroyed_contexts.exit:               ; preds = %.critedge28.i, %intel_gt_pm_get.exit, %.loopexit.sink.split.i
  %i.br = call i32 @__SCT__might_resched() #21    ; 0 uses
  %i.bs = load volatile i32, ptr %i.f, align 8    ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %atomic_add_unless.exit.i.i.i.i13, label %.lr.ph.i.i.i.i10, !prof !29

.lr.ph.i.i.i.i10:                                 ; preds = %deregister_destroyed_contexts.exit, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i12
  %.06.i.i.i.i11 = phi i32 [ %i.bz, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i12 ], [ %i.bs, %deregister_destroyed_contexts.exit ] ; 2 uses
  %i.bu = add i32 %.06.i.i.i.i11, -1
  %i.bv = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.bu, ptr elementtype(i32) %i.f, i32 %.06.i.i.i.i11) #19, !srcloc !27 ; 2 uses
  %i.bw = extractvalue { i8, i32 } %i.bv, 0       ; 2 uses
  %i.bx = icmp ult i8 %i.bw, 2
  call void @llvm.assume(i1 %i.bx)
  %i.by = trunc nuw i8 %i.bw to i1
  br i1 %i.by, label %intel_guc_is_ready.exit.thread, label %raw_atomic_try_cmpxchg.exit.i.i.i.i.i12, !prof !19

raw_atomic_try_cmpxchg.exit.i.i.i.i.i12:          ; preds = %.lr.ph.i.i.i.i10
  %i.bz = extractvalue { i8, i32 } %i.bv, 1       ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %atomic_add_unless.exit.i.i.i.i13, label %.lr.ph.i.i.i.i10, !prof !30

atomic_add_unless.exit.i.i.i.i13:                 ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i.i12, %deregister_destroyed_contexts.exit
  call void @__intel_wakeref_put_last(ptr noundef %i.f, i64 noundef 0) #21
  br label %intel_guc_is_ready.exit.thread

intel_guc_is_ready.exit.thread:                   ; preds = %.lr.ph.i.i.i.i10, %atomic_add_unless.exit.i.i.i.i13, %bb.a, %intel_guc_is_ready.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_fail_worker_func(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1856
  %i.b = getelementptr i8, ptr %0, i64 -112       ; 2 uses
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.b) #21
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  store i32 0, ptr %i.d, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.c) #21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 3084
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e                       ; 2 uses
  %.not2729 = icmp eq i32 %i.h, 0
  br i1 %.not2729, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 2168
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.030 = phi i32 [ %i.h, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.030, i32 -1) #20, !srcloc !34 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.030, %i.n                      ; 2 uses
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @intel_guc_find_hung_context(ptr noundef %i.r) #22
  %.not27 = icmp eq i32 %i.o, 0
  br i1 %.not27, label %.critedge, label %bb.c, !llvm.loop !107

.critedge:                                        ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, i64, ptr, ...) @intel_gt_handle_error(ptr noundef %i.a, i32 noundef %i.e, i64 noundef 1, ptr noundef nonnull @.str.52, i32 noundef %i.e) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_timestamp_ping(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 -1624
  %i.d = getelementptr i8, ptr %0, i64 -2248      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 3176
  %i.g = tail call ptr @intel_runtime_pm_get_if_active(ptr noundef %i.f) #21
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !41
  store i32 0, ptr %i.b, align 4, !annotation !41
  %i.h = call i32 @intel_gt_reset_trylock(ptr noundef %i.d, ptr noundef nonnull %i.b) #21
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @__update_guc_busyness_stats(ptr noundef %i.c) #22, !srcloc !109
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 -144       ; 2 uses
  %i.j = call ptr @xa_find(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #21 ; 2 uses
  %.not2122 = icmp eq ptr %i.j, null
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.023 = phi ptr [ %i.k, %.lr.ph ], [ %i.j, %bb.c ]
  call void @guc_context_update_stats(ptr noundef nonnull %.023) #22, !srcloc !110
  %i.k = call ptr @xa_find_after(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #21 ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.l = load i32, ptr %i.b, align 4
  call void @intel_gt_reset_unlock(ptr noundef %i.d, i32 noundef %i.l) #21
  %i.m = load ptr, ptr @system_highpri_wq, align 8
  %i.n = getelementptr i8, ptr %0, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %i.m, ptr noundef %0, i64 noundef %i.o) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 3176
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.r) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -71, 1) i32 @intel_guc_tlb_invalidation_done(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 1064       ; 3 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #21
  %i.e = zext i32 %i.b to i64
  %i.f = tail call ptr @xa_load(ptr noundef %i.c, i64 noundef %i.e) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__wake_up(ptr noundef nonnull %i.f, i32 noundef 3, i32 noundef 1, ptr noundef null) #21 ; 0 uses
  br label %wait_wake_outstanding_tlb_g2h.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 -624
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 4312
  %i.n = load i32, ptr %i.m, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %i.n, i32 noundef %i.b) #21
  br label %wait_wake_outstanding_tlb_g2h.exit

wait_wake_outstanding_tlb_g2h.exit:               ; preds = %bb.c, %__drm_to_dev.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %wait_wake_outstanding_tlb_g2h.exit
  %.0 = phi i32 [ 0, %wait_wake_outstanding_tlb_g2h.exit ], [ -71, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -15, -16) i32 @intel_guc_invalidate_tlb_engines(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
end_hunk_0
begin_hunk_1_@guc_engine_busyness:bb.a

intel_gt_pm_get_if_awake.exit:                    ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.v = getelementptr i8, ptr %i.d, i64 2232     ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  tail call fastcc void @guc_update_engine_gt_clks(ptr noundef %0) #22, !srcloc !167
  tail call fastcc void @guc_update_pm_timestamp(ptr noundef %i.e, ptr noundef %1) #22, !srcloc !168
  %i.x = load volatile i32, ptr %i.n, align 8     ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !29

.lr.ph.i.i.i.i:                                   ; preds = %intel_gt_pm_get_if_awake.exit, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.ae, %raw_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.x, %intel_gt_pm_get_if_awake.exit ] ; 2 uses
  %i.z = add i32 %.06.i.i.i.i, -1
  %i.aa = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, i32 %i.z, ptr elementtype(i32) %i.n, i32 %.06.i.i.i.i) #19, !srcloc !27 ; 2 uses
  %i.ab = extractvalue { i8, i32 } %i.aa, 0       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %intel_gt_pm_put_async.exit, label %raw_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !19

raw_atomic_try_cmpxchg.exit.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i
  %i.ae = extractvalue { i8, i32 } %i.aa, 1       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !30

atomic_add_unless.exit.i.i.i.i:                   ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i.i, %intel_gt_pm_get_if_awake.exit
  tail call void @__intel_wakeref_put_last(ptr noundef %i.n, i64 noundef 1) #21
  br label %intel_gt_pm_put_async.exit

intel_gt_pm_put_async.exit:                       ; preds = %.lr.ph.i.i.i.i, %atomic_add_unless.exit.i.i.i.i
  %i.ag = load volatile i32, ptr %i.h, align 4
  %.not46 = icmp eq i32 %i.ag, %i.i
  br i1 %.not46, label %intel_gt_pm_get_if_awake.exit.thread, label %bb.c

bb.c:                                             ; preds = %intel_gt_pm_put_async.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  store i64 %i.w, ptr %i.v, align 8
  br label %intel_gt_pm_get_if_awake.exit.thread

intel_gt_pm_get_if_awake.exit.thread:             ; preds = %raw_atomic_try_cmpxchg.exit.i.i, %bb.b, %bb.a, %intel_gt_pm_put_async.exit, %bb.c
  %i.ah = getelementptr i8, ptr %0, i64 5376
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @intel_gt_clock_interval_to_ns(ptr noundef %i.d, i64 noundef %i.ai) #21 ; 2 uses
  %i.ak = load i8, ptr %i.a, align 8, !range !20, !noundef !21
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %intel_gt_pm_get_if_awake.exit.thread
  %i.am = getelementptr i8, ptr %i.d, i64 2232
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %0, i64 5384
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = tail call i64 @intel_gt_clock_interval_to_ns(ptr noundef %i.d, i64 noundef %i.aq) #21
  %i.as = add i64 %i.ar, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %intel_gt_pm_get_if_awake.exit.thread
  %.0 = phi i64 [ %i.as, %bb.d ], [ %i.aj, %intel_gt_pm_get_if_awake.exit.thread ] ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 5392      ; 3 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ugt i64 %.0, %i.au
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %.0, ptr %i.at, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.g) #21
  %i.aw = load i64, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i64 %i.aw
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @gen8_emit_bb_start(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xehp_emit_bb_start(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @assert_forcewakes_active(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mocs_init_engine(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_breadcrumbs_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xehp_enable_ccs_engines(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_engine_set_hwsp_writemask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @guc_context_alloc(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @lrc_alloc(ptr noundef %0, ptr noundef %i.b) #21
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_revoke(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val40 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val40, i64 8
  %.val40.val = load ptr, ptr %i.c, align 8       ; 4 uses
  %i.d = getelementptr i8, ptr %.val40.val, i64 624 ; 3 uses
  %i.e = load ptr, ptr %.val40.val, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 3176     ; 4 uses
  %i.g = getelementptr i8, ptr %.val40.val, i64 1656 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val, i64 4       ; 2 uses
  %i.i = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.h) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.h, i64 noundef %i.i) #21
  %i.j = getelementptr i8, ptr %0, i64 432        ; 4 uses
  %i.k = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.j) #21 ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 436        ; 4 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = or i32 %i.m, 8
  store i32 %i.n, ptr %i.l, align 4
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %submission_disabled.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 56
  %i.q = load volatile i32, ptr %i.p, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %submission_disabled.exit, label %submission_disabled.exit.thread, !prof !19

submission_disabled.exit:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val40.val, i64 3488
  %i.s = load volatile i64, ptr %i.r, align 8
  %.in.i.i = icmp slt i64 %i.s, 0
  %i.t = and i32 %i.m, 20
  %or.cond.not = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.in.i.i, i1 true, i1 %or.cond.not
  br i1 %or.cond, label %submission_disabled.exit.thread, label %bb.c

submission_disabled.exit.thread:                  ; preds = %bb.a, %bb.b, %submission_disabled.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.j, i64 noundef %i.k) #21
  tail call fastcc void @guc_cancel_context_requests(ptr noundef %0) #22, !srcloc !169
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 528
  %.val41 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val41, i64 48
  %i.x = tail call zeroext i1 @irq_work_queue(ptr noundef %i.w) #21 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %submission_disabled.exit
  %i.y = and i32 %i.m, 4
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 212        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.z, i32 2, ptr elementtype(i32) %i.z) #19, !srcloc !53
  %i.aa = load i32, ptr %i.l, align 4
  %i.ab = and i32 %i.aa, -21
  %i.ac = or disjoint i32 %i.ab, 4
  store i32 %i.ac, ptr %i.l, align 4
  %i.ad = getelementptr i8, ptr %0, i64 456       ; 3 uses
  tail call void @i915_sw_fence_reinit(ptr noundef %i.ad) #21
  %i.ae = tail call zeroext i1 @i915_sw_fence_await(ptr noundef %i.ad) #21 ; 0 uses
  tail call void @i915_sw_fence_commit(ptr noundef %i.ad) #21
  %i.af = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.ag = add i32 %i.af, 1
  %i.ah = or i32 %i.ag, %i.af
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not10.i.i.i.i.i.i, label %prep_context_pending_disable.exit, label %.sink.split.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.d ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i) #21
  br label %prep_context_pending_disable.exit

prep_context_pending_disable.exit:                ; preds = %bb.e, %.sink.split.i.i.i.i.i.i
  %i.ai = getelementptr i8, ptr %0, i64 624
  %i.aj = load i16, ptr %i.ai, align 8            ; 2 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.j, i64 noundef %i.k) #21
  %i.ak = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #21
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %prep_context_pending_disable.exit
  tail call fastcc void @__guc_context_set_preemption_timeout(ptr noundef %i.d, i16 noundef zeroext %i.aj, i32 noundef %2) #22, !srcloc !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4097, ptr %i.a, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %4 = zext i16 %i.aj to i32
  store i32 %4, ptr %3, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %5, align 4
  %i.am = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 2, i1 noundef zeroext true) #22, !srcloc !54 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.f) #21
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %0, i64 624       ; 2 uses
  %.val37 = load i16, ptr %i.an, align 8
  %i.ao = icmp eq i16 %.val37, -1
  br i1 %i.ao, label %.loopexit45, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #21
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = load i16, ptr %i.an, align 8
  tail call fastcc void @__guc_context_set_preemption_timeout(ptr noundef %i.d, i16 noundef zeroext %i.ar, i32 noundef %2) #22, !srcloc !171
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.f) #21
  br label %.loopexit45

.loopexit45:                                      ; preds = %.lr.ph, %bb.g, %bb.f
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.j, i64 noundef %i.k) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph46, %prep_context_pending_disable.exit, %.loopexit45, %submission_disabled.exit.thread
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_close(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1024
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 536        ; 2 uses
  %i.e = tail call zeroext i1 @cancel_delayed_work(ptr noundef %i.d) #21
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__delay_sched_disable(ptr noundef %i.d) #22, !srcloc !172
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 432        ; 2 uses
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #21
  %i.h = getelementptr i8, ptr %0, i64 436        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 256
  store i32 %i.j, ptr %i.h, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.g) #21
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @guc_context_pre_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @lrc_pre_pin(ptr noundef %0, ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #21
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @guc_context_pin(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 248
  %.val6.i = load i32, ptr %i.f, align 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = add i32 %.val6.i, %i.g
  %i.i = getelementptr i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, -4096
  %.not.i = icmp eq i32 %i.h, %i.k
  br i1 %.not.i, label %__guc_context_pin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 137        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.l, i32 2, ptr elementtype(i8) %i.l) #19, !srcloc !36
  br label %__guc_context_pin.exit

__guc_context_pin.exit:                           ; preds = %bb.a, %bb.b
  %i.m = tail call i32 @lrc_pin(ptr noundef %0, ptr noundef %i.b, ptr noundef %1) #21 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %intel_context_is_barrier.exit, label %.critedge, !prof !19

intel_context_is_barrier.exit:                    ; preds = %__guc_context_pin.exit
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load volatile i64, ptr %i.n, align 8
  %.in.i = trunc i64 %i.o to i1
  br i1 %.in.i, label %.critedge, label %bb.c, !prof !32

bb.c:                                             ; preds = %intel_context_is_barrier.exit
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 352      ; 4 uses
  %i.r = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.s = load volatile i32, ptr %i.q, align 4     ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !29

.lr.ph.i.i:                                       ; preds = %bb.c, %raw_atomic_try_cmpxchg.exit.i.i
  %.047.i.i = phi i32 [ %i.z, %raw_atomic_try_cmpxchg.exit.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.u = add i32 %.047.i.i, 1
  %i.v = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, i32 %i.u, ptr elementtype(i32) %i.q, i32 %.047.i.i) #19, !srcloc !27 ; 2 uses
  %i.w = extractvalue { i8, i32 } %i.v, 0         ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %.critedge, label %raw_atomic_try_cmpxchg.exit.i.i, !prof !19

raw_atomic_try_cmpxchg.exit.i.i:                  ; preds = %.lr.ph.i.i
  %i.z = extractvalue { i8, i32 } %i.v, 1         ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !30

raw_atomic_fetch_add_unless.exit.i.i:             ; preds = %raw_atomic_try_cmpxchg.exit.i.i, %bb.c
  %i.ab = tail call i32 @__intel_wakeref_get_first(ptr noundef %i.q) #21 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %raw_atomic_fetch_add_unless.exit.i.i, %__guc_context_pin.exit, %intel_context_is_barrier.exit
  ret i32 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_unpin(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.c = getelementptr i8, ptr %.val.val, i64 2224 ; 2 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #21
  tail call void @lrc_update_runtime(ptr noundef %0) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #21
  %i.e = getelementptr i8, ptr %0, i64 624        ; 2 uses
  %.val10.i = load i16, ptr %i.e, align 8
  %i.f = icmp eq i16 %.val10.i, -1
  br i1 %i.f, label %unpin_guc_id.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 708
  %.val11.i = load i8, ptr %i.g, align 4
  %.not12.i = icmp eq i8 %.val11.i, 0
  br i1 %.not12.i, label %bb.c, label %unpin_guc_id.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val.val, i64 1744 ; 2 uses
  %i.i = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.h) #21
  %.val.i7 = load i16, ptr %i.e, align 8
  %i.j = icmp eq i16 %.val.i7, -1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 632        ; 5 uses
  %i.l = load volatile ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 628
  %i.n = load volatile i32, ptr %i.m, align 4
  %.not9.i = icmp eq i32 %i.n, 0
  br i1 %.not9.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val.val, i64 1784
  %i.p = getelementptr i8, ptr %.val.val, i64 1792 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  store ptr %i.k, ptr %i.p, align 8
  store ptr %i.o, ptr %i.k, align 8
  %i.r = getelementptr i8, ptr %0, i64 640
  store ptr %i.q, ptr %i.r, align 8
  store volatile ptr %i.k, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.h, i64 noundef %i.i) #21
  br label %unpin_guc_id.exit

unpin_guc_id.exit:                                ; preds = %bb.a, %bb.b, %bb.g
  tail call void @lrc_unpin(ptr noundef %0) #21
  %i.s = getelementptr i8, ptr %0, i64 136
  %i.t = load volatile i64, ptr %i.s, align 8
  %.in.i = trunc i64 %i.t to i1
  br i1 %.in.i, label %intel_engine_pm_put_async.exit, label %bb.h, !prof !32

bb.h:                                             ; preds = %unpin_guc_id.exit
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 352      ; 4 uses
  %i.w = load volatile i32, ptr %i.v, align 4     ; 2 uses
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !29

.lr.ph.i.i.i:                                     ; preds = %bb.h, %raw_atomic_try_cmpxchg.exit.i.i.i.i
  %.06.i.i.i = phi i32 [ %i.ad, %raw_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.y = add i32 %.06.i.i.i, -1
  %i.z = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 %i.y, ptr elementtype(i32) %i.v, i32 %.06.i.i.i) #19, !srcloc !27 ; 2 uses
  %i.aa = extractvalue { i8, i32 } %i.z, 0        ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc nuw i8 %i.aa to i1
  br i1 %i.ac, label %intel_engine_pm_put_async.exit, label %raw_atomic_try_cmpxchg.exit.i.i.i.i, !prof !19

raw_atomic_try_cmpxchg.exit.i.i.i.i:              ; preds = %.lr.ph.i.i.i
  %i.ad = extractvalue { i8, i32 } %i.z, 1        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !30

atomic_add_unless.exit.i.i.i:                     ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i, %bb.h
  tail call void @__intel_wakeref_put_last(ptr noundef %i.v, i64 noundef 1) #21
  br label %intel_engine_pm_put_async.exit

intel_engine_pm_put_async.exit:                   ; preds = %.lr.ph.i.i.i, %atomic_add_unless.exit.i.i.i, %unpin_guc_id.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_post_unpin(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @lrc_post_unpin(ptr noundef %0) #21
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_cancel_request(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr i8, ptr %1, i64 88
  %.val12 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr i8, ptr %.val12, i64 680
  %.val.i.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i.i, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %.val12, ptr %.val.i.i ; 16 uses
  %i.e = getelementptr i8, ptr %1, i64 176
  %i.f = load volatile i32, ptr %i.e, align 8
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %intel_context_put.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, 1
  %i.j = or i32 %i.i, %i.h
  %.not10.i.i.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not10.i.i.i.i.i, label %intel_context_get.exit, label %.sink.split.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i) #21
  br label %intel_context_get.exit

intel_context_get.exit:                           ; preds = %bb.c, %.sink.split.i.i.i.i.i
  %i.k = getelementptr i8, ptr %spec.select.i.i, i64 16 ; 3 uses
  %.val.i = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.l, align 8       ; 3 uses
  %i.m = getelementptr i8, ptr %.val.val.i, i64 624
  %i.n = getelementptr i8, ptr %.val.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %spec.select.i.i, i64 432 ; 6 uses
  %i.s = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.r) #21 ; 2 uses
  %i.t = getelementptr i8, ptr %spec.select.i.i, i64 436 ; 12 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = add i32 %i.u, 512                        ; 2 uses
  store i32 %i.v, ptr %i.t, align 4
  %i.w = and i32 %i.u, 16
  %.not27.i = icmp eq i32 %i.w, 0
  br i1 %.not27.i, label %.critedge25.i, label %bb.d, !prof !32

bb.d:                                             ; preds = %intel_context_get.exit
  %i.x = getelementptr i8, ptr %.val.val.i, i64 1656
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i13, label %.critedge.i, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %i.aa = load volatile i32, ptr %i.z, align 4
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %submission_disabled.exit.i, label %.critedge.i, !prof !19

submission_disabled.exit.i:                       ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %.val.val.i, i64 3488
  %i.ac = load volatile i64, ptr %i.ab, align 8
  %.in.i.i.i = icmp slt i64 %i.ac, 0
  br i1 %.in.i.i.i, label %.critedge.i, label %bb.f, !prof !40

.critedge.i:                                      ; preds = %submission_disabled.exit.i, %bb.e, %bb.d
  %i.ad = and i32 %i.v, -17
  store i32 %i.ad, ptr %i.t, align 4
  br label %.critedge25.i

.critedge25.i:                                    ; preds = %.critedge.i, %intel_context_get.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #21
  br label %guc_context_block.exit

bb.f:                                             ; preds = %submission_disabled.exit.i
  %i.ae = getelementptr i8, ptr %spec.select.i.i, i64 212 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 2, ptr elementtype(i32) %i.ae) #19, !srcloc !53
  %i.af = load i32, ptr %i.t, align 4
  %i.ag = and i32 %i.af, -21
  %i.ah = or disjoint i32 %i.ag, 4
  store i32 %i.ah, ptr %i.t, align 4
  %i.ai = getelementptr i8, ptr %spec.select.i.i, i64 456 ; 3 uses
  tail call void @i915_sw_fence_reinit(ptr noundef %i.ai) #21
  %i.aj = tail call zeroext i1 @i915_sw_fence_await(ptr noundef %i.ai) #21 ; 0 uses
  tail call void @i915_sw_fence_commit(ptr noundef %i.ai) #21
  %i.ak = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %spec.select.i.i, i32 1, ptr elementtype(i32) %spec.select.i.i) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.al = add i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.am, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %prep_context_pending_disable.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  tail call void @refcount_warn_saturate(ptr noundef %spec.select.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #21
  br label %prep_context_pending_disable.exit.i

prep_context_pending_disable.exit.i:              ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.g
  %i.an = getelementptr i8, ptr %spec.select.i.i, i64 624
  %i.ao = load i16, ptr %i.an, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #21
  %i.ap = tail call ptr @intel_runtime_pm_get(ptr noundef %i.q) #21
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %guc_context_block.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %prep_context_pending_disable.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 4097, ptr %i.b, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %3 = zext i16 %i.ao to i32
  store i32 %3, ptr %i.ar, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %4, align 4
  %i.as = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.m, ptr noundef nonnull %i.b, i32 noundef 3, i32 noundef 2, i1 noundef zeroext true) #22, !srcloc !54 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.q) #21
  br label %guc_context_block.exit

guc_context_block.exit:                           ; preds = %.critedge25.i, %prep_context_pending_disable.exit.i, %.lr.ph.i
  %.0.i = getelementptr i8, ptr %spec.select.i.i, i64 456 ; 2 uses
  %i.at = call i32 @__SCT__might_resched() #21    ; 0 uses
  %i.au = getelementptr i8, ptr %spec.select.i.i, i64 488 ; 3 uses
  %i.av = load volatile i32, ptr %i.au, align 8
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %i915_sw_fence_wait.exit, label %bb.h

bb.h:                                             ; preds = %guc_context_block.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !41
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ax = call i64 @prepare_to_wait_event(ptr noundef %.0.i, ptr noundef nonnull %2, i32 noundef 2) #21 ; 0 uses
  %i.ay = load volatile i32, ptr %i.au, align 8
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @schedule() #21
  %i.ba = load volatile i32, ptr %i.au, align 8
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %select.unfold.i, label %bb.i

select.unfold.i:                                  ; preds = %bb.j, %bb.i
  call void @finish_wait(ptr noundef %.0.i, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %i915_sw_fence_wait.exit

i915_sw_fence_wait.exit:                          ; preds = %guc_context_block.exit, %select.unfold.i
  %i.bc = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bd = load volatile i64, ptr %i.bc, align 8
  %.in.in.i.i = and i64 %i.bd, 8
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %i915_request_signaled.exit9.i, label %guc_reset_state.exit

i915_request_signaled.exit9.i:                    ; preds = %i915_sw_fence_wait.exit
  call void @__rcu_read_lock() #21
  %i.be = load volatile i64, ptr %i.bc, align 8
  %.in.in.i7.i = and i64 %i.be, 8
  %.in.i8.not.i = icmp eq i64 %.in.in.i7.i, 0
  br i1 %.in.i8.not.i, label %i915_request_completed.exit, label %i915_request_completed.exit.thread34, !prof !19

i915_request_completed.exit.thread34:             ; preds = %i915_request_signaled.exit9.i
  call void @__rcu_read_unlock() #21
  br label %guc_reset_state.exit

i915_request_completed.exit:                      ; preds = %i915_request_signaled.exit9.i
  %i.bf = getelementptr i8, ptr %1, i64 448
  %i.bg = load volatile ptr, ptr %i.bf, align 8
  %i.bh = load volatile i32, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %1, i64 40
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = sub i32 %i.bh, %i.bk
  %i.bm = icmp sgt i32 %i.bl, -1
  call void @__rcu_read_unlock() #21
  br i1 %i.bm, label %guc_reset_state.exit, label %bb.k

bb.k:                                             ; preds = %i915_request_completed.exit
  call void @__i915_request_skip(ptr noundef %1) #21
  %i.bn = getelementptr i8, ptr %0, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %1, i64 456
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bo, i64 44
  %.val = load i32, ptr %i.br, align 4
  %i.bs = add i32 %.val, -1
  %i.bt = and i32 %i.bs, %i.bq
  %i.bu = getelementptr i8, ptr %0, i64 16
  %.val.i15 = load ptr, ptr %i.bu, align 8        ; 4 uses
  %i.bv = getelementptr i8, ptr %.val.i15, i64 1240
  %.val.i.i16 = load i32, ptr %i.bv, align 8
  %i.bw = and i32 %.val.i.i16, 32
  %.not.i.i17 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i17, label %__context_to_physical_engine.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr i8, ptr %.val.i15, i64 44
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = getelementptr i8, ptr %.val.i15, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4940
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, %i.by                    ; 2 uses
  %.not.i.i.i18 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i18, label %__context_to_physical_engine.exit.i, label %.thread.split.loop.exit22.i.i.i

.thread.split.loop.exit22.i.i.i:                  ; preds = %bb.l
  %i.ce = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %i.cd, i32 -1) #20, !srcloc !34
  %i.cf = getelementptr i8, ptr %i.ca, i64 4024
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %__context_to_physical_engine.exit.i

__context_to_physical_engine.exit.i:              ; preds = %.thread.split.loop.exit22.i.i.i, %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.val.i15, %bb.k ], [ %i.ci, %.thread.split.loop.exit22.i.i.i ], [ null, %bb.l ] ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ck = load volatile i64, ptr %i.cj, align 8
  %i.cl = and i64 %i.ck, 8192
  %.not.i7.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i7.i, label %intel_context_is_schedulable.exit.i, label %guc_reset_state.exit

intel_context_is_schedulable.exit.i:              ; preds = %__context_to_physical_engine.exit.i
  %i.cm = load volatile i64, ptr %i.cj, align 8
  %.in.in.i.i21 = and i64 %i.cm, 64
  %.in.not.i.i = icmp eq i64 %.in.in.i.i21, 0
  br i1 %.in.not.i.i, label %bb.m, label %guc_reset_state.exit

bb.m:                                             ; preds = %intel_context_is_schedulable.exit.i
  call void @lrc_init_regs(ptr noundef %0, ptr noundef %.0.i.i, i1 noundef zeroext true) #21
  %i.cn = call i32 @lrc_update_regs(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef %i.bt) #21 ; 0 uses
  br label %guc_reset_state.exit

guc_reset_state.exit:                             ; preds = %i915_sw_fence_wait.exit, %bb.m, %intel_context_is_schedulable.exit.i, %__context_to_physical_engine.exit.i, %i915_request_completed.exit.thread34, %i915_request_completed.exit
  %.val.i22 = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.co = getelementptr i8, ptr %.val.i22, i64 8
  %.val.val.i23 = load ptr, ptr %i.co, align 8    ; 3 uses
  %i.cp = getelementptr i8, ptr %.val.val.i23, i64 624
  %i.cq = getelementptr i8, ptr %.val.i22, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.r) #21 ; 2 uses
  %i.cv = getelementptr i8, ptr %.val.val.i23, i64 1656
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i24, label %.critedge.i26, label %bb.n, !prof !32

bb.n:                                             ; preds = %guc_reset_state.exit
  %i.cx = getelementptr i8, ptr %i.cw, i64 56
  %i.cy = load volatile i32, ptr %i.cx, align 4
  %.not.i.i.i25 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i25, label %submission_disabled.exit.i28, label %.critedge.i26, !prof !19

submission_disabled.exit.i28:                     ; preds = %bb.n
  %i.cz = getelementptr i8, ptr %.val.val.i23, i64 3488
  %i.da = load volatile i64, ptr %i.cz, align 8
  %.in.i.i.i30 = icmp slt i64 %i.da, 0
  br i1 %.in.i.i.i30, label %.critedge.i26, label %bb.o, !prof !40

bb.o:                                             ; preds = %submission_disabled.exit.i28
  %i.db = load i32, ptr %i.t, align 4
  %i.dc = and i32 %i.db, 2096140
  %.not.i20.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i20.i, label %bb.p, label %.critedge.i26, !prof !51

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr i8, ptr %spec.select.i.i, i64 624 ; 2 uses
  %.val.i.i31 = load i16, ptr %i.dd, align 8      ; 2 uses
  %i.de = icmp eq i16 %.val.i.i31, -1
  br i1 %i.de, label %.critedge.i26, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  %.val5.i.i = load ptr, ptr %i.k, align 8
  %i.df = getelementptr i8, ptr %.val5.i.i, i64 8
  %.val5.val.i.i = load ptr, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %.val5.val.i.i, i64 2104
  %i.dh = zext i16 %.val.i.i31 to i64
  %i.di = call ptr @xa_load(ptr noundef %i.dg, i64 noundef %i.dh) #21
  %.not6.i.i = icmp eq ptr %i.di, null
  br i1 %.not6.i.i, label %.critedge.i26, label %context_cant_unblock.exit.i, !prof !55

context_cant_unblock.exit.i:                      ; preds = %bb.q
  %i.dj = getelementptr i8, ptr %spec.select.i.i, i64 212
  %i.dk = load volatile i32, ptr %i.dj, align 4
  %.not7.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not7.i.i, label %.critedge.i26, label %bb.r, !prof !40

bb.r:                                             ; preds = %context_cant_unblock.exit.i
  %i.dl = load i32, ptr %i.t, align 4
  %i.dm = or i32 %i.dl, 48
  store i32 %i.dm, ptr %i.t, align 4
  %i.dn = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %spec.select.i.i, i32 1, ptr elementtype(i32) %spec.select.i.i) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.s, !prof !32

bb.s:                                             ; preds = %bb.r
  %i.do = add i32 %i.dn, 1
  %i.dp = or i32 %i.do, %i.dn
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.dp, -1
  br i1 %.not10.i.i.i.i.i.i, label %intel_context_get.exit.i, label %.sink.split.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.s, %bb.r
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.r ], [ 1, %bb.s ]
  call void @refcount_warn_saturate(ptr noundef %spec.select.i.i, i32 noundef %.sink.i.i.i.i.i.i) #21
  br label %intel_context_get.exit.i

intel_context_get.exit.i:                         ; preds = %.sink.split.i.i.i.i.i.i, %bb.s
  %i.dq = load i32, ptr %i.t, align 4
  %i.dr = add i32 %i.dq, -512
  store i32 %i.dr, ptr %i.t, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.cu) #21
  %i.ds = call ptr @intel_runtime_pm_get(ptr noundef %i.ct) #21
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %guc_context_unblock.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %intel_context_get.exit.i
  %.val19.i = load i16, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4097, ptr %i.a, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.du = zext i16 %.val19.i to i32
  store i32 %i.du, ptr %5, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %6, align 4
  %i.dv = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.cp, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 2, i1 noundef zeroext true) #22, !srcloc !173 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.ct) #21
  br label %guc_context_unblock.exit

.critedge.i26:                                    ; preds = %context_cant_unblock.exit.i, %bb.q, %bb.p, %bb.o, %submission_disabled.exit.i28, %bb.n, %guc_reset_state.exit
  %i.dw = load i32, ptr %i.t, align 4
  %i.dx = add i32 %i.dw, -512
  store i32 %i.dx, ptr %i.t, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.cu) #21
  br label %guc_context_unblock.exit

guc_context_unblock.exit:                         ; preds = %intel_context_get.exit.i, %.lr.ph.i32, %.critedge.i26
  %i.dy = getelementptr i8, ptr %0, i64 392
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 112
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #19, !srcloc !24 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.v, label %bb.t

bb.t:                                             ; preds = %guc_context_unblock.exit
  %i.ee = icmp slt i32 %i.ec, 1
  br i1 %i.ee, label %bb.u, label %intel_context_put.exit, !prof !32

bb.u:                                             ; preds = %bb.t
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #21
  br label %intel_context_put.exit

bb.v:                                             ; preds = %guc_context_unblock.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !33
  call void %i.eb(ptr noundef %0) #21, !inline_history !2
  br label %intel_context_put.exit

intel_context_put.exit:                           ; preds = %bb.v, %bb.u, %bb.t, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_context_enter_engine(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_context_exit_engine(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_sched_disable(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8         ; 7 uses
  %i.c = getelementptr i8, ptr %.val.val, i64 624
  %i.d = getelementptr i8, ptr %.val.val, i64 1892
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 432        ; 3 uses
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #21 ; 3 uses
  %i.h = getelementptr i8, ptr %.val.val, i64 1656
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bypass_sched_disable.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.i, i64 56
  %i.k = load volatile i32, ptr %i.j, align 4
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %submission_disabled.exit.i, label %bypass_sched_disable.exit.thread, !prof !19

submission_disabled.exit.i:                       ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.val.val, i64 3488
  %i.m = load volatile i64, ptr %i.l, align 8
  %.in.i.i.i = icmp slt i64 %i.m, 0
  br i1 %.in.i.i.i, label %bypass_sched_disable.exit.thread, label %bb.c

bb.c:                                             ; preds = %submission_disabled.exit.i
  %i.n = getelementptr i8, ptr %0, i64 624
  %.val.i = load i16, ptr %i.n, align 8           ; 2 uses
  %i.o = icmp eq i16 %.val.i, -1
  br i1 %i.o, label %bypass_sched_disable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.val.val, i64 2104
  %i.q = zext i16 %.val.i to i64
  %i.r = tail call ptr @xa_load(ptr noundef %i.p, i64 noundef %i.q) #21
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bypass_sched_disable.exit.thread, label %bypass_sched_disable.exit

bypass_sched_disable.exit.thread:                 ; preds = %bb.a, %bb.b, %submission_disabled.exit.i, %bb.c, %bb.d
  %i.s = getelementptr i8, ptr %0, i64 436        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -17
  store i32 %i.u, ptr %i.s, align 4
  br label %bb.e

bypass_sched_disable.exit:                        ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 436
  %.val7.i = load i32, ptr %i.v, align 4
  %i.w = and i32 %.val7.i, 16
  %.not8.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i, label %bb.e, label %intel_context_is_closed.exit

bb.e:                                             ; preds = %bypass_sched_disable.exit.thread, %bypass_sched_disable.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.g) #21
  tail call void @__intel_context_do_unpin(ptr noundef %0, i32 noundef 2) #21
  br label %bb.g

intel_context_is_closed.exit:                     ; preds = %bypass_sched_disable.exit
  %i.x = getelementptr i8, ptr %0, i64 136
  %i.y = load volatile i64, ptr %i.x, align 8
  %.in.in.i = and i64 %i.y, 16
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %bb.f, label %guc_id_pressure.exit.thread

bb.f:                                             ; preds = %intel_context_is_closed.exit
  %i.z = getelementptr i8, ptr %0, i64 708
  %.val20 = load i8, ptr %i.z, align 4
  %.not.i22 = icmp eq i8 %.val20, 0
  br i1 %.not.i22, label %guc_id_pressure.exit, label %guc_id_pressure.exit.thread

guc_id_pressure.exit:                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %.val.val, i64 1800
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %.val.val, i64 1896
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp ugt i32 %i.ab, %i.ad
  %i.af = icmp eq i32 %i.e, 0
  %or.cond.not = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.not, label %guc_id_pressure.exit.thread, label %msecs_to_jiffies.exit

msecs_to_jiffies.exit:                            ; preds = %guc_id_pressure.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.g) #21
  %i.ag = load ptr, ptr @system_dfl_wq, align 8
  %i.ah = getelementptr i8, ptr %0, i64 536
  %i.ai = tail call i64 @__msecs_to_jiffies(i32 noundef %i.e) #21
  %i.aj = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.ai) #21 ; 0 uses
  br label %bb.g

guc_id_pressure.exit.thread:                      ; preds = %bb.f, %guc_id_pressure.exit, %intel_context_is_closed.exit
  tail call fastcc void @do_sched_disable(ptr noundef %i.c, ptr noundef %0, i64 noundef %i.g) #22, !srcloc !174
  br label %bb.g

bb.g:                                             ; preds = %msecs_to_jiffies.exit, %guc_id_pressure.exit.thread, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guc_context_update_stats(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 212        ; 8 uses
  %i.b = load volatile i32, ptr %i.a, align 4     ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %intel_context_unpin.exit, label %.lr.ph.i, !prof !29

.lr.ph.i:                                         ; preds = %bb.a, %raw_atomic_try_cmpxchg.exit.i
  %.04.i = phi i32 [ %i.h, %raw_atomic_try_cmpxchg.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = add i32 %.04.i, 1
  %i.d = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 %i.c, ptr elementtype(i32) %i.a, i32 %.04.i) #19, !srcloc !27 ; 2 uses
  %i.e = extractvalue { i8, i32 } %i.d, 0         ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %intel_context_pin_if_active.exit, label %raw_atomic_try_cmpxchg.exit.i, !prof !19

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.h = extractvalue { i8, i32 } %i.d, 1         ; 2 uses
  %.not7.i = icmp eq i32 %i.h, 0
  br i1 %.not7.i, label %intel_context_unpin.exit, label %.lr.ph.i, !prof !30

intel_context_pin_if_active.exit:                 ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val.val.i, i64 2224 ; 2 uses
  %i.l = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.k) #21
  tail call void @lrc_update_runtime(ptr noundef %0) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.k, i64 noundef %i.l) #21
  %i.m = getelementptr i8, ptr %0, i64 392        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %intel_context_pin_if_active.exit
  tail call void @__intel_context_do_unpin(ptr noundef %0, i32 noundef 1) #21
  br label %intel_context_unpin.exit

.preheader.i:                                     ; preds = %intel_context_pin_if_active.exit, %atomic_add_unless.exit.i
  %i.q = load volatile i32, ptr %i.a, align 4     ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %atomic_add_unless.exit.i, label %.lr.ph.i4, !prof !29

.lr.ph.i4:                                        ; preds = %.preheader.i, %raw_atomic_try_cmpxchg.exit.i.i
  %.010.i = phi i32 [ %i.x, %raw_atomic_try_cmpxchg.exit.i.i ], [ %i.q, %.preheader.i ] ; 2 uses
  %i.s = add i32 %.010.i, -1
  %i.t = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 %i.s, ptr elementtype(i32) %i.a, i32 %.010.i) #19, !srcloc !27 ; 2 uses
  %i.u = extractvalue { i8, i32 } %i.t, 0         ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
end_hunk_1
begin_hunk_2_@__guc_context_set_preemption_timeout:bb.a
  %i.l = icmp ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !annotation !41
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 4107, ptr %i.n, align 4
  %i.o = zext i16 %1 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 537001985, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.r, align 4
  store i32 1, ptr %3, align 4
  %i.s = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %0, ptr noundef nonnull %i.n, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true) #22, !srcloc !49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4103, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = zext i16 %1 to i32
  store i32 %i.u, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.v, align 4
  %i.w = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !43
  %i.x = and i32 %i.w, 2147483647
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.y = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  %i.z = and i64 %i.y, 512
  %.not.i.i.not = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.not, label %.thread.i, label %.thread.i.thread

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.ab = call i32 @intel_guc_ct_send(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ac = icmp eq i32 %i.ab, -16
  br i1 %i.ac, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !45

.thread.i.thread:                                 ; preds = %bb.d
  %i.ad = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.ae = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.af = call i32 @intel_guc_ct_send(ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ag = icmp eq i32 %i.af, -16
  br i1 %i.ag, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !45

.lr.ph.split.us.split.i:                          ; preds = %.thread.i.thread, %bb.e
  %.01620.us.i = phi i32 [ %i.ai, %bb.e ], [ 1, %.thread.i.thread ] ; 2 uses
  %i.ah = call i64 @msleep_interruptible(i32 noundef %.01620.us.i) #21
  %.not18.us.i = icmp eq i64 %i.ah, 0
  br i1 %.not18.us.i, label %bb.e, label %intel_guc_send_busy_loop.exit

bb.e:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ai = shl i32 %.01620.us.i, 1
  %i.aj = call i32 @intel_guc_ct_send(ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ak = icmp eq i32 %i.aj, -16
  br i1 %i.ak, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !46

.lr.ph.split.split.i:                             ; preds = %.thread.i, %.lr.ph.split.split.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !47
  %i.al = call i32 @intel_guc_ct_send(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.am = icmp eq i32 %i.al, -16
  br i1 %i.am, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !46

intel_guc_send_busy_loop.exit:                    ; preds = %.lr.ph.split.us.split.i, %bb.e, %.lr.ph.split.split.i, %.thread.i.thread, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %intel_guc_send_busy_loop.exit, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_sw_fence_reinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_sw_fence_await(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_sw_fence_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__delay_sched_disable(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -536       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -520
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.c, align 8         ; 4 uses
  %i.d = getelementptr i8, ptr %.val.val, i64 624
  %i.e = getelementptr i8, ptr %0, i64 -104       ; 2 uses
  %i.f = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.e) #21 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.val, i64 1656
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bypass_sched_disable.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load volatile i32, ptr %i.i, align 4
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %submission_disabled.exit.i, label %bypass_sched_disable.exit.thread, !prof !19

submission_disabled.exit.i:                       ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val.val, i64 3488
  %i.l = load volatile i64, ptr %i.k, align 8
  %.in.i.i.i = icmp slt i64 %i.l, 0
  br i1 %.in.i.i.i, label %bypass_sched_disable.exit.thread, label %bb.c

bb.c:                                             ; preds = %submission_disabled.exit.i
  %i.m = getelementptr i8, ptr %0, i64 88
  %.val.i = load i16, ptr %i.m, align 8           ; 2 uses
  %i.n = icmp eq i16 %.val.i, -1
  br i1 %i.n, label %bypass_sched_disable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val.val, i64 2104
  %i.p = zext i16 %.val.i to i64
  %i.q = tail call ptr @xa_load(ptr noundef %i.o, i64 noundef %i.p) #21
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bypass_sched_disable.exit.thread, label %bypass_sched_disable.exit

bypass_sched_disable.exit.thread:                 ; preds = %bb.a, %bb.b, %submission_disabled.exit.i, %bb.c, %bb.d
  %i.r = getelementptr i8, ptr %0, i64 -100       ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -17
  store i32 %i.t, ptr %i.r, align 4
  br label %bb.e

bypass_sched_disable.exit:                        ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 -100
  %.val7.i = load i32, ptr %i.u, align 4
  %i.v = and i32 %.val7.i, 16
  %.not8.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bypass_sched_disable.exit.thread, %bypass_sched_disable.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.e, i64 noundef %i.f) #21
  tail call void @__intel_context_do_unpin(ptr noundef %i.a, i32 noundef 2) #21
  br label %bb.g

bb.f:                                             ; preds = %bypass_sched_disable.exit
  tail call fastcc void @do_sched_disable(ptr noundef %i.d, ptr noundef %i.a, i64 noundef %i.f) #22, !srcloc !184
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @do_sched_disable(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 3176     ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 436        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -21
  %i.k = or disjoint i32 %i.j, 4
  store i32 %i.k, ptr %i.h, align 4
  %i.l = getelementptr i8, ptr %1, i64 456        ; 3 uses
  tail call void @i915_sw_fence_reinit(ptr noundef %i.l) #21
  %i.m = tail call zeroext i1 @i915_sw_fence_await(ptr noundef %i.l) #21 ; 0 uses
  tail call void @i915_sw_fence_commit(ptr noundef %i.l) #21
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 1, ptr elementtype(i32) %1) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i, label %prep_context_pending_disable.exit, label %.sink.split.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i.i) #21
  br label %prep_context_pending_disable.exit

prep_context_pending_disable.exit:                ; preds = %bb.b, %.sink.split.i.i.i.i.i.i
  %i.q = getelementptr i8, ptr %1, i64 624
  %i.r = load i16, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 432
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.s, i64 noundef %2) #21
  %i.t = tail call ptr @intel_runtime_pm_get(ptr noundef %i.g) #21
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %prep_context_pending_disable.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4097, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = zext i16 %i.r to i32
  store i32 %3, ptr %i.v, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %4, align 4
  %i.w = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 2, i1 noundef zeroext true) #22, !srcloc !54 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.g) #21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %prep_context_pending_disable.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @lrc_pre_pin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @lrc_pin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_wakeref_get_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @unpin_guc_id(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 624        ; 2 uses
  %.val10 = load i16, ptr %i.a, align 8
  %i.b = icmp eq i16 %.val10, -1
  br i1 %i.b, label %.critedge, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 708
  %.val11 = load i8, ptr %i.c, align 4
  %.not12 = icmp eq i8 %.val11, 0
  br i1 %.not12, label %bb.c, label %.critedge, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 1120       ; 2 uses
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #21
  %.val = load i16, ptr %i.a, align 8
  %i.f = icmp eq i16 %.val, -1
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 632        ; 5 uses
  %i.h = load volatile ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, %i.g
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 628
  %i.j = load volatile i32, ptr %i.i, align 4
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 1160
  %i.l = getelementptr i8, ptr %0, i64 1168       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store ptr %i.g, ptr %i.l, align 8
  store ptr %i.k, ptr %i.g, align 8
  %i.n = getelementptr i8, ptr %1, i64 640
  store ptr %i.m, ptr %i.n, align 8
  store volatile ptr %i.g, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.e) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.g
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lrc_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lrc_update_runtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_wakeref_put_last(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lrc_post_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_request_skip(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_context_do_unpin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__release_guc_id(ptr noundef %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 624        ; 4 uses
  %.val = load i16, ptr %i.a, align 8             ; 2 uses
  %i.b = icmp eq i16 %.val, -1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 708
  %.val20 = load i8, ptr %i.c, align 4            ; 2 uses
  %.not21 = icmp eq i8 %.val20, 0
  br i1 %.not21, label %bb.c, label %fls.exit

fls.exit:                                         ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 1152
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext i16 %.val to i32
  %i.g = zext i8 %.val20 to i64
  %i.h = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 256) %i.g, i32 -1) #20, !srcloc !56
  %i.i = add i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = trunc i64 %i.k to i32
  tail call void @__bitmap_clear(ptr noundef %i.e, i32 noundef range(i32 0, 65536) %i.f, i32 noundef %i.l) #21
  br label %bitmap_clear.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 1176       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8
  %i.p = getelementptr i8, ptr %0, i64 1128
  %i.q = load i16, ptr %i.a, align 8
  %i.r = zext i16 %i.q to i32
  tail call void @ida_free(ptr noundef %i.p, i32 noundef %i.r) #21
  br label %bitmap_clear.exit

bitmap_clear.exit:                                ; preds = %fls.exit, %bb.c
  %i.s = getelementptr i8, ptr %0, i64 1282
  %.val.i = load i8, ptr %i.s, align 2, !range !20, !noundef !21
  %i.t = trunc nuw i8 %.val.i to i1
  br i1 %i.t, label %bb.d, label %clr_ctx_id_mapping.exit, !prof !19

bb.d:                                             ; preds = %bitmap_clear.exit
  %i.u = load i16, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %0, i64 1472
  %.val7.i = load ptr, ptr %i.v, align 8          ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val7.i, null
  %i.w = zext i16 %i.u to i64                     ; 2 uses
  %i.x = getelementptr [128 x i8], ptr %.val7.i, i64 %i.w ; 2 uses
  %.not1.i.i = icmp eq ptr %i.x, null
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not1.i.i
  br i1 %.not.i.i, label %_reset_lrc_desc_v69.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.x, i8 0, i64 128, i1 false)
  br label %_reset_lrc_desc_v69.exit.i

_reset_lrc_desc_v69.exit.i:                       ; preds = %bb.e, %bb.d
  %i.y = getelementptr i8, ptr %0, i64 1480       ; 3 uses
  %i.z = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.y) #21
  %i.aa = tail call ptr @__xa_erase(ptr noundef %i.y, i64 noundef %i.w) #21 ; 0 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.y, i64 noundef %i.z) #21
  br label %clr_ctx_id_mapping.exit

clr_ctx_id_mapping.exit:                          ; preds = %bitmap_clear.exit, %_reset_lrc_desc_v69.exit.i
  store i16 -1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %clr_ctx_id_mapping.exit, %bb.a
  %i.ab = getelementptr i8, ptr %1, i64 632       ; 5 uses
  %i.ac = load volatile ptr, ptr %i.ab, align 8   ; 3 uses
  %.not = icmp eq ptr %i.ac, %i.ab
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %1, i64 640       ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store volatile ptr %i.ac, ptr %i.ae, align 8
  store volatile ptr %i.ab, ptr %i.ab, align 8
  store volatile ptr %i.ab, ptr %i.ad, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
end_hunk_2

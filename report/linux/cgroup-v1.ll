Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cgroup-v1?download=true
inline.NumInlined: 179
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cgroup_migrate_finish

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cgroup1_pidlist_destroy_all(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1000       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #15
  %i.b = getelementptr i8, ptr %0, i64 984        ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not60 = icmp eq ptr %i.c, %i.b
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn.in61 = phi ptr [ %.pn, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %.pn = load ptr, ptr %.pn.in61, align 8         ; 2 uses
  %i.d = load ptr, ptr @cgroup_pidlist_destroy_wq, align 8
  %i.e = getelementptr i8, ptr %.pn.in61, i64 24
  %i.f = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %i.d, ptr noundef %i.e, i64 noundef 0) #15 ; 0 uses
  %.not = icmp eq ptr %.pn, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @mutex_unlock(ptr noundef %i.a) #15
  %i.g = load ptr, ptr @cgroup_pidlist_destroy_wq, align 8
  tail call void @__flush_workqueue(ptr noundef %i.g) #15
  %i.h = load volatile ptr, ptr %i.b, align 8
  %.not59 = icmp eq ptr %i.h, %i.b
  br i1 %.not59, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "726: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 726b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 726) #16, !srcloc !39
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 216, i32 0, i64 16) #16, !srcloc !40
  unreachable

bb.c:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @cgroup_pidlist_show(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.27, i32 noundef %i.a) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef ptr @cgroup_pidlist_start(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.css_task_iter, align 8      ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @of_css(ptr noundef %i.b) #15
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %.val52 = load ptr, ptr %i.a, align 8
  %.val52.val = load ptr, ptr %.val52, align 8
  %i.g = getelementptr i8, ptr %.val52.val, i64 104
  %.val52.val.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val52.val.val, i64 64
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = load i64, ptr %1, align 8
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = getelementptr i8, ptr %i.f, i64 1000
  tail call void @mutex_lock(ptr noundef %i.m) #15
  %i.n = getelementptr i8, ptr %i.d, i64 128      ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @task_active_pid_ns(ptr noundef %i.q) #15
  %i.s = getelementptr i8, ptr %i.f, i64 984      ; 3 uses
  %.pn14.i = load ptr, ptr %i.s, align 8          ; 2 uses
  %.not16.i = icmp eq ptr %.pn14.i, %i.s
  br i1 %.not16.i, label %.thread57, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.pn17.i = phi ptr [ %.pn.i, %bb.d ], [ %.pn14.i, %bb.b ] ; 4 uses
  %.01318.i = getelementptr i8, ptr %.pn17.i, i64 -32
  %i.t = load i32, ptr %.01318.i, align 8
  %i.u = icmp eq i32 %i.t, %i.j
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %.pn17.i, i64 -24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.s
  br i1 %.not.i, label %.thread57, label %.lr.ph.i, !llvm.loop !41

.thread57:                                        ; preds = %bb.d, %bb.b
  store ptr null, ptr %i.n, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.01318.i.le = getelementptr i8, ptr %.pn17.i, i64 -32 ; 3 uses
  store ptr %.01318.i.le, ptr %i.n, align 8
  %.not48 = icmp eq ptr %.01318.i.le, null
  br i1 %.not48, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.a, %.thread57, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.y = tail call i32 @cgroup_task_count(ptr noundef %i.f) #15 ; 5 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i32 %i.y, 0
  %i.ab = shl nsw i64 %i.z, 2
  %.0.i.i = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ac = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %.0.i.i, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #18 ; 9 uses
  %.not.i53 = icmp eq ptr %i.ac, null
  br i1 %.not.i53, label %bb.t, label %bb.f

bb.f:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false), !annotation !11
  call void @css_task_iter_start(ptr noundef %i.f, i32 noundef 0, ptr noundef nonnull %2) #15
  %i.ad = call ptr @css_task_iter_next(ptr noundef nonnull %2) #15 ; 3 uses
  %.not4052.i = icmp eq ptr %i.ad, null
  %i.ae = icmp eq i32 %i.y, 0
  %or.cond53.i = or i1 %i.ae, %.not4052.i
  br i1 %or.cond53.i, label %._crit_edge.i, label %.lr.ph.i54, !prof !45

.lr.ph.i54:                                       ; preds = %bb.f
  %i.af = icmp eq i32 %i.j, 0
  br i1 %i.af, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %bb.h
  %i.ag = phi ptr [ %i.am, %bb.h ], [ %i.ad, %.lr.ph.i54 ]
  %.03754.us.i = phi i32 [ %.1.us.i, %bb.h ], [ 0, %.lr.ph.i54 ] ; 3 uses
  %i.ah = call i32 @__task_pid_nr_ns(ptr noundef nonnull %i.ag, i32 noundef 1, ptr noundef null) #15 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = add i32 %.03754.us.i, 1
  %i.ak = sext i32 %.03754.us.i to i64
  %i.al = getelementptr [4 x i8], ptr %i.ac, i64 %i.ak
  store i32 %i.ah, ptr %i.al, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us.i
  %.1.us.i = phi i32 [ %i.aj, %bb.g ], [ %.03754.us.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.am = call ptr @css_task_iter_next(ptr noundef nonnull %2) #15 ; 2 uses
  %.not40.us.i = icmp eq ptr %i.am, null
  %i.an = icmp eq i32 %.1.us.i, %i.y
  %or.cond.us.i = select i1 %.not40.us.i, i1 true, i1 %i.an, !prof !46
  br i1 %or.cond.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !prof !47, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54, %bb.j
  %i.ao = phi ptr [ %i.au, %bb.j ], [ %i.ad, %.lr.ph.i54 ]
  %.03754.i = phi i32 [ %.1.i, %bb.j ], [ 0, %.lr.ph.i54 ] ; 3 uses
  %i.ap = call i32 @__task_pid_nr_ns(ptr noundef nonnull %i.ao, i32 noundef 0, ptr noundef null) #15 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ar = add i32 %.03754.i, 1
  %i.as = sext i32 %.03754.i to i64
  %i.at = getelementptr [4 x i8], ptr %i.ac, i64 %i.as
  store i32 %i.ap, ptr %i.at, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.i
  %.1.i = phi i32 [ %i.ar, %bb.i ], [ %.03754.i, %.lr.ph.split.i ] ; 3 uses
  %i.au = call ptr @css_task_iter_next(ptr noundef nonnull %2) #15 ; 2 uses
  %.not40.i = icmp eq ptr %i.au, null
  %i.av = icmp eq i32 %.1.i, %i.y
  %or.cond.i = select i1 %.not40.i, i1 true, i1 %i.av, !prof !46
  br i1 %or.cond.i, label %._crit_edge.i, label %.lr.ph.split.i, !prof !47, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.j, %bb.h, %bb.f
  %.037.lcssa.i = phi i32 [ 0, %bb.f ], [ %.1.us.i, %bb.h ], [ %.1.i, %bb.j ] ; 6 uses
  call void @css_task_iter_end(ptr noundef nonnull %2) #15
  %i.aw = sext i32 %.037.lcssa.i to i64
  call void @sort(ptr noundef nonnull %i.ac, i64 noundef %i.aw, i64 noundef 4, ptr noundef @cmppid, ptr noundef null) #15
  %or.cond.i.i = icmp ult i32 %.037.lcssa.i, 2
  br i1 %or.cond.i.i, label %pidlist_uniq.exit.i, label %.preheader25.i.i

.preheader25.i.i:                                 ; preds = %._crit_edge.i
  %i.ax = icmp sgt i32 %.037.lcssa.i, 1
  br i1 %i.ax, label %.preheader.i.i, label %pidlist_uniq.exit.i

.preheader.i.i:                                   ; preds = %.preheader25.i.i, %bb.m
  %.031.i.i = phi i32 [ %i.bd, %bb.m ], [ 1, %.preheader25.i.i ] ; 3 uses
  %.02030.i.i = phi i32 [ %i.be, %bb.m ], [ 1, %.preheader25.i.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i.i
  %.1.i.i = phi i32 [ %9, %bb.l ], [ %.02030.i.i, %.preheader.i.i ] ; 4 uses
  %3 = sext i32 %.1.i.i to i64
  %4 = getelementptr [4 x i8], ptr %i.ac, i64 %3
  %5 = load i32, ptr %4, align 4                  ; 2 uses
  %6 = add i32 %.1.i.i, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr [4 x i8], ptr %i.ac, i64 %7
  %i.ay = load i32, ptr %8, align 4
  %i.az = icmp eq i32 %5, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %9 = add i32 %.1.i.i, 1                         ; 2 uses
  %i.ba = icmp eq i32 %9, %.037.lcssa.i
  br i1 %i.ba, label %pidlist_uniq.exit.i, label %bb.k, !llvm.loop !43

bb.m:                                             ; preds = %bb.k
  %i.bb = sext i32 %.031.i.i to i64
  %i.bc = getelementptr [4 x i8], ptr %i.ac, i64 %i.bb
  store i32 %5, ptr %i.bc, align 4
  %i.bd = add i32 %.031.i.i, 1                    ; 2 uses
  %i.be = add i32 %.1.i.i, 1                      ; 2 uses
  %i.bf = icmp slt i32 %i.be, %.037.lcssa.i
  br i1 %i.bf, label %.preheader.i.i, label %pidlist_uniq.exit.i, !llvm.loop !44

pidlist_uniq.exit.i:                              ; preds = %bb.m, %bb.l, %.preheader25.i.i, %._crit_edge.i
  %.021.i.i = phi i32 [ %.037.lcssa.i, %._crit_edge.i ], [ %.031.i.i, %bb.l ], [ 1, %.preheader25.i.i ], [ %i.bd, %bb.m ]
  %i.bg = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !21
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = call ptr @task_active_pid_ns(ptr noundef %i.bh) #15
  %i.bj = getelementptr i8, ptr %i.f, i64 984     ; 6 uses
  %.pn14.i.i.i = load ptr, ptr %i.bj, align 8     ; 2 uses
  %.not16.i.i.i = icmp eq ptr %.pn14.i.i.i, %i.bj
  br i1 %.not16.i.i.i, label %_kzalloc_noprof.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %pidlist_uniq.exit.i, %bb.o
  %.pn17.i.i.i = phi ptr [ %.pn.i.i.i, %bb.o ], [ %.pn14.i.i.i, %pidlist_uniq.exit.i ] ; 4 uses
  %.01318.i.i.i = getelementptr i8, ptr %.pn17.i.i.i, i64 -32
  %i.bk = load i32, ptr %.01318.i.i.i, align 8
  %i.bl = icmp eq i32 %i.bk, %i.j
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr i8, ptr %.pn17.i.i.i, i64 -24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, %i.bi
  br i1 %i.bo, label %cgroup_pidlist_find.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.pn.i.i.i = load ptr, ptr %.pn17.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pn.i.i.i, %i.bj
  br i1 %.not.i.i.i, label %_kzalloc_noprof.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

cgroup_pidlist_find.exit.i.i:                     ; preds = %bb.n
  %.01318.i.i.i.le = getelementptr i8, ptr %.pn17.i.i.i, i64 -32 ; 2 uses
  %.not.i.i = icmp eq ptr %.01318.i.i.i.le, null
  br i1 %.not.i.i, label %_kzalloc_noprof.exit.i.i, label %pidlist_array_load.exit

_kzalloc_noprof.exit.i.i:                         ; preds = %bb.o, %cgroup_pidlist_find.exit.i.i, %pidlist_uniq.exit.i
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.bq = call noalias align 8 dereferenceable_or_null(144) ptr @__kmalloc_cache_noprof(ptr noundef %i.bp, i32 noundef 3520, i64 noundef 144) #19 ; 12 uses
  %.not27.i.i = icmp eq ptr %i.bq, null
  br i1 %.not27.i.i, label %cgroup_pidlist_find_create.exit.i, label %bb.p

bb.p:                                             ; preds = %_kzalloc_noprof.exit.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  store i64 4503599625273344, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 64     ; 3 uses
  store volatile ptr %i.bs, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bq, i64 72
  store volatile ptr %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.bq, i64 80
  store ptr @cgroup_pidlist_destroy_work_fn, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.bq, i64 88
  call void @timer_init_key(ptr noundef %i.bv, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  store i32 %i.j, ptr %i.bq, align 8
  %i.bw = call ptr @task_active_pid_ns(ptr noundef %i.bh) #15 ; 4 uses
  %.not.i29.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i29.i.i, label %get_pid_ns.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr i8, ptr %i.bw, i64 256    ; 3 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 352
  %i.bz = load i64, ptr %i.by, align 32
  %i.ca = icmp ult i64 %i.bz, 9
  br i1 %i.ca, label %get_pid_ns.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bx, i32 1, ptr elementtype(i32) %i.bx) #16, !srcloc !12 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.cc = add i32 %i.cb, 1
  %i.cd = or i32 %i.cc, %i.cb
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.cd, -1
  br i1 %.not10.i.i.i.i.i.i, label %get_pid_ns.exit.i.i, label %.sink.split.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.s, %bb.r
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.r ], [ 1, %bb.s ]
  call void @refcount_warn_saturate(ptr noundef %i.bx, i32 noundef %.sink.i.i.i.i.i.i) #15
  br label %get_pid_ns.exit.i.i

get_pid_ns.exit.i.i:                              ; preds = %.sink.split.i.i.i.i.i.i, %bb.s, %bb.q, %bb.p
  %i.ce = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bw, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.bq, i64 48
  store ptr %i.f, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %i.bq, i64 32     ; 3 uses
  %i.ch = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %i.ci, align 8
  store ptr %i.ch, ptr %i.cg, align 8
  %i.cj = getelementptr i8, ptr %i.bq, i64 40
  store ptr %i.bj, ptr %i.cj, align 8
  store volatile ptr %i.cg, ptr %i.bj, align 8
  br label %pidlist_array_load.exit

cgroup_pidlist_find_create.exit.i:                ; preds = %_kzalloc_noprof.exit.i.i
  call void @kvfree(ptr noundef nonnull %i.ac) #15
  br label %bb.t

pidlist_array_load.exit:                          ; preds = %cgroup_pidlist_find.exit.i.i, %get_pid_ns.exit.i.i
  %.0.i42.ph.i = phi ptr [ %i.bq, %get_pid_ns.exit.i.i ], [ %.01318.i.i.i.le, %cgroup_pidlist_find.exit.i.i ] ; 4 uses
  %i.ck = getelementptr i8, ptr %.0.i42.ph.i, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @kvfree(ptr noundef %i.cl) #15
  store ptr %i.ac, ptr %i.ck, align 8
  %i.cm = getelementptr i8, ptr %.0.i42.ph.i, i64 24
  store i32 %.021.i.i, ptr %i.cm, align 8
  store ptr %.0.i42.ph.i, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.u

bb.t:                                             ; preds = %cgroup_pidlist_find_create.exit.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.z

bb.u:                                             ; preds = %pidlist_array_load.exit, %bb.e
  %i.cn = phi ptr [ %.0.i42.ph.i, %pidlist_array_load.exit ], [ %.01318.i.le, %bb.e ] ; 3 uses
  %.not50 = icmp eq i32 %i.l, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.cn, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not50, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.041 = phi i32 [ 0, %bb.v ], [ %.142, %bb.x ]  ; 4 uses
  %.0 = phi i32 [ %.pre, %bb.v ], [ %.2, %bb.x ]  ; 3 uses
  %i.cp = icmp slt i32 %.041, %.0
  br i1 %i.cp, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.cq = add i32 %.0, %.041
  %i.cr = sdiv i32 %i.cq, 2                       ; 4 uses
  %i.cs = load ptr, ptr %i.co, align 8
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4            ; 3 uses
  %.not64 = icmp eq i32 %i.cv, %i.l
  %i.cw = icmp slt i32 %i.cv, %i.l
  %i.cx = add nsw i32 %i.cr, 1
  %.142 = select i1 %i.cw, i32 %i.cx, i32 %.041
  %.not63 = icmp sgt i32 %i.cv, %i.l
  %.2 = select i1 %.not63, i32 %i.cr, i32 %.0
  br i1 %.not64, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.w, %bb.x, %bb.u
  %.4 = phi i32 [ 0, %bb.u ], [ %.041, %bb.w ], [ %i.cr, %bb.x ] ; 2 uses
  %.not51 = icmp slt i32 %.4, %.pre
  br i1 %.not51, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit
  %i.cy = getelementptr i8, ptr %i.cn, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = sext i32 %.4 to i64
  %i.db = getelementptr [4 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = sext i32 %i.dc to i64
  store i64 %i.dd, ptr %1, align 8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.y, %bb.t
  %.044 = phi ptr [ inttoptr (i64 -12 to ptr), %bb.t ], [ %i.db, %bb.y ], [ null, %.loopexit ]
  ret ptr %.044
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef ptr @cgroup_pidlist_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef captures(none) %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.not = icmp ult ptr %i.m, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %2, align 8
  %i.o = add i64 %i.n, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.m, align 4
  %i.q = sext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.q, %bb.c ], [ %i.o, %bb.b ]
  %.0 = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ]
end_hunk_0

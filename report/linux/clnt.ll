Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/clnt?download=true
inline.NumInlined: 486
inline.NumDeleted: 159
begin_hunk_0_@rpc_killall_tasks:bb.a
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpc_clnt_killall, i64 8), i1 false) #19
          to label %trace_rpc_clnt_killall.exit [label %arch_test_bit.exit.i.i], !srcloc !16

arch_test_bit.exit.i.i:                           ; preds = %bb.b
  %i.c = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !59
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.d) #19, !srcloc !17 ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %bb.c, label %trace_rpc_clnt_killall.exit

bb.c:                                             ; preds = %arch_test_bit.exit.i.i
  %i.h = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.h, ptr elementtype(i64) %i.h) #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !19
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpc_clnt_killall, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @__SCT__tp_func_rpc_clnt_killall(ptr noundef %i.k, ptr noundef %0) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.m = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.m, ptr elementtype(i64) %i.m) #19, !srcloc !21
  br label %trace_rpc_clnt_killall.exit

trace_rpc_clnt_killall.exit:                      ; preds = %bb.b, %arch_test_bit.exit.i.i, %bb.e
  %i.n = getelementptr i8, ptr %0, i64 44         ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.n) #18
  %.pn15 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not1416 = icmp eq ptr %.pn15, %i.a
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_rpc_clnt_killall.exit, %.lr.ph
  %.pn17 = phi ptr [ %.pn, %.lr.ph ], [ %.pn15, %trace_rpc_clnt_killall.exit ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn17, i64 -8
  tail call void @rpc_signal_task(ptr noundef %.0) #18
  %.pn = load ptr, ptr %.pn17, align 8            ; 2 uses
  %.not14 = icmp eq ptr %.pn, %i.a
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %trace_rpc_clnt_killall.exit
  tail call void @_raw_spin_unlock(ptr noundef %i.n) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rpc_signal_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @rpc_cancel_tasks(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.b = load volatile ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, %i.a
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 44         ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.c) #18
  %.pn32 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not2934 = icmp eq ptr %.pn32, %i.a
  br i1 %.not2934, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.pn36 = phi ptr [ %.pn, %bb.e ], [ %.pn32, %bb.b ] ; 3 uses
  %.02735 = phi i64 [ %.1, %bb.e ], [ 0, %bb.b ]  ; 3 uses
  %.02637 = getelementptr i8, ptr %.pn36, i64 -8  ; 2 uses
  %i.d = getelementptr i8, ptr %.pn36, i64 40
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4
  %.not30 = icmp eq i64 %i.f, 0
  br i1 %.not30, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call zeroext i1 %2(ptr noundef %.02637, ptr noundef %3) #18
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @rpc_task_try_cancel(ptr noundef %.02637, i32 noundef %1) #18
  %i.h = add i64 %.02735, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.lr.ph, %bb.d
  %.1 = phi i64 [ %i.h, %bb.d ], [ %.02735, %bb.c ], [ %.02735, %.lr.ph ] ; 2 uses
  %.pn = load ptr, ptr %.pn36, align 8            ; 2 uses
  %.not29 = icmp eq ptr %.pn, %i.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.027.lcssa = phi i64 [ 0, %bb.b ], [ %.1, %bb.e ]
  tail call void @_raw_spin_unlock(ptr noundef %i.c) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %.027.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rpc_task_try_cancel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rpc_clnt_disconnect(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef %0, ptr noundef @rpc_clnt_disconnect_xprt, ptr noundef null) #20 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @rpc_clnt_disconnect_xprt(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
xprt_connected.exit:
  %i.a = getelementptr i8, ptr %1, i64 1032
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %xprt_connected.exit
  tail call void @xprt_force_disconnect(ptr noundef %1) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %xprt_connected.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rpc_shutdown_client(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = tail call i32 @__SCT__might_resched() #18 ; 0 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpc_clnt_shutdown, i64 8), i1 false) #19
          to label %trace_rpc_clnt_shutdown.exit [label %arch_test_bit.exit.i.i], !srcloc !16

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.b = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #19, !srcloc !62
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.c) #19, !srcloc !17 ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %bb.b, label %trace_rpc_clnt_shutdown.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.g = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, ptr elementtype(i64) %i.g) #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !19
  %i.h = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpc_clnt_shutdown, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @__SCT__tp_func_rpc_clnt_shutdown(ptr noundef %i.j, ptr noundef %0) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !20
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, ptr elementtype(i64) %i.l) #19, !srcloc !21
  br label %trace_rpc_clnt_shutdown.exit

trace_rpc_clnt_shutdown.exit:                     ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  %i.m = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = or i8 %i.n, 64
  store i8 %i.o, ptr %i.m, align 8
  %i.p = getelementptr i8, ptr %0, i64 24         ; 10 uses
  %i.q = load volatile ptr, ptr %i.p, align 8
  %.not97.a = icmp eq ptr %i.q, %i.p
  br i1 %.not97.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_rpc_clnt_shutdown.exit, %bb.h
  call void @rpc_killall_tasks(ptr noundef %0) #20
  %i.r = call i32 @__SCT__might_resched() #18     ; 0 uses
  %i.s = load volatile ptr, ptr %i.p, align 8
  %.not96.a = icmp eq ptr %i.s, %i.p
  br i1 %.not96.a, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.071 = phi i64 [ 1000, %bb.e ], [ %spec.store.select18, %bb.g ] ; 2 uses
  %i.t = call i64 @prepare_to_wait_event(ptr noundef @destroy_wait, ptr noundef nonnull %1, i32 noundef 2) #18 ; 0 uses
  %i.u = load volatile ptr, ptr %i.p, align 8
  %.not98 = icmp eq ptr %i.u, %i.p
  %.not99 = icmp eq i64 %.071, 0
  %spec.select = select i1 %.not98, i1 true, i1 %.not99
  br i1 %spec.select, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call i64 @schedule_timeout(i64 noundef %.071) #18 ; 2 uses
  %i.w = load volatile ptr, ptr %i.p, align 8
  %i.x = icmp ne ptr %i.w, %i.p                   ; 2 uses
  %i.y = icmp ne i64 %i.v, 0                      ; 2 uses
  %or.cond7 = select i1 %i.x, i1 true, i1 %i.y
  %spec.store.select18 = select i1 %or.cond7, i64 %i.v, i64 1
  %spec.select84.not = select i1 %i.x, i1 %i.y, i1 false
  br i1 %spec.select84.not, label %bb.f, label %select.unfold

select.unfold:                                    ; preds = %bb.g, %bb.f
  call void @finish_wait(ptr noundef @destroy_wait, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.h

bb.h:                                             ; preds = %select.unfold, %.lr.ph
  %i.z = load volatile ptr, ptr %i.p, align 8
  %.not = icmp eq ptr %i.z, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.h, %trace_rpc_clnt_shutdown.exit
  %i.aa = call i32 @__SCT__might_resched() #18    ; 0 uses
  %i.ab = getelementptr i8, ptr %0, i64 472       ; 3 uses
  %i.ac = load volatile i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.072 = phi i64 [ 1000, %bb.i ], [ %spec.store.select21, %bb.k ] ; 2 uses
  %i.ae = call i64 @prepare_to_wait_event(ptr noundef @destroy_wait, ptr noundef nonnull %2, i32 noundef 2) #18 ; 0 uses
  %i.af = load volatile i32, ptr %i.ab, align 8
  %.not96 = icmp eq i32 %i.af, 0
  %.not100 = icmp eq i64 %.072, 0
  %spec.select85 = select i1 %.not96, i1 true, i1 %.not100
  br i1 %spec.select85, label %select.unfold91, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call i64 @schedule_timeout(i64 noundef %.072) #18 ; 2 uses
  %i.ah = load volatile i32, ptr %i.ab, align 8
  %i.ai = icmp ne i32 %i.ah, 0                    ; 2 uses
  %i.aj = icmp ne i64 %i.ag, 0                    ; 2 uses
  %or.cond16 = select i1 %i.ai, i1 true, i1 %i.aj
  %spec.store.select21 = select i1 %or.cond16, i64 %i.ag, i64 1
  %spec.select86.not = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %spec.select86.not, label %bb.j, label %select.unfold91

select.unfold91:                                  ; preds = %bb.k, %bb.j
  call void @finish_wait(ptr noundef @destroy_wait, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.l

bb.l:                                             ; preds = %select.unfold91, %._crit_edge
  call void @rpc_release_client(ptr noundef %0) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rpc_hold_client(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !23 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a
  %.not10.i.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not10.i.i.i, label %refcount_inc.exit, label %.sink.split.i.i.i, !prof !27

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.a
  %.sink.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %bb.b, %.sink.split.i.i.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !23 ; 3 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a
  %.not10.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not10.i.i, label %__refcount_inc.exit, label %.sink.split.i.i, !prof !27

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i) #18
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %bb.b, %.sink.split.i.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @rpc_bind_new_program(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.rpc_message, align 8        ; 4 uses
  %4 = alloca %struct.rpc_task_setup, align 8     ; 11 uses
  %5 = alloca %struct.rpc_create_args, align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.b = getelementptr i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.g = getelementptr i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 84
  store i32 %2, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.n = getelementptr i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.t = getelementptr i8, ptr %0, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = call fastcc ptr @__rpc_clone_client(ptr noundef nonnull %5, ptr noundef %0) #20, !srcloc !63 ; 7 uses
  %i.x = icmp ugt ptr %i.w, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.w, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = call i32 %i.ad(ptr noundef %i.w) #18, !inline_history !0
  br label %rpc_ping.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef align 8 dereferenceable(32) @__const.rpc_call_null_helper.msg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %i.w, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store ptr %3, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @rpc_null_ops, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i16 1552, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.al, i8 0, i64 6, i1 false)
  %i.am = call ptr @rpc_run_task(ptr noundef nonnull %4) #20 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.an = icmp ugt ptr %i.am, inttoptr (i64 -4096 to ptr)
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = trunc i64 %i.ao to i32
  br label %rpc_ping.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  call void @rpc_put_task(ptr noundef %i.am) #18
  br label %rpc_ping.exit

rpc_ping.exit:                                    ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ae, %bb.c ], [ %i.ap, %bb.e ], [ %i.ar, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rpc_ping.exit
  call void @rpc_shutdown_client(ptr noundef %i.w) #20
  %i.as = sext i32 %.0.i to i64
  %i.at = inttoptr i64 %i.as to ptr
  br label %bb.h

bb.h:                                             ; preds = %rpc_ping.exit, %bb.g, %bb.a
  %.0 = phi ptr [ %i.w, %bb.a ], [ %i.at, %bb.g ], [ %i.w, %rpc_ping.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @rpc_task_get_xprt(ptr nofree noundef captures(address) %0, ptr noundef returned %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #18
  %i.a = getelementptr i8, ptr %0, i64 416
  %i.b = load volatile ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr elementtype(i64) %i.c) #19, !srcloc !28
  tail call void @__rcu_read_unlock() #18
  %i.d = getelementptr i8, ptr %1, i64 1208       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, ptr elementtype(i64) %i.d) #19, !srcloc !28
end_hunk_0

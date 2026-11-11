Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/compaction?download=true
inline.NumInlined: 576
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@wakeup_kcompactd:bb.a
  %i.r = load i32, ptr @defrag_mode, align 4
  %.not17.i = icmp eq i32 %i.r, 0
  %.33.i.i = select i1 %.not17.i, i64 1088, i64 1096
  %i.s = getelementptr i8, ptr %i.o, i64 %.33.i.i
  %i.t = load volatile i64, ptr %i.s, align 8
  %spec.store.select.i29.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %i.m
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.o, i64 32
  %i.x = load i64, ptr %i.w, align 32
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = tail call zeroext i1 @__zone_watermark_ok(ptr noundef %i.o, i32 noundef %i.q, i64 noundef %i.y, i32 noundef %i.j, i32 noundef %i.l, i64 noundef %spec.store.select.i29.i.i) #12
  br i1 %i.z, label %compaction_suit_allocation_order.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call zeroext i1 @compaction_suitable(ptr noundef %i.o, i32 noundef %i.q, i64 noundef %i.y, i32 noundef %i.j) #15
  br i1 %i.aa, label %bb.k, label %compaction_suit_allocation_order.exit.thread.i

compaction_suit_allocation_order.exit.thread.i:   ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = add i32 %.018.i, 1                      ; 2 uses
  %.not14.not.i = icmp ugt i32 %i.ab, %i.j
  br i1 %.not14.not.i, label %kcompactd_node_suitable.exit, label %bb.h, !llvm.loop !101

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %0, i64 13632
  %i.ad = load i32, ptr %i.ac, align 64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, i64 8), i1 false) #13
          to label %trace_mm_compaction_wakeup_kcompactd.exit [label %arch_test_bit.exit.i.i], !srcloc !22

arch_test_bit.exit.i.i:                           ; preds = %bb.k
  %i.ae = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !42
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.af) #13, !srcloc !24 ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %bb.l, label %trace_mm_compaction_wakeup_kcompactd.exit

bb.l:                                             ; preds = %arch_test_bit.exit.i.i
  %i.aj = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aj, ptr elementtype(i64) %i.aj) #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.ak = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_wakeup_kcompactd, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 @__SCT__tp_func_mm_compaction_wakeup_kcompactd(ptr noundef %i.am, i32 noundef %i.ad, i32 noundef range(i32 1, 0) %1, i32 noundef %2) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.ao = getelementptr i8, ptr %i.aj, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, ptr elementtype(i64) %i.ao) #13, !srcloc !28
  br label %trace_mm_compaction_wakeup_kcompactd.exit

trace_mm_compaction_wakeup_kcompactd.exit:        ; preds = %bb.k, %arch_test_bit.exit.i.i, %bb.n
  %i.ap = tail call i32 @__wake_up(ptr noundef %i.g, i32 noundef 1, i32 noundef 1, ptr noundef null) #12 ; 0 uses
  br label %kcompactd_node_suitable.exit

kcompactd_node_suitable.exit:                     ; preds = %compaction_suit_allocation_order.exit.thread.i, %bb.f, %bb.a, %trace_mm_compaction_wakeup_kcompactd.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @kcompactd_run(i32 noundef %0) local_unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @node_data, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 13856    ; 3 uses
  %i.e = load ptr, ptr %i.d, align 32
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @kcompactd, ptr noundef %i.c, i32 noundef %0, ptr noundef @.str.46, i32 noundef %0) #12 ; 3 uses
  store ptr %i.f, ptr %i.d, align 32
  %i.g = icmp ugt ptr %i.f, inttoptr (i64 -4096 to ptr)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.47, i32 noundef %0) #17 ; 0 uses
  store ptr null, ptr %i.d, align 32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @wake_up_process(ptr noundef %i.f) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @kcompactd(ptr noundef initializes((13820, 13828)) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.compact_control, align 8    ; 13 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 8 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #16, !srcloc !33
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 44       ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = or i32 %i.d, 65536
  store i32 %i.e, ptr %i.c, align 4
  %i.f = tail call zeroext i1 @set_freezable() #12 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 13820      ; 7 uses
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 13600      ; 2 uses
  %i.i = load i32, ptr %i.h, align 32
  %i.j = add i32 %i.i, -1
  %i.k = getelementptr i8, ptr %0, i64 13824      ; 4 uses
  store i32 %i.j, ptr %i.k, align 64
  %i.l = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 13632      ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 13864      ; 6 uses
  %i.o = getelementptr i8, ptr %0, i64 13832      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 250
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.y = getelementptr i8, ptr %0, i64 13800
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  %.0107 = phi i64 [ 500, %.lr.ph ], [ %.4, %bb.aw ]
  %i.z = load i32, ptr @sysctl_compaction_proactiveness, align 4
  %.not = icmp eq i32 %i.z, 0
  %spec.select = select i1 %.not, i64 9223372036854775807, i64 %.0107
  %i.aa = load i32, ptr %i.m, align 64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_kcompactd_sleep, i64 8), i1 false) #13
          to label %trace_mm_compaction_kcompactd_sleep.exit [label %arch_test_bit.exit.i.i], !srcloc !22

arch_test_bit.exit.i.i:                           ; preds = %bb.b
  %i.ab = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !105
  %i.ac = zext i32 %i.ab to i64
  %i.ad = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ac) #13, !srcloc !24 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.c, label %trace_mm_compaction_kcompactd_sleep.exit

bb.c:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ag = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #13, !srcloc !25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_kcompactd_sleep, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @__SCT__tp_func_mm_compaction_kcompactd_sleep(ptr noundef %i.aj, i32 noundef %i.aa) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.al = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #13, !srcloc !28
  br label %trace_mm_compaction_kcompactd_sleep.exit

trace_mm_compaction_kcompactd_sleep.exit:         ; preds = %bb.b, %arch_test_bit.exit.i.i, %bb.e
  %i.am = call i32 @__SCT__might_resched() #12    ; 0 uses
  %i.an = load i32, ptr %i.g, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.f

bb.f:                                             ; preds = %trace_mm_compaction_kcompactd_sleep.exit
  %i.ap = call zeroext i1 @kthread_should_stop() #12
  br i1 %i.ap, label %.critedge, label %kcompactd_work_requested.exit

kcompactd_work_requested.exit:                    ; preds = %bb.f
  %i.aq = load i8, ptr %i.n, align 8, !range !29, !noundef !30
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.critedge, label %bb.g

bb.g:                                             ; preds = %kcompactd_work_requested.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  br label %bb.h

bb.h:                                             ; preds = %kcompactd_work_requested.exit73, %bb.g
  %.059 = phi i64 [ %spec.select, %bb.g ], [ %spec.store.select9, %kcompactd_work_requested.exit73 ] ; 2 uses
  %i.as = call i64 @prepare_to_wait_event(ptr noundef %i.o, ptr noundef nonnull %2, i32 noundef 8193) #12
  %i.at = load i32, ptr %i.g, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.critedge.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = call zeroext i1 @kthread_should_stop() #12
  br i1 %i.av, label %.critedge.sink.split.sink.split, label %kcompactd_work_requested.exit72

kcompactd_work_requested.exit72:                  ; preds = %bb.i
  %i.aw = load i8, ptr %i.n, align 8, !range !29, !noundef !30
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  %3 = icmp eq i64 %.059, 0                       ; 2 uses
  %or.cond4.not = select i1 %i.ax, i1 %3, i1 false
  %spec.store.select8 = select i1 %or.cond4.not, i64 1, i64 %.059 ; 2 uses
  %spec.select69 = select i1 %i.ax, i1 true, i1 %3
  br i1 %spec.select69, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %kcompactd_work_requested.exit72
  %.not64 = icmp eq i64 %i.as, 0
  br i1 %.not64, label %bb.k, label %.critedge.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ay = call i64 @schedule_timeout(i64 noundef %spec.store.select8) #12 ; 2 uses
  %i.az = load i32, ptr %i.g, align 4
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.critedge.sink.split.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = call zeroext i1 @kthread_should_stop() #12
  br i1 %i.bb, label %.critedge.sink.split.sink.split, label %kcompactd_work_requested.exit73

kcompactd_work_requested.exit73:                  ; preds = %bb.l
  %i.bc = load i8, ptr %i.n, align 8, !range !29, !noundef !30
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = icmp eq i64 %i.ay, 0                    ; 2 uses
  %or.cond7.not = select i1 %i.bd, i1 %i.be, i1 false
  %spec.store.select9 = select i1 %or.cond7.not, i64 1, i64 %i.ay ; 2 uses
  %spec.select70 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %spec.select70, label %select.unfold, label %bb.h

select.unfold:                                    ; preds = %kcompactd_work_requested.exit73, %kcompactd_work_requested.exit72
  %.160.ph = phi i64 [ %spec.store.select8, %kcompactd_work_requested.exit72 ], [ %spec.store.select9, %kcompactd_work_requested.exit73 ]
  call void @finish_wait(ptr noundef %i.o, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bf = icmp eq i64 %.160.ph, 0
  br i1 %i.bf, label %bb.ar, label %.critedge

.critedge.sink.split.sink.split:                  ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  call void @finish_wait(ptr noundef %i.o, ptr noundef nonnull %2) #12
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.j, %.critedge.sink.split.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %trace_mm_compaction_kcompactd_sleep.exit, %bb.f, %kcompactd_work_requested.exit, %select.unfold
  %i.bg = load i8, ptr %i.n, align 8, !range !29, !noundef !30
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, i8 0, i64 288, i1 false)
  %i.bi = load i32, ptr %i.g, align 4             ; 3 uses
  %i.bj = trunc i32 %i.bi to i16
  store i16 %i.bj, ptr %i.p, align 2
  store i32 3264, ptr %i.q, align 4
  store i32 %i.bi, ptr %i.r, align 8
  %i.bk = load i32, ptr @defrag_mode, align 4
  %.not.i = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not.i, i32 0, i32 2
  store i32 %i.bl, ptr %i.s, align 8
  %i.bm = load i32, ptr %i.k, align 64            ; 2 uses
  store i32 %i.bm, ptr %i.t, align 4
  store i32 1, ptr %i.u, align 8
  %i.bn = load i32, ptr %i.m, align 64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_kcompactd_wake, i64 8), i1 false) #13
          to label %trace_mm_compaction_kcompactd_wake.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i:                         ; preds = %bb.m
  %i.bo = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !106
  %i.bp = zext i32 %i.bo to i64
  %i.bq = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bp) #13, !srcloc !24 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  call void @llvm.assume(i1 %i.br)
  %i.bs = trunc nuw i8 %i.bq to i1
  br i1 %i.bs, label %bb.n, label %trace_mm_compaction_kcompactd_wake.exit.i

bb.n:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.bt = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bt, ptr elementtype(i64) %i.bt) #13, !srcloc !25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.bu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_kcompactd_wake, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 @__SCT__tp_func_mm_compaction_kcompactd_wake(ptr noundef %i.bw, i32 noundef %i.bn, i32 noundef %i.bi, i32 noundef %i.bm) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.by = getelementptr i8, ptr %i.bt, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.by, ptr elementtype(i64) %i.by) #13, !srcloc !28
  br label %trace_mm_compaction_kcompactd_wake.exit.i

trace_mm_compaction_kcompactd_wake.exit.i:        ; preds = %bb.p, %arch_test_bit.exit.i.i.i, %bb.m
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 384), ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 384)) #13, !srcloc !107
  %i.bz = load i32, ptr %i.t, align 4             ; 2 uses
  %.not2854.i = icmp slt i32 %i.bz, 0
  br i1 %.not2854.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %trace_mm_compaction_kcompactd_wake.exit.i, %compaction_deferred.exit.thread.i
  %.02655.i = phi i32 [ %i.fa, %compaction_deferred.exit.thread.i ], [ 0, %trace_mm_compaction_kcompactd_wake.exit.i ] ; 4 uses
  %i.ca = sext i32 %.02655.i to i64
  %i.cb = getelementptr [1344 x i8], ptr %0, i64 %i.ca ; 15 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 160
  %.val.i = load i64, ptr %i.cc, align 32
  %.not51.i = icmp eq i64 %.val.i, 0
  br i1 %.not51.i, label %compaction_deferred.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.cd = load i32, ptr %i.r, align 8             ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 1076   ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cb, i64 1080   ; 5 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp slt i32 %i.cd, %i.cj
  br i1 %i.ck, label %compaction_deferred.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %i.cb, i64 1072   ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 16
  %i.cn = add i32 %i.cm, 1                        ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 16
  %i.co = zext i32 %i.cn to i64
  %.not.i.i74 = icmp ugt i64 %i.ch, %i.co
  br i1 %.not.i.i74, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc nuw i64 %i.ch to i32
  store i32 %i.cp, ptr %i.cl, align 16
  br label %compaction_deferred.exit.i

bb.t:                                             ; preds = %bb.r
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_deferred, i64 8), i1 false) #13
          to label %compaction_deferred.exit.thread.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.t
  %i.cq = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !40
  %i.cr = zext i32 %i.cq to i64
  %i.cs = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cr) #13, !srcloc !24 ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 2
  call void @llvm.assume(i1 %i.ct)
  %i.cu = trunc nuw i8 %i.cs to i1
  br i1 %i.cu, label %bb.u, label %compaction_deferred.exit.thread.i

bb.u:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.cv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cv, ptr elementtype(i64) %i.cv) #13, !srcloc !25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.cw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_deferred, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call i32 @__SCT__tp_func_mm_compaction_deferred(ptr noundef %i.cy, ptr noundef %i.cb, i32 noundef %i.cd) #12 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.da = getelementptr i8, ptr %i.cv, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.da, ptr elementtype(i64) %i.da) #13, !srcloc !28
  br label %compaction_deferred.exit.thread.i

compaction_deferred.exit.i:                       ; preds = %bb.s, %bb.q
  %i.db = load i32, ptr %i.s, align 8             ; 2 uses
  %i.dc = load i32, ptr @defrag_mode, align 4
  %.not52.i = icmp eq i32 %i.dc, 0
  %.33.i.i = select i1 %.not52.i, i64 1088, i64 1096
  %i.dd = getelementptr i8, ptr %i.cb, i64 %.33.i.i
  %i.de = load volatile i64, ptr %i.dd, align 8
  %spec.store.select.i29.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.de, i64 0)
  %i.df = and i32 %i.db, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %i.cb, i64 32
  %i.dk = load i64, ptr %i.dj, align 32
  %i.dl = add i64 %i.dk, %i.di                    ; 2 uses
  %i.dm = call zeroext i1 @__zone_watermark_ok(ptr noundef %i.cb, i32 noundef %i.cd, i64 noundef %i.dl, i32 noundef %.02655.i, i32 noundef %i.db, i64 noundef %spec.store.select.i29.i.i) #12
  br i1 %i.dm, label %compaction_deferred.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %compaction_deferred.exit.i
  %i.dn = call zeroext i1 @compaction_suitable(ptr noundef %i.cb, i32 noundef %i.cd, i64 noundef %i.dl, i32 noundef %.02655.i) #15
  br i1 %i.dn, label %compaction_suit_allocation_order.exit.i, label %compaction_deferred.exit.thread.i

compaction_suit_allocation_order.exit.i:          ; preds = %bb.x
  %i.do = call zeroext i1 @kthread_should_stop() #12
  br i1 %i.do, label %kcompactd_do_work.exit, label %bb.y

bb.y:                                             ; preds = %compaction_suit_allocation_order.exit.i
  store ptr %i.cb, ptr %i.v, align 8
  %i.dp = call fastcc i32 @compact_zone(ptr noundef nonnull %1, ptr noundef null) #15, !srcloc !108 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 8
  br i1 %i.dq, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.dr = load i32, ptr %i.r, align 8             ; 3 uses
  %i.ds = load i32, ptr %i.ci, align 8
  %.not.i33.i = icmp slt i32 %i.dr, %i.ds
  br i1 %.not.i33.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = add i32 %i.dr, 1
  store i32 %i.dt, ptr %i.ci, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_defer_reset, i64 8), i1 false) #13
          to label %compaction_defer_reset.exit.i [label %arch_test_bit.exit.i.i.i34.i], !srcloc !22

arch_test_bit.exit.i.i.i34.i:                     ; preds = %bb.ab
  %i.du = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !23
  %i.dv = zext i32 %i.du to i64
  %i.dw = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dv) #13, !srcloc !24 ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 2
  call void @llvm.assume(i1 %i.dx)
  %i.dy = trunc nuw i8 %i.dw to i1
  br i1 %i.dy, label %bb.ac, label %compaction_defer_reset.exit.i

bb.ac:                                            ; preds = %arch_test_bit.exit.i.i.i34.i
  %i.dz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dz, ptr elementtype(i64) %i.dz) #13, !srcloc !25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.ea = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_compaction_defer_reset, i64 56), align 8 ; 2 uses
  %.not.i.i.i35.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i35.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
end_hunk_0

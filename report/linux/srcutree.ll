Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/srcutree?download=true
inline.NumInlined: 199
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@__srcu_check_read_flavor:bb.a
  %.not71 = icmp eq i8 %i.u, 0
  br i1 %.not71, label %bb.k, label %.critedge77, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "686: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 686b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 686) #20, !srcloc !88
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 774, i32 2307, i64 16) #20, !srcloc !89
  tail call void asm sideeffect "687: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 687b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 687) #20, !srcloc !90
  br label %.critedge77

.critedge77:                                      ; preds = %.critedge75, %bb.k, %bb.j
  br i1 %.not69, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge77
  %i.v = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 %1, i32 0, ptr elementtype(i32) %i.j) #20, !srcloc !91 ; 2 uses
  %.not72 = icmp eq i32 %i.v, 0
  br i1 %.not72, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge77
  %.0 = phi i32 [ %i.k, %.critedge77 ], [ %i.v, %bb.l ] ; 2 uses
  %.not73 = icmp eq i32 %.0, %1
  br i1 %.not73, label %bb.o, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr i8, ptr %i.i, i64 344
  %i.x = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 780, i32 2323, i64 16) #20, !srcloc !92
  %i.y = load i32, ptr %i.w, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.x, i32 noundef %i.y, i32 noundef %.0, i32 noundef %1) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !93
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @__srcu_read_lock(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %0, align 8       ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, ptr elementtype(i64) %i.a) #20, !srcloc !21
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !22
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8
  %i.c = icmp ne ptr %i.a, %.val
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__srcu_read_unlock(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !23
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr [16 x i8], ptr %.val, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.d, ptr elementtype(i64) %i.d) #20, !srcloc !24
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @call_srcu(ptr noundef %0, ptr noundef initializes((8, 16)) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = tail call fastcc i64 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #14, !srcloc !25 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @synchronize_srcu_expedited(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @rcu_gp_is_normal() #16
  tail call fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %i.a) #14, !srcloc !94
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.rcu_synchronize, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load i32, ptr @rcu_scheduler_active, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false), !annotation !26
  %i.c = tail call i32 @__SCT__might_resched() #16 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 104
  %i.g = load volatile i64, ptr %i.f, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !27
  %i.h = and i64 %i.g, 3
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %check_init_srcu_struct.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 64
  %i.k = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.j) #16
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 104
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 3
  %.not10.i = icmp eq i64 %i.o, 0
  br i1 %.not10.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #14, !srcloc !28 ; 0 uses
  %i.q = load ptr, ptr %i.d, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink11.i = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %i.r = getelementptr i8, ptr %.sink11.i, i64 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.k) #16
  br label %check_init_srcu_struct.exit

check_init_srcu_struct.exit:                      ; preds = %bb.b, %.sink.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @__init_swait_queue_head(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @wakeme_after_rcu, ptr %i.u, align 8
  %i.v = call fastcc i64 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext %1) #14, !srcloc !25 ; 0 uses
  call void @wait_for_completion(ptr noundef nonnull %i.s) #16
  call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !95
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %check_init_srcu_struct.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @synchronize_srcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load volatile i64, ptr %i.c, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !27
  %i.e = and i64 %i.d, 3
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %check_init_srcu_struct.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.g) #16
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 3
  %.not10.i.i = icmp eq i64 %i.l, 0
  br i1 %.not10.i.i, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #14, !srcloc !28 ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %.sink11.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %.sink11.i.i, i64 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.o, i64 noundef %i.h) #16
  br label %check_init_srcu_struct.exit.i

check_init_srcu_struct.exit.i:                    ; preds = %.sink.split.i.i, %bb.a
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r) #20, !srcloc !96
  %i.t = and i32 %i.s, 12
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %srcu_should_expedite.exit.thread

bb.d:                                             ; preds = %check_init_srcu_struct.exit.i
  %i.u = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #19, !srcloc !97
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.u, %i.w
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 64       ; 2 uses
  %i.aa = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.z) #16
  %i.ab = getelementptr i8, ptr %i.y, i64 72
  %i.ac = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %i.ab) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.z, i64 noundef %i.aa) #16
  br i1 %i.ac, label %srcu_should_expedite.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i64 @ktime_get_mono_fast_ns() #16 ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 128
  %i.ag = load volatile i64, ptr %i.af, align 8   ; 2 uses
  %i.ah = load i64, ptr @exp_holdoff, align 8     ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %srcu_should_expedite.exit.thread, label %1

1:                                                ; preds = %bb.e
  %2 = sub i64 %i.ad, %i.ag
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %1
  %4 = add i64 %i.ag, %i.ah
  %i.aj = sub i64 %i.ad, %4
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %srcu_should_expedite.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %1
  %i.al = getelementptr i8, ptr %i.ae, i64 96
  %i.am = load volatile i64, ptr %i.al, align 8   ; 2 uses
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !98
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 104
  %i.ap = load volatile i64, ptr %i.ao, align 8
  %i.aq = sub i64 %i.am, %i.ap
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %srcu_should_expedite.exit.thread, label %srcu_should_expedite.exit

srcu_should_expedite.exit:                        ; preds = %bb.g
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !99
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 96
  %i.au = load volatile i64, ptr %i.at, align 8
  %.not32.i = icmp eq i64 %i.am, %i.au
  br i1 %.not32.i, label %bb.h, label %srcu_should_expedite.exit.thread

srcu_should_expedite.exit.thread:                 ; preds = %bb.d, %bb.e, %check_init_srcu_struct.exit.i, %bb.f, %bb.g, %srcu_should_expedite.exit
  %i.av = tail call zeroext i1 @rcu_gp_is_expedited() #16
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %srcu_should_expedite.exit.thread, %srcu_should_expedite.exit
  %i.aw = tail call zeroext i1 @rcu_gp_is_normal() #16
  br label %bb.i

bb.i:                                             ; preds = %srcu_should_expedite.exit.thread, %bb.h
  %.sink = phi i1 [ %i.aw, %bb.h ], [ true, %srcu_should_expedite.exit.thread ]
  tail call fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %.sink) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -3) i64 @get_state_synchronize_srcu(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !100
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 7
  %i.f = and i64 %i.e, -4
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !29
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -3) i64 @start_poll_synchronize_srcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #14, !srcloc !101
  ret i64 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 0, -3) i64 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %0, i64 24         ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 104
  %i.e = load volatile i64, ptr %i.d, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !27
  %i.f = and i64 %i.e, 3
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %check_init_srcu_struct.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 64
  %i.i = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.h) #16
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 104
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 3
  %.not10.i = icmp eq i64 %i.m, 0
  br i1 %.not10.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #14, !srcloc !28 ; 0 uses
  %i.o = load ptr, ptr %i.b, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink11.i = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  %i.p = getelementptr i8, ptr %.sink11.i, i64 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.i) #16
  br label %check_init_srcu_struct.exit

check_init_srcu_struct.exit:                      ; preds = %bb.a, %.sink.split.i
  %i.q = load volatile ptr, ptr %0, align 8       ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #20, !srcloc !21
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !22
  %i.r = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val.i.i = load ptr, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load volatile i32, ptr %i.t, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !103
  %i.v = icmp slt i32 %i.u, 3
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %check_init_srcu_struct.exit
  %i.w = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #20, !srcloc !104
  %i.x = tail call zeroext i1 @rcu_cpu_beenfullyonline(i32 noundef %i.w) #16
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %check_init_srcu_struct.exit, %bb.d
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = load i32, ptr @__boot_cpu_id, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, %i.z
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #19, !srcloc !105
  %i.ag = load ptr, ptr %i.r, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.af, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.057.in = phi i64 [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  store i64 0, ptr %i.a, align 8, !annotation !26
  %.057 = inttoptr i64 %.057.in to ptr            ; 12 uses
  call fastcc void @raw_spin_lock_irqsave_sdp_contention(ptr noundef %.057, ptr noundef nonnull %i.a) #14, !srcloc !106
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %.057, i64 72
  tail call void @rcu_segcblist_enqueue(ptr noundef %i.aj, ptr noundef nonnull %1) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 96
  %i.am = load volatile i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, 7                        ; 2 uses
  %i.ao = and i64 %i.an, -4                       ; 22 uses
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !29
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.057, i64 72     ; 2 uses
  %i.aq = load ptr, ptr %i.b, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 96
  %i.as = load volatile i64, ptr %i.ar, align 8
  tail call void @rcu_segcblist_advance(ptr noundef %i.ap, i64 noundef %i.as) #16
  %i.at = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %i.ap, i64 noundef %i.ao) #16
  br i1 %i.at, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "728: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 728b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 728) #20, !srcloc !107
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1379, i32 2307, i64 16) #20, !srcloc !108
  tail call void asm sideeffect "729: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 729b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 729) #20, !srcloc !109
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.au = getelementptr i8, ptr %.057, i64 192    ; 2 uses
  %i.av = load i64, ptr %i.au, align 64
  %i.aw = sub i64 %i.av, %i.ao
  %i.ax = icmp slt i64 %i.aw, 0                   ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.ao, ptr %i.au, align 64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %.057, i64 200    ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = sub i64 %i.az, %i.ao
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.ao, ptr %i.ay, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  %i.bc = getelementptr i8, ptr %.057, i64 64
  %i.bd = load i64, ptr %i.a, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bc, i64 noundef %i.bd) #16
  %i.be = icmp slt i32 %i.u, 2
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %.057, i64 328
  %i.bg = load ptr, ptr %i.bf, align 8
end_hunk_0

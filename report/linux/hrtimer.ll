Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hrtimer?download=true
inline.NumInlined: 224
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@__do_trace_hrtimer_expire_entry.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_expire_entry_698 = internal global ptr @__SCK__tp_func_hrtimer_expire_entry, section ".discard.addressable", align 8
@__SCK__tp_func_hrtimer_expire_entry = external dso_local global %struct.static_call_key, align 8
@__tracepoint_hrtimer_expire_exit = external dso_local global %struct.tracepoint, align 8
@__do_trace_hrtimer_expire_exit.__trace_check_hrtimer_expire_exit = internal constant [20 x i8] c"hrtimer_expire_exit\00", section "__tracepoint_check", align 16
@__do_trace_hrtimer_expire_exit.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_expire_exit_712 = internal global ptr @__SCK__tp_func_hrtimer_expire_exit, section ".discard.addressable", align 8
@__SCK__tp_func_hrtimer_expire_exit = external dso_local global %struct.static_call_key, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"\014Could not switch to high resolution mode on CPU %u\0A\00", align 1
@hrtimer_hres_work = internal global %struct.work_struct { %struct.atomic64_t { i64 4503599625273344 }, %struct.list_head { ptr getelementptr (i8, ptr @hrtimer_hres_work, i64 8), ptr getelementptr (i8, ptr @hrtimer_hres_work, i64 8) }, ptr @hrtimer_hres_workfn }, align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_addressable___hrtimer_get_remaining_785, ptr @__UNIQUE_ID_addressable_hrtimer_active_799, ptr @__UNIQUE_ID_addressable_hrtimer_cancel_784, ptr @__UNIQUE_ID_addressable_hrtimer_cb_get_time_792, ptr @__UNIQUE_ID_addressable_hrtimer_forward_771, ptr @__UNIQUE_ID_addressable_hrtimer_resolution_760, ptr @__UNIQUE_ID_addressable_hrtimer_setup_795, ptr @__UNIQUE_ID_addressable_hrtimer_setup_on_stack_796, ptr @__UNIQUE_ID_addressable_hrtimer_setup_sleeper_on_stack_812, ptr @__UNIQUE_ID_addressable_hrtimer_sleeper_start_expires_811, ptr @__UNIQUE_ID_addressable_hrtimer_start_range_ns_781, ptr @__UNIQUE_ID_addressable_hrtimer_start_range_ns_user_782, ptr @__UNIQUE_ID_addressable_hrtimer_try_to_cancel_783, ptr @__UNIQUE_ID_addressable_ktime_add_safe_753, ptr @__do_trace_hrtimer_cancel.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_cancel_719, ptr @__do_trace_hrtimer_cancel.__trace_check_hrtimer_cancel, ptr @__do_trace_hrtimer_expire_entry.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_expire_entry_698, ptr @__do_trace_hrtimer_expire_entry.__trace_check_hrtimer_expire_entry, ptr @__do_trace_hrtimer_expire_exit.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_expire_exit_712, ptr @__do_trace_hrtimer_expire_exit.__trace_check_hrtimer_expire_exit, ptr @__do_trace_hrtimer_rearm.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_rearm_726, ptr @__do_trace_hrtimer_rearm.__trace_check_hrtimer_rearm, ptr @__do_trace_hrtimer_setup.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_setup_684, ptr @__do_trace_hrtimer_setup.__trace_check_hrtimer_setup, ptr @__do_trace_hrtimer_start.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_start_691, ptr @__do_trace_hrtimer_start.__trace_check_hrtimer_start, ptr @__do_trace_hrtimer_start_expired.__UNIQUE_ID_addressable___SCK__tp_func_hrtimer_start_expired_705, ptr @__do_trace_hrtimer_start_expired.__trace_check_hrtimer_start_expired, ptr @__hrtimer_cb_get_time.__UNIQUE_ID_addressable___SCK__WARN_trap_791, ptr @__setup_setup_hrtimer_hres, ptr @class_preempt_destructor.__UNIQUE_ID_addressable___SCK__preempt_schedule_58, ptr @hrtimer_clockid_to_base.__UNIQUE_ID_addressable___SCK__WARN_trap_790], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @retrigger_next_event(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #16, !srcloc !53
  %i.b = add i64 %i.a, ptrtoint (ptr @hrtimer_bases to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 13 uses
  tail call void @_raw_spin_lock(ptr noundef %i.c) #17
  %i.d = getelementptr i8, ptr %i.c, i64 248      ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 312      ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 376      ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 12
  %i.h = tail call i64 @ktime_get_update_offsets_now(ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f) #17 ; 0 uses
  %i.i = load i64, ptr %i.d, align 8
  %i.j = getelementptr i8, ptr %i.c, i64 504
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load i64, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %i.c, i64 568
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i64, ptr %i.f, align 8
  %i.n = getelementptr i8, ptr %i.c, i64 632
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %.val = load i8, ptr %i.o, align 16, !range !15, !noundef !16
  %.not = icmp eq i8 %.val, 0
  %i.p = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.c) #18 ; 3 uses
  br i1 %.not, label %hrtimer_force_reprogram.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.c, i64 40
  store i64 %i.p, ptr %i.q, align 8
  %.val.i.i = load i8, ptr %i.o, align 16, !range !15, !noundef !16
  %.not.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i, label %hrtimer_force_reprogram.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.c, i64 19
  %i.s = load i8, ptr %i.r, align 1, !range !15, !noundef !16
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %hrtimer_force_reprogram.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 8), i1 false) #19
          to label %hrtimer_rearm_event.exit.i.i [label %_test_bit.exit.i.i.i.i.i], !srcloc !17

_test_bit.exit.i.i.i.i.i:                         ; preds = %bb.d
  %i.u = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !18
  %i.v = zext i32 %i.u to i64
  %i.w = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.v) #19, !srcloc !19 ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %bb.e, label %hrtimer_rearm_event.exit.i.i

bb.e:                                             ; preds = %_test_bit.exit.i.i.i.i.i
  %i.z = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.z) #19, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.aa = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_hrtimer_rearm, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @__SCT__tp_func_hrtimer_rearm(ptr noundef %i.ac, i64 noundef %i.p, i1 noundef zeroext false) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.ae = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ae, ptr elementtype(i64) %i.ae) #19, !srcloc !23
  br label %hrtimer_rearm_event.exit.i.i

hrtimer_rearm_event.exit.i.i:                     ; preds = %bb.g, %_test_bit.exit.i.i.i.i.i, %bb.d
  %i.af = tail call i32 @tick_program_event(i64 noundef %i.p, i32 noundef 1) #17 ; 0 uses
  br label %hrtimer_force_reprogram.exit

hrtimer_force_reprogram.exit:                     ; preds = %bb.a, %hrtimer_rearm_event.exit.i.i, %bb.c, %bb.b
  tail call void @_raw_spin_unlock(ptr noundef %i.c) #17
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local range(i64 0, -9223372036854775808) i64 @ktime_add_safe(i64 noundef %0, i64 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, %0                           ; 4 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = icmp slt i64 %i.a, %0
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp slt i64 %i.a, %1
  %or.cond9 = or i1 %i.d, %or.cond
  %spec.select = select i1 %or.cond9, i64 9223372036854775807, i64 %i.a
  ret i64 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 0, 2) i32 @setup_hrtimer_hres(ptr noundef %0) #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @hrtimer_hres_enabled) #17
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clock_was_set(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca [1 x %struct.cpumask], align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 0, ptr %1, align 8, !annotation !24
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @hrtimer_highres_enabled_key, i1 true) #19
          to label %hrtimer_highres_enabled.exit.thread [label %hrtimer_highres_enabled.exit], !srcloc !25

hrtimer_highres_enabled.exit:                     ; preds = %bb.a
  %i.a = tail call zeroext i1 @tick_nohz_is_active() #17
  br i1 %i.a, label %hrtimer_highres_enabled.exit.thread, label %bb.h

hrtimer_highres_enabled.exit.thread:              ; preds = %bb.a, %hrtimer_highres_enabled.exit
  store i64 0, ptr %1, align 8
  tail call void @cpus_read_lock() #17
  br label %bb.b

bb.b:                                             ; preds = %hrtimer_highres_enabled.exit.thread, %arch_set_bit.exit
  %i.b = phi i64 [ 0, %hrtimer_highres_enabled.exit.thread ], [ %i.ba, %arch_set_bit.exit ]
  %i.c = load i64, ptr @__cpu_online_mask, align 8
  %i.d = shl nsw i64 -1, %i.b
  %i.e = and i64 %i.c, %i.d                       ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.f = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.e) #20, !srcloc !26 ; 3 uses
  %i.g = and i64 %i.f, 4294967232
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.i = and i64 %i.f, 63                         ; 2 uses
  %i.j = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, ptrtoint (ptr @hrtimer_bases to i64)
  %i.m = inttoptr i64 %i.l to ptr                 ; 16 uses
  %i.n = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.m) #17
  %i.o = getelementptr i8, ptr %i.m, i64 12       ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %i.m, i64 248      ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 312      ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 376      ; 2 uses
  %i.t = call i64 @ktime_get_update_offsets_now(ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s) #17 ; 0 uses
  %i.u = load i64, ptr %i.q, align 8
  %i.v = getelementptr i8, ptr %i.m, i64 504
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load i64, ptr %i.r, align 8
  %i.x = getelementptr i8, ptr %i.m, i64 568
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load i64, ptr %i.s, align 8
  %i.z = getelementptr i8, ptr %i.m, i64 632
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load i32, ptr %i.o, align 4
  %i.ab = icmp eq i32 %i.p, %i.aa
  br i1 %i.ab, label %arch_set_bit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %i.m, i64 17
  %i.ad = load i8, ptr %i.ac, align 1, !range !15, !noundef !16
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.m, i64 18
  store i8 1, ptr %i.af, align 2
  br label %arch_set_bit.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.m, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, %0                       ; 2 uses
  %i.aj = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ai, i32 -1) #20, !srcloc !27 ; 2 uses
  %.not.not.i15 = icmp eq i32 %i.aj, -1
  br i1 %.not.not.i15, label %arch_set_bit.exit, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.m, i64 128
  %i.al = getelementptr i8, ptr %i.m, i64 20
  %2 = getelementptr i8, ptr %i.m, i64 56
  %i.am = getelementptr i8, ptr %i.m, i64 40
  %3 = load i64, ptr %i.am, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %.critedge.i
  %.034.i17 = phi i32 [ %i.aj, %.preheader.i.lr.ph ], [ %i.ay, %.critedge.i ] ; 2 uses
  %.037.i16 = phi i32 [ %i.ai, %.preheader.i.lr.ph ], [ %i.ax, %.critedge.i ]
  %i.an = zext i32 %.034.i17 to i64
  %i.ao = getelementptr [64 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %4 = getelementptr i8, ptr %i.ao, i64 56
  %5 = shl nuw i32 1, %.034.i17
  %6 = xor i32 %5, -1
  %7 = load ptr, ptr %i.ap, align 8
  %8 = getelementptr i8, ptr %7, i64 40
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %4, align 8
  %11 = sub i64 %9, %10                           ; 2 uses
  %12 = icmp slt i64 %11, %3
  br i1 %12, label %update_needs_ipi.exit, label %.split.i

.split.i:                                         ; preds = %.preheader.i
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp ult i32 %i.ar, 4
  br i1 %i.as, label %.critedge.i, label %.split.split.i

.split.split.i:                                   ; preds = %.split.i
  %i.at = load i8, ptr %i.al, align 4, !range !15, !noundef !16
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.critedge.i, label %.split.split.split.i

.split.split.split.i:                             ; preds = %.split.split.i
  %i.av = load i64, ptr %2, align 8
  %i.aw = icmp slt i64 %11, %i.av
  br i1 %i.aw, label %update_needs_ipi.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.split.split.split.i, %.split.split.i, %.split.i
  %i.ax = and i32 %.037.i16, %6                   ; 2 uses
  %i.ay = call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax, i32 -1) #20, !srcloc !27 ; 2 uses
  %.not.not.i = icmp eq i32 %i.ay, -1
  br i1 %.not.not.i, label %arch_set_bit.exit, label %.preheader.i, !llvm.loop !54

update_needs_ipi.exit:                            ; preds = %.preheader.i, %.split.split.split.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %1, i64 range(i64 0, 4294967296) %i.i) #19, !srcloc !56
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %.critedge.i, %bb.f, %bb.e, %bb.c, %update_needs_ipi.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.m, i64 noundef %i.n) #17
  %i.az = add nuw nsw i64 %i.f, 1
  %i.ba = and i64 %i.az, 127                      ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ba, 63
  br i1 %i.bb, label %find_next_bit.exit.thread, label %bb.b, !prof !57, !llvm.loop !55

find_next_bit.exit.thread:                        ; preds = %bb.b, %arch_set_bit.exit, %find_next_bit.exit
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !58
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !59
  call void @smp_call_function_many(ptr noundef nonnull %1, ptr noundef nonnull @retrigger_next_event, ptr noundef null, i1 noundef zeroext true) #17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !60
  %i.bc = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !61 ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 2
  call void @llvm.assume(i1 %i.bd)
  %i.be = trunc nuw i8 %i.bc to i1
  br i1 %i.be, label %bb.g, label %class_preempt_destructor.exit, !prof !29

bb.g:                                             ; preds = %find_next_bit.exit.thread
  %i.bf = call i64 @llvm.read_register.i64(metadata !4)
  %i.bg = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.bf) #19, !srcloc !62
  call void @llvm.write_register.i64(metadata !4, i64 %i.bg)
  br label %class_preempt_destructor.exit

class_preempt_destructor.exit:                    ; preds = %find_next_bit.exit.thread, %bb.g
  call void @cpus_read_unlock() #17
  br label %bb.h

bb.h:                                             ; preds = %hrtimer_highres_enabled.exit, %class_preempt_destructor.exit
  call void @timerfd_clock_was_set() #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_is_active() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timerfd_clock_was_set() local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @clock_was_set_delayed() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @system_percpu_wq, align 8
  %i.b = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.a, ptr noundef nonnull @hrtimer_work) #17 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimers_resume_local() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @retrigger_next_event(ptr poison) #18, !srcloc !63
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, -9223372036854775807) i64 @hrtimer_forward(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val32 = load i64, ptr %i.a, align 8           ; 3 uses
  %i.b = sub i64 %1, %.val32                      ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.critedge, !prof !29

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "769: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 769b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 769) #19, !srcloc !64
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1071, i32 2305, i64 16) #19, !srcloc !65
  tail call void asm sideeffect "770: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 770b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 770) #19, !srcloc !66
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  %i.g = load i32, ptr @hrtimer_resolution, align 4
  %i.h = zext i32 %i.g to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.h) ; 7 uses
  %.not = icmp samesign ult i64 %i.b, %spec.select
  br i1 %.not, label %.critedge._crit_edge, label %ktime_divns.exit, !prof !30

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

ktime_divns.exit:                                 ; preds = %.critedge
  %i.i = udiv i64 %i.b, %spec.select              ; 3 uses
  %i.j = mul i64 %i.i, %spec.select               ; 2 uses
  %i.k = add i64 %.val32, %i.j                    ; 3 uses
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.j                       ; 2 uses
  store i64 %i.n, ptr %i.l, align 8
  %.not31 = icmp sgt i64 %i.k, %1
  %i.o = add nuw i64 %i.i, 1
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge, %ktime_divns.exit
  %i.p = phi i64 [ %i.n, %ktime_divns.exit ], [ %.pre, %.critedge._crit_edge ] ; 2 uses
  %i.q = phi i64 [ %i.k, %ktime_divns.exit ], [ %.val32, %.critedge._crit_edge ] ; 2 uses
  %.128 = phi i64 [ %i.o, %ktime_divns.exit ], [ 1, %.critedge._crit_edge ]
  %i.r = add i64 %i.q, %spec.select               ; 3 uses
  %i.s = icmp slt i64 %i.r, %i.q
  %i.t = icmp slt i64 %i.r, %spec.select
  %or.cond9.i.i = or i1 %i.t, %i.s
  %spec.select.i.i = select i1 %or.cond9.i.i, i64 9223372036854775807, i64 %i.r
  store i64 %spec.select.i.i, ptr %i.a, align 8
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = add i64 %i.p, %spec.select               ; 3 uses
  %i.w = icmp slt i64 %i.v, %i.p
  %i.x = icmp slt i64 %i.v, %spec.select
  %or.cond9.i6.i = or i1 %i.x, %i.w
  %spec.select.i7.i = select i1 %or.cond9.i6.i, i64 9223372036854775807, i64 %i.v
  store i64 %spec.select.i7.i, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %ktime_divns.exit, %bb.d
  %.1 = phi i64 [ %i.i, %ktime_divns.exit ], [ 0, %bb.a ], [ %.128, %bb.d ], [ 0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 5 uses
  %.not.i = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @migration_cpu_base, i64 128)
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 64
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #17 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %lock_hrtimer_base.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  br label %bb.b

lock_hrtimer_base.exit:                           ; preds = %bb.c
  %i.h = tail call fastcc i32 @hrtimer_start_range_ns_common(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %i.b) #18, !srcloc !67
  switch i32 %i.h, label %hrtimer_force_reprogram.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %lock_hrtimer_base.exit
  tail call fastcc void @hrtimer_reprogram(ptr noundef %0) #18
  br label %hrtimer_force_reprogram.exit

bb.g:                                             ; preds = %lock_hrtimer_base.exit
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.i, align 64             ; 4 uses
  %i.k = tail call fastcc i64 @hrtimer_update_next_event(ptr noundef %i.j) #18, !srcloc !32 ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 40       ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %hrtimer_force_reprogram.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.k, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %.val.i.i = load i8, ptr %i.o, align 16, !range !15, !noundef !16
  %.not.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not.i.i, label %hrtimer_force_reprogram.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.j, i64 19
  %i.q = load i8, ptr %i.p, align 1, !range !15, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %hrtimer_force_reprogram.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0

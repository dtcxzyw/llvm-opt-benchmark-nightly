Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/umh?download=true
inline.NumInlined: 36
inline.NumDeleted: 17
begin_hunk_0
%struct.kernel_cap_t = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr }

@umhelper_sem = internal global %struct.rw_semaphore zeroinitializer, align 8
@usermodehelper_disabled = internal unnamed_addr global i32 2, align 4
@__UNIQUE_ID_addressable_usermodehelper_read_trylock_694 = internal global ptr @usermodehelper_read_trylock, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_usermodehelper_read_lock_wait_695 = internal global ptr @usermodehelper_read_lock_wait, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_usermodehelper_read_unlock_696 = internal global ptr @usermodehelper_read_unlock, section ".discard.addressable", align 8
@running_helpers = internal global %struct.atomic_t zeroinitializer, align 4
@__UNIQUE_ID_addressable_call_usermodehelper_setup_697 = internal global ptr @call_usermodehelper_setup, section ".discard.addressable", align 8
@system_dfl_wq = external dso_local local_unnamed_addr global ptr, align 8
@__UNIQUE_ID_addressable_call_usermodehelper_exec_698 = internal global ptr @call_usermodehelper_exec, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_call_usermodehelper_699 = internal global ptr @call_usermodehelper, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_init_umh_sysctls_701 = internal global ptr @init_umh_sysctls, section ".discard.addressable", align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@usermodehelper_disabled_waitq = internal global { %struct.spinlock, [4 x i8], %struct.list_head } { %struct.spinlock zeroinitializer, [4 x i8] zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 8), ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 8) } }, align 8
@freezer_active = external dso_local global %struct.static_key_false, align 8
@might_resched.__UNIQUE_ID_addressable___SCK__might_resched_42 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@running_helpers_waitq = internal global { %struct.spinlock, [4 x i8], %struct.list_head } { %struct.spinlock zeroinitializer, [4 x i8] zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @running_helpers_waitq, i64 8), ptr getelementptr (i8, ptr @running_helpers_waitq, i64 8) } }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@umh_sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4
@usermodehelper_bset = internal global %struct.kernel_cap_t { i64 2199023255551 }, align 8
@usermodehelper_inheritable = internal global %struct.kernel_cap_t { i64 2199023255551 }, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"kernel/usermodehelper\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"usermodehelper_table\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bset\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"inheritable\00", align 1
@usermodehelper_table = internal constant [2 x { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr }] [{ ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr } { ptr @.str.6, ptr @usermodehelper_bset, i32 16, i16 384, [2 x i8] zeroinitializer, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, { ptr, ptr, i32, i16, [2 x i8], ptr, ptr, ptr, ptr } { ptr @.str.7, ptr @usermodehelper_inheritable, i32 16, i16 384, [2 x i8] zeroinitializer, ptr @proc_cap_handler, ptr null, ptr null, ptr null }], align 16
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable_call_usermodehelper_699, ptr @__UNIQUE_ID_addressable_call_usermodehelper_exec_698, ptr @__UNIQUE_ID_addressable_call_usermodehelper_setup_697, ptr @__UNIQUE_ID_addressable_init_umh_sysctls_701, ptr @__UNIQUE_ID_addressable_usermodehelper_read_lock_wait_695, ptr @__UNIQUE_ID_addressable_usermodehelper_read_trylock_694, ptr @__UNIQUE_ID_addressable_usermodehelper_read_unlock_696, ptr @might_resched.__UNIQUE_ID_addressable___SCK__might_resched_42], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -11, 1) i32 @usermodehelper_read_trylock() #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.wait_queue_entry, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #10, !srcloc !11
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  store i64 0, ptr %0, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @autoremove_wake_function, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8
  call void @down_read(ptr noundef @umhelper_sem) #11
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %0, i32 noundef 1) #11
  %i.g = load i32, ptr @usermodehelper_disabled, align 4 ; 2 uses
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %try_to_freeze.exit
  %i.h = phi i32 [ %i.l, %try_to_freeze.exit ], [ %i.g, %bb.a ]
  %.not4 = icmp eq i32 %i.h, 2
  call void @up_read(ptr noundef @umhelper_sem) #11
  br i1 %.not4, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @schedule() #11
  %i.i = call i32 @__SCT__might_resched() #11     ; 0 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @freezer_active, i1 false) #9
          to label %try_to_freeze.exit [label %freezing.exit.i], !srcloc !13

freezing.exit.i:                                  ; preds = %bb.b
  %i.j = call zeroext i1 @freezing_slow_path(ptr noundef %i.c) #11
  br i1 %i.j, label %bb.c, label %try_to_freeze.exit, !prof !14

bb.c:                                             ; preds = %freezing.exit.i
  %i.k = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11 ; 0 uses
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %bb.b, %freezing.exit.i, %bb.c
  call void @down_read(ptr noundef @umhelper_sem) #11
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %0, i32 noundef 1) #11
  %i.l = load i32, ptr @usermodehelper_disabled, align 4 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %try_to_freeze.exit, %.lr.ph, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -11, %.lr.ph ], [ 0, %try_to_freeze.exit ]
  call void @finish_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @usermodehelper_read_lock_wait(i64 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #10, !srcloc !11
  %i.c = inttoptr i64 %i.b to ptr
  store i64 0, ptr %1, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @autoremove_wake_function, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.e, ptr %i.f, align 8
  %i.g = icmp slt i64 %0, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @down_read(ptr noundef @umhelper_sem) #11
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %1, i32 noundef 2) #11
  %i.h = load i32, ptr @usermodehelper_disabled, align 4
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.011 = phi i64 [ %i.i, %bb.c ], [ %0, %bb.b ]
  call void @up_read(ptr noundef @umhelper_sem) #11
  %i.i = call i64 @schedule_timeout(i64 noundef %.011) #11 ; 3 uses
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @down_read(ptr noundef @umhelper_sem) #11
  call void @prepare_to_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %1, i32 noundef 2) #11
  %i.j = load i32, ptr @usermodehelper_disabled, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.1 = phi i64 [ %0, %bb.b ], [ 0, %.lr.ph ], [ %i.i, %bb.c ]
  call void @finish_wait(ptr noundef @usermodehelper_disabled_waitq, ptr noundef nonnull %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.05 = phi i64 [ %.1, %._crit_edge ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %.05
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usermodehelper_read_unlock() #0 align 16 prefalign(16) {
bb.a:
  tail call void @up_read(ptr noundef @umhelper_sem) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__usermodehelper_set_disable_depth(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @down_write(ptr noundef @umhelper_sem) #11
  store i32 %0, ptr @usermodehelper_disabled, align 4
  %i.a = tail call i32 @__wake_up(ptr noundef @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  tail call void @up_write(ptr noundef @umhelper_sem) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @__usermodehelper_disable(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @down_write(ptr noundef @umhelper_sem) #11
  store i32 %0, ptr @usermodehelper_disabled, align 4
  tail call void @up_write(ptr noundef @umhelper_sem) #11
  %i.a = tail call i32 @__SCT__might_resched() #11 ; 0 uses
  %i.b = load volatile i32, ptr @running_helpers, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.036 = phi i64 [ 5000, %bb.c ], [ %spec.store.select9, %bb.e ] ; 2 uses
  %i.d = call i64 @prepare_to_wait_event(ptr noundef @running_helpers_waitq, ptr noundef nonnull %1, i32 noundef 2) #11 ; 0 uses
  %i.e = load volatile i32, ptr @running_helpers, align 4
  %2 = icmp ne i32 %i.e, 0                        ; 2 uses
  %3 = icmp ne i64 %.036, 0                       ; 2 uses
  %or.cond4 = select i1 %2, i1 true, i1 %3
  %spec.store.select8 = select i1 %or.cond4, i64 %.036, i64 1 ; 2 uses
  %spec.select.not = select i1 %2, i1 %3, i1 false
  br i1 %spec.select.not, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  %i.f = call i64 @schedule_timeout(i64 noundef %spec.store.select8) #11 ; 2 uses
  %i.g = load volatile i32, ptr @running_helpers, align 4
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %i.i = icmp ne i64 %i.f, 0                      ; 2 uses
  %or.cond7 = select i1 %i.h, i1 true, i1 %i.i
  %spec.store.select9 = select i1 %or.cond7, i64 %i.f, i64 1 ; 2 uses
  %spec.select41.not = select i1 %i.h, i1 %i.i, i1 false
  br i1 %spec.select41.not, label %bb.d, label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %.1.ph = phi i64 [ %spec.store.select8, %bb.d ], [ %spec.store.select9, %bb.e ]
  call void @finish_wait(ptr noundef @running_helpers_waitq, ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.j = icmp eq i64 %.1.ph, 0
  br i1 %i.j, label %bb.f, label %.critedge

bb.f:                                             ; preds = %select.unfold
  call void @down_write(ptr noundef @umhelper_sem) #11
  store i32 0, ptr @usermodehelper_disabled, align 4
  %i.k = call i32 @__wake_up(ptr noundef @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  call void @up_write(ptr noundef @umhelper_sem) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %select.unfold, %bb.a, %bb.f
  %.0 = phi i32 [ -22, %bb.a ], [ -11, %bb.f ], [ 0, %select.unfold ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @call_usermodehelper_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %3, 17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_kzalloc_noprof.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 1
  %..i.i = add nuw nsw i32 %i.c, 1
  %i.d = zext nneg i32 %..i.i to i64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]
  %i.e = or i32 %3, 256
  %i.f = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noalias noundef align 8 dereferenceable_or_null(96) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef range(i32 256, 0) %i.e, i64 noundef 96) #12 ; 12 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  store i64 4503599625273344, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  store volatile ptr %i.j, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 16
  store volatile ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 24
  store ptr @call_usermodehelper_exec_work, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.i, i64 40
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 56
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 80
  store ptr %5, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.i, i64 72
  store ptr %4, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.i, i64 88
  store ptr %6, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit, %bb.c
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_usermodehelper_exec_work(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef null) #11
  %i.d = tail call i32 @user_mode_thread(ptr noundef @call_usermodehelper_exec_async, ptr noundef %0, i64 noundef 17) #11 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = getelementptr i8, ptr %0, i64 68         ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.f, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @kernel_wait(i32 noundef %i.d, ptr noundef %i.f) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef nonnull inttoptr (i64 1 to ptr)) #11
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.h, ptr null, ptr elementtype(ptr) %i.h) #9, !srcloc !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @complete(ptr noundef nonnull %i.i) #11
  br label %call_usermodehelper_exec_sync.exit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %call_usermodehelper_freeinfo.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.k(ptr noundef %0) #11, !inline_history !17
  br label %call_usermodehelper_freeinfo.exit.i.i

call_usermodehelper_freeinfo.exit.i.i:            ; preds = %bb.h, %bb.g
  tail call void @kfree(ptr noundef %0) #11
  br label %call_usermodehelper_exec_sync.exit

bb.i:                                             ; preds = %bb.a
  %i.l = tail call i32 @user_mode_thread(ptr noundef @call_usermodehelper_exec_async, ptr noundef %0, i64 noundef 32785) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %call_usermodehelper_exec_sync.exit

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %0, i64 68
  store i32 %i.l, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.p = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.o, ptr null, ptr elementtype(ptr) %i.o) #9, !srcloc !12 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @complete(ptr noundef nonnull %i.p) #11
  br label %call_usermodehelper_exec_sync.exit

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i9, label %call_usermodehelper_freeinfo.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %i.r(ptr noundef %0) #11, !inline_history !0
  br label %call_usermodehelper_freeinfo.exit.i

call_usermodehelper_freeinfo.exit.i:              ; preds = %bb.m, %bb.l
  tail call void @kfree(ptr noundef %0) #11
  br label %call_usermodehelper_exec_sync.exit

call_usermodehelper_exec_sync.exit:               ; preds = %call_usermodehelper_freeinfo.exit.i, %bb.k, %call_usermodehelper_freeinfo.exit.i.i, %bb.f, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @call_usermodehelper_exec(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.completion, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %call_usermodehelper_freeinfo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.f(ptr noundef %0) #11, !inline_history !18
  br label %call_usermodehelper_freeinfo.exit

call_usermodehelper_freeinfo.exit:                ; preds = %bb.b, %bb.c
  call void @kfree(ptr noundef %0) #11
  br label %helper_unlock.exit

bb.d:                                             ; preds = %bb.a
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @running_helpers, ptr elementtype(i32) @running_helpers) #9, !srcloc !19
  %i.g = load i32, ptr @usermodehelper_disabled, align 4
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8
  %char0 = load i8, ptr %i.h, align 1
  %i.i = icmp eq i8 %char0, 0
  br i1 %i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %1, 0                        ; 2 uses
  %. = select i1 %i.j, ptr null, ptr %2
  %i.k = getelementptr i8, ptr %0, i64 32         ; 3 uses
  store ptr %., ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 64
  store i32 %1, ptr %i.l, align 8
  %i.m = load ptr, ptr @system_dfl_wq, align 8
  %i.n = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.m, ptr noundef %0) #11 ; 0 uses
  br i1 %i.j, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %1, 8
  %.not30 = icmp eq i32 %i.o, 0
end_hunk_0

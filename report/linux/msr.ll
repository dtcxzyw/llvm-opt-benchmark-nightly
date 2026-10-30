Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/msr?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@msr_read:bb.a

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.031 = phi i64 [ %i.k, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.01630 = phi ptr [ %i.j, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %.01829 = phi i64 [ %i.l, %bb.b ], [ %2, %.preheader ]
  %i.h = call i32 @rdmsrq_safe_on_cpu(i32 noundef %i.f, i32 noundef %i.c, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %copy_to_user.exit, label %copy_to_user.exit._crit_edge

copy_to_user.exit:                                ; preds = %.lr.ph
  %i.i = call i64 @_copy_to_user(ptr noundef %.01630, ptr noundef nonnull %i.a, i64 noundef 8) #10
  %.not23 = icmp eq i64 %i.i, 0
  br i1 %.not23, label %bb.b, label %copy_to_user.exit._crit_edge

bb.b:                                             ; preds = %copy_to_user.exit
  %i.j = getelementptr i8, ptr %.01630, i64 8
  %i.k = add i64 %.031, 8                         ; 2 uses
  %i.l = add i64 %.01829, -8                      ; 2 uses
  %.not21 = icmp eq i64 %i.l, 0
  br i1 %.not21, label %copy_to_user.exit._crit_edge, label %.lr.ph, !llvm.loop !13

copy_to_user.exit._crit_edge:                     ; preds = %bb.b, %.lr.ph, %copy_to_user.exit
  %.0.lcssa.ph = phi i64 [ %i.k, %bb.b ], [ %.031, %.lr.ph ], [ %.031, %copy_to_user.exit ]
  %.1.ph = phi i32 [ 0, %bb.b ], [ %i.h, %.lr.ph ], [ -14, %copy_to_user.exit ]
  %.0.lcssa.ph.fr = freeze i64 %.0.lcssa.ph       ; 2 uses
  %i.m = sext i32 %.1.ph to i64
  %.not24 = icmp eq i64 %.0.lcssa.ph.fr, 0
  %spec.select = select i1 %.not24, i64 %i.m, i64 %.0.lcssa.ph.fr
  br label %copy_to_user.exit._crit_edge.thread

copy_to_user.exit._crit_edge.thread:              ; preds = %copy_to_user.exit._crit_edge, %.preheader, %bb.a
  %.017 = phi i64 [ -22, %bb.a ], [ %spec.select, %copy_to_user.exit._crit_edge ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msr_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = load i64, ptr %3, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val, i64 76
  %.val35 = load i32, ptr %i.e, align 4
  %i.f = and i32 %.val35, 1048575
  %i.g = tail call i32 @security_locked_down(i32 noundef 8) #10 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.g to i64
  br label %filter_write.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @allow_writes, align 4
  switch i32 %i.i, label %bb.d [
    i32 0, label %bb.f
    i32 1, label %filter_write.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @___ratelimit(ptr noundef @filter_write.fw_rs, ptr noundef @__func__.filter_write) #10
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 2008
  %i.n = getelementptr i8, ptr %i.l, i64 1528
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %i.c, ptr noundef %i.m, i32 noundef %i.o) #11 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  %i.r = and i64 %2, 7
  %.not30 = icmp eq i64 %i.r, 0
  br i1 %.not30, label %.preheader, label %filter_write.exit

.preheader:                                       ; preds = %bb.f
  %.not3141 = icmp eq i64 %2, 0
  br i1 %.not3141, label %filter_write.exit, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %.preheader, %bb.h
  %.044 = phi i64 [ %i.w, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %.02143 = phi ptr [ %i.v, %bb.h ], [ %1, %.preheader ] ; 2 uses
  %.02342 = phi i64 [ %i.x, %bb.h ], [ %2, %.preheader ]
  %i.s = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %.02143, i64 noundef 8) #10
  %.not32 = icmp eq i64 %i.s, 0
  br i1 %.not32, label %bb.g, label %copy_from_user.exit._crit_edge

bb.g:                                             ; preds = %copy_from_user.exit
  call void @add_taint(i32 noundef 2, i32 noundef 0) #10
  %i.t = load i64, ptr %i.a, align 8
  %i.u = call i32 @wrmsrq_safe_on_cpu(i32 noundef %i.f, i32 noundef %i.c, i64 noundef %i.t) #10 ; 2 uses
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %bb.h, label %copy_from_user.exit._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.02143, i64 8
  %i.w = add i64 %.044, 8                         ; 2 uses
  %i.x = add i64 %.02342, -8                      ; 2 uses
  %.not31 = icmp eq i64 %i.x, 0
  br i1 %.not31, label %copy_from_user.exit._crit_edge, label %copy_from_user.exit, !llvm.loop !14

copy_from_user.exit._crit_edge:                   ; preds = %bb.h, %bb.g, %copy_from_user.exit
  %.0.lcssa.ph = phi i64 [ %i.w, %bb.h ], [ %.044, %bb.g ], [ %.044, %copy_from_user.exit ]
  %.1.ph = phi i32 [ 0, %bb.h ], [ %i.u, %bb.g ], [ -14, %copy_from_user.exit ]
  %.0.lcssa.ph.fr = freeze i64 %.0.lcssa.ph       ; 2 uses
  %i.y = sext i32 %.1.ph to i64
  %.not34 = icmp eq i64 %.0.lcssa.ph.fr, 0
  %spec.select = select i1 %.not34, i64 %i.y, i64 %.0.lcssa.ph.fr
  br label %filter_write.exit

filter_write.exit:                                ; preds = %copy_from_user.exit._crit_edge, %.preheader, %bb.c, %bb.f, %bb.b
  %.022 = phi i64 [ %i.h, %bb.b ], [ -22, %bb.f ], [ -1, %bb.c ], [ %spec.select, %copy_from_user.exit._crit_edge ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @msr_ioctl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 9 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !10
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 76
  %.val44 = load i32, ptr %i.d, align 4
  %i.e = and i32 %.val44, 1048575                 ; 2 uses
  switch i32 %1, label %bb.j [
    i32 -1071619168, label %bb.b
    i32 -1071619167, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 1
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.j, label %copy_from_user.exit43

copy_from_user.exit43:                            ; preds = %bb.b
  %i.i = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.b, i64 noundef 32) #10
  %.not29 = icmp eq i64 %i.i, 0
  br i1 %.not29, label %bb.c, label %bb.j

bb.c:                                             ; preds = %copy_from_user.exit43
  %i.j = call i32 @rdmsr_safe_regs_on_cpu(i32 noundef %i.e, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %.sink.split, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 2
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %bb.d
  %i.n = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.b, i64 noundef 32) #10
  %.not23 = icmp eq i64 %i.n, 0
  br i1 %.not23, label %bb.e, label %bb.j

bb.e:                                             ; preds = %copy_from_user.exit
  %i.o = call i32 @security_locked_down(i32 noundef 8) #10 ; 2 uses
  %.not24 = icmp eq i32 %i.o, 0
  br i1 %.not24, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = load i32, ptr @allow_writes, align 4
  switch i32 %i.r, label %bb.g [
    i32 0, label %bb.i
    i32 1, label %filter_write.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @___ratelimit(ptr noundef @filter_write.fw_rs, ptr noundef @__func__.filter_write) #10
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 2008
  %i.w = getelementptr i8, ptr %i.u, i64 1528
  %i.x = load i32, ptr %i.w, align 8
  %i.y = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %i.q, ptr noundef %i.v, i32 noundef %i.x) #11 ; 0 uses
  %i.z = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  call void @add_taint(i32 noundef 2, i32 noundef 0) #10
  %i.aa = call i32 @wrmsr_safe_regs_on_cpu(i32 noundef %i.e, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not26 = icmp eq i32 %i.aa, 0
  br i1 %.not26, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.c
  %i.ab = call i64 @_copy_to_user(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 32) #10
  %.fr = freeze i64 %i.ab
  %.not27 = icmp eq i64 %.fr, 0
  %spec.select32 = select i1 %.not27, i32 0, i32 -14
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a, %copy_from_user.exit, %bb.d, %copy_from_user.exit43, %bb.b, %bb.i, %bb.e, %bb.c
  %.0 = phi i32 [ %i.aa, %bb.i ], [ -9, %bb.b ], [ %i.j, %bb.c ], [ -14, %copy_from_user.exit43 ], [ -25, %bb.a ], [ -14, %copy_from_user.exit ], [ -9, %bb.d ], [ %i.o, %bb.e ], [ %spec.select32, %.sink.split ]
  %i.ac = sext i32 %.0 to i64
  br label %filter_write.exit

filter_write.exit:                                ; preds = %bb.f, %bb.j
  %.017 = phi i64 [ %i.ac, %bb.j ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -6, 1) i32 @msr_open(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 76
  %.val6 = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val6, 1048575                  ; 2 uses
  %i.d = tail call zeroext i1 @capable(i32 noundef 17) #10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @nr_cpu_ids, align 4
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %arch_test_bit.exit, label %bb.c

arch_test_bit.exit:                               ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64
  %i.g = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 1048576) %i.f) #12, !srcloc !15 ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  %spec.select = select i1 %i.i, i32 0, i32 -6
  br label %bb.c

bb.c:                                             ; preds = %arch_test_bit.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -6, %bb.b ], [ %spec.select, %arch_test_bit.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsrq_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wrmsrq_safe_on_cpu(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsr_safe_regs_on_cpu(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wrmsr_safe_regs_on_cpu(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noalias ptr @msr_devnode(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 668
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 1048575
  %i.d = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.10, i32 noundef %i.c) #10
  ret ptr %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @set_allow_writes(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 align 16 prefalign(16) {
sub_0:
  %i.a = tail call ptr @strim(ptr noundef %0) #10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not4 = icmp eq i8 %i.b, 111
  br i1 %.not4, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %.not5 = icmp eq i8 %i.d, 110
  br i1 %.not5, label %.tail.a, label %.tail.thread

.tail.a:                                          ; preds = %sub_1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.a, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail.a
  %i.h = tail call i32 @strcmp(ptr noundef %i.a, ptr noundef dereferenceable(4) @.str.13) #10
  %.not3 = icmp eq i32 %i.h, 0
  %. = select i1 %.not3, i32 1, i32 2
  br label %bb.a

bb.a:                                             ; preds = %.tail.thread, %.tail.a
  %.sink = phi i32 [ %., %.tail.thread ], [ 0, %.tail.a ]
  store i32 %.sink, ptr @allow_writes, align 4
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @get_allow_writes(ptr nofree noundef writeonly captures(none) %0, ptr nofree readnone captures(none) %1) #7 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @allow_writes, align 4     ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.13, ptr @.str.14
  %switch.selectcmp2 = icmp eq i32 %i.a, 0
  %switch.select3 = select i1 %switch.selectcmp2, ptr @.str.12, ptr %switch.select
  %i.b = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, ptr noundef nonnull %switch.select3) #10
  ret i32 %i.b
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 2148332579}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{i64 2148556028}
end_hunk_0

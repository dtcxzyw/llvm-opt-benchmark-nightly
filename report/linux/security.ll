Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/security?download=true
inline.NumInlined: 71
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@__SCT__lsm_static_call_sctp_bind_connect_1
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_sctp_sk_clone_0(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_sctp_sk_clone_1(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_sctp_assoc_established_0(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_sctp_assoc_established_1(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_mptcp_add_subflow_0(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_mptcp_add_subflow_1(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_alloc_0(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_alloc_1(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_permission_0(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_permission_1(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_getsecurity_0(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_key_getsecurity_1(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_key_post_create_or_update_0(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_key_post_create_or_update_1(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_init_0(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_init_1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_known_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_known_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_match_0(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_audit_rule_match_1(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_audit_rule_free_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_audit_rule_free_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_locked_down_0(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_locked_down_1(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_open_0(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_open_1(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_alloc_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_alloc_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_read_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_read_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_write_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_perf_event_write_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_override_creds_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_override_creds_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_sqpoll_0() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_sqpoll_1() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_cmd_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_cmd_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_allowed_0() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_uring_allowed_1() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_initramfs_populated_0() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_initramfs_populated_1() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_bdev_alloc_security_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_bdev_alloc_security_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_bdev_free_security_0(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__lsm_static_call_bdev_free_security_1(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_bdev_setintegrity_0(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__lsm_static_call_bdev_setintegrity_1(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @lsm_cred_alloc(ptr nofree noundef writeonly captures(none) initializes((128, 136)) %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.b = load i32, ptr @blob_sizes, align 4       ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_kzalloc_noprof.exit.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  br label %lsm_blob_alloc.exit

_kzalloc_noprof.exit.i:                           ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = or i32 %1, 256
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.d, i32 noundef range(i32 256, 0) %i.e) #9 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = icmp eq ptr %i.f, null
  %spec.select.i = select i1 %i.g, i32 -12, i32 0
  br label %lsm_blob_alloc.exit

lsm_blob_alloc.exit:                              ; preds = %bb.b, %_kzalloc_noprof.exit.i
  %.0.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %_kzalloc_noprof.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @lsm_task_alloc(ptr nofree noundef writeonly captures(none) initializes((2968, 2976)) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2968       ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @blob_sizes, i64 44), align 4 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_kzalloc_noprof.exit.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  br label %lsm_blob_alloc.exit

_kzalloc_noprof.exit.i:                           ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.d, i32 noundef range(i32 256, 0) 3520) #9 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = icmp eq ptr %i.e, null
  %spec.select.i = select i1 %i.f, i32 -12, i32 0
  br label %lsm_blob_alloc.exit

lsm_blob_alloc.exit:                              ; preds = %bb.b, %_kzalloc_noprof.exit.i
  %.0.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %_kzalloc_noprof.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @lsm_fill_user_ctx(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 32)
  %i.a = add i64 %.0.i, 7                         ; 2 uses
  %i.b = and i64 %i.a, -8                         ; 6 uses
  %i.c = load i32, ptr %1, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.b
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.b, i32 noundef range(i32 256, 0) 3520) #9 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  store i64 %4, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store i64 %5, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store i64 %i.b, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.f, i64 24
  store i64 %3, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 1 %2, i64 %3, i1 false)
  %i.l = icmp samesign ugt i64 %i.a, 2147483647
  br i1 %i.l, label %bb.d, label %check_copy_size.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "208: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 208b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 208) #10, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.31, ptr nonnull @.str.508, i32 57, i32 2307, i64 16) #10, !srcloc !13
  tail call void asm sideeffect "209: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 209b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #10, !srcloc !14
  br label %copy_to_user.exit.a

check_copy_size.exit:                             ; preds = %bb.c
  %6 = tail call i64 @_copy_to_user(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef range(i64 0, 4294967296) %i.b) #11
  br label %copy_to_user.exit.a

copy_to_user.exit.a:                              ; preds = %bb.d, %check_copy_size.exit
  %.0.i32 = phi i64 [ %6, %check_copy_size.exit ], [ %i.b, %bb.d ]
  %.not31 = icmp eq i64 %.0.i32, 0
  %spec.select = select i1 %.not31, i32 0, i32 -14
  br label %bb.e

bb.e:                                             ; preds = %copy_to_user.exit.a, %_kzalloc_noprof.exit, %bb.a, %bb.b
  %.028 = phi i32 [ 0, %bb.b ], [ -7, %bb.a ], [ -12, %_kzalloc_noprof.exit ], [ %spec.select, %copy_to_user.exit.a ]
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %_kzalloc_noprof.exit ], [ %i.f, %copy_to_user.exit.a ]
  tail call void @kfree(ptr noundef %.0) #11
  %i.m = trunc i64 %i.b to i32
  store i32 %i.m, ptr %1, align 4
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_binder_set_context_mgr(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_set_context_mgr_0, i1 false) #10
          to label %arch_static_branch.exit13 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_binder_set_context_mgr_0(ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit13, label %arch_static_branch.exit

arch_static_branch.exit13:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_set_context_mgr_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit13
  %i.b = tail call i32 @__SCT__lsm_static_call_binder_set_context_mgr_1(ptr noundef %0) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit13, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit13 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_binder_transaction(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transaction_0, i1 false) #10
          to label %arch_static_branch.exit15 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_binder_transaction_0(ptr noundef %0, ptr noundef %1) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit15, label %arch_static_branch.exit

arch_static_branch.exit15:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transaction_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit15
  %i.b = tail call i32 @__SCT__lsm_static_call_binder_transaction_1(ptr noundef %0, ptr noundef %1) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit15, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit15 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_binder_transfer_binder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transfer_binder_0, i1 false) #10
          to label %arch_static_branch.exit15 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_binder_transfer_binder_0(ptr noundef %0, ptr noundef %1) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit15, label %arch_static_branch.exit

arch_static_branch.exit15:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transfer_binder_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit15
  %i.b = tail call i32 @__SCT__lsm_static_call_binder_transfer_binder_1(ptr noundef %0, ptr noundef %1) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit15, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit15 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_binder_transfer_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transfer_file_0, i1 false) #10
          to label %arch_static_branch.exit17 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_binder_transfer_file_0(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit17, label %arch_static_branch.exit

arch_static_branch.exit17:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_binder_transfer_file_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit17
  %i.b = tail call i32 @__SCT__lsm_static_call_binder_transfer_file_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit17, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit17 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_ptrace_access_check(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_ptrace_access_check_0, i1 false) #10
          to label %arch_static_branch.exit15 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_ptrace_access_check_0(ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit15, label %arch_static_branch.exit

arch_static_branch.exit15:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_ptrace_access_check_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit15
  %i.b = tail call i32 @__SCT__lsm_static_call_ptrace_access_check_1(ptr noundef %0, i32 noundef %1) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit15, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit15 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_ptrace_traceme(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_ptrace_traceme_0, i1 false) #10
          to label %arch_static_branch.exit13 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_ptrace_traceme_0(ptr noundef %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit13, label %arch_static_branch.exit

arch_static_branch.exit13:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_ptrace_traceme_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit13
  %i.b = tail call i32 @__SCT__lsm_static_call_ptrace_traceme_1(ptr noundef %0) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit13, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit13 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_capget(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_capget_0, i1 false) #10
          to label %arch_static_branch.exit19 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_capget_0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit19, label %arch_static_branch.exit

arch_static_branch.exit19:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_capget_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15

bb.c:                                             ; preds = %arch_static_branch.exit19
  %i.b = tail call i32 @__SCT__lsm_static_call_capget_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %arch_static_branch.exit19, %bb.c, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 0, %arch_static_branch.exit19 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @security_capset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_capset_0, i1 false) #10
          to label %arch_static_branch.exit21 [label %bb.b], !srcloc !15

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @__SCT__lsm_static_call_capset_0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %arch_static_branch.exit21, label %arch_static_branch.exit

arch_static_branch.exit21:                        ; preds = %bb.a, %bb.b
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @security_hook_active_capset_1, i1 false) #10
          to label %arch_static_branch.exit [label %bb.c], !srcloc !15
end_hunk_0

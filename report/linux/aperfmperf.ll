inline.NumInlined: 45
inline.NumDeleted: 23
begin_hunk_0_@arch_enable_hybrid_capacity_scale:bb.a
  %i.a = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 379, i32 2323, i64 16) #8, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.a) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  br label %bb.d

arch_static_branch.exit:                          ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @pcpu_alloc_noprof(i64 noundef 16, i64 noundef 8, i1 noundef zeroext false, i32 noundef 3264) #11 ; 2 uses
  store ptr %i.b, ptr @arch_cpu_scale, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %arch_static_branch.exit, %bb.c
  %i.c = phi i64 [ %i.y, %bb.c ], [ 0, %arch_static_branch.exit ]
  %i.d = load i64, ptr @__cpu_possible_mask, align 8
  %i.e = shl nsw i64 -1, %i.c
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %.preheader
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #12, !srcloc !17 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.j = load ptr, ptr @arch_cpu_scale, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.g, 63
  %i.m = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.k
  %i.p = inttoptr i64 %i.o to ptr
  store i64 1024, ptr %i.p, align 8
  %i.q = load i64, ptr @arch_max_freq_ratio, align 8
  %i.r = load ptr, ptr @arch_cpu_scale, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = load i64, ptr %i.m, align 8
  %i.u = add i64 %i.t, %i.s
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store i64 %i.q, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %i.g, 1
  %i.y = and i64 %i.x, 127                        ; 2 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  br i1 %i.z, label %find_next_bit.exit.thread, label %.preheader, !prof !18, !llvm.loop !19

find_next_bit.exit.thread:                        ; preds = %.preheader, %bb.c, %find_next_bit.exit
  tail call void @static_key_enable(ptr noundef nonnull @arch_hybrid_cap_scale_key) #9
  %i.aa = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit, %find_next_bit.exit.thread, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %find_next_bit.exit.thread ], [ false, %arch_static_branch.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @pcpu_alloc_noprof(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @arch_set_cpu_capacity(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @arch_hybrid_cap_scale_key, i1 true) #8
          to label %arch_static_branch_jump.exit [label %bb.b], !srcloc !21

arch_static_branch_jump.exit:                     ; preds = %bb.a
  %i.a = shl i64 %1, 10
  %i.b = and i64 %2, 4294967295
  %i.c = udiv i64 %i.a, %i.b
  %i.d = load ptr, ptr @arch_cpu_scale, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sext i32 %0 to i64
  %i.g = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr
  store volatile i64 %i.c, ptr %i.j, align 8
  %i.k = shl i64 %3, 10
  %i.l = and i64 %4, 4294967295
  %i.m = udiv i64 %i.k, %i.l
  %i.n = load ptr, ptr @arch_cpu_scale, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = load i64, ptr %i.g, align 8
  %i.q = add i64 %i.p, %i.o
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store volatile i64 %i.m, ptr %i.s, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 424, i32 2323, i64 16) #8, !srcloc !22
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.t) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %arch_static_branch_jump.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @arch_scale_cpu_capacity(i32 noundef %0) #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @arch_hybrid_cap_scale_key, i1 false) #8
          to label %arch_static_branch.exit [label %bb.b], !srcloc !11

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @arch_cpu_scale, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, %i.b
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load volatile i64, ptr %i.g, align 8
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ 1024, %bb.a ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @arch_scale_freq_tick() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !24
  %i.b = add i64 %i.a, ptrtoint (ptr @cpu_samples to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 124, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 63)) #8
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !25

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 232) #8, !srcloc !26 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = shl i64 %i.f, 32
  %i.h = or i64 %i.g, %i.e                        ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %native_read_msr.exit [label %bb.c], !srcloc !11

bb.c:                                             ; preds = %bb.b
  tail call void @do_trace_read_msr(i32 noundef 232, i64 noundef %i.h, i32 noundef 0) #9
  br label %native_read_msr.exit

native_read_msr.exit:                             ; preds = %bb.b, %bb.c
  %i.i = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 231) #8, !srcloc !26 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = shl i64 %i.k, 32
  %i.m = or i64 %i.l, %i.j                        ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %native_read_msr.exit24 [label %bb.d], !srcloc !11

bb.d:                                             ; preds = %native_read_msr.exit
  tail call void @do_trace_read_msr(i32 noundef 231, i64 noundef %i.m, i32 noundef 0) #9
  br label %native_read_msr.exit24

native_read_msr.exit24:                           ; preds = %native_read_msr.exit, %bb.d
  %i.n = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %i.h, %i.o                       ; 3 uses
  %i.q = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.m, %i.r                       ; 2 uses
  store i64 %i.h, ptr %i.n, align 8
  store i64 %i.m, ptr %i.q, align 8
  %i.t = load i32, ptr %i.c, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.c, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !27
  %i.v = load volatile i64, ptr @jiffies, align 64
  %i.w = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.c, i64 16
  store i64 %i.p, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.c, i64 24
  store i64 %i.s, ptr %i.y, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !28
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.c, align 8
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @arch_scale_freq_key, i1 true) #8
          to label %arch_static_branch_jump.exit.i [label %_static_cpu_has.exit], !srcloc !21

arch_static_branch_jump.exit.i:                   ; preds = %native_read_msr.exit24
  %i.ab = shl i64 %i.p, 20                        ; 2 uses
  %i.ac = icmp ugt i64 %i.p, 17592186044415
  br i1 %i.ac, label %bb.i, label %bb.e

bb.e:                                             ; preds = %arch_static_branch_jump.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @arch_hybrid_cap_scale_key, i1 false) #8
          to label %arch_static_branch.exit.i [label %bb.f], !srcloc !11

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !29
  %i.ae = load ptr, ptr @arch_cpu_scale, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.ad, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load volatile i64, ptr %i.ai, align 8
  br label %bb.g

arch_static_branch.exit.i:                        ; preds = %bb.e
  %i.ak = load i64, ptr @arch_max_freq_ratio, align 8
  br label %bb.g

bb.g:                                             ; preds = %arch_static_branch.exit.i, %bb.f
  %.0.i25 = phi i64 [ %i.aj, %bb.f ], [ %i.ak, %arch_static_branch.exit.i ]
  %i.al = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %.0.i25) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 2 uses
  %0 = add i64 %i.an, -1
  %1 = icmp uge i64 %0, %i.ab
  %or.cond.i = or i1 %i.am, %1
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = udiv i64 %i.ab, %i.an
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 1024)
  tail call void asm sideeffect "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @arch_freq_scale, i64 %spec.store.select.i) #8, !srcloc !30
  br label %_static_cpu_has.exit

bb.i:                                             ; preds = %bb.g, %arch_static_branch_jump.exit.i
  %i.ap = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10 ; 0 uses
  %i.aq = load ptr, ptr @system_percpu_wq, align 8
  %i.ar = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.aq, ptr noundef nonnull @disable_freq_invariance_work) #9 ; 0 uses
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.i, %bb.h, %native_read_msr.exit24, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @arch_freq_get_on_cpu(i32 noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, ptrtoint (ptr @cpu_samples to i64)
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 124, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 63)) #8
          to label %_static_cpu_has.exit [label %_static_cpu_has.exit, label %_static_cpu_has.exit.thread], !srcloc !25

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_static_cpu_has.exit, %._crit_edge
  %i.i = load volatile i32, ptr %i.e, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !31
  %i.j = and i32 %i.i, 1
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !prof !32

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !33
  %i.k = load volatile i32, ptr %i.e, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !31
  %i.l = and i32 %i.k, 1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !34, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.lcssa = phi i32 [ %i.i, %bb.b ], [ %i.k, %.lr.ph ]
  %i.m = load i64, ptr %i.f, align 8
  %i.n = load i64, ptr %i.g, align 8
  %i.o = load i64, ptr %i.h, align 8              ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !36
  %i.p = load volatile i32, ptr %i.e, align 8
  %.not22 = icmp eq i32 %i.p, %.lcssa
  br i1 %.not22, label %bb.c, label %bb.b, !llvm.loop !37

bb.c:                                             ; preds = %._crit_edge
  %.not19 = icmp eq i64 %i.o, 0
  br i1 %.not19, label %_static_cpu_has.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load volatile i64, ptr @jiffies, align 64
  %i.r = sub i64 %i.q, %i.m
  %i.s = icmp ugt i64 %i.r, 20
  br i1 %i.s, label %_static_cpu_has.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr @cpu_khz, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.o
  %i.x = trunc i64 %i.w to i32
  br label %bb.f

_static_cpu_has.exit.thread:                      ; preds = %bb.a, %bb.c, %bb.d
  %i.y = tail call i32 @cpufreq_quick_get(i32 noundef %0) #9 ; 2 uses
  %.not20 = icmp eq i32 %i.y, 0
  %i.z = load i32, ptr @cpu_khz, align 4
  %i.aa = select i1 %.not20, i32 %i.z, i32 %i.y
  br label %bb.f

bb.f:                                             ; preds = %_static_cpu_has.exit.thread, %bb.e
  %.0 = phi i32 [ %i.aa, %_static_cpu_has.exit.thread ], [ %i.x, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpufreq_quick_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @bp_init_aperfmperf() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 124, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 63)) #8
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !25

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @init_counter_refs(ptr poison) #14, !srcloc !38
  tail call fastcc void @bp_init_freq_invariance() #15, !srcloc !39
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ap_init_aperfmperf() local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 124, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 63)) #8
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !25

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 232) #8, !srcloc !26 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = shl i64 %i.c, 32
  %i.e = or i64 %i.d, %i.b                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %native_read_msr.exit.i [label %bb.c], !srcloc !11

bb.c:                                             ; preds = %bb.b
  tail call void @do_trace_read_msr(i32 noundef 232, i64 noundef %i.e, i32 noundef 0) #9
  br label %native_read_msr.exit.i

native_read_msr.exit.i:                           ; preds = %bb.c, %bb.b
  %i.f = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 231) #8, !srcloc !26 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = shl i64 %i.h, 32
  %i.j = or i64 %i.i, %i.g                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %init_counter_refs.exit [label %bb.d], !srcloc !11

bb.d:                                             ; preds = %native_read_msr.exit.i
  tail call void @do_trace_read_msr(i32 noundef 231, i64 noundef %i.j, i32 noundef 0) #9
  br label %init_counter_refs.exit

init_counter_refs.exit:                           ; preds = %native_read_msr.exit.i, %bb.d
  tail call void asm sideeffect "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_samples, i64 32), i64 %i.e) #8, !srcloc !40
  tail call void asm sideeffect "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_samples, i64 40), i64 %i.j) #8, !srcloc !41
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %init_counter_refs.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_counter_refs(ptr nofree readnone captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 232) #8, !srcloc !26 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = shl i64 %i.c, 32
  %i.e = or i64 %i.d, %i.b                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %native_read_msr.exit [label %bb.b], !srcloc !11

bb.b:                                             ; preds = %bb.a
  tail call void @do_trace_read_msr(i32 noundef 232, i64 noundef %i.e, i32 noundef 0) #9
  br label %native_read_msr.exit

native_read_msr.exit:                             ; preds = %bb.a, %bb.b
  %i.f = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 231, 233) 231) #8, !srcloc !26 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = shl i64 %i.h, 32
  %i.j = or i64 %i.i, %i.g                        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #8
          to label %native_read_msr.exit4 [label %bb.c], !srcloc !11

bb.c:                                             ; preds = %native_read_msr.exit
  tail call void @do_trace_read_msr(i32 noundef 231, i64 noundef %i.j, i32 noundef 0) #9
  br label %native_read_msr.exit4

native_read_msr.exit4:                            ; preds = %native_read_msr.exit, %bb.c
  tail call void asm sideeffect "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_samples, i64 32), i64 %i.e) #8, !srcloc !40
  tail call void asm sideeffect "movq $1, %gs:$0", "=*m,re,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_samples, i64 40), i64 %i.j) #8, !srcloc !41
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_enable_cpuslocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @register_syscore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disable_freq_invariance_workfn(ptr nofree readnone captures(none) %0) #1 align 16 prefalign(16) {
end_hunk_0

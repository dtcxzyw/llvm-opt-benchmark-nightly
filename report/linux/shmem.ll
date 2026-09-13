Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/shmem?download=true
inline.NumInlined: 768
inline.NumDeleted: 309
begin_hunk_0_@shmem_fault:bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %.val24 = load ptr, ptr %i.f, align 8           ; 4 uses
  %i.g = getelementptr i8, ptr %.val24, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %.val = load i32, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4
  %i.j = getelementptr i8, ptr %.val24, i64 536
  %i.k = load ptr, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.l = tail call fastcc i32 @shmem_falloc_wait(ptr noundef %0, ptr noundef %.val24) #20, !srcloc !88 ; 3 uses
  store i32 %i.l, ptr %i.b, align 4
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "724: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 724b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 724) #21, !srcloc !89
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str, i32 2712, i32 2307, i64 16) #21, !srcloc !90
  tail call void asm sideeffect "725: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 725b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 725) #21, !srcloc !91
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = call fastcc i32 @shmem_get_folio_gfp(ptr noundef %.val24, i64 noundef %i.p, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %.val, ptr noundef %0, ptr noundef nonnull %i.b) #20 ; 3 uses
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.selectcmp.i = icmp eq i32 %i.q, -133
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 2
  %switch.selectcmp4.i = icmp eq i32 %i.q, -12
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 1, i32 %switch.select.i
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not23 = icmp eq ptr %i.r, null
  br i1 %.not23, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.o, align 8
  %i.t = load volatile i64, ptr %i.r, align 8
  %i.u = and i64 %i.t, 64
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %folio_file_page.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.r, i64 64
  %.val.i.i = load i64, ptr %i.v, align 16
  %i.w = and i64 %.val.i.i, 255
  %notmask.i = shl nsw i64 -1, %i.w
  %i.x = xor i64 %notmask.i, -1
  %i.y = and i64 %i.s, %i.x
  br label %folio_file_page.exit

folio_file_page.exit:                             ; preds = %bb.h, %bb.i
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ 0, %bb.h ]
  %i.z = getelementptr [64 x i8], ptr %i.r, i64 %.0.i.i
  store ptr %i.z, ptr %i.m, align 8
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = or i32 %i.aa, 512
  br label %bb.j

bb.j:                                             ; preds = %folio_file_page.exit, %._crit_edge, %bb.b, %bb.f
  %.0 = phi i32 [ %i.l, %bb.b ], [ %switch.select5.i, %bb.f ], [ %.pre, %._crit_edge ], [ %i.ab, %folio_file_page.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shmem_set_policy(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 -48
  %i.e = tail call i32 @mpol_set_shared_policy(ptr noundef %i.d, ptr noundef %0, ptr noundef %1) #19
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @shmem_get_policy(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 64
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %2, align 8
  %i.f = load i64, ptr %0, align 64
  %i.g = sub i64 %1, %i.f
  %i.h = lshr i64 %i.g, 12
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 16
  %i.k = add i64 %i.h, %i.j
  %i.l = getelementptr i8, ptr %.val, i64 -48
  %i.m = tail call ptr @mpol_shared_policy_lookup(ptr noundef %i.l, i64 noundef %i.k) #19
  ret ptr %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 1025) i32 @shmem_falloc_wait(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 9 uses
  %i.a = getelementptr i8, ptr %1, i64 128        ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.a) #19
  %i.b = getelementptr i8, ptr %1, i64 536
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not21 = icmp ult i64 %i.f, %i.h
  br i1 %.not21, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.f, %i.j
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !13
  %i.n = inttoptr i64 %i.m to ptr
  store i64 0, ptr %2, align 8
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @synchronous_wake_function, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 44
  %or.cond.i = icmp eq i32 %i.t, 4
  br i1 %or.cond.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8              ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 168      ; 2 uses
  %i.y = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, i64 1, ptr elementtype(i64) %i.x) #21, !srcloc !92
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %get_file.exit.i, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.aa = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.25, ptr nonnull @.str.26, i32 121, i32 2323, i64 16) #21, !srcloc !93
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aa) #19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !94
  br label %get_file.exit.i

get_file.exit.i:                                  ; preds = %bb.g, %bb.f
  %i.ab = load i32, ptr %i.r, align 8
  %i.ac = and i32 %i.ab, 4096
  %.not.i.i = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %0, align 8               ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 16           ; 3 uses
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %get_file.exit.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 128    ; 3 uses
  %i.ah = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, i32 -1, ptr elementtype(i32) %i.ag) #21, !srcloc !95 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %__vma_refcount_put_return.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.ah, 1
  br i1 %i.aj, label %.thread.i.i.i.i, label %bb.j, !prof !15

.thread.i.i.i.i:                                  ; preds = %bb.i
  call void @refcount_warn_saturate(ptr noundef %i.ag, i32 noundef 3) #19
  br label %bb.n

__vma_refcount_put_return.exit.i.i.i.i:           ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !96
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw i32 %i.ah, 2147483647
  %3 = and i32 %i.ak, 1073741824
  %4 = icmp ne i32 %3, 0
  %i.al = icmp samesign ult i32 %i.ah, 1073741827
  %5 = and i1 %i.al, %4
  br i1 %5, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.af, i64 512
  %i.an = call i32 @rcuwait_wake_up(ptr noundef %i.am) #19 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %get_file.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #21
          to label %mmap_read_unlock.exit.i.i [label %bb.m], !srcloc !97

bb.m:                                             ; preds = %bb.l
  call void @__mmap_lock_do_trace_released(ptr noundef %i.af, i1 noundef zeroext false) #19
  br label %mmap_read_unlock.exit.i.i

mmap_read_unlock.exit.i.i:                        ; preds = %bb.m, %bb.l
  %i.ao = getelementptr i8, ptr %i.af, i64 464
  call void @up_read(ptr noundef %i.ao) #19
  br label %bb.n

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_raw_spin_unlock(ptr noundef %i.a) #19
  br label %bb.p

bb.n:                                             ; preds = %mmap_read_unlock.exit.i.i, %bb.k, %bb.j, %__vma_refcount_put_return.exit.i.i.i.i, %.thread.i.i.i.i, %bb.e
  %.0.i = phi ptr [ null, %bb.e ], [ %i.w, %.thread.i.i.i.i ], [ %i.w, %__vma_refcount_put_return.exit.i.i.i.i ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.w, %mmap_read_unlock.exit.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @prepare_to_wait(ptr noundef %i.ap, ptr noundef nonnull %2, i32 noundef 2) #19
  call void @_raw_spin_unlock(ptr noundef %i.a) #19
  call void @schedule() #19
  call void @_raw_spin_lock(ptr noundef %i.a) #19
  call void @finish_wait(ptr noundef %i.ap, ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_raw_spin_unlock(ptr noundef %i.a) #19
  %.not22 = icmp eq ptr %.0.i, null
  br i1 %.not22, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @fput(ptr noundef nonnull %.0.i) #19
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %.1 = phi i32 [ 1024, %bb.o ], [ 256, %bb.n ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @synchronous_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #19
  %i.b = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store volatile ptr %i.e, ptr %i.d, align 8
  store volatile ptr %i.b, ptr %i.b, align 8
  store volatile ptr %i.b, ptr %i.c, align 8
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mpol_set_shared_policy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @shmem_free_fc(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %mpol_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__mpol_put(ptr noundef nonnull %i.d) #19
  br label %mpol_put.exit

mpol_put.exit:                                    ; preds = %bb.b, %bb.c
  tail call void @kfree(ptr noundef nonnull %i.b) #19
  br label %bb.d

bb.d:                                             ; preds = %mpol_put.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @shmem_parse_one(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.fs_parse_result, align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !annotation !23
  %i.d = getelementptr i8, ptr %0, i64 88         ; 14 uses
  %i.e = call i32 @__fs_parse(ptr noundef %i.d, ptr noundef nonnull @shmem_fs_parameters, ptr noundef %1, ptr noundef nonnull %2) #19 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.bd [
    i32 6, label %bb.c
    i32 4, label %bb.g
    i32 5, label %bb.i
    i32 2, label %bb.k
    i32 7, label %bb.l
    i32 0, label %bb.n
    i32 1, label %bb.p
    i32 3, label %bb.r
    i32 8, label %bb.t
    i32 9, label %bb.u
    i32 10, label %bb.v
    i32 11, label %bb.z
    i32 12, label %bb.ac
    i32 13, label %bb.af
    i32 14, label %bb.ai
    i32 16, label %bb.am
    i32 15, label %bb.aq
    i32 17, label %bb.au
    i32 18, label %bb.ay
    i32 19, label %bb.az
    i32 20, label %bb.ba
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 @memparse(ptr noundef %i.h, ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp eq i8 %i.k, 37
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i64 %i.i, 12
  %i.n = load volatile i64, ptr @_totalram_pages, align 8
  %i.o = mul i64 %i.m, %i.n
  %i.p = udiv i64 %i.o, 100
  %i.q = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  store ptr %i.q, ptr %i.a, align 8
  %.pre = load i8, ptr %i.q, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i8 [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %.0110 = phi i64 [ %i.p, %bb.d ], [ %i.i, %bb.c ]
  %.not123 = icmp eq i8 %i.r, 0
  br i1 %.not123, label %bb.f, label %bb.bc

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.0110, 4095
  %i.t = lshr i64 %i.s, 12
  store i64 %i.t, ptr %i.c, align 8
  %i.u = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.bd

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i64 @memparse(ptr noundef %i.y, ptr noundef nonnull %i.a) #19 ; 2 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/madvise?download=true
inline.NumInlined: 504
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@madvise_lock:bb.a

bb.h:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i7
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.a, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %__mmap_lock_trace_start_locking.exit.i7, %mmap_write_lock_killable.exit
  %.0.i9 = phi i32 [ 1, %bb.h ], [ 2, %mmap_write_lock_killable.exit ], [ 1, %__mmap_lock_trace_start_locking.exit.i7 ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ]
  %i.i = getelementptr i8, ptr %0, i64 24
  store i32 %.0.i9, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %mmap_write_lock_killable.exit, %mmap_read_lock.exit
  %.0 = phi i32 [ 0, %mmap_read_lock.exit ], [ -4, %mmap_write_lock_killable.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @madvise_do_behavior(i64 noundef %0, i64 noundef range(i64 1, 0) %1, ptr nofree noundef captures(none) initializes((40, 56)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.blk_plug, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false), !annotation !11
  %i.c = getelementptr i8, ptr %2, i64 40         ; 7 uses
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #14, !srcloc !13
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 1400     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %get_untagged_addr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 464
  %i.k = load volatile i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %get_untagged_addr.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "149: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 149b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 149) #11, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 81, i32 2305, i64 16) #11, !srcloc !36
  tail call void asm sideeffect "150: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 150b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 150) #11, !srcloc !37
  br label %get_untagged_addr.exit

get_untagged_addr.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  store i64 %0, ptr %i.c, align 8
  %i.m = add i64 %1, 4095
  %i.n = and i64 %i.m, -4096
  %i.o = add i64 %i.n, %0
  %i.p = getelementptr i8, ptr %2, i64 48         ; 9 uses
  store i64 %i.o, ptr %i.p, align 8
  call void @blk_start_plug(ptr noundef nonnull %3) #13
  %i.q = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val = load i32, ptr %i.q, align 8             ; 2 uses
  %i.r = and i32 %.val, -2
  %switch.i = icmp eq i32 %i.r, 22
  %i.s = load ptr, ptr %2, align 8                ; 10 uses
  br i1 %switch.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %get_untagged_addr.exit
  %i.t = icmp eq i32 %.val, 23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 1, ptr %i.b, align 4
  %i.u = load i64, ptr %i.c, align 8              ; 2 uses
  %i.v = load i64, ptr %i.p, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i, label %madvise_populate.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.s, i64 464
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %.lr.ph.i
  %.02225.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.ad, %bb.p ] ; 2 uses
  %i.y = call i64 @faultin_page_range(ptr noundef %i.s, i64 noundef %.02225.i, i64 noundef %i.v, i1 noundef zeroext %i.t, ptr noundef nonnull %i.b) #13 ; 4 uses
  %i.z = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #11
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %bb.g], !srcloc !12

bb.g:                                             ; preds = %bb.f
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %i.s, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %bb.g, %bb.f
  call void @down_read(ptr noundef %i.x) #13
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #11
          to label %mmap_read_lock.exit.i [label %bb.h], !srcloc !12

bb.h:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.s, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %bb.h, %__mmap_lock_trace_start_locking.exit.i.i
  store i32 1, ptr %i.b, align 4
  br label %bb.i

bb.i:                                             ; preds = %mmap_read_lock.exit.i, %bb.e
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  switch i64 %i.y, label %bb.n [
    i64 -4, label %madvise_populate.exit
    i64 -22, label %bb.k
    i64 -133, label %bb.l
    i64 -14, label %bb.m
    i64 -12, label %.critedge.i
  ]

bb.k:                                             ; preds = %bb.j
  br label %madvise_populate.exit

bb.l:                                             ; preds = %bb.j
  br label %madvise_populate.exit

bb.m:                                             ; preds = %bb.j
  br label %madvise_populate.exit

bb.n:                                             ; preds = %bb.j
  %.b.i = load i1, ptr @madvise_populate.__already_done, align 1
  br i1 %.b.i, label %.critedge.i, label %bb.o, !prof !15

bb.o:                                             ; preds = %bb.n
  store i1 true, ptr @madvise_populate.__already_done, align 1
  %i.ab = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.madvise_populate, i64 noundef %i.y) #15 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %bb.n, %bb.j
  br label %madvise_populate.exit

bb.p:                                             ; preds = %bb.i
  %i.ac = shl i64 %i.y, 12
  %i.ad = add i64 %i.ac, %.02225.i                ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.v
  br i1 %i.ae, label %bb.e, label %madvise_populate.exit, !llvm.loop !34

madvise_populate.exit:                            ; preds = %bb.p, %bb.d, %bb.j, %bb.k, %bb.l, %bb.m, %.critedge.i
  %.0.i = phi i32 [ -12, %.critedge.i ], [ -4, %bb.j ], [ -22, %bb.k ], [ -133, %bb.l ], [ -14, %bb.m ], [ 0, %bb.d ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.at

bb.q:                                             ; preds = %get_untagged_addr.exit
  %i.af = load i64, ptr %i.p, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !annotation !11
  %i.ag = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %bb.r, label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.aj = load i64, ptr %i.c, align 8
  %i.ak = call ptr @lock_vma_under_rcu(ptr noundef %i.s, i64 noundef %i.aj) #13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %vma_end_read.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load i64, ptr %i.p, align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.s
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.ak, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 16
  br label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr i8, ptr %i.ak, i64 16
  %i.ar = load ptr, ptr %i.aq, align 16           ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.ak, i64 72
  %.val.i.i.i = load ptr, ptr %i.as, align 8
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.at = load i32, ptr %i.q, align 8
  %cond.i.i.i.i = icmp eq i32 %i.at, 102
  br i1 %cond.i.i.i.i, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr i8, ptr %i.ak, i64 64
  %i.av = load ptr, ptr %i.au, align 64
  %.not8.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not8.i.i.i, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w, %bb.t, %._crit_edge.i.i
  %i.aw = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ar, %bb.t ], [ %i.ar, %bb.w ]
  %i.ax = getelementptr i8, ptr %i.ak, i64 128    ; 3 uses
  %i.ay = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ax, i32 -1, ptr elementtype(i32) %i.ax) #11, !srcloc !17 ; 4 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %__vma_refcount_put_return.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = icmp slt i32 %i.ay, 1
  br i1 %i.ba, label %.thread.i.i.i.i, label %bb.z, !prof !14

.thread.i.i.i.i:                                  ; preds = %bb.y
  call void @refcount_warn_saturate(ptr noundef %i.ax, i32 noundef 3) #13
  br label %vma_end_read.exit.i.i

__vma_refcount_put_return.exit.i.i.i.i:           ; preds = %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  br label %vma_end_read.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.bb = add nuw i32 %i.ay, 2147483647
  %4 = and i32 %i.bb, 1073741824
  %5 = icmp ne i32 %4, 0
  %i.bc = icmp samesign ult i32 %i.ay, 1073741827
  %6 = and i1 %i.bc, %5
  br i1 %6, label %bb.aa, label %vma_end_read.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr i8, ptr %i.aw, i64 512
  %i.be = call i32 @rcuwait_wake_up(ptr noundef %i.bd) #13 ; 0 uses
  br label %vma_end_read.exit.i.i

vma_end_read.exit.i.i:                            ; preds = %bb.aa, %bb.z, %__vma_refcount_put_return.exit.i.i.i.i, %.thread.i.i.i.i, %bb.r
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #11
          to label %__mmap_lock_trace_start_locking.exit.i.i.i [label %bb.ab], !srcloc !12

bb.ab:                                            ; preds = %vma_end_read.exit.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %i.s, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i.i.i

__mmap_lock_trace_start_locking.exit.i.i.i:       ; preds = %bb.ab, %vma_end_read.exit.i.i
  %i.bf = getelementptr i8, ptr %i.s, i64 464
  call void @down_read(ptr noundef %i.bf) #13
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #11
          to label %try_vma_read_lock.exit.i [label %bb.ac], !srcloc !12

bb.ac:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.s, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %try_vma_read_lock.exit.i

try_vma_read_lock.exit.i:                         ; preds = %bb.ac, %__mmap_lock_trace_start_locking.exit.i.i.i
  store i32 1, ptr %i.ag, align 8
  br label %bb.ah

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.bg = getelementptr i8, ptr %2, i64 64        ; 2 uses
  store ptr %i.ak, ptr %i.bg, align 8
  %i.bh = call fastcc i32 @madvise_vma_behavior(ptr noundef %2) #12, !srcloc !38 ; 4 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 16
  %i.bl = getelementptr i8, ptr %i.bi, i64 128    ; 3 uses
  %i.bm = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bl, i32 -1, ptr elementtype(i32) %i.bl) #11, !srcloc !17 ; 4 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %__vma_refcount_put_return.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %.thread.i.i.i, label %bb.af, !prof !14

.thread.i.i.i:                                    ; preds = %bb.ae
  call void @refcount_warn_saturate(ptr noundef %i.bl, i32 noundef 3) #13
  br label %madvise_walk_vmas.exit

__vma_refcount_put_return.exit.i.i.i:             ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  br label %madvise_walk_vmas.exit

bb.af:                                            ; preds = %bb.ae
  %i.bp = add nuw i32 %i.bm, 2147483647
  %7 = and i32 %i.bp, 1073741824
  %8 = icmp ne i32 %7, 0
  %i.bq = icmp samesign ult i32 %i.bm, 1073741827
  %9 = and i1 %i.bq, %8
  br i1 %9, label %bb.ag, label %madvise_walk_vmas.exit

bb.ag:                                            ; preds = %bb.af
  %i.br = getelementptr i8, ptr %i.bk, i64 512
  %i.bs = call i32 @rcuwait_wake_up(ptr noundef %i.br) #13 ; 0 uses
  br label %madvise_walk_vmas.exit

bb.ah:                                            ; preds = %try_vma_read_lock.exit.i, %bb.q
  %i.bt = load i64, ptr %i.c, align 8
  %i.bu = call ptr @find_vma_prev(ptr noundef %i.s, i64 noundef %i.bt, ptr noundef nonnull %i.a) #13 ; 4 uses
  %cond.i = icmp eq ptr %i.bu, null
  br i1 %cond.i, label %madvise_walk_vmas.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bw = load i64, ptr %i.bu, align 64
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.aj, label %.lr.ph.i19

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.bu, ptr %i.a, align 8
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.aj, %bb.ai
  %i.by = getelementptr i8, ptr %2, i64 56
  %i.bz = getelementptr i8, ptr %2, i64 64        ; 2 uses
  %i.ca = getelementptr i8, ptr %2, i64 72        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.thread77.i, %.lr.ph.i19
  %i.cb = phi i64 [ %i.bv, %.lr.ph.i19 ], [ %i.cu, %.thread77.i ]
  %.05382.i = phi ptr [ %i.bu, %.lr.ph.i19 ], [ %i.ct, %.thread77.i ] ; 3 uses
  %.05481.i = phi i32 [ 0, %.lr.ph.i19 ], [ %.155.i, %.thread77.i ]
  %i.cc = load i64, ptr %.05382.i, align 64       ; 3 uses
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 %i.cc, ptr %i.c, align 8
  %.not62.i = icmp ult i64 %i.cc, %i.af
  br i1 %.not62.i, label %bb.am, label %madvise_walk_vmas.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.155.i = phi i32 [ -12, %bb.al ], [ %.05481.i, %bb.ak ] ; 4 uses
  %i.ce = getelementptr i8, ptr %.05382.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.af)
  store i64 %i.cg, ptr %i.p, align 8
  %i.ch = load ptr, ptr %i.a, align 8
  store ptr %i.ch, ptr %i.by, align 8
  store ptr %.05382.i, ptr %i.bz, align 8
  %i.ci = call fastcc i32 @madvise_vma_behavior(ptr noundef %2) #12, !srcloc !39 ; 2 uses
  %.not63.i = icmp eq i32 %i.ci, 0
  br i1 %.not63.i, label %bb.an, label %madvise_walk_vmas.exit

bb.an:                                            ; preds = %bb.am
  %i.cj = load i8, ptr %i.ca, align 8, !range !19, !noundef !20
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.thread71.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cl = load ptr, ptr %i.bz, align 8            ; 3 uses
  store ptr %i.cl, ptr %i.a, align 8
  %.not64.i = icmp eq ptr %i.cl, null
  %.pre.i = load i64, ptr %i.p, align 8           ; 4 uses
  br i1 %.not64.i, label %.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cm = getelementptr i8, ptr %i.cl, i64 8      ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = icmp ult i64 %.pre.i, %i.cn
  br i1 %i.co, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.cn, ptr %i.p, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cp = phi i64 [ %i.cn, %bb.aq ], [ %.pre.i, %bb.ap ]
  %.not65.i = icmp ult i64 %i.cp, %i.af
  br i1 %.not65.i, label %bb.as, label %madvise_walk_vmas.exit

.thread.i:                                        ; preds = %bb.ao
  %.not65103.i = icmp ult i64 %.pre.i, %i.af
  br i1 %.not65103.i, label %.thread77.i, label %madvise_walk_vmas.exit

.thread71.i:                                      ; preds = %bb.an
  store ptr null, ptr %i.a, align 8
  store i8 0, ptr %i.ca, align 8
  %i.cq = load i64, ptr %i.p, align 8             ; 2 uses
  %.not6574.i = icmp ult i64 %i.cq, %i.af
  br i1 %.not6574.i, label %.thread77.i, label %madvise_walk_vmas.exit

bb.as:                                            ; preds = %bb.ar
  %i.cr = load i64, ptr %i.cm, align 8
  br label %.thread77.i

.thread77.i:                                      ; preds = %bb.as, %.thread71.i, %.thread.i
  %i.cs = phi i64 [ %i.cr, %bb.as ], [ %.pre.i, %.thread.i ], [ %i.cq, %.thread71.i ]
  %i.ct = call ptr @find_vma(ptr noundef %i.s, i64 noundef %i.cs) #13 ; 2 uses
  %i.cu = load i64, ptr %i.p, align 8             ; 2 uses
  store i64 %i.cu, ptr %i.c, align 8
  %.not61.i = icmp eq ptr %i.ct, null
  br i1 %.not61.i, label %madvise_walk_vmas.exit, label %bb.ak

madvise_walk_vmas.exit:                           ; preds = %bb.al, %bb.am, %bb.ar, %.thread.i, %.thread71.i, %.thread77.i, %.thread.i.i.i, %__vma_refcount_put_return.exit.i.i.i, %bb.af, %bb.ag, %bb.ah
  %.0.i20 = phi i32 [ %i.bh, %.thread.i.i.i ], [ %i.bh, %__vma_refcount_put_return.exit.i.i.i ], [ %i.bh, %bb.af ], [ %i.bh, %bb.ag ], [ -12, %bb.ah ], [ %.155.i, %.thread71.i ], [ %i.ci, %bb.am ], [ -12, %.thread77.i ], [ %.155.i, %bb.ar ], [ -12, %bb.al ], [ %.155.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.at

bb.at:                                            ; preds = %madvise_walk_vmas.exit, %madvise_populate.exit
  %.0 = phi i32 [ %.0.i, %madvise_populate.exit ], [ %.0.i20, %madvise_walk_vmas.exit ]
  call void @blk_finish_plug(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @madvise_unlock(ptr nofree noundef captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  switch i32 %i.c, label %bb.g [
    i32 0, label %bb.h
    i32 2, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #11
          to label %__mmap_lock_trace_released.exit.i [label %bb.c], !srcloc !12

bb.c:                                             ; preds = %bb.b
  tail call void @__mmap_lock_do_trace_released(ptr noundef %i.a, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_released.exit.i

__mmap_lock_trace_released.exit.i:                ; preds = %bb.c, %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 464      ; 2 uses
  %i.e = load volatile i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %mmap_write_unlock.exit, !prof !14

bb.d:                                             ; preds = %__mmap_lock_trace_released.exit.i
  tail call void asm sideeffect "151: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 151b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 151) #11, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 87, i32 2305, i64 16) #11, !srcloc !22
  tail call void asm sideeffect "152: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 152b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 152) #11, !srcloc !23
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %__mmap_lock_trace_released.exit.i, %bb.d
  %i.g = getelementptr i8, ptr %i.a, i64 520      ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  tail call void @up_write(ptr noundef %i.d) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #11
          to label %mmap_read_unlock.exit [label %bb.f], !srcloc !12

bb.f:                                             ; preds = %bb.e
  tail call void @__mmap_lock_do_trace_released(ptr noundef %i.a, i1 noundef zeroext false) #13
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %i.a, i64 464
  tail call void @up_read(ptr noundef %i.j) #13
  br label %bb.g

bb.g:                                             ; preds = %mmap_read_unlock.exit, %mmap_write_unlock.exit, %bb.a
  store i32 0, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_madvise(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #14, !srcloc !13
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 1400
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @do_madvise(ptr noundef %i.k, i64 noundef %i.b, i64 noundef %i.d, i32 noundef %i.g) #12
  %i.m = sext i32 %i.l to i64
  ret i64 %i.m
}
end_hunk_0

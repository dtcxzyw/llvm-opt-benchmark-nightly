Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tty_audit?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
begin_hunk_0_@tty_audit_fork:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tty_audit_tiocsti(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @tty_audit_push() #9
  %.not = icmp ne i32 %i.j, 0
  %i.k = load i32, ptr @audit_enabled, align 4
  %.not3 = icmp eq i32 %i.k, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.e, 20
  %i.m = or i32 %i.l, %i.g
  %i.n = add i32 %i.m, %i.i
  call fastcc void @tty_audit_log(ptr noundef @.str, i32 noundef %i.n, ptr noundef nonnull %i.a, i64 noundef 1) #9, !srcloc !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @tty_audit_push() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !10
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 2096
  %i.d = load ptr, ptr %i.c, align 16             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1008
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 1
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 1016
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -3 to ptr)
  br i1 %i.j, label %tty_audit_buf_ref.exit.thread, label %tty_audit_buf_ref.exit, !prof !12

tty_audit_buf_ref.exit.thread:                    ; preds = %bb.b
  tail call void asm sideeffect "498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 498b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 498) #8, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 30, i32 2305, i64 16) #8, !srcloc !14
  tail call void asm sideeffect "499: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 499b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 499) #8, !srcloc !15
  br label %bb.f

tty_audit_buf_ref.exit:                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, null
  %i.k = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.k
  br i1 %spec.select.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %tty_audit_buf_ref.exit
  tail call void @mutex_lock(ptr noundef nonnull %i.i) #10
  %i.l = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tty_audit_buf_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @audit_enabled, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.i, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  tail call fastcc void @tty_audit_log(ptr noundef @.str.1, i32 noundef %i.r, ptr noundef %i.t, i64 noundef %i.m) #9, !srcloc !11
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  store i64 0, ptr %i.l, align 8
  br label %tty_audit_buf_push.exit

tty_audit_buf_push.exit:                          ; preds = %bb.c, %.sink.split.i
  tail call void @mutex_unlock(ptr noundef nonnull %i.i) #10
  br label %bb.f

bb.f:                                             ; preds = %tty_audit_buf_ref.exit.thread, %tty_audit_buf_ref.exit, %tty_audit_buf_push.exit, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %tty_audit_buf_push.exit ], [ 0, %tty_audit_buf_ref.exit ], [ 0, %tty_audit_buf_ref.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tty_audit_log(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !10
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1528
  %.val = load i32, ptr %i.d, align 8
  tail call void @__rcu_read_lock() #10
  %i.e = getelementptr i8, ptr %i.c, i64 1984
  %i.f = load volatile ptr, ptr %i.e, align 64
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.sroa.013.0.copyload = load i32, ptr %i.g, align 8
  tail call void @__rcu_read_unlock() #10
  %i.h = getelementptr i8, ptr %i.c, i64 2200
  %.val30 = load i32, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 2204
  %.val31 = load i32, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !18
  %i.j = getelementptr i8, ptr %i.c, i64 2192
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = tail call ptr @audit_log_start(ptr noundef %i.k, i32 noundef 3264, i32 noundef 1319) #10 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i32 %1, 20
  %i.n = and i32 %1, 1048575
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.l, ptr noundef @.str.4, ptr noundef %0, i32 noundef %.val, i32 noundef %.sroa.013.0.copyload, i32 noundef %.val30, i32 noundef %.val31, i32 noundef %i.m, i32 noundef %i.n) #10
  %i.o = getelementptr i8, ptr %i.c, i64 2008
  %i.p = call i64 @sized_strscpy(ptr noundef nonnull %i.a, ptr noundef %i.o, i64 noundef 16) #10 ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = sub nuw nsw i64 15, %i.p
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @audit_log_untrustedstring(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #10
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %i.l, ptr noundef @.str.5) #10
  call void @audit_log_n_hex(ptr noundef nonnull %i.l, ptr noundef %2, i64 noundef %3) #10
  call void @audit_log_end(ptr noundef nonnull %i.l) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tty_audit_add_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = lshr i32 %i.b, 1
  %.lobit = and i32 %i.c, 1                       ; 2 uses
  %i.d = trunc nuw nsw i32 %.lobit to i8
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #7, !srcloc !10
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 2096     ; 3 uses
  %i.h = load ptr, ptr %i.g, align 16             ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1008
  %i.j = load volatile i32, ptr %i.i, align 8     ; 2 uses
  %i.k = trunc i32 %i.j to i1
  %i.l = icmp ne i64 %2, 0
  %or.cond51.not = and i1 %i.l, %i.k
  br i1 %or.cond51.not, label %bb.b, label %tty_audit_buf_get.exit.thread, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 56
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 60
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %tty_audit_buf_get.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = and i32 %i.j, 2
  %i.v = icmp eq i32 %i.u, 0
  %i.w = and i32 %i.b, 10
  %i.x = icmp eq i32 %i.w, 2
  %or.cond57 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond57, label %tty_audit_buf_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.h, i64 1016
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %magicptr.i = ptrtoint ptr %i.z to i64
  switch i64 %magicptr.i, label %tty_audit_buf_get.exit [
    i64 -3, label %tty_audit_buf_ref.exit.thread.i
    i64 0, label %bb.f
  ], !prof !21

tty_audit_buf_ref.exit.thread.i:                  ; preds = %bb.e
  tail call void asm sideeffect "498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 498b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 498) #8, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 30, i32 2305, i64 16) #8, !srcloc !14
  tail call void asm sideeffect "499: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 499b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 499) #8, !srcloc !15
  br label %tty_audit_buf_get.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.ab = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.aa, i32 noundef 3520, i64 noundef 48) #11 ; 7 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.ad = tail call noalias align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.ac, i32 noundef 3264, i64 noundef 4096) #11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 40     ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %.not17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not17.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @kfree(ptr noundef nonnull %i.ab) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  tail call void @audit_log_lost(ptr noundef @.str.6) #10
  br label %tty_audit_buf_get.exit.thread

bb.j:                                             ; preds = %bb.g
  tail call void @mutex_init_generic(ptr noundef nonnull %i.ab) #10
  %i.af = load ptr, ptr %i.g, align 16
  %i.ag = getelementptr i8, ptr %i.af, i64 1016   ; 2 uses
  %i.ah = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr nonnull %i.ab, ptr null, ptr elementtype(i64) %i.ag) #8, !srcloc !22
  %.not16.i = icmp eq ptr %i.ah, null
  br i1 %.not16.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.ab, i64 32
  %i.aj = load i64, ptr %i.ai, align 8
  %.not.i17.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i17.i, label %tty_audit_buf_free.exit.i, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "500: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 500b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 500) #8, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 58, i32 2305, i64 16) #8, !srcloc !25
  tail call void asm sideeffect "501: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 501b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 501) #8, !srcloc !26
  br label %tty_audit_buf_free.exit.i

tty_audit_buf_free.exit.i:                        ; preds = %bb.l, %bb.k
  %i.ak = load ptr, ptr %i.ae, align 8
  tail call void @kfree(ptr noundef %i.ak) #10
  tail call void @kfree(ptr noundef nonnull %i.ab) #10
  br label %bb.m

bb.m:                                             ; preds = %tty_audit_buf_free.exit.i, %bb.j
  %i.al = load ptr, ptr %i.g, align 16
  %i.am = getelementptr i8, ptr %i.al, i64 1016
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, inttoptr (i64 -3 to ptr)
  br i1 %i.ao, label %bb.n, label %tty_audit_buf_get.exit, !prof !12

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "498: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 498b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 498) #8, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.3, i32 30, i32 2305, i64 16) #8, !srcloc !14
  tail call void asm sideeffect "499: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 499b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 499) #8, !srcloc !15
  br label %tty_audit_buf_get.exit.thread

tty_audit_buf_get.exit:                           ; preds = %bb.e, %tty_audit_buf_ref.exit.thread.i, %bb.m
  %.0.i = phi ptr [ %i.z, %tty_audit_buf_ref.exit.thread.i ], [ %i.an, %bb.m ], [ %i.z, %bb.e ] ; 12 uses
  %.not.i = icmp eq ptr %.0.i, null
  %i.ap = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.ap
  br i1 %spec.select.i, label %tty_audit_buf_get.exit.thread, label %bb.o

bb.o:                                             ; preds = %tty_audit_buf_get.exit
  tail call void @mutex_lock(ptr noundef nonnull %.0.i) #10
  %i.aq = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 44
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = shl i32 %i.as, 20
  %i.au = getelementptr i8, ptr %i.aq, i64 48
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = or i32 %i.at, %i.av
  %i.ax = getelementptr i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.aw, %i.ay                    ; 2 uses
  %i.ba = getelementptr i8, ptr %.0.i, i64 24     ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %.not47 = icmp eq i32 %i.bb, %i.az
  br i1 %.not47, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %.0.i, i64 28
  %i.bd = load i8, ptr %i.bc, align 4, !range !27, !noundef !28
  %i.be = zext nneg i8 %i.bd to i32
  %.not49 = icmp eq i32 %.lobit, %i.be
  br i1 %.not49, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.p
  %.phi.trans.insert = getelementptr i8, ptr %.0.i, i64 32
  %.pre.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = getelementptr i8, ptr %.0.i, i64 32     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %tty_audit_buf_push.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr @audit_enabled, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr i8, ptr %.0.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call fastcc void @tty_audit_log(ptr noundef @.str.1, i32 noundef %i.bb, ptr noundef %i.bl, i64 noundef %i.bg) #9, !srcloc !11
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  store i64 0, ptr %i.bf, align 8
  br label %tty_audit_buf_push.exit

tty_audit_buf_push.exit:                          ; preds = %bb.q, %.sink.split.i
  store i32 %i.az, ptr %i.ba, align 8
  %i.bm = getelementptr i8, ptr %.0.i, i64 28
  store i8 %i.d, ptr %i.bm, align 4
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %tty_audit_buf_push.exit
  %.pre = phi i64 [ %.pre.pre, %._crit_edge ], [ 0, %tty_audit_buf_push.exit ]
  %i.bn = getelementptr i8, ptr %.0.i, i64 32     ; 3 uses
  %i.bo = getelementptr i8, ptr %.0.i, i64 40     ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %i.bp = phi i64 [ %.pre, %bb.t ], [ %i.cc, %bb.x ] ; 2 uses
  %.042 = phi i64 [ %2, %bb.t ], [ %i.bw, %bb.x ] ; 2 uses
  %.041 = phi ptr [ %1, %bb.t ], [ %i.bv, %bb.x ] ; 2 uses
  %i.bq = sub i64 4096, %i.bp
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %.042) ; 4 uses
  %i.br = load ptr, ptr %i.bo, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %.041, i64 %spec.select, i1 false)
  %i.bt = load i64, ptr %i.bn, align 8
  %i.bu = add i64 %i.bt, %spec.select             ; 3 uses
  store i64 %i.bu, ptr %i.bn, align 8
  %i.bv = getelementptr i8, ptr %.041, i64 %spec.select
  %i.bw = sub nuw i64 %.042, %spec.select         ; 2 uses
  %i.bx = icmp eq i64 %i.bu, 4096
  br i1 %i.bx, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = load i32, ptr @audit_enabled, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %tty_audit_buf_push.exit53, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr %i.ba, align 8
  %i.cb = load ptr, ptr %i.bo, align 8
  tail call fastcc void @tty_audit_log(ptr noundef @.str.1, i32 noundef %i.ca, ptr noundef %i.cb, i64 noundef 4096) #9, !srcloc !11
  br label %tty_audit_buf_push.exit53

tty_audit_buf_push.exit53:                        ; preds = %bb.v, %bb.w
  store i64 0, ptr %i.bn, align 8
  br label %bb.x

bb.x:                                             ; preds = %tty_audit_buf_push.exit53, %bb.u
  %i.cc = phi i64 [ 0, %tty_audit_buf_push.exit53 ], [ %i.bu, %bb.u ]
  %.not50 = icmp eq i64 %i.bw, 0
  br i1 %.not50, label %bb.y, label %bb.u, !llvm.loop !19

bb.y:                                             ; preds = %bb.x
  tail call void @mutex_unlock(ptr noundef nonnull %.0.i) #10
  br label %tty_audit_buf_get.exit.thread

tty_audit_buf_get.exit.thread:                    ; preds = %bb.d, %bb.n, %bb.i, %tty_audit_buf_get.exit, %bb.c, %bb.a, %bb.y
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_n_hex(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_lost(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

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
!10 = !{i64 2147966671}
!11 = !{i64 2247}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{i64 2156281459, i64 2156281334}
!14 = !{i64 2156281982, i64 2156283042, i64 2156283075, i64 2156283110, i64 2156283126, i64 2156284053, i64 2156284111, i64 2156284160, i64 2156283970, i64 2156283185, i64 2156283217, i64 2156283300}
!15 = !{i64 2156288523, i64 2156288399}
!16 = !{i64 2156310293}
!17 = !{i64 3290}
!18 = !{!"auto-init"}
!19 = distinct !{!19, !29}
!20 = !{!"branch_weights", i32 2000, i32 2002}
!21 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!22 = !{i64 2156313133, i64 2156313172, i64 2156313193, i64 2156313230, i64 2156313253, i64 2156313262}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{i64 2156297228, i64 2156297103}
!25 = !{i64 2156297751, i64 2156298804, i64 2156298837, i64 2156298872, i64 2156298888, i64 2156299815, i64 2156299873, i64 2156299922, i64 2156299732, i64 2156298947, i64 2156298979, i64 2156299062}
!26 = !{i64 2156300224, i64 2156300100}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!"llvm.loop.mustprogress"}
end_hunk_0

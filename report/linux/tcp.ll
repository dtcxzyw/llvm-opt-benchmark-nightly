Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp?download=true
inline.NumInlined: 912
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tcp_read_sock_noack:bb.a

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcp_read_skb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 18
  %i.b = load volatile i8, ptr %i.a, align 2
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 184        ; 4 uses
  %.not.i = icmp eq ptr %0, null
  %i.f = getelementptr i8, ptr %0, i64 128        ; 4 uses
  br i1 %.not.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.c
  %.022.us = phi i32 [ %i.s, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.h = icmp eq ptr %i.g, %i.d
  %.not31.us = icmp eq ptr %i.g, null
  %.not.us = or i1 %i.h, %.not31.us
  br i1 %.not.us, label %.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.i = load i32, ptr %i.e, align 8
  %i.j = add i32 %i.i, -1
  store volatile i32 %i.j, ptr %i.e, align 8
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store volatile ptr %i.m, ptr %i.n, align 8
  store volatile ptr %i.k, ptr %i.m, align 8
  tail call void asm sideeffect "1420: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1420b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1420) #19, !srcloc !91
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 1768, i32 2307, i64 16) #19, !srcloc !92
  tail call void asm sideeffect "1421: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1421b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1421) #19, !srcloc !93
  %i.o = getelementptr i8, ptr %i.g, i64 52
  %i.p = load i16, ptr %i.o, align 4
  %i.q = tail call i32 %1(ptr noundef null, ptr noundef nonnull %i.g) #20 ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.q, %.022.us                   ; 2 uses
  %i.t = and i16 %i.p, 1
  %.not26.us = icmp eq i16 %i.t, 0
  br i1 %.not26.us, label %.preheader.split.us, label %.thread

.preheader.split:                                 ; preds = %.preheader, %bb.l
  %.022 = phi i32 [ %i.av, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.u = load ptr, ptr %i.d, align 8              ; 11 uses
  %i.v = icmp eq ptr %i.u, %i.d
  %.not31 = icmp eq ptr %i.u, null
  %.not = or i1 %i.v, %.not31
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %.preheader.split
  %i.w = load i32, ptr %i.e, align 8
  %i.x = add i32 %i.w, -1
  store volatile i32 %i.x, ptr %i.e, align 8
  %i.y = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store volatile ptr %i.aa, ptr %i.ab, align 8
  store volatile ptr %i.y, ptr %i.aa, align 8
  %i.ac = load volatile i32, ptr %i.f, align 8    ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ai, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = add i32 %.0.i.i.i.i, 1
  %i.ae = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.ad, ptr elementtype(i32) %i.f, i32 %.0.i.i.i.i) #19, !srcloc !94 ; 2 uses
  %i.af = extractvalue { i8, i32 } %i.ae, 0       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !16

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.ai = extractvalue { i8, i32 } %i.ae, 1       ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !89

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %bb.d
  %.2.i.i.i.i = phi i32 [ 0, %bb.d ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.ak = add i32 %.2.i.i.i.i, 1
  %i.al = or i32 %i.ak, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 0) #20
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not8.i = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not8.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %refcount_inc_not_zero.exit.i
  %i.am = getelementptr i8, ptr %i.u, i64 96      ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.an(ptr noundef nonnull %i.u) #20, !inline_history !90
  br label %skb_set_owner_sk_safe.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.u, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not6.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i, label %skb_set_owner_sk_safe.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "577: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 577b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 577) #19, !srcloc !95
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.18, i32 3396, i32 0, i64 16) #19, !srcloc !96
  unreachable

skb_set_owner_sk_safe.exit:                       ; preds = %bb.g, %bb.h
  store ptr @sock_efree, ptr %i.am, align 8
  %i.aq = getelementptr i8, ptr %i.u, i64 24
  store ptr %0, ptr %i.aq, align 8
  br label %bb.k

bb.j:                                             ; preds = %refcount_inc_not_zero.exit.i
  tail call void asm sideeffect "1420: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1420b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1420) #19, !srcloc !91
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 1768, i32 2307, i64 16) #19, !srcloc !92
  tail call void asm sideeffect "1421: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1421b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1421) #19, !srcloc !93
  br label %bb.k

bb.k:                                             ; preds = %skb_set_owner_sk_safe.exit, %bb.j
  %i.ar = getelementptr i8, ptr %i.u, i64 52
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = tail call i32 %1(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #20 ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.split.us, label %bb.l

.split.us:                                        ; preds = %bb.k, %bb.b
  %.us-phi34 = phi i32 [ %.022.us, %bb.b ], [ %.022, %bb.k ] ; 2 uses
  %.us-phi35 = phi i32 [ %i.q, %bb.b ], [ %i.at, %bb.k ]
  %.not27 = icmp eq i32 %.us-phi34, 0
  %spec.select = select i1 %.not27, i32 %.us-phi35, i32 %.us-phi34
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.av = add i32 %i.at, %.022                    ; 2 uses
  %i.aw = and i16 %i.as, 1
  %.not26 = icmp eq i16 %i.aw, 0
  br i1 %.not26, label %.preheader.split, label %.thread

.thread:                                          ; preds = %.preheader.split, %bb.l, %bb.c, %.preheader.split.us, %.split.us, %bb.a
  %.0 = phi i32 [ -107, %bb.a ], [ %spec.select, %.split.us ], [ %.022.us, %.preheader.split.us ], [ %i.s, %bb.c ], [ %i.av, %bb.l ], [ %.022, %.preheader.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_read_done(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 1472       ; 4 uses
  %i.c = load i32, ptr %i.b, align 64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr i8, ptr %0, i64 18
  %i.e = load volatile i8, ptr %i.d, align 2
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.g = getelementptr i8, ptr %0, i64 184        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tcp_eat_recv_skb.exit44
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.p, %tcp_eat_recv_skb.exit44 ] ; 3 uses
  %.03750 = phi i64 [ %1, %.lr.ph ], [ %i.r, %tcp_eat_recv_skb.exit44 ] ; 3 uses
  %i.h = call ptr @tcp_recv_skb(ptr noundef %0, i32 noundef %.051, ptr noundef nonnull %i.a) #21 ; 15 uses
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = sub i32 %i.j, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @llvm.umin.i64(i64 %.03750, i64 %i.m) ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32                ; 2 uses
  %i.p = add i32 %.051, %i.o                      ; 4 uses
  %sext = shl nuw i64 %i.n, 32
  %i.q = ashr exact i64 %sext, 32
  %i.r = sub nuw i64 %.03750, %i.q                ; 4 uses
  %i.s = add i32 %i.k, %i.o
  %i.t = icmp ugt i32 %i.j, %i.s
  br i1 %i.t, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.h, i64 52
  %i.v = load i16, ptr %i.u, align 4
  %i.w = and i16 %i.v, 1
  %.not42 = icmp eq i16 %i.w, 0
  %i.x = load i32, ptr %i.g, align 8
  %i.y = add i32 %i.x, -1
  store volatile i32 %i.y, ptr %i.g, align 8
  %i.z = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store volatile ptr %i.ab, ptr %i.ac, align 8
  store volatile ptr %i.z, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.h, i64 96      ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, @sock_rfree          ; 2 uses
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.af, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  tail call void @sock_rfree(ptr noundef nonnull %i.h) #20
  store ptr null, ptr %i.ad, align 8
  %i.ag = getelementptr i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ag, align 8
  tail call void @skb_attempt_defer_free(ptr noundef nonnull %i.h) #20
  br label %tcp_eat_recv_skb.exit

bb.g:                                             ; preds = %bb.e
  tail call void @__kfree_skb(ptr noundef nonnull %i.h) #20
  br label %tcp_eat_recv_skb.exit

tcp_eat_recv_skb.exit:                            ; preds = %bb.f, %bb.g
  %i.ah = add i32 %i.p, 1
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  br i1 %i.af, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @sock_rfree(ptr noundef nonnull %i.h) #20
  store ptr null, ptr %i.ad, align 8
  %i.ai = getelementptr i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ai, align 8
  tail call void @skb_attempt_defer_free(ptr noundef nonnull %i.h) #20
  br label %tcp_eat_recv_skb.exit44

bb.j:                                             ; preds = %bb.h
  tail call void @__kfree_skb(ptr noundef nonnull %i.h) #20
  br label %tcp_eat_recv_skb.exit44

tcp_eat_recv_skb.exit44:                          ; preds = %bb.j, %bb.i
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %tcp_eat_recv_skb.exit44, %bb.b, %bb.c, %.preheader, %tcp_eat_recv_skb.exit
  %.138 = phi i64 [ %i.r, %tcp_eat_recv_skb.exit ], [ 0, %.preheader ], [ %.03750, %bb.b ], [ 0, %tcp_eat_recv_skb.exit44 ], [ %i.r, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %i.ah, %tcp_eat_recv_skb.exit ], [ %i.c, %.preheader ], [ %.051, %bb.b ], [ %i.p, %tcp_eat_recv_skb.exit44 ], [ %i.p, %bb.c ]
  store volatile i32 %.2, ptr %i.b, align 64
  tail call void @tcp_rcv_space_adjust(ptr noundef %0) #20
  %.not43 = icmp eq i64 %.138, %1
  br i1 %.not43, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.aj = sub i64 %1, %.138
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = icmp eq ptr %i.am, %i.al
  %.not20.i = icmp eq ptr %i.am, null
  %.not.i = or i1 %i.an, %.not20.i
  br i1 %.not.i, label %tcp_cleanup_rbuf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.b, align 64
  %i.ap = getelementptr i8, ptr %i.am, i64 44     ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sub i32 %i.ao, %i.aq
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.m, label %tcp_cleanup_rbuf.exit, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %0, i64 1704
  %i.au = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1610, i32 2321, i64 16) #19, !srcloc !43
  %i.av = load i32, ptr %i.b, align 64
  %i.aw = load i32, ptr %i.ap, align 4
  %i.ax = load i32, ptr %i.at, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax) #20
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  br label %tcp_cleanup_rbuf.exit

tcp_cleanup_rbuf.exit:                            ; preds = %bb.k, %bb.l, %bb.m
  tail call void @__tcp_cleanup_rbuf(ptr noundef %0, i32 noundef %i.ak) #21
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %tcp_cleanup_rbuf.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_rcv_space_adjust(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i32 @tcp_peek_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 18
  %i.d = load volatile i8, ptr %i.c, align 2
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = and i32 %i.f, 12
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %sock_flag.exit.i, label %tcp_inq.exit

sock_flag.exit.i:                                 ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4
  %.not23.i = icmp eq i64 %i.j, 0
  br i1 %.not23.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %sock_flag.exit.i
  %i.k = getelementptr i8, ptr %i.b, i64 1494
  %i.l = load i16, ptr %i.k, align 2
  %.not18.i = icmp eq i16 %i.l, 0
  br i1 %.not18.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.b, i64 2256
  %i.n = load i32, ptr %i.m, align 16             ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 1472
  %i.p = load i32, ptr %i.o, align 64
  %i.q = sub i32 %i.n, %i.p                       ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 1704
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sub i32 %i.n, %i.t
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %tcp_inq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %sock_flag.exit.i
  %i.w = getelementptr i8, ptr %i.b, i64 1704
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 1472
  %i.z = load i32, ptr %i.y, align 64             ; 2 uses
  %.not19.i = icmp eq i32 %i.x, %i.z
  br i1 %.not19.i, label %tcp_inq.exit, label %sock_flag.exit22.i

sock_flag.exit22.i:                               ; preds = %bb.e
  %i.aa = sub i32 %i.x, %i.z
  %i.ab = load volatile i64, ptr %i.h, align 32
  %.in.i21.in.i = shl i64 %i.ab, 62
  %sext.i = ashr i64 %.in.i21.in.i, 63
  %i.ac = trunc nsw i64 %sext.i to i32
  %spec.select.i = add i32 %i.aa, %i.ac
  br label %tcp_inq.exit

tcp_inq.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %sock_flag.exit22.i
  %.0.i = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ %spec.select.i, %sock_flag.exit22.i ], [ %i.q, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @tcp_set_rcvlowat(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 243        ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 244
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val, i64 1012
  %i.h = load volatile i32, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.033.in = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  %.033 = ashr i32 %.033.in, 1
  %i.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %.033) ; 4 uses
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rcu_segcblist?download=true
inline.NumInlined: 54
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@rcu_segcblist_extract_pend_cbs:bb.a
  %.not.i.i.not = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not, label %rcu_segcblist_pend_cbs.exit.thread, label %rcu_segcblist_pend_cbs.exit.thread.loopexit

rcu_segcblist_pend_cbs.exit.thread.loopexit:      ; preds = %rcu_segcblist_pend_cbs.exit
  %i.g = getelementptr i8, ptr %1, i64 16         ; 7 uses
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.d, align 8
  store volatile ptr null, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.p = load volatile i64, ptr %i.o, align 8
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %i.g, align 8
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr i8, ptr %0, i64 16
  store volatile ptr %i.s, ptr %i.t, align 8
  store volatile i64 0, ptr %i.o, align 8
  %i.u = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.v = load volatile i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.g, align 8
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.g, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr i8, ptr %0, i64 24
  store volatile ptr %i.y, ptr %i.z, align 8
  store volatile i64 0, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.g, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = getelementptr i8, ptr %0, i64 32
  store volatile ptr %i.ae, ptr %i.af, align 8
  store volatile i64 0, ptr %i.aa, align 8
  br label %rcu_segcblist_pend_cbs.exit.thread

rcu_segcblist_pend_cbs.exit.thread:               ; preds = %rcu_segcblist_pend_cbs.exit.thread.loopexit, %bb.a, %rcu_segcblist_pend_cbs.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rcu_segcblist_insert_count(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !10
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, %i.b
  store volatile i64 %i.e, ptr %i.c, align 8
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !11
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none)
define dso_local void @rcu_segcblist_insert_done_cbs(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, %i.c
  store volatile i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %1, align 8
  store volatile ptr %i.j, ptr %0, align 8
  %i.k = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %0, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.h, align 8              ; 2 uses
  store volatile ptr %i.n, ptr %i.k, align 8
  %i.o = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %0, %i.p
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store volatile ptr %i.n, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %0, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.h, align 8              ; 2 uses
  store volatile ptr %i.u, ptr %i.r, align 8
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %0, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store volatile ptr %i.u, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store ptr null, ptr %1, align 8
  store ptr %1, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @rcu_segcblist_insert_pend_cbs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, %i.c
  store volatile i64 %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  store volatile ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  store volatile ptr %i.k, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rcu_segcblist_advance(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load volatile i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "481: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 481b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 481) #9, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 473, i32 2307, i64 16) #9, !srcloc !21
  tail call void asm sideeffect "482: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 482b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 482) #9, !srcloc !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load volatile ptr, ptr %i.d, align 8
  %i.f = load volatile ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit, label %.preheader44

.preheader44:                                     ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %1, %i.i
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader44
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store volatile ptr %i.m, ptr %i.d, align 8
  %i.n = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.o = load volatile i64, ptr %i.n, align 8     ; 2 uses
  %.not.i40 = icmp eq i64 %i.o, 0
  br i1 %.not.i40, label %rcu_segcblist_move_seglen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.g, align 8
  %i.q = add i64 %i.p, %i.o
  store volatile i64 %i.q, ptr %i.g, align 8
  store volatile i64 0, ptr %i.n, align 8
  br label %rcu_segcblist_move_seglen.exit

rcu_segcblist_move_seglen.exit:                   ; preds = %bb.d, %bb.e
  %i.r = getelementptr i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %1, %i.s
  %i.u = icmp slt i64 %i.t, 0                     ; 3 uses
  br i1 %i.u, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %rcu_segcblist_move_seglen.exit
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  store volatile ptr %i.w, ptr %i.d, align 8
  %i.x = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.y = load volatile i64, ptr %i.x, align 8     ; 2 uses
  %.not.i40.1 = icmp eq i64 %i.y, 0
  br i1 %.not.i40.1, label %.lr.ph48.critedge.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.g, align 8
  %i.aa = add i64 %i.z, %i.y
  store volatile i64 %i.aa, ptr %i.g, align 8
  store volatile i64 0, ptr %i.x, align 8
  br label %.lr.ph48.critedge.critedge

.lr.ph48.critedge.critedge:                       ; preds = %bb.f, %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 16
  store volatile ptr %i.w, ptr %i.ab, align 8
  br i1 %i.u, label %.preheader, label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.critedge.critedge
  %i.ac = getelementptr i8, ptr %0, i64 24
  store volatile ptr %i.w, ptr %i.ac, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %rcu_segcblist_move_seglen.exit
  %i.ad = getelementptr i8, ptr %0, i64 16
  store volatile ptr %i.m, ptr %i.ad, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph48
  br i1 %i.u, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph48.critedge.critedge, %._crit_edge
  %2 = getelementptr i8, ptr %0, i64 16           ; 2 uses
  %3 = load ptr, ptr %2, align 8
  %i.ae = getelementptr i8, ptr %0, i64 32
  %4 = load ptr, ptr %i.ae, align 8
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  store volatile ptr %i.ag, ptr %2, align 8
  %6 = getelementptr i8, ptr %0, i64 96           ; 2 uses
  %i.ah = load volatile i64, ptr %6, align 8      ; 2 uses
  %.not.i41 = icmp eq i64 %i.ah, 0
  br i1 %.not.i41, label %rcu_segcblist_move_seglen.exit42, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %i.ah
  store volatile i64 %i.ak, ptr %i.ai, align 8
  store volatile i64 0, ptr %6, align 8
  br label %rcu_segcblist_move_seglen.exit42

rcu_segcblist_move_seglen.exit42:                 ; preds = %bb.h, %bb.i
  %7 = getelementptr i8, ptr %0, i64 56
  %i.al = load i64, ptr %7, align 8
  %i.am = getelementptr i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader44, %._crit_edge, %.preheader, %rcu_segcblist_move_seglen.exit42, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @rcu_segcblist_accelerate(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load volatile i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "486: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 486b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 486) #9, !srcloc !23
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 530, i32 2307, i64 16) #9, !srcloc !24
  tail call void asm sideeffect "487: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 487b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 487) #9, !srcloc !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %i.f = load volatile ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit, label %.preheader34

.preheader34:                                     ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader34
  %i.m = getelementptr i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %i.n, %1
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader34, %bb.d
  %i.q = icmp eq ptr %i.e, %i.j
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 %i.s, %1
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi i1 [ false, %bb.f ], [ true, %bb.g ]
  %.029.lcssa = phi i64 [ 1, %bb.f ], [ 0, %bb.g ] ; 5 uses
  %i.w = getelementptr [8 x i8], ptr %i.d, i64 %.029.lcssa
  %i.x = load volatile ptr, ptr %i.w, align 8
  %i.y = load volatile ptr, ptr %i.x, align 8
  %.not.i32 = icmp eq ptr %i.y, null
  br i1 %.not.i32, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load volatile ptr, ptr %i.z, align 8
  %i.ab = load volatile ptr, ptr %i.aa, align 8   ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %.029.lcssa
  %i.ae = getelementptr i8, ptr %i.ad, i64 8      ; 4 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %.029.lcssa
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %i.ah = load volatile i64, ptr %i.ag, align 8   ; 2 uses
  %.not.i33 = icmp eq i64 %i.ah, 0
  br i1 %.not.i33, label %rcu_segcblist_move_seglen.exit, label %bb.i

.lr.ph38:                                         ; preds = %bb.j, %bb.k, %rcu_segcblist_move_seglen.exit
  %i.ai = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %indvars.iv41.peel = add nuw nsw i64 %.029.lcssa, 1 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv41.peel
  store volatile ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv41.peel
  store i64 %1, ptr %i.al, align 8
  br i1 %i.v, label %.lr.ph38.peel.newph, label %.loopexit

.lr.ph38.peel.newph:                              ; preds = %.lr.ph38
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr i8, ptr %0, i64 24
  %i.ao = getelementptr i8, ptr %0, i64 56
  store volatile ptr %i.am, ptr %i.an, align 8
  store i64 %1, ptr %i.ao, align 8
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.ap = load i64, ptr %i.ae, align 8
  %i.aq = add i64 %i.ap, %i.ah
  store volatile i64 %i.aq, ptr %i.ae, align 8
  store volatile i64 0, ptr %i.ag, align 8
  br label %rcu_segcblist_move_seglen.exit

rcu_segcblist_move_seglen.exit:                   ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %.029.lcssa, 3 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.lr.ph38, label %bb.j

bb.j:                                             ; preds = %rcu_segcblist_move_seglen.exit
  %i.ar = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next ; 2 uses
  %i.as = load volatile i64, ptr %i.ar, align 8   ; 2 uses
  %.not.i33.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i33.1, label %.lr.ph38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.ae, align 8
  %i.au = add i64 %i.at, %i.as
  store volatile i64 %i.au, ptr %i.ae, align 8
  store volatile i64 0, ptr %i.ar, align 8
  br label %.lr.ph38

.loopexit:                                        ; preds = %.lr.ph38, %.lr.ph38.peel.newph, %.thread, %bb.h, %bb.c
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.c ], [ false, %.thread ], [ true, %.lr.ph38.peel.newph ], [ true, %.lr.ph38 ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @rcu_segcblist_merge(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.rcu_cblist, align 8         ; 9 uses
  %3 = alloca %struct.rcu_cblist, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @lockdep_assert_cpus_held() #10
  store ptr null, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 0, ptr %i.b, align 8
  store ptr null, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 112        ; 4 uses
  %i.f = load volatile i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %rcu_segcblist_ready_cbs.exit.i, label %rcu_segcblist_extract_done_cbs.exit

rcu_segcblist_ready_cbs.exit.i:                   ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.i = load volatile ptr, ptr %i.h, align 8     ; 3 uses
  %.not.i = icmp eq ptr %1, %i.i
  br i1 %.not.i, label %rcu_segcblist_extract_done_cbs.exit, label %bb.b

bb.b:                                             ; preds = %rcu_segcblist_ready_cbs.exit.i
  %i.j = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.k = load volatile i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.b, align 8
  %i.l = load ptr, ptr %1, align 8
  store ptr %i.l, ptr %2, align 8
  %i.m = load ptr, ptr %i.i, align 8
  store volatile ptr %i.m, ptr %1, align 8
  store volatile ptr null, ptr %i.i, align 8
  %i.n = load ptr, ptr %i.h, align 8              ; 4 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store volatile ptr %1, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %i.n
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store volatile ptr %1, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store volatile ptr %1, ptr %i.u, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store volatile ptr %1, ptr %i.h, align 8
  store volatile i64 0, ptr %i.j, align 8
  br label %rcu_segcblist_extract_done_cbs.exit
end_hunk_0

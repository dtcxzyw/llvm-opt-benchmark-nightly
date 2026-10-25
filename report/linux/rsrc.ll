Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rsrc?download=true
inline.NumInlined: 216
inline.NumDeleted: 92
begin_hunk_0_@io_coalesce_buffer:bb.a
  %i.m = and i64 %i.k, 1
  %i.n = add nsw i64 %i.m, -1
  %i.o = or i64 %i.n, %i.k
  %i.p = and i64 %i.o, %i.l                       ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load volatile i64, ptr %i.r, align 8     ; 2 uses
  %i.t = load i32, ptr %2, align 4
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.b) ; 5 uses
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge.peel
  %i.w = and i64 %i.s, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = or i64 %i.x, %i.s
  %i.z = and i64 %i.y, %i.p
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = add i32 %i.u, -1
  %i.ac = zext i32 %i.ab to i64
  tail call void @unpin_user_folio(ptr noundef %i.aa, i64 noundef %i.ac) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.peel
  store ptr %i.q, ptr %i.g, align 8
  %exitcond.peel.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.ad = sub nuw i32 %i.b, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.05466 = phi i32 [ %i.ad, %.peel.next ], [ %i.bc, %bb.g ] ; 2 uses
  %.05664 = phi i32 [ %i.u, %.peel.next ], [ %i.bb, %bb.g ] ; 2 uses
  %i.ae = zext i32 %.05664 to i64
  %i.af = getelementptr [8 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load volatile i64, ptr %i.ah, align 8   ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = and i64 %i.ai, 1
  %i.al = add nsw i64 %i.ak, -1
  %i.am = or i64 %i.al, %i.ai
  %i.an = and i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load volatile i64, ptr %i.ap, align 8   ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %i.as = add nsw i64 %i.ar, -1
  %i.at = or i64 %i.as, %i.aq
  %i.au = and i64 %i.at, %i.an
  %i.av = inttoptr i64 %i.au to ptr
  %.not63 = icmp eq ptr %i.ag, %i.ao
  br i1 %.not63, label %.critedge, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "818: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 818b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 818) #15, !srcloc !99
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 788, i32 2307, i64 16) #15, !srcloc !100
  tail call void asm sideeffect "819: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 819b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 819) #15, !srcloc !101
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.aw = load i32, ptr %i.h, align 4
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %.05466) ; 4 uses
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.az = add i32 %i.ax, -1
  %i.ba = zext i32 %i.az to i64
  tail call void @unpin_user_folio(ptr noundef %i.av, i64 noundef %i.ba) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.bb = add i32 %i.ax, %.05664                  ; 2 uses
  %i.bc = sub nuw i32 %.05466, %i.ax
  %i.bd = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.ao, ptr %i.bd, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.g, %bb.c, %.preheader
  %.056.lcssa = phi i32 [ 0, %.preheader ], [ %i.u, %bb.c ], [ %i.bb, %bb.g ]
  %i.be = load i32, ptr %1, align 4
  %.not60 = icmp eq i32 %.056.lcssa, %i.be
  br i1 %.not60, label %bb.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "823: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 823b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 823) #15, !srcloc !102
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 800, i32 2307, i64 16) #15, !srcloc !103
  tail call void asm sideeffect "824: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 824b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 824) #15, !srcloc !104
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  tail call void @kvfree(ptr noundef %i.a) #16
  store ptr %i.g, ptr %0, align 8
  store i32 %i.d, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret i1 %.not
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @io_release_ubuf(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load volatile i64, ptr %i.f, align 8     ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = and i64 %i.g, 1
  %i.j = add nsw i64 %i.i, -1
  %i.k = or i64 %i.j, %i.g
  %i.l = and i64 %i.k, %i.h
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @unpin_user_folio(ptr noundef %i.m, i64 noundef 1) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unpin_user_folio(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @hpage_acct_ref(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 912        ; 5 uses
  %i.c = tail call ptr @xa_load(ptr noundef %i.b, i64 noundef %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #14, !srcloc !12
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 2048
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.c, label %xa_reserve.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__SCT__might_resched() #16 ; 0 uses
  br label %xa_reserve.exit

xa_reserve.exit:                                  ; preds = %bb.b, %bb.c
  tail call void @_raw_spin_lock(ptr noundef %i.b) #16
  %i.j = tail call ptr @__xa_cmpxchg(ptr noundef %i.b, i64 noundef %i.a, ptr noundef null, ptr noundef nonnull inttoptr (i64 1030 to ptr), i32 noundef 4197568) #16 ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.b) #16
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 3
  %i.m = icmp ne i64 %i.l, 2
  %i.n = icmp ult ptr %i.j, inttoptr (i64 -16378 to ptr)
  %spec.select.i.i.i.not = or i1 %i.n, %i.m
  %i.o = lshr i64 %i.k, 2
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %.not1720 = icmp eq i32 %i.p, 0
  %.not17 = or i1 %spec.select.i.i.i.not, %.not1720
  br i1 %.not17, label %.thread, label %bb.f

.thread:                                          ; preds = %xa_reserve.exit
  store i8 1, ptr %2, align 1
  br label %xa_mk_value.exit

bb.d:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %xa_mk_value.exit, !prof !106

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "206: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 206b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 206) #15, !srcloc !29
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.4, i32 60, i32 2305, i64 16) #15, !srcloc !30
  tail call void asm sideeffect "207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 207b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 207) #15, !srcloc !31
  br label %xa_mk_value.exit

xa_mk_value.exit:                                 ; preds = %.thread, %bb.d, %bb.e
  %.019 = phi i64 [ 1, %.thread ], [ %i.s, %bb.d ], [ -9223372036854775808, %bb.e ]
  %i.u = shl i64 %.019, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call ptr @xa_store(ptr noundef %i.b, i64 noundef %i.a, ptr noundef nonnull %i.w, i32 noundef 4197568) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %xa_reserve.exit, %xa_mk_value.exit
  %.014 = phi i32 [ 0, %xa_mk_value.exit ], [ %i.p, %xa_reserve.exit ]
  ret i32 %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @io_buffer_unaccount_hpages(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 64
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 912        ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.019 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = load volatile i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 64
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %PageCompound.exit, label %PageCompound.exit.thread

PageCompound.exit:                                ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load volatile i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1
  %.not14 = icmp eq i64 %i.k, 0
  br i1 %.not14, label %bb.g, label %PageCompound.exit.thread

PageCompound.exit.thread:                         ; preds = %bb.b, %PageCompound.exit
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %i.m = load volatile i64, ptr %i.l, align 8     ; 2 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = and i64 %i.m, 1
  %i.p = add nsw i64 %i.o, -1
  %i.q = or i64 %i.p, %i.m
  %i.r = and i64 %i.q, %i.n                       ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = icmp eq ptr %.019, %i.s
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %PageCompound.exit.thread
  %i.u = tail call ptr @xa_load(ptr noundef %i.d, i64 noundef %i.r) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "807: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 807b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 807) #15, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 67, i32 2307, i64 16) #15, !srcloc !26
  tail call void asm sideeffect "808: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 808b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 808) #15, !srcloc !27
  br label %hpage_acct_unref.exit

.critedge.i:                                      ; preds = %bb.c
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = lshr i64 %i.v, 1
  switch i64 %i.w, label %xa_mk_value.exit.i [
    i64 1, label %bb.e
    i64 0, label %bb.f
  ], !prof !28

bb.e:                                             ; preds = %.critedge.i
  %i.x = tail call ptr @xa_erase(ptr noundef %i.d, i64 noundef %i.r) #16 ; 0 uses
  br label %hpage_acct_unref.exit

bb.f:                                             ; preds = %.critedge.i
  tail call void asm sideeffect "206: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 206b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 206) #15, !srcloc !29
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.4, i32 60, i32 2305, i64 16) #15, !srcloc !30
  tail call void asm sideeffect "207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 207b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 207) #15, !srcloc !31
  br label %xa_mk_value.exit.i

xa_mk_value.exit.i:                               ; preds = %bb.f, %.critedge.i
  %i.y = or i64 %i.v, 1
  %i.z = add i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = tail call ptr @xa_store(ptr noundef %i.d, i64 noundef %i.r, ptr noundef nonnull %i.aa, i32 noundef 4197568) #16 ; 0 uses
  br label %hpage_acct_unref.exit

hpage_acct_unref.exit:                            ; preds = %bb.d, %bb.e, %xa_mk_value.exit.i
  %i.ac = tail call i32 @__SCT__cond_resched() #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %PageCompound.exit.thread, %PageCompound.exit, %hpage_acct_unref.exit
  %.1 = phi ptr [ %.019, %PageCompound.exit ], [ %i.s, %hpage_acct_unref.exit ], [ %.019, %PageCompound.exit.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !107

.loopexit:                                        ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i33, i1 } @llvm.sadd.with.overflow.i33(i33, i33) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #15, !srcloc !35 ; 3 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a
  %.not10.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not10.i.i, label %__refcount_inc.exit, label %.sink.split.i.i, !prof !14

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i) #16
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %bb.b, %.sink.split.i.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @io_buffer_acct_cloned_hpages(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 28
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 960
  %i.f = load ptr, ptr %i.e, align 64
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %.loopexit, label %.preheader59

.preheader59:                                     ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.i = getelementptr i8, ptr %1, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i32 [ %i.h, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %.03364 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.f ] ; 4 uses
  %.03463 = phi ptr [ null, %.lr.ph ], [ %.135.ph, %bb.f ] ; 3 uses
  %i.k = sext i32 %.03364 to i64
  %i.l = getelementptr [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.n = load volatile i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 64
  %.not55 = icmp eq i64 %i.o, 0
  br i1 %.not55, label %PageCompound.exit47, label %PageCompound.exit47.thread

PageCompound.exit47:                              ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1
  %.not42 = icmp eq i64 %i.r, 0
  br i1 %.not42, label %bb.f, label %PageCompound.exit47.thread

PageCompound.exit47.thread:                       ; preds = %bb.c, %PageCompound.exit47
  %i.s = getelementptr i8, ptr %i.m, i64 8
  %i.t = load volatile i64, ptr %i.s, align 8     ; 2 uses
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = and i64 %i.t, 1
  %i.w = add nsw i64 %i.v, -1
  %i.x = or i64 %i.w, %i.t
end_hunk_0

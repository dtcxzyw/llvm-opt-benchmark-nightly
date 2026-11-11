Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fs-writeback?download=true
inline.NumInlined: 577
inline.NumDeleted: 187
begin_hunk_0_@writeback_sb_inodes:bb.a
  br label %requeue_inode.exit

bb.ao:                                            ; preds = %bb.am
  call fastcc void @inode_cgwb_move_to_attached(ptr noundef %i.an, ptr noundef %i.cz) #16, !srcloc !179
  br label %requeue_inode.exit

requeue_inode.exit:                               ; preds = %bb.w, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.al, %bb.an, %bb.ao
  %i.ee = load volatile i32, ptr %i.as, align 8
  %.not.i89 = icmp eq i32 %i.ee, 0
  br i1 %.not.i89, label %bb.ap, label %inode_sync_complete.exit, !prof !17

bb.ap:                                            ; preds = %requeue_inode.exit
  call void asm sideeffect "1001: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1001b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1001) #13, !srcloc !47
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, ptr @.str.9, i32 1493, i32 0, i64 16) #13, !srcloc !48
  unreachable

inode_sync_complete.exit:                         ; preds = %requeue_inode.exit
  %i.ef = load i32, ptr %i.at, align 8
  %i.eg = and i32 %i.ef, -3
  store volatile i32 %i.eg, ptr %i.at, align 8
  call void @inode_lru_list_add(ptr noundef %i.an) #12
  %i.eh = getelementptr i8, ptr %i.am, i64 -71
  call void @wake_up_var(ptr noundef %i.eh) #12
  call void @_raw_spin_unlock(ptr noundef %i.as) #12
  %.not79 = icmp eq ptr %i.cz, %1
  br i1 %.not79, label %bb.ar, label %bb.aq, !prof !16

bb.aq:                                            ; preds = %inode_sync_complete.exit
  call void @_raw_spin_unlock(ptr noundef %i.da) #12
  call void @_raw_spin_lock(ptr noundef %i.ag) #12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %inode_sync_complete.exit
  %.not80 = icmp eq i64 %spec.select, 0
  br i1 %.not80, label %trace_writeback_sb_inodes_requeue.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = load volatile i64, ptr @jiffies, align 64
  %i.ej = sub i64 %i.ak, %i.ei
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %trace_writeback_sb_inodes_requeue.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.el = load i64, ptr %2, align 8
  %i.em = icmp slt i64 %i.el, 1
  br i1 %i.em, label %trace_writeback_sb_inodes_requeue.exit.thread, label %trace_writeback_sb_inodes_requeue.exit

trace_writeback_sb_inodes_requeue.exit:           ; preds = %bb.ar, %bb.at, %bb.l, %arch_test_bit.exit.i.i, %bb.i, %inode_sleep_on_writeback.exit, %bb.g, %bb.e
  %.2 = phi i64 [ %.070100, %bb.e ], [ %.070100, %bb.i ], [ %.070100, %bb.g ], [ 0, %bb.ar ], [ %.070100, %inode_sleep_on_writeback.exit ], [ %.070100, %arch_test_bit.exit.i.i ], [ %.070100, %bb.l ], [ %spec.select, %bb.at ] ; 2 uses
  %i.en = load volatile ptr, ptr %i.ac, align 8
  %.not93 = icmp eq ptr %i.en, %i.ac
  br i1 %.not93, label %trace_writeback_sb_inodes_requeue.exit.thread, label %bb.c

trace_writeback_sb_inodes_requeue.exit.thread:    ; preds = %trace_writeback_sb_inodes_requeue.exit, %bb.at, %bb.d, %bb.as, %bb.b
  %.3 = phi i64 [ 0, %bb.b ], [ %spec.select, %bb.at ], [ %spec.select, %bb.as ], [ %.070100, %bb.d ], [ %.2, %trace_writeback_sb_inodes_requeue.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @__writeback_inodes_wb(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @jiffies, align 64
  %i.b = add i64 %i.a, 100
  %i.c = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.d = load volatile ptr, ptr %i.c, align 8
  %.not20 = icmp eq ptr %i.d, %i.c
  br i1 %.not20, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01521 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -176
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = tail call zeroext i1 @super_trylock_shared(ptr noundef %i.h) #12
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 -216
  %i.k = getelementptr i8, ptr %i.f, i64 -88      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.k) #12
  tail call fastcc void @redirty_tail_locked(ptr noundef %i.j, ptr noundef %0) #16, !srcloc !51
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #12
  br label %bb.g, !llvm.loop !180

bb.d:                                             ; preds = %bb.b
  %i.l = tail call fastcc i64 @writeback_sb_inodes(ptr noundef %i.h, ptr noundef %0, ptr noundef %1) #16, !srcloc !181
  %i.m = add i64 %i.l, %.01521                    ; 4 uses
  %i.n = getelementptr i8, ptr %i.h, i64 112
  tail call void @up_read(ptr noundef %i.n) #12
  %.not17 = icmp eq i64 %i.m, 0
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load volatile i64, ptr @jiffies, align 64
  %i.p = sub i64 %i.b, %i.o
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %1, align 8
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.1 = phi i64 [ %.01521, %bb.c ], [ %i.m, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.t = load volatile ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.t, %i.c
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.g, %bb.e, %bb.f, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %.1, %bb.g ]
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @move_expired_inodes(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.list_head, align 8          ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.026.ph = phi ptr [ %i.t, %bb.e ], [ null, %bb.a ] ; 2 uses
  %.025.ph = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.0.ph = phi i32 [ %i.o, %bb.e ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ %.0.ph, %.outer ] ; 2 uses
  %i.c = load volatile ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.c, %0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %.val = load i64, ptr %i.e, align 8
  %i.f = sub i64 %2, %.val
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 -88      ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.h) #12
  %i.i = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8
  store volatile ptr %i.k, ptr %i.j, align 8
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.d, ptr %i.n, align 8
  store ptr %i.m, ptr %i.d, align 8
  store ptr %3, ptr %i.i, align 8
  store volatile ptr %i.d, ptr %3, align 8
  %i.o = add i32 %.0, 1                           ; 2 uses
  %i.p = getelementptr i8, ptr %i.d, i64 -72      ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = or i32 %i.q, 131072
  store volatile i32 %i.r, ptr %i.p, align 8
  call void @_raw_spin_unlock(ptr noundef %i.h) #12
  %i.s = getelementptr i8, ptr %i.d, i64 -176
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = load ptr, ptr @blockdev_superblock, align 8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.b, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %bb.d
  %.not29 = icmp eq ptr %.026.ph, null
  %.not30 = icmp eq ptr %.026.ph, %i.t
  %i.w = or i1 %.not29, %.not30
  %.1 = select i1 %i.w, i32 %.025.ph, i32 1
  br label %.outer, !llvm.loop !182

bb.f:                                             ; preds = %bb.c, %bb.b
  %.not31 = icmp eq i32 %.025.ph, 0
  %i.x = load volatile ptr, ptr %3, align 8       ; 3 uses
  %.not.i = icmp eq ptr %i.x, %3                  ; 2 uses
  br i1 %.not31, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  br i1 %.not.i, label %list_splice.exit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, %3
  br i1 %i.z, label %.loopexit.us, label %.lr.ph44.split

.loopexit.us:                                     ; preds = %.lr.ph44, %.loopexit.us
  %i.aa = load volatile ptr, ptr %3, align 8
  %.not34.us = icmp eq ptr %i.aa, %3
  br i1 %.not34.us, label %list_splice.exit, label %.loopexit.us, !llvm.loop !183

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %list_splice.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %1, align 8               ; 2 uses
  %.val4.i = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  store ptr %1, ptr %i.ac, align 8
  store ptr %i.x, ptr %1, align 8
  store ptr %i.ab, ptr %.val4.i, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  store ptr %.val4.i, ptr %i.ad, align 8
  br label %list_splice.exit

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph44.split
  %4 = phi ptr [ %.pre, %.loopexit.loopexit ], [ %5, %.lr.ph44.split ]
  %i.ae = load volatile ptr, ptr %3, align 8
  %.not34 = icmp eq ptr %i.ae, %3
  br i1 %.not34, label %list_splice.exit, label %.lr.ph44.split, !llvm.loop !184

.lr.ph44.split:                                   ; preds = %.lr.ph44, %.loopexit
  %5 = phi ptr [ %4, %.loopexit ], [ %i.y, %.lr.ph44 ] ; 4 uses
  %i.af = getelementptr i8, ptr %5, i64 -176
  %i.ag = load ptr, ptr %i.af, align 8
  %.not3540 = icmp eq ptr %5, %3
  br i1 %.not3540, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph44.split, %bb.j
  %.02841 = phi ptr [ %.02742, %bb.j ], [ %5, %.lr.ph44.split ] ; 6 uses
  %.02742.in = getelementptr i8, ptr %.02841, i64 8 ; 2 uses
  %.02742 = load ptr, ptr %.02742.in, align 8     ; 4 uses
  %i.ah = getelementptr i8, ptr %.02841, i64 -176
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %.02841, align 8          ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %.02742, ptr %i.al, align 8
  store volatile ptr %i.ak, ptr %.02742, align 8
  %i.am = load ptr, ptr %1, align 8               ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store ptr %.02841, ptr %i.an, align 8
  store ptr %i.am, ptr %.02841, align 8
  store ptr %1, ptr %.02742.in, align 8
  store volatile ptr %.02841, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.not35 = icmp eq ptr %.02742, %3
  br i1 %.not35, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !185

list_splice.exit:                                 ; preds = %.loopexit, %.loopexit.us, %.preheader, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @redirty_tail_locked(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load volatile i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1000: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1000b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1000) #13, !srcloc !187
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, ptr @.str.9, i32 1453, i32 0, i64 16) #13, !srcloc !188
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, -131073
  store volatile i32 %i.e, ptr %i.c, align 8
  %i.f = and i32 %i.d, 256
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.i, label %wb_has_dirty_io.exit.i

wb_has_dirty_io.exit.i:                           ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 216        ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store volatile ptr %i.j, ptr %i.i, align 8
  store volatile ptr %i.g, ptr %i.g, align 8
  store volatile ptr %i.g, ptr %i.h, align 8
  %i.l = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.m = load volatile i64, ptr %i.l, align 8
  %.in.in.i.i = and i64 %i.m, 4
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %wb_io_lists_depopulated.exit, label %bb.d

bb.d:                                             ; preds = %wb_has_dirty_io.exit.i
  %i.n = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.o = load volatile ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i, label %bb.e, label %wb_io_lists_depopulated.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.q = load volatile ptr, ptr %i.p, align 8
  %.not11.i = icmp eq ptr %i.q, %i.p
  br i1 %.not11.i, label %bb.f, label %wb_io_lists_depopulated.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.s = load volatile ptr, ptr %i.r, align 8
  %.not12.i = icmp eq ptr %i.s, %i.r
  br i1 %.not12.i, label %bb.g, label %wb_io_lists_depopulated.exit

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.l, i32 -5, ptr elementtype(i8) %i.l) #13, !srcloc !29
  %i.t = getelementptr i8, ptr %1, i64 328
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 88       ; 2 uses
  %i.x = sub i64 0, %i.u
  %i.y = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, i64 %i.x, ptr elementtype(i64) %i.w) #13, !srcloc !30
  %i.z = sub i64 %i.y, %i.u
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %wb_io_lists_depopulated.exit, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #13, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, ptr @.str.9, i32 100, i32 2307, i64 16) #13, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #13, !srcloc !33
  br label %wb_io_lists_depopulated.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ac = load volatile ptr, ptr %i.ab, align 8   ; 2 uses
  %.not15 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not15, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ac, i64 -32
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load volatile i64, ptr @jiffies, align 64
  store i64 %i.aj, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ak = tail call fastcc zeroext i1 @inode_io_list_move_locked(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab) #16, !srcloc !189 ; 0 uses
  br label %wb_io_lists_depopulated.exit

wb_io_lists_depopulated.exit:                     ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %wb_has_dirty_io.exit.i, %bb.l
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__writeback_single_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 144        ; 7 uses
  %i.e = load volatile i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1005: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1005b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1005) #13, !srcloc !191
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, ptr @.str.9, i32 1783, i32 2305, i64 16) #13, !srcloc !192
  tail call void asm sideeffect "1006: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1006b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1006) #13, !srcloc !193
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_writeback_single_inode_start, i64 8), i1 false) #13
          to label %trace_writeback_single_inode_start.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.c
  %i.g = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #13, !srcloc !194
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.h) #13, !srcloc !24 ; 2 uses
  %i.j = icmp ult i8 %i.i, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc nuw i8 %i.i to i1
  br i1 %i.k, label %bb.d, label %trace_writeback_single_inode_start.exit

bb.d:                                             ; preds = %arch_test_bit.exit.i.i
  %i.l = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, ptr elementtype(i64) %i.l) #13, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_writeback_single_inode_start, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @__SCT__tp_func_writeback_single_inode_start(ptr noundef %i.o, ptr noundef %0, ptr noundef %1, i64 noundef %i.c) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !27
  %i.q = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #13, !srcloc !28
  br label %trace_writeback_single_inode_start.exit

trace_writeback_single_inode_start.exit:          ; preds = %bb.c, %arch_test_bit.exit.i.i, %bb.f
  %i.r = tail call i32 @do_writepages(ptr noundef %i.b, ptr noundef %1) #12 ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %trace_writeback_single_inode_start.exit
  %i.v = getelementptr i8, ptr %1, i64 36
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 16
  %.not43 = icmp eq i8 %i.x, 0
  br i1 %.not43, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 @filemap_fdatawait_range(ptr noundef %i.b, i64 noundef 0, i64 noundef 9223372036854775807) #12
  %i.z = icmp eq i32 %i.r, 0
  %spec.select = select i1 %i.z, i32 %i.y, i32 %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %trace_writeback_single_inode_start.exit
  %.1 = phi i32 [ %i.r, %bb.g ], [ %spec.select, %bb.h ], [ %i.r, %trace_writeback_single_inode_start.exit ] ; 3 uses
  %i.aa = load volatile i32, ptr %i.d, align 8
  %i.ab = and i32 %i.aa, 4096
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.s, align 8
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %0, i64 192
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load i32, ptr @dirtytime_expire_interval, align 4
  %i.ah = mul i32 %i.ag, 1000
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load volatile i64, ptr @jiffies, align 64
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = add i64 %i.ak, %i.ai
end_hunk_0

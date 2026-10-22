Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-core?download=true
inline.NumInlined: 426
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blk_queue_flag_clear:arch_clear_bit.exit
arch_clear_bit.exit:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = zext i32 %0 to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 range(i64 0, 4294967296) %i.b) #20, !srcloc !82
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local ptr @blk_op_str(i32 noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %0, 36
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 17179170128
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr [8 x i8], ptr @blk_op_name, i64 %i.b
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.c ], [ @.str, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 37) i32 @str_to_blk_op(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.a = shl nuw nsw i64 1, %indvars.iv
  %i.b = and i64 %i.a, 17179170128
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr [8 x i8], ptr @blk_op_name, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @strcmp(ptr noundef %i.d, ptr noundef %0) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.b, !llvm.loop !83

.split.loop.exit11:                               ; preds = %bb.c
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.d, %.split.loop.exit11
  %.06 = phi i32 [ %i.f, %.split.loop.exit11 ], [ 36, %bb.d ]
  ret i32 %.06
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local zeroext range(i8 0, 20) i8 @errno_to_blk_status(i32 noundef %0) #2 align 16 prefalign(16) {
bb.a:
  switch i32 %0, label %.loopexit.fold.split20 [
    i32 0, label %.loopexit
    i32 -95, label %.loopexit.fold.split
    i32 -110, label %.loopexit.fold.split12
    i32 -28, label %.loopexit.fold.split13
    i32 -67, label %.loopexit.fold.split14
    i32 -121, label %.loopexit.fold.split15
    i32 -52, label %.loopexit.fold.split16
    i32 -61, label %.loopexit.fold.split17
    i32 -84, label %.loopexit.fold.split18
    i32 -12, label %.loopexit.fold.split19
    i32 -22, label %.loopexit.fold.split28
    i32 -78, label %.loopexit.fold.split21
    i32 -11, label %.loopexit.fold.split22
    i32 -16, label %.loopexit.fold.split23
    i32 -109, label %.loopexit.fold.split24
    i32 -75, label %.loopexit.fold.split25
    i32 -19, label %.loopexit.fold.split26
    i32 -62, label %.loopexit.fold.split27
  ]

.loopexit.fold.split:                             ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split12:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split13:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split14:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split15:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split16:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split17:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split18:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split19:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split20:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split21:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split22:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split23:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split24:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split25:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split26:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split27:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split28:                           ; preds = %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.fold.split28, %.loopexit.fold.split27, %.loopexit.fold.split26, %.loopexit.fold.split25, %.loopexit.fold.split24, %.loopexit.fold.split23, %.loopexit.fold.split22, %.loopexit.fold.split21, %.loopexit.fold.split20, %.loopexit.fold.split19, %.loopexit.fold.split18, %.loopexit.fold.split17, %.loopexit.fold.split16, %.loopexit.fold.split15, %.loopexit.fold.split14, %.loopexit.fold.split13, %.loopexit.fold.split12, %.loopexit.fold.split
  %.06 = phi i8 [ 19, %.loopexit.fold.split28 ], [ 0, %bb.a ], [ 17, %.loopexit.fold.split27 ], [ 1, %.loopexit.fold.split ], [ 2, %.loopexit.fold.split12 ], [ 3, %.loopexit.fold.split13 ], [ 4, %.loopexit.fold.split14 ], [ 5, %.loopexit.fold.split15 ], [ 6, %.loopexit.fold.split16 ], [ 7, %.loopexit.fold.split17 ], [ 8, %.loopexit.fold.split18 ], [ 9, %.loopexit.fold.split19 ], [ 10, %.loopexit.fold.split20 ], [ 11, %.loopexit.fold.split21 ], [ 12, %.loopexit.fold.split22 ], [ 13, %.loopexit.fold.split23 ], [ 14, %.loopexit.fold.split24 ], [ 15, %.loopexit.fold.split25 ], [ 16, %.loopexit.fold.split26 ]
  ret i8 %.06
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @blk_status_to_errno(i8 noundef zeroext %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i8 %0, 19
  br i1 %i.a, label %bb.b, label %.critedge, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1043: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1043b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1043) #20, !srcloc !23
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 204, i32 2307, i64 16) #20, !srcloc !24
  tail call void asm sideeffect "1044: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1044b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1044) #20, !srcloc !25
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %i.c = getelementptr [24 x i8], ptr @blk_errors, i64 %i.b
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.d, %.critedge ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @blk_status_to_str(i8 noundef zeroext %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i8 %0, 19
  br i1 %i.a, label %bb.b, label %.critedge, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1046: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1046b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1046) #20, !srcloc !84
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 214, i32 2307, i64 16) #20, !srcloc !85
  tail call void asm sideeffect "1047: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1047b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1047) #20, !srcloc !86
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %i.c = getelementptr [24 x i8], ptr @blk_errors, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.0 = phi ptr [ %i.e, %.critedge ], [ @.str.3, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @blk_status_to_tag(i8 noundef zeroext %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i8 %0, 19
  br i1 %i.a, label %.critedge.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = zext nneg i8 %0 to i64
  %2 = getelementptr [24 x i8], ptr @blk_errors, i64 %1
  %3 = getelementptr i8, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge.a, label %bb.c, !prof !18

.critedge.a:                                      ; preds = %bb.a, %bb.b
  tail call void asm sideeffect "1048: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1048b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1048) #20, !srcloc !87
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 223, i32 2307, i64 16) #20, !srcloc !88
  tail call void asm sideeffect "1049: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1049b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1049) #20, !srcloc !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.a
  %.0 = phi ptr [ @.str.3, %.critedge.a ], [ %4, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext range(i8 0, 20) i8 @tag_to_blk_status(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.107, ptr noundef %0) #19
  %.not9 = icmp eq i32 %i.a, 0
  br i1 %.not9, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.108, ptr noundef %0) #19
  %.not9.1 = icmp eq i32 %i.b, 0
  br i1 %.not9.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.110, ptr noundef %0) #19
  %.not9.2 = icmp eq i32 %i.c, 0
  br i1 %.not9.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.112, ptr noundef %0) #19
  %.not9.3 = icmp eq i32 %i.d, 0
  br i1 %.not9.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.114, ptr noundef %0) #19
  %.not9.4 = icmp eq i32 %i.e, 0
  br i1 %.not9.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.116, ptr noundef %0) #19
  %.not9.5 = icmp eq i32 %i.f, 0
  br i1 %.not9.5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.118, ptr noundef %0) #19
  %.not9.6 = icmp eq i32 %i.g, 0
  br i1 %.not9.6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.120, ptr noundef %0) #19
  %.not9.7 = icmp eq i32 %i.h, 0
  br i1 %.not9.7, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.122, ptr noundef %0) #19
  %.not9.8 = icmp eq i32 %i.i, 0
  br i1 %.not9.8, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.124, ptr noundef %0) #19
  %.not9.9 = icmp eq i32 %i.j, 0
  br i1 %.not9.9, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.126, ptr noundef %0) #19
  %.not9.10 = icmp eq i32 %i.k, 0
  br i1 %.not9.10, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.128, ptr noundef %0) #19
  %.not9.11 = icmp eq i32 %i.l, 0
  br i1 %.not9.11, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.130, ptr noundef %0) #19
  %.not9.12 = icmp eq i32 %i.m, 0
  br i1 %.not9.12, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.132, ptr noundef %0) #19
  %.not9.13 = icmp eq i32 %i.n, 0
  br i1 %.not9.13, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.134, ptr noundef %0) #19
  %.not9.14 = icmp eq i32 %i.o, 0
  br i1 %.not9.14, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.136, ptr noundef %0) #19
  %.not9.15 = icmp eq i32 %i.p, 0
  br i1 %.not9.15, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.138, ptr noundef %0) #19
  %.not9.16 = icmp eq i32 %i.q, 0
  br i1 %.not9.16, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.140, ptr noundef %0) #19
  %.not9.17 = icmp eq i32 %i.r, 0
  br i1 %.not9.17, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.142, ptr noundef %0) #19
  %.not9.19 = icmp eq i32 %i.s, 0
  %spec.select = select i1 %.not9.19, i8 19, i8 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.06 = phi i8 [ %spec.select, %bb.s ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ], [ 16, %bb.q ], [ 17, %bb.r ]
  ret i8 %.06
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_sync_queue(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376
  %i.b = tail call i32 @timer_delete_sync(ptr noundef %i.a) #19 ; 0 uses
  %i.c = getelementptr i8, ptr %0, i64 416
  %i.d = tail call zeroext i1 @cancel_work_sync(ptr noundef %i.c) #19 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @timer_delete_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_set_pm_only(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 316        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, ptr elementtype(i32) %i.a) #20, !srcloc !90
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_clear_pm_only(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 316        ; 2 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #20, !srcloc !91
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b, !prof !18

.thread:                                          ; preds = %bb.a
  tail call void asm sideeffect "1052: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1052b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1052) #20, !srcloc !92
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 285, i32 2307, i64 16) #20, !srcloc !93
  tail call void asm sideeffect "1053: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1053b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1053) #20, !srcloc !94
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 792
  %i.g = tail call i32 @__wake_up(ptr noundef %i.f, i32 noundef 3, i32 noundef 0, ptr noundef null) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @blk_put_queue(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #20, !srcloc !27 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #19
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !95
  %i.e = getelementptr i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @blk_free_queue_stats(ptr noundef %i.f) #19
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %blk_free_queue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @blk_mq_release(ptr noundef %0) #19
  br label %blk_free_queue.exit

blk_free_queue.exit:                              ; preds = %bb.d, %bb.e
  %i.h = getelementptr i8, ptr %0, i64 360
  %i.i = load i32, ptr %i.h, align 8
  tail call void @ida_free(ptr noundef @blk_queue_ida, i32 noundef %i.i) #19
  %i.j = getelementptr i8, ptr %0, i64 776
  tail call void @call_rcu(ptr noundef %i.j, ptr noundef @blk_free_queue_rcu) #19
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %blk_free_queue.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @blk_queue_start_drain(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #22, !srcloc !26
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call zeroext i1 @__blk_freeze_queue_start(ptr noundef %0, ptr noundef %i.b) #19
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @blk_mq_wake_waiters(ptr noundef %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 792
  %i.f = tail call i32 @__wake_up(ptr noundef %i.e, i32 noundef 3, i32 noundef 0, ptr noundef null) #19 ; 0 uses
  ret i1 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__blk_freeze_queue_start(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @blk_mq_wake_waiters(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @blk_queue_enter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = and i32 %1, 4
  %.not79 = icmp eq i32 %i.a, 0                   ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 316        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 312        ; 4 uses
  %i.f = and i32 %1, 1
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr i8, ptr %0, i64 772        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 304        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 792        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %blk_pm_resume_queue.exit.thread, %bb.a
  call void @__rcu_read_lock() #19
  %i.k = load volatile i64, ptr %i.b, align 8     ; 3 uses
  %i.l = and i64 %i.k, 3
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %__ref_is_percpu.exit.i.i, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.k to ptr                 ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.m, ptr elementtype(i64) %i.m) #20, !srcloc !28
  br label %percpu_ref_tryget_live_rcu.exit.i

__ref_is_percpu.exit.i.i:                         ; preds = %bb.b
  %i.n = and i64 %i.k, 2
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %__ref_is_percpu.exit.i.i
  %i.o = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.p = load volatile i64, ptr %i.o, align 8     ; 2 uses
  %.not16.i.i = icmp eq i64 %i.p, 0
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i, !prof !29

.lr.ph.i.i:                                       ; preds = %bb.d, %arch_atomic64_try_cmpxchg.exit.i.i
  %.0913.i.i = phi i64 [ %i.v, %arch_atomic64_try_cmpxchg.exit.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = add i64 %.0913.i.i, 1
  %i.r = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, i64 range(i64 2, 1) %i.q, ptr elementtype(i64) %i.o, i64 %.0913.i.i) #20, !srcloc !30 ; 2 uses
  %i.s = extractvalue { i8, i64 } %i.r, 0         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %percpu_ref_tryget_live_rcu.exit.i, label %arch_atomic64_try_cmpxchg.exit.i.i, !prof !17

arch_atomic64_try_cmpxchg.exit.i.i:               ; preds = %.lr.ph.i.i
  %i.v = extractvalue { i8, i64 } %i.r, 1         ; 2 uses
  %.not17.i.i = icmp eq i64 %i.v, 0
  br i1 %.not17.i.i, label %.loopexit, label %.lr.ph.i.i, !prof !31

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %.lr.ph.i.i, %bb.c
  %i.w = load volatile i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %blk_try_enter_queue.exit, label %bb.e

bb.e:                                             ; preds = %percpu_ref_tryget_live_rcu.exit.i
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i32, ptr %i.e, align 8
  %i.x = icmp eq i32 %.val.i, 2
end_hunk_0

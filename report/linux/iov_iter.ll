inline.NumInlined: 487
inline.NumDeleted: 98
begin_hunk_0_@iovec_from_user:bb.a

__access_ok.exit.i:                               ; preds = %bb.d
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.i = shl nuw nsw i64 %1, 4
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.l = icmp ule i64 %i.j, %i.k
  %i.m = icmp uge i64 %i.j, %i.h
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %user_access_begin.exit.i, label %copy_iovec_from_user.exit.thread, !prof !16

user_access_begin.exit.i:                         ; preds = %__access_ok.exit.i
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !144
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %user_access_begin.exit.i
  %.023.i = phi ptr [ %0, %user_access_begin.exit.i ], [ %i.u, %bb.i ] ; 3 uses
  %.022.i = phi i64 [ %1, %user_access_begin.exit.i ], [ %i.w, %bb.i ]
  %.018.i = phi ptr [ %.027, %user_access_begin.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.o = getelementptr i8, ptr %.023.i, i64 8
  %i.p = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.o) #14
          to label %bb.g [label %.thread.i], !srcloc !145 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %.023.i) #14
          to label %bb.h [label %.thread.i], !srcloc !146

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.thread.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.s = inttoptr i64 %i.q to ptr
  store ptr %i.s, ptr %.018.i, align 8
  %i.t = getelementptr i8, ptr %.018.i, i64 8
  store i64 %i.p, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.023.i, i64 16
  %i.v = getelementptr i8, ptr %.018.i, i64 16
  %i.w = add nsw i64 %.022.i, -1                  ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.thread.i, label %bb.f, !llvm.loop !147

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.2.i = phi i32 [ 0, %bb.i ], [ -22, %bb.h ], [ -14, %bb.f ], [ -14, %bb.g ]
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  br label %copy_iovec_from_user.exit

copy_iovec_from_user.exit:                        ; preds = %.thread.i, %bb.e
  %.029 = phi i32 [ %i.g, %bb.e ], [ %.2.i, %.thread.i ] ; 2 uses
  %.not31 = icmp eq i32 %.029, 0
  br i1 %.not31, label %bb.l, label %copy_iovec_from_user.exit.thread

copy_iovec_from_user.exit.thread:                 ; preds = %__access_ok.exit.i, %copy_iovec_from_user.exit
  %.02937 = phi i32 [ %.029, %copy_iovec_from_user.exit ], [ -14, %__access_ok.exit.i ]
  %.not32 = icmp eq ptr %.027, %3
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %copy_iovec_from_user.exit.thread
  tail call void @kfree(ptr noundef %.027) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %copy_iovec_from_user.exit.thread
  %i.x = sext i32 %.02937 to i64
  %i.y = inttoptr i64 %i.x to ptr
  br label %bb.l

bb.l:                                             ; preds = %_kmalloc_noprof.exit, %bb.b, %copy_iovec_from_user.exit, %bb.a, %bb.k
  %.0 = phi ptr [ inttoptr (i64 -22 to ptr), %bb.b ], [ %.027, %copy_iovec_from_user.exit ], [ %i.y, %bb.k ], [ %3, %bb.a ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @copy_compat_iovec_from_user(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 1025) %2) unnamed_addr #0 align 16 prefalign(16) {
__access_ok.exit:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = shl nuw nsw i32 %2, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %i.e = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.f = icmp ule i64 %i.d, %i.e
  %i.g = icmp uge i64 %i.d, %i.a
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %user_access_begin.exit, label %user_access_begin.exit.thread, !prof !16

user_access_begin.exit:                           ; preds = %__access_ok.exit
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !144
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.a

bb.a:                                             ; preds = %user_access_begin.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %user_access_begin.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.j) #14
          to label %bb.b [label %.thread], !srcloc !148 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %i.k to i64
  %i.m = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.i) #14
          to label %bb.c [label %.thread], !srcloc !149

bb.c:                                             ; preds = %bb.b
  %.not = icmp sgt i32 %i.k, -1
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store i64 %i.l, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.a, !llvm.loop !150

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ -14, %bb.a ], [ -14, %bb.b ]
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  br label %user_access_begin.exit.thread

user_access_begin.exit.thread:                    ; preds = %__access_ok.exit, %.thread
  %.0 = phi i32 [ %.2, %.thread ], [ -14, %__access_ok.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8                ; 6 uses
  store ptr null, ptr %4, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15 ; 2 uses
  %.not33.i.i = icmp ult i64 %i.d, %i.c           ; 2 uses
  br i1 %6, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.not33.i.i, label %copy_compat_iovec_from_user.exit.thread.i, label %user_access_begin.exit.i.i, !prof !11

user_access_begin.exit.i.i:                       ; preds = %bb.c
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !144
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.e) #14
          to label %bb.d [label %.thread.i.i], !srcloc !148 ; 2 uses

bb.d:                                             ; preds = %user_access_begin.exit.i.i
  %i.g = zext nneg i32 %i.f to i64
  %i.h = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %1) #14
          to label %bb.e [label %.thread.i.i], !srcloc !149

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.b, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.k, align 8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.d, %user_access_begin.exit.i.i
  %.2.i.i = phi i32 [ 0, %bb.f ], [ -22, %bb.e ], [ -14, %user_access_begin.exit.i.i ], [ -14, %bb.d ]
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  br label %copy_compat_iovec_from_user.exit.i

bb.g:                                             ; preds = %bb.b
  br i1 %.not33.i.i, label %copy_compat_iovec_from_user.exit.thread.i, label %user_access_begin.exit.i19.i, !prof !11

user_access_begin.exit.i19.i:                     ; preds = %bb.g
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !144
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.l) #14
          to label %bb.h [label %.thread.i20.i], !srcloc !145 ; 2 uses

bb.h:                                             ; preds = %user_access_begin.exit.i19.i
  %i.n = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %1) #14
          to label %bb.i [label %.thread.i20.i], !srcloc !146

bb.i:                                             ; preds = %bb.h
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.thread.i20.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.p = inttoptr i64 %i.n to ptr
  store ptr %i.p, ptr %i.b, align 8
  %i.q = getelementptr i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %i.q, align 8
  br label %.thread.i20.i, !llvm.loop !147

.thread.i20.i:                                    ; preds = %bb.j, %bb.i, %bb.h, %user_access_begin.exit.i19.i
  %.2.i21.i = phi i32 [ 0, %bb.j ], [ -22, %bb.i ], [ -14, %user_access_begin.exit.i19.i ], [ -14, %bb.h ]
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  br label %copy_compat_iovec_from_user.exit.i

copy_compat_iovec_from_user.exit.i:               ; preds = %.thread.i20.i, %.thread.i.i
  %.0.in.i = phi i32 [ %.2.i21.i, %.thread.i20.i ], [ %.2.i.i, %.thread.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.in.i, 0
  br i1 %.not.i, label %__access_ok.exit.i.i, label %copy_compat_iovec_from_user.exit.thread.i, !prof !151

copy_compat_iovec_from_user.exit.thread.i:        ; preds = %copy_compat_iovec_from_user.exit.i, %bb.g, %bb.c
  %.0.in28.i = phi i32 [ %.0.in.i, %copy_compat_iovec_from_user.exit.i ], [ -14, %bb.c ], [ -14, %bb.g ]
  %.0.i = sext i32 %.0.in28.i to i64
  br label %__import_iovec_ubuf.exit

__access_ok.exit.i.i:                             ; preds = %copy_compat_iovec_from_user.exit.i
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2147479552) ; 3 uses
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = add i64 %spec.store.select.i.i, %i.u     ; 2 uses
  %i.w = icmp ule i64 %i.v, %i.d
  %i.x = icmp uge i64 %i.v, %i.u
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.k, label %__import_iovec_ubuf.exit, !prof !16

bb.k:                                             ; preds = %__access_ok.exit.i.i
  %.not.i.i.i = icmp ult i32 %0, 2
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "519: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 519b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 519) #14, !srcloc !152
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.5, i32 375, i32 2305, i64 16) #14, !srcloc !153
  tail call void asm sideeffect "520: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 520b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 520) #14, !srcloc !154
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = icmp ne i32 %0, 0
  %i.aa = zext i1 %i.z to i8
  store i8 0, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.aa, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 13, i1 false)
  store ptr %i.r, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %spec.store.select.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8
  br label %__import_iovec_ubuf.exit

bb.n:                                             ; preds = %bb.a
  %i.ab = zext i32 %2 to i64                      ; 3 uses
  %i.ac = zext i32 %3 to i64
  %i.ad = load ptr, ptr %4, align 8
  %i.ae = tail call ptr @iovec_from_user(ptr noundef %1, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef %i.ad, i1 noundef zeroext %6) #16 ; 8 uses
  %i.af = icmp ugt ptr %i.ae, inttoptr (i64 -4096 to ptr)
  br i1 %i.af, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %.not69 = icmp eq i32 %2, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  br label %.lr.ph

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %4, align 8
  %i.ah = ptrtoint ptr %i.ae to i64
  br label %__import_iovec_ubuf.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.04768 = phi i64 [ %i.av, %bb.u ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04867 = phi i64 [ %i.au, %bb.u ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.ae, i64 %.04768 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = add i64 %i.ak, %i.am                    ; 2 uses
  %i.ao = icmp ule i64 %i.an, %i.ag
  %i.ap = icmp uge i64 %i.an, %i.am
  %i.aq = and i1 %i.ap, %i.ao
  br i1 %i.aq, label %bb.r, label %bb.p, !prof !16

bb.p:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %i.ae, %i.ar
  br i1 %.not, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @kfree(ptr noundef %i.ae) #13
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph
  %i.as = sub i64 2147479552, %.04867             ; 3 uses
  %i.at = icmp ugt i64 %i.ak, %i.as
  br i1 %i.at, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  store i64 %i.as, ptr %i.aj, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.p, %bb.q
  store ptr null, ptr %4, align 8
  br label %__import_iovec_ubuf.exit

bb.u:                                             ; preds = %bb.r, %bb.s
  %.0 = phi i64 [ %i.as, %bb.s ], [ %i.ak, %bb.r ]
  %i.au = add i64 %.0, %.04867                    ; 2 uses
  %i.av = add nuw nsw i64 %.04768, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %.048.lcssa = phi i64 [ 0, %.preheader ], [ %i.au, %bb.u ] ; 2 uses
  %.not.i58 = icmp ult i32 %0, 2
  br i1 %.not.i58, label %iov_iter_init.exit, label %bb.v, !prof !16

bb.v:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "596: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 596b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 596) #14, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 178, i32 2305, i64 16) #14, !srcloc !18
  tail call void asm sideeffect "597: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 597b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 597) #14, !srcloc !19
  br label %iov_iter_init.exit

iov_iter_init.exit:                               ; preds = %._crit_edge, %bb.v
  %i.aw = icmp ne i32 %0, 0
  %i.ax = zext i1 %i.aw to i8
  store i8 1, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ax, ptr %.sroa.3.0..sroa_idx.i, align 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.4.0..sroa_idx.i, i8 0, i64 13, i1 false)
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.048.lcssa, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ab, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.ay = load ptr, ptr %4, align 8
  %i.az = icmp eq ptr %i.ae, %i.ay
  %. = select i1 %i.az, ptr null, ptr %i.ae
  store ptr %., ptr %4, align 8
  br label %__import_iovec_ubuf.exit

__import_iovec_ubuf.exit:                         ; preds = %bb.t, %bb.m, %__access_ok.exit.i.i, %copy_compat_iovec_from_user.exit.thread.i, %iov_iter_init.exit, %bb.o
  %.2 = phi i64 [ %.048.lcssa, %iov_iter_init.exit ], [ %i.ah, %bb.o ], [ -14, %bb.t ], [ %.0.i, %copy_compat_iovec_from_user.exit.thread.i ], [ %spec.store.select.i.i, %bb.m ], [ -14, %__access_ok.exit.i.i ]
  ret i64 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #15, !srcloc !80
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
  %.not.i.i = icmp ne i32 %i.e, 0
  %i.f = tail call i64 @__import_iovec(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %.not.i.i) #16
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @import_ubuf(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 align 16 prefalign(16) {
__access_ok.exit:
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 2147479552) ; 2 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = add i64 %spec.store.select, %i.a         ; 2 uses
  %i.c = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.d = icmp ule i64 %i.b, %i.c
  %i.e = icmp uge i64 %i.b, %i.a
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %bb.a, label %bb.c, !prof !16

bb.a:                                             ; preds = %__access_ok.exit
  %.not.i = icmp ult i32 %0, 2
  br i1 %.not.i, label %iov_iter_ubuf.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "519: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 519b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 519) #14, !srcloc !152
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.5, i32 375, i32 2305, i64 16) #14, !srcloc !153
  tail call void asm sideeffect "520: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 520b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 520) #14, !srcloc !154
  br label %iov_iter_ubuf.exit

iov_iter_ubuf.exit:                               ; preds = %bb.a, %bb.b
  %i.g = icmp ne i32 %0, 0
  %i.h = zext i1 %i.g to i8
  store i8 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 2
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tlb?download=true
inline.NumInlined: 179
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@flush_tlb_func:bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tlb_flush, i64 8), i1 false) #10
          to label %trace_tlb_flush.exit [label %cpu_online.exit.i.i93], !srcloc !24

cpu_online.exit.i.i93:                            ; preds = %bb.y
  %i.bv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !29
  %i.bw = zext i32 %i.bv to i64
  %i.bx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bw) #10, !srcloc !26 ; 2 uses
  %i.by = icmp ult i8 %i.bx, 2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = trunc nuw i8 %i.bx to i1
  br i1 %i.bz, label %bb.z, label %trace_tlb_flush.exit

bb.z:                                             ; preds = %cpu_online.exit.i.i93
  %i.ca = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ca, ptr elementtype(i64) %i.ca) #10, !srcloc !30
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !31
  %i.cb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tlb_flush, i64 56), align 8 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i94, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 @__SCT__tp_func_tlb_flush(ptr noundef %i.cd, i32 noundef range(i32 0, 6) %i.bu, i64 noundef %.1) #11 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !32
  %i.cf = getelementptr i8, ptr %i.ca, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cf, ptr elementtype(i64) %i.cf) #10, !srcloc !33
  br label %trace_tlb_flush.exit

trace_tlb_flush.exit:                             ; preds = %bb.ab, %cpu_online.exit.i.i93, %bb.y, %bb.f, %cpu_online.exit.i.i, %arch_clear_bit.exit, %bb.m, %mm_needs_global_asid.exit.thread, %bb.g, %bb.l
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_flush_tlb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, ptrtoint (ptr @cpu_tlbstate to i64)
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !132
  %i.g = load i64, ptr %i.b, align 8
  %i.h = add i64 %i.g, ptrtoint (ptr @cpu_tlbstate_shared to i64)
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i8, ptr %i.i, align 1, !range !38, !noundef !39
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.l, null
  %i.m = icmp eq ptr %i.f, inttoptr (i64 1 to ptr)
  %i.n = icmp eq ptr %i.f, %i.l
  %i.o = or i1 %i.m, %i.n
  %or.cond13 = select i1 %.not, i1 true, i1 %i.o
  br i1 %or.cond13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 38
  %i.q = load i8, ptr %i.p, align 2
  %.not12 = icmp ne i8 %i.q, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not12, %bb.c ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_multi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{di},{si},{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 40), i64 %i.b, i64 %i.c, i64 %i.a) #10, !srcloc !43
  %i.e = extractvalue { i64, i64, i64, i64, i64 } %i.d, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.e)
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_mm_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !137
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !138
  %i.b = getelementptr i8, ptr %0, i64 1432       ; 2 uses
  %i.c = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.b, i64 1, ptr elementtype(i64) %i.b) #10, !srcloc !139
  %i.d = add i64 %i.c, 1
  %i.e = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !45
  %i.f = sub i64 %2, %1
  %i.g = zext nneg i32 %3 to i64
  %i.h = lshr i64 %i.f, %i.g
  %i.i = load i64, ptr @tlb_single_page_flush_ceiling, align 8
  %i.j = icmp ugt i64 %i.h, %i.i                  ; 2 uses
  %spec.select.i = select i1 %i.j, i64 -1, i64 %2
  %spec.select29.i = select i1 %i.j, i64 0, i64 %1
  %i.k = add i64 %i.e, ptrtoint (ptr @flush_tlb_info to i64) ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 12 uses
  %i.m = zext i1 %4 to i8
  %i.n = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  store i64 %spec.select29.i, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 16       ; 3 uses
  store i64 %spec.select.i, ptr %i.o, align 8
  store ptr %0, ptr %i.l, align 8
  %i.p = trunc i32 %3 to i8
  %i.q = getelementptr i8, ptr %i.l, i64 36       ; 4 uses
  store i8 %i.p, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.l, i64 37
  store i8 %i.m, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %i.l, i64 24
  store i64 %i.d, ptr %i.s, align 8
  %i.t = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !46
  %i.u = getelementptr i8, ptr %i.l, i64 32
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.l, i64 38       ; 2 uses
  store i8 0, ptr %i.v, align 2
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %mm_global_asid.exit [label %mm_global_asid.exit, label %mm_global_asid.exit.thread], !srcloc !12

mm_global_asid.exit:                              ; preds = %bb.a, %bb.a
  %i.w = getelementptr i8, ptr %0, i64 1544
  %i.x = load volatile i16, ptr %i.w, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %mm_global_asid.exit.thread, label %bb.b

bb.b:                                             ; preds = %mm_global_asid.exit
  %i.y = load i8, ptr %i.q, align 4
  %i.z = icmp eq i8 %i.y, 21
  %i.aa = load ptr, ptr %i.l, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.c [label %bb.c, label %mm_global_asid.exit.i], !srcloc !12

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.ab = getelementptr i8, ptr %i.aa, i64 1544
  %i.ac = load volatile i16, ptr %i.ab, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  %i.ad = add i16 %i.ac, 1
  br label %mm_global_asid.exit.i

mm_global_asid.exit.i:                            ; preds = %bb.c, %bb.b
  %.0.i45.i = phi i16 [ %i.ad, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %i.ae = load i64, ptr %i.o, align 8             ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %mm_global_asid.exit.i
  %i.ag = load i64, ptr %i.n, align 8
  %i.ah = select i1 %i.z, i32 -2147483648, i32 0
  %.tr.i.i.i = zext i16 %.0.i45.i to i32
  %i.ai = shl nuw i32 %.tr.i.i.i, 16
  %i.aj = or i16 %.0.i45.i, 2048
  %.tr.i.i47.i = zext i16 %i.aj to i32
  %i.ak = shl nuw i32 %.tr.i.i47.i, 16
  %.pre.i = load i8, ptr %i.q, align 4
  br label %bb.f

bb.d:                                             ; preds = %mm_global_asid.exit.i
  %.tr.i.i.i.i = zext i16 %.0.i45.i to i32
  %i.al = shl nuw i32 %.tr.i.i.i.i, 16
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 6, i32 0, i32 %i.al) #10, !srcloc !47
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 235, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #10
          to label %bb.e [label %bb.e, label %_static_cpu_has.exit44.i], !srcloc !12

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.am = or i16 %.0.i45.i, 2048
  %.tr.i.i.i46.i = zext i16 %i.am to i32
  %i.an = shl nuw i32 %.tr.i.i.i46.i, 16
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 6, i32 0, i32 %i.an) #10, !srcloc !47
  br label %_static_cpu_has.exit44.i

bb.f:                                             ; preds = %_static_cpu_has.exit.i, %.preheader.i
  %i.ao = phi i64 [ %i.bf, %_static_cpu_has.exit.i ], [ %i.ae, %.preheader.i ]
  %i.ap = phi i8 [ %i.bb, %_static_cpu_has.exit.i ], [ %.pre.i, %.preheader.i ] ; 2 uses
  %.036.i = phi i64 [ %i.be, %_static_cpu_has.exit.i ], [ %i.ag, %.preheader.i ] ; 3 uses
  %i.aq = icmp ult i8 %i.ap, 22
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i16, ptr @invlpgb_count_max, align 2
  %i.as = zext i16 %i.ar to i64                   ; 2 uses
  %i.at = sub i64 %i.ao, %.036.i
  %i.au = zext nneg i8 %i.ap to i64
  %i.av = lshr i64 %i.at, %i.au                   ; 2 uses
  %.not.i34 = icmp ult i64 %i.av, %i.as
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.ax = select i1 %.not.i34, i64 %i.aw, i64 %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i33 = phi i64 [ %i.ax, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.ay = or i64 %.036.i, 7                       ; 2 uses
  %5 = trunc nuw i64 %.0.i33 to i32
  %i.az = add nsw i32 %5, -1
  %i.ba = or i32 %i.az, %i.ah                     ; 2 uses
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.ay, i32 %i.ba, i32 %i.ai) #10, !srcloc !47
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 235, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #10
          to label %bb.i [label %bb.i, label %_static_cpu_has.exit.i], !srcloc !12

bb.i:                                             ; preds = %bb.h, %bb.h
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.ay, i32 %i.ba, i32 %i.ak) #10, !srcloc !47
  br label %_static_cpu_has.exit.i

_static_cpu_has.exit.i:                           ; preds = %bb.i, %bb.h
  %i.bb = load i8, ptr %i.q, align 4              ; 2 uses
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl i64 %.0.i33, %i.bc
  %i.be = add i64 %i.bd, %.036.i                  ; 2 uses
  %i.bf = load i64, ptr %i.o, align 8             ; 2 uses
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %_static_cpu_has.exit44.i, !llvm.loop !133

_static_cpu_has.exit44.i:                         ; preds = %_static_cpu_has.exit.i, %bb.e, %bb.d
  %i.bh = load ptr, ptr %i.l, align 8             ; 5 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.j [label %bb.j, label %mm_global_asid.exit.i.i], !srcloc !12

bb.j:                                             ; preds = %_static_cpu_has.exit44.i, %_static_cpu_has.exit44.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 1544
  %i.bj = load volatile i16, ptr %i.bi, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  br label %mm_global_asid.exit.i.i

mm_global_asid.exit.i.i:                          ; preds = %bb.j, %_static_cpu_has.exit44.i
  %.0.i21.i.i = phi i16 [ %i.bj, %bb.j ], [ 0, %_static_cpu_has.exit44.i ]
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %_static_cpu_has.exit.i.i.i [label %_static_cpu_has.exit.i.i.i, label %broadcast_tlb_flush.exit], !srcloc !12

_static_cpu_has.exit.i.i.i:                       ; preds = %mm_global_asid.exit.i.i, %mm_global_asid.exit.i.i
  %.not.i23.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i, label %broadcast_tlb_flush.exit, label %mm_in_asid_transition.exit.i.i

mm_in_asid_transition.exit.i.i:                   ; preds = %_static_cpu_has.exit.i.i.i
  %i.bk = getelementptr i8, ptr %i.bh, i64 1546   ; 2 uses
  %i.bl = load volatile i8, ptr %i.bk, align 2, !range !38, !noundef !39
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.preheader26.i.i, label %broadcast_tlb_flush.exit

.preheader26.i.i:                                 ; preds = %mm_in_asid_transition.exit.i.i
  %i.bn = getelementptr i8, ptr %i.bh, i64 1664
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.preheader26.i.i
  %i.bo = phi i64 [ 0, %.preheader26.i.i ], [ %sext.i.i, %bb.n ]
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = shl nsw i64 -1, %i.bo
  %i.br = and i64 %i.bp, %i.bq                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i, label %find_next_bit.exit.thread.i.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.k
  %i.bs = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.br) #14, !srcloc !48 ; 2 uses
  %i.bt = and i64 %i.bs, 4294967232
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.preheader.i.i, label %find_next_bit.exit.thread.i.i

.preheader.i.i:                                   ; preds = %find_next_bit.exit.i.i
  %i.bv = and i64 %i.bs, 63                       ; 3 uses
  %i.bw = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = add i64 %i.bx, ptrtoint (ptr @cpu_tlbstate to i64)
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load volatile ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 1 to ptr)
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !140
  %i.cc = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.cd = add i64 %i.cc, ptrtoint (ptr @cpu_tlbstate to i64)
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load volatile ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, inttoptr (i64 1 to ptr)
  br i1 %i.cg, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !134

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.lcssa27.i.i = phi i64 [ %i.bx, %.preheader.i.i ], [ %i.cc, %.lr.ph.i.i ]
  %.lcssa.i.i = phi ptr [ %i.bz, %.preheader.i.i ], [ %i.ce, %.lr.ph.i.i ]
  %i.ch = load volatile ptr, ptr %.lcssa.i.i, align 8
  %.not.i.i = icmp eq ptr %i.ch, %i.bh
  br i1 %.not.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ci = add i64 %.lcssa27.i.i, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 16) to i64)
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load volatile i16, ptr %i.cj, align 2
  %.not20.i.i = icmp eq i16 %i.ck, %.0.i21.i.i
  br i1 %.not20.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.l, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 1664
  %i.cn = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{di},{si},{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 40), i64 %i.co, i64 %i.k, i64 %i.cn) #10, !srcloc !43
  %i.cq = extractvalue { i64, i64, i64, i64, i64 } %i.cp, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.cq)
  br label %broadcast_tlb_flush.exit

bb.n:                                             ; preds = %bb.l, %._crit_edge.i.i
  %sext.i.i = add nuw nsw i64 %i.bv, 1
  %i.cr = icmp eq i64 %i.bv, 63
  br i1 %i.cr, label %find_next_bit.exit.thread.i.i, label %bb.k, !prof !49, !llvm.loop !135

find_next_bit.exit.thread.i.i:                    ; preds = %bb.n, %find_next_bit.exit.i.i, %bb.k
  store volatile i8 0, ptr %i.bk, align 2
  br label %broadcast_tlb_flush.exit

broadcast_tlb_flush.exit:                         ; preds = %mm_global_asid.exit.i.i, %_static_cpu_has.exit.i.i.i, %mm_in_asid_transition.exit.i.i, %bb.m, %find_next_bit.exit.thread.i.i
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xff", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !50
  br label %consider_global_asid.exit

mm_global_asid.exit.thread:                       ; preds = %bb.a, %mm_global_asid.exit
  %i.cs = getelementptr i8, ptr %0, i64 1664      ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.p

bb.o:                                             ; preds = %find_next_bit.exit
  %i.cu = add nuw nsw i64 %i.da, 1
  %i.cv = and i64 %i.cu, 127                      ; 2 uses
  %i.cw = icmp samesign ugt i64 %i.cv, 63
  br i1 %i.cw, label %cpumask_any_but.exit, label %bb.p, !prof !49, !llvm.loop !0

bb.p:                                             ; preds = %mm_global_asid.exit.thread, %bb.o
  %i.cx = phi i64 [ 0, %mm_global_asid.exit.thread ], [ %i.cv, %bb.o ]
  %i.cy = shl nsw i64 -1, %i.cx
  %i.cz = and i64 %i.ct, %i.cy                    ; 2 uses
  %.not.i30 = icmp eq i64 %i.cz, 0
  br i1 %.not.i30, label %cpumask_any_but.exit, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.p
  %i.da = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cz) #14, !srcloc !48 ; 2 uses
  %i.db = trunc i64 %i.da to i32                  ; 3 uses
  %i.dc = icmp ult i32 %i.db, 64
  %.not10.i = icmp eq i32 %i.a, %i.db
  %or.cond.i = and i1 %i.dc, %.not10.i
  br i1 %or.cond.i, label %bb.o, label %cpumask_any_but.exit

cpumask_any_but.exit:                             ; preds = %bb.p, %bb.o, %find_next_bit.exit
  %i.dd = phi i32 [ %i.db, %find_next_bit.exit ], [ 64, %bb.o ], [ 64, %bb.p ]
  %i.de = load i32, ptr @nr_cpu_ids, align 4
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %cpumask_any_but.exit
  %i.dg = getelementptr i8, ptr %0, i64 1440      ; 2 uses
  %i.dh = load volatile i64, ptr %i.dg, align 16
  %i.di = load volatile i64, ptr @jiffies, align 64
  %i.dj = sub i64 %i.dh, %i.di                    ; 2 uses
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.r, label %should_trim_cpumask.exit

bb.r:                                             ; preds = %bb.q
  %i.dl = load volatile i64, ptr @jiffies, align 64
  %i.dm = add i64 %i.dl, 1000
  store volatile i64 %i.dm, ptr %i.dg, align 16
  br label %should_trim_cpumask.exit

should_trim_cpumask.exit:                         ; preds = %bb.q, %bb.r
  %.lobit = lshr i64 %i.dj, 63
  %i.dn = trunc nuw nsw i64 %.lobit to i8
  store i8 %i.dn, ptr %i.v, align 2
  %i.do = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.dp = ptrtoint ptr %i.cs to i64
  %i.dq = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{di},{si},{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 40), i64 %i.dp, i64 %i.k, i64 %i.do) #10, !srcloc !43
  %i.dr = extractvalue { i64, i64, i64, i64, i64 } %i.dq, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.dr)
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.s [label %bb.s, label %consider_global_asid.exit], !srcloc !12

bb.s:                                             ; preds = %should_trim_cpumask.exit, %should_trim_cpumask.exit
  %i.ds = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #14, !srcloc !34
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr i8, ptr %i.dt, i64 1528
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = and i32 %i.dv, 31
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load volatile i64, ptr @jiffies, align 64
  %i.dz = and i64 %i.dy, 31
  %.not.i36 = icmp eq i64 %i.dz, %i.dx
  br i1 %.not.i36, label %hweight_long.exit.i.i, label %consider_global_asid.exit

hweight_long.exit.i.i:                            ; preds = %bb.s
  %i.ea = load i64, ptr %i.cs, align 16
  %i.eb = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.ec = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ea, i64 %i.eb) #14, !srcloc !141 ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 1
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.ed)
  %i.ee = extractvalue { i64, i64 } %i.ec, 0
  %i.ef = and i64 %i.ee, 4294967292
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %consider_global_asid.exit, label %.preheader.i.i37

.preheader.i.i37:                                 ; preds = %hweight_long.exit.i.i
end_hunk_0
begin_hunk_1_@flush_tlb_mm_range:bb.a
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = tail call i64 @_find_next_zero_bit(ptr noundef nonnull @global_asid_used, i64 noundef 2046, i64 noundef range(i64 0, 65536) %i.fr) #11 ; 3 uses
  %i.ft = trunc i64 %i.fs to i16                  ; 3 uses
  %i.fu = and i64 %i.fs, 65534
  %i.fv = icmp samesign ult i64 %i.fu, 2046
  %i.fw = load i32, ptr @global_asid_available, align 4
  %i.fx = icmp ne i32 %i.fw, 0
  %or.cond.i.i.i = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %or.cond.i.i.i, label %allocate_global_asid.exit.i.i, label %use_global_asid.exit.i

allocate_global_asid.exit.i.i:                    ; preds = %bb.ac
  %i.fy = and i64 %i.fs, 65535
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @global_asid_used, i64 range(i64 0, 65536) %i.fy) #10, !srcloc !14
  %.pre.i.i.i = load i32, ptr @global_asid_available, align 4
  store i16 %i.ft, ptr @last_global_asid, align 2
  %i.fz = add i32 %.pre.i.i.i, -1
  store i32 %i.fz, ptr @global_asid_available, align 4
  %.not4.i.i = icmp eq i16 %i.ft, 0
  br i1 %.not4.i.i, label %use_global_asid.exit.i, label %bb.ad

bb.ad:                                            ; preds = %allocate_global_asid.exit.i.i
  %i.ga = getelementptr i8, ptr %0, i64 1546
  store i8 1, ptr %i.ga, align 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !142
  %i.gb = getelementptr i8, ptr %0, i64 1544
  store volatile i16 %i.ft, ptr %i.gb, align 8
  br label %use_global_asid.exit.i

use_global_asid.exit.i:                           ; preds = %bb.ad, %allocate_global_asid.exit.i.i, %bb.ac, %mm_global_asid.exit.i.i42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @global_asid_lock, i64 noundef %i.fd) #11
  br label %consider_global_asid.exit

bb.ae:                                            ; preds = %cpumask_any_but.exit
  %i.gc = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @cpu_tlbstate) #10, !srcloc !143
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = icmp eq ptr %0, %i.gd
  br i1 %i.ge, label %bb.af, label %consider_global_asid.exit

bb.af:                                            ; preds = %bb.ae
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !22
  tail call void @flush_tlb_func(ptr noundef %i.l) #12, !srcloc !144
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !23
  br label %consider_global_asid.exit

consider_global_asid.exit:                        ; preds = %bb.x, %find_next_bit.exit.i.i39, %bb.t, %use_global_asid.exit.i, %hweight_long.exit.i.i, %bb.s, %should_trim_cpumask.exit, %bb.af, %bb.ae, %broadcast_tlb_flush.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !145
  %i.gf = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !53 ; 2 uses
  %i.gg = icmp ult i8 %i.gf, 2
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = trunc nuw i8 %i.gf to i1
  br i1 %i.gh, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %consider_global_asid.exit
  %i.gi = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.gj = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.gi) #10, !srcloc !146
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.gj)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %consider_global_asid.exit
  %i.gk = getelementptr i8, ptr %0, i64 1584
  %.val.i = load ptr, ptr %i.gk, align 16
  %.not3.i = icmp eq ptr %.val.i, null
  br i1 %.not3.i, label %mmu_notifier_arch_invalidate_secondary_tlbs.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__mmu_notifier_arch_invalidate_secondary_tlbs(ptr noundef %0, i64 noundef %1, i64 noundef %2) #11
  br label %mmu_notifier_arch_invalidate_secondary_tlbs.exit

mmu_notifier_arch_invalidate_secondary_tlbs.exit: ; preds = %bb.ah, %bb.ai
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_all() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !12

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !51
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 12, i32 0, i32 0) #10, !srcloc !47
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xff", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !50
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !52
  %i.a = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !53 ; 2 uses
  %i.b = icmp ult i8 %i.a, 2
  tail call void @llvm.assume(i1 %i.b)
  %i.c = trunc nuw i8 %i.a to i1
  br i1 %i.c, label %bb.c, label %invlpgb_flush_all.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.e = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.d) #10, !srcloc !54
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.e)
  br label %invlpgb_flush_all.exit

_static_cpu_has.exit:                             ; preds = %bb.a
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @do_flush_tlb_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #11
  br label %invlpgb_flush_all.exit

invlpgb_flush_all.exit:                           ; preds = %bb.c, %bb.b, %_static_cpu_has.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_flush_tlb_all(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.b = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 24), i64 %i.a) #10, !srcloc !55
  %i.c = extractvalue { i64, i64, i64, i64, i64 } %i.b, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.c)
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_kernel_range(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !51
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !45
  %i.b = sub i64 %1, %0
  %i.c = lshr i64 %i.b, 12
  %i.d = load i64, ptr @tlb_single_page_flush_ceiling, align 8
  %i.e = icmp ugt i64 %i.c, %i.d                  ; 2 uses
  %spec.select.i = select i1 %i.e, i64 -1, i64 %1 ; 2 uses
  %spec.select29.i = select i1 %i.e, i64 0, i64 %0
  %i.f = add i64 %i.a, ptrtoint (ptr @flush_tlb_info to i64)
  %i.g = inttoptr i64 %i.f to ptr                 ; 9 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store i64 %spec.select29.i, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  store i64 %spec.select.i, ptr %i.i, align 8
  store ptr null, ptr %i.g, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 36
  store i8 12, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %i.g, i64 37
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.g, i64 24
  store i64 0, ptr %i.l, align 8
  %i.m = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !46
  %i.n = getelementptr i8, ptr %i.g, i64 32
  store i32 %i.m, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.g, i64 38
  store i8 0, ptr %i.o, align 2
  %i.p = icmp eq i64 %spec.select.i, -1
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.c [label %bb.c, label %_static_cpu_has.exit.i], !srcloc !12

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !51
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 12, i32 0, i32 0) #10, !srcloc !47
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xff", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !50
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !52
  %i.q = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !53 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %bb.d, label %kernel_tlb_flush_all.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.u = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.t) #10, !srcloc !54
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.u)
  br label %kernel_tlb_flush_all.exit

_static_cpu_has.exit.i:                           ; preds = %bb.b
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @do_flush_tlb_all, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #11
  br label %kernel_tlb_flush_all.exit

bb.e:                                             ; preds = %bb.a
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 419, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 100)) #10
          to label %bb.f [label %bb.f, label %_static_cpu_has.exit.i4], !srcloc !12

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.v = load i64, ptr %i.h, align 8              ; 2 uses
  %i.w = load i64, ptr %i.i, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %invlpgb_kernel_range_flush.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.y = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %i.w, %bb.f ]
  %.026.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.z = load i16, ptr @invlpgb_count_max, align 2
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = sub nuw i64 %i.y, %.026.i.i             ; 2 uses
  %i.ac = lshr i64 %i.ab, 12                      ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.ac, %i.aa
  %i.ad = icmp ult i64 %i.ab, 8192
  %i.ae = select i1 %i.ad, i64 1, i64 %i.ac
  %i.af = select i1 %.not.i.i, i64 %i.ae, i64 %i.aa ; 2 uses
  %i.ag = or i64 %.026.i.i, 12
  %2 = trunc nuw i64 %i.af to i32
  %i.ah = add nsw i32 %2, -1
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xfe", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %i.ag, i32 %i.ah, i32 0) #10, !srcloc !47
  %i.ai = shl nuw nsw i64 %i.af, 12
  %i.aj = add i64 %i.ai, %.026.i.i                ; 2 uses
  %i.ak = load i64, ptr %i.i, align 8             ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %invlpgb_kernel_range_flush.exit.i, !llvm.loop !147

invlpgb_kernel_range_flush.exit.i:                ; preds = %.lr.ph.i.i, %bb.f
  tail call void asm sideeffect ".byte 0x0f, 0x01, 0xff", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !50
  br label %kernel_tlb_flush_all.exit

_static_cpu_has.exit.i4:                          ; preds = %bb.e
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @do_kernel_range_flush, ptr noundef %i.g, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #11
  br label %kernel_tlb_flush_all.exit

kernel_tlb_flush_all.exit:                        ; preds = %_static_cpu_has.exit.i4, %invlpgb_kernel_range_flush.exit.i, %_static_cpu_has.exit.i, %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !52
  %i.am = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #10, !srcloc !53 ; 2 uses
  %i.an = icmp ult i8 %i.am, 2
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %bb.g, label %class_preempt_destructor.exit, !prof !17

bb.g:                                             ; preds = %kernel_tlb_flush_all.exit
  %i.ap = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.aq = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ap) #10, !srcloc !54
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.aq)
  br label %class_preempt_destructor.exit

class_preempt_destructor.exit:                    ; preds = %kernel_tlb_flush_all.exit, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__get_current_cr3_fast() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @cpu_tlbstate) #10, !srcloc !148
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call i16 asm sideeffect "movw %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 16)) #10, !srcloc !149
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = add i64 %i.f, 2147483648
  %i.h = icmp ugt ptr %i.d, inttoptr (i64 -2147483649 to ptr)
  %i.i = load i64, ptr @phys_base, align 8
  %i.j = load i64, ptr @page_offset_base, align 8
  %i.k = sub i64 -2147483648, %i.j
  %i.l = select i1 %i.h, i64 %i.i, i64 %i.k
  %i.m = add i64 %i.g, %i.l                       ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 145, i32 2, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 66)) #10
          to label %bb.b [label %bb.b, label %build_cr3.exit], !srcloc !12

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.n = add i16 %i.e, 1
  %i.o = zext i16 %i.n to i64
  %i.p = or i64 %i.m, %i.o
  br label %build_cr3.exit

build_cr3.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.m, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_one_kernel(i64 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.b = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{di},{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 32), i64 %0, i64 %i.a) #10, !srcloc !40
  %i.c = extractvalue { i64, i64, i64, i64, i64 } %i.b, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.c)
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 235, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #10
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !12

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void asm sideeffect "movb $1, %gs:$0", "=*m,qi,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 20), i8 1) #10, !srcloc !56
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @flush_tlb_one_user(i64 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.b = tail call { i64, i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr\0A771:\0A\09911: .pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 911b - ., 2; .popsection\0A\09call *$5\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 1) << 16) $| (( 3*32+21)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call BUG_func\0A775:\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},*m,{di},{rsp},~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) getelementptr inbounds nuw (i8, ptr @pv_ops, i64 32), i64 %0, i64 %i.a) #10, !srcloc !40
  %i.c = extractvalue { i64, i64, i64, i64, i64 } %i.b, 4
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.c)
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @native_flush_tlb_one_user(i64 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.anon.32, align 8            ; 5 uses
  tail call void asm sideeffect "invlpg ($0)", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !srcloc !150
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 235, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #10
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !12

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = tail call i16 asm sideeffect "movw %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 16)) #10, !srcloc !151 ; 2 uses
  %i.b = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 24)) #10, !srcloc !152
  %i.c = and i64 %i.b, 131072
  %i.d = icmp ne i64 %i.c, 0
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 80), align 8
  %i.f = and i64 %i.e, 4398046511104
  %i.g = icmp ne i64 %i.f, 0
  %or.cond = select i1 %i.g, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i16 %i.a, 1
  %i.i = or i16 %i.h, 2048
  %i.j = zext i16 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %i.j, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.k, align 8
  call void asm sideeffect "invpcid $0, $1", "*m,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%struct.anon.32) %1, i64 0) #10, !srcloc !57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %_static_cpu_has.exit

bb.d:                                             ; preds = %bb.b
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 145, i32 2, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 66)) #10
          to label %bb.e [label %bb.e, label %_static_cpu_has.exit], !srcloc !12

bb.e:                                             ; preds = %bb.d, %bb.d
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 235, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 77)) #10
          to label %bb.f [label %bb.f, label %_static_cpu_has.exit], !srcloc !12

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.l = add i16 %i.a, 1
  %i.m = zext i16 %i.l to i64
  %i.n = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !27
  %i.o = add i64 %i.n, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 22) to i64)
  %i.p = inttoptr i64 %i.o to ptr
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, i64 range(i64 0, 65536) %i.m) #10, !srcloc !14
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @native_flush_tlb_global() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.anon.32, align 8            ; 4 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 298, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 85)) #10
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !12

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void asm sideeffect "invpcid $0, $1", "*m,r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(%struct.anon.32) %0, i64 2) #10, !srcloc !57
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br label %arch_local_irq_restore.exit

_static_cpu_has.exit:                             ; preds = %bb.a
  %i.a = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !22
  %i.b = tail call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 24)) #10, !srcloc !153 ; 2 uses
  %i.c = xor i64 %i.b, 128
  tail call void @native_write_cr4(i64 noundef %i.c) #11
  tail call void @native_write_cr4(i64 noundef %i.b) #11
  %i.d = and i64 %i.a, 512
  %.not.i5.not = icmp eq i64 %i.d, 0
  br i1 %.not.i5.not, label %arch_local_irq_restore.exit, label %bb.c

bb.c:                                             ; preds = %_static_cpu_has.exit
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !23
  br label %arch_local_irq_restore.exit

arch_local_irq_restore.exit:                      ; preds = %bb.c, %_static_cpu_has.exit, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @native_flush_tlb_local() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !154
  %i.b = and i32 %i.a, 2147483647
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.e = and i64 %i.d, 512
  %.not.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i.not, label %.critedge, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "705: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 705b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 705) #10, !srcloc !155
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1673, i32 2307, i64 16) #10, !srcloc !156
  tail call void asm sideeffect "706: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 706b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 706) #10, !srcloc !157
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.f = tail call i16 asm sideeffect "movw %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) getelementptr inbounds nuw (i8, ptr @cpu_tlbstate, i64 16)) #10, !srcloc !158
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 145, i32 2, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 66)) #10
          to label %bb.d [label %bb.d, label %invalidate_user_asid.exit], !srcloc !12
end_hunk_1

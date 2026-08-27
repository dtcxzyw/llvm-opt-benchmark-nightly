Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mballoc?download=true
inline.NumInlined: 1079
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ext4_mb_generate_buddy:bb.a
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = and i64 %i.bd, -8
  %i.bf = inttoptr i64 %i.be to ptr
  %.tr.i.i.i = trunc i64 %i.bd to i32
  %i.bg = shl i32 %.tr.i.i.i, 3
  %i.bh = and i32 %i.bg, 56
  %i.bi = ashr i32 %.02733.i, %spec.select.i
  %i.bj = add nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  tail call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bf, i64 range(i64 -2147483648, 2147483648) %i.bk) #14, !srcloc !78
  br label %mb_clear_bit.exit.i

mb_clear_bit.exit.i:                              ; preds = %bb.e, %fls.exit.i
  %i.bl = sub i32 %.02832.i, %i.as                ; 2 uses
  %i.bm = add i32 %i.as, %.02733.i
  %i.bn = icmp sgt i32 %i.bl, 0
  br i1 %i.bn, label %fls.exit.i, label %ext4_mb_mark_free_simple.exit, !llvm.loop !281

bb.f:                                             ; preds = %mb_find_next_bit.exit
  %i.bo = load i32, ptr %i.w, align 8
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.w, align 8
  br label %ext4_mb_mark_free_simple.exit

ext4_mb_mark_free_simple.exit:                    ; preds = %mb_clear_bit.exit.i, %bb.f
  %i.bq = icmp slt i32 %i.ad, %i.d
  br i1 %i.bq, label %mb_find_next_zero_bit.exit64, label %bb.g

mb_find_next_zero_bit.exit64:                     ; preds = %ext4_mb_mark_free_simple.exit
  %i.br = add i32 %..i58, %i.l
  %i.bs = sext i32 %i.br to i64
  %i.bt = tail call i64 @_find_next_zero_bit(ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.bs) #15
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = sub i32 %i.bu, %i.l
  %..i62 = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.d)
  br label %bb.g

bb.g:                                             ; preds = %mb_find_next_zero_bit.exit64, %ext4_mb_mark_free_simple.exit
  %.1 = phi i32 [ %..i62, %mb_find_next_zero_bit.exit64 ], [ %..i58, %ext4_mb_mark_free_simple.exit ] ; 2 uses
  %i.bw = icmp slt i32 %.1, %i.d
  br i1 %i.bw, label %mb_find_next_bit.exit, label %._crit_edge, !llvm.loop !282

._crit_edge:                                      ; preds = %bb.g, %get_cycles.exit
  %.049.lcssa = phi i32 [ 0, %get_cycles.exit ], [ %i.af, %bb.g ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %get_cycles.exit ], [ %i.y, %bb.g ]
  %i.bx = getelementptr i8, ptr %4, i64 24
  store i32 %.0.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %4, i64 20        ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %.not = icmp eq i32 %.049.lcssa, %i.bz
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, i32, i64, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_generate_buddy, i32 noundef 1317, ptr noundef %0, i32 noundef %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %.049.lcssa, i32 noundef %i.bz) #15
  store i32 %.049.lcssa, ptr %i.by, align 4
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %3, i32 noundef 4) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  tail call fastcc void @mb_set_largest_free_order(ptr noundef %0, ptr noundef %4) #16, !srcloc !283
  tail call fastcc void @mb_update_avg_fragment_size(ptr noundef %0, ptr noundef %4) #16, !srcloc !284
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %4, i32 -2, ptr elementtype(i8) %4) #14, !srcloc !72
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 4, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 48)) #14
          to label %bb.j [label %bb.j, label %get_cycles.exit66], !srcloc !276

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ca = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !277 ; 2 uses
  %i.cb = extractvalue { i64, i64 } %i.ca, 0
  %i.cc = extractvalue { i64, i64 } %i.ca, 1
  %i.cd = shl i64 %i.cc, 32
  %i.ce = or i64 %i.cd, %i.cb
  br label %get_cycles.exit66

get_cycles.exit66:                                ; preds = %bb.i, %bb.j
  %.0.i65 = phi i64 [ %i.ce, %bb.j ], [ 0, %bb.i ]
  %i.cf = sub i64 %.0.i65, %.0.i
  %i.cg = getelementptr i8, ptr %.val56, i64 1120 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cg, ptr elementtype(i32) %i.cg) #14, !srcloc !110
  %i.ch = getelementptr i8, ptr %.val56, i64 1128 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ch, i64 %i.cf, ptr elementtype(i64) %i.ch) #14, !srcloc !80
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_generate_from_pa(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1073741824, 1073741824) %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call ptr @ext4_get_group_info(ptr noundef %0, i32 noundef %2) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 40       ; 3 uses
  %.026 = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not2527 = icmp eq ptr %.026, %i.d
  br i1 %.not2527, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !annotation !14
  store i32 0, ptr %i.b, align 4, !annotation !14
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %.tr.i.i.i = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr.i.i.i, 3
  %i.g = and i32 %i.f, 56
  %i.h = and i64 %i.e, -8
  %i.i = inttoptr i64 %i.h to ptr
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mb_set_bits.exit
  %.029 = phi ptr [ %.026, %.lr.ph ], [ %.0, %mb_set_bits.exit ] ; 4 uses
  %i.j = getelementptr i8, ptr %.029, i64 32      ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.j) #15
  %i.k = getelementptr i8, ptr %.029, i64 48
  %i.l = load i64, ptr %i.k, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.m = getelementptr i8, ptr %.029, i64 60
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  call void @_raw_spin_unlock(ptr noundef %i.j) #15
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %mb_set_bits.exit, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.a, align 4
  %.not24 = icmp eq i32 %i.p, %2
  br i1 %.not24, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "1654: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1654b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1654) #14, !srcloc !285
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 5112, i32 0, i64 16) #14, !srcloc !286
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.b, align 4              ; 3 uses
  %i.r = add i32 %i.q, %i.n                       ; 3 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i, label %mb_set_bits.exit

.lr.ph.i:                                         ; preds = %bb.f, %.backedge.i
  %.015.i = phi i32 [ %i.aa, %.backedge.i ], [ %i.q, %bb.f ] ; 5 uses
  %i.t = and i32 %.015.i, 31
  %i.u = icmp eq i32 %i.t, 0
  %i.v = sub i32 %i.r, %.015.i
  %i.w = icmp sgt i32 %i.v, 31
  %or.cond.i = and i1 %i.u, %i.w
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.x = ashr exact i32 %.015.i, 3
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  store i32 -1, ptr %i.z, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.h, %bb.g
  %.sink.i = phi i32 [ 32, %bb.g ], [ 1, %bb.h ]
  %i.aa = add i32 %.sink.i, %.015.i               ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.r
  br i1 %i.ab, label %.lr.ph.i, label %mb_set_bits.exit, !llvm.loop !10

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = add i32 %.015.i, %i.g
  %i.ad = sext i32 %i.ac to i64
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.i, i64 range(i64 -2147483648, 2147483648) %i.ad) #14, !srcloc !12
  br label %.backedge.i

mb_set_bits.exit:                                 ; preds = %.backedge.i, %bb.f, %bb.c
  %.0 = load ptr, ptr %.029, align 8              ; 2 uses
  %.not25 = icmp eq ptr %.0, %i.d
  br i1 %.not25, label %.loopexit, label %bb.c, !llvm.loop !287

.loopexit:                                        ; preds = %mb_set_bits.exit, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_mb_buddy_bitmap_load(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_grp_locked_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @mb_set_largest_free_order(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 2 uses
  %.val30 = load ptr, ptr %i.a, align 32          ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %2 = zext i8 %i.e to i32
  %3 = add nuw nsw i32 %2, 1
  %4 = getelementptr i8, ptr %1, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.032 = phi i32 [ %3, %bb.a ], [ %6, %bb.c ]    ; 4 uses
  %5 = zext nneg i32 %.032 to i64
  %i.f = getelementptr [4 x i8], ptr %4, i64 %5
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %6 = add nsw i32 %.032, -1
  %i.i = icmp sgt i32 %.032, 0
  br i1 %i.i, label %bb.b, label %bb.d, !llvm.loop !288

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.lcssa = phi i32 [ %.032, %bb.b ], [ -1, %bb.c ] ; 3 uses
  %i.j = icmp eq i32 %.0.lcssa, %i.c
  br i1 %i.j, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.c, -1
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val30, i64 856
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr [16 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val31 = load ptr, ptr %i.p, align 8
  %i.q = icmp eq ptr %.val31, null
  br i1 %i.q, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = tail call ptr @xa_load(ptr noundef %i.o, i64 noundef %i.t) #15
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.r, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = tail call ptr @xa_erase(ptr noundef %i.o, i64 noundef %i.w) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  store i32 %.0.lcssa, ptr %i.b, align 8
  %.val = load ptr, ptr %i.a, align 32
  %i.y = getelementptr i8, ptr %.val, i64 124
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 128
  %i.ab = icmp ne i32 %i.aa, 0
  %or.cond = and i1 %i.h, %i.ab
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %1, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.val30, i64 856
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = zext nneg i32 %.0.lcssa to i64
  %i.ah = getelementptr [16 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  %i.ai = getelementptr i8, ptr %1, i64 36
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !251 ; 0 uses
  tail call void @_raw_spin_lock(ptr noundef %i.ah) #15
  %i.am = tail call i32 @__xa_insert(ptr noundef %i.ah, i64 noundef range(i64 0, 4294967296) %i.ak, ptr noundef %1, i32 noundef 2080) #15 ; 0 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.ah) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @mb_update_avg_fragment_size(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val23 = load ptr, ptr %i.a, align 32          ; 3 uses
  %i.b = getelementptr i8, ptr %.val23, i64 124
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mb_avg_fragment_size_order.exit, label %fls.exit.i

fls.exit.i:                                       ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sdiv i32 %i.k, %i.h
  %i.m = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.l, i32 -1) #17, !srcloc !145 ; 3 uses
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %mb_avg_fragment_size_order.exit, label %bb.c

bb.c:                                             ; preds = %fls.exit.i
  %i.p = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 3
  %i.t = icmp eq i32 %i.m, %i.s
  %i.u = add i32 %i.m, -2
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 %i.n ; 2 uses
  %i.v = add nuw nsw i32 %i.r, 2
  %i.w = icmp sgt i32 %spec.select.i, %i.v
  br i1 %i.w, label %bb.d, label %mb_avg_fragment_size_order.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1513: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1513b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1513) #14, !srcloc !198
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 856, i32 2307, i64 16) #14, !srcloc !199
  tail call void asm sideeffect "1514: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1514b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1514) #14, !srcloc !200
  %i.x = load i8, ptr %i.p, align 4
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 1
  br label %mb_avg_fragment_size_order.exit

mb_avg_fragment_size_order.exit:                  ; preds = %bb.d, %bb.c, %fls.exit.i, %bb.b
  %i.aa = phi i32 [ -1, %bb.b ], [ 0, %fls.exit.i ], [ %i.z, %bb.d ], [ %spec.select.i, %bb.c ] ; 4 uses
  %i.ab = icmp eq i32 %i.aa, %i.f
  br i1 %i.ab, label %bb.i, label %bb.e

bb.e:                                             ; preds = %mb_avg_fragment_size_order.exit
  %i.ac = icmp sgt i32 %i.f, -1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %.val23, i64 848
  %i.ae = load ptr, ptr %i.ad, align 16
  %i.af = zext nneg i32 %i.f to i64
  %i.ag = getelementptr [16 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %1, i64 36
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call ptr @xa_erase(ptr noundef %i.ag, i64 noundef %i.aj) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.aa, ptr %i.e, align 4
  %i.al = icmp sgt i32 %i.aa, -1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.val23, i64 848
  %i.an = load ptr, ptr %i.am, align 16
  %i.ao = zext nneg i32 %i.aa to i64
  %i.ap = getelementptr [16 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %1, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !251 ; 0 uses
  tail call void @_raw_spin_lock(ptr noundef %i.ap) #15
  %i.au = tail call i32 @__xa_insert(ptr noundef %i.ap, i64 noundef range(i64 0, 4294967296) %i.as, ptr noundef %1, i32 noundef 2080) #15 ; 0 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.ap) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %mb_avg_fragment_size_order.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_mb_bitmap_load(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ext4_decode_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0

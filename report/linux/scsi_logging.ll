Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scsi_logging?download=true
inline.NumInlined: 38
inline.NumDeleted: 11
begin_hunk_0_@scmd_printk:bb.a
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 2080, i64 noundef 128) #9 ; 6 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !10
  %i.c = getelementptr i8, ptr %1, i64 -248
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %scmd_name.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %i.e, i64 12       ; 2 uses
  br i1 %.not7.i, label %scmd_name.exit.thread, label %scmd_name.exit

scmd_name.exit.thread:                            ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %1, i64 -216
  %i.h = load i32, ptr %i.g, align 8
  br label %.critedge.i

scmd_name.exit:                                   ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 -216
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not.i17 = icmp eq ptr %i.f, null
  br i1 %.not.i17, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %scmd_name.exit
  %i.k = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %.not26.i = icmp ult i32 %i.k, 128
  br i1 %.not26.i, label %.critedge.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "575: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 575b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 575) #8, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 47, i32 2305, i64 16) #8, !srcloc !13
  tail call void asm sideeffect "576: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 576b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 576) #8, !srcloc !14
  br label %sdev_format_header.exit

.critedge.i:                                      ; preds = %scmd_name.exit.thread, %scmd_name.exit, %bb.e
  %.022.i25 = phi i64 [ %i.l, %bb.e ], [ 0, %scmd_name.exit ], [ 0, %scmd_name.exit.thread ] ; 4 uses
  %i.m = phi i32 [ %i.j, %bb.e ], [ %i.j, %scmd_name.exit ], [ %i.h, %scmd_name.exit.thread ] ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.g, label %sdev_format_header.exit.thread

bb.g:                                             ; preds = %.critedge.i
  %i.o = getelementptr i8, ptr %i.b, i64 %.022.i25
  %i.p = sub nuw nsw i64 128, %.022.i25
  %i.q = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.19, i32 noundef %i.m) #10
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %.022.i25, %i.r
  br label %sdev_format_header.exit

sdev_format_header.exit:                          ; preds = %bb.f, %bb.g
  %.0.i18 = phi i64 [ %i.l, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.t = icmp ult i64 %.0.i18, 128
  br i1 %i.t, label %sdev_format_header.exit.thread, label %bb.h

sdev_format_header.exit.thread:                   ; preds = %.critedge.i, %sdev_format_header.exit
  %.0.i1827 = phi i64 [ %.0.i18, %sdev_format_header.exit ], [ %.022.i25, %.critedge.i ] ; 2 uses
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.u = getelementptr i8, ptr %i.b, i64 %.0.i1827
  %i.v = sub nuw nsw i64 128, %.0.i1827
  %i.w = call i32 @vscnprintf(ptr noundef %i.u, i64 noundef %i.v, ptr noundef %2, ptr noundef nonnull %3) #10 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %sdev_format_header.exit, %sdev_format_header.exit.thread
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 456
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %i.y, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) #11
  call void @kfree(ptr noundef nonnull %i.b) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -4294967296, 4294967295) i64 @sdev_format_header(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2) #10
  %i.b = sext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]   ; 6 uses
  %.not26 = icmp ult i64 %.022, %1
  br i1 %.not26, label %.critedge, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "575: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 575b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 575) #8, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 47, i32 2305, i64 16) #8, !srcloc !13
  tail call void asm sideeffect "576: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 576b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 576) #8, !srcloc !14
  br label %bb.f

.critedge:                                        ; preds = %bb.c
  %i.c = icmp sgt i32 %3, -1
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.d = getelementptr i8, ptr %0, i64 %.022
  %i.e = sub nuw i64 %1, %.022
  %i.f = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull @.str.19, i32 noundef %3) #10
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %.022, %i.g
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.critedge, %bb.e
  %.0 = phi i64 [ %.022, %bb.d ], [ %i.h, %bb.e ], [ %.022, %.critedge ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__scsi_format_command(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @scsi_format_opcode_name(ptr noundef %0, i64 noundef %1, ptr noundef %2) #12, !srcloc !23 ; 5 uses
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1                 ; 2 uses
  %i.c = icmp eq i8 %i.b, 127
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 7
  %.val.i = load i8, ptr %i.d, align 1
  %i.e = zext i8 %.val.i to i64
  %i.f = add nuw nsw i64 %i.e, 8
  br label %scsi_command_size.exit

bb.d:                                             ; preds = %bb.b
  %i.g = lshr i8 %i.b, 5
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr i8, ptr @scsi_command_size_tbl, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  br label %scsi_command_size.exit

scsi_command_size.exit:                           ; preds = %bb.c, %bb.d
  %i.l = phi i64 [ %i.f, %bb.c ], [ %i.k, %bb.d ]
  %spec.select30 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.l) ; 2 uses
  %i.m = add i64 %1, -3                           ; 2 uses
  %i.n = icmp eq i64 %spec.select30, 0
  %i.o = icmp ugt i64 %i.a, %i.m
  %or.cond31 = or i1 %i.n, %i.o
  br i1 %or.cond31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %scsi_command_size.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %scsi_command_size.exit ] ; 2 uses
  %.033 = phi i64 [ %i.w, %.lr.ph ], [ %i.a, %scsi_command_size.exit ] ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 %.033
  %i.q = sub i64 %1, %.033
  %i.r = getelementptr i8, ptr %2, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.4, i32 noundef %i.t) #10
  %i.v = sext i32 %i.u to i64
  %i.w = add i64 %.033, %i.v                      ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign uge i64 %indvars.iv.next, %spec.select30
  %i.y = icmp ugt i64 %i.w, %i.m
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph, %scsi_command_size.exit, %bb.a
  %.025 = phi i64 [ %i.a, %bb.a ], [ %i.a, %scsi_command_size.exit ], [ %i.w, %.lr.ph ]
  ret i64 %.025
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -4294967296, 4294967295) i64 @scsi_format_opcode_name(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8
  %i.c = load i8, ptr %2, align 1                 ; 4 uses
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = icmp eq i8 %i.c, 127
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 7
  %.val = load i8, ptr %i.f, align 1              ; 2 uses
  %i.g = icmp ugt i8 %.val, 1
  br i1 %i.g, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %2, i64 8
  %3 = load i16, ptr %i.h, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.i = zext i16 %4 to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = or disjoint i8 %.val, 8
  %i.k = zext nneg i8 %i.j to i32
  %i.l = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.k) #10
  %i.m = sext i32 %i.l to i64
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %2, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 31
  %i.q = zext nneg i8 %i.p to i32
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.156 = phi i32 [ %i.i, %.thread ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = call zeroext i1 @scsi_opcode_sa_name(i32 noundef %i.d, i32 noundef %.156, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  br i1 %i.r, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.s) #10
  %i.u = sext i32 %i.t to i64
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.v = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.21, i32 noundef %i.d) #10
  %i.w = sext i32 %i.v to i64                     ; 9 uses
  %.not67 = icmp ugt i64 %1, %i.w
  br i1 %.not67, label %.critedge, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "581: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 581b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 581) #8, !srcloc !24
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 134, i32 2305, i64 16) #8, !srcloc !25
  call void asm sideeffect "582: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 582b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 582) #8, !srcloc !26
  br label %bb.t

.critedge:                                        ; preds = %bb.h
  %i.x = icmp ugt i8 %i.c, -65
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.y = getelementptr i8, ptr %0, i64 %i.w
  %i.z = sub nuw i64 %1, %i.w
  %i.aa = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.22) #10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, %i.w
  br label %bb.r

bb.k:                                             ; preds = %.critedge
  %i.ad = add i8 %i.c, -96
  %or.cond = icmp ult i8 %i.ad, 30
  br i1 %or.cond, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %0, i64 %i.w
  %i.af = sub nuw i64 %1, %i.w
  %i.ag = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.23) #10
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ah, %i.w
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not68 = icmp eq ptr %i.aj, null
  br i1 %.not68, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.aj) #10
  %i.al = sext i32 %i.ak to i64
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not69 = icmp eq ptr %i.am, null
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.am, i32 noundef %.156) #10
  %i.ao = sext i32 %i.an to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ap = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.25, i32 noundef %i.d, i32 noundef %.156) #10
  %i.aq = sext i32 %i.ap to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.g, %bb.k, %bb.l, %bb.j
  %.057 = phi i64 [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.aq, %bb.q ], [ %i.u, %bb.g ], [ %i.ac, %bb.j ], [ %i.ai, %bb.l ], [ %i.w, %bb.k ] ; 3 uses
  %.not70 = icmp ult i64 %.057, %1
  br i1 %.not70, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  call void asm sideeffect "583: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 583b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 583) #8, !srcloc !27
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 153, i32 2305, i64 16) #8, !srcloc !28
  call void asm sideeffect "584: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 584b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 584) #8, !srcloc !29
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.i, %bb.r, %bb.s
  %.1 = phi i64 [ %i.w, %bb.i ], [ %i.m, %bb.c ], [ %.057, %bb.s ], [ %.057, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @scsi_print_command(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 2080, i64 noundef 128) #9 ; 15 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -248       ; 2 uses
  %.val93 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.val93, null
  br i1 %.not.i, label %scmd_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.val93, i64 96
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %i.e, i64 12       ; 2 uses
  br i1 %.not7.i, label %scmd_name.exit.thread, label %scmd_name.exit

scmd_name.exit.thread:                            ; preds = %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 -216       ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  br label %.critedge.i

scmd_name.exit:                                   ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 -216       ; 4 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not.i94 = icmp eq ptr %i.f, null
  br i1 %.not.i94, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %scmd_name.exit
  %i.k = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %.not26.i = icmp ult i32 %i.k, 128
  br i1 %.not26.i, label %.critedge.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "575: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 575b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 575) #8, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 47, i32 2305, i64 16) #8, !srcloc !13
  tail call void asm sideeffect "576: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 576b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 576) #8, !srcloc !14
  br label %sdev_format_header.exit

.critedge.i:                                      ; preds = %scmd_name.exit.thread, %scmd_name.exit, %bb.d
  %.022.i116 = phi i64 [ %i.l, %bb.d ], [ 0, %scmd_name.exit ], [ 0, %scmd_name.exit.thread ] ; 4 uses
  %i.m = phi ptr [ %i.i, %bb.d ], [ %i.i, %scmd_name.exit ], [ %i.g, %scmd_name.exit.thread ] ; 2 uses
  %i.n = phi i32 [ %i.j, %bb.d ], [ %i.j, %scmd_name.exit ], [ %i.h, %scmd_name.exit.thread ] ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %sdev_format_header.exit.thread

bb.f:                                             ; preds = %.critedge.i
  %i.p = getelementptr i8, ptr %i.b, i64 %.022.i116
  %i.q = sub nuw nsw i64 128, %.022.i116
  %i.r = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.19, i32 noundef %i.n) #10
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %.022.i116, %i.s
  br label %sdev_format_header.exit

sdev_format_header.exit:                          ; preds = %bb.e, %bb.f
  %i.u = phi ptr [ %i.i, %bb.e ], [ %i.m, %bb.f ]
  %.0.i95 = phi i64 [ %i.l, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.not86 = icmp ult i64 %.0.i95, 128
  br i1 %.not86, label %sdev_format_header.exit.thread, label %bb.o

sdev_format_header.exit.thread:                   ; preds = %.critedge.i, %sdev_format_header.exit
  %.0.i95119 = phi i64 [ %.0.i95, %sdev_format_header.exit ], [ %.022.i116, %.critedge.i ] ; 3 uses
  %i.v = phi ptr [ %i.u, %sdev_format_header.exit ], [ %i.m, %.critedge.i ]
  %i.w = getelementptr i8, ptr %i.b, i64 %.0.i95119
  %i.x = sub nuw nsw i64 128, %.0.i95119
  %i.y = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.5) #10
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %.0.i95119, %i.z            ; 4 uses
  %.not87 = icmp ult i64 %i.aa, 128
  br i1 %.not87, label %.critedge, label %bb.g, !prof !15

bb.g:                                             ; preds = %sdev_format_header.exit.thread
  tail call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #8, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 195, i32 2305, i64 16) #8, !srcloc !32
  tail call void asm sideeffect "587: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 587b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 587) #8, !srcloc !33
  br label %bb.o

.critedge:                                        ; preds = %sdev_format_header.exit.thread
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = sub nuw nsw i64 128, %i.aa
  %i.ad = getelementptr i8, ptr %0, i64 164       ; 3 uses
  %i.ae = tail call fastcc i64 @scsi_format_opcode_name(ptr noundef %i.ab, i64 noundef %i.ac, ptr noundef %i.ad) #12, !srcloc !34
  %i.af = add nsw i64 %i.ae, %i.aa                ; 7 uses
  %.not88 = icmp ult i64 %i.af, 128
  br i1 %.not88, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge
  %i.ag = getelementptr i8, ptr %0, i64 156       ; 4 uses
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = icmp ugt i16 %i.ah, 16
  br i1 %i.ai, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.af
  %i.ak = sub nuw nsw i64 128, %i.af
  %i.al = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.6) #10 ; 0 uses
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 456
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %i.an, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) #11
  %i.ao = load i16, ptr %i.ag, align 4            ; 2 uses
  %.not121 = icmp eq i16 %i.ao, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph
end_hunk_0
begin_hunk_1_@scsi_print_result:bb.a
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #10
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %.0.i95115, %i.af           ; 2 uses
  %.not81 = icmp ult i64 %i.ag, 128
  br i1 %.not81, label %.critedge, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "602: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 602b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 602) #8, !srcloc !49
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 403, i32 2305, i64 16) #8, !srcloc !50
  tail call void asm sideeffect "603: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 603b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 603) #8, !srcloc !51
  br label %bb.r

.critedge:                                        ; preds = %bb.g, %sdev_format_header.exit.thread
  %.0 = phi i64 [ %.0.i95115, %sdev_format_header.exit.thread ], [ %i.ag, %bb.g ] ; 3 uses
  %.not82 = icmp eq ptr %i.a, null
  %i.ah = getelementptr i8, ptr %i.k, i64 %.0     ; 2 uses
  %i.ai = sub nuw nsw i64 128, %.0                ; 2 uses
  br i1 %.not82, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a) #10
  br label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.12, i32 noundef %2) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.in = phi i32 [ %i.aj, %bb.i ], [ %i.ak, %bb.j ]
  %.pn = sext i32 %.pn.in to i64
  %.1 = add nsw i64 %.0, %.pn                     ; 4 uses
  %.not83 = icmp ult i64 %.1, 128
  br i1 %.not83, label %.critedge89, label %bb.l, !prof !15

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "604: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 604b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 604) #8, !srcloc !52
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 412, i32 2305, i64 16) #8, !srcloc !53
  tail call void asm sideeffect "605: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 605b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 605) #8, !srcloc !54
  br label %bb.r

.critedge89:                                      ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.k, i64 %.1
  %i.am = sub nuw nsw i64 128, %.1
  %i.an = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.13) #10
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %.1, %i.ao                  ; 4 uses
  %.not84 = icmp ult i64 %i.ap, 128
  br i1 %.not84, label %.critedge91, label %bb.m, !prof !15

bb.m:                                             ; preds = %.critedge89
  tail call void asm sideeffect "606: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 606b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 606) #8, !srcloc !55
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 416, i32 2305, i64 16) #8, !srcloc !56
  tail call void asm sideeffect "607: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 607b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 607) #8, !srcloc !57
  br label %bb.r

.critedge91:                                      ; preds = %.critedge89
  %.not85 = icmp eq ptr %i.d, null
  %i.aq = getelementptr i8, ptr %i.k, i64 %i.ap   ; 2 uses
  %i.ar = sub nuw nsw i64 128, %i.ap              ; 2 uses
  br i1 %.not85, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge91
  %i.as = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.d) #10
  br label %bb.p

bb.o:                                             ; preds = %.critedge91
  %i.at = load i32, ptr %i.b, align 8
  %i.au = lshr i32 %i.at, 16
  %i.av = and i32 %i.au, 255
  %i.aw = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.15, i32 noundef %i.av) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn86.in = phi i32 [ %i.as, %bb.n ], [ %i.aw, %bb.o ]
  %.pn86 = sext i32 %.pn86.in to i64
  %.2 = add nsw i64 %i.ap, %.pn86                 ; 4 uses
  %.not87 = icmp ult i64 %.2, 128
  br i1 %.not87, label %.critedge93, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "608: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 608b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 608) #8, !srcloc !58
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 425, i32 2305, i64 16) #8, !srcloc !59
  tail call void asm sideeffect "609: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 609b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 609) #8, !srcloc !60
  br label %bb.r

.critedge93:                                      ; preds = %bb.p
  %i.ax = getelementptr i8, ptr %i.k, i64 %.2
  %i.ay = sub nuw nsw i64 128, %.2
  %i.az = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.16) #10
  %i.ba = sext i32 %i.az to i64
  %i.bb = add nsw i64 %.2, %i.ba                  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.k, i64 %i.bb
  %i.bd = sub nsw i64 128, %i.bb
  %i.be = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.17, i64 noundef %i.i) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.l, %bb.h, %.critedge93, %sdev_format_header.exit
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 456
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %i.bg, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.k) #11
  tail call void @kfree(ptr noundef nonnull %i.k) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_mlreturn_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_hostbyte_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @scsi_opcode_sa_name(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @scsi_format_extd_sense(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %i.b = call ptr @scsi_extd_sense_format(i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.b) #10
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = sub i64 %1, %i.e
  %i.h = zext i8 %3 to i32
  %i.i = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.d, i32 noundef %i.h) #10 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = zext i8 %2 to i32
  %i.k = icmp slt i8 %2, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.33) #10
  %i.m = sext i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ]     ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 %.0
  %i.o = sub i64 %1, %.0
  %i.p = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.34, i32 noundef %i.j) #10
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.0, %i.q                    ; 4 uses
  %i.s = zext i8 %3 to i32
  %i.t = icmp slt i8 %3, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = sub i64 %1, %i.r
  %i.w = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.33) #10
  %i.x = sext i32 %i.w to i64
  %i.y = add nsw i64 %i.r, %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.y, %bb.g ], [ %i.r, %bb.f ]  ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %.1
  %i.aa = sub i64 %1, %.1
  %i.ab = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.35, i32 noundef %i.s) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_sense_key_string(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_extd_sense_format(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!12 = !{i64 2156803532, i64 2156803407}
!13 = !{i64 2156804055, i64 2156805110, i64 2156805143, i64 2156805178, i64 2156805194, i64 2156806121, i64 2156806179, i64 2156806228, i64 2156806038, i64 2156805253, i64 2156805285, i64 2156805368}
!14 = !{i64 2156806534, i64 2156806410}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 2138898008, i32 8585640}
!18 = !{i64 2156807813, i64 2156807688}
!19 = !{i64 2156808336, i64 2156809391, i64 2156809424, i64 2156809459, i64 2156809475, i64 2156810402, i64 2156810460, i64 2156810509, i64 2156810319, i64 2156809534, i64 2156809566, i64 2156809649}
!20 = !{i64 2156810815, i64 2156810691}
!21 = !{!"branch_weights", !"expected", i32 2138898009, i32 8585639}
!22 = distinct !{!22, !16}
!23 = !{i64 3691}
!24 = !{i64 2156816462, i64 2156816337}
!25 = !{i64 2156816985, i64 2156818037, i64 2156818070, i64 2156818105, i64 2156818121, i64 2156819048, i64 2156819106, i64 2156819155, i64 2156818965, i64 2156818180, i64 2156818212, i64 2156818295}
!26 = !{i64 2156819462, i64 2156819338}
!27 = !{i64 2156820737, i64 2156820612}
!28 = !{i64 2156821260, i64 2156822312, i64 2156822345, i64 2156822380, i64 2156822396, i64 2156823323, i64 2156823381, i64 2156823430, i64 2156823240, i64 2156822455, i64 2156822487, i64 2156822570}
!29 = !{i64 2156823737, i64 2156823613}
!30 = distinct !{!30, !16}
!31 = !{i64 2156827007, i64 2156826882}
!32 = !{i64 2156827530, i64 2156828585, i64 2156828618, i64 2156828653, i64 2156828669, i64 2156829596, i64 2156829654, i64 2156829703, i64 2156829513, i64 2156828728, i64 2156828760, i64 2156828843}
!33 = !{i64 2156830010, i64 2156829886}
!34 = !{i64 4508}
!35 = !{i64 4979}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{i64 2156836670, i64 2156836545}
!38 = !{i64 2156837193, i64 2156842313, i64 2156842346, i64 2156842381, i64 2156842397, i64 2156843324, i64 2156843382, i64 2156843431, i64 2156843241, i64 2156842456, i64 2156842488, i64 2156842571}
!39 = !{i64 2156843738, i64 2156843614}
!40 = !{i64 2156845378, i64 2156845253}
!41 = !{i64 2156845901, i64 2156846960, i64 2156846993, i64 2156847028, i64 2156847044, i64 2156847971, i64 2156848029, i64 2156848078, i64 2156847888, i64 2156847103, i64 2156847135, i64 2156847218}
!42 = !{i64 2156848385, i64 2156848261}
!43 = !{i64 9205}
!44 = !{i64 8409}
!45 = !{i64 9480}
!46 = distinct !{!46, !16}
!47 = !{i64 8898}
!48 = !{i64 9684}
!49 = !{i64 2156863690, i64 2156863565}
!50 = !{i64 2156864213, i64 2156865268, i64 2156865301, i64 2156865336, i64 2156865352, i64 2156866279, i64 2156866337, i64 2156866386, i64 2156866196, i64 2156865411, i64 2156865443, i64 2156865526}
!51 = !{i64 2156866693, i64 2156866569}
!52 = !{i64 2156867972, i64 2156867847}
!53 = !{i64 2156868495, i64 2156869550, i64 2156869583, i64 2156869618, i64 2156869634, i64 2156870561, i64 2156870619, i64 2156870668, i64 2156870478, i64 2156869693, i64 2156869725, i64 2156869808}
!54 = !{i64 2156870975, i64 2156870851}
!55 = !{i64 2156872254, i64 2156872129}
!56 = !{i64 2156872777, i64 2156873832, i64 2156873865, i64 2156873900, i64 2156873916, i64 2156874843, i64 2156874901, i64 2156874950, i64 2156874760, i64 2156873975, i64 2156874007, i64 2156874090}
!57 = !{i64 2156875257, i64 2156875133}
!58 = !{i64 2156876574, i64 2156876449}
!59 = !{i64 2156877097, i64 2156878152, i64 2156878185, i64 2156878220, i64 2156878236, i64 2156879163, i64 2156879221, i64 2156879270, i64 2156879080, i64 2156878295, i64 2156878327, i64 2156878410}
!60 = !{i64 2156879577, i64 2156879453}
end_hunk_1

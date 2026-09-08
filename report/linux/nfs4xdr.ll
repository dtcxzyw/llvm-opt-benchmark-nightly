Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4xdr?download=true
inline.NumInlined: 801
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@decode_sequence:bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load i64, ptr %2, align 1
  %i.r = load i64, ptr %i.p, align 1
  %i.s = xor i64 %i.q, %i.r
  %i.t = getelementptr i8, ptr %2, i64 8
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.t, align 1
  %i.w = load i64, ptr %i.u, align 1
  %i.x = xor i64 %i.v, %i.w
  %i.y = or i64 %i.s, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.h, label %decode_sessionid.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 20) #11 ; 6 uses
  %.not31 = icmp eq ptr %i.ab, null
  br i1 %.not31, label %decode_sessionid.exit.thread, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  %.not32 = icmp eq i32 %i.ad, %i.ag
  br i1 %.not32, label %bb.j, label %decode_sessionid.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.ab, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = getelementptr i8, ptr %i.ae, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %.not33 = icmp eq i32 %i.aj, %i.al
  br i1 %.not33, label %bb.k, label %decode_sessionid.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.ab, i64 8
  %i.an = getelementptr i8, ptr %i.ab, i64 12
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = getelementptr i8, ptr %1, i64 32
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.ab, i64 16
  %i.as = load i32, ptr %i.an, align 4
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = getelementptr i8, ptr %1, i64 36
  store i32 %i.at, ptr %i.au, align 4
  %i.av = load i32, ptr %i.ar, align 4
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = getelementptr i8, ptr %1, i64 28
  store i32 %i.aw, ptr %i.ax, align 4
  br label %decode_sessionid.exit.thread

decode_sessionid.exit.thread:                     ; preds = %bb.c, %bb.f, %decode_op_hdr.exit.thread3, %decode_op_hdr.exit, %bb.h, %bb.j, %bb.i, %bb.g, %bb.k
  %.1 = phi i32 [ -5, %bb.h ], [ 0, %bb.k ], [ -121, %bb.j ], [ -121, %bb.g ], [ -121, %bb.i ], [ -5, %decode_op_hdr.exit.thread3 ], [ %i.l, %decode_op_hdr.exit ], [ -5, %bb.c ], [ -121, %bb.f ] ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 24
  store i32 %.1, ptr %i.ay, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %decode_sessionid.exit.thread
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %decode_sessionid.exit.thread ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_putfh(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_op_hdr.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 369098752
  br i1 %.not20.i.i, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 22, i32 noundef %i.e) #12, !srcloc !41
  %i.f = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.e) #11
  br label %decode_op_hdr.exit

bb.e:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef range(i32 3, 59) 22) #12, !srcloc !40
  br label %decode_op_hdr.exit

decode_op_hdr.exit:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ -121, %bb.e ], [ %i.f, %bb.d ], [ -5, %bb.a ]
  ret i32 %.sink.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nfs4_stat_to_errno(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) %1, i32 noundef %2) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_xdr_status, i64 8), i1 false) #10
          to label %arch_static_branch.exit [label %arch_test_bit.exit.i], !srcloc !17

arch_test_bit.exit.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !249
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #10, !srcloc !19 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_xdr_status, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_nfs4_xdr_status(ptr noundef %i.i, ptr noundef %0, i32 noundef range(i32 3, 59) %1, i32 noundef %2) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !22
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #10, !srcloc !23
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %arch_test_bit.exit.i, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 3, 59) %2) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_xdr_bad_operation, i64 8), i1 false) #10
          to label %arch_static_branch.exit [label %arch_test_bit.exit.i], !srcloc !17

arch_test_bit.exit.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !250
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #10, !srcloc !19 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !21
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs4_xdr_bad_operation, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_nfs4_xdr_bad_operation(ptr noundef %i.i, ptr noundef %0, i32 noundef %1, i32 noundef range(i32 3, 59) %2) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !22
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #10, !srcloc !23
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %arch_test_bit.exit.i, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_nfs4_xdr_status(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_nfs4_xdr_bad_operation(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_getattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef range(i64 2, 4) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %xdr_stream_encode_u32.exit.i.i, !prof !12

xdr_stream_encode_u32.exit.i.i:                   ; preds = %bb.a
  store i32 150994944, ptr %i.b, align 4
  br label %encode_op_hdr.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_op_hdr.exit

encode_op_hdr.exit:                               ; preds = %xdr_stream_encode_u32.exit.i.i, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !39
  %i.c = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr i8, ptr %4, i64 32         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, 114
  store i32 %i.h, ptr %i.f, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %mask_bitmap4.exit, label %.preheader

.preheader:                                       ; preds = %encode_op_hdr.exit
  %i.i = add nsw i64 %3, -1                       ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.prol.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.m = getelementptr [4 x i8], ptr %2, i64 %i.i
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %bb.d, %.lr.ph.i
  %.01719.i.lcssa = phi i64 [ %3, %bb.c ], [ %i.i, %bb.d ], [ %i.w, %.lr.ph.i ] ; 3 uses
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.021.i.prol = phi i64 [ %i.p, %.lr.ph.i.prol ], [ %.01719.i.lcssa, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = add nsw i64 %.021.i.prol, -1             ; 4 uses
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr [4 x i8], ptr %2, i64 %i.p
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, %i.r
  %i.v = getelementptr [4 x i8], ptr %i.a, i64 %i.p
  store i32 %i.u, ptr %i.v, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.01719.i.lcssa
  br i1 %prol.iter.cmp.not, label %mask_bitmap4.exit, label %.lr.ph.i.prol, !llvm.loop !251

.lr.ph.i.prol.loopexit:                           ; preds = %bb.c, %.preheader
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph.i.prol.loopexit
  %i.w = add nsw i64 %3, -2                       ; 4 uses
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge2.i.1, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.aa = getelementptr [4 x i8], ptr %2, i64 %i.w
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.critedge2.i.1, label %.lr.ph.i.preheader

.critedge2.i.1:                                   ; preds = %bb.d, %.preheader.1
  %.not.i.1 = icmp eq i64 %i.w, 0
  br i1 %.not.i.1, label %.critedge.i, label %.preheader.2

.preheader.2:                                     ; preds = %.critedge2.i.1
  %i.ad = add nsw i64 %3, -3                      ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.2
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %i.ad
  %i.ai = load i32, ptr %i.ah, align 4
  %.not18.i.3 = icmp eq i32 %i.ai, 0
  br i1 %.not18.i.3, label %.critedge.i, label %.lr.ph.i.preheader

mask_bitmap4.exit:                                ; preds = %.lr.ph.i.prol, %encode_op_hdr.exit
  %.1 = phi i64 [ %3, %encode_op_hdr.exit ], [ %.01719.i.lcssa, %.lr.ph.i.prol ]
  %.0 = phi ptr [ %1, %encode_op_hdr.exit ], [ %i.a, %.lr.ph.i.prol ] ; 3 uses
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %mask_bitmap4.exit, %bb.e
  %.01420.i = phi i64 [ %i.an, %bb.e ], [ %.1, %mask_bitmap4.exit ] ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %.0, i64 %.01420.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 0                    ; 3 uses
  br i1 %i.am, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i16
  %i.an = add nsw i64 %.01420.i, -1               ; 2 uses
  %.not.i17 = icmp eq i64 %i.an, 0
  br i1 %.not.i17, label %.critedge.i, label %.lr.ph.i16, !llvm.loop !252

.critedge.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.critedge2.i.1, %.lr.ph.i, %.preheader.2, %bb.e, %.lr.ph.i16
  %.021 = phi ptr [ %.0, %bb.e ], [ %.0, %.lr.ph.i16 ], [ %i.a, %.preheader.2 ], [ %i.a, %.lr.ph.i ], [ %i.a, %.critedge2.i.1 ], [ %i.a, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.014.lcssa.i = phi i64 [ 0, %bb.e ], [ %.01420.i, %.lr.ph.i16 ], [ 0, %.preheader.2 ], [ 0, %.lr.ph.i ], [ 0, %.critedge2.i.1 ], [ 0, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.not.lcssa.i = phi i1 [ %i.am, %bb.e ], [ %i.am, %.lr.ph.i16 ], [ true, %.preheader.2 ], [ true, %.lr.ph.i ], [ true, %.critedge2.i.1 ], [ true, %.lr.ph.i.prol.loopexit ]
  %i.ao = shl nuw nsw i64 %.014.lcssa.i, 2
  %i.ap = add nuw nsw i64 %i.ao, 4
  %i.aq = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.ap) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %xdr_stream_encode_uint32_array.exit.thread.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %.critedge.i
  %i.ar = trunc nuw nsw i64 %.014.lcssa.i to i32
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.aq, align 4
  br i1 %.not.lcssa.i, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.at = add i64 %.014.lcssa.i, -1
  %xtraiter37 = and i64 %.014.lcssa.i, 3          ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.pn20.i.i.prol = phi ptr [ %.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.aq, %.lr.ph.i.i.preheader ]
  %.01319.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i.prol ], [ %.014.lcssa.i, %.lr.ph.i.i.preheader ]
  %.01418.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %.021, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.0.i.i.prol = getelementptr i8, ptr %.pn20.i.i.prol, i64 4 ; 3 uses
  %i.au = load i32, ptr %.01418.i.i.prol, align 4
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  store i32 %i.av, ptr %.0.i.i.prol, align 4
  %i.aw = getelementptr i8, ptr %.01418.i.i.prol, i64 4 ; 2 uses
  %i.ax = add i64 %.01319.i.i.prol, -1            ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !253

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.pn20.i.i.unr = phi ptr [ %i.aq, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.01319.i.i.unr = phi i64 [ %.014.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %.01418.i.i.unr = phi ptr [ %.021, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.at, 3
  br i1 %i.ay, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.pn20.i.i = phi ptr [ %.0.i.i.3, %.lr.ph.i.i ], [ %.pn20.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01319.i.i = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %.01319.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01418.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.01418.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0.i.i = getelementptr i8, ptr %.pn20.i.i, i64 4
  %i.az = load i32, ptr %.01418.i.i, align 4
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %.0.i.i, align 4
  %i.bb = getelementptr i8, ptr %.01418.i.i, i64 4
  %.0.i.i.1 = getelementptr i8, ptr %.pn20.i.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %.0.i.i.1, align 4
  %i.be = getelementptr i8, ptr %.01418.i.i, i64 8
  %.0.i.i.2 = getelementptr i8, ptr %.pn20.i.i, i64 12
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  store i32 %i.bg, ptr %.0.i.i.2, align 4
  %i.bh = getelementptr i8, ptr %.01418.i.i, i64 12
  %.0.i.i.3 = getelementptr i8, ptr %.pn20.i.i, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  store i32 %i.bj, ptr %.0.i.i.3, align 4
  %i.bk = getelementptr i8, ptr %.01418.i.i, i64 16
  %i.bl = add i64 %.01319.i.i, -4                 ; 2 uses
  %.not16.i.i.3 = icmp eq i64 %i.bl, 0
  br i1 %.not16.i.i.3, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i, !llvm.loop !1

xdr_stream_encode_uint32_array.exit.thread.i:     ; preds = %.critedge.i
  tail call void asm sideeffect "1753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1753) #10, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 1002, i32 2307, i64 16) #10, !srcloc !51
  tail call void asm sideeffect "1754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1754b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1754) #10, !srcloc !52
  br label %xdr_encode_bitmap4.exit

xdr_encode_bitmap4.exit:                          ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.f, %xdr_stream_encode_uint32_array.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @decode_getfattr_generic(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.b = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %decode_op_hdr.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.c, 150994944
  br i1 %.not20.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.e, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread5, label %decode_op_hdr.exit, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.c)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.f, i32 noundef range(i32 3, 59) 9) #12, !srcloc !40
  br label %decode_op_hdr.exit.thread

decode_op_hdr.exit:                               ; preds = %bb.c
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.e)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 9, i32 noundef %i.g) #12, !srcloc !41
  %i.h = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.g) #11 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %decode_op_hdr.exit.thread, label %decode_op_hdr.exit.thread5

decode_op_hdr.exit.thread5:                       ; preds = %bb.c, %decode_op_hdr.exit
  %i.j = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %decode_op_hdr.exit.thread, label %bb.e, !prof !12

bb.e:                                             ; preds = %decode_op_hdr.exit.thread5
  %i.k = load i32, ptr %i.j, align 4
  %.fr3.i = freeze i32 %i.k                       ; 3 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.fr3.i) ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %i.o = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.n) #11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %decode_op_hdr.exit.thread, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %.not22.i.i.i = icmp ugt i32 %i.l, 3
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %.fr3.i, 50331648
  br i1 %.not.i, label %.lr.ph.i.i.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %i.m
  %i.q = sub nuw nsw i64 12, %i.n
  call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.q, i1 false)
  %.not2330.i.i.i = icmp eq i32 %.fr3.i, 0
  br i1 %.not2330.i.i.i, label %select.unfold, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i10.i = phi i64 [ %i.m, %bb.h ], [ 3, %bb.g ], [ -90, %bb.f ] ; 2 uses
  %.016.i.i9.i = phi i64 [ %i.m, %bb.h ], [ 3, %bb.g ], [ 3, %bb.f ] ; 4 uses
  %i.r = add nsw i64 %.016.i.i9.i, -1
  %xtraiter = and i64 %.016.i.i9.i, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01533.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.132.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.prol ], [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ]
  %.01731.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.s = load i32, ptr %.01533.i.i.i.prol, align 4
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %.01731.i.i.i.prol, align 4
  %i.u = getelementptr i8, ptr %.01533.i.i.i.prol, i64 4 ; 2 uses
  %i.v = getelementptr i8, ptr %.01731.i.i.i.prol, i64 4 ; 2 uses
  %i.w = add nsw i64 %.132.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !254

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.01533.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader.i ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.132.i.i.i.unr = phi i64 [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.01731.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp ult i64 %i.r, 3
  br i1 %i.x, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01533.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.01533.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.132.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i ], [ %.132.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01731.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.01731.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.y = load i32, ptr %.01533.i.i.i, align 4
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %.01731.i.i.i, align 4
  %i.aa = getelementptr i8, ptr %.01533.i.i.i, i64 4
  %i.ab = getelementptr i8, ptr %.01731.i.i.i, i64 4
  %i.ac = load i32, ptr %i.aa, align 4
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr i8, ptr %.01533.i.i.i, i64 8
  %i.af = getelementptr i8, ptr %.01731.i.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr i8, ptr %.01533.i.i.i, i64 12
  %i.aj = getelementptr i8, ptr %.01731.i.i.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr i8, ptr %.01533.i.i.i, i64 16
  %i.an = getelementptr i8, ptr %.01731.i.i.i, i64 16
  %i.ao = add nsw i64 %.132.i.i.i, -4             ; 2 uses
  %.not23.i.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not23.i.i.i.3, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

xdr_stream_decode_uint32_array.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.ap = icmp sgt i64 %.0.i.i10.i, -1
  br i1 %i.ap, label %select.unfold, label %bb.i, !prof !15

bb.i:                                             ; preds = %xdr_stream_decode_uint32_array.exit.i.i
  %.not.i.i17 = icmp eq i64 %.0.i.i10.i, -90
  br i1 %.not.i.i17, label %select.unfold, label %decode_op_hdr.exit.thread

select.unfold:                                    ; preds = %bb.i, %xdr_stream_decode_uint32_array.exit.i.i, %bb.h
  %i.aq = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aq, null
  br i1 %.not.i18, label %decode_op_hdr.exit.thread, label %bb.j, !prof !12

bb.j:                                             ; preds = %select.unfold
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call i32 @xdr_stream_pos(ptr noundef %0) #11
  %i.at = call fastcc i32 @decode_getfattr_attrs(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #12, !srcloc !255 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %decode_op_hdr.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.aw = add i32 %i.av, 3
  %i.ax = tail call i32 @xdr_stream_pos(ptr noundef %0) #11
  %i.ay = sub i32 %i.ax, %i.as
  %.not.unshifted.i = xor i32 %i.ay, %i.aw
  %.not.i19 = icmp ult i32 %.not.unshifted.i, 4
  %..i = select i1 %.not.i19, i32 0, i32 -5, !prof !16
  br label %decode_op_hdr.exit.thread

decode_op_hdr.exit.thread:                        ; preds = %decode_op_hdr.exit.thread5, %bb.i, %bb.e, %select.unfold, %bb.a, %bb.d, %bb.j, %decode_op_hdr.exit, %bb.k
  %.0 = phi i32 [ %i.h, %decode_op_hdr.exit ], [ -5, %select.unfold ], [ -121, %bb.d ], [ %i.at, %bb.j ], [ %..i, %bb.k ], [ -5, %bb.a ], [ -5, %bb.e ], [ -5, %bb.i ], [ -5, %decode_op_hdr.exit.thread5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_open(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %xdr_stream_encode_u32.exit.i.i, !prof !12

xdr_stream_encode_u32.exit.i.i:                   ; preds = %bb.a
  store i32 301989888, ptr %i.a, align 4
  br label %encode_op_hdr.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_op_hdr.exit

encode_op_hdr.exit:                               ; preds = %xdr_stream_encode_u32.exit.i.i, %bb.b
  %i.b = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 61
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %encode_op_hdr.exit
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.d, label %xdr_stream_encode_u32.exit.i.i.i, !prof !12

xdr_stream_encode_u32.exit.i.i.i:                 ; preds = %bb.c
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.n, ptr %i.m, align 4
  br label %encode_nfs4_seqid.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_nfs4_seqid.exit.i

bb.e:                                             ; preds = %encode_op_hdr.exit
  %i.o = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i4.i.i, label %bb.f, label %xdr_stream_encode_u32.exit.i5.i.i, !prof !12

xdr_stream_encode_u32.exit.i5.i.i:                ; preds = %bb.e
  store i32 0, ptr %i.o, align 4
  br label %encode_nfs4_seqid.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_nfs4_seqid.exit.i

encode_nfs4_seqid.exit.i:                         ; preds = %bb.f, %xdr_stream_encode_u32.exit.i5.i.i, %bb.d, %xdr_stream_encode_u32.exit.i.i.i
  %i.p = getelementptr i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i17, label %bb.g, label %encode_share_access.exit.i, !prof !12

bb.g:                                             ; preds = %encode_nfs4_seqid.exit.i
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

encode_share_access.exit.i:                       ; preds = %encode_nfs4_seqid.exit.i
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = getelementptr i8, ptr %i.r, i64 4
  store i32 %i.s, ptr %i.r, align 4
  store i32 0, ptr %i.t, align 4
  %i.u = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 40) #11 ; 4 uses
  %.not.i15.i = icmp eq ptr %i.u, null
  br i1 %.not.i15.i, label %bb.h, label %encode_openhdr.exit, !prof !12

bb.h:                                             ; preds = %encode_share_access.exit.i
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

encode_openhdr.exit:                              ; preds = %encode_share_access.exit.i
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i64 @llvm.bswap.i64(i64 %i.w)
  store i64 %i.x, ptr %i.u, align 1
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %i.z = getelementptr i8, ptr %i.u, i64 12
  store i32 469762048, ptr %i.y, align 4
  %i.aa = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %i.z, ptr noundef nonnull @.str.75, i32 noundef 8) #11 ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 104       ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 240
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = getelementptr i8, ptr %i.aa, i64 4
  store i32 %i.af, ptr %i.aa, align 4
  %i.ah = getelementptr i8, ptr %1, i64 56
  %i.ai = getelementptr i8, ptr %1, i64 64
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj)
  store i64 %i.ak, ptr %i.ag, align 4
  %i.al = getelementptr i8, ptr %i.aa, i64 12
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  store i64 %i.an, ptr %i.al, align 4
  %i.ao = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i18, label %bb.i, label %reserve_space.exit.i, !prof !12

bb.i:                                             ; preds = %encode_openhdr.exit
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i:                             ; preds = %encode_openhdr.exit
  %i.ap = getelementptr i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 64
  %cond.i = icmp eq i32 %i.ar, 0
  br i1 %cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %reserve_space.exit.i
  store i32 0, ptr %i.ao, align 4
  br label %encode_opentype.exit

bb.k:                                             ; preds = %reserve_space.exit.i
  store i32 16777216, ptr %i.ao, align 4
  %i.as = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 5 uses
  %.not.i.i.i19 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i19, label %bb.l, label %reserve_space.exit.i.i, !prof !12

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i.i:                           ; preds = %bb.k
  %i.at = getelementptr i8, ptr %1, i64 132
  %i.au = load i32, ptr %i.at, align 4
  switch i32 %i.au, label %encode_opentype.exit [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.m:                                             ; preds = %reserve_space.exit.i.i
  store i32 0, ptr %i.as, align 4
  %i.av = getelementptr i8, ptr %1, i64 72
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %1, i64 136
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %1, i64 144
  %i.ba = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 304
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb) #12, !srcloc !256
  br label %encode_opentype.exit

bb.n:                                             ; preds = %reserve_space.exit.i.i
  store i32 16777216, ptr %i.as, align 4
  %i.bc = getelementptr i8, ptr %1, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %1, i64 136
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %1, i64 144
  %i.bh = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 304
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef %i.bi) #12, !srcloc !257
  br label %encode_opentype.exit

bb.o:                                             ; preds = %reserve_space.exit.i.i
  store i32 33554432, ptr %i.as, align 4
  %i.bj = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef range(i64 8, 17) 8) #11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i.i, label %xdr_stream_encode_opaque_fixed.exit.i.i.i.i, !prof !12

xdr_stream_encode_opaque_fixed.exit.i.i.i.i:      ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %1, i64 80
  %i.bl = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %i.bj, ptr noundef %i.bk, i32 noundef 8) #11 ; 0 uses
  br label %encode_opentype.exit

xdr_stream_encode_opaque_fixed.exit.thread.i.i.i.i: ; preds = %bb.o
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #10, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.74, i32 1871, i32 2307, i64 16) #10, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #10, !srcloc !33
  br label %encode_opentype.exit

bb.p:                                             ; preds = %reserve_space.exit.i.i
  store i32 50331648, ptr %i.as, align 4
  %i.bm = getelementptr i8, ptr %1, i64 72
  %i.bn = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef range(i64 8, 17) 8) #11 ; 2 uses
  %.not.i.i.i28.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i28.i.i, label %xdr_stream_encode_opaque_fixed.exit.thread.i.i30.i.i, label %xdr_stream_encode_opaque_fixed.exit.i.i29.i.i, !prof !12

xdr_stream_encode_opaque_fixed.exit.i.i29.i.i:    ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %1, i64 80
  %i.bp = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %i.bn, ptr noundef %i.bo, i32 noundef 8) #11 ; 0 uses
  br label %encode_nfs4_verifier.exit31.i.i

xdr_stream_encode_opaque_fixed.exit.thread.i.i30.i.i: ; preds = %bb.p
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #10, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.74, i32 1871, i32 2307, i64 16) #10, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #10, !srcloc !33
  br label %encode_nfs4_verifier.exit31.i.i

encode_nfs4_verifier.exit31.i.i:                  ; preds = %xdr_stream_encode_opaque_fixed.exit.thread.i.i30.i.i, %xdr_stream_encode_opaque_fixed.exit.i.i29.i.i
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr i8, ptr %1, i64 136
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %1, i64 144
  %i.bu = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 328
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bv) #12, !srcloc !258
  br label %encode_opentype.exit

encode_opentype.exit:                             ; preds = %bb.j, %reserve_space.exit.i.i, %bb.m, %bb.n, %xdr_stream_encode_opaque_fixed.exit.i.i.i.i, %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i.i, %encode_nfs4_verifier.exit31.i.i
  %i.bw = getelementptr i8, ptr %1, i64 128
  %i.bx = load i32, ptr %i.bw, align 8
  switch i32 %i.bx, label %bb.ae [
    i32 0, label %bb.q
    i32 1, label %bb.t
    i32 2, label %bb.x
    i32 4, label %bb.aa
    i32 5, label %bb.ac
  ]

bb.q:                                             ; preds = %encode_opentype.exit
  %i.by = getelementptr i8, ptr %1, i64 96
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i20, label %bb.r, label %reserve_space.exit.i21, !prof !12

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i21:                           ; preds = %bb.q
  store i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bz, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = zext i32 %i.cc to i64
  %i.cg = add nuw nsw i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 8589934588
  %i.ci = add nuw nsw i64 %i.ch, 4
  %i.cj = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.ci) #11 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i22, label %bb.s, label %xdr_stream_encode_opaque.exit.i.i, !prof !12

xdr_stream_encode_opaque.exit.i.i:                ; preds = %reserve_space.exit.i21
  %i.ck = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %i.cj, ptr noundef %i.ce, i32 noundef %i.cc) #11 ; 0 uses
  br label %encode_claim_null.exit

bb.s:                                             ; preds = %reserve_space.exit.i21
  tail call void asm sideeffect "1747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1747b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1747) #10, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 980, i32 2307, i64 16) #10, !srcloc !29
  tail call void asm sideeffect "1748: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1748b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1748) #10, !srcloc !30
  br label %encode_claim_null.exit

bb.t:                                             ; preds = %encode_opentype.exit
  %i.cl = getelementptr i8, ptr %1, i64 72
  %i.cm = load i32, ptr %i.cl, align 8            ; 2 uses
  %i.cn = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i23, label %bb.u, label %reserve_space.exit.i24, !prof !12

bb.u:                                             ; preds = %bb.t
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i24:                           ; preds = %bb.t
  store i32 16777216, ptr %i.cn, align 4
  %i.co = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i25, label %bb.v, label %reserve_space.exit.i.i26, !prof !12

bb.v:                                             ; preds = %reserve_space.exit.i24
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i.i26:                         ; preds = %reserve_space.exit.i24
  switch i32 %i.cm, label %bb.w [
    i32 0, label %encode_claim_previous.exit
    i32 1, label %encode_claim_previous.exit
    i32 2, label %encode_claim_previous.exit
    i32 4, label %encode_claim_previous.exit
    i32 5, label %encode_claim_previous.exit
  ]

bb.w:                                             ; preds = %reserve_space.exit.i.i26
  tail call void asm sideeffect "1761: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1761b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1761) #10, !srcloc !259
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 1490, i32 0, i64 16) #10, !srcloc !260
  unreachable

encode_claim_previous.exit:                       ; preds = %reserve_space.exit.i.i26, %reserve_space.exit.i.i26, %reserve_space.exit.i.i26, %reserve_space.exit.i.i26, %reserve_space.exit.i.i26
  %i.cp = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  store i32 %i.cp, ptr %i.co, align 4
  br label %encode_claim_null.exit

bb.x:                                             ; preds = %encode_opentype.exit
  %i.cq = getelementptr i8, ptr %1, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr i8, ptr %1, i64 72
  %i.ct = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i27, label %bb.y, label %reserve_space.exit.i28, !prof !12

bb.y:                                             ; preds = %bb.x
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i28:                           ; preds = %bb.x
  store i32 33554432, ptr %i.ct, align 4
  %i.cu = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i29, label %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i, label %xdr_stream_encode_opaque_fixed.exit.i.i.i, !prof !12

xdr_stream_encode_opaque_fixed.exit.i.i.i:        ; preds = %reserve_space.exit.i28
  %i.cv = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %i.cu, ptr noundef %i.cs, i32 noundef 16) #11 ; 0 uses
  br label %encode_nfs4_stateid.exit.i

xdr_stream_encode_opaque_fixed.exit.thread.i.i.i: ; preds = %reserve_space.exit.i28
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #10, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.74, i32 1871, i32 2307, i64 16) #10, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #10, !srcloc !33
  br label %encode_nfs4_stateid.exit.i

encode_nfs4_stateid.exit.i:                       ; preds = %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i, %xdr_stream_encode_opaque_fixed.exit.i.i.i
  %i.cw = getelementptr i8, ptr %i.cr, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cr, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = zext i32 %i.cx to i64
  %i.db = add nuw nsw i64 %i.da, 3
  %i.dc = and i64 %i.db, 8589934588
  %i.dd = add nuw nsw i64 %i.dc, 4
  %i.de = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.dd) #11 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i30, label %bb.z, label %xdr_stream_encode_opaque.exit.i.i31, !prof !12

xdr_stream_encode_opaque.exit.i.i31:              ; preds = %encode_nfs4_stateid.exit.i
  %i.df = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %i.de, ptr noundef %i.cz, i32 noundef %i.cx) #11 ; 0 uses
  br label %encode_claim_null.exit

bb.z:                                             ; preds = %encode_nfs4_stateid.exit.i
  tail call void asm sideeffect "1747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1747b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1747) #10, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 980, i32 2307, i64 16) #10, !srcloc !29
  tail call void asm sideeffect "1748: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1748b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1748) #10, !srcloc !30
  br label %encode_claim_null.exit

bb.aa:                                            ; preds = %encode_opentype.exit
  %i.dg = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i32, label %bb.ab, label %encode_claim_fh.exit, !prof !12

bb.ab:                                            ; preds = %bb.aa
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

encode_claim_fh.exit:                             ; preds = %bb.aa
  store i32 67108864, ptr %i.dg, align 4
  br label %encode_claim_null.exit

bb.ac:                                            ; preds = %encode_opentype.exit
  %i.dh = getelementptr i8, ptr %1, i64 72
  %i.di = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.di, null
  br i1 %.not.i.i34, label %bb.ad, label %reserve_space.exit.i35, !prof !12

bb.ad:                                            ; preds = %bb.ac
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit.i35:                           ; preds = %bb.ac
  store i32 83886080, ptr %i.di, align 4
  %i.dj = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i36, label %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i39, label %xdr_stream_encode_opaque_fixed.exit.i.i.i37, !prof !12

xdr_stream_encode_opaque_fixed.exit.i.i.i37:      ; preds = %reserve_space.exit.i35
  %i.dk = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %i.dj, ptr noundef %i.dh, i32 noundef 16) #11 ; 0 uses
  br label %encode_claim_null.exit

xdr_stream_encode_opaque_fixed.exit.thread.i.i.i39: ; preds = %reserve_space.exit.i35
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #10, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.74, i32 1871, i32 2307, i64 16) #10, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #10, !srcloc !33
  br label %encode_claim_null.exit

bb.ae:                                            ; preds = %encode_opentype.exit
  tail call void asm sideeffect "1762: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1762b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1762) #10, !srcloc !261
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 1561, i32 0, i64 16) #10, !srcloc !262
  unreachable

encode_claim_null.exit:                           ; preds = %xdr_stream_encode_opaque_fixed.exit.thread.i.i.i39, %xdr_stream_encode_opaque_fixed.exit.i.i.i37, %bb.z, %xdr_stream_encode_opaque.exit.i.i31, %bb.s, %xdr_stream_encode_opaque.exit.i.i, %encode_claim_fh.exit, %encode_claim_previous.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_layoutget(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %xdr_stream_encode_u32.exit.i.i, !prof !12

xdr_stream_encode_u32.exit.i.i:                   ; preds = %bb.a
  store i32 838860800, ptr %i.a, align 4
  br label %encode_op_hdr.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_op_hdr.exit

encode_op_hdr.exit:                               ; preds = %xdr_stream_encode_u32.exit.i.i, %bb.b
  %i.b = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1039
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 36) #11 ; 7 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %reserve_space.exit, !prof !12

bb.c:                                             ; preds = %encode_op_hdr.exit
  tail call void asm sideeffect "1746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1746) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 974, i32 0, i64 16) #10, !srcloc !35
  unreachable

reserve_space.exit:                               ; preds = %encode_op_hdr.exit
  %i.i = getelementptr i8, ptr %i.h, i64 4
  store i32 0, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = getelementptr i8, ptr %i.h, i64 8
  store i32 %i.l, ptr %i.i, align 4
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr i8, ptr %i.h, i64 12
  store i32 %i.p, ptr %i.m, align 4
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.s)
  store i64 %i.t, ptr %i.q, align 4
  %i.u = getelementptr i8, ptr %i.h, i64 20
  %i.v = getelementptr i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i64 @llvm.bswap.i64(i64 %i.w)
  store i64 %i.x, ptr %i.u, align 4
  %i.y = getelementptr i8, ptr %i.h, i64 28
  %i.z = getelementptr i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.aa)
  store i64 %i.ab, ptr %i.y, align 4
  %i.ac = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i18, label %xdr_stream_encode_opaque_fixed.exit.thread.i.i, label %xdr_stream_encode_opaque_fixed.exit.i.i, !prof !12

xdr_stream_encode_opaque_fixed.exit.i.i:          ; preds = %reserve_space.exit
  %i.ad = getelementptr i8, ptr %1, i64 80
  %i.ae = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %i.ac, ptr noundef %i.ad, i32 noundef 16) #11 ; 0 uses
  br label %encode_nfs4_stateid.exit

xdr_stream_encode_opaque_fixed.exit.thread.i.i:   ; preds = %reserve_space.exit
  tail call void asm sideeffect "989: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 989b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 989) #10, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.74, i32 1871, i32 2307, i64 16) #10, !srcloc !32
  tail call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #10, !srcloc !33
  br label %encode_nfs4_stateid.exit

encode_nfs4_stateid.exit:                         ; preds = %xdr_stream_encode_opaque_fixed.exit.i.i, %xdr_stream_encode_opaque_fixed.exit.thread.i.i
  %i.af = getelementptr i8, ptr %1, i64 56
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.d, label %xdr_stream_encode_u32.exit.i, !prof !12

xdr_stream_encode_u32.exit.i:                     ; preds = %encode_nfs4_stateid.exit
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  store i32 %i.ai, ptr %i.ah, align 4
  br label %encode_uint32.exit

bb.d:                                             ; preds = %encode_nfs4_stateid.exit
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit

encode_uint32.exit:                               ; preds = %xdr_stream_encode_u32.exit.i, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_attrs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.d = load i32, ptr %1, align 8                ; 5 uses
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4
  %i.g = and i32 %i.f, 16
  %.not63 = icmp eq i32 %i.g, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 16, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.a ] ; 2 uses
  %i.i = phi i32 [ 16, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.057 = phi i32 [ 8, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.j = and i32 %i.d, 1
  %.not64 = icmp eq i32 %i.j, 0
  br i1 %.not64, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 131072
  %.not66 = icmp eq i32 %i.m, 0
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 131072, ptr %i.n, align 4
  %i.o = add nuw nsw i32 %.057, 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr i8, ptr %5, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 2
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.s, align 4
  %i.t = or disjoint i32 %.057, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.d
  %i.u = phi i1 [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.d ]
  %i.v = phi i32 [ 196608, %bb.g ], [ 65536, %bb.i ], [ 65536, %bb.h ], [ 65536, %bb.d ]
  %i.w = phi i32 [ 0, %bb.g ], [ 2, %bb.i ], [ 0, %bb.h ], [ 0, %bb.d ] ; 3 uses
  %.158 = phi i32 [ %i.o, %bb.g ], [ %i.t, %bb.i ], [ %.057, %bb.h ], [ %.057, %bb.d ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !annotation !39
  %i.x = and i32 %i.d, 2
  %.not68 = icmp eq i32 %i.x, 0
  br i1 %.not68, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %5, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 16
  %.not69 = icmp eq i32 %i.aa, 0
  br i1 %.not69, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = call i32 @nfs_map_uid_to_name(ptr noundef %4, i32 %i.ac, ptr noundef nonnull %i.a, i64 noundef 128) #11 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.76, i64 7, i1 false) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ 6, %bb.m ], [ %i.ad, %bb.l ]    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = or disjoint i32 %i.w, 16                ; 2 uses
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = add nuw i32 %.0, 3
  %i.ai = and i32 %i.ah, -4
  %i.aj = add nuw nsw i32 %.158, 4
  %i.ak = add nuw i32 %i.aj, %i.ai
  %.pre = load i32, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.j
  %i.al = phi i32 [ %i.ag, %bb.n ], [ %i.w, %bb.k ], [ %i.w, %bb.j ] ; 3 uses
  %i.am = phi i32 [ %.pre, %bb.n ], [ %i.d, %bb.k ], [ %i.d, %bb.j ]
  %.2 = phi i32 [ %i.ak, %bb.n ], [ %.158, %bb.k ], [ %.158, %bb.j ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.an = and i32 %i.am, 4
  %.not70 = icmp eq i32 %i.an, 0
  br i1 %.not70, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %5, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 32
  %.not71 = icmp eq i32 %i.aq, 0
  br i1 %.not71, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %1, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = call i32 @nfs_map_gid_to_group(ptr noundef %4, i32 %i.as, ptr noundef nonnull %i.b, i64 noundef 128) #11 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.76, i64 7, i1 false) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.055 = phi i32 [ 6, %bb.r ], [ %i.at, %bb.q ]  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aw = or i32 %i.al, 32                        ; 2 uses
  store i32 %i.aw, ptr %i.av, align 4
  %i.ax = add nuw i32 %.055, 3
  %i.ay = and i32 %i.ax, -4
  %i.az = add nuw i32 %.2, 4
  %i.ba = add i32 %i.az, %i.ay
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o
  %i.bb = phi i32 [ %i.aw, %bb.s ], [ %i.al, %bb.p ], [ %i.al, %bb.o ] ; 3 uses
  %.3 = phi i32 [ %i.ba, %bb.s ], [ %.2, %bb.p ], [ %.2, %bb.o ] ; 3 uses
  %.156 = phi i32 [ %.055, %bb.s ], [ 0, %bb.p ], [ 0, %bb.o ]
  %i.bc = getelementptr i8, ptr %5, i64 4
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = and i32 %i.bd, 65536
  %.not72 = icmp eq i32 %i.be, 0
  br i1 %.not72, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load i32, ptr %1, align 8               ; 2 uses
  %i.bg = and i32 %i.bf, 128
  %.not73 = icmp eq i32 %i.bg, 0
  br i1 %.not73, label %bb.v, label %.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bh = and i32 %i.bf, 16
  %.not74 = icmp eq i32 %i.bh, 0
  br i1 %.not74, label %bb.w, label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.u
  %.sink = phi i32 [ 16, %bb.u ], [ 4, %bb.v ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bj = or i32 %i.bb, 65536                     ; 2 uses
  store i32 %i.bj, ptr %i.bi, align 4
  %i.bk = add i32 %.3, %.sink
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v, %bb.t
  %i.bl = phi i32 [ %i.bb, %bb.v ], [ %i.bb, %bb.t ], [ %i.bj, %.sink.split ] ; 3 uses
  %.4 = phi i32 [ %.3, %bb.v ], [ %.3, %bb.t ], [ %i.bk, %.sink.split ] ; 3 uses
  %i.bm = and i32 %i.bd, 4194304
  %.not75 = icmp eq i32 %i.bm, 0
  br i1 %.not75, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = load i32, ptr %1, align 8               ; 2 uses
  %i.bo = and i32 %i.bn, 256
  %.not76 = icmp eq i32 %i.bo, 0
  br i1 %.not76, label %bb.y, label %.sink.split127

bb.y:                                             ; preds = %bb.x
  %i.bp = and i32 %i.bn, 32
  %.not77 = icmp eq i32 %i.bp, 0
  br i1 %.not77, label %bb.z, label %.sink.split127

.sink.split127:                                   ; preds = %bb.y, %bb.x
  %.sink128 = phi i32 [ 16, %bb.x ], [ 4, %bb.y ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.br = or i32 %i.bl, 4194304
  store i32 %i.br, ptr %i.bq, align 4
  %i.bs = add i32 %.4, %.sink128
  br label %bb.z

bb.z:                                             ; preds = %.sink.split127, %bb.y, %bb.w
  %i.bt = phi i32 [ %i.bl, %bb.y ], [ %i.bl, %bb.w ], [ 1, %.sink.split127 ]
  %.5 = phi i32 [ %.4, %bb.y ], [ %.4, %bb.w ], [ %i.bs, %.sink.split127 ] ; 4 uses
  %.not78 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not78, label %.lr.ph.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr i8, ptr %5, i64 8
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 65536
  %.not79 = icmp eq i32 %i.bw, 0
  br i1 %.not79, label %.lr.ph.i, label %.lr.ph.i.thread

.lr.ph.i.thread:                                  ; preds = %bb.aa
  %i.bx = getelementptr i8, ptr %2, i64 12
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.by, 3
  %i.ca = and i32 %i.bz, -4
  %i.cb = add i32 %.5, 12
  %i.cc = add i32 %i.cb, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.v, ptr %i.cd, align 4
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.z
  br i1 %i.u, label %.lr.ph.i.1, label %.critedge.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ce = icmp eq i32 %i.bt, 0
  br i1 %i.ce, label %.lr.ph.i.2, label %.critedge.i

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %not. = xor i1 %i.h, true
  %spec.select131 = zext i1 %not. to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.2, %.lr.ph.i.thread, %.lr.ph.i.1, %.lr.ph.i
  %.6124 = phi i32 [ %i.cc, %.lr.ph.i.thread ], [ %.5, %.lr.ph.i ], [ %.5, %.lr.ph.i.1 ], [ %.5, %.lr.ph.i.2 ] ; 2 uses
  %.lcssa = phi i1 [ false, %.lr.ph.i.thread ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i.1 ], [ %i.h, %.lr.ph.i.2 ]
  %.014.lcssa.i = phi i64 [ 3, %.lr.ph.i.thread ], [ 3, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ %spec.select131, %.lr.ph.i.2 ] ; 7 uses
  %i.cf = shl nuw nsw i64 %.014.lcssa.i, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  %i.ch = call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.cg) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %xdr_stream_encode_uint32_array.exit.thread.i, label %bb.ab, !prof !12

bb.ab:                                            ; preds = %.critedge.i
  %i.ci = trunc nuw nsw i64 %.014.lcssa.i to i32
  %i.cj = shl nuw nsw i32 %i.ci, 24
  store i32 %i.cj, ptr %i.ch, align 4
  br i1 %.lcssa, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.ck = add nsw i64 %.014.lcssa.i, -1
  %lcmp.mod.not = icmp eq i64 %.014.lcssa.i, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.pn20.i.i.prol = phi ptr [ %.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ch, %.lr.ph.i.i.preheader ]
  %.01319.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.prol ], [ %.014.lcssa.i, %.lr.ph.i.i.preheader ]
  %.01418.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.prol ], [ %i.c, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.0.i.i.prol = getelementptr i8, ptr %.pn20.i.i.prol, i64 4 ; 3 uses
  %i.cl = load i32, ptr %.01418.i.i.prol, align 4
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.cl)
  store i32 %i.cm, ptr %.0.i.i.prol, align 4
  %i.cn = getelementptr i8, ptr %.01418.i.i.prol, i64 4 ; 2 uses
  %i.co = add i64 %.01319.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.014.lcssa.i
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !263

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.pn20.i.i.unr = phi ptr [ %i.ch, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.01319.i.i.unr = phi i64 [ %.014.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %.01418.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %i.cp = icmp ult i64 %i.ck, 3
  br i1 %i.cp, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.pn20.i.i = phi ptr [ %.0.i.i.3, %.lr.ph.i.i ], [ %.pn20.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01319.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %.01319.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01418.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %.01418.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0.i.i = getelementptr i8, ptr %.pn20.i.i, i64 4
  %i.cq = load i32, ptr %.01418.i.i, align 4
  %i.cr = call i32 @llvm.bswap.i32(i32 %i.cq)
  store i32 %i.cr, ptr %.0.i.i, align 4
  %i.cs = getelementptr i8, ptr %.01418.i.i, i64 4
  %.0.i.i.1 = getelementptr i8, ptr %.pn20.i.i, i64 8
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = call i32 @llvm.bswap.i32(i32 %i.ct)
  store i32 %i.cu, ptr %.0.i.i.1, align 4
  %i.cv = getelementptr i8, ptr %.01418.i.i, i64 8
  %.0.i.i.2 = getelementptr i8, ptr %.pn20.i.i, i64 12
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = call i32 @llvm.bswap.i32(i32 %i.cw)
  store i32 %i.cx, ptr %.0.i.i.2, align 4
  %i.cy = getelementptr i8, ptr %.01418.i.i, i64 12
  %.0.i.i.3 = getelementptr i8, ptr %.pn20.i.i, i64 16 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = call i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %.0.i.i.3, align 4
  %i.db = getelementptr i8, ptr %.01418.i.i, i64 16
  %i.dc = add i64 %.01319.i.i, -4                 ; 2 uses
  %.not16.i.i.3 = icmp eq i64 %i.dc, 0
  br i1 %.not16.i.i.3, label %xdr_encode_bitmap4.exit, label %.lr.ph.i.i, !llvm.loop !1

xdr_stream_encode_uint32_array.exit.thread.i:     ; preds = %.critedge.i
  call void asm sideeffect "1753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1753) #10, !srcloc !50
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 1002, i32 2307, i64 16) #10, !srcloc !51
  call void asm sideeffect "1754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1754b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1754) #10, !srcloc !52
  br label %xdr_encode_bitmap4.exit

xdr_encode_bitmap4.exit:                          ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ab, %xdr_stream_encode_uint32_array.exit.thread.i
  %i.dd = zext i32 %.6124 to i64
  %i.de = add nuw nsw i64 %i.dd, 3
  %i.df = and i64 %i.de, 8589934588
  %i.dg = add nuw nsw i64 %i.df, 4
  %i.dh = call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef %i.dg) #11 ; 3 uses
  %.not.i90 = icmp eq ptr %i.dh, null
  br i1 %.not.i90, label %xdr_stream_encode_opaque_inline.exit, label %bb.ac, !prof !12

bb.ac:                                            ; preds = %xdr_encode_bitmap4.exit
  %i.di = call ptr @xdr_encode_opaque(ptr noundef nonnull %i.dh, ptr noundef null, i32 noundef %.6124) #11 ; 0 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 4
  %.pre113 = load i32, ptr %i.c, align 4
  br label %xdr_stream_encode_opaque_inline.exit

xdr_stream_encode_opaque_inline.exit:             ; preds = %xdr_encode_bitmap4.exit, %bb.ac
  %i.dk = phi i32 [ %.pre113, %bb.ac ], [ %i.i, %xdr_encode_bitmap4.exit ]
  %storemerge.i = phi ptr [ %i.dj, %bb.ac ], [ null, %xdr_encode_bitmap4.exit ] ; 3 uses
  %i.dl = and i32 %i.dk, 16
  %.not80 = icmp eq i32 %i.dl, 0
  br i1 %.not80, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %xdr_stream_encode_opaque_inline.exit
  %i.dm = getelementptr i8, ptr %1, i64 16
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = call i64 @llvm.bswap.i64(i64 %i.dn)
  store i64 %i.do, ptr %storemerge.i, align 1
  %i.dp = getelementptr i8, ptr %storemerge.i, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %xdr_stream_encode_opaque_inline.exit
  %.0106 = phi ptr [ %storemerge.i, %xdr_stream_encode_opaque_inline.exit ], [ %i.dp, %bb.ad ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = and i32 %i.dr, 2
  %.not81 = icmp eq i32 %i.ds, 0
  br i1 %.not81, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr i8, ptr %1, i64 4
  %i.du = load i16, ptr %i.dt, align 4
  %i.dv = and i16 %i.du, 4095
  %i.dw = zext nneg i16 %i.dv to i32
  %i.dx = call i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = getelementptr i8, ptr %.0106, i64 4
  store i32 %i.dx, ptr %.0106, align 4
  %.pre114 = load i32, ptr %i.dq, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dz = phi i32 [ %i.dr, %bb.ae ], [ %.pre114, %bb.af ] ; 2 uses
  %.1107 = phi ptr [ %.0106, %bb.ae ], [ %i.dy, %bb.af ] ; 2 uses
  %i.ea = and i32 %i.dz, 16
  %.not82 = icmp eq i32 %i.ea, 0
  br i1 %.not82, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = call ptr @xdr_encode_opaque(ptr noundef %.1107, ptr noundef nonnull %i.a, i32 noundef %.1) #11
  %.pre115 = load i32, ptr %i.dq, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ec = phi i32 [ %i.dz, %bb.ag ], [ %.pre115, %bb.ah ] ; 2 uses
  %.2108 = phi ptr [ %.1107, %bb.ag ], [ %i.eb, %bb.ah ] ; 2 uses
  %i.ed = and i32 %i.ec, 32
  %.not83 = icmp eq i32 %i.ed, 0
  br i1 %.not83, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = call ptr @xdr_encode_opaque(ptr noundef %.2108, ptr noundef nonnull %i.b, i32 noundef %.156) #11
  %.pre116 = load i32, ptr %i.dq, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ef = phi i32 [ %i.ec, %bb.ai ], [ %.pre116, %bb.aj ]
  %.3109 = phi ptr [ %.2108, %bb.ai ], [ %i.ee, %bb.aj ] ; 6 uses
  %i.eg = and i32 %i.ef, 65536
  %.not84 = icmp eq i32 %i.eg, 0
  br i1 %.not84, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load i32, ptr %1, align 8
  %i.ei = and i32 %i.eh, 128
  %.not85 = icmp eq i32 %i.ei, 0
  %i.ej = getelementptr i8, ptr %.3109, i64 4     ; 2 uses
  br i1 %.not85, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 16777216, ptr %.3109, align 4
  %i.ek = getelementptr i8, ptr %1, i64 24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = call i64 @llvm.bswap.i64(i64 %i.el)
  store i64 %i.em, ptr %i.ej, align 4
  %i.en = getelementptr i8, ptr %.3109, i64 12
  %i.eo = getelementptr i8, ptr %1, i64 32
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = trunc i64 %i.ep to i32
  %i.er = call i32 @llvm.bswap.i32(i32 %i.eq)
  %i.es = getelementptr i8, ptr %.3109, i64 16
  store i32 %i.er, ptr %i.en, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.3109, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ak
  %.4110 = phi ptr [ %.3109, %bb.ak ], [ %i.ej, %bb.an ], [ %i.es, %bb.am ] ; 6 uses
  %i.et = load i32, ptr %i.dq, align 4
  %i.eu = and i32 %i.et, 4194304
  %.not86 = icmp eq i32 %i.eu, 0
  br i1 %.not86, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load i32, ptr %1, align 8
  %i.ew = and i32 %i.ev, 256
  %.not87 = icmp eq i32 %i.ew, 0
  %i.ex = getelementptr i8, ptr %.4110, i64 4     ; 2 uses
  br i1 %.not87, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 16777216, ptr %.4110, align 4
  %i.ey = getelementptr i8, ptr %1, i64 40
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = call i64 @llvm.bswap.i64(i64 %i.ez)
  store i64 %i.fa, ptr %i.ex, align 4
  %i.fb = getelementptr i8, ptr %.4110, i64 12
  %i.fc = getelementptr i8, ptr %1, i64 48
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = getelementptr i8, ptr %.4110, i64 16
  store i32 %i.ff, ptr %i.fb, align 4
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %.4110, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ao
  %.5111 = phi ptr [ %.4110, %bb.ao ], [ %i.ex, %bb.ar ], [ %i.fg, %bb.aq ] ; 6 uses
  br i1 %.not78, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = and i32 %i.fi, 65536
  %.not88 = icmp eq i32 %i.fj, 0
  br i1 %.not88, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fk = load i32, ptr %2, align 8
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = getelementptr i8, ptr %.5111, i64 4
  store i32 %i.fl, ptr %.5111, align 4
  %i.fn = getelementptr i8, ptr %2, i64 4
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = getelementptr i8, ptr %.5111, i64 8
  store i32 %i.fp, ptr %i.fm, align 4
  %i.fr = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = call i32 @llvm.bswap.i32(i32 %i.fs)
  %i.fu = getelementptr i8, ptr %.5111, i64 12
  store i32 %i.ft, ptr %i.fq, align 4
  %i.fv = getelementptr i8, ptr %2, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = load i32, ptr %i.fr, align 4
  %i.fy = call ptr @xdr_encode_opaque_fixed(ptr noundef %i.fu, ptr noundef %i.fw, i32 noundef %i.fx) #11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.6112 = phi ptr [ %.5111, %bb.as ], [ %.5111, %bb.at ], [ %i.fy, %bb.au ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = and i32 %i.ga, 131072
  %.not89 = icmp eq i32 %i.gb, 0
  br i1 %.not89, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = getelementptr i8, ptr %1, i64 4
  %i.gd = load i16, ptr %i.gc, align 4
  %i.ge = and i16 %i.gd, 4095
  %i.gf = zext nneg i16 %i.ge to i32
  %i.gg = call i32 @llvm.bswap.i32(i32 %i.gf)
  %i.gh = getelementptr i8, ptr %.6112, i64 4
  store i32 %i.gg, ptr %.6112, align 4
  %i.gi = load i16, ptr %3, align 2
  %i.gj = zext i16 %i.gi to i32
  %i.gk = call i32 @llvm.bswap.i32(i32 %i.gj)
  store i32 %i.gk, ptr %i.gh, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nfs_map_uid_to_name(ptr noundef, i32, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nfs_map_gid_to_group(ptr noundef, i32, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef i32 @decode_open(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__decode_op_hdr.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i = icmp eq i32 %i.b, 301989888
  br i1 %.not20.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i, label %.thread, label %bb.e, !prof !16

.thread:                                          ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef 0, ptr noundef %i.f) #11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef 18) #12, !srcloc !40
  br label %__decode_op_hdr.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef 18, i32 noundef %i.h) #12, !srcloc !41
  %i.i = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.h) #11 ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef %i.i, ptr noundef %i.k) #11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %__decode_op_hdr.exit

bb.f:                                             ; preds = %.thread, %bb.e
  %i.l = getelementptr i8, ptr %1, i64 56
  store i32 2, ptr %i.l, align 4
  %i.m = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %__decode_op_hdr.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.m, i64 range(i64 8, 17) 16, i1 false)
  %i.o = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 20) #11 ; 4 uses
  %.not.i41 = icmp eq ptr %i.o, null
  br i1 %.not.i41, label %decode_change_info.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 192
  %i.q = getelementptr i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.o, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %1, i64 200
  %.val.i.i = load i64, ptr %i.q, align 4
  %i.u = tail call i64 @llvm.bswap.i64(i64 %.val.i.i)
  store i64 %i.u, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.o, i64 12
  %i.w = getelementptr i8, ptr %1, i64 208
  %.val.i8.i = load i64, ptr %i.v, align 4
  %i.x = tail call i64 @llvm.bswap.i64(i64 %.val.i8.i)
  store i64 %i.x, ptr %i.w, align 8
  br label %decode_change_info.exit

decode_change_info.exit:                          ; preds = %bb.g, %bb.h
  %i.y = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not39 = icmp eq ptr %i.y, null
  br i1 %.not39, label %__decode_op_hdr.exit, label %bb.i, !prof !12

bb.i:                                             ; preds = %decode_change_info.exit
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.y, align 4
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr i8, ptr %1, i64 216
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 4 uses
  %i.af = icmp ugt i32 %i.ae, 10
  br i1 %i.af, label %__decode_op_hdr.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = shl nuw nsw i32 %i.ae, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.ah) #11 ; 2 uses
  %.not40 = icmp eq ptr %i.ai, null
  br i1 %.not40, label %__decode_op_hdr.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 3) ; 2 uses
  %.not57 = icmp eq i32 %i.ad, 0
  br i1 %.not57, label %.lr.ph56, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %1, i64 248
  %wide.trip.count = zext nneg i32 %i.aj to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph
  %indvars.iv.epil = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.epil, %bb.l ] ; 2 uses
  %.03354.epil = phi ptr [ %i.ai, %.lr.ph ], [ %i.al, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph ], [ %epil.iter.next, %bb.l ]
  %i.al = getelementptr i8, ptr %.03354.epil, i64 4
  %i.am = load i32, ptr %.03354.epil, align 4
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.epil
  store i32 %i.an, ptr %i.ao, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.l, !llvm.loop !264

.preheader:                                       ; preds = %bb.l
  %.not79 = icmp ugt i32 %i.ae, 2
  br i1 %.not79, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.k, %.preheader
  %.034.lcssa82 = phi i32 [ %i.aj, %.preheader ], [ 0, %bb.k ] ; 2 uses
  %i.ap = shl nuw nsw i32 %.034.lcssa82, 2
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.ar, i64 248
  %i.as = shl nuw nsw i32 %.034.lcssa82, 2
  %narrow = sub nuw nsw i32 12, %i.as
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 %scevgep, i8 0, i64 %i.at, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph56, %.preheader
  %i.au = getelementptr i8, ptr %1, i64 280       ; 2 uses
  %i.av = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i43 = icmp eq ptr %i.av, null
  br i1 %.not.i43, label %__decode_op_hdr.exit, label %bb.m, !prof !12

bb.m:                                             ; preds = %._crit_edge
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw) ; 3 uses
  store i32 %i.ax, ptr %i.au, align 8
  switch i32 %i.ax, label %bb.ad [
    i32 0, label %__decode_op_hdr.exit
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 4, label %bb.n
    i32 5, label %bb.n
    i32 3, label %bb.z
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ay = getelementptr i8, ptr %1, i64 288       ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 312
  store i32 4, ptr %i.az, align 8
  %i.ba = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %__decode_op_hdr.exit, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ba, i64 range(i64 8, 17) 16, i1 false)
  %i.bc = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.bc, null
  br i1 %.not15.i.i, label %__decode_op_hdr.exit, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = getelementptr i8, ptr %1, i64 292
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = load i32, ptr %i.au, align 8
  switch i32 %i.bg, label %bb.v [
    i32 1, label %bb.q
    i32 4, label %bb.q
    i32 2, label %bb.r
    i32 5, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  store i32 1, ptr %i.ay, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.p, %bb.p
  store i32 3, ptr %i.ay, align 8
  %i.bh = getelementptr i8, ptr %1, i64 320
  %i.bi = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 12) #11 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %__decode_op_hdr.exit, label %bb.s, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  switch i32 %i.bl, label %decode_space_limit.exit.i.i [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i = load i64, ptr %i.bj, align 4
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %.val.i.i.i.i)
  br label %decode_space_limit.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.bi, i64 8
  %i.bo = load i32, ptr %i.bj, align 4
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.bq = load i32, ptr %i.bn, align 4
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = zext i32 %i.bp to i64
  %i.bt = zext i32 %i.br to i64
  %i.bu = mul nuw i64 %i.bt, %i.bs
  br label %decode_space_limit.exit.i.i

decode_space_limit.exit.i.i:                      ; preds = %bb.u, %bb.t, %bb.s
  %.015.i.i.i = phi i64 [ 0, %bb.s ], [ %i.bm, %bb.t ], [ %i.bu, %bb.u ]
  %i.bv = lshr i64 %.015.i.i.i, 12
  store i64 %i.bv, ptr %i.bh, align 8
  br label %bb.v

bb.v:                                             ; preds = %decode_space_limit.exit.i.i, %bb.q, %bb.p
  %i.bw = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 12) #11
  %.not.i16.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i16.i.i, label %__decode_op_hdr.exit, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.bx = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i17.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i17.i.i, label %__decode_op_hdr.exit, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %xdr_stream_decode_opaque_inline.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by) ; 2 uses
  %.pre.i.i.i.i.i = zext i32 %i.bz to i64
  %i.ca = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %.pre.i.i.i.i.i) #11
  %.not8.i.i.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = icmp ugt i32 %i.bz, 1024
  %or.cond.i.i.i.i = or i1 %i.cb, %.not8.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %__decode_op_hdr.exit, label %xdr_stream_decode_opaque_inline.exit.i.i.i.i, !prof !24

xdr_stream_decode_opaque_inline.exit.i.i.i.i:     ; preds = %bb.y, %bb.x
  br label %__decode_op_hdr.exit

bb.z:                                             ; preds = %bb.m
  %i.cc = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %__decode_op_hdr.exit, label %bb.aa, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd) ; 2 uses
  %i.cf = getelementptr i8, ptr %1, i64 288
  store i32 %i.ce, ptr %i.cf, align 8
  %.off.i.i = add i32 %i.ce, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ab, label %__decode_op_hdr.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cg = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cg, null
  br i1 %.not9.i.i, label %__decode_op_hdr.exit, label %bb.ac, !prof !12

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = getelementptr i8, ptr %1, i64 292
  store i32 %i.ci, ptr %i.cj, align 4
  br label %__decode_op_hdr.exit

bb.ad:                                            ; preds = %bb.m
  br label %__decode_op_hdr.exit

__decode_op_hdr.exit:                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %xdr_stream_decode_opaque_inline.exit.i.i.i.i, %bb.y, %bb.w, %bb.v, %bb.r, %bb.o, %bb.n, %bb.m, %._crit_edge, %bb.f, %bb.a, %bb.d, %bb.i, %bb.j, %decode_change_info.exit, %bb.e
  %.0 = phi i32 [ -5, %bb.i ], [ %i.i, %bb.e ], [ -121, %bb.d ], [ -5, %bb.j ], [ -5, %decode_change_info.exit ], [ -5, %bb.f ], [ -5, %bb.a ], [ -5, %bb.r ], [ -5, %bb.ad ], [ -5, %._crit_edge ], [ %i.ax, %bb.m ], [ -5, %bb.o ], [ -5, %bb.y ], [ -5, %bb.n ], [ -5, %bb.v ], [ 0, %xdr_stream_decode_opaque_inline.exit.i.i.i.i ], [ -5, %bb.w ], [ -5, %bb.z ], [ -5, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_getfh(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 130)) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(130) %1, i8 0, i64 130, i1 false)
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %trace_nfs4_xdr_bad_filehandle.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 167772160
  br i1 %.not20.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread26, label %decode_op_hdr.exit, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.e, i32 noundef range(i32 3, 59) 10) #12, !srcloc !40
  br label %trace_nfs4_xdr_bad_filehandle.exit

decode_op_hdr.exit:                               ; preds = %bb.c
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 10, i32 noundef %i.f) #12, !srcloc !41
  %i.g = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.f) #11 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %decode_op_hdr.exit.thread26, label %trace_nfs4_xdr_bad_filehandle.exit

decode_op_hdr.exit.thread26:                      ; preds = %bb.c, %decode_op_hdr.exit
  %i.h = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
end_hunk_0
begin_hunk_1_@decode_layoutreturn:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_close(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_op_hdr.exit.thread12, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 67108864
  br i1 %.not20.i.i, label %bb.c, label %decode_op_hdr.exit.thread.thread17, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread.thread, label %decode_op_hdr.exit, !prof !16

decode_op_hdr.exit.thread.thread:                 ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef 0, ptr noundef %i.f) #11
  br label %bb.d

decode_op_hdr.exit.thread.thread17:               ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef range(i32 3, 59) 4) #12, !srcloc !40
  %i.h = getelementptr i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef -121, ptr noundef %i.i) #11
  br label %decode_op_hdr.exit.thread12

decode_op_hdr.exit:                               ; preds = %bb.c
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 4, i32 noundef %i.j) #12, !srcloc !41
  %i.k = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.j) #11 ; 4 uses
  %cond = icmp eq i32 %i.k, -5
  br i1 %cond, label %decode_op_hdr.exit.thread12, label %decode_op_hdr.exit.thread

decode_op_hdr.exit.thread:                        ; preds = %decode_op_hdr.exit
  %i.l = getelementptr i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef %i.k, ptr noundef %i.m) #11
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.d, label %decode_op_hdr.exit.thread12

bb.d:                                             ; preds = %decode_op_hdr.exit.thread.thread, %decode_op_hdr.exit.thread
  %i.n = getelementptr i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i64 16, i1 false)
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @invalid_stateid, i64 16), align 4
  %i.p = getelementptr i8, ptr %1, i64 56
  store i32 %i.o, ptr %i.p, align 4
  %i.q = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef range(i64 8, 17) 16) #11
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i = select i1 %.not.i.i.i.i, i32 -5, i32 0, !prof !12
  br label %decode_op_hdr.exit.thread12

decode_op_hdr.exit.thread12:                      ; preds = %decode_op_hdr.exit.thread.thread17, %bb.a, %decode_op_hdr.exit, %bb.d, %decode_op_hdr.exit.thread
  %.0 = phi i32 [ %i.k, %decode_op_hdr.exit.thread ], [ %spec.select.i, %bb.d ], [ -5, %decode_op_hdr.exit ], [ -5, %bb.a ], [ -121, %decode_op_hdr.exit.thread.thread17 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_setattr(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_bitmap4.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 570425344
  br i1 %.not20.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread8, label %decode_op_hdr.exit, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.e, i32 noundef range(i32 3, 59) 34) #12, !srcloc !40
  br label %decode_bitmap4.exit

decode_op_hdr.exit:                               ; preds = %bb.c
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 34, i32 noundef %i.f) #12, !srcloc !41
  %i.g = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.f) #11 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %decode_op_hdr.exit.thread8, label %decode_bitmap4.exit

decode_op_hdr.exit.thread8:                       ; preds = %bb.c, %decode_op_hdr.exit
  %i.h = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %decode_bitmap4.exit.thread, label %bb.e, !prof !12

bb.e:                                             ; preds = %decode_op_hdr.exit.thread8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.l) #11
  %.not.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i5, label %decode_bitmap4.exit.thread, label %decode_bitmap4.exit, !prof !12

decode_bitmap4.exit.thread:                       ; preds = %decode_op_hdr.exit.thread8, %bb.e
  br label %decode_bitmap4.exit

decode_bitmap4.exit:                              ; preds = %bb.a, %bb.d, %decode_bitmap4.exit.thread, %bb.e, %decode_op_hdr.exit
  %.0 = phi i32 [ %i.g, %decode_op_hdr.exit ], [ 0, %bb.e ], [ -5, %decode_bitmap4.exit.thread ], [ -5, %bb.a ], [ -121, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_fsinfo(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %decode_attr_length.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.c, 150994944
  br i1 %.not20.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.e, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread74, label %decode_op_hdr.exit, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.c)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.f, i32 noundef range(i32 3, 59) 9) #12, !srcloc !40
  br label %decode_attr_length.exit

decode_op_hdr.exit:                               ; preds = %bb.c
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.e)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 9, i32 noundef %i.g) #12, !srcloc !41
  %i.h = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.g) #11 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %decode_op_hdr.exit.thread74, label %decode_attr_length.exit

decode_op_hdr.exit.thread74:                      ; preds = %bb.c, %decode_op_hdr.exit
  %i.i = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %decode_attr_length.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %decode_op_hdr.exit.thread74
  %i.j = load i32, ptr %i.i, align 4
  %.fr3.i = freeze i32 %i.j                       ; 3 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.fr3.i) ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.n = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.m) #11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %decode_attr_length.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false), !annotation !39
  %.not22.i.i.i = icmp ugt i32 %i.k, 3
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %.fr3.i, 50331648
  br i1 %.not.i, label %.lr.ph.i.i.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %i.l
  %i.p = sub nuw nsw i64 12, %i.m
  call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %i.p, i1 false)
  %.not2330.i.i.i = icmp eq i32 %.fr3.i, 0
  br i1 %.not2330.i.i.i, label %select.unfold, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i10.i = phi i64 [ %i.l, %bb.h ], [ 3, %bb.g ], [ -90, %bb.f ] ; 2 uses
  %.016.i.i9.i = phi i64 [ %i.l, %bb.h ], [ 3, %bb.g ], [ 3, %bb.f ] ; 4 uses
  %i.q = add nsw i64 %.016.i.i9.i, -1
  %xtraiter = and i64 %.016.i.i9.i, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01533.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.132.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.prol ], [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ]
  %.01731.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.r = load i32, ptr %.01533.i.i.i.prol, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %.01731.i.i.i.prol, align 4
  %i.t = getelementptr i8, ptr %.01533.i.i.i.prol, i64 4 ; 2 uses
  %i.u = getelementptr i8, ptr %.01731.i.i.i.prol, i64 4 ; 2 uses
  %i.v = add nsw i64 %.132.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !265

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.01533.i.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader.i ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.132.i.i.i.unr = phi i64 [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.01731.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %i.w = icmp ult i64 %i.q, 3
  br i1 %i.w, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01533.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.01533.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.132.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ %.132.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01731.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.01731.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.x = load i32, ptr %.01533.i.i.i, align 4
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %.01731.i.i.i, align 4
  %i.z = getelementptr i8, ptr %.01533.i.i.i, i64 4
  %i.aa = getelementptr i8, ptr %.01731.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr i8, ptr %.01533.i.i.i, i64 8
  %i.ae = getelementptr i8, ptr %.01731.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %.01533.i.i.i, i64 12
  %i.ai = getelementptr i8, ptr %.01731.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr i8, ptr %.01533.i.i.i, i64 16
  %i.am = getelementptr i8, ptr %.01731.i.i.i, i64 16
  %i.an = add nsw i64 %.132.i.i.i, -4             ; 2 uses
  %.not23.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not23.i.i.i.3, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

xdr_stream_decode_uint32_array.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.ao = icmp sgt i64 %.0.i.i10.i, -1
  br i1 %i.ao, label %select.unfold, label %bb.i, !prof !15

bb.i:                                             ; preds = %xdr_stream_decode_uint32_array.exit.i.i
  %.not.i.i64 = icmp eq i64 %.0.i.i10.i, -90
  br i1 %.not.i.i64, label %select.unfold, label %decode_attr_length.exit

select.unfold:                                    ; preds = %bb.i, %xdr_stream_decode_uint32_array.exit.i.i, %bb.h
  %i.ap = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ap, null
  br i1 %.not.i65, label %decode_attr_length.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %select.unfold
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = tail call i32 @xdr_stream_pos(ptr noundef %0) #11
  %i.at = getelementptr i8, ptr %1, i64 28
  store i32 512, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %1, i64 16
  store i32 512, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %1, i64 64        ; 2 uses
  store i32 60, ptr %i.av, align 8
  %i.aw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = and i64 %i.ax, 1023
  %.not.i66 = icmp eq i64 %i.ay, 0
  br i1 %.not.i66, label %bb.k, label %decode_attr_length.exit, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.az = and i64 %i.ax, 1024
  %.not8.i = icmp eq i64 %i.az, 0
  br i1 %.not8.i, label %bb.n, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i, label %decode_attr_length.exit, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.av, align 8
  %i.bd = and i32 %i.aw, -1025
  store i32 %i.bd, ptr %i.a, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.be = getelementptr i8, ptr %1, i64 40
  %i.bf = call fastcc i32 @decode_attr_maxfilesize(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.be) #12, !srcloc !266 ; 2 uses
  %.not53 = icmp eq i32 %i.bf, 0
  br i1 %.not53, label %bb.o, label %decode_attr_length.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bh = call fastcc i32 @decode_attr_maxread(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bg) #12, !srcloc !267 ; 2 uses
  %.not54 = icmp eq i32 %i.bh, 0
  br i1 %.not54, label %bb.p, label %decode_attr_length.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 32
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %1, i64 12
  store i32 %i.bi, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.bm = call fastcc i32 @decode_attr_maxwrite(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bl) #12, !srcloc !268 ; 2 uses
  %.not55 = icmp eq i32 %i.bm, 0
  br i1 %.not55, label %bb.q, label %decode_attr_length.exit

bb.q:                                             ; preds = %bb.p
  %i.bn = load i32, ptr %i.bl, align 4
  %i.bo = getelementptr i8, ptr %1, i64 24
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = load i32, ptr %i.a, align 4
  %.not56 = icmp eq i32 %i.bp, 0
  br i1 %.not56, label %bb.r, label %decode_attr_length.exit, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %1, i64 48
  %i.br = call fastcc i32 @decode_attr_time_delta(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bq) #12, !srcloc !269 ; 2 uses
  %.not57 = icmp eq i32 %i.br, 0
  br i1 %.not57, label %bb.s, label %decode_attr_length.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = call fastcc i32 @decode_attr_pnfstype(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1) #12, !srcloc !270 ; 2 uses
  %.not58 = icmp eq i32 %i.bs, 0
  br i1 %.not58, label %bb.t, label %decode_attr_length.exit

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %.not59 = icmp eq i32 %i.bu, 0
  br i1 %.not59, label %bb.u, label %decode_attr_length.exit, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %1, i64 104
  %i.bw = call fastcc i32 @decode_attr_layout_blksize(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bv) #12, !srcloc !271 ; 2 uses
  %.not60 = icmp eq i32 %i.bw, 0
  br i1 %.not60, label %bb.v, label %decode_attr_length.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %1, i64 108
  %i.by = call fastcc i32 @decode_attr_clone_blksize(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bx) #12, !srcloc !272 ; 2 uses
  %.not61 = icmp eq i32 %i.by, 0
  br i1 %.not61, label %bb.w, label %decode_attr_length.exit

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %1, i64 112
  %i.ca = call fastcc i32 @decode_attr_change_attr_type(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bz) #12, !srcloc !273 ; 2 uses
  %.not62 = icmp eq i32 %i.ca, 0
  br i1 %.not62, label %bb.x, label %decode_attr_length.exit

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr i8, ptr %1, i64 116
  %i.cc = call fastcc i32 @decode_attr_xattrsupport(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.cb) #12, !srcloc !274 ; 2 uses
  %.not63 = icmp eq i32 %i.cc, 0
  br i1 %.not63, label %bb.y, label %decode_attr_length.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = add i32 %i.ar, 3
  %i.ce = tail call i32 @xdr_stream_pos(ptr noundef %0) #11
  %i.cf = sub i32 %i.ce, %i.as
  %.not.unshifted.i = xor i32 %i.cf, %i.cd
  %.not.i68 = icmp ult i32 %.not.unshifted.i, 4
  %..i = select i1 %.not.i68, i32 0, i32 -5, !prof !16
  br label %decode_attr_length.exit

decode_attr_length.exit:                          ; preds = %bb.e, %decode_op_hdr.exit.thread74, %bb.i, %bb.a, %bb.d, %bb.l, %bb.j, %select.unfold, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %decode_op_hdr.exit, %bb.y
  %.0 = phi i32 [ %i.h, %decode_op_hdr.exit ], [ -121, %bb.d ], [ -5, %bb.j ], [ -5, %select.unfold ], [ %i.bf, %bb.n ], [ %i.bh, %bb.o ], [ %i.bm, %bb.p ], [ -5, %bb.q ], [ %i.br, %bb.r ], [ %i.bs, %bb.s ], [ -5, %bb.t ], [ %i.bw, %bb.u ], [ %i.by, %bb.v ], [ %i.ca, %bb.w ], [ %i.cc, %bb.x ], [ %..i, %bb.y ], [ -5, %bb.l ], [ -5, %bb.a ], [ -5, %bb.i ], [ -5, %decode_op_hdr.exit.thread74 ], [ -5, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_maxfilesize(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i64 0, ptr %2, align 8
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 134217727
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 134217728
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.e, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  store i64 %i.f, ptr %2, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = and i32 %i.g, -134217729
  store i32 %i.h, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_maxread(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 1024, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 1073741823
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 1073741824
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %.critedge, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 2 uses
  %.not12.not = icmp eq ptr %i.e, null
  br i1 %.not12.not, label %.critedge, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.e, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2147483647)
  %i.g = trunc nuw nsw i64 %spec.select to i32
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -1073741825
  store i32 %i.i, ptr %1, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ -5, %bb.a ], [ 0, %bb.d ], [ -5, %bb.c ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_maxwrite(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 1024, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = and i32 %i.a, 2147483647
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !16

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq i32 %i.a, 0
  br i1 %.not11, label %.critedge, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 2 uses
  %.not12.not = icmp eq ptr %i.c, null
  br i1 %.not12.not, label %.critedge, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.c, align 1
  %i.d = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 2147483647)
  %i.e = trunc nuw nsw i64 %spec.select to i32
  store i32 %i.e, ptr %2, align 4
  %i.f = load i32, ptr %1, align 4
  %i.g = and i32 %i.f, 2147483647
  store i32 %i.g, ptr %1, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ -5, %bb.a ], [ 0, %bb.d ], [ -5, %bb.c ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_time_delta(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = and i64 %i.d, 524287
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 524288
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 12) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %decode_attr_time.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.bswap.i64(i64 %.val.i.i.i)
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store i64 %i.h, ptr %2, align 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %i.a, align 8
  br label %decode_attr_time.exit

decode_attr_time.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -5, %bb.c ]
  %i.m = load i32, ptr %i.b, align 4
  %i.n = and i32 %i.m, -524289
  store i32 %i.n, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %decode_attr_time.exit, %bb.a
  %.0 = phi i32 [ -5, %bb.a ], [ %.0.i, %decode_attr_time.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_pnfstype(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = and i64 %i.c, 1073741823
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.j, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 1073741824
  %.not7 = icmp eq i64 %i.e, 0
  br i1 %.not7, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %decode_pnfs_layout_types.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 68         ; 3 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %decode_pnfs_layout_types.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl i32 %i.h, 2
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.l) #11 ; 3 uses
  %.not21.i = icmp eq ptr %i.m, null
  br i1 %.not21.i, label %decode_pnfs_layout_types.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.i, align 4              ; 4 uses
  %i.o = icmp ugt i32 %i.n, 8
  br i1 %i.o, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.p = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.decode_pnfs_layout_types, i32 noundef %i.n) #14 ; 0 uses
  store i32 8, ptr %i.i, align 4
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %.not24.i = icmp eq i32 %i.n, 0
  br i1 %.not24.i, label %decode_pnfs_layout_types.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i
  %i.q = phi i32 [ 8, %.thread.i ], [ %i.n, %bb.g ] ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 72         ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.q to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.s = icmp ult i32 %i.q, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 5 uses
  %.01822.i = phi ptr [ %i.m, %.lr.ph.i.new ], [ %i.ah, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.t = getelementptr i8, ptr %.01822.i, i64 4
  %i.u = load i32, ptr %.01822.i, align 4
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.i
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %.01822.i, i64 8
  %i.y = load i32, ptr %i.t, align 4
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  store i32 %i.z, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %.01822.i, i64 12
  %i.ad = load i32, ptr %i.x, align 4
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %.01822.i, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  store i32 %i.aj, ptr %i.al, align 4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %decode_pnfs_layout_types.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !275

decode_pnfs_layout_types.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %decode_pnfs_layout_types.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %decode_pnfs_layout_types.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %decode_pnfs_layout_types.exit.loopexit.unr-lcssa ]
  %.01822.i.epil.init = phi ptr [ %i.m, %.lr.ph.i ], [ %i.ah, %decode_pnfs_layout_types.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %.01822.i.epil = phi ptr [ %.01822.i.epil.init, %.epil.preheader ], [ %i.am, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.am = getelementptr i8, ptr %.01822.i.epil, i64 4
  %i.an = load i32, ptr %.01822.i.epil, align 4
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.i.epil
  store i32 %i.ao, ptr %i.ap, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %decode_pnfs_layout_types.exit, label %bb.i, !llvm.loop !276

decode_pnfs_layout_types.exit:                    ; preds = %decode_pnfs_layout_types.exit.loopexit.unr-lcssa, %bb.i, %bb.c, %bb.d, %bb.e, %bb.g
  %.0.i = phi i32 [ -5, %bb.e ], [ -5, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %decode_pnfs_layout_types.exit.loopexit.unr-lcssa ]
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = and i32 %i.aq, -1073741825
  store i32 %i.ar, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %decode_pnfs_layout_types.exit, %bb.a
  %.0 = phi i32 [ -5, %bb.a ], [ %.0.i, %decode_pnfs_layout_types.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_layout_blksize(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %2, align 4
  %i.g = load i32, ptr %i.a, align 4
  %i.h = and i32 %i.g, -3
  store i32 %i.h, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ -5, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_clone_blksize(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %2, align 4
  %i.g = load i32, ptr %i.a, align 4
  %i.h = and i32 %i.g, -8193
  store i32 %i.h, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ -5, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_change_attr_type(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %xdr_stream_decode_u32.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %.fr15 = freeze i32 %i.e
  %i.f = tail call i32 @llvm.bswap.i32(i32 %.fr15)
  %i.g = load i32, ptr %i.a, align 4
  %i.h = and i32 %i.g, -32769
  store i32 %i.h, ptr %i.a, align 4
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.f, i32 4)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a
  %i.i = phi i32 [ 4, %bb.a ], [ %spec.select, %bb.c ]
  store i32 %i.i, ptr %2, align 4
  br label %xdr_stream_decode_u32.exit

xdr_stream_decode_u32.exit:                       ; preds = %bb.b, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ -5, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_xattrsupport(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = and i64 %i.c, 262143
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 262144
  %.not8 = icmp eq i64 %i.e, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %2, align 4
  %i.i = load i32, ptr %i.a, align 4
  %i.j = and i32 %i.i, -262145
  store i32 %i.j, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_renew(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_op_hdr.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 503316480
  br i1 %.not20.i.i, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 30, i32 noundef %i.e) #12, !srcloc !41
  %i.f = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.e) #11
  br label %decode_op_hdr.exit

bb.e:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef range(i32 3, 59) 30) #12, !srcloc !40
  br label %decode_op_hdr.exit

decode_op_hdr.exit:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ -121, %bb.e ], [ %i.f, %bb.d ], [ -5, %bb.a ]
  ret i32 %.sink.i.i
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nfs_increment_lock_seqid(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_rename(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_change_info.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 486539264
  br i1 %.not20.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit.thread16, label %decode_op_hdr.exit, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.b)
end_hunk_1
begin_hunk_2_@decode_attr_link_support:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_symlink_support(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 63
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 64
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -65
  store i32 %i.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_aclsupport(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 8191
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 8192
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -8193
  store i32 %i.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_case_insensitive(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 65535
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 65536
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -65537
  store i32 %i.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_case_preserving(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 131071
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 131072
  %.not8 = icmp eq i64 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.g, ptr %2, align 4
  %i.h = load i32, ptr %1, align 4
  %i.i = and i32 %i.h, -131073
  store i32 %i.i, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -5, %bb.c ], [ -5, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_exclcreat_supported(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2048
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %decode_attr_bitmap.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %.fr3.i = freeze i32 %i.e                       ; 3 uses
  %i.f = tail call i32 @llvm.bswap.i32(i32 %.fr3.i) ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.i = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.h) #11 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %decode_attr_bitmap.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not22.i.i.i = icmp ugt i32 %i.f, 3
  br i1 %.not22.i.i.i, label %.lr.ph.i.i.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %.fr3.i, 50331648
  br i1 %.not.i, label %.lr.ph.i.i.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr [4 x i8], ptr %2, i64 %i.g
  %i.l = sub nuw nsw i64 12, %i.h
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.l, i1 false)
  %.not2330.i.i.i = icmp eq i32 %.fr3.i, 0
  br i1 %.not2330.i.i.i, label %.thread, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i10.i = phi i64 [ %i.g, %bb.g ], [ 3, %bb.f ], [ -90, %bb.e ] ; 2 uses
  %.016.i.i9.i = phi i64 [ %i.g, %bb.g ], [ 3, %bb.f ], [ 3, %bb.e ] ; 4 uses
  %i.m = add nsw i64 %.016.i.i9.i, -1
  %xtraiter = and i64 %.016.i.i9.i, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01533.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.132.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ]
  %.01731.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.n = load i32, ptr %.01533.i.i.i.prol, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %.01731.i.i.i.prol, align 4
  %i.p = getelementptr i8, ptr %.01533.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr i8, ptr %.01731.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add nsw i64 %.132.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !277

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.01533.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.preheader.i ], [ %i.p, %.lr.ph.i.i.i.prol ]
  %.132.i.i.i.unr = phi i64 [ %.016.i.i9.i, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01731.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.m, 3
  br i1 %i.s, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01533.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.01533.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.132.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.132.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01731.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.01731.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.01533.i.i.i, align 4
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %.01731.i.i.i, align 4
  %i.v = getelementptr i8, ptr %.01533.i.i.i, i64 4
  %i.w = getelementptr i8, ptr %.01731.i.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr i8, ptr %.01533.i.i.i, i64 8
  %i.aa = getelementptr i8, ptr %.01731.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr i8, ptr %.01533.i.i.i, i64 12
  %i.ae = getelementptr i8, ptr %.01731.i.i.i, i64 12
  %i.af = load i32, ptr %i.ad, align 4
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %.01533.i.i.i, i64 16
  %i.ai = getelementptr i8, ptr %.01731.i.i.i, i64 16
  %i.aj = add nsw i64 %.132.i.i.i, -4             ; 2 uses
  %.not23.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not23.i.i.i.3, label %xdr_stream_decode_uint32_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

xdr_stream_decode_uint32_array.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.ak = icmp sgt i64 %.0.i.i10.i, -1
  br i1 %i.ak, label %.thread, label %bb.h, !prof !15

bb.h:                                             ; preds = %xdr_stream_decode_uint32_array.exit.i.i
  %.not.i.i = icmp eq i64 %.0.i.i10.i, -90
  br i1 %.not.i.i, label %.thread, label %decode_attr_bitmap.exit

.thread:                                          ; preds = %bb.h, %xdr_stream_decode_uint32_array.exit.i.i, %bb.d, %bb.g
  %i.al = load i32, ptr %i.a, align 4
  %i.am = and i32 %i.al, -2049
  store i32 %i.am, ptr %i.a, align 4
  br label %decode_attr_bitmap.exit

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr i8, ptr %2, i64 8
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %i.ao, align 4
  store i32 0, ptr %2, align 4
  br label %decode_attr_bitmap.exit

decode_attr_bitmap.exit:                          ; preds = %bb.c, %bb.b, %bb.h, %bb.i, %.thread
  %.1 = phi i32 [ 0, %bb.i ], [ 0, %.thread ], [ -5, %bb.h ], [ -5, %bb.b ], [ -5, %bb.c ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -5, 1) i32 @decode_attr_open_arguments(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address) initializes((0, 20)) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = and i64 %i.c, 4194303
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %decode_bitmap4.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 4194304
  %.not14 = icmp eq i64 %i.e, 0
  br i1 %.not14, label %decode_bitmap4.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %decode_bitmap4.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.j) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %decode_bitmap4.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i32 %i.g, 0
  br i1 %i.m, label %xdr_stream_decode_uint32_array.exit.i.thread, label %.lr.ph.i.i

xdr_stream_decode_uint32_array.exit.i.thread:     ; preds = %bb.f
  %i.n = getelementptr [4 x i8], ptr %2, i64 %i.i
  store i32 0, ptr %i.n, align 4
  br label %select.unfold

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.o = load i32, ptr %i.k, align 4
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %2, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %.lr.ph.i.i, %bb.e, %xdr_stream_decode_uint32_array.exit.i.thread
  %i.q = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %i.r = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i15, label %decode_bitmap4.exit, label %bb.g, !prof !12

bb.g:                                             ; preds = %select.unfold
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.v) #11 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.w, null
  br i1 %.not.i.i16, label %decode_bitmap4.exit, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq ptr %i.q, null
  br i1 %i.x, label %select.unfold97, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.s, 0
  br i1 %i.y, label %xdr_stream_decode_uint32_array.exit.i27.thread, label %.lr.ph.i.i22

xdr_stream_decode_uint32_array.exit.i27.thread:   ; preds = %bb.i
  %i.z = getelementptr [4 x i8], ptr %i.q, i64 %i.u
  store i32 0, ptr %i.z, align 4
  br label %select.unfold97

.lr.ph.i.i22:                                     ; preds = %bb.i
  %i.aa = load i32, ptr %i.w, align 4
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %i.q, align 4
  br label %select.unfold97

select.unfold97:                                  ; preds = %.lr.ph.i.i22, %bb.h, %xdr_stream_decode_uint32_array.exit.i27.thread
  %i.ac = getelementptr i8, ptr %2, i64 8         ; 3 uses
  %i.ad = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i32, label %decode_bitmap4.exit, label %bb.j, !prof !12

bb.j:                                             ; preds = %select.unfold97
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.ah) #11 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i33, label %decode_bitmap4.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp eq ptr %i.ac, null
  br i1 %i.aj, label %select.unfold106, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %xdr_stream_decode_uint32_array.exit.i44.thread, label %.lr.ph.i.i39

xdr_stream_decode_uint32_array.exit.i44.thread:   ; preds = %bb.l
  %i.al = getelementptr [4 x i8], ptr %i.ac, i64 %i.ag
  store i32 0, ptr %i.al, align 4
  br label %select.unfold106

.lr.ph.i.i39:                                     ; preds = %bb.l
  %i.am = load i32, ptr %i.ai, align 4
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  store i32 %i.an, ptr %i.ac, align 4
  br label %select.unfold106

select.unfold106:                                 ; preds = %.lr.ph.i.i39, %bb.k, %xdr_stream_decode_uint32_array.exit.i44.thread
  %i.ao = getelementptr i8, ptr %2, i64 12        ; 3 uses
  %i.ap = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i49, label %decode_bitmap4.exit, label %bb.m, !prof !12

bb.m:                                             ; preds = %select.unfold106
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.at) #11 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.au, null
  br i1 %.not.i.i50, label %decode_bitmap4.exit, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq ptr %i.ao, null
  br i1 %i.av, label %select.unfold115, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp eq i32 %i.aq, 0
  br i1 %i.aw, label %xdr_stream_decode_uint32_array.exit.i61.thread, label %.lr.ph.i.i56

xdr_stream_decode_uint32_array.exit.i61.thread:   ; preds = %bb.o
  %i.ax = getelementptr [4 x i8], ptr %i.ao, i64 %i.as
  store i32 0, ptr %i.ax, align 4
  br label %select.unfold115

.lr.ph.i.i56:                                     ; preds = %bb.o
  %i.ay = load i32, ptr %i.au, align 4
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %i.ao, align 4
  br label %select.unfold115

select.unfold115:                                 ; preds = %.lr.ph.i.i56, %bb.n, %xdr_stream_decode_uint32_array.exit.i61.thread
  %i.ba = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.bb = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i66, label %decode_bitmap4.exit, label %bb.p, !prof !12

bb.p:                                             ; preds = %select.unfold115
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.bf) #11 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i67, label %decode_bitmap4.exit, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq ptr %i.ba, null
  br i1 %i.bh, label %select.unfold124, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i32 %i.bc, 0
  br i1 %i.bi, label %xdr_stream_decode_uint32_array.exit.i78.thread, label %.lr.ph.i.i73

xdr_stream_decode_uint32_array.exit.i78.thread:   ; preds = %bb.r
  %i.bj = getelementptr [4 x i8], ptr %i.ba, i64 %i.be
  store i32 0, ptr %i.bj, align 4
  br label %select.unfold124

.lr.ph.i.i73:                                     ; preds = %bb.r
  %i.bk = load i32, ptr %i.bg, align 4
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  store i32 %i.bl, ptr %i.ba, align 4
  br label %select.unfold124

select.unfold124:                                 ; preds = %.lr.ph.i.i73, %bb.q, %xdr_stream_decode_uint32_array.exit.i78.thread
  %i.bm = load i32, ptr %i.a, align 4
  %i.bn = and i32 %i.bm, -4194305
  store i32 %i.bn, ptr %i.a, align 4
  br label %decode_bitmap4.exit

decode_bitmap4.exit:                              ; preds = %bb.p, %select.unfold115, %bb.m, %select.unfold106, %bb.j, %select.unfold97, %bb.g, %select.unfold, %bb.d, %bb.c, %bb.b, %select.unfold124, %bb.a
  %.0 = phi i32 [ -5, %bb.m ], [ -5, %bb.a ], [ 0, %bb.b ], [ -5, %bb.d ], [ -5, %bb.g ], [ -5, %bb.j ], [ 0, %select.unfold124 ], [ -5, %bb.p ], [ -5, %bb.c ], [ -5, %select.unfold115 ], [ -5, %select.unfold ], [ -5, %select.unfold106 ], [ -5, %select.unfold97 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @decode_delegreturn(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %decode_op_hdr.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not20.i.i = icmp eq i32 %i.b, 134217728
  br i1 %.not20.i.i, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not21.i.i = icmp eq i32 %i.d, 0
  br i1 %.not21.i.i, label %decode_op_hdr.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef range(i32 3, 59) 8, i32 noundef %i.e) #12, !srcloc !41
  %i.f = tail call i32 @nfs4_stat_to_errno(i32 noundef %i.e) #11
  br label %decode_op_hdr.exit

bb.e:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.b)
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %i.g, i32 noundef range(i32 3, 59) 8) #12, !srcloc !40
  br label %decode_op_hdr.exit

decode_op_hdr.exit:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i32 [ 0, %bb.c ], [ -121, %bb.e ], [ %i.f, %bb.d ], [ -5, %bb.a ]
  ret i32 %.sink.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xdr_enter_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xdr_page_pos(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @decode_secinfo_common(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %decode_secinfo_gss.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 4
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %.not41 = icmp eq i32 %i.d, 0
  br i1 %.not41, label %decode_secinfo_gss.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %wide.trip.count = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = getelementptr [48 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %exitcond = icmp eq i64 %indvars.iv, 85
  br i1 %exitcond, label %decode_secinfo_gss.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %decode_secinfo_gss.exit.thread, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %i.h, align 4
  %i.l = icmp eq i32 %i.j, 100663296
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %decode_secinfo_gss.exit.thread, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)  ; 3 uses
  %i.p = icmp ugt i32 %i.o, 32
  br i1 %i.p, label %decode_secinfo_gss.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef %i.q) #11 ; 2 uses
  %.not19.i = icmp eq ptr %i.r, null
  br i1 %.not19.i, label %decode_secinfo_gss.exit.thread, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.h, i64 4
  %i.t = getelementptr i8, ptr %i.h, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr nonnull align 4 %i.r, i64 %i.q, i1 false)
  store i32 %i.o, ptr %i.s, align 4
  %i.u = tail call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 8) #11 ; 3 uses
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %decode_secinfo_gss.exit.thread, label %decode_secinfo_gss.exit, !prof !12

decode_secinfo_gss.exit:                          ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.u, align 4
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = getelementptr i8, ptr %i.h, i64 40
  store i32 %i.x, ptr %i.y, align 4
  %i.z = load i32, ptr %i.v, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr i8, ptr %i.h, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  br label %bb.i

bb.i:                                             ; preds = %decode_secinfo_gss.exit, %bb.d
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond43.not, label %decode_secinfo_gss.exit.thread, label %.lr.ph, !llvm.loop !278

decode_secinfo_gss.exit.thread:                   ; preds = %bb.c, %bb.i, %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b, %bb.a
  %.022 = phi i32 [ -5, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ], [ -5, %bb.e ], [ -22, %bb.f ], [ -5, %bb.g ], [ 0, %bb.i ], [ -5, %bb.c ], [ -5, %bb.h ]
  ret i32 %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @encode_op_map(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %xdr_stream_encode_u32.exit.i, !prof !12

xdr_stream_encode_u32.exit.i:                     ; preds = %bb.a
  store i32 67108864, ptr %i.a, align 4
  br label %encode_uint32.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit

encode_uint32.exit:                               ; preds = %xdr_stream_encode_u32.exit.i, %bb.b
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.c, null
  br i1 %.not.i.i6, label %bb.c, label %xdr_stream_encode_u32.exit.i7, !prof !12

xdr_stream_encode_u32.exit.i7:                    ; preds = %encode_uint32.exit
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.d, ptr %i.c, align 4
  br label %encode_uint32.exit8

bb.c:                                             ; preds = %encode_uint32.exit
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8

encode_uint32.exit8:                              ; preds = %xdr_stream_encode_u32.exit.i7, %bb.c
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6.1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i6.1, label %bb.d, label %xdr_stream_encode_u32.exit.i7.1, !prof !12

xdr_stream_encode_u32.exit.i7.1:                  ; preds = %encode_uint32.exit8
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %i.h, ptr %i.g, align 4
  br label %encode_uint32.exit8.1

bb.d:                                             ; preds = %encode_uint32.exit8
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8.1

encode_uint32.exit8.1:                            ; preds = %bb.d, %xdr_stream_encode_u32.exit.i7.1
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6.2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i6.2, label %bb.e, label %xdr_stream_encode_u32.exit.i7.2, !prof !12

xdr_stream_encode_u32.exit.i7.2:                  ; preds = %encode_uint32.exit8.1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.l, ptr %i.k, align 4
  br label %encode_uint32.exit8.2

bb.e:                                             ; preds = %encode_uint32.exit8.1
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8.2

encode_uint32.exit8.2:                            ; preds = %bb.e, %xdr_stream_encode_u32.exit.i7.2
  %i.m = getelementptr i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #11 ; 2 uses
  %.not.i.i6.3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i6.3, label %bb.f, label %xdr_stream_encode_u32.exit.i7.3, !prof !12

xdr_stream_encode_u32.exit.i7.3:                  ; preds = %encode_uint32.exit8.2
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.p, ptr %i.o, align 4
  br label %encode_uint32.exit8.3

bb.f:                                             ; preds = %encode_uint32.exit8.2
  tail call void asm sideeffect "1749: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1749b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1749) #10, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.72, ptr nonnull @.str.73, i32 985, i32 2307, i64 16) #10, !srcloc !26
  tail call void asm sideeffect "1750: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1750b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1750) #10, !srcloc !27
  br label %encode_uint32.exit8.3

encode_uint32.exit8.3:                            ; preds = %bb.f, %xdr_stream_encode_u32.exit.i7.3
  ret void
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 2148809231, i64 2148809271, i64 2148809388, i64 2148809409, i64 2148809452, i64 2148809467, i64 2148809500, i64 2148809534, i64 2148809558}
!18 = !{i64 2162718361}
!19 = !{i64 2148601775}
!20 = !{i64 2151865141}
!21 = !{i64 2151868443}
!22 = !{i64 2151868865}
!23 = !{i64 2151880647}
!24 = !{!"branch_weights", i32 4001, i32 4000000}
!25 = !{i64 2165870107, i64 2165869977}
!26 = !{i64 2165870638, i64 2165871709, i64 2165871742, i64 2165871777, i64 2165871793, i64 2165872720, i64 2165872778, i64 2165872827, i64 2165872637, i64 2165871852, i64 2165871884, i64 2165871967}
!27 = !{i64 2165873128, i64 2165872999}
!28 = !{i64 2165865689, i64 2165865559}
!29 = !{i64 2165866220, i64 2165867301, i64 2165867334, i64 2165867369, i64 2165867385, i64 2165868312, i64 2165868370, i64 2165868419, i64 2165868229, i64 2165867444, i64 2165867476, i64 2165867559}
!30 = !{i64 2165868720, i64 2165868591}
!31 = !{i64 2161670353, i64 2161670228}
!32 = !{i64 2161670876, i64 2161671963, i64 2161671996, i64 2161672031, i64 2161672047, i64 2161672974, i64 2161673032, i64 2161673081, i64 2161672891, i64 2161672106, i64 2161672138, i64 2161672221}
!33 = !{i64 2161673385, i64 2161673261}
!34 = !{i64 2165862674, i64 2165862544}
!35 = !{i64 2165863205, i64 2165863681, i64 2165863714, i64 2165863749, i64 2165863765, i64 2165864606, i64 2165864664, i64 2165864713, i64 2165864523, i64 2165863824, i64 2165863856}
!36 = !{i64 2165891873, i64 2165891743}
!37 = !{i64 2165892404, i64 2165893466, i64 2165893499, i64 2165893534, i64 2165893550, i64 2165894477, i64 2165894535, i64 2165894584, i64 2165894394, i64 2165893609, i64 2165893641, i64 2165893724}
!38 = !{i64 2165894886, i64 2165894757}
!39 = !{!"auto-init"}
!40 = !{i64 100466}
!41 = !{i64 100346}
!42 = !{i64 44752}
!43 = !{i64 44983}
!44 = !{i64 45136}
!45 = !{i64 2165874515, i64 2165874385}
!46 = !{i64 2165875046, i64 2165876117, i64 2165876150, i64 2165876185, i64 2165876201, i64 2165877128, i64 2165877186, i64 2165877235, i64 2165877045, i64 2165876260, i64 2165876292, i64 2165876375}
!47 = !{i64 2165877536, i64 2165877407}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{i64 2165878845, i64 2165878715}
!51 = !{i64 2165879376, i64 2165884482, i64 2165884515, i64 2165884550, i64 2165884566, i64 2165885493, i64 2165885551, i64 2165885600, i64 2165885410, i64 2165884625, i64 2165884657, i64 2165884740}
!52 = !{i64 2165885902, i64 2165885773}
!53 = distinct !{!53, !13}
!54 = !{i64 203450}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = !{i64 139242}
!60 = !{i64 139360}
!61 = !{i64 139503}
!62 = !{i64 139646}
!63 = !{i64 139762}
!64 = !{i64 139892}
!65 = !{i64 140016}
!66 = !{i64 140140}
!67 = !{i64 140266}
!68 = !{i64 140390}
!69 = !{i64 140593}
!70 = !{i64 140699}
!71 = !{i64 83787}
!72 = !{i64 188470}
!73 = !{i64 85613}
!74 = !{i64 189008}
!75 = !{i64 86158}
!76 = !{i64 189635}
!77 = !{i64 78347}
!78 = !{i64 78429}
!79 = !{i64 78638}
!80 = !{i64 183368}
!81 = !{i64 183568}
!82 = !{i64 183626}
!83 = !{i64 183708}
!84 = !{i64 184156}
!85 = !{i64 79584}
!86 = !{i64 79666}
!87 = !{i64 79849}
!88 = !{i64 184560}
!89 = !{i64 184760}
!90 = !{i64 184836}
!91 = !{i64 80382}
!92 = !{i64 80485}
!93 = !{i64 174915}
!94 = !{i64 175136}
!95 = !{i64 77759}
!96 = !{i64 77862}
!97 = !{i64 182663}
!98 = !{i64 182884}
!99 = !{i64 183107}
!100 = !{i64 84380}
!101 = !{i64 58313}
!102 = !{i64 185259}
!103 = !{i64 185459}
!104 = !{i64 86597}
!105 = !{i64 190135}
!106 = !{i64 190303}
!107 = !{i64 191955}
!108 = !{i64 192321}
!109 = !{i64 192645}
!110 = !{i64 80906}
!111 = !{i64 185791}
!112 = !{i64 81355}
!113 = !{i64 186256}
!114 = !{i64 81805}
!115 = !{i64 186722}
!116 = !{i64 72836}
!117 = !{i64 175518}
!118 = !{i64 175723}
!119 = !{i64 77232}
!120 = !{i64 180598}
!121 = !{i64 169340}
!122 = !{i64 169476}
!123 = !{i64 169606}
!124 = !{i64 73355}
!125 = !{i64 176117}
!126 = !{i64 176372}
!127 = !{i64 74422}
!128 = !{i64 177353}
!129 = !{i64 177557}
!130 = !{i64 74898}
!131 = !{i64 177906}
!132 = !{i64 75350}
!133 = !{i64 178384}
!134 = !{i64 178639}
!135 = !{i64 178693}
!136 = !{i64 75894}
!137 = !{i64 178986}
!138 = !{i64 179241}
!139 = !{i64 179295}
!140 = !{i64 179458}
!141 = !{i64 76879}
!142 = !{i64 180337}
!143 = !{i64 76485}
!144 = !{i64 44062}
!145 = !{i64 179801}
!146 = !{i64 180073}
!147 = !{i64 87055}
!148 = !{i64 87137}
!149 = distinct !{!149, !13}
!150 = !{i64 190577}
!151 = !{i64 87565}
!152 = !{i64 87647}
!153 = distinct !{!153, !13}
!154 = !{i64 191022}
!155 = !{i64 134353}
!156 = !{i64 134446}
!157 = !{i64 82667}
!158 = !{i64 187526}
!159 = !{i64 83230}
!160 = !{i64 187999}
!161 = !{i64 88138}
!162 = !{i64 88225}
!163 = distinct !{!163, !13}
!164 = distinct !{!164, !13}
!165 = !{i64 191487}
!166 = !{i64 132697}
!167 = !{i64 132792}
!168 = !{i64 132893}
!169 = !{i64 132988}
!170 = !{i64 133094}
!171 = !{i64 133198}
!172 = !{i64 133311}
!173 = distinct !{!173, !13}
!174 = !{i64 89718}
!175 = !{i64 89826}
!176 = !{i64 192997}
!177 = !{i64 193223}
!178 = !{i64 158488}
!179 = !{i64 193552}
!180 = !{i64 84990}
!181 = !{i64 85116}
!182 = distinct !{!182, !13}
!183 = !{i64 182174}
!184 = !{i64 181279}
!185 = !{i64 181633}
!186 = !{i64 181833}
!187 = !{i64 90456}
!188 = !{i64 45334}
!189 = !{i64 193848}
!190 = !{i64 194286}
!191 = !{i64 187161}
!192 = !{i64 91289}
!193 = !{i64 194794}
!194 = !{i64 161790}
!195 = !{i64 91780}
!196 = !{i64 195293}
!197 = !{i64 195493}
!198 = !{i64 195574}
!199 = !{i64 62345}
!200 = !{i64 62397}
!201 = !{i64 2165933037, i64 2165932907}
!202 = !{i64 2165933568, i64 2165934607, i64 2165934640, i64 2165934675, i64 2165934691, i64 2165935618, i64 2165935676, i64 2165935725, i64 2165935535, i64 2165934750, i64 2165934782, i64 2165934865}
!203 = !{i64 2165936027, i64 2165935898}
!204 = !{i64 2148370099}
!205 = distinct !{!205, !13}
!206 = distinct !{!206, !13}
!207 = !{i64 196146}
!208 = !{i64 2166021030, i64 2166020900}
!209 = !{i64 2166021561, i64 2166022600, i64 2166022633, i64 2166022668, i64 2166022684, i64 2166023611, i64 2166023669, i64 2166023718, i64 2166023528, i64 2166022743, i64 2166022775, i64 2166022858}
!210 = !{i64 2166024020, i64 2166023891}
!211 = !{i64 196465}
!212 = !{i64 196777}
!213 = !{i64 94270}
!214 = !{i64 197392}
!215 = !{i64 94723}
!216 = !{i64 197761}
!217 = !{i64 197938}
!218 = !{i64 95210}
!219 = !{i64 198249}
!220 = !{i64 96356}
!221 = !{i64 96449}
!222 = !{i64 199127}
!223 = !{i64 95688}
!224 = distinct !{!224, !14}
!225 = !{i64 198681}
!226 = !{i64 97057}
!227 = !{i64 200139}
!228 = !{i64 97617}
!229 = !{i64 97710}
!230 = !{i64 199635}
!231 = !{i64 199835}
!232 = !{i64 98115}
!233 = !{i64 200716}
!234 = !{i64 162008}
!235 = !{i64 98601}
!236 = !{i64 201228}
!237 = !{i64 99052}
!238 = !{i64 201679}
!239 = !{i64 195830}
!240 = !{i64 197092}
!241 = !{i64 73882}
!242 = !{i64 176724}
!243 = !{i64 176980}
!244 = distinct !{!244, !13}
!245 = distinct !{!245, !13}
!246 = !{i64 2165887275, i64 2165887145}
!247 = !{i64 2165887806, i64 2165888872, i64 2165888905, i64 2165888940, i64 2165888956, i64 2165889883, i64 2165889941, i64 2165889990, i64 2165889800, i64 2165889015, i64 2165889047, i64 2165889130}
!248 = !{i64 2165890292, i64 2165890163}
!249 = !{i64 2162686649}
!250 = !{i64 2162650057}
!251 = distinct !{!251, !13}
!252 = distinct !{!252, !14}
!253 = distinct !{!253, !13}
!254 = distinct !{!254, !13}
!255 = !{i64 141405}
!256 = !{i64 49854}
!257 = !{i64 50035}
!258 = !{i64 50401}
!259 = !{i64 2165914755, i64 2165914625}
!260 = !{i64 2165915286, i64 2165915762, i64 2165915795, i64 2165915830, i64 2165915846, i64 2165916687, i64 2165916745, i64 2165916794, i64 2165916604, i64 2165915905, i64 2165915937}
!261 = !{i64 2165919304, i64 2165919174}
!262 = !{i64 2165919835, i64 2165920311, i64 2165920344, i64 2165920379, i64 2165920395, i64 2165921236, i64 2165921294, i64 2165921343, i64 2165921153, i64 2165920454, i64 2165920486}
!263 = distinct !{!263, !13}
!264 = distinct !{!264, !13}
!265 = distinct !{!265, !13}
!266 = !{i64 145345}
!267 = !{i64 145444}
!268 = !{i64 145583}
!269 = !{i64 145763}
!270 = !{i64 145867}
!271 = !{i64 146018}
!272 = !{i64 146118}
!273 = !{i64 146224}
!274 = !{i64 146347}
!275 = distinct !{!275, !14}
!276 = distinct !{!276, !13}
!277 = distinct !{!277, !13}
!278 = distinct !{!278, !14}
end_hunk_2

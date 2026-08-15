inline.NumInlined: 90
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@authenc_derive_encrypt_keys:_kzalloc_noprof.exit
  store i64 0, ptr %5, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !10
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  store i32 %i.c, ptr %5, align 8
  %i.d = getelementptr i8, ptr %0, i64 66
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  store i32 %i.f, ptr %6, align 8
  %i.g = add nuw nsw i32 %i.c, 8
  %i.h = add nuw nsw i32 %i.g, %i.f               ; 2 uses
  store i32 %i.h, ptr %3, align 8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.i, i32 noundef range(i32 256, 0) 3520) #14 ; 6 uses
  %i.k = getelementptr i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.l = getelementptr i8, ptr %i.j, i64 2
  store i16 1, ptr %i.l, align 2
  store i16 8, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.n, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = zext i16 %i.e to i64
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = call i32 @krb5_derive_Ke(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #13 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.t) #15 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.w = call i32 @krb5_derive_Ki(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i32 noundef %4) #13 ; 4 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.w) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_kzalloc_noprof.exit, %bb.b
  %.0 = phi i32 [ %i.t, %bb.b ], [ -12, %_kzalloc_noprof.exit ], [ %i.w, %bb.d ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @krb5_derive_Ke(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @krb5_derive_Ki(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @authenc_load_encrypt_keys(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 16)) %3, i32 %4) #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = load i32, ptr %1, align 8
  %i.b = add i32 %i.a, 8
  %i.c = load i32, ptr %2, align 8
  %i.d = add i32 %i.b, %i.c                       ; 2 uses
  store i32 %i.d, ptr %3, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.e, i32 noundef range(i32 256, 0) 3520) #14 ; 6 uses
  %i.g = getelementptr i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.h = getelementptr i8, ptr %i.f, i64 2
  store i16 1, ptr %i.h, align 2
  store i16 8, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %1, align 8                ; 2 uses
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %2, align 8
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 1 %i.n, i64 %i.p, i1 false)
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext i32 %i.j to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @rfc3961_derive_checksum_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef initializes((0, 4), (8, 16)) %3, i32 noundef %4) #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = getelementptr i8, ptr %0, i64 62
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %3, align 8
  %i.d = zext i16 %i.b to i64
  %i.e = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.d, i32 noundef range(i32 256, 0) 3520) #14 ; 2 uses
  %i.f = getelementptr i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.g = tail call i32 @krb5_derive_Kc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #13 ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %i.g) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %_kzalloc_noprof.exit
  %.0 = phi i32 [ -12, %_kzalloc_noprof.exit ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @krb5_derive_Kc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @rfc3961_load_checksum_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 16)) %2, i32 %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 62
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %2, align 8
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %1, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @kmemdup_noprof(ptr noundef %i.e, i64 noundef %i.g, i32 noundef 3264) #16 ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %.not = icmp eq ptr %i.h, null
  %.0 = select i1 %.not, i32 -12, i32 0
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @krb5_aead_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 50         ; 4 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i64
  %.not = icmp eq i64 %5, %i.c
  br i1 %.not, label %.critedge, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "741: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 741b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 741) #12, !srcloc !14
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 552, i32 2305, i64 16) #12, !srcloc !15
  tail call void asm sideeffect "742: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 742b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 742) #12, !srcloc !16
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  %i.d = add i64 %6, %5                           ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i64
  %i.h = add i64 %i.d, %i.g
  %i.i = icmp ugt i64 %i.h, %4
  br i1 %i.i, label %bb.c, label %.critedge68, !prof !17

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "743: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 743b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 743) #12, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 560, i32 2305, i64 16) #12, !srcloc !19
  tail call void asm sideeffect "744: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 744b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 744) #12, !srcloc !20
  br label %bb.i

.critedge68:                                      ; preds = %.critedge
  %i.j = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %8 = getelementptr i8, ptr %1, i64 32
  %.val70 = load ptr, ptr %8, align 8
  %9 = getelementptr i8, ptr %.val70, i64 -16
  %.val70.val = load i32, ptr %9, align 8
  %10 = add i32 %.val70.val, -1
  %11 = or i32 %10, 7
  %.val69 = load i32, ptr %i.j, align 4
  %12 = add i32 %.val69, 79
  %13 = or i32 %12, 7
  %14 = add i32 %11, %13
  %i.k = add i32 %14, 2
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.l, i32 noundef range(i32 256, 0) 3392) #14 ; 13 uses
  %.not65 = icmp eq ptr %i.m, null
  br i1 %.not65, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge68
  br i1 %7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i16, ptr %i.a, align 2
  %i.o = zext i16 %i.n to i64
  tail call void @get_random_bytes(ptr noundef nonnull %i.m, i64 noundef %i.o) #13
  %i.p = load i16, ptr %i.a, align 2
  %i.q = zext i16 %i.p to i64
  %i.r = tail call i64 @sg_pcopy_from_buffer(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.m, i64 noundef %i.q, i64 noundef 0) #13
  %i.s = load i16, ptr %i.a, align 2
  %i.t = zext i16 %i.s to i64
  %.not66 = icmp eq i64 %i.r, %i.t
  br i1 %.not66, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val = load i32, ptr %i.j, align 4
  %i.u = add i32 %.val, 79
  %i.v = or i32 %i.u, 7
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = getelementptr i8, ptr %i.m, i64 32
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.m, i64 16
  %i.ac = getelementptr i8, ptr %i.m, i64 40
  store i32 0, ptr %i.ac, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ad = trunc i64 %i.d to i32
  %i.ae = getelementptr i8, ptr %i.m, i64 64
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %i.m, i64 72
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.m, i64 52
  store i32 %i.ad, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.m, i64 56
  store ptr %i.y, ptr %i.ah, align 8
  %i.ai = tail call i32 @crypto_aead_encrypt(ptr noundef nonnull %i.m) #13 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i16, ptr %i.e, align 4
  %i.am = zext i16 %i.al to i64
  %i.an = add i64 %i.d, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %.062 = phi i64 [ -14, %bb.e ], [ %i.aj, %bb.f ], [ %i.an, %bb.g ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.m) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %.critedge68, %bb.h
  %.0 = phi i64 [ -14, %bb.c ], [ -22, %bb.b ], [ %.062, %bb.h ], [ -12, %.critedge68 ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @krb5_aead_decrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "745: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 745b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 745) #12, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 619, i32 2305, i64 16) #12, !srcloc !22
  tail call void asm sideeffect "746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 746b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 746) #12, !srcloc !23
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  %i.b = load i64, ptr %5, align 8
  %i.c = getelementptr i8, ptr %0, i64 50         ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.f, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %.critedge
  %i.k = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %6 = getelementptr i8, ptr %1, i64 32
  %.val41 = load ptr, ptr %6, align 8
  %7 = getelementptr i8, ptr %.val41, i64 -16
  %.val41.val = load i32, ptr %7, align 8
  %8 = add i32 %.val41.val, -1
  %9 = or i32 %8, 7
  %.val40 = load i32, ptr %i.k, align 4
  %10 = add i32 %.val40, 79
  %11 = or i32 %10, 7
  %12 = add i32 %9, %11
  %i.l = add i32 %12, 2
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.m, i32 noundef range(i32 256, 0) 3392) #14 ; 11 uses
  %.not39 = icmp eq ptr %i.n, null
  br i1 %.not39, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  %.val = load i32, ptr %i.k, align 4
  %i.o = add i32 %.val, 79
  %i.p = or i32 %i.o, 7
  %i.q = add i32 %i.p, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = getelementptr i8, ptr %i.n, i64 32
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.n, i64 16
  %i.w = getelementptr i8, ptr %i.n, i64 40
  store i32 0, ptr %i.w, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = load i64, ptr %5, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr i8, ptr %i.n, i64 64
  store ptr %2, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.n, i64 72
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.n, i64 52
  store i32 %i.y, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %i.n, i64 56
  store ptr %i.s, ptr %i.ac, align 8
  %i.ad = tail call i32 @crypto_aead_decrypt(ptr noundef nonnull %i.n) #13 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i16, ptr %i.c, align 2
  %i.ag = zext i16 %i.af to i64
  %i.ah = load i64, ptr %4, align 8
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %4, align 8
  %i.aj = load i16, ptr %i.c, align 2
  %i.ak = zext i16 %i.aj to i64
  %i.al = load i16, ptr %i.f, align 4
  %i.am = zext i16 %i.al to i64
  %i.an = load i64, ptr %5, align 8
  %i.ao = add nuw nsw i64 %i.am, %i.ak
  %i.ap = sub i64 %i.an, %i.ao
  store i64 %i.ap, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.037 = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.d ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.n) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_kzalloc_noprof.exit, %.critedge, %bb.e
  %.0 = phi i32 [ -71, %.critedge ], [ -22, %bb.b ], [ %.037, %bb.e ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @rfc3961_get_mic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, i64 %5, i64 noundef %6, i64 noundef %7) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 52         ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i64
  %.not = icmp eq i64 %6, %i.c
  br i1 %.not, label %.critedge, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 747b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 747) #12, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 667, i32 2305, i64 16) #12, !srcloc !25
  tail call void asm sideeffect "748: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 748b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 748) #12, !srcloc !26
  br label %bb.j

.critedge:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val58 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.e = getelementptr i8, ptr %.val58, i64 -8
  %.val59.val.a = load i32, ptr %i.e, align 8
  %i.f = add i32 %.val59.val.a, -1
  %i.g = or i32 %i.f, 7
  %i.h = getelementptr i8, ptr %.val58, i64 -16
  %.val58.val = load i32, ptr %i.h, align 8
  %i.i = add i32 %.val58.val, 7
  %8 = or i32 %i.i, 7
  %9 = add i32 %i.g, %8
  %i.j = add i32 %9, 2
  %i.k = zext i32 %i.j to i64
  %i.l = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.k, i32 noundef range(i32 256, 0) 3392) #14 ; 8 uses
  %.not55 = icmp eq ptr %i.l, null
  br i1 %.not55, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.critedge
  store ptr %1, ptr %i.l, align 8
  %i.m = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.l) #13 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not56 = icmp eq ptr %2, null
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %2, align 8
  %i.s = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.l, ptr noundef %i.q, i32 noundef %i.r, ptr noundef null) #13 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call i32 @crypto_shash_update_sg(ptr noundef nonnull %i.l, ptr noundef %3, i64 noundef %6, i64 noundef %7) #17 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8
  %i.y = getelementptr i8, ptr %.val, i64 -16
  %.val.val = load i32, ptr %i.y, align 8
  %i.z = add i32 %.val.val, 7
  %i.aa = or i32 %i.z, 7
  %i.ab = add i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.ac   ; 2 uses
  %i.ae = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 0, ptr noundef %i.ad) #13 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i16, ptr %i.a, align 4
  %i.ai = zext i16 %i.ah to i64                   ; 2 uses
  %i.aj = sub nsw i64 %6, %i.ai
  %i.ak = tail call i64 @sg_pcopy_from_buffer(ptr noundef %3, i32 noundef %4, ptr noundef %i.ad, i64 noundef %i.ai, i64 noundef %i.aj) #13
  %i.al = load i16, ptr %i.a, align 4
  %i.am = zext i16 %i.al to i64                   ; 2 uses
  %.not57 = icmp eq i64 %i.ak, %i.am
  %i.an = add i64 %7, %i.am
  %spec.select = select i1 %.not57, i64 %i.an, i64 -14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.047 = phi i64 [ %i.n, %bb.c ], [ %i.t, %bb.e ], [ %i.w, %bb.f ], [ %i.af, %bb.g ], [ %spec.select, %bb.h ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.l) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %.critedge, %bb.i
  %.0 = phi i64 [ -90, %bb.b ], [ %.047, %bb.i ], [ -12, %.critedge ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_shash_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @rfc3961_verify_mic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %5, align 8                ; 2 uses
  %i.b = load i64, ptr %6, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 52         ; 4 uses
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = icmp ult i64 %i.b, %i.e
  br i1 %i.f, label %bb.i, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.g = add i64 %i.a, %i.e
  %i.h = sub nuw i64 %i.b, %i.e
  %i.i = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val65 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.j = getelementptr i8, ptr %.val65, i64 -8
  %.val67.val.a = load i32, ptr %i.j, align 8
  %7 = shl i32 %.val67.val.a, 1
  %8 = add i32 %7, -2
  %9 = or i32 %8, 14
  %i.k = getelementptr i8, ptr %.val65, i64 -16
  %.val65.val = load i32, ptr %i.k, align 8
  %10 = add i32 %.val65.val, 7
  %11 = or i32 %10, 7
  %12 = add i32 %9, %11
  %i.l = add i32 %12, 3
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.m, i32 noundef range(i32 256, 0) 3392) #14 ; 8 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %.val64 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.o = getelementptr i8, ptr %.val64, i64 -16
  %.val64.val = load i32, ptr %i.o, align 8
  %i.p = add i32 %.val64.val, 7
  %i.q = or i32 %i.p, 7
  %i.r = add i32 %i.q, 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s     ; 3 uses
  %i.u = getelementptr i8, ptr %.val64, i64 -8
  %.val66.val = load i32, ptr %i.u, align 8
  %i.v = add i32 %.val66.val, -1
  %13 = or i32 %i.v, 7
  %14 = add i32 %13, 1
  %i.w = zext i32 %14 to i64
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w     ; 2 uses
  store ptr %1, ptr %i.n, align 8
  %i.y = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.n) #13 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i32, ptr %2, align 8
  %i.ad = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.n, ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef null) #13 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = tail call i32 @crypto_shash_update_sg(ptr noundef nonnull %i.n, ptr noundef %3, i64 noundef %i.g, i64 noundef %i.h) #17 ; 0 uses
  %i.ag = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 0, ptr noundef %i.t) #13 ; 0 uses
  %i.ah = load i16, ptr %i.c, align 4
  %i.ai = zext i16 %i.ah to i64
  %i.aj = tail call i64 @sg_pcopy_to_buffer(ptr noundef %3, i32 noundef %4, ptr noundef %i.x, i64 noundef %i.ai, i64 noundef %i.a) #13 ; 3 uses
  %i.ak = load i16, ptr %i.c, align 4
  %i.al = zext i16 %i.ak to i64
  %.not62 = icmp eq i64 %i.aj, %i.al
  br i1 %.not62, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %i.t, ptr %i.x, i64 %i.aj)
  %.not63 = icmp eq i32 %bcmp, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %5, align 8
  %i.an = add i64 %i.am, %i.aj
  store i64 %i.an, ptr %5, align 8
  %i.ao = load i16, ptr %i.c, align 4
  %i.ap = zext i16 %i.ao to i64
  %i.aq = load i64, ptr %6, align 8
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %6, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.g
  %.054 = phi i32 [ %i.y, %bb.b ], [ %i.ad, %bb.d ], [ -14, %bb.e ], [ 0, %bb.g ], [ -74, %bb.f ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.n) #13
  br label %bb.i

bb.i:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %bb.h
  %.0 = phi i32 [ -71, %bb.a ], [ %.054, %bb.h ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfc3961_calc_PRF(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca [1 x %struct.scatterlist], align 16 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [464 x i8], align 8               ; 13 uses
  %6 = alloca %struct.krb5_buffer, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i32
  %i.f = load i32, ptr %3, align 8
  %i.g = getelementptr i8, ptr %0, i64 60
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %.not = icmp eq i32 %i.f, %i.i
  br i1 %.not, label %_kzalloc_noprof.exit, label %bb.r

_kzalloc_noprof.exit:                             ; preds = %bb.a
  store i64 0, ptr %6, align 8, !annotation !10
  %i.j = getelementptr i8, ptr %0, i64 58
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 54
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  store i32 %i.o, ptr %6, align 8
  %i.p = add nuw nsw i32 %i.l, 15
  %i.q = and i32 %i.p, 131056                     ; 2 uses
  %i.r = or i32 %4, 256                           ; 3 uses
  %i.s = add nuw nsw i32 %i.o, 15
  %i.t = and i32 %i.s, 131056
  %i.u = add nuw nsw i32 %i.t, %i.q
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.v, i32 noundef range(i32 256, 0) %i.r) #14 ; 5 uses
  %.not31 = icmp eq ptr %i.w, null
  br i1 %.not31, label %bb.r, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.x = zext nneg i32 %i.q to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.aa, align 8
  %i.ab = tail call ptr @crypto_alloc_shash(ptr noundef %.val, i32 noundef 0, i32 noundef 0) #13 ; 7 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %bb.c, label %_kzalloc_noprof.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = icmp eq ptr %i.ab, inttoptr (i64 -2 to ptr)
  %i.af = trunc i64 %i.ad to i32
  br i1 %i.ae, label %rfc3961_calc_E.exit, label %rfc3961_calc_H.exit

_kzalloc_noprof.exit.i:                           ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  %.val.i = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.val.i, i64 -16
  %.val.val.i = load i32, ptr %i.ah, align 8
  %i.ai = zext i32 %.val.val.i to i64
  %i.aj = add nuw nsw i64 %i.ai, 8
  %i.ak = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.aj, i32 noundef range(i32 256, 0) %i.r) #14 ; 5 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.h, label %_kzalloc_noprof.exit53.i

_kzalloc_noprof.exit53.i:                         ; preds = %_kzalloc_noprof.exit.i
  %.val44.i = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr i8, ptr %.val44.i, i64 -8
  %.val44.val.i = load i32, ptr %i.al, align 8    ; 2 uses
  %i.am = zext i32 %.val44.val.i to i64
  %i.an = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967304) %i.am, i32 noundef range(i32 256, 0) %i.r) #14 ; 4 uses
  %.not43.i = icmp eq ptr %i.an, null
  br i1 %.not43.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit53.i
  store ptr %i.ab, ptr %i.ak, align 8
  %i.ao = tail call i32 @crypto_shash_init(ptr noundef nonnull %i.ak) #13 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %2, align 8
  %i.at = tail call i32 @crypto_shash_finup(ptr noundef nonnull %i.ak, ptr noundef %i.ar, i32 noundef %i.as, ptr noundef nonnull %i.an) #13 ; 3 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.038.i = phi i32 [ %i.ao, %bb.d ], [ %i.at, %bb.e ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.an) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_kzalloc_noprof.exit53.i
  %.1.i = phi i32 [ %.038.i, %bb.f ], [ %i.at, %bb.e ], [ -12, %_kzalloc_noprof.exit53.i ]
  tail call void @kfree_sensitive(ptr noundef nonnull %i.ak) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_kzalloc_noprof.exit.i
  %.sroa.843.0 = phi ptr [ %i.w, %_kzalloc_noprof.exit.i ], [ %i.an, %bb.g ]
  %.sroa.040.0 = phi i32 [ %i.l, %_kzalloc_noprof.exit.i ], [ %.val44.val.i, %bb.g ]
  %.2.i = phi i32 [ -12, %_kzalloc_noprof.exit.i ], [ %.1.i, %bb.g ]
  tail call void @crypto_destroy_tfm(ptr noundef %i.ab, ptr noundef %i.ab) #13
  br label %rfc3961_calc_H.exit

rfc3961_calc_H.exit:                              ; preds = %bb.c, %bb.h
  %.sroa.843.1 = phi ptr [ %i.w, %bb.c ], [ %.sroa.843.0, %bb.h ]
  %.sroa.040.1 = phi i32 [ %i.l, %bb.c ], [ %.sroa.040.0, %bb.h ]
  %.0.i = phi i32 [ %i.af, %bb.c ], [ %.2.i, %bb.h ] ; 2 uses
  %i.av = icmp slt i32 %.0.i, 0
  br i1 %i.av, label %rfc3961_calc_E.exit, label %bb.i

bb.i:                                             ; preds = %rfc3961_calc_H.exit
  %i.aw = sub nsw i32 0, %i.e
  %i.ax = and i32 %.sroa.040.1, %i.aw             ; 3 uses
  %i.ay = call i32 @rfc3961_calc_DK(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rfc3961_calc_PRF.prfconstant, ptr noundef nonnull %6, i32 noundef %4) #17, !srcloc !27 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %rfc3961_calc_E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %0, i64 40
  %.val32 = load ptr, ptr %i.ba, align 8
  %i.bb = call ptr @crypto_alloc_sync_skcipher(ptr noundef %.val32, i32 noundef 0, i32 noundef 0) #13 ; 8 uses
  %i.bc = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = icmp eq ptr %i.bb, inttoptr (i64 -2 to ptr)
  %i.bf = trunc i64 %i.bd to i32
  %spec.select.i38 = select i1 %i.be, i32 -65, i32 %i.bf
  br label %rfc3961_calc_E.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.z, align 8
  %i.bh = load i32, ptr %6, align 8
  %i.bi = call i32 @crypto_skcipher_setkey(ptr noundef %i.bb, ptr noundef %i.bg, i32 noundef %i.bh) #13 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iov_iter?download=true
inline.NumInlined: 487
inline.NumDeleted: 98
begin_hunk_0_@fault_in_iov_iter_readable:bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call i64 @fault_in_readable(ptr noundef %i.g, i64 noundef %i.b) #13
  %.neg53 = sub i64 %1, %i.b
  %i.i = add i64 %.neg53, %i.h
  br label %bb.e

iter_iov.exit:                                    ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 24
  %.val54 = load i64, ptr %i.j, align 8
  %i.k = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val54) ; 5 uses
  %i.l = sub i64 %1, %i.k
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %.not62 = icmp eq i64 %i.k, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter_iov.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not51.peel = icmp eq i64 %i.r, %i.p
  br i1 %.not51.peel, label %.lr.ph.preheader75, label %bb.c, !prof !11

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.s = sub i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.s) ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 %i.p
  %i.w = tail call i64 @fault_in_readable(ptr noundef %i.v, i64 noundef %i.t) #13 ; 2 uses
  %.neg.peel = sub i64 %i.w, %i.t
  %i.x = add i64 %.neg.peel, %i.k                 ; 3 uses
  %.not52.peel = icmp eq i64 %i.w, 0
  br i1 %.not52.peel, label %select.unfold.peel, label %._crit_edge

select.unfold.peel:                               ; preds = %bb.c
  %.not.peel = icmp eq i64 %i.x, 0
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.preheader75

.lr.ph.preheader75:                               ; preds = %.lr.ph.preheader, %select.unfold.peel
  %.04865.ph = phi i64 [ %i.k, %.lr.ph.preheader ], [ %i.x, %select.unfold.peel ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader75, %select.unfold
  %.04865 = phi i64 [ %.1.ph, %select.unfold ], [ %.04865.ph, %.lr.ph.preheader75 ] ; 3 uses
  %.04964.pn = phi ptr [ %.04964, %select.unfold ], [ %i.n, %.lr.ph.preheader75 ] ; 2 uses
  %.04964 = getelementptr i8, ptr %.04964.pn, i64 16 ; 2 uses
  %i.y = getelementptr i8, ptr %.04964.pn, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not51 = icmp eq i64 %i.z, 0
  br i1 %.not51, label %select.unfold, label %bb.d, !prof !11

bb.d:                                             ; preds = %.lr.ph
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.04865, i64 %i.z) ; 2 uses
  %i.ab = load ptr, ptr %.04964, align 8
  %i.ac = tail call i64 @fault_in_readable(ptr noundef %i.ab, i64 noundef %i.aa) #13 ; 2 uses
  %.neg = sub i64 %i.ac, %i.aa
  %i.ad = add i64 %.neg, %.04865                  ; 2 uses
  %.not52 = icmp eq i64 %i.ac, 0
  br i1 %.not52, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.d, %.lr.ph
  %.1.ph = phi i64 [ %.04865, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.1.ph, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %select.unfold, %bb.d, %bb.c, %select.unfold.peel, %iter_iov.exit
  %.2 = phi i64 [ 0, %iter_iov.exit ], [ %i.x, %bb.c ], [ 0, %select.unfold.peel ], [ 0, %select.unfold ], [ %i.ad, %bb.d ]
  %i.ae = add i64 %i.l, %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %.047 = phi i64 [ %i.i, %bb.b ], [ %i.ae, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @fault_in_readable(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @fault_in_iov_iter_writeable(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i8, ptr %0, align 8
  switch i8 %.val, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %iter_iov.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val55 = load i64, ptr %i.a, align 8
  %i.b = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val55) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call i64 @fault_in_safe_writeable(ptr noundef %i.g, i64 noundef %i.b) #13
  %.neg53 = sub i64 %1, %i.b
  %i.i = add i64 %.neg53, %i.h
  br label %bb.e

iter_iov.exit:                                    ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 24
  %.val54 = load i64, ptr %i.j, align 8
  %i.k = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val54) ; 5 uses
  %i.l = sub i64 %1, %i.k
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %.not62 = icmp eq i64 %i.k, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter_iov.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not51.peel = icmp eq i64 %i.r, %i.p
  br i1 %.not51.peel, label %.lr.ph.preheader75, label %bb.c, !prof !11

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.s = sub i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.s) ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 %i.p
  %i.w = tail call i64 @fault_in_safe_writeable(ptr noundef %i.v, i64 noundef %i.t) #13 ; 2 uses
  %.neg.peel = sub i64 %i.w, %i.t
  %i.x = add i64 %.neg.peel, %i.k                 ; 3 uses
  %.not52.peel = icmp eq i64 %i.w, 0
  br i1 %.not52.peel, label %select.unfold.peel, label %._crit_edge

select.unfold.peel:                               ; preds = %bb.c
  %.not.peel = icmp eq i64 %i.x, 0
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.preheader75

.lr.ph.preheader75:                               ; preds = %.lr.ph.preheader, %select.unfold.peel
  %.04865.ph = phi i64 [ %i.k, %.lr.ph.preheader ], [ %i.x, %select.unfold.peel ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader75, %select.unfold
  %.04865 = phi i64 [ %.1.ph, %select.unfold ], [ %.04865.ph, %.lr.ph.preheader75 ] ; 3 uses
  %.04964.pn = phi ptr [ %.04964, %select.unfold ], [ %i.n, %.lr.ph.preheader75 ] ; 2 uses
  %.04964 = getelementptr i8, ptr %.04964.pn, i64 16 ; 2 uses
  %i.y = getelementptr i8, ptr %.04964.pn, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not51 = icmp eq i64 %i.z, 0
  br i1 %.not51, label %select.unfold, label %bb.d, !prof !11

bb.d:                                             ; preds = %.lr.ph
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.04865, i64 %i.z) ; 2 uses
  %i.ab = load ptr, ptr %.04964, align 8
  %i.ac = tail call i64 @fault_in_safe_writeable(ptr noundef %i.ab, i64 noundef %i.aa) #13 ; 2 uses
  %.neg = sub i64 %i.ac, %i.aa
  %i.ad = add i64 %.neg, %.04865                  ; 2 uses
  %.not52 = icmp eq i64 %i.ac, 0
  br i1 %.not52, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.d, %.lr.ph
  %.1.ph = phi i64 [ %.04865, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.1.ph, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %select.unfold, %bb.d, %bb.c, %select.unfold.peel, %iter_iov.exit
  %.2 = phi i64 [ 0, %iter_iov.exit ], [ %i.x, %bb.c ], [ 0, %select.unfold.peel ], [ 0, %select.unfold ], [ %i.ad, %bb.d ]
  %i.ae = add i64 %i.l, %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %.047 = phi i64 [ %i.i, %bb.b ], [ %i.ae, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.047
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @fault_in_safe_writeable(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_init(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "596: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 596b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 596) #14, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 178, i32 2305, i64 16) #14, !srcloc !18
  tail call void asm sideeffect "597: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 597b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 597) #14, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx, i8 0, i64 5, i1 false)
  store i8 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.b, ptr %.sroa.3.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @_copy_to_iter(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.xa_state, align 8           ; 9 uses
  %i.a = getelementptr i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 2, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "599: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 599b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 599) #14, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 193, i32 2307, i64 16) #14, !srcloc !23
  tail call void asm sideeffect "600: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 600b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 600) #14, !srcloc !24
  br label %iterate_and_advance2.exit

.critedge:                                        ; preds = %bb.a
  %.val44 = load i8, ptr %2, align 8
  %i.d = getelementptr i8, ptr %2, i64 24         ; 14 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %.critedge
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.045.i = phi i64 [ %i.e, %bb.c ], [ %1, %.critedge ] ; 16 uses
  %.not.i = icmp eq i64 %.045.i, 0
  br i1 %.not.i, label %iterate_and_advance2.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  switch i8 %.val44, label %bb.ah [
    i8 0, label %__access_ok.exit.i
    i8 1, label %.peel.begin127
    i8 2, label %bb.k
    i8 3, label %.peel.begin
    i8 4, label %bb.q
    i8 5, label %bb.z
  ], !prof !25

__access_ok.exit.i:                               ; preds = %bb.e
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j     ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = add i64 %.045.i, %i.l                    ; 2 uses
  %i.n = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.o = icmp ule i64 %i.m, %i.n
  %i.p = icmp uge i64 %i.m, %i.l
  %i.q = and i1 %i.p, %i.o
  br i1 %i.q, label %bb.f, label %copy_to_user_iter.exit, !prof !16

bb.f:                                             ; preds = %__access_ok.exit.i
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  %i.r = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.s = tail call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %.045.i, ptr %i.k, ptr %0, i64 %i.r) #14, !srcloc !28 ; 2 uses
  %i.t = extractvalue { i64, ptr, ptr, i64 } %i.s, 0
  %i.u = extractvalue { i64, ptr, ptr, i64 } %i.s, 3
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.u)
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  %.pre132 = load i64, ptr %i.i, align 8
  %.pre133 = load i64, ptr %i.d, align 8
  br label %copy_to_user_iter.exit

copy_to_user_iter.exit:                           ; preds = %__access_ok.exit.i, %bb.f
  %i.v = phi i64 [ %.pre133, %bb.f ], [ %i.e, %__access_ok.exit.i ]
  %i.w = phi i64 [ %.pre132, %bb.f ], [ %i.j, %__access_ok.exit.i ]
  %.012.i = phi i64 [ %i.t, %bb.f ], [ %.045.i, %__access_ok.exit.i ]
  %i.x = sub i64 %.045.i, %.012.i                 ; 3 uses
  %i.y = add i64 %i.w, %i.x
  store i64 %i.y, ptr %i.i, align 8
  %i.z = sub i64 %i.v, %i.x
  store i64 %i.z, ptr %i.d, align 8
  br label %iterate_and_advance2.exit

.peel.begin127:                                   ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %2, i64 16        ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ac = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = sub i64 %i.af, %i.ad
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.045.i, i64 %i.ag) ; 4 uses
  %.not.i9.peel = icmp eq i64 %i.af, %i.ad
  br i1 %.not.i9.peel, label %.thread, label %__access_ok.exit.i52.peel, !prof !11

.thread:                                          ; preds = %.peel.begin127
  %i.ai = getelementptr i8, ptr %i.ab, i64 16
  br label %.peel.next128.preheader

__access_ok.exit.i52.peel:                        ; preds = %.peel.begin127
  %i.aj = load ptr, ptr %i.ab, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ad  ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = add i64 %i.ah, %i.al                    ; 2 uses
  %i.an = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.ao = icmp ule i64 %i.am, %i.an
  %i.ap = icmp uge i64 %i.am, %i.al
  %i.aq = and i1 %i.ap, %i.ao
  br i1 %i.aq, label %bb.g, label %copy_to_user_iter.exit56.peel, !prof !16

bb.g:                                             ; preds = %__access_ok.exit.i52.peel
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  %i.ar = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.as = tail call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %i.ah, ptr %i.ak, ptr %0, i64 %i.ar) #14, !srcloc !28 ; 2 uses
  %i.at = extractvalue { i64, ptr, ptr, i64 } %i.as, 0
  %i.au = extractvalue { i64, ptr, ptr, i64 } %i.as, 3
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.au)
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  %.pre = load i64, ptr %i.ae, align 8
  br label %copy_to_user_iter.exit56.peel

copy_to_user_iter.exit56.peel:                    ; preds = %bb.g, %__access_ok.exit.i52.peel
  %i.av = phi i64 [ %.pre, %bb.g ], [ %i.af, %__access_ok.exit.i52.peel ]
  %.012.i53.peel = phi i64 [ %i.at, %bb.g ], [ %i.ah, %__access_ok.exit.i52.peel ]
  %i.aw = sub i64 %i.ah, %.012.i53.peel           ; 5 uses
  %i.ax = add i64 %i.aw, %i.ad                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.av
  br i1 %i.ay, label %iterate_iovec.exit, label %bb.h

bb.h:                                             ; preds = %copy_to_user_iter.exit56.peel
  %i.az = sub i64 %.045.i, %i.aw                  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ab, i64 16     ; 2 uses
  %.not50.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not50.i.peel, label %iterate_iovec.exit, label %.peel.next128.preheader

.peel.next128.preheader:                          ; preds = %.thread, %bb.h
  %.043.i.ph = phi i64 [ %i.aw, %bb.h ], [ 0, %.thread ]
  %.041.i.ph = phi ptr [ %i.ba, %bb.h ], [ %i.ai, %.thread ]
  %.040.i.ph = phi i64 [ %i.az, %bb.h ], [ %.045.i, %.thread ]
  br label %.peel.next128

.peel.next128:                                    ; preds = %.peel.next128.preheader, %bb.j
  %.043.i = phi i64 [ %.144.i, %bb.j ], [ %.043.i.ph, %.peel.next128.preheader ] ; 3 uses
  %.041.i = phi ptr [ %i.bv, %bb.j ], [ %.041.i.ph, %.peel.next128.preheader ] ; 4 uses
  %.040.i = phi i64 [ %.1.i, %bb.j ], [ %.040.i.ph, %.peel.next128.preheader ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.041.i, i64 8    ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.040.i, i64 %i.bc) ; 4 uses
  %.not.i9 = icmp eq i64 %i.bc, 0
  br i1 %.not.i9, label %bb.j, label %__access_ok.exit.i52, !prof !11

__access_ok.exit.i52:                             ; preds = %.peel.next128
  %i.be = load ptr, ptr %.041.i, align 8          ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = add i64 %i.bd, %i.bf                    ; 2 uses
  %i.bh = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #15, !srcloc !26
  %i.bi = icmp ule i64 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bg, %i.bf
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %bb.i, label %copy_to_user_iter.exit56, !prof !16

bb.i:                                             ; preds = %__access_ok.exit.i52
  %i.bl = getelementptr i8, ptr %0, i64 %.043.i
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !27
  %i.bm = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.bn = tail call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %i.bd, ptr %i.be, ptr %i.bl, i64 %i.bm) #14, !srcloc !28 ; 2 uses
  %i.bo = extractvalue { i64, ptr, ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { i64, ptr, ptr, i64 } %i.bn, 3
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.bp)
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !29
  %.pre131 = load i64, ptr %i.bb, align 8
  br label %copy_to_user_iter.exit56

copy_to_user_iter.exit56:                         ; preds = %__access_ok.exit.i52, %bb.i
  %i.bq = phi i64 [ %.pre131, %bb.i ], [ %i.bc, %__access_ok.exit.i52 ]
  %.012.i53 = phi i64 [ %i.bo, %bb.i ], [ %i.bd, %__access_ok.exit.i52 ]
  %i.br = sub i64 %i.bd, %.012.i53                ; 4 uses
  %i.bs = add i64 %i.br, %.043.i                  ; 2 uses
  %i.bt = sub i64 %.040.i, %i.br
  %i.bu = icmp ult i64 %i.br, %i.bq
  br i1 %i.bu, label %iterate_iovec.exit, label %bb.j

bb.j:                                             ; preds = %.peel.next128, %copy_to_user_iter.exit56
  %.144.i = phi i64 [ %i.bs, %copy_to_user_iter.exit56 ], [ %.043.i, %.peel.next128 ] ; 2 uses
  %.1.i = phi i64 [ %i.bt, %copy_to_user_iter.exit56 ], [ %.040.i, %.peel.next128 ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.041.i, i64 16   ; 2 uses
  %.not50.i = icmp eq i64 %.1.i, 0
  br i1 %.not50.i, label %iterate_iovec.exit, label %.peel.next128, !llvm.loop !30

iterate_iovec.exit:                               ; preds = %copy_to_user_iter.exit56, %bb.j, %bb.h, %copy_to_user_iter.exit56.peel
  %.142.i71 = phi ptr [ %i.ab, %copy_to_user_iter.exit56.peel ], [ %i.ba, %bb.h ], [ %i.bv, %bb.j ], [ %.041.i, %copy_to_user_iter.exit56 ] ; 2 uses
  %.245.i70 = phi i64 [ %i.aw, %copy_to_user_iter.exit56.peel ], [ %i.aw, %bb.h ], [ %.144.i, %bb.j ], [ %i.bs, %copy_to_user_iter.exit56 ] ; 2 uses
end_hunk_0
begin_hunk_1_@iov_iter_revert:bb.a
  switch i8 %.val65, label %iter_iov.exit [
    i8 5, label %bb.g
    i8 0, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  tail call void asm sideeffect "643: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 643b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 643) #14, !srcloc !99
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 635, i32 0, i64 16) #14, !srcloc !100
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.promoted = load i64, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.m = phi i64 [ %.promoted, %bb.h ], [ %i.r, %bb.i ]
  %.051 = phi ptr [ %i.k, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  %.0 = phi i64 [ %i.j, %bb.h ], [ %i.s, %bb.i ]  ; 3 uses
  %i.n = getelementptr i8, ptr %.051, i64 -16     ; 2 uses
  %i.o = getelementptr i8, ptr %.051, i64 -8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.r, ptr %i.l, align 8
  %.not61 = icmp ugt i64 %.0, %i.q
  %i.s = sub nuw nsw i64 %.0, %i.q
  br i1 %.not61, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.i
  store ptr %i.n, ptr %i.b, align 8
  %i.t = sub nuw nsw i64 %i.q, %.0
  store i64 %i.t, ptr %i.g, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  store i64 0, ptr %i.g, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = zext i8 %i.w to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.022.i = phi i64 [ %i.j, %bb.j ], [ %i.ai, %bb.m ] ; 3 uses
  %.020.i = phi ptr [ %i.u, %bb.j ], [ %.121.i, %bb.m ] ; 2 uses
  %.019.i = phi i32 [ %i.x, %bb.j ], [ %i.ab, %bb.m ] ; 2 uses
  %i.y = icmp eq i32 %.019.i, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.020.i, i64 296
  %i.aa = load ptr, ptr %i.z, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.121.i = phi ptr [ %i.aa, %bb.l ], [ %.020.i, %bb.k ] ; 3 uses
  %.1.i = phi i32 [ 31, %bb.l ], [ %.019.i, %bb.k ]
  %i.ab = add nsw i32 %.1.i, -1                   ; 3 uses
  %i.ac = getelementptr i8, ptr %.121.i, i64 256
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = shl i64 4096, %i.ag                     ; 3 uses
  %.not.i = icmp ugt i64 %.022.i, %i.ah
  %i.ai = sub nuw i64 %.022.i, %i.ah
  br i1 %.not.i, label %bb.k, label %iov_iter_folioq_revert.exit

iov_iter_folioq_revert.exit:                      ; preds = %bb.m
  %i.aj = sub nuw i64 %i.ah, %.022.i
  store i64 %i.aj, ptr %i.g, align 8
  %i.ak = trunc nuw i32 %i.ab to i8
  store i8 %i.ak, ptr %i.v, align 8
  store ptr %.121.i, ptr %i.b, align 8
  br label %bb.o

iter_iov.exit:                                    ; preds = %bb.f
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.promoted74 = load i64, ptr %i.am, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %iter_iov.exit
  %i.an = phi i64 [ %.promoted74, %iter_iov.exit ], [ %i.ar, %bb.n ]
  %.048 = phi ptr [ %i.al, %iter_iov.exit ], [ %i.ao, %bb.n ] ; 2 uses
  %.2 = phi i64 [ %i.j, %iter_iov.exit ], [ %i.as, %bb.n ] ; 3 uses
  %i.ao = getelementptr i8, ptr %.048, i64 -16    ; 2 uses
  %i.ap = getelementptr i8, ptr %.048, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.am, align 8
  %.not60 = icmp ugt i64 %.2, %i.aq
  %i.as = sub nuw i64 %.2, %i.aq
  br i1 %.not60, label %bb.n, label %.thread67

.thread67:                                        ; preds = %bb.n
  store ptr %i.ao, ptr %i.b, align 8
  %i.at = sub nuw i64 %i.aq, %.2
  store i64 %i.at, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %.thread67, %.thread, %bb.c, %.critedge, %bb.a, %iov_iter_folioq_revert.exit, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @iov_iter_single_seg_count(ptr nofree noundef readonly captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %.val33.pre = load i8, ptr %0, align 8          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %.val33.pre, label %bb.g [
    i8 1, label %iter_iov.exit
    i8 3, label %iter_iov.exit
    i8 2, label %bb.c
    i8 4, label %bb.e
  ], !prof !101

iter_iov.exit:                                    ; preds = %bb.b, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.l)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub i64 %i.t, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.w)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq i8 %.val33.pre, 4
  br i1 %i.y, label %bb.e, label %bb.g, !prof !11

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 256
  %i.ae = and i64 %i.b, 255
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl i64 4096, %i.ah
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aa)
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g, %bb.c, %iter_iov.exit
  %.0 = phi i64 [ %i.m, %iter_iov.exit ], [ %i.x, %bb.c ], [ %i.al, %bb.g ], [ %i.aj, %bb.f ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_kvec(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "655: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 655b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 655) #14, !srcloc !102
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 692, i32 2305, i64 16) #14, !srcloc !103
  tail call void asm sideeffect "656: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 656b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 656) #14, !srcloc !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx, i8 0, i64 5, i1 false)
  store i8 3, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.b, ptr %.sroa.3.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_bvec(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "658: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 658b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 658) #14, !srcloc !105
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 708, i32 2305, i64 16) #14, !srcloc !106
  tail call void asm sideeffect "659: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 659b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 659) #14, !srcloc !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne i32 %1, 0
  %i.b = zext i1 %i.a to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx, i8 0, i64 5, i1 false)
  store i8 2, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.b, ptr %.sroa.3.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_folio_queue(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "661: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 661b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 661) #14, !srcloc !108
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 738, i32 0, i64 16) #14, !srcloc !109
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i32 %1 to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx, i8 0, i64 5, i1 false)
  %i.b = zext i32 %4 to i64
  %i.c = trunc i32 %3 to i8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, i8 0, i64 7, i1 false)
  store i8 4, ptr %0, align 8
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.3.0..sroa_idx.a, align 1
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.a, ptr %.sroa.4.0..sroa_idx.a, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %5, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.c, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_xarray(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "663: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 663b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 663) #14, !srcloc !110
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 766, i32 0, i64 16) #14, !srcloc !111
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i32 %1 to i8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx, i8 0, i64 5, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.a, ptr %.sroa.3.0..sroa_idx, align 2
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_discard(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "665: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 665b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 665) #14, !srcloc !112
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 789, i32 0, i64 16) #14, !srcloc !113
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.4.0..sroa_idx, i8 0, i64 21, i1 false)
  store i8 6, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.42.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.42.0..sroa_idx.a, align 2
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @iov_iter_alignment(ptr nofree noundef readonly captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  %.val = load i8, ptr %0, align 8
  switch i8 %.val, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %.critedge
    i8 3, label %.critedge
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
  ], !prof !114

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.e
  %i.i = or i64 %i.h, %i.b
  br label %bb.g

.critedge:                                        ; preds = %bb.a, %bb.a
  %i.j = tail call fastcc i64 @iov_iter_alignment_iovec(ptr noundef %0) #16, !srcloc !115
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = tail call fastcc i64 @iov_iter_alignment_bvec(ptr noundef %0) #16, !srcloc !116
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, %i.m
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = or i64 %i.u, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.f, %bb.e, %bb.d, %.critedge
  %.1 = phi i64 [ 0, %bb.b ], [ %i.j, %.critedge ], [ %i.k, %bb.d ], [ %i.p, %bb.e ], [ %i.x, %bb.f ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i64 @iov_iter_alignment_iovec(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br i1 %i.b, label %iter_iov.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  br label %iter_iov.exit

iter_iov.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %.0.i, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.peel = icmp eq i64 %i.j, %i.h
  br i1 %.not.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %iter_iov.exit
  %i.k = sub i64 %i.j, %i.h
  %i.l = load ptr, ptr %.0.i, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.h, %i.m
  %spec.select.peel = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.f) ; 2 uses
  %i.o = or i64 %i.n, %spec.select.peel
  %i.p = sub i64 %i.f, %spec.select.peel
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %iter_iov.exit
  %.121.peel = phi i64 [ %i.o, %bb.c ], [ 0, %iter_iov.exit ] ; 2 uses
  %.1.peel = phi i64 [ %i.p, %bb.c ], [ %i.f, %iter_iov.exit ] ; 2 uses
  %.not24.peel = icmp eq i64 %.1.peel, 0
  br i1 %.not24.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.0.i.pn = phi ptr [ %.022, %bb.f ], [ %.0.i, %bb.d ] ; 2 uses
  %.020 = phi i64 [ %.121, %bb.f ], [ %.121.peel, %bb.d ] ; 2 uses
  %.019 = phi i64 [ %.1, %bb.f ], [ %.1.peel, %bb.d ] ; 3 uses
  %.022 = getelementptr i8, ptr %.0.i.pn, i64 16  ; 2 uses
  %i.q = getelementptr i8, ptr %.0.i.pn, i64 24
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.next
  %i.s = load ptr, ptr %.022, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %.019) ; 2 uses
  %i.u = or i64 %.020, %i.t
  %i.v = or i64 %i.u, %spec.select
  %i.w = sub i64 %.019, %spec.select
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.peel.next
  %.121 = phi i64 [ %i.v, %bb.e ], [ %.020, %.peel.next ] ; 2 uses
  %.1 = phi i64 [ %i.w, %bb.e ], [ %.019, %.peel.next ] ; 2 uses
  %.not24 = icmp eq i64 %.1, 0
  br i1 %.not24, label %.loopexit, label %.peel.next, !llvm.loop !117

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.121.lcssa = phi i64 [ %.121.peel, %bb.d ], [ %.121, %bb.f ]
  ret i64 %.121.lcssa
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i64 0, 4294967296) i64 @iov_iter_alignment_bvec(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 align 16 prefalign(16) {
.peel.begin:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sub i32 %i.i, %i.g
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.b, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %spec.select.peel = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.k) ; 2 uses
  %.tr = trunc i64 %i.f to i32
  %.narrow = add i32 %i.m, %.tr
  %i.n = zext i32 %.narrow to i64
  %i.o = or i64 %spec.select.peel, %i.n           ; 2 uses
  %i.p = sub i64 %i.d, %spec.select.peel          ; 2 uses
  %.not.peel = icmp eq i64 %i.p, 0
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %.peel.next
  %.pn = phi ptr [ %.020, %.peel.next ], [ %i.b, %.peel.begin ] ; 3 uses
  %.019 = phi i64 [ %i.x, %.peel.next ], [ %i.o, %.peel.begin ]
  %.018 = phi i64 [ %i.y, %.peel.next ], [ %i.p, %.peel.begin ] ; 2 uses
  %.020 = getelementptr i8, ptr %.pn, i64 16
  %i.q = getelementptr i8, ptr %.pn, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %.pn, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64
  %i.w = or i64 %.019, %i.v
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.018, i64 %i.s) ; 2 uses
  %i.x = or i64 %i.w, %spec.select                ; 2 uses
  %i.y = sub i64 %.018, %spec.select              ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !118

.loopexit:                                        ; preds = %.peel.next, %.peel.begin
  %.lcssa = phi i64 [ %i.o, %.peel.begin ], [ %i.x, %.peel.next ]
  ret i64 %.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @iov_iter_gap_alignment(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.val = load i8, ptr %0, align 8
  switch i8 %.val, label %bb.b [
    i8 0, label %.loopexit
    i8 1, label %.critedge.preheader
  ], !prof !119

.critedge.preheader:                              ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not55 = icmp eq i64 %i.d, 0
  br i1 %.not55, label %.loopexit, label %iter_iov.exit.lr.ph

end_hunk_1
begin_hunk_2_@iovec_from_user:bb.a

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
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 5, i1 false)
  store i8 0, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.aa, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2
  %.sroa.4.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.a, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
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
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx.i, i8 0, i64 5, i1 false)
  store i8 1, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ax, ptr %.sroa.3.0..sroa_idx.i, align 2
  %.sroa.4.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.a, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
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
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.4.0..sroa_idx.i, i8 0, i64 5, i1 false)
  store i8 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 2
  %.sroa.4.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.a, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %spec.store.select, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %__access_ok.exit, %iov_iter_ubuf.exit
  %.0 = phi i32 [ 0, %iov_iter_ubuf.exit ], [ -14, %__access_ok.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iov_iter_restore(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.val26 = load i8, ptr %0, align 8              ; 2 uses
  %i.a = icmp ult i8 %.val26, 3
  br i1 %i.a, label %.critedge, label %bb.b, !prof !156

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "710: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 710b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 710) #14, !srcloc !157
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1472, i32 2307, i64 16) #14, !srcloc !158
  tail call void asm sideeffect "711: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 711b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 711) #14, !srcloc !159
  %.val27 = load i8, ptr %0, align 8
  %i.b = icmp eq i8 %.val27, 3
  br i1 %i.b, label %.critedge.thread, label %bb.f

.critedge.thread:                                 ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8
  %i.d = getelementptr i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = getelementptr i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.h, align 8
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8
  %i.j = getelementptr i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.n, align 8
  switch i8 %.val26, label %bb.d [
    i8 0, label %bb.f
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %.neg21 = sub i64 %i.r, %i.p
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr [16 x i8], ptr %i.s, i64 %.neg21
  br label %bb.e

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %i.u = phi ptr [ %i.g, %.critedge.thread ], [ %i.m, %.critedge ] ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8
  %.neg = sub i64 %i.y, %i.w
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = getelementptr [16 x i8], ptr %i.z, i64 %.neg
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.d ], [ %i.m, %bb.c ]
  %storemerge = phi ptr [ %i.aa, %bb.d ], [ %i.t, %bb.c ]
  store ptr %storemerge, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %0, i64 32
  store i64 %i.ad, ptr %i.ae, align 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.b, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @iov_iter_extract_pages(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.b) ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2147479552) ; 6 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %iov_iter_extract_user_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %0, align 8                ; 3 uses
  %spec.select.i = icmp ult i8 %.val, 2
  br i1 %spec.select.i, label %bb.c, label %bb.t, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8
  %.not.i = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2, !range !20, !noundef !21
  %i.h = xor i8 %i.g, 1
  %spec.select.i53 = zext nneg i8 %i.h to i32
  %i.i = shl i32 %4, 10
  %i.j = and i32 %i.i, 1024
  %.1.i = or disjoint i32 %i.j, %spec.select.i53
  %i.k = getelementptr i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !20, !noundef !21
  %i.m = shl nuw nsw i8 %i.l, 5
  %i.n = zext nneg i8 %i.m to i32
  %.2.i = or disjoint i32 %.1.i, %i.n
  %i.o = icmp eq i8 %.val, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %i.r
  br label %first_iovec_segment.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %.not33.i.i = icmp eq i64 %i.w, 0
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not.peel.i.i = icmp eq i64 %i.ac, %i.y
  br i1 %.not.peel.i.i, label %bb.f, label %.split.us.i.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %exitcond.peel.not.i.i = icmp eq i64 %i.w, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %iter_iov.exit.i.i

bb.g:                                             ; preds = %iter_iov.exit.i.i
  %i.ad = add nuw i64 %.02128.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %iter_iov.exit.i.i, !llvm.loop !127

iter_iov.exit.i.i:                                ; preds = %bb.f, %bb.g
  %.02128.i.i = phi i64 [ %i.ad, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.ae = getelementptr [16 x i8], ptr %i.aa, i64 %.02128.i.i ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %bb.g, label %.split.us.i.i, !prof !11

.split.us.i.i:                                    ; preds = %iter_iov.exit.i.i, %.lr.ph.split.i.i
  %.01929.lcssa.i.i = phi i64 [ %i.y, %.lr.ph.split.i.i ], [ 0, %iter_iov.exit.i.i ] ; 2 uses
  %.lcssa42.i.i = phi ptr [ %i.aa, %.lr.ph.split.i.i ], [ %i.ae, %iter_iov.exit.i.i ]
  %.lcssa40.i.i = phi i64 [ %i.ac, %.lr.ph.split.i.i ], [ %i.ag, %iter_iov.exit.i.i ]
  %i.ah = sub i64 %.lcssa40.i.i, %.01929.lcssa.i.i
  %spec.select48.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.d, i64 %i.ah)
  %i.ai = load ptr, ptr %.lcssa42.i.i, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %.01929.lcssa.i.i, %i.aj
  br label %first_iovec_segment.exit.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f, %bb.e
  tail call void asm sideeffect "683: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 683b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 683) #14, !srcloc !128
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1044, i32 0, i64 16) #14, !srcloc !129
  unreachable

first_iovec_segment.exit.i:                       ; preds = %.split.us.i.i, %bb.d
  %.145.i = phi i64 [ %i.d, %bb.d ], [ %spec.select48.i, %.split.us.i.i ] ; 2 uses
  %.2.i.i = phi i64 [ %i.u, %bb.d ], [ %i.ak, %.split.us.i.i ] ; 2 uses
  %i.al = and i64 %.2.i.i, 4095                   ; 3 uses
  store i64 %i.al, ptr %5, align 8
  %i.am = add nuw nsw i64 %.145.i, 4095
  %i.an = add nuw nsw i64 %i.am, %i.al
  %i.ao = lshr i64 %i.an, 12
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.ap) ; 3 uses
  %.not.i38.i = icmp eq i32 %spec.select.i.i, 0   ; 2 uses
  br i1 %.not.i38.i, label %bb.h, label %.thread.i, !prof !11

bb.h:                                             ; preds = %first_iovec_segment.exit.i
  tail call void asm sideeffect "671: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 671b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 671) #14, !srcloc !130
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 904, i32 2305, i64 16) #14, !srcloc !131
  tail call void asm sideeffect "672: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 672b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 672) #14, !srcloc !132
  %i.aq = load ptr, ptr %1, align 8
  %.not24.i.i = icmp eq ptr %i.aq, null
  br i1 %.not24.i.i, label %bb.i, label %iov_iter_extract_user_pages.exit

.thread.i:                                        ; preds = %first_iovec_segment.exit.i
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/algapi?download=true
inline.NumInlined: 120
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@crypto_register_algs:bb.a

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %crypto_unregister_algs.exit, label %.lr.ph, !llvm.loop !40

crypto_unregister_algs.exit:                      ; preds = %bb.c, %.lr.ph.i, %bb.a, %bb.b
  %.09 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ], [ %i.c, %.lr.ph.i ], [ 0, %bb.c ]
  ret i32 %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crypto_unregister_algs(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.04 = add i32 %1, -1                           ; 2 uses
  %i.a = icmp sgt i32 %.04, -1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %.04 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = getelementptr [392 x i8], ptr %0, i64 %indvars.iv
  tail call void @crypto_unregister_alg(ptr noundef %i.c) #18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -17, 1) i32 @crypto_register_template(ptr noundef initializes((40, 48)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  store i64 4503599625273344, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 48         ; 3 uses
  store volatile ptr %i.b, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 56
  store volatile ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 64
  store ptr @crypto_destroy_instance_workfn, ptr %i.d, align 8
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.in = phi ptr [ @crypto_template_list, %bb.a ], [ %.0, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %.not = icmp eq ptr %.0, @crypto_template_list
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %.0, %0
  br i1 %i.e, label %.loopexit, label %bb.b, !llvm.loop !3

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @crypto_template_list, align 8 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.g, align 8
  store ptr %i.f, ptr %0, align 8
  %i.h = getelementptr i8, ptr %0, i64 8
  store ptr @crypto_template_list, ptr %i.h, align 8
  store volatile ptr %0, ptr @crypto_template_list, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.014 = phi i32 [ 0, %bb.d ], [ -17, %bb.c ]
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  ret i32 %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_destroy_instance_workfn(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.hlist_head, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i64 0, ptr %1, align 8
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.a = getelementptr i8, ptr %0, i64 -16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr i8, ptr %i.b, i64 -400     ; 2 uses
  %.not415561 = icmp eq ptr %i.c, null
  %.not4155 = or i1 %.not, %.not415561
  br i1 %.not4155, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.056 = phi ptr [ %i.m, %select.unfold ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.056, i64 400     ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr i8, ptr %.056, i64 56
  %i.g = load volatile i32, ptr %i.f, align 8
  %.not45 = icmp eq i32 %i.g, -1
  br i1 %.not45, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.056, i64 408     ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  store volatile ptr %i.e, ptr %i.i, align 8
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %hlist_del.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.e, i64 8
  store volatile ptr %i.i, ptr %i.j, align 8
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %bb.b, %bb.c
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.h, align 8
  %i.k = load ptr, ptr %1, align 8                ; 3 uses
  store volatile ptr %i.k, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %hlist_add_head.exit, label %bb.d

bb.d:                                             ; preds = %hlist_del.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store volatile ptr %i.d, ptr %i.l, align 8
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %hlist_del.exit, %bb.d
  store volatile ptr %i.d, ptr %1, align 8
  store volatile ptr %1, ptr %i.h, align 8
  br label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %hlist_add_head.exit
  %.not46 = icmp eq ptr %i.e, null
  %i.m = getelementptr i8, ptr %i.e, i64 -400     ; 2 uses
  %.not4163 = icmp eq ptr %i.m, null
  %.not41 = or i1 %.not46, %.not4163
  br i1 %.not41, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %select.unfold, %bb.a
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %.not42 = icmp eq ptr %i.n, null
  %i.o = getelementptr i8, ptr %i.n, i64 -400     ; 2 uses
  %.not435762 = icmp eq ptr %i.o, null
  %.not4357 = or i1 %.not42, %.not435762
  br i1 %.not4357, label %.critedge2, label %select.unfold50

select.unfold50:                                  ; preds = %.critedge, %select.unfold50
  %.158 = phi ptr [ %i.v, %select.unfold50 ], [ %i.o, %.critedge ] ; 3 uses
  %i.p = getelementptr i8, ptr %.158, i64 400
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %.158, i64 320
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull %.158) #19, !inline_history !4
  %.not44 = icmp eq ptr %i.q, null
  %i.v = getelementptr i8, ptr %i.q, i64 -400     ; 2 uses
  %.not4364 = icmp eq ptr %i.v, null
  %.not43 = or i1 %.not44, %.not4364
  br i1 %.not43, label %.critedge2, label %select.unfold50

.critedge2:                                       ; preds = %select.unfold50, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -17, 1) i32 @crypto_register_templates(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv25 = phi i32 [ -1, %.lr.ph.preheader ], [ %indvars.iv.next26, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.b = getelementptr [208 x i8], ptr %0, i64 %indvars.iv ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  store i64 4503599625273344, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  store volatile ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 56
  store volatile ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 64
  store ptr @crypto_destroy_instance_workfn, ptr %i.f, align 8
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %.0.in.i = phi ptr [ @crypto_template_list, %.lr.ph ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %.not.i = icmp eq ptr %.0.i, @crypto_template_list
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %.0.i, %i.b
  br i1 %i.g, label %crypto_register_template.exit, label %bb.b, !llvm.loop !3

crypto_register_template.exit:                    ; preds = %bb.c
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %crypto_register_template.exit
  %i.h = zext i32 %indvars.iv25 to i64
  br label %.lr.ph21

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @crypto_template_list, align 8 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.b, ptr %i.j, align 8
  store ptr %i.i, ptr %i.b, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 8
  store ptr @crypto_template_list, ptr %i.k, align 8
  store volatile ptr %i.b, ptr @crypto_template_list, align 8
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next26 = add nsw i32 %indvars.iv25, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !41

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %.lr.ph21
  %indvars.iv28 = phi i64 [ %i.h, %.lr.ph21.preheader ], [ %indvars.iv.next29, %.lr.ph21 ] ; 3 uses
  %i.l = getelementptr [208 x i8], ptr %0, i64 %indvars.iv28
  tail call void @crypto_unregister_template(ptr noundef %i.l) #18
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %.not.a = icmp eq i64 %indvars.iv28, 0
  br i1 %.not.a, label %.loopexit, label %.lr.ph21, !llvm.loop !42

.loopexit:                                        ; preds = %bb.d, %.lr.ph21, %bb.a, %crypto_register_template.exit
  %.012 = phi i32 [ -17, %crypto_register_template.exit ], [ 0, %bb.a ], [ -17, %.lr.ph21 ], [ 0, %bb.d ]
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crypto_unregister_template(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.list_head, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.b = load volatile ptr, ptr %0, align 8       ; 3 uses
  %.not = icmp eq ptr %i.b, %0
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "753: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 753b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 753) #17, !srcloc !43
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 586, i32 0, i64 16) #17, !srcloc !44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store volatile ptr %i.b, ptr %i.d, align 8
  store volatile ptr %0, ptr %0, align 8
  store volatile ptr %0, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.g, null
  %i.h = getelementptr i8, ptr %i.g, i64 -400     ; 2 uses
  %.not405969 = icmp eq ptr %i.h, null
  %.not4059 = or i1 %.not39, %.not405969
  br i1 %.not4059, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %select.unfold
  %.060 = phi ptr [ %i.r, %select.unfold ], [ %i.h, %bb.c ] ; 9 uses
  %i.i = load volatile ptr, ptr %.060, align 8    ; 3 uses
  %.not.i = icmp eq ptr %i.i, %.060
  br i1 %.not.i, label %crypto_remove_alg.exit, label %select.unfold, !prof !18

crypto_remove_alg.exit:                           ; preds = %.lr.ph
  call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #17, !srcloc !45
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 593, i32 0, i64 16) #17, !srcloc !46
  unreachable

select.unfold:                                    ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.060, i64 32      ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, 32
  store i32 %i.l, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %.060, i64 8       ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store volatile ptr %i.i, ptr %i.n, align 8
  store volatile ptr %.060, ptr %.060, align 8
  store volatile ptr %.060, ptr %i.m, align 8
  call void @crypto_remove_spawns(ptr noundef nonnull %.060, ptr nonnull readnone poison, ptr noundef null) #18
  %i.p = getelementptr i8, ptr %.060, i64 400
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.q, null
  %i.r = getelementptr i8, ptr %i.q, i64 -400     ; 2 uses
  %.not4071 = icmp eq ptr %i.r, null
  %.not40 = or i1 %.not46, %.not4071
  br i1 %.not40, label %select.unfold._crit_edge, label %.lr.ph

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.c
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.s, null
  %i.t = getelementptr i8, ptr %i.s, i64 -400     ; 2 uses
  %.not426170 = icmp eq ptr %i.t, null
  %.not4261 = or i1 %.not41, %.not426170
  br i1 %.not4261, label %.critedge, label %.lr.ph63

.lr.ph63:                                         ; preds = %select.unfold._crit_edge, %select.unfold54
  %.162 = phi ptr [ %i.ac, %select.unfold54 ], [ %i.t, %select.unfold._crit_edge ] ; 4 uses
  %i.u = getelementptr i8, ptr %.162, i64 400
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %.162, i64 56
  %i.x = load volatile i32, ptr %i.w, align 8
  %.not43 = icmp eq i32 %i.x, 1
  br i1 %.not43, label %select.unfold54, label %bb.d, !prof !19

bb.d:                                             ; preds = %.lr.ph63
  call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #17, !srcloc !47
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 599, i32 0, i64 16) #17, !srcloc !48
  unreachable

select.unfold54:                                  ; preds = %.lr.ph63
  %i.y = getelementptr i8, ptr %.162, i64 320
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull %.162) #19, !inline_history !4
  %.not44 = icmp eq ptr %i.v, null
  %i.ac = getelementptr i8, ptr %i.v, i64 -400    ; 2 uses
  %.not4272 = icmp eq ptr %i.ac, null
  %.not42 = or i1 %.not44, %.not4272
  br i1 %.not42, label %.critedge, label %.lr.ph63

.critedge:                                        ; preds = %select.unfold54, %select.unfold._crit_edge
  %i.ad = load ptr, ptr %1, align 8               ; 2 uses
  %.not16.i = icmp eq ptr %i.ad, %1
  br i1 %.not16.i, label %crypto_remove_final.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %crypto_alg_put.exit.i
  %.017.i = phi ptr [ %.01418.i, %crypto_alg_put.exit.i ], [ %i.ad, %.critedge ] ; 7 uses
  %.01418.i = load ptr, ptr %.017.i, align 8      ; 4 uses
  %i.ae = getelementptr i8, ptr %.017.i, i64 8    ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %.01418.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store volatile ptr %.01418.i, ptr %i.af, align 8
  store volatile ptr %.017.i, ptr %.017.i, align 8
  store volatile ptr %.017.i, ptr %i.ae, align 8
  %i.ah = getelementptr i8, ptr %.017.i, i64 56   ; 3 uses
  %i.ai = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 -1, ptr elementtype(i32) %i.ah) #17, !srcloc !20 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ak = icmp slt i32 %i.ai, 1
  br i1 %i.ak, label %bb.f, label %crypto_alg_put.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @refcount_warn_saturate(ptr noundef %i.ah, i32 noundef 3) #19
  br label %crypto_alg_put.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !21
  call void @crypto_destroy_alg(ptr noundef %.017.i) #19
  br label %crypto_alg_put.exit.i

crypto_alg_put.exit.i:                            ; preds = %bb.g, %bb.f, %bb.e
  %.not.i50 = icmp eq ptr %.01418.i, %1
  br i1 %.not.i50, label %crypto_remove_final.exit, label %.lr.ph.i, !llvm.loop !1

crypto_remove_final.exit:                         ; preds = %crypto_alg_put.exit.i, %.critedge
  %i.al = getelementptr i8, ptr %0, i64 40
  %i.am = call zeroext i1 @flush_work(ptr noundef %i.al) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crypto_unregister_templates(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.04 = add i32 %1, -1                           ; 2 uses
  %i.a = icmp sgt i32 %.04, -1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %.04 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = getelementptr [208 x i8], ptr %0, i64 %indvars.iv
  tail call void @crypto_unregister_template(ptr noundef %i.c) #18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
end_hunk_0

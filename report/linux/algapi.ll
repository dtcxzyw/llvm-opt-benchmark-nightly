Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/algapi?download=true
inline.NumInlined: 120
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__crypto_register_alg:bb.a
  %i.o = getelementptr i8, ptr %.045, i64 60
  %i.p = tail call i32 @strcmp(ptr noundef %i.o, ptr noundef %i.e) #19
  %.not39 = icmp eq i32 %i.p, 0
  br i1 %.not39, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.d
  %.0 = load ptr, ptr %.045, align 8              ; 2 uses
  %.not42 = icmp eq ptr %.0, @crypto_alg_list
  br i1 %.not42, label %._crit_edge, label %bb.c, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %i.q = getelementptr i8, ptr %.043, i64 8
  store ptr %0, ptr %i.q, align 8
  store ptr %.043, ptr %0, align 8
  %i.r = getelementptr i8, ptr %0, i64 8
  store ptr @crypto_alg_list, ptr %i.r, align 8
  store volatile ptr %0, ptr @crypto_alg_list, align 8
  %i.s = load i32, ptr %i.a, align 8
  %i.t = or i32 %i.s, 1024
  store i32 %i.t, ptr %i.a, align 8
  %.026.i = load ptr, ptr @crypto_alg_list, align 8 ; 2 uses
  %.not27.i = icmp eq ptr %.026.i, @crypto_alg_list
  br i1 %.not27.i, label %crypto_alg_finish_registration.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.u = getelementptr i8, ptr %0, i64 60
  %i.v = getelementptr i8, ptr %0, i64 188
  %i.w = getelementptr i8, ptr %0, i64 52
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph.i
  %.028.i = phi ptr [ %.026.i, %.lr.ph.i ], [ %.0.i, %bb.q ] ; 7 uses
  %i.x = icmp eq ptr %.028.i, %0
  br i1 %i.x, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %.028.i, i64 32
  %.0.val.i = load i32, ptr %i.y, align 8
  %i.z = and i32 %.0.val.i, 112
  %or.cond.i = icmp eq i32 %i.z, 0
  br i1 %or.cond.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %.028.i, i64 60
  %i.ab = tail call i32 @strcmp(ptr noundef %i.u, ptr noundef %i.aa) #19
  %.not23.i = icmp eq i32 %i.ab, 0
  br i1 %.not23.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr i8, ptr %.028.i, i64 188
  %i.ad = tail call i32 @strcmp(ptr noundef %i.v, ptr noundef %i.ac) #19
  %.not24.i = icmp eq i32 %i.ad, 0
  br i1 %.not24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %.028.i, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.w, align 4
  %i.ah = icmp sgt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @crypto_remove_spawns(ptr noundef %.028.i, ptr readnone poison, ptr noundef %0) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %.0.i = load ptr, ptr %.028.i, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.0.i, @crypto_alg_list
  br i1 %.not.i, label %crypto_alg_finish_registration.exit, label %bb.k, !llvm.loop !0

crypto_alg_finish_registration.exit:              ; preds = %bb.q, %._crit_edge
  %i.ai = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @crypto_chain, i64 noundef 2, ptr noundef %0) #19 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %crypto_alg_finish_registration.exit, %.loopexit
  %.030 = phi ptr [ %i.aj, %.loopexit ], [ null, %crypto_alg_finish_registration.exit ]
  ret ptr %.030

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.f, %bb.c, %bb.a
  %.031 = phi i64 [ -11, %bb.a ], [ -17, %bb.c ], [ -17, %bb.f ], [ -17, %bb.i ], [ -17, %bb.h ], [ -17, %bb.g ]
  %i.aj = inttoptr i64 %.031 to ptr
  br label %bb.r
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crypto_schedule_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crypto_unregister_alg(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.list_head, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.b = load volatile ptr, ptr %0, align 8       ; 3 uses
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %bb.b, label %.critedge, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.c = getelementptr i8, ptr %0, i64 188
  %i.d = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 500, i32 2321, i64 16) #17, !srcloc !35
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.d, ptr noundef %i.c) #19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !36
  br label %crypto_remove_final.exit

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 32
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store volatile ptr %i.b, ptr %i.i, align 8
  store volatile ptr %0, ptr %0, align 8
  store volatile ptr %0, ptr %i.h, align 8
  call void @crypto_remove_spawns(ptr noundef %0, ptr nonnull readnone poison, ptr noundef null) #18
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.k = getelementptr i8, ptr %0, i64 376
  %i.l = load ptr, ptr %i.k, align 8
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %bb.c, label %.critedge18

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr i8, ptr %0, i64 56
  %i.n = load volatile i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %.critedge18, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "746: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 746b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 746) #17, !srcloc !37
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 503, i32 2305, i64 16) #17, !srcloc !38
  call void asm sideeffect "747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 747b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 747) #17, !srcloc !39
  br label %.critedge18

.critedge18:                                      ; preds = %.critedge, %bb.d, %bb.c
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.p, align 8
  store ptr %i.o, ptr %0, align 8
  store ptr %1, ptr %i.h, align 8
  store volatile ptr %0, ptr %1, align 8
  %.not16.i = icmp eq ptr %0, %1
  br i1 %.not16.i, label %crypto_remove_final.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge18, %crypto_alg_put.exit.i
  %.017.i = phi ptr [ %.01418.i, %crypto_alg_put.exit.i ], [ %0, %.critedge18 ] ; 7 uses
  %.01418.i = load ptr, ptr %.017.i, align 8      ; 4 uses
  %i.q = getelementptr i8, ptr %.017.i, i64 8     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %.01418.i, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store volatile ptr %.01418.i, ptr %i.r, align 8
  store volatile ptr %.017.i, ptr %.017.i, align 8
  store volatile ptr %.017.i, ptr %i.q, align 8
  %i.t = getelementptr i8, ptr %.017.i, i64 56    ; 3 uses
  %i.u = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t, i32 -1, ptr elementtype(i32) %i.t) #17, !srcloc !20 ; 2 uses
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = icmp slt i32 %i.u, 1
  br i1 %i.w, label %bb.f, label %crypto_alg_put.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  call void @refcount_warn_saturate(ptr noundef %i.t, i32 noundef 3) #19
  br label %crypto_alg_put.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !21
  call void @crypto_destroy_alg(ptr noundef %.017.i) #19
  br label %crypto_alg_put.exit.i

crypto_alg_put.exit.i:                            ; preds = %bb.g, %bb.f, %bb.e
  %.not.i19 = icmp eq ptr %.01418.i, %1
  br i1 %.not.i19, label %crypto_remove_final.exit, label %.lr.ph.i, !llvm.loop !1

crypto_remove_final.exit:                         ; preds = %crypto_alg_put.exit.i, %.critedge18, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @crypto_register_algs(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %crypto_unregister_algs.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.b = getelementptr [392 x i8], ptr %0, i64 %indvars.iv
  %i.c = tail call i32 @crypto_register_alg(ptr noundef %i.b) #18 ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not20 = icmp eq i64 %indvars.iv, 0
  br i1 %.not20, label %crypto_unregister_algs.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.04.i = add nuw i64 %indvars.iv, 4294967295
  %2 = and i64 %.04.i, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.d = getelementptr [392 x i8], ptr %0, i64 %indvars.iv.i
  tail call void @crypto_unregister_alg(ptr noundef %i.d) #18
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %crypto_unregister_algs.exit, label %.lr.ph.i, !llvm.loop !2

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

end_hunk_0

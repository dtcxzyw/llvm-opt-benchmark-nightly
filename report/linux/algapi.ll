Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/algapi?download=true
inline.NumInlined: 120
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@crypto_unregister_templates:bb.a

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
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @crypto_lookup_template(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #19
  %.014.i = load ptr, ptr @crypto_template_list, align 8 ; 2 uses
  %.not15.i = icmp eq ptr %.014.i, @crypto_template_list
  br i1 %.not15.i, label %__crypto_lookup_template.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.016.i = phi ptr [ %.0.i, %bb.c ], [ %.014.i, %bb.a ] ; 5 uses
  %i.a = getelementptr i8, ptr %.016.i, i64 80
  %i.b = tail call i32 @strcmp(ptr noundef %i.a, ptr noundef readonly %0) #19
  %.not12.i = icmp eq i32 %i.b, 0
  br i1 %.not12.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr i8, ptr %.016.i, i64 32
  %.0.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call zeroext i1 @try_module_get(ptr noundef %.0.val.i) #19
  br i1 %i.d, label %__crypto_lookup_template.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.0.i = load ptr, ptr %.016.i, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.0.i, @crypto_template_list
  br i1 %.not.i, label %__crypto_lookup_template.exit.thread, label %.lr.ph.i, !llvm.loop !50

__crypto_lookup_template.exit.thread:             ; preds = %bb.c, %bb.a
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #19
  br label %bb.d

__crypto_lookup_template.exit:                    ; preds = %bb.b
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #19
  %.not = icmp eq ptr %.016.i, null
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %__crypto_lookup_template.exit.thread, %__crypto_lookup_template.exit
  %i.e = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %0) #19 ; 0 uses
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #19
  %.014.i3 = load ptr, ptr @crypto_template_list, align 8 ; 2 uses
  %.not15.i4 = icmp eq ptr %.014.i3, @crypto_template_list
  br i1 %.not15.i4, label %__crypto_lookup_template.exit12, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.d, %bb.f
  %.016.i6 = phi ptr [ %.0.i8, %bb.f ], [ %.014.i3, %bb.d ] ; 4 uses
  %i.f = getelementptr i8, ptr %.016.i6, i64 80
  %i.g = tail call i32 @strcmp(ptr noundef %i.f, ptr noundef readonly %0) #19
  %.not12.i7 = icmp eq i32 %i.g, 0
  br i1 %.not12.i7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i5
  %i.h = getelementptr i8, ptr %.016.i6, i64 32
  %.0.val.i11 = load ptr, ptr %i.h, align 8
  %i.i = tail call zeroext i1 @try_module_get(ptr noundef %.0.val.i11) #19
  br i1 %i.i, label %__crypto_lookup_template.exit12, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e, %.lr.ph.i5
  %.0.i8 = load ptr, ptr %.016.i6, align 8        ; 2 uses
  %.not.i9 = icmp eq ptr %.0.i8, @crypto_template_list
  br i1 %.not.i9, label %__crypto_lookup_template.exit12, label %.lr.ph.i5, !llvm.loop !50

__crypto_lookup_template.exit12:                  ; preds = %bb.e, %bb.f, %bb.d
  %.011.i10 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %.016.i6, %bb.e ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #19
  br label %bb.g

bb.g:                                             ; preds = %__crypto_lookup_template.exit, %__crypto_lookup_template.exit12
  %i.j = phi ptr [ %.011.i10, %__crypto_lookup_template.exit12 ], [ %.016.i, %__crypto_lookup_template.exit ]
  ret ptr %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @crypto_register_instance(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.list_head, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %crypto_remove_final.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 188
  %i.e = load i8, ptr %i.d, align 4
  %.not15.i = icmp eq i8 %i.e, 0
  br i1 %.not15.i, label %crypto_remove_final.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = add i32 %i.g, 1
  %i.i = or i32 %i.h, -128
  %i.j = and i32 %i.i, %i.g
  %or.cond.not.i = icmp eq i32 %i.j, 0
  br i1 %or.cond.not.i, label %bb.d, label %crypto_remove_final.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp ugt i32 %i.l, 160
  br i1 %i.m, label %crypto_remove_final.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %1, i64 320
  %i.o = load ptr, ptr %i.n, align 8
  %.not17.i = icmp eq ptr %i.o, null
  br i1 %.not17.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 15
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.g, 15
  %i.u = icmp samesign ugt i32 %i.l, 16
  %or.cond18.i = or i1 %i.t, %i.u
  br i1 %or.cond18.i, label %crypto_remove_final.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.v = getelementptr i8, ptr %1, i64 52
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %crypto_remove_final.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %1, i64 56
  store volatile i32 1, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %1, i64 384
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = or i32 %i.ad, 2048
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr i8, ptr %1, i64 376
  store ptr @crypto_destroy_instance, ptr %i.af, align 8
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.ag = getelementptr i8, ptr %1, i64 400       ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not4054 = icmp eq ptr %i.ah, null
  br i1 %.not4054, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.03356 = phi i32 [ %i.as, %bb.j ], [ 0, %bb.i ]
  %.03455 = phi ptr [ %i.am, %bb.j ], [ %i.ah, %bb.i ] ; 4 uses
  %i.ai = getelementptr i8, ptr %.03455, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !range !16, !noundef !17
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.thread50, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.al = getelementptr i8, ptr %.03455, i64 24   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  store ptr %1, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %.03455, i64 45
  store i8 1, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %.03455, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = or i32 %i.ar, %.03356                   ; 2 uses
  call void @crypto_mod_put(ptr noundef %i.ap) #19
  %.not40 = icmp eq ptr %i.am, null
  br i1 %.not40, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.at = and i32 %i.as, 131072
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.033.lcssa = phi i32 [ 0, %bb.i ], [ %i.at, %._crit_edge.loopexit ]
  %i.au = load i32, ptr %i.ac, align 8
  %i.av = or i32 %i.au, %.033.lcssa
  store i32 %i.av, ptr %i.ac, align 8
  %i.aw = call fastcc ptr @__crypto_register_alg(ptr noundef %1, ptr noundef nonnull %2) #18, !srcloc !51 ; 5 uses
  %i.ax = icmp ugt ptr %i.aw, inttoptr (i64 -4096 to ptr)
  br i1 %i.ax, label %.thread50, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %.not41 = icmp eq ptr %i.aw, null               ; 2 uses
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %i.aw, i64 436
  store i8 1, ptr %i.ay, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.az = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  store volatile ptr %i.ba, ptr %i.ag, align 8
  %.not.i43 = icmp eq ptr %i.ba, null
  br i1 %.not.i43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store volatile ptr %i.ag, ptr %i.bb, align 8
  br label %bb.o

.thread50:                                        ; preds = %.lr.ph, %._crit_edge
  %.03652 = phi ptr [ %i.aw, %._crit_edge ], [ inttoptr (i64 -11 to ptr), %.lr.ph ]
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.bc = ptrtoint ptr %.03652 to i64
  %i.bd = trunc i64 %i.bc to i32
  br label %crypto_remove_final.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  store volatile ptr %i.ag, ptr %i.az, align 8
  %i.be = getelementptr i8, ptr %1, i64 408
  store volatile ptr %i.az, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %1, i64 392
  store ptr %0, ptr %i.bf, align 8
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  br i1 %.not41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @crypto_schedule_test(ptr noundef nonnull %i.aw) #19
  br label %crypto_remove_final.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %2, align 8               ; 2 uses
  %.not16.i = icmp eq ptr %i.bg, %2
  br i1 %.not16.i, label %crypto_remove_final.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %crypto_alg_put.exit.i
  %.017.i = phi ptr [ %.01418.i, %crypto_alg_put.exit.i ], [ %i.bg, %bb.q ] ; 7 uses
  %.01418.i = load ptr, ptr %.017.i, align 8      ; 4 uses
  %i.bh = getelementptr i8, ptr %.017.i, i64 8    ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %.01418.i, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  store volatile ptr %.01418.i, ptr %i.bi, align 8
  store volatile ptr %.017.i, ptr %.017.i, align 8
  store volatile ptr %.017.i, ptr %i.bh, align 8
  %i.bk = getelementptr i8, ptr %.017.i, i64 56   ; 3 uses
  %i.bl = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bk, i32 -1, ptr elementtype(i32) %i.bk) #17, !srcloc !20 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bn = icmp slt i32 %i.bl, 1
  br i1 %i.bn, label %bb.s, label %crypto_alg_put.exit.i, !prof !18

bb.s:                                             ; preds = %bb.r
  call void @refcount_warn_saturate(ptr noundef %i.bk, i32 noundef 3) #19
  br label %crypto_alg_put.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !21
  call void @crypto_destroy_alg(ptr noundef %.017.i) #19
  br label %crypto_alg_put.exit.i

crypto_alg_put.exit.i:                            ; preds = %bb.t, %bb.s, %bb.r
  %.not.i44 = icmp eq ptr %.01418.i, %2
  br i1 %.not.i44, label %crypto_remove_final.exit, label %.lr.ph.i, !llvm.loop !1

crypto_remove_final.exit:                         ; preds = %crypto_alg_put.exit.i, %bb.g, %bb.d, %bb.b, %bb.h, %bb.c, %bb.a, %bb.q, %bb.p, %.thread50
  %.037 = phi i32 [ %i.bd, %.thread50 ], [ -22, %bb.g ], [ 0, %bb.p ], [ 0, %bb.q ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.h ], [ -22, %bb.b ], [ -22, %bb.d ], [ 0, %crypto_alg_put.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_destroy_instance(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 56
  store volatile i32 -1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr @system_percpu_wq, align 8
  %i.f = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.e, ptr noundef %i.d) #19 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crypto_unregister_instance(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.list_head, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  call void @crypto_remove_spawns(ptr noundef %0, ptr nonnull poison, ptr noundef null) #18
  call fastcc void @crypto_remove_instance(ptr noundef %0) #18
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not16.i = icmp eq ptr %i.b, %1
  br i1 %.not16.i, label %crypto_remove_final.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %crypto_alg_put.exit.i
  %.017.i = phi ptr [ %.01418.i, %crypto_alg_put.exit.i ], [ %i.b, %bb.a ] ; 7 uses
  %.01418.i = load ptr, ptr %.017.i, align 8      ; 4 uses
  %i.c = getelementptr i8, ptr %.017.i, i64 8     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %.01418.i, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store volatile ptr %.01418.i, ptr %i.d, align 8
  store volatile ptr %.017.i, ptr %.017.i, align 8
  store volatile ptr %.017.i, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %.017.i, i64 56    ; 3 uses
  %i.g = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 -1, ptr elementtype(i32) %i.f) #17, !srcloc !20 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.c, label %crypto_alg_put.exit.i, !prof !18

bb.c:                                             ; preds = %bb.b
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 3) #19
  br label %crypto_alg_put.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !21
  call void @crypto_destroy_alg(ptr noundef %.017.i) #19
  br label %crypto_alg_put.exit.i

crypto_alg_put.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.not.i = icmp eq ptr %.01418.i, %1
  br i1 %.not.i, label %crypto_remove_final.exit, label %.lr.ph.i, !llvm.loop !1

crypto_remove_final.exit:                         ; preds = %crypto_alg_put.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @crypto_grab_spawn(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %.critedge, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "761: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 761b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 761) #17, !srcloc !52
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 727, i32 2307, i64 16) #17, !srcloc !53
  tail call void asm sideeffect "762: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 762b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 762) #17, !srcloc !54
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  %i.b = icmp ugt ptr %2, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.c = ptrtoint ptr %2 to i64
  %i.d = trunc i64 %i.c to i32
  br label %bb.h

bb.d:                                             ; preds = %.critedge
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = or i32 %3, 131072
  %i.h = tail call ptr @crypto_find_alg(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.g, i32 noundef %4) #19 ; 6 uses
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 -4096 to ptr)
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = trunc i64 %i.j to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #19
  %i.l = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %.val = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val, 96
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.h, i64 16       ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.p, align 8
  store ptr %i.o, ptr %0, align 8
  %i.q = getelementptr i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store volatile ptr %0, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 40
  store i32 %4, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %1, i64 400        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8
  store ptr %0, ptr %i.t, align 8
  %i.w = load i32, ptr %i.l, align 8
  %i.x = and i32 %i.w, 65920
  %i.y = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #19
  tail call void @crypto_mod_put(ptr noundef %i.h) #19
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.b, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.b ], [ %i.d, %bb.c ], [ %i.k, %bb.e ], [ -11, %bb.g ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @crypto_find_alg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0

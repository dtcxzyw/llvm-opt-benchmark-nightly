Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_scsi?download=true
inline.NumInlined: 115
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@virtscsi_kick_event_all:bb.a
  br i1 %.not.i.5, label %bb.g, label %virtscsi_kick_event.exit.5

bb.g:                                             ; preds = %virtscsi_kick_event.exit.4
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = call zeroext i1 @virtqueue_kick(ptr noundef %i.aw) #12 ; 0 uses
  br label %virtscsi_kick_event.exit.5

virtscsi_kick_event.exit.5:                       ; preds = %bb.g, %virtscsi_kick_event.exit.4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.at) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.ay = getelementptr i8, ptr %0, i64 296       ; 2 uses
  store ptr %0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 304
  store ptr %i.az, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !10
  call void @sg_init_one(ptr noundef nonnull %1, ptr noundef %i.az, i32 noundef 16) #12
  %i.bb = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #12
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = call i32 @virtqueue_add_inbuf_cache_clean(ptr noundef %i.bc, ptr noundef nonnull %1, i32 noundef 1, ptr noundef %i.ay, i32 noundef 2080) #12
  %.not.i.6 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.6, label %bb.h, label %virtscsi_kick_event.exit.6

bb.h:                                             ; preds = %virtscsi_kick_event.exit.5
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = call zeroext i1 @virtqueue_kick(ptr noundef %i.be) #12 ; 0 uses
  br label %virtscsi_kick_event.exit.6

virtscsi_kick_event.exit.6:                       ; preds = %bb.h, %virtscsi_kick_event.exit.5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.bb) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.bg = getelementptr i8, ptr %0, i64 344       ; 2 uses
  store ptr %0, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %0, i64 576       ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 352
  store ptr %i.bh, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !10
  call void @sg_init_one(ptr noundef nonnull %1, ptr noundef %i.bh, i32 noundef 16) #12
  %i.bj = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #12
  %i.bk = load ptr, ptr %i.d, align 8
  %i.bl = call i32 @virtqueue_add_inbuf_cache_clean(ptr noundef %i.bk, ptr noundef nonnull %1, i32 noundef 1, ptr noundef %i.bg, i32 noundef 2080) #12
  %.not.i.7 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.7, label %bb.i, label %virtscsi_kick_event.exit.7

bb.i:                                             ; preds = %virtscsi_kick_event.exit.6
  %i.bm = load ptr, ptr %i.d, align 8
  %i.bn = call zeroext i1 @virtqueue_kick(ptr noundef %i.bm) #12 ; 0 uses
  br label %virtscsi_kick_event.exit.7

virtscsi_kick_event.exit.7:                       ; preds = %bb.i, %virtscsi_kick_event.exit.6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.bj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 4182) i32 @virtscsi_queuecommand(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -248
  %i.b = tail call i32 @blk_mq_unique_tag(ptr noundef %i.a) #12
  %i.c = lshr i32 %i.b, 16
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 2808
  %i.f = getelementptr [16 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 296        ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 208
  %.val = load i32, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 510
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = icmp ugt i32 %.val, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "592: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 592b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 592) #14, !srcloc !30
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.7, i32 580, i32 0, i64 16) #14, !srcloc !31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 160
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "593: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 593b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 593) #14, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.7, i32 583, i32 0, i64 16) #14, !srcloc !33
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %i.g, align 64
  %i.p = getelementptr i8, ptr %1, i64 156
  %i.q = load i16, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp ugt i16 %i.q, 32
  br i1 %i.r, label %bb.f, label %bb.g, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "594: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 594b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 594) #14, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.7, i32 590, i32 0, i64 16) #14, !srcloc !35
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %1, i64 312
  store i8 1, ptr %i.s, align 8
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 144
  %i.v = load i32, ptr %i.u, align 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr i8, ptr %1, i64 313
  store i8 %i.w, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %i.t, i64 152      ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = or i8 %i.ab, 64
  %i.ad = getelementptr i8, ptr %1, i64 314
  store i8 %i.ac, ptr %i.ad, align 2
  %i.ae = load i64, ptr %i.y, align 8
  %i.af = trunc i64 %i.ae to i8
  %i.ag = getelementptr i8, ptr %1, i64 315
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = getelementptr i8, ptr %1, i64 320
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %1, i64 328
  store i8 0, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %1, i64 329
  store i8 0, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %1, i64 330
  store i8 0, ptr %i.al, align 2
  %i.am = getelementptr i8, ptr %1, i64 331
  %i.an = getelementptr i8, ptr %1, i64 164
  %i.ao = zext nneg i16 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 4 %i.an, i64 %i.ao, i1 false)
  %i.ap = getelementptr i8, ptr %1, i64 256
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 4
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = tail call fastcc i32 @virtscsi_add_cmd(ptr noundef %i.f, ptr noundef %i.g, i64 noundef 51, i64 noundef 108, i1 noundef zeroext %i.as) #15, !srcloc !36
  switch i32 %i.at, label %bb.j [
    i32 -5, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %1, i64 382
  store i8 3, ptr %i.au, align 2
  %i.av = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #12
  tail call fastcc void @virtscsi_complete_cmd(ptr noundef %i.g) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.av) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 4181, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtscsi_commit_rqs(ptr noundef %0, i16 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2808
  %i.b = zext i16 %1 to i64
  %i.c = getelementptr [16 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #12
  %i.e = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %i.f) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #12
  br i1 %i.g, label %bb.b, label %virtscsi_kick_vq.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = tail call zeroext i1 @virtqueue_notify(ptr noundef %i.h) #12 ; 0 uses
  br label %virtscsi_kick_vq.exit

virtscsi_kick_vq.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 8194, 8196) i32 @virtscsi_abort(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.10, ptr noundef %0, ptr noundef nonnull @.str.11) #12
  %i.c = load ptr, ptr @virtscsi_cmd_pool, align 8
  %i.d = tail call noalias ptr @mempool_alloc_noprof(ptr noundef %i.c, i32 noundef 3072) #12 ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 2216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(192) %i.d, i8 0, i64 192, i1 false)
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr i8, ptr %i.f, i64 152
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, 64
  %i.o = trunc i64 %i.k to i8
  %i.p = ptrtoint ptr %0 to i64
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %i.d, i64 24
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 25
  store i8 %i.i, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.d, i64 26
  store i8 %i.n, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.d, i64 27
  store i8 %i.o, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.d, i64 32
  store i64 %i.p, ptr %.sroa.8.0..sroa_idx, align 32
  %i.q = tail call fastcc i32 @virtscsi_tmf(ptr noundef %i.e, ptr noundef %i.d) #15, !srcloc !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ 8195, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 8194, 8196) i32 @virtscsi_device_reset(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.12) #12
  %i.c = load ptr, ptr @virtscsi_cmd_pool, align 8
  %i.d = tail call noalias ptr @mempool_alloc_noprof(ptr noundef %i.c, i32 noundef 3072) #12 ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 2216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(192) %i.d, i8 0, i64 192, i1 false)
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr i8, ptr %i.f, i64 152
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, 64
  %i.o = trunc i64 %i.k to i8
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.d, i64 20
  store i32 5, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %i.d, i64 24
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 25
  store i8 %i.i, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.d, i64 26
  store i8 %i.n, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.d, i64 27
  store i8 %i.o, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.d, i64 32
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 32
  %i.p = tail call fastcc i32 @virtscsi_tmf(ptr noundef %i.e, ptr noundef %i.d) #15, !srcloc !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 8195, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal noundef i32 @virtscsi_device_alloc(ptr nofree noundef writeonly captures(none) initializes((328, 336)) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 328
  store i64 268435456, ptr %i.a, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtscsi_change_queue_depth(ptr noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 508
  %i.c = load i16, ptr %i.b, align 4
  %i.d = sext i16 %i.c to i32
  %i.e = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.d)
  %i.f = tail call i32 @scsi_change_queue_depth(ptr noundef %0, i32 noundef %i.e) #12
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtscsi_map_queues(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2216       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 556        ; 5 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 2612       ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 232
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 236
  store i32 0, ptr %i.h, align 4
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 16
  tail call void @blk_mq_map_hw_queues(ptr noundef %i.d, ptr noundef %i.k, i32 noundef 2) #12
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 2616
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 248
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 252
  store i32 %i.f, ptr %i.q, align 4
  %i.r = add i32 %i.o, %i.f                       ; 2 uses
  %i.s = icmp eq i32 %i.o, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next
  %i.t = getelementptr i8, ptr %0, i64 240
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 16
  tail call void @blk_mq_map_hw_queues(ptr noundef %i.t, ptr noundef %i.v, i32 noundef 2) #12
  %.pre23 = load i32, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.peel.next
  %i.w = phi i32 [ %i.l, %.peel.next ], [ %.pre23, %bb.d ] ; 2 uses
  %i.x = icmp ugt i32 %i.w, 2
  br i1 %i.x, label %.peel.next20, label %._crit_edge

.peel.next20:                                     ; preds = %bb.e
  %i.y = getelementptr i8, ptr %0, i64 2620
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 264
  store i32 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 268
  store i32 %i.r, ptr %i.ab, align 4
  %i.ac = add i32 %i.z, %i.r
  %i.ad = icmp eq i32 %i.z, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.next20
  %i.ae = getelementptr i8, ptr %0, i64 256
  tail call void @blk_mq_map_queues(ptr noundef %i.ae) #12
  %.pre24 = load i32, ptr %i.b, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.peel.next20
  %i.af = phi i32 [ %.pre24, %bb.f ], [ %i.w, %.peel.next20 ]
  %i.ag = icmp ugt i32 %i.af, 3
  br i1 %i.ag, label %.peel.next21, label %._crit_edge

.peel.next21:                                     ; preds = %bb.g, %bb.i
  %.019 = phi i32 [ %i.an, %bb.i ], [ %i.ac, %bb.g ] ; 2 uses
  %.01718 = phi i32 [ %i.ar, %bb.i ], [ 3, %bb.g ] ; 2 uses
  %i.ah = sext i32 %.01718 to i64                 ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.d, i64 %i.ah ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.e, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.ai, i64 12
  store i32 %.019, ptr %i.am, align 4
  %i.an = add i32 %i.ak, %.019
  %i.ao = icmp eq i32 %i.ak, 0
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.peel.next21
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  tail call void @blk_mq_map_hw_queues(ptr noundef %i.ai, ptr noundef %i.aq, i32 noundef 2) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.peel.next21
  %i.ar = add nuw i32 %.01718, 1                  ; 2 uses
  %i.as = load i32, ptr %i.b, align 4
  %i.at = icmp ult i32 %i.ar, %i.as
  br i1 %i.at, label %.peel.next21, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.i, %bb.c, %bb.e, %bb.g, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtscsi_mq_poll(ptr noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 2808
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #12
  %i.f = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr @virtqueue_get_buf(ptr noundef %i.g, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.l, %.lr.ph ], [ %i.h, %bb.a ]
  %.012 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  call fastcc void @virtscsi_complete_cmd(ptr noundef nonnull %i.i) #15
  %i.j = add i32 %.012, 1                         ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = call ptr @virtqueue_get_buf(ptr noundef %i.k, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @virtscsi_eh_timed_out(ptr nofree readnone captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @virtscsi_add_cmd(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 24, 52) %2, i64 noundef range(i64 1, 109) %3, i1 noundef zeroext %4) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 11 uses
  %5 = alloca %struct.scatterlist, align 8        ; 7 uses
  %6 = alloca %struct.scatterlist, align 8        ; 7 uses
  %i.b = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %0) #12 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !10
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread58.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 160
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  switch i32 %i.g, label %bb.c [
    i32 3, label %.thread58.i
end_hunk_0

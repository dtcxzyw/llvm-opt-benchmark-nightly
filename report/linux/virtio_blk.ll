Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtio_blk?download=true
inline.NumInlined: 167
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@virtblk_restore:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @virtblk_reset_prepare(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !14
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 44       ; 4 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = or i32 %i.j, 524288
  store i32 %i.k, ptr %i.i, align 4
  tail call void @blk_mq_freeze_queue_nomemsave(ptr noundef %i.f) #13
  tail call void @blk_mq_quiesce_queue_nowait(ptr noundef %i.f) #13
  tail call void @blk_mq_unfreeze_queue_nomemrestore(ptr noundef %i.f) #13
  %i.l = or i32 %i.j, -524289
  %i.m = load i32, ptr %i.i, align 4
  %i.n = and i32 %i.m, %i.l
  store i32 %i.n, ptr %i.i, align 4
  tail call void @virtio_reset_device(ptr noundef %0) #13
  %i.o = getelementptr i8, ptr %i.b, i64 264
  %i.p = tail call zeroext i1 @flush_work(ptr noundef %i.o) #13 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 784
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef %0) #13, !inline_history !0
  %i.u = getelementptr i8, ptr %i.b, i64 320      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @kfree(ptr noundef %i.v) #13
  store ptr null, ptr %i.u, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtblk_reset_done(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call fastcc i32 @init_vq(ptr noundef %i.b) #17, !srcloc !15 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %virtblk_restore_priv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 784        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i8 %i.g(ptr noundef %0) #13, !inline_history !1 ; 2 uses
  %i.i = and i8 %i.h, 4
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %virtio_device_ready.exit.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "571: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 571b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 571) #14, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.24, i32 348, i32 2305, i64 16) #14, !srcloc !18
  tail call void asm sideeffect "572: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 572b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 572) #14, !srcloc !19
  br label %virtio_device_ready.exit.i

virtio_device_ready.exit.i:                       ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = or i8 %i.h, 4
  tail call void %i.l(ptr noundef %0, i8 noundef zeroext %i.m) #13, !inline_history !1
  %i.n = getelementptr i8, ptr %i.b, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @blk_mq_unquiesce_queue(ptr noundef %i.q) #13
  br label %virtblk_restore_priv.exit

virtblk_restore_priv.exit:                        ; preds = %bb.a, %virtio_device_ready.exit.i
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtblk_config_changed_work(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -264
  tail call fastcc void @virtblk_update_capacity(ptr noundef %i.a, i1 noundef zeroext true) #17, !srcloc !29
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @init_vq(ptr nofree noundef captures(none) %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.irq_affinity, align 8       ; 4 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.c, i32 noundef 12) #13
  %i.d = getelementptr i8, ptr %i.c, i64 824
  %.val.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val.i, 4096
  %.not147 = icmp eq i64 %i.e, 0
  br i1 %.not147, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i16 0, ptr %i.a, align 2, !annotation !12
  %i.f = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.g = getelementptr i8, ptr %i.c, i64 784
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef %i.c, i32 noundef 34, ptr noundef nonnull %i.a, i32 noundef 2) #13
  %i.j = load i16, ptr %i.a, align 2              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.c, i64 16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.l, ptr noundef nonnull @.str.10) #15
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.b
  %spec.select146 = phi i16 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.m = load i32, ptr @num_request_queues, align 4 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i16 %spec.select146 to i32          ; 2 uses
  %i.p = call i32 @llvm.umin.i32(i32 %i.m, i32 %i.o)
  %i.q = select i1 %i.n, i32 %i.o, i32 %i.p
  %i.r = call i32 @blk_mq_num_possible_queues(i32 noundef %i.q) #13 ; 2 uses
  %i.s = load i32, ptr @poll_queues, align 4
  %i.t = and i32 %i.r, 65535                      ; 9 uses
  %i.u = add nsw i32 %i.t, -1
  %i.v = call i32 @llvm.umin.i32(i32 %i.s, i32 %i.u)
  %i.w = and i32 %i.v, 65535                      ; 3 uses
  %i.x = sub nsw i32 %i.t, %i.w                   ; 5 uses
  %i.y = getelementptr i8, ptr %0, i64 304
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %0, i64 308
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 312
  store i32 %i.w, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.c, i64 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.ab, ptr noundef nonnull @.str.11, i32 noundef %i.x, i32 noundef 0, i32 noundef %i.w) #15
  %i.ac = zext nneg i32 %i.t to i64               ; 5 uses
  %.not170 = icmp eq i32 %i.t, 0
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 22019761) %i.ad, i32 noundef 3264) #19 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 320       ; 13 uses
  store ptr %i.ae, ptr %i.af, align 8
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.f, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %.thread
  %i.ag = mul nuw nsw i64 %i.ac, 24
  %i.ah = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 22019761) %i.ag, i32 noundef 3520) #19 ; 5 uses
  %i.ai = shl nuw nsw i64 %i.ac, 3
  %i.aj = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 22019761) %i.ai, i32 noundef 3264) #19 ; 6 uses
  %i.ak = icmp ne ptr %i.ah, null
  %i.al = icmp ne ptr %i.aj, null
  %or.cond3 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond3, label %.preheader149, label %bb.d

.preheader149:                                    ; preds = %_kzalloc_noprof.exit
  %i.am = icmp sgt i32 %i.x, 0
  br i1 %i.am, label %.lr.ph.preheader, label %.preheader148

.lr.ph.preheader:                                 ; preds = %.preheader149
  %wide.trip.count = zext nneg i32 %i.x to i64
  %.pre = load ptr, ptr %i.af, align 8
  br label %.lr.ph

.preheader148.loopexit:                           ; preds = %.lr.ph
  %i.an = trunc nuw i32 %i.x to i16
  br label %.preheader148

.preheader148:                                    ; preds = %.preheader148.loopexit, %.preheader149
  %.0116.lcssa = phi i16 [ 0, %.preheader149 ], [ %i.an, %.preheader148.loopexit ] ; 2 uses
  %i.ao = zext i16 %.0116.lcssa to i32            ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.t, %i.ao
  br i1 %i.ap, label %.lr.ph152.preheader, label %._crit_edge

.lr.ph152.preheader:                              ; preds = %.preheader148
  %.pre162 = load ptr, ptr %i.af, align 8
  br label %.lr.ph152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aq = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ar = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ba, %.lr.ph ]
  %i.as = getelementptr [24 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store ptr @virtblk_done, ptr %i.at, align 8
  %i.au = getelementptr [64 x i8], ptr %i.aq, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 12
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.av, i64 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %i.ar) #13 ; 0 uses
  %i.ax = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ay = getelementptr [64 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  store ptr %i.az, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = trunc nuw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader148.loopexit, label %.lr.ph, !llvm.loop !30

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.lr.ph152
  %i.bb = phi ptr [ %i.bf, %.lr.ph152 ], [ %.pre162, %.lr.ph152.preheader ]
  %2 = phi i32 [ %5, %.lr.ph152 ], [ %i.ao, %.lr.ph152.preheader ]
  %.1151 = phi i16 [ %4, %.lr.ph152 ], [ %.0116.lcssa, %.lr.ph152.preheader ] ; 2 uses
  %3 = zext i16 %.1151 to i64                     ; 3 uses
  %i.bc = getelementptr [64 x i8], ptr %i.bb, i64 %3
  %i.bd = getelementptr i8, ptr %i.bc, i64 12
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bd, i64 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %2) #13 ; 0 uses
  %i.bf = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bg = getelementptr [64 x i8], ptr %i.bf, i64 %3
  %i.bh = getelementptr i8, ptr %i.bg, i64 12
  %i.bi = getelementptr [24 x i8], ptr %i.ah, i64 %3
  store ptr %i.bh, ptr %i.bi, align 8
  %4 = add nuw i16 %.1151, 1                      ; 2 uses
  %5 = zext i16 %4 to i32                         ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.t, %5
  br i1 %i.bj, label %.lr.ph152, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph152, %.preheader148
  %i.bk = getelementptr i8, ptr %i.c, i64 784
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call i32 %i.bn(ptr noundef %i.c, i32 noundef range(i32 0, 65536) %i.t, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah, ptr noundef nonnull %1) #13, !inline_history !32 ; 2 uses
  %.not130 = icmp eq i32 %i.bo, 0
  br i1 %.not130, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not170, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.ac, 1
  %i.bp = icmp eq i32 %i.t, 1
  br i1 %i.bp, label %.lr.ph154.epil.preheader, label %.lr.ph154.preheader.new

.lr.ph154.preheader.new:                          ; preds = %.lr.ph154.preheader
  %unroll_iter = and i64 %i.ac, 65534
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader.new
  %indvars.iv157.a = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %indvars.iv.next158.1, %.lr.ph154 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %niter.next.1, %.lr.ph154 ]
  %i.bq = load ptr, ptr %i.af, align 8
  %i.br = getelementptr [64 x i8], ptr %i.bq, i64 %indvars.iv157.a
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv157.a
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.af, align 8
  %i.bw = getelementptr [64 x i8], ptr %i.bv, i64 %indvars.iv157.a
  store ptr %i.bu, ptr %i.bw, align 64
  %indvars.iv.next158.a = or disjoint i64 %indvars.iv157.a, 1 ; 3 uses
  %i.bx = load ptr, ptr %i.af, align 8
  %i.by = getelementptr [64 x i8], ptr %i.bx, i64 %indvars.iv.next158.a
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.next158.a
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %i.af, align 8
  %i.cd = getelementptr [64 x i8], ptr %i.cc, i64 %indvars.iv.next158.a
  store ptr %i.cb, ptr %i.cd, align 64
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge155.loopexit.unr-lcssa, label %.lr.ph154, !llvm.loop !33

._crit_edge155.loopexit.unr-lcssa:                ; preds = %.lr.ph154
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge155, label %.lr.ph154.epil.preheader

.lr.ph154.epil.preheader:                         ; preds = %._crit_edge155.loopexit.unr-lcssa, %.lr.ph154.preheader
  %indvars.iv157.epil.init = phi i64 [ 0, %.lr.ph154.preheader ], [ %indvars.iv.next158.1, %._crit_edge155.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod171 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod171)
  %i.ce = load ptr, ptr %i.af, align 8
  %i.cf = getelementptr [64 x i8], ptr %i.ce, i64 %indvars.iv157.epil.init
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv157.epil.init
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.af, align 8
  %i.ck = getelementptr [64 x i8], ptr %i.cj, i64 %indvars.iv157.epil.init
  store ptr %i.ci, ptr %i.ck, align 64
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.epil.preheader, %._crit_edge155.loopexit.unr-lcssa, %.preheader
  %i.cl = getelementptr i8, ptr %0, i64 300
  store i32 %i.t, ptr %i.cl, align 4
  br label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit, %._crit_edge, %._crit_edge155
  %.0115 = phi i32 [ %i.bo, %._crit_edge ], [ 0, %._crit_edge155 ], [ -12, %_kzalloc_noprof.exit ] ; 2 uses
  call void @kfree(ptr noundef %i.aj) #13
  call void @kfree(ptr noundef %i.ah) #13
  %.not131 = icmp eq i32 %.0115, 0
  br i1 %.not131, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr %i.af, align 8
  call void @kfree(ptr noundef %i.cm) #13
  store ptr null, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.thread, %bb.c
  %.0 = phi i32 [ -12, %.thread ], [ -22, %bb.c ], [ %.0115, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 256) i32 @virtblk_get_cache_mode(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 11) #13
  %i.b = getelementptr i8, ptr %0, i64 824        ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.val.i, 2048
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !annotation !12
  %i.d = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 784
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %i.h = load i8, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 9) #13
  %.val.i8 = load i64, ptr %i.b, align 8
  %i.i = lshr i64 %.val.i8, 9
  %i.j = trunc i64 %i.i to i8
  %i.k = and i8 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.1 = phi i8 [ %i.k, %bb.b ], [ %i.h, %.thread ]
  %i.l = zext i8 %.1 to i32
  ret i32 %i.l
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @virtblk_update_capacity(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, i8 0, i64 10, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 0, ptr %i.c, align 8, !annotation !12
  %i.j = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  %i.k = getelementptr i8, ptr %i.e, i64 784      ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 %i.n(ptr noundef %i.e) #13, !inline_history !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.q = tail call i32 @__SCT__might_resched() #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.020.i = phi i32 [ %i.p, %bb.c ], [ %i.x, %bb.f ]
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 8) #13, !inline_history !34
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.v, null
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 %i.v(ptr noundef %i.e) #13, !inline_history !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi i32 [ %i.w, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %.not26.i = icmp eq i32 %i.x, %.020.i
  br i1 %.not26.i, label %__virtio_cread_many.exit, label %bb.d, !llvm.loop !35

__virtio_cread_many.exit:                         ; preds = %bb.f
  %i.y = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.z = getelementptr i8, ptr %i.i, i64 168      ; 3 uses
  %.val28 = load i32, ptr %i.z, align 8           ; 2 uses
  %i.aa = lshr i32 %.val28, 9
end_hunk_0

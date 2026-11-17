Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtgpu_ioctl?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@virtio_gpu_transfer_to_host_ioctl:bb.a
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %bb.h

bb.h:                                             ; preds = %virtio_gpu_create_context.exit
  %i.al = getelementptr i8, ptr %1, i64 36
  %i.am = load i32, ptr %i.al, align 4
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %1, i64 40
  %i.ao = load i32, ptr %i.an, align 4
  %.not50 = icmp eq i32 %i.ao, 0
  br i1 %.not50, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i, %virtio_gpu_create_context.exit
  %i.ap = tail call i32 @virtio_gpu_array_lock_resv(ptr noundef nonnull %i.g) #8 ; 2 uses
  %.not51 = icmp eq i32 %i.ap, 0
  br i1 %.not51, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %i.b, i64 66824
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = tail call ptr @virtio_gpu_fence_alloc(ptr noundef %i.b, i64 noundef %i.ar, i32 noundef 0) #8 ; 3 uses
  %.not52 = icmp eq ptr %i.as, null
  br i1 %.not52, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not53 = icmp eq ptr %i.d, null
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.au = phi i32 [ %i.at, %bb.m ], [ 0, %bb.l ]
  %i.av = zext i32 %i.f to i64
  %i.aw = getelementptr i8, ptr %1, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %1, i64 36
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %1, i64 40
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %1, i64 4
  tail call void @virtio_gpu_cmd_transfer_to_host_3d(ptr noundef %i.b, i32 noundef %i.au, i64 noundef %i.av, i32 noundef %i.ax, i32 noundef %i.az, i32 noundef %i.bb, ptr noundef %i.bc, ptr noundef nonnull %i.g, ptr noundef nonnull %i.as) #8
  %i.bd = getelementptr i8, ptr %i.as, i64 56     ; 4 uses
  %i.be = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd, i32 -1, ptr elementtype(i32) %i.bd) #10, !srcloc !15 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp slt i32 %i.be, 1
  br i1 %i.bg, label %bb.p, label %dma_fence_put.exit, !prof !16

bb.p:                                             ; preds = %bb.o
  tail call void @refcount_warn_saturate(ptr noundef %i.bd, i32 noundef 3) #8
  br label %dma_fence_put.exit

bb.q:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !17
  tail call void @dma_fence_release(ptr noundef %i.bd) #8, !callees !18, !inline_history !0
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.e
  tail call void @virtio_gpu_notify(ptr noundef %i.b) #8
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  tail call void @virtio_gpu_array_unlock_resv(ptr noundef nonnull %i.g) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.i, %bb.c, %bb.j, %bb.r
  %.045 = phi i32 [ %i.ap, %bb.j ], [ -12, %bb.r ], [ -22, %bb.c ], [ -22, %bb.i ], [ -22, %bb.h ]
  tail call void @virtio_gpu_array_put_free(ptr noundef nonnull %i.g) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %dma_fence_put.exit
  %.0 = phi i32 [ 0, %dma_fence_put.exit ], [ %.045, %bb.s ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @virtio_gpu_wait_ioctl(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %i.a) #8 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %drm_gem_object_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  %i.g = getelementptr i8, ptr %i.b, i64 248
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %i.h, i32 noundef 2) #8
  %i.j = zext i1 %i.i to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i64 @dma_resv_wait_timeout(ptr noundef %i.h, i32 noundef 2, i1 noundef zeroext true, i64 noundef 15000) #8
  %i.l = trunc i64 %i.k to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.l, %bb.d ]  ; 2 uses
  %i.m = icmp eq i32 %.0, 0
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.0, i32 0)
  %.1 = select i1 %i.m, i32 -16, i32 %spec.store.select ; 3 uses
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.b, i32 -1, ptr nonnull elementtype(i32) %i.b) #10, !srcloc !15 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %bb.g, label %drm_gem_object_put.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.b, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.b) #8, !callees !18, !inline_history !0
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  %.012 = phi i32 [ -2, %bb.a ], [ %.1, %bb.f ], [ %.1, %bb.g ], [ %.1, %bb.h ]
  ret i32 %.012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_gpu_get_caps_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = getelementptr i8, ptr %i.c, i64 67232    ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %copy_to_user.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %copy_to_user.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.c, i64 66800    ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef %i.j) #8
  %i.k = load i32, ptr %i.d, align 8              ; 2 uses
  %.not112 = icmp eq i32 %i.k, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 67224
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 4          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.079105 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.p = sext i32 %.079105 to i64
  %i.q = getelementptr [12 x i8], ptr %i.m, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %i.n
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load i32, ptr %i.o, align 4              ; 2 uses
  %.not = icmp ult i32 %i.u, %i.v
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = add nuw i32 %.079105, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.f, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #8
  br label %copy_to_user.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.q, i64 8
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load i32, ptr %i.g, align 8
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.y) ; 2 uses
  %i.ab = getelementptr i8, ptr %i.c, i64 67248   ; 3 uses
  %storemerge106 = load ptr, ptr %i.ab, align 8   ; 3 uses
  %.not103107 = icmp eq ptr %storemerge106, %i.ab
  br i1 %.not103107, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.g, %bb.j
  %storemerge108 = phi ptr [ %storemerge, %bb.j ], [ %storemerge106, %bb.g ] ; 4 uses
  %i.ac = getelementptr i8, ptr %storemerge108, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, %i.n
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph110
  %i.af = getelementptr i8, ptr %storemerge108, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, %i.v
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %storemerge108, ptr %i.a, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #8
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph110, %bb.h
  %storemerge = load ptr, ptr %storemerge108, align 8 ; 3 uses
  %.not103 = icmp eq ptr %storemerge, %i.ab
  br i1 %.not103, label %._crit_edge111, label %.lr.ph110, !llvm.loop !22

._crit_edge111:                                   ; preds = %bb.j, %bb.g
  %storemerge.lcssa = phi ptr [ %storemerge106, %bb.g ], [ %storemerge, %bb.j ]
  store ptr %storemerge.lcssa, ptr %i.a, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #8
  %i.ai = load i32, ptr %i.o, align 4
  %i.aj = call i32 @virtio_gpu_cmd_get_capset(ptr noundef %i.c, i32 noundef %.079105, i32 noundef %i.ai, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not86 = icmp eq i32 %i.aj, 0
  br i1 %.not86, label %bb.k, label %copy_to_user.exit

bb.k:                                             ; preds = %._crit_edge111
  call void @virtio_gpu_notify(ptr noundef %i.c) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ak = call i32 @__SCT__might_resched() #8     ; 0 uses
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 36
  %i.an = load volatile i32, ptr %i.am, align 4
  %.not87.not = icmp eq i32 %i.an, 0
  br i1 %.not87.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #8
  %i.ao = getelementptr i8, ptr %i.c, i64 66776   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.081 = phi i64 [ 5000, %bb.m ], [ %spec.store.select9, %bb.o ] ; 2 uses
  %i.ap = call i64 @prepare_to_wait_event(ptr noundef %i.ao, ptr noundef nonnull %3, i32 noundef 2) #8 ; 0 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 36
  %i.as = load volatile i32, ptr %i.ar, align 4
  %.not88 = icmp eq i32 %i.as, 0
  br i1 %.not88, label %bb.o, label %select.unfold

bb.o:                                             ; preds = %bb.n
  %i.at = call i64 @schedule_timeout(i64 noundef %.081) #8 ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 36
  %i.aw = load volatile i32, ptr %i.av, align 4
  %.not90 = icmp eq i32 %i.aw, 0                  ; 2 uses
  %i.ax = icmp ne i64 %i.at, 0
  %or.cond7 = select i1 %.not90, i1 true, i1 %i.ax
  %spec.store.select9 = select i1 %or.cond7, i64 %i.at, i64 1 ; 3 uses
  %.not91 = icmp ne i64 %spec.store.select9, 0
  %spec.select94.not = select i1 %.not90, i1 %.not91, i1 false
  br i1 %spec.select94.not, label %bb.n, label %select.unfold

select.unfold:                                    ; preds = %bb.o, %bb.n
  %.1.ph = phi i64 [ %.081, %bb.n ], [ %spec.store.select9, %bb.o ]
  call void @finish_wait(ptr noundef %i.ao, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ay = and i64 %.1.ph, 4294967295
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %copy_to_user.exit, label %.critedge

.critedge:                                        ; preds = %bb.l, %select.unfold
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !23
  %i.ba = icmp slt i32 %i.aa, 0
  br i1 %i.ba, label %bb.p, label %check_copy_size.exit, !prof !16

bb.p:                                             ; preds = %.critedge
  call void asm sideeffect "190: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 190b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 190) #10, !srcloc !24
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, ptr @.str.12, i32 57, i32 2307, i64 16) #10, !srcloc !25
  call void asm sideeffect "191: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 191b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 191) #10, !srcloc !26
  br label %copy_to_user.exit

check_copy_size.exit:                             ; preds = %.critedge
  %i.bb = zext nneg i32 %i.aa to i64
  %i.bc = getelementptr i8, ptr %1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i64 @_copy_to_user(ptr noundef %i.be, ptr noundef %i.bh, i64 noundef range(i64 0, 4294967296) %i.bb) #8
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = select i1 %i.bj, i32 0, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit, %bb.p, %select.unfold, %._crit_edge111, %bb.b, %bb.a, %._crit_edge
  %.0 = phi i32 [ -22, %bb.b ], [ -38, %bb.a ], [ -22, %._crit_edge ], [ %i.aj, %._crit_edge111 ], [ -16, %select.unfold ], [ %i.bk, %check_copy_size.exit ], [ -14, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_gpu_resource_create_blob_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %3 = alloca %struct.virtio_gpu_object_params, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 11 uses
  %i.f = getelementptr i8, ptr %2, i64 136
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr i8, ptr %i.e, i64 66876
  %i.i = load i8, ptr %i.h, align 4, !range !11, !noundef !12
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %drm_gem_object_put.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %.not.i = icmp ult i32 %i.l, 8
  br i1 %.not.i, label %bb.c, label %drm_gem_object_put.exit

bb.c:                                             ; preds = %bb.b
  %.not29.i = icmp samesign ult i32 %i.l, 4
  br i1 %.not29.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.e, i64 66875
  %i.n = load i8, ptr %i.m, align 1, !range !11, !noundef !12
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %drm_gem_object_put.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  switch i32 %i.p, label %drm_gem_object_put.exit [
    i32 1, label %bb.i
    i32 3, label %bb.f
    i32 2, label %.thread.i
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.f
  %.156 = phi i8 [ 0, %bb.e ], [ 1, %bb.f ]
  %i.q = getelementptr i8, ptr %i.e, i64 66872
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !12
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %drm_gem_object_put.exit

bb.g:                                             ; preds = %.thread.i
  %i.t = getelementptr i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = and i32 %i.u, 3
  %.not32.i = icmp eq i32 %i.v, 0
  br i1 %.not32.i, label %bb.h, label %drm_gem_object_put.exit

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.z, ptr %i.aa, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8
  %.not30.i = icmp eq i64 %i.ac, 0
  br i1 %.not30.i, label %bb.j, label %drm_gem_object_put.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %1, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %.not31.i = icmp eq i32 %i.ae, 0
  br i1 %.not31.i, label %bb.k, label %drm_gem_object_put.exit

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.af = phi i32 [ %i.u, %bb.h ], [ 0, %bb.j ]
  %.257 = phi i8 [ %.156, %bb.h ], [ 1, %bb.j ]   ; 2 uses
  %.154 = phi i8 [ 1, %bb.h ], [ 0, %bb.j ]       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.p, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  store i64 %i.ai, ptr %3, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 1, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  store i32 %i.l, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %1, i64 48
  %i.am = load i32, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.e, i64 66879
  %i.ap = load i8, ptr %i.ao, align 1, !range !11, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %verify_blob.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %i.e, i64 67264
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = add nsw i64 %i.at, -1
  %i.av = and i64 %i.au, %i.ai
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %verify_blob.exit, label %drm_gem_object_put.exit
end_hunk_0

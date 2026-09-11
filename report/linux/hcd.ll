Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hcd?download=true
inline.NumInlined: 240
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@usb_calc_bus_time:bb.a

bb.g:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.q, 10107
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  %i.u = mul i32 %3, 56
  %i.v = sdiv i32 %i.u, 6
  %i.w = add nsw i32 %i.v, 3
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, 2083
  %. = select i1 %.not, i64 916520, i64 633232
  %i.z = add nsw i64 %i.y, %.
  %.017.in = udiv i64 %i.z, 1000
  %.017 = add nuw nsw i64 %.017.in, 5
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i64 [ %.017, %bb.h ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -113, 1) i32 @usb_hcd_link_urb_to_ep(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #18
  %i.a = getelementptr i8, ptr %1, i64 20
  %i.b = load volatile i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.f, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 1253
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 1
  %.not8 = icmp eq i16 %i.k, 0
  br i1 %.not8, label %bb.f, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 320
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 32
  %.not9 = icmp eq i64 %i.n, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.q = getelementptr i8, ptr %i.d, i64 32
  %i.r = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  store ptr %i.q, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %1, i64 32
  store ptr %i.s, ptr %i.t, align 8
  store volatile ptr %i.p, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -113, %bb.c ], [ -1, %bb.a ], [ -2, %bb.b ], [ 0, %bb.e ], [ -108, %bb.d ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hcd_urb_list_lock) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -43, 1) i32 @usb_hcd_check_unlink_urb(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi ptr [ %i.c, %bb.a ], [ %.0, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %i.e = icmp eq ptr %.0, %i.c
  %i.f = icmp eq ptr %.0, %i.d                    ; 2 uses
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %2, ptr %i.g, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.011 = phi i32 [ 0, %bb.e ], [ -43, %bb.c ], [ -16, %bb.d ]
  ret i32 %.011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_hcd_unmap_urb_setup_for_dma(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 92         ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 1048576
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 152
  %i.g = load i64, ptr %i.f, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %i.e, i64 noundef %i.g, i64 noundef 8, i32 noundef 1, i64 noundef 0) #18
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %i.b, 2097152
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 144        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.0.copyload.i = load i64, ptr %i.p, align 1
  %i.q = inttoptr i64 %.0.copyload.i to ptr
  %i.r = load i64, ptr %i.m, align 8
  tail call void @hcd_buffer_free(ptr noundef %i.l, i64 noundef 16, ptr noundef %i.o, i64 noundef %i.r) #18
  store ptr %i.q, ptr %i.n, align 8
  store i64 0, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.s = load i32, ptr %i.a, align 4
  %i.t = and i32 %i.s, -3145729
  store i32 %i.t, ptr %i.a, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_hcd_unmap_urb_for_dma(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 92         ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 152
  %i.g = load i64, ptr %i.f, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %i.e, i64 noundef %i.g, i64 noundef 8, i32 noundef 1, i64 noundef 0) #18
  br label %usb_hcd_unmap_urb_setup_for_dma.exit

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %i.b, 2097152
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %usb_hcd_unmap_urb_setup_for_dma.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 144        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.0.copyload.i.i = load i64, ptr %i.p, align 1
  %i.q = inttoptr i64 %.0.copyload.i.i to ptr
  %i.r = load i64, ptr %i.m, align 8
  tail call void @hcd_buffer_free(ptr noundef %i.l, i64 noundef 16, ptr noundef %i.o, i64 noundef %i.r) #18
  store ptr %i.q, ptr %i.n, align 8
  store i64 0, ptr %i.m, align 8
  br label %usb_hcd_unmap_urb_setup_for_dma.exit

usb_hcd_unmap_urb_setup_for_dma.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %i.s = load i32, ptr %i.a, align 4              ; 7 uses
  %i.t = and i32 %i.s, -3145729
  store i32 %i.t, ptr %i.a, align 4
  %2 = and i32 %i.s, 512
  %.not.not = icmp eq i32 %2, 0                   ; 2 uses
  %3 = select i1 %.not.not, i32 1, i32 2          ; 4 uses
  %i.u = and i32 %i.s, 262144
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %usb_hcd_unmap_urb_setup_for_dma.exit
  %i.v = getelementptr i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %1, i64 132
  %i.aa = load i32, ptr %i.z, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.aa, i32 noundef %3, i64 noundef 0) #18
  br label %dma_sync_sgtable_for_cpu.exit

bb.f:                                             ; preds = %usb_hcd_unmap_urb_setup_for_dma.exit
  %i.ab = and i32 %i.s, 131072
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %1, i64 104
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %1, i64 136
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  tail call void @dma_unmap_page_attrs(ptr noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ai, i32 noundef %3, i64 noundef 0) #18
  br label %dma_sync_sgtable_for_cpu.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = and i32 %i.s, 65536
  %.not34 = icmp eq i32 %i.aj, 0
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %1, i64 104
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %1, i64 136
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  tail call void @dma_unmap_page_attrs(ptr noundef %i.al, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.aq, i32 noundef range(i32 1, 3) %3, i64 noundef 0) #18
  br label %dma_sync_sgtable_for_cpu.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = and i32 %i.s, 524288
  %.not35 = icmp eq i32 %i.ar, 0
  br i1 %.not35, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %1, i64 64
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 96        ; 3 uses
  %i.ay = getelementptr i8, ptr %1, i64 136
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %.0.copyload.i = load i64, ptr %i.bc, align 1
  %i.bd = inttoptr i64 %.0.copyload.i to ptr      ; 2 uses
  br i1 %.not.not, label %hcd_free_coherent.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bb, i64 range(i64 0, 4294967296) %i.ba, i1 false)
  %.pre.i = load ptr, ptr %i.ax, align 8
  br label %hcd_free_coherent.exit

hcd_free_coherent.exit:                           ; preds = %bb.k, %bb.l
  %i.be = phi ptr [ %.pre.i, %bb.l ], [ %i.bb, %bb.k ]
  %i.bf = add nuw nsw i64 %i.ba, 8
  %i.bg = load i64, ptr %i.aw, align 8
  tail call void @hcd_buffer_free(ptr noundef %i.av, i64 noundef %i.bf, ptr noundef %i.be, i64 noundef %i.bg) #18
  store ptr %i.bd, ptr %i.ax, align 8
  store i64 0, ptr %i.aw, align 8
  br label %dma_sync_sgtable_for_cpu.exit

bb.m:                                             ; preds = %bb.j
  %i.bh = and i32 %i.s, 4
  %.not36 = icmp eq i32 %i.bh, 0
  br i1 %.not36, label %dma_sync_sgtable_for_cpu.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %1, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %.not37 = icmp eq ptr %i.bj, null
  br i1 %.not37, label %dma_sync_sgtable_for_cpu.exit, label %dma_dev_need_sync.exit.i.i

dma_dev_need_sync.exit.i.i:                       ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.val38 = load ptr, ptr %i.bj, align 8
  %i.bm = getelementptr i8, ptr %i.bj, i64 12
  %.val39 = load i32, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %i.bl, i64 752
  %i.bo = load volatile i64, ptr %i.bn, align 8
  %.in.in.i.i.i.i = and i64 %i.bo, 8
  %.in.i.not.i.i.i = icmp eq i64 %.in.in.i.i.i.i, 0
  br i1 %.in.i.not.i.i.i, label %bb.o, label %dma_sync_sgtable_for_cpu.exit

bb.o:                                             ; preds = %dma_dev_need_sync.exit.i.i
  tail call void @__dma_sync_sg_for_cpu(ptr noundef %i.bl, ptr noundef %.val38, i32 noundef %.val39, i32 noundef range(i32 1, 3) %3) #18
  br label %dma_sync_sgtable_for_cpu.exit

dma_sync_sgtable_for_cpu.exit:                    ; preds = %bb.o, %dma_dev_need_sync.exit.i.i, %bb.g, %hcd_free_coherent.exit, %bb.n, %bb.m, %bb.i, %bb.e
  %i.bp = load i32, ptr %i.a, align 4
  %i.bq = and i32 %i.bp, -983041
  store i32 %i.bq, ptr %i.a, align 4
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @usb_hcd_map_urb_for_dma(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 3
  %.val124 = load i8, ptr %i.c, align 1
  %i.d = and i8 %.val124, 3
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8
  %.not104 = icmp eq i8 %i.f, 0
  br i1 %.not104, label %bb.c, label %dma_sync_sgtable_for_device.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 576
  %i.h = load ptr, ptr %i.g, align 8
  %.not105 = icmp eq ptr %i.h, null
  br i1 %.not105, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 144        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "640: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 640b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 640) #17, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 1261, i32 2307, i64 16) #17, !srcloc !29
  tail call void asm sideeffect "641: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 641b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 641) #17, !srcloc !30
  br label %dma_sync_sgtable_for_device.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 152
  %i.m = getelementptr i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @hcd_buffer_alloc(ptr noundef %i.p, i64 noundef 16, i32 noundef %2, ptr noundef %i.l) #18 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %dma_sync_sgtable_for_device.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = load i64, ptr %i.u, align 1
  store i64 %i.v, ptr %i.q, align 1
  store ptr %i.q, ptr %i.i, align 8
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 296
  %.val126 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val126, i64 32
  %.val126.val = load i32, ptr %i.x, align 8
  %i.y = and i32 %.val126.val, 2
  %.not157 = icmp eq i32 %i.y, 0
  br i1 %.not157, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %1, i64 144
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !31
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 32           ; 2 uses
  %i.af = icmp ult ptr %i.aa, %i.ae
  %i.ag = getelementptr i8, ptr %i.ae, i64 16384
  %i.ah = icmp uge ptr %i.aa, %i.ag
  %.not160 = or i1 %i.af, %i.ah
  br i1 %.not160, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 1413, i32 2323, i64 16) #17, !srcloc !32
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ai) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !33
  br label %dma_sync_sgtable_for_device.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call fastcc i64 @dma_map_single_attrs(ptr noundef %i.ak, ptr noundef %i.aa, i64 noundef 8, i32 noundef 1) #19 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 152
  store i64 %i.al, ptr %i.am, align 8
  %.not161 = icmp eq i64 %i.al, -1
  br i1 %.not161, label %dma_sync_sgtable_for_device.exit, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink178 = phi i32 [ 2097152, %bb.g ], [ 1048576, %bb.k ]
  %i.an = getelementptr i8, ptr %1, i64 92        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = or i32 %i.ao, %.sink178
  store i32 %i.ap, ptr %i.an, align 4
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.a
  %i.aq = getelementptr i8, ptr %1, i64 92        ; 12 uses
  %.val = load i32, ptr %i.aq, align 4            ; 2 uses
  %3 = and i32 %.val, 512
  %.not109 = icmp eq i32 %3, 0                    ; 3 uses
  %4 = select i1 %.not109, i32 1, i32 2           ; 3 uses
  %i.ar = and i32 %.val, 4
  %.not110 = icmp eq i32 %i.ar, 0
  br i1 %.not110, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %1, i64 120
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not123 = icmp eq ptr %i.at, null
  br i1 %.not123, label %dma_sync_sgtable_for_device.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %.val127 = load ptr, ptr %i.at, align 8         ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 12
  %.val128 = load i32, ptr %i.aw, align 4         ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 752
  %i.ay = load volatile i64, ptr %i.ax, align 8
  %.in.in.i.i.i.i136 = and i64 %i.ay, 8
  %.in.i.not.i.i.i137 = icmp eq i64 %.in.in.i.i.i.i136, 0 ; 2 uses
  br i1 %.not109, label %.split97, label %.split

.split:                                           ; preds = %bb.n
  br i1 %.in.i.not.i.i.i137, label %bb.o, label %dma_sync_sgtable_for_device.exit

bb.o:                                             ; preds = %.split
  tail call void @__dma_sync_sg_for_device(ptr noundef %i.av, ptr noundef %.val127, i32 noundef %.val128, i32 noundef 2) #18
  br label %dma_sync_sgtable_for_device.exit

.split97:                                         ; preds = %bb.n
  br i1 %.in.i.not.i.i.i137, label %bb.p, label %dma_sync_sgtable_for_device.exit

bb.p:                                             ; preds = %.split97
  tail call void @__dma_sync_sg_for_device(ptr noundef %i.av, ptr noundef %.val127, i32 noundef %.val128, i32 noundef 1) #18
  br label %dma_sync_sgtable_for_device.exit

bb.q:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %1, i64 136
  %i.ba = load i32, ptr %i.az, align 8            ; 4 uses
  %.not111 = icmp eq i32 %i.ba, 0
  br i1 %.not111, label %dma_sync_sgtable_for_device.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %0, i64 576
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not112 = icmp eq ptr %i.bc, null
  br i1 %.not112, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %1, i64 96        ; 4 uses
  %i.be = zext i32 %i.ba to i64                   ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "640: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 640b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 640) #17, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 1261, i32 2307, i64 16) #17, !srcloc !29
  tail call void asm sideeffect "641: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 641b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 641) #17, !srcloc !30
  br label %.thread153

bb.u:                                             ; preds = %bb.s
  %i.bh = getelementptr i8, ptr %1, i64 104
  %i.bi = getelementptr i8, ptr %1, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = add nuw nsw i64 %i.be, 8
  %i.bn = tail call ptr @hcd_buffer_alloc(ptr noundef %i.bl, i64 noundef %i.bm, i32 noundef %2, ptr noundef %i.bh) #18 ; 4 uses
  %.not.i139 = icmp eq ptr %i.bn, null
  br i1 %.not.i139, label %.thread153, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.bd, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.be
  store i64 %i.bp, ptr %i.bq, align 1
  br i1 %.not109, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %i.bd, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr noundef align 1 %i.br, i64 range(i64 1, 4294967296) %i.be, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.bn, ptr %i.bd, align 8
  %i.bs = load i32, ptr %i.aq, align 4
  %i.bt = or i32 %i.bs, 524288
  store i32 %i.bt, ptr %i.aq, align 4
  br label %dma_sync_sgtable_for_device.exit

bb.y:                                             ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %0, i64 296
  %.val125 = load ptr, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %.val125, i64 32
  %.val125.val = load i32, ptr %i.bv, align 8
  %i.bw = and i32 %.val125.val, 2
  %.not162 = icmp eq i32 %i.bw, 0
  br i1 %.not162, label %dma_sync_sgtable_for_device.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr i8, ptr %1, i64 132       ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %.not113 = icmp eq i32 %i.by, 0
  br i1 %.not113, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 3
  %.val131 = load i8, ptr %i.ca, align 1
  %i.cb = and i8 %.val131, 3
  %.not163 = icmp eq i8 %i.cb, 1
  br i1 %.not163, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = getelementptr i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %1, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @dma_map_sg_attrs(ptr noundef %i.cd, ptr noundef %i.cf, i32 noundef %i.by, i32 noundef %4, i64 noundef 0) #18 ; 3 uses
  %.not119.not = icmp eq i32 %i.cg, 0             ; 2 uses
  br i1 %.not119.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i32, ptr %i.aq, align 4
  %i.ci = or i32 %i.ch, 262144
  store i32 %i.ci, ptr %i.aq, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.194 = phi i32 [ 0, %bb.ac ], [ -11, %bb.ab ]
  %i.cj = getelementptr i8, ptr %1, i64 128
  store i32 %i.cg, ptr %i.cj, align 8
  %i.ck = load i32, ptr %i.bx, align 4
  %.not120 = icmp eq i32 %i.cg, %i.ck
  br i1 %.not120, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load i32, ptr %i.aq, align 4
  %i.cm = or i32 %i.cl, 4194304
  store i32 %i.cm, ptr %i.aq, align 4
  br label %bb.an

bb.af:                                            ; preds = %bb.aa
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #17, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 1454, i32 2305, i64 16) #17, !srcloc !35
  tail call void asm sideeffect "646: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 646b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 646) #17, !srcloc !36
  br label %dma_sync_sgtable_for_device.exit

bb.ag:                                            ; preds = %bb.z
  %i.cn = getelementptr i8, ptr %1, i64 112
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %.not114 = icmp eq ptr %i.co, null
  br i1 %.not114, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %.val132 = load i64, ptr %i.co, align 8
  %i.cr = and i64 %.val132, -4
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr i8, ptr %i.co, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext i32 %i.cu to i64
  %i.cw = zext i32 %i.ba to i64
  %i.cx = tail call i64 @dma_map_page_attrs(ptr noundef %i.cq, ptr noundef %i.cs, i64 noundef %i.cv, i64 noundef %i.cw, i32 noundef %4, i64 noundef 0) #18 ; 2 uses
  %i.cy = getelementptr i8, ptr %1, i64 104
  store i64 %i.cx, ptr %i.cy, align 8
  %.not164 = icmp eq i64 %i.cx, -1
  br i1 %.not164, label %.thread153, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = load i32, ptr %i.aq, align 4
  %i.da = or i32 %i.cz, 131072
  store i32 %i.da, ptr %i.aq, align 4
  br label %dma_sync_sgtable_for_device.exit

bb.aj:                                            ; preds = %bb.ag
  %i.db = getelementptr i8, ptr %1, i64 96
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !31
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 32           ; 2 uses
  %i.dh = icmp ult ptr %i.dc, %i.dg
  %i.di = getelementptr i8, ptr %i.dg, i64 16384
  %i.dj = icmp uge ptr %i.dc, %i.di
  %.not167 = or i1 %i.dh, %i.dj
  br i1 %.not167, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.2, i32 1485, i32 2323, i64 16) #17, !srcloc !37
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dk) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !38
  br label %.thread153

bb.al:                                            ; preds = %bb.aj
  %i.dl = getelementptr i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = zext i32 %i.ba to i64
  %i.do = tail call fastcc i64 @dma_map_single_attrs(ptr noundef %i.dm, ptr noundef %i.dc, i64 noundef %i.dn, i32 noundef %4) #19 ; 2 uses
  %i.dp = getelementptr i8, ptr %1, i64 104
  store i64 %i.do, ptr %i.dp, align 8
  %.not168 = icmp eq i64 %i.do, -1
  br i1 %.not168, label %.thread153, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = load i32, ptr %i.aq, align 4
  %i.dr = or i32 %i.dq, 65536
  store i32 %i.dr, ptr %i.aq, align 4
  br label %dma_sync_sgtable_for_device.exit

bb.an:                                            ; preds = %bb.ad, %bb.ae
  br i1 %.not119.not, label %.thread153, label %dma_sync_sgtable_for_device.exit

.thread153:                                       ; preds = %bb.u, %bb.t, %bb.ak, %bb.al, %bb.ah, %bb.an
  %.4156 = phi i32 [ %.194, %bb.an ], [ -11, %bb.ak ], [ -11, %bb.al ], [ -11, %bb.ah ], [ -12, %bb.u ], [ -14, %bb.t ] ; 2 uses
  %i.ds = load i32, ptr %i.aq, align 4
  %i.dt = and i32 %i.ds, 3145728
  %.not122 = icmp eq i32 %i.dt, 0
  br i1 %.not122, label %dma_sync_sgtable_for_device.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread153
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #19
  br label %dma_sync_sgtable_for_device.exit

dma_sync_sgtable_for_device.exit:                 ; preds = %bb.ai, %bb.am, %bb.y, %bb.x, %bb.f, %bb.e, %bb.af, %bb.p, %.split97, %bb.o, %.split, %bb.an, %.thread153, %bb.ao, %bb.q, %bb.m, %bb.k, %bb.b, %bb.j
  %.1 = phi i32 [ -14, %bb.e ], [ 0, %bb.b ], [ 0, %bb.m ], [ -11, %bb.k ], [ -22, %bb.af ], [ -11, %bb.j ], [ 0, %bb.q ], [ %.4156, %bb.ao ], [ %.4156, %.thread153 ], [ 0, %bb.an ], [ 0, %bb.o ], [ 0, %.split ], [ 0, %.split97 ], [ 0, %bb.p ], [ -12, %bb.f ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.am ], [ 0, %bb.ai ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #6 align 16 {
bb.a:
  %i.a = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #18
  br i1 %i.a, label %dev_name.exit, label %.critedge, !prof !12

dev_name.exit:                                    ; preds = %bb.a
  %i.b = tail call ptr @dev_driver_string(ptr noundef %0) #18 ; 0 uses
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.19, ptr nonnull @.str.20, i32 524, i32 2323, i64 16) #17, !srcloc !39
  %i.e = tail call ptr @dev_driver_string(ptr noundef %0) #18
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.f, null
  br i1 %.not.i21, label %bb.b, label %dev_name.exit24

bb.b:                                             ; preds = %dev_name.exit
  %.val.i23 = load ptr, ptr %0, align 8
  br label %dev_name.exit24

dev_name.exit24:                                  ; preds = %dev_name.exit, %bb.b
  %.0.i22 = phi ptr [ %.val.i23, %bb.b ], [ %i.f, %dev_name.exit ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %.0.i22) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !40
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.g = load i64, ptr @vmemmap_base, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = add i64 %i.i, 2147483648
  %i.k = icmp ugt ptr %1, inttoptr (i64 -2147483649 to ptr)
  %i.l = load i64, ptr @phys_base, align 8
  %i.m = load i64, ptr @page_offset_base, align 8
  %i.n = sub i64 -2147483648, %i.m
  %i.o = select i1 %i.k, i64 %i.l, i64 %i.n
  %i.p = add i64 %i.j, %i.o
  %i.q = lshr i64 %i.p, 12
  %i.r = getelementptr [64 x i8], ptr %i.h, i64 %i.q
  %i.s = and i64 %i.i, 4095
  %i.t = tail call i64 @dma_map_page_attrs(ptr noundef %0, ptr noundef %i.r, i64 noundef %i.s, i64 noundef %2, i32 noundef %3, i64 noundef 0) #18
  br label %bb.c

bb.c:                                             ; preds = %dev_name.exit24, %.critedge
  %.0 = phi i64 [ %i.t, %.critedge ], [ -1, %dev_name.exit24 ]
end_hunk_0

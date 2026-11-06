Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/npcm7xx_emc?download=true
inline.NumInlined: 122
inline.NumDeleted: 40
begin_hunk_0_@emc_set_mista:bb.a
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_npcm7xx_emc_set_mista.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) %1) #9
  br label %trace_npcm7xx_emc_set_mista.exit

trace_npcm7xx_emc_set_mista.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9508 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, %1                          ; 4 uses
  store i32 %i.g, ptr %i.e, align 4
  %.not = icmp samesign ult i32 %1, 65536
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_npcm7xx_emc_set_mista.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.g, 25427968
  %i.k = and i32 %i.j, %i.i
  %.not.i7 = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.g, -65537
  %masksel.i = select i1 %.not.i7, i32 0, i32 65536
  %storemerge.i = or disjoint i32 %masksel.i, %i.l ; 2 uses
  store i32 %storemerge.i, ptr %i.e, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %trace_npcm7xx_emc_set_mista.exit
  %i.m = phi i32 [ %storemerge.i, %bb.e ], [ %i.g, %trace_npcm7xx_emc_set_mista.exit ] ; 2 uses
  %i.n = and i32 %1, 65535
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.m, 3088
  %i.r = and i32 %i.q, %i.p
  %.not.i8 = icmp ne i32 %i.r, 0
  %i.s = and i32 %i.m, -2
  %masksel.i9 = zext i1 %.not.i8 to i32
  %storemerge.i10 = or disjoint i32 %i.s, %masksel.i9
  store i32 %storemerge.i10, ptr %i.e, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_update_rx_irq(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9508
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.b, 1
  %i.f = and i32 %i.e, %i.d                       ; 2 uses
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_npcm7xx_emc_update_rx_irq.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_NPCM7XX_EMC_UPDATE_RX_IRQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.h, 0
  br i1 %.not1.i, label %trace_npcm7xx_emc_update_rx_irq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %trace_npcm7xx_emc_update_rx_irq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i32 noundef range(i32 0, 2) %i.f) #9
  br label %trace_npcm7xx_emc_update_rx_irq.exit

trace_npcm7xx_emc_update_rx_irq.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @qemu_set_irq(ptr noundef %i.l, i32 noundef %i.f) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_npcm7xx_emc_cpu_owned_desc(i32 noundef range(i32 0, -3) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_NPCM7XX_EMC_CPU_OWNED_DESC_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55, i32 noundef %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emc_set_next_tx_descriptor(ptr nofree noundef captures(none) initializes((9536, 9540)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, -3) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.NPCM7xxEMCTxDesc, align 16  ; 5 uses
  %i.a = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.b = load <4 x i32>, ptr %1, align 4
  store <4 x i32> %i.b, ptr %3, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !9
  fence seq_cst
  %i.c = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef range(i64 0, 4294967293) %i.a, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 0, 65536) 16, i1 noundef zeroext true) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %emc_write_tx_desc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 2048
  %.not14.i = icmp eq i32 %i.e, 0
  br i1 %.not14.i, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.emc_write_tx_desc, i64 noundef range(i64 0, 4294967293) %i.a) #9
  br label %bb.d

emc_write_tx_desc.exit:                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %emc_set_mista.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.g = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i.i, label %emc_set_mista.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i.i, label %emc_set_mista.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) 16777216) #9
  br label %emc_set_mista.exit

emc_set_mista.exit:                               ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9508 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, 16777216                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9504
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.l, 25427968
  %i.p = and i32 %i.o, %i.n
  %.not.i7.i = icmp eq i32 %i.p, 0
  %i.q = and i32 %i.l, -65537
  %masksel.i.i = select i1 %.not.i7.i, i32 0, i32 65536
  %storemerge.i.i = or disjoint i32 %masksel.i.i, %i.q
  store i32 %storemerge.i.i, ptr %i.j, align 4
  br label %bb.h

bb.h:                                             ; preds = %emc_write_tx_desc.exit, %emc_set_mista.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9536
  store i32 %i.t, ptr %i.u, align 4
  ret void
}

declare i64 @qemu_send_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 4294967296) i64 @emc_receive(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.MACAddr, align 1            ; 11 uses
  %4 = alloca %struct.NPCM7xxEMCRxDesc, align 4   ; 15 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #9
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 281, ptr noundef nonnull @__func__.NPCM7XX_EMC) #9 ; 27 uses
  %i.d = trunc i64 %2 to i32                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_npcm7xx_emc_receiving_packet.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_NPCM7XX_EMC_RECEIVING_PACKET_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_npcm7xx_emc_receiving_packet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_npcm7xx_emc_receiving_packet.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.63, i32 noundef %i.d) #9
  br label %trace_npcm7xx_emc_receiving_packet.exit

trace_npcm7xx_emc_receiving_packet.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #9
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 281, ptr noundef nonnull @__func__.NPCM7XX_EMC) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9553
  %i.l = load i8, ptr %i.k, align 1, !range !12, !noundef !13 ; 2 uses
  %i.m = zext nneg i8 %i.l to i32
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %emc_can_receive.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %trace_npcm7xx_emc_receiving_packet.exit
  %i.o = load i16, ptr @_TRACE_NPCM7XX_EMC_CAN_RECEIVE_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.o, 0
  br i1 %.not1.i.i, label %emc_can_receive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not2.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i.i, label %emc_can_receive.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.72, i32 noundef range(i32 0, 2) %i.m) #9
  br label %emc_can_receive.exit

emc_can_receive.exit:                             ; preds = %trace_npcm7xx_emc_receiving_packet.exit, %bb.e, %bb.f, %bb.g
  %i.r = trunc nuw i8 %i.l to i1
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %emc_can_receive.exit
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 2048
  %.not139 = icmp eq i32 %i.t, 0
  br i1 %.not139, label %bb.bp, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.emc_receive) #9
  br label %bb.bp

bb.j:                                             ; preds = %emc_can_receive.exit
  %i.u = add i32 %i.d, -65532
  %or.cond = icmp ult i32 %i.u, -65518
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 2048
  %.not141 = icmp eq i32 %i.w, 0
  br i1 %.not141, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.emc_receive, i32 noundef %i.d) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = and i64 %2, 4294967295
  br label %bb.bp

bb.n:                                             ; preds = %bb.j
  %i.y = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i97 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i97, label %emc_set_mista.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.z = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i98 = icmp eq i16 %i.z, 0
  br i1 %.not1.i.i98, label %emc_set_mista.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not2.i.i99 = icmp eq i32 %i.ab, 0
  br i1 %.not2.i.i99, label %emc_set_mista.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) 512) #9
  br label %emc_set_mista.exit

emc_set_mista.exit:                               ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 9508 ; 8 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 9504 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 4 uses
  %i.ag = and i32 %i.ad, 3088
  %i.ah = and i32 %i.ag, %i.af
  %.not.i8.i = icmp ne i32 %i.ah, 0
  %i.ai = and i32 %i.ad, -514
  %masksel.i9.i = zext i1 %.not.i8.i to i32       ; 4 uses
  %i.aj = or disjoint i32 %i.ai, %masksel.i9.i
  %storemerge.i10.i = or disjoint i32 %i.aj, 512
  store i32 %storemerge.i10.i, ptr %i.ac, align 4
  %i.ak = and i64 %2, 4294967295                  ; 8 uses
  %i.al = load i8, ptr %1, align 1                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.an, %i.ap
  %i.ax = and i8 %i.aw, %i.ar
  %i.ay = and i8 %i.ax, %i.at
  %i.az = and i8 %i.ay, %i.av
  %i.ba = and i8 %i.az, %i.al
  %.not.i.i.i = icmp eq i8 %i.ba, -1
  %i.bb = and i8 %i.al, 1
  %.not2.i.i.i = icmp eq i8 %i.bb, 0
  %..i.i.i = select i1 %.not2.i.i.i, i32 -1430533120, i32 -1430533118
  %.0.i.i.i = select i1 %.not.i.i.i, i32 -1430533119, i32 %..i.i.i
  switch i32 %.0.i.i.i, label %default.unreachable [
    i32 -1430533119, label %bb.r
    i32 -1430533118, label %bb.s
    i32 -1430533120, label %bb.t
  ]

bb.r:                                             ; preds = %emc_set_mista.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 9332
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 12
  %or.cond16.not.i = icmp eq i32 %i.be, 0
  br i1 %or.cond16.not.i, label %bb.y, label %bb.ae

bb.s:                                             ; preds = %emc_set_mista.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 9332
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 10
  %or.cond.not.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.not.i, label %bb.y, label %bb.ae

bb.t:                                             ; preds = %emc_set_mista.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 9332
  %i.bj = load i32, ptr %i.bi, align 4            ; 3 uses
  %i.bk = and i32 %i.bj, 1
  %.not.i.i100 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i100, label %bb.u, label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 9340
  %i.bm = load i32, ptr %i.bl, align 4            ; 4 uses
  %5 = lshr i32 %i.bm, 24
  %6 = trunc nuw i32 %5 to i8
  store i8 %6, ptr %3, align 1
  %7 = lshr i32 %i.bm, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %8, ptr %9, align 1
  %10 = lshr i32 %i.bm, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %11, ptr %12, align 1
  %13 = trunc i32 %i.bm to i8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %13, ptr %14, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 9344
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = trunc nuw i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = lshr i32 %i.bo, 16
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = and i32 %i.bj, 16
  %.not25.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not25.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 9336
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 1
  %.not26.i.i = icmp eq i32 %i.by, 0
  br i1 %.not26.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %1, align 1
  %i.ca = load i32, ptr %3, align 1
  %i.cb = xor i32 %i.bz, %i.ca
  %i.cc = getelementptr i8, ptr %1, i64 4
  %i.cd = getelementptr i8, ptr %3, i64 4
  %i.ce = load i16, ptr %i.cc, align 1
  %i.cf = load i16, ptr %i.cd, align 1
  %i.cg = zext i16 %i.ce to i32
  %i.ch = zext i16 %i.cf to i32
  %i.ci = xor i32 %i.cg, %i.ch
  %i.cj = or i32 %i.cb, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cn = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ %i.cm, %bb.w ] ; 2 uses
  %i.co = and i32 %i.bj, 8
  %.not27.i.i = icmp eq i32 %i.co, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.not27.i.i, label %.split.i, label %.split13.i

.split13.i:                                       ; preds = %bb.x
  br i1 %i.cn, label %bb.y, label %bb.ae

.split.i:                                         ; preds = %bb.x
  br i1 %i.cn, label %bb.ae, label %bb.y

default.unreachable:                              ; preds = %emc_set_mista.exit
  unreachable

bb.y:                                             ; preds = %.split.i, %.split13.i, %bb.s, %bb.r
  %.18.i = phi ptr [ @.str.67, %.split.i ], [ @.str.64, %bb.r ], [ @.str.65, %bb.s ], [ @.str.66, %.split13.i ]
  %i.cp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i4.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i4.i, label %emc_receive_filter.exit.thread128, label %bb.z, !prof !7

emc_receive_filter.exit.thread128:                ; preds = %bb.y
  %i.cq = and i32 %i.af, %masksel.i9.i
  br label %emc_update_rx_irq.exit

bb.z:                                             ; preds = %bb.y
  %i.cr = load i16, ptr @_TRACE_NPCM7XX_EMC_PACKET_FILTERED_OUT_DSTATE, align 2
  %.not1.i.i101 = icmp eq i16 %i.cr, 0
  br i1 %.not1.i.i101, label %emc_receive_filter.exit.thread130, label %bb.aa

emc_receive_filter.exit.thread130:                ; preds = %bb.z
  %i.cs = and i32 %i.af, %masksel.i9.i
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ct = load i32, ptr @qemu_loglevel, align 4
  %i.cu = and i32 %i.ct, 32768
  %.not2.i.i102 = icmp eq i32 %i.cu, 0
  br i1 %.not2.i.i102, label %emc_receive_filter.exit.thread, label %emc_receive_filter.exit

emc_receive_filter.exit.thread:                   ; preds = %bb.aa
  %i.cv = and i32 %i.af, %masksel.i9.i
  br label %bb.ab

emc_receive_filter.exit:                          ; preds = %bb.aa
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.68, ptr noundef nonnull %.18.i) #9
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4
  %.pre146 = load i32, ptr %i.ac, align 4
  %.pre147 = load i32, ptr %i.ae, align 4
  %i.cw = icmp eq i32 %.pr.pre, 0
  %i.cx = and i32 %.pre146, 1
  %i.cy = and i32 %i.cx, %.pre147                 ; 2 uses
  br i1 %i.cw, label %emc_update_rx_irq.exit, label %bb.ab, !prof !16

bb.ab:                                            ; preds = %emc_receive_filter.exit.thread, %emc_receive_filter.exit.thread130, %emc_receive_filter.exit
  %i.cz = phi i32 [ %i.cs, %emc_receive_filter.exit.thread130 ], [ %i.cy, %emc_receive_filter.exit ], [ %i.cv, %emc_receive_filter.exit.thread ] ; 4 uses
  %i.da = load i16, ptr @_TRACE_NPCM7XX_EMC_UPDATE_RX_IRQ_DSTATE, align 2
  %.not1.i.i104 = icmp eq i16 %i.da, 0
  br i1 %.not1.i.i104, label %emc_update_rx_irq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not2.i.i105 = icmp eq i32 %i.dc, 0
  br i1 %.not2.i.i105, label %emc_update_rx_irq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i32 noundef range(i32 0, 2) %i.cz) #9
  br label %emc_update_rx_irq.exit

emc_update_rx_irq.exit:                           ; preds = %emc_receive_filter.exit.thread128, %emc_receive_filter.exit, %bb.ab, %bb.ac, %bb.ad
  %i.dd = phi i32 [ %i.cq, %emc_receive_filter.exit.thread128 ], [ %i.cy, %emc_receive_filter.exit ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ac ], [ %i.cz, %bb.ad ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.df = load ptr, ptr %i.de, align 8
  tail call void @qemu_set_irq(ptr noundef %i.df, i32 noundef %i.dd) #9
  br label %bb.bp

bb.ae:                                            ; preds = %.split13.i, %bb.s, %bb.r, %.split.i, %.split.thread.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 9500
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = and i32 %i.dh, 65535
  %i.dj = add nuw nsw i32 %i.d, 4                 ; 2 uses
  %i.dk = icmp samesign ugt i32 %i.dj, %i.di
  br i1 %i.dk, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.dl = load i32, ptr @trace_events_enabled_count, align 4 ; 3 uses
  %.not.i106 = icmp eq i32 %i.dl, 0
  br i1 %.not.i106, label %emc_set_mista.exit115, label %bb.ag, !prof !7

bb.ag:                                            ; preds = %bb.af
  %i.dm = load i16, ptr @_TRACE_NPCM7XX_EMC_PACKET_DROPPED_DSTATE, align 2
  %.not1.i107 = icmp eq i16 %i.dm, 0
  br i1 %.not1.i107, label %trace_npcm7xx_emc_packet_dropped.exit.thread134, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load i32, ptr @qemu_loglevel, align 4
  %i.do = and i32 %i.dn, 32768
  %.not2.i108 = icmp eq i32 %i.do, 0
  br i1 %.not2.i108, label %trace_npcm7xx_emc_packet_dropped.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.69, i32 noundef range(i32 14, 65532) %i.d) #9
  %.pr132.pre = load i32, ptr @trace_events_enabled_count, align 4
  br label %trace_npcm7xx_emc_packet_dropped.exit

trace_npcm7xx_emc_packet_dropped.exit:            ; preds = %bb.ah, %bb.ai
  %.pr132 = phi i32 [ %i.dl, %bb.ah ], [ %.pr132.pre, %bb.ai ] ; 3 uses
  %.not.i.i109 = icmp eq i32 %.pr132, 0
  %i.dp = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i110 = icmp eq i16 %i.dp, 0
  %or.cond138 = select i1 %.not.i.i109, i1 true, i1 %.not1.i.i110, !prof !11
  br i1 %or.cond138, label %emc_set_mista.exit115, label %bb.aj, !prof !11

trace_npcm7xx_emc_packet_dropped.exit.thread134:  ; preds = %bb.ag
  %.old = load i16, ptr @_TRACE_NPCM7XX_EMC_SET_MISTA_DSTATE, align 2
  %.not1.i.i110.old = icmp eq i16 %.old, 0
  br i1 %.not1.i.i110.old, label %emc_set_mista.exit115, label %bb.aj

bb.aj:                                            ; preds = %trace_npcm7xx_emc_packet_dropped.exit, %trace_npcm7xx_emc_packet_dropped.exit.thread134
  %i.dq = phi i32 [ %.pr132, %trace_npcm7xx_emc_packet_dropped.exit ], [ %i.dl, %trace_npcm7xx_emc_packet_dropped.exit.thread134 ]
  %i.dr = load i32, ptr @qemu_loglevel, align 4
  %i.ds = and i32 %i.dr, 32768
  %.not2.i.i111 = icmp eq i32 %i.ds, 0
  br i1 %.not2.i.i111, label %emc_set_mista.exit115, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef range(i32 0, 16777217) 256) #9
  %.pre144 = load i32, ptr @trace_events_enabled_count, align 4
  br label %emc_set_mista.exit115

emc_set_mista.exit115:                            ; preds = %bb.af, %trace_npcm7xx_emc_packet_dropped.exit, %trace_npcm7xx_emc_packet_dropped.exit.thread134, %bb.aj, %bb.ak
  %i.dt = phi i32 [ 0, %bb.af ], [ %.pr132, %trace_npcm7xx_emc_packet_dropped.exit ], [ 1, %trace_npcm7xx_emc_packet_dropped.exit.thread134 ], [ %i.dq, %bb.aj ], [ %.pre144, %bb.ak ]
  %i.du = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.dv = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.dw = and i32 %i.du, 3088
  %i.dx = and i32 %i.dw, %i.dv
  %.not.i8.i112 = icmp ne i32 %i.dx, 0
  %i.dy = and i32 %i.du, -258
  %masksel.i9.i113 = zext i1 %.not.i8.i112 to i32 ; 2 uses
  %i.dz = or disjoint i32 %i.dy, %masksel.i9.i113
  %storemerge.i10.i114 = or disjoint i32 %i.dz, 256
  store i32 %storemerge.i10.i114, ptr %i.ac, align 4
  %i.ea = and i32 %i.dv, %masksel.i9.i113         ; 2 uses
  %.not.i.i116 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i116, label %emc_update_rx_irq.exit119, label %bb.al, !prof !7

bb.al:                                            ; preds = %emc_set_mista.exit115
  %i.eb = load i16, ptr @_TRACE_NPCM7XX_EMC_UPDATE_RX_IRQ_DSTATE, align 2
  %.not1.i.i117 = icmp eq i16 %i.eb, 0
  br i1 %.not1.i.i117, label %emc_update_rx_irq.exit119, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = load i32, ptr @qemu_loglevel, align 4
  %i.ed = and i32 %i.ec, 32768
  %.not2.i.i118 = icmp eq i32 %i.ed, 0
  br i1 %.not2.i.i118, label %emc_update_rx_irq.exit119, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.52, i32 noundef range(i32 0, 2) %i.ea) #9
  br label %emc_update_rx_irq.exit119

emc_update_rx_irq.exit119:                        ; preds = %emc_set_mista.exit115, %bb.al, %bb.am, %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void @qemu_set_irq(ptr noundef %i.ef, i32 noundef %i.ea) #9
  br label %bb.bp

bb.ao:                                            ; preds = %bb.ae
  %i.eg = icmp samesign ugt i32 %i.d, 1514        ; 2 uses
  br i1 %i.eg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 9476
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 2
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @trace_npcm7xx_emc_packet_dropped(i32 noundef %i.d)
  tail call fastcc void @emc_set_mista(ptr noundef nonnull %i.c, i32 noundef 8)
  tail call fastcc void @emc_update_rx_irq(ptr noundef nonnull %i.c)
  br label %bb.bp

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !8
  store i32 0, ptr %i.a, align 4, !annotation !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 9544 ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4
end_hunk_0

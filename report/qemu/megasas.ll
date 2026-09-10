Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/megasas?download=true
inline.NumInlined: 456
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@megasas_complete_frame:bb.a
  %i.aw = icmp eq i32 %i.av, %i.au
  %spec.store.select.i = select i1 %i.aw, i32 0, i32 %i.av ; 5 uses
  store i32 %spec.store.select.i, ptr %i.ar, align 4
  %i.ax = load i32, ptr %i.ao, align 16
  %i.ay = load i32, ptr %i.e, align 16
  %i.az = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i50 = icmp eq i32 %i.az, 0
  br i1 %.not.i50, label %trace_megasas_qf_update.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ba = load i16, ptr @_TRACE_MEGASAS_QF_UPDATE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ba, 0
  br i1 %.not3.i, label %trace_megasas_qf_update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr @qemu_loglevel, align 4
  %i.bc = and i32 %i.bb, 32768
  %.not4.i51 = icmp eq i32 %i.bc, 0
  br i1 %.not4.i51, label %trace_megasas_qf_update.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.77, i32 noundef %spec.store.select.i, i32 noundef %i.ax, i32 noundef %i.ay) #16
  %.pre = load i32, ptr %i.ar, align 4
  br label %trace_megasas_qf_update.exit

trace_megasas_qf_update.exit:                     ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.bd = phi i32 [ %spec.store.select.i, %bb.i ], [ %spec.store.select.i, %bb.j ], [ %spec.store.select.i, %bb.k ], [ %.pre, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.bf = load i64, ptr %i.be, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bd, ptr %i.a, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !11
  fence seq_cst
  %i.bg = call i32 @address_space_rw(ptr noundef nonnull %i.ap, i64 noundef %i.bf, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 256) 4, i1 noundef zeroext true) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = call i32 @msix_enabled(ptr noundef nonnull %i.d) #16
  %.not47 = icmp eq i32 %i.bh, 0
  br i1 %.not47, label %bb.q, label %bb.m

bb.m:                                             ; preds = %trace_megasas_qf_update.exit
  %i.bi = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52 = icmp eq i32 %i.bi, 0
  br i1 %.not.i52, label %trace_megasas_msix_raise.exit, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.bj = load i16, ptr @_TRACE_MEGASAS_MSIX_RAISE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.bj, 0
  br i1 %.not1.i, label %trace_megasas_msix_raise.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i32, ptr @qemu_loglevel, align 4
  %i.bl = and i32 %i.bk, 32768
  %.not2.i = icmp eq i32 %i.bl, 0
  br i1 %.not2.i, label %trace_megasas_msix_raise.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.78, i32 noundef 0) #16
  br label %trace_megasas_msix_raise.exit

trace_megasas_msix_raise.exit:                    ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @msix_notify(ptr noundef nonnull %i.d, i32 noundef 0) #16
  br label %trace_megasas_qf_complete_noirq.exit

bb.q:                                             ; preds = %trace_megasas_qf_update.exit
  %i.bm = call zeroext i1 @msi_enabled(ptr noundef nonnull %i.d) #16
  br i1 %i.bm, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i53 = icmp eq i32 %i.bn, 0
  br i1 %.not.i53, label %trace_megasas_msi_raise.exit, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.bo = load i16, ptr @_TRACE_MEGASAS_MSI_RAISE_DSTATE, align 2
  %.not1.i54 = icmp eq i16 %i.bo, 0
  br i1 %.not1.i54, label %trace_megasas_msi_raise.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr @qemu_loglevel, align 4
  %i.bq = and i32 %i.bp, 32768
  %.not2.i55 = icmp eq i32 %i.bq, 0
  br i1 %.not2.i55, label %trace_megasas_msi_raise.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.79, i32 noundef 0) #16
  br label %trace_megasas_msi_raise.exit

trace_megasas_msi_raise.exit:                     ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @msi_notify(ptr noundef nonnull %i.d, i32 noundef 0) #16
  br label %trace_megasas_qf_complete_noirq.exit

bb.v:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %bb.w, label %trace_megasas_qf_complete_noirq.exit

bb.w:                                             ; preds = %bb.v
  %i.bv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i56 = icmp eq i32 %i.bv, 0
  br i1 %.not.i56, label %trace_megasas_irq_raise.exit, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.bw = load i16, ptr @_TRACE_MEGASAS_IRQ_RAISE_DSTATE, align 2
  %.not1.i57 = icmp eq i16 %i.bw, 0
  br i1 %.not1.i57, label %trace_megasas_irq_raise.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 32768
  %.not2.i58 = icmp eq i32 %i.by, 0
  br i1 %.not2.i58, label %trace_megasas_irq_raise.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.80) #16
  br label %trace_megasas_irq_raise.exit

trace_megasas_irq_raise.exit:                     ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  call void @pci_set_irq(ptr noundef nonnull %i.d, i32 noundef 1) #16
  br label %trace_megasas_qf_complete_noirq.exit

bb.aa:                                            ; preds = %trace_megasas_qf_complete.exit
  %i.bz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i59 = icmp eq i32 %i.bz, 0
  br i1 %.not.i59, label %trace_megasas_qf_complete_noirq.exit, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i16, ptr @_TRACE_MEGASAS_QF_COMPLETE_NOIRQ_DSTATE, align 2
  %.not1.i60 = icmp eq i16 %i.ca, 0
  br i1 %.not1.i60, label %trace_megasas_qf_complete_noirq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i32, ptr @qemu_loglevel, align 4
  %i.cc = and i32 %i.cb, 32768
  %.not2.i61 = icmp eq i32 %i.cc, 0
  br i1 %.not2.i61, label %trace_megasas_qf_complete_noirq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.81, i64 noundef %1) #16
  br label %trace_megasas_qf_complete_noirq.exit

trace_megasas_qf_complete_noirq.exit:             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %trace_megasas_msix_raise.exit, %bb.v, %trace_megasas_irq_raise.exit, %trace_megasas_msi_raise.exit
  ret void
}

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i64 @find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @address_space_map(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #1

declare void @msix_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @msi_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @megasas_dcmd_dummy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_megasas_dcmd_dummy.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_MEGASAS_DCMD_DUMMY_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %trace_megasas_dcmd_dummy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %trace_megasas_dcmd_dummy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.160, i32 noundef %i.a, i64 noundef %i.c) #16
  br label %trace_megasas_dcmd_dummy.exit

trace_megasas_dcmd_dummy.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 4) i32 @megasas_ctrl_get_info(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 7 uses
  %3 = alloca %struct.mfi_ctrl_info, align 8      ; 50 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #16 ; 3 uses
  %i.d = tail call ptr @object_get_class(ptr noundef %i.c) #16
  %i.e = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE_GET_CLASS) #16 ; 2 uses
  %i.f = tail call ptr @object_get_class(ptr noundef %0) #16
  %i.g = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 140, ptr noundef nonnull @__func__.MEGASAS_GET_CLASS) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2040) %4, i8 noundef 0, i64 noundef 2040, i1 noundef false) #16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 2048
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8
  %i.l = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %trace_megasas_dcmd_invalid_xfer_len.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr @_TRACE_MEGASAS_DCMD_INVALID_XFER_LEN_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.m, 0
  br i1 %.not3.i, label %trace_megasas_dcmd_invalid_xfer_len.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 32768
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %trace_megasas_dcmd_invalid_xfer_len.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.141, i32 noundef %i.k, i64 noundef %i.i, i64 noundef 2048) #16
  br label %trace_megasas_dcmd_invalid_xfer_len.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.r = load <2 x i16>, ptr %i.p, align 8
  %i.s = load <2 x i16>, ptr %i.q, align 8
  %i.t = shufflevector <2 x i16> %i.r, <2 x i16> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i16> %i.t, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 111
  store i8 8, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 266216
  %.04850 = load ptr, ptr %i.x, align 8           ; 2 uses
  %.not51 = icmp eq ptr %.04850, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.04853 = phi ptr [ %.04850, %.lr.ph ], [ %.048, %bb.i ] ; 2 uses
  %.04752 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04853, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.aa, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #16 ; 2 uses
  %i.ac = icmp slt i32 %.04752, 8
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = shl i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 596
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 255
  %.masked = and i32 %i.af, 65280
  %i.aj = or disjoint i32 %.masked, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 24
  %i.am = or disjoint i64 %i.al, 1306325366914154496
  %i.an = sext i32 %.04752 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.an
  store i64 %i.am, ptr %i.ao, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = add i32 %.04752, 1                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04853, i64 32
  %.048 = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %.048, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ar = trunc i32 %i.ap to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.047.lcssa = phi i16 [ 0, %bb.f ], [ %i.ar, %._crit_edge.loopexit ] ; 3 uses
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1344
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.au = load ptr, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 1 dereferenceable(24) %i.au, i64 noundef 24, i1 noundef false) #16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1424
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.ax = load ptr, ptr %i.aw, align 16
  %i.ay = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.av, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.134, ptr noundef %i.ax) #16 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %i.ba = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.az, i64 noundef 96, i32 noundef 1, i64 noundef 96, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #16 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bb, ptr noundef nonnull align 1 dereferenceable(3) @.str.137, i64 noundef 3, i1 noundef false) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.bc, i64 noundef 10, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.135, ptr noundef %i.be) #16 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bg, ptr noundef nonnull align 1 dereferenceable(11) @.str.138, i64 noundef 11, i1 noundef false) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 3906092247685935665, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 3 uses
  store i32 1, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 2348
  %i.bk = load i8, ptr %i.bj, align 4, !range !12, !noundef !13
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 2352
  %i.bn = call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.bm) #16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.b, ptr noundef nonnull align 1 dereferenceable(31) %i.bo, i64 noundef 31, i1 noundef false) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i32 1397705026, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.bs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19
  %i.bt = call ptr @__memcpy_chk(ptr noundef nonnull %i.br, ptr noundef nonnull %i.b, i64 noundef %i.bs, i64 noundef 1784) #16, !alias.scope !28 ; 0 uses
  %i.bu = load i32, ptr %i.bi, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !10
  call void @qemu_get_timedate(ptr noundef nonnull %2, i64 noundef 0) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = shl i32 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = shl i32 %i.ca, 16
  %i.cc = and i32 %i.cb, 16711680
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1900
  %i.ch = and i32 %i.cg, 65535
  %i.ci = or disjoint i32 %i.cd, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 1460
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 1340
  store <4 x i8> <i8 32, i8 8, i8 -128, i8 64>, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 3596
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 1464
  store i16 %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = trunc i32 %i.cq to i16                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 1466
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 1468
  store i32 65535, ptr %i.ct, align 4
  %i.cu = getelementptr i8, ptr %0, i64 3600
  %.val = load i32, ptr %i.cu, align 16
  %i.cv = trunc i32 %.val to i1
  br i1 %i.cv, label %._crit_edge54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 1472
  store i16 %.047.lcssa, ptr %i.cw, align 8
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %bb.k, %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 1478
  store i16 %.047.lcssa, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 1480
  store i16 %.047.lcssa, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 1456
  store i32 52, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 1488
  store i16 512, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 1486
  store i16 32, ptr %i.db, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 1490
  store i16 16, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 1500
  store i32 1, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 1504
  store i32 12289, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 1508
  store i32 31, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 1498
  store i16 %i.cr, ptr %i.dg, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 1512
end_hunk_0

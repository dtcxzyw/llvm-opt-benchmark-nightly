Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/megasas?download=true
inline.NumInlined: 456
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@megasas_mmio_write:bb.a
trace_megasas_init_queue.exit.i.i:                ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %i.jg = load i32, ptr %i.cq, align 4            ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not9.i.i.i, label %megasas_reset_frames.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %trace_megasas_init_queue.exit.i.i, %bb.da
  %i.jh = phi i32 [ %i.kd, %bb.da ], [ %i.jg, %trace_megasas_init_queue.exit.i.i ]
  %.08.i.i.i = phi i32 [ %i.ke, %bb.da ], [ 0, %trace_megasas_init_queue.exit.i.i ] ; 2 uses
  %i.ji = sext i32 %.08.i.i.i to i64
  %i.jj = getelementptr inbounds [128 x i8], ptr %i.dl, i64 %i.ji ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8
  %.not.i74.i53.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i74.i53.i, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i
  %i.jm = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jo = load i64, ptr %i.jn, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i, label %megasas_unmap_frame.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 576
  call void @address_space_unmap(ptr noundef nonnull %i.jr, ptr noundef %i.jq, i64 noundef %i.jo, i1 noundef zeroext false, i64 noundef 0) #16
  br label %megasas_unmap_frame.exit.i.i.i

megasas_unmap_frame.exit.i.i.i:                   ; preds = %bb.cz, %bb.cy
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  store ptr null, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i8 0, i64 16, i1 false)
  call void @qemu_sglist_destroy(ptr noundef nonnull %i.jt) #16
  %i.ju = load i32, ptr %i.jj, align 8
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = and i64 %i.jv, 63
  %i.jx = shl nuw i64 1, %i.jw
  %i.jy = lshr i64 %i.jv, 6
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.jy ; 2 uses
  %i.ka = xor i64 %i.jx, -1
  %i.kb = load i64, ptr %i.jz, align 8
  %i.kc = and i64 %i.kb, %i.ka
  store i64 %i.kc, ptr %i.jz, align 8
  %.pre.i.i.i = load i32, ptr %i.cq, align 4
  br label %bb.da

bb.da:                                            ; preds = %megasas_unmap_frame.exit.i.i.i, %.lr.ph.i.i.i
  %i.kd = phi i32 [ %i.jh, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %megasas_unmap_frame.exit.i.i.i ] ; 2 uses
  %i.ke = add nuw i32 %.08.i.i.i, 1               ; 2 uses
  %i.kf = icmp ult i32 %i.ke, %i.kd
  br i1 %i.kf, label %.lr.ph.i.i.i, label %megasas_reset_frames.exit.i.i, !llvm.loop !0

megasas_reset_frames.exit.i.i:                    ; preds = %bb.da, %trace_megasas_init_queue.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cp, i8 noundef 0, i64 noundef 256, i1 noundef false) #16
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 3588
  store i32 -1073741824, ptr %i.kg, align 4
  br label %trace_megasas_initq_mapped.exit.i.i

trace_megasas_initq_mapped.exit.i.i:              ; preds = %megasas_reset_frames.exit.i.i, %trace_megasas_initq_map_failed.exit.i.i
  %.0.i54.i = phi i8 [ 0, %megasas_reset_frames.exit.i.i ], [ 32, %trace_megasas_initq_map_failed.exit.i.i ] ; 2 uses
  br i1 %i.hi, label %.thread117.i, label %bb.db

bb.db:                                            ; preds = %trace_megasas_initq_mapped.exit.i.i, %trace_megasas_initq_mapped.exit.thread83.i.i
  %.090.i.i = phi i8 [ 3, %trace_megasas_initq_mapped.exit.thread83.i.i ], [ %.0.i54.i, %trace_megasas_initq_mapped.exit.i.i ]
  %.07788.i.i = phi i64 [ 32, %trace_megasas_initq_mapped.exit.thread83.i.i ], [ %i.hh, %trace_megasas_initq_mapped.exit.i.i ]
  call void @address_space_unmap(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hg, i64 noundef %.07788.i.i, i1 noundef zeroext false, i64 noundef 0) #16
  br label %.thread117.i

bb.dc:                                            ; preds = %megasas_enqueue_frame.exit.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.ki = load i32, ptr %i.kh, align 8            ; 2 uses
  store i32 %i.ki, ptr %i.fj, align 8
  %i.kj = load i32, ptr %i.dm, align 8
  %i.kk = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i56.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i56.i, label %trace_megasas_handle_dcmd.exit.i.i, label %bb.dd, !prof !8

bb.dd:                                            ; preds = %bb.dc
  %i.kl = load i16, ptr @_TRACE_MEGASAS_HANDLE_DCMD_DSTATE, align 2
  %.not2.i.i57.i = icmp eq i16 %i.kl, 0
  br i1 %.not2.i.i57.i, label %trace_megasas_handle_dcmd.exit.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.km = load i32, ptr @qemu_loglevel, align 4
  %i.kn = and i32 %i.km, 32768
  %.not3.i.i58.i = icmp eq i32 %i.kn, 0
  br i1 %.not3.i.i58.i, label %trace_megasas_handle_dcmd.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.156, i32 noundef %i.kj, i32 noundef %i.ki) #16
  %.pre.i59.i = load ptr, ptr %i.ec, align 8
  br label %trace_megasas_handle_dcmd.exit.i.i

trace_megasas_handle_dcmd.exit.i.i:               ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %i.ko = phi ptr [ %i.go, %bb.dc ], [ %i.go, %bb.dd ], [ %i.go, %bb.de ], [ %.pre.i59.i, %bb.df ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load i16, ptr %i.kp, align 8            ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  store i16 %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 7
  %i.kt = load i8, ptr %i.ks, align 1             ; 2 uses
  %i.ku = zext i8 %i.kt to i32
  switch i8 %i.kt, label %bb.dk [
    i8 0, label %bb.dg
    i8 1, label %bb.do
  ]

bb.dg:                                            ; preds = %trace_megasas_handle_dcmd.exit.i.i
  %i.kv = load i32, ptr %i.dm, align 8
  %i.kw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i61.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i61.i, label %megasas_map_dcmd.exit.i.i, label %bb.dh, !prof !8

bb.dh:                                            ; preds = %bb.dg
  %i.kx = load i16, ptr @_TRACE_MEGASAS_DCMD_ZERO_SGE_DSTATE, align 2
  %.not1.i.i.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not1.i.i.i.i, label %megasas_map_dcmd.exit.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ky = load i32, ptr @qemu_loglevel, align 4
  %i.kz = and i32 %i.ky, 32768
  %.not2.i.i.i.i = icmp eq i32 %i.kz, 0
  br i1 %.not2.i.i.i.i, label %megasas_map_dcmd.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.157, i32 noundef %i.kv) #16
  br label %megasas_map_dcmd.exit.i.i

bb.dk:                                            ; preds = %trace_megasas_handle_dcmd.exit.i.i
  %i.la = load i32, ptr %i.dm, align 8
  %i.lb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i24.i.i.i = icmp eq i32 %i.lb, 0
  br i1 %.not.i24.i.i.i, label %megasas_map_dcmd.exit.thread.i.i, label %bb.dl, !prof !8

bb.dl:                                            ; preds = %bb.dk
  %i.lc = load i16, ptr @_TRACE_MEGASAS_DCMD_INVALID_SGE_DSTATE, align 2
  %.not2.i25.i.i.i = icmp eq i16 %i.lc, 0
  br i1 %.not2.i25.i.i.i, label %megasas_map_dcmd.exit.thread.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ld = load i32, ptr @qemu_loglevel, align 4
  %i.le = and i32 %i.ld, 32768
  %.not3.i.i.i.i = icmp eq i32 %i.le, 0
  br i1 %.not3.i.i.i.i, label %megasas_map_dcmd.exit.thread.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.158, i32 noundef %i.la, i32 noundef range(i32 2, 256) %i.ku) #16
  br label %megasas_map_dcmd.exit.thread.i.i

bb.do:                                            ; preds = %trace_megasas_handle_dcmd.exit.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 40 ; 4 uses
  %i.lg = and i16 %i.kq, 32
  %.not.i26.i.i.i = icmp eq i16 %i.lg, 0
  br i1 %.not.i26.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lh = load i64, ptr %i.lf, align 8
  br label %megasas_sgl_get_addr.exit.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.li = and i16 %i.kq, 2
  %.not1.i27.i.i.i = icmp eq i16 %i.li, 0
  br i1 %.not1.i27.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lj = load i64, ptr %i.lf, align 8
  br label %megasas_sgl_get_addr.exit.i.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.lk = load i32, ptr %i.lf, align 8
  %i.ll = zext i32 %i.lk to i64
  br label %megasas_sgl_get_addr.exit.i.i.i

megasas_sgl_get_addr.exit.i.i.i:                  ; preds = %bb.ds, %bb.dr, %bb.dp
  %.0.i.i.i.i = phi i64 [ %i.lh, %bb.dp ], [ %i.lj, %bb.dr ], [ %i.ll, %bb.ds ]
  %i.lm = and i16 %i.kq, 34
  %i.ln = icmp eq i16 %i.lm, 0
  %.sink.i.i.i.i = select i1 %i.ln, i64 4, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.sink.i.i.i.i
  %.0.i28.i.i.i = load i32, ptr %i.lo, align 1
  %i.lp = zext i32 %.0.i28.i.i.i to i64           ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dm, i64 56 ; 2 uses
  %i.lr = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #16 ; 2 uses
  %i.ls = call ptr @object_dynamic_cast_assert(ptr noundef %i.lr, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 576
  call void @qemu_sglist_init(ptr noundef nonnull %i.lq, ptr noundef %i.ls, i32 noundef 1, ptr noundef nonnull %i.lt) #16
  call void @qemu_sglist_add(ptr noundef nonnull %i.lq, i64 noundef %.0.i.i.i.i, i64 noundef %i.lp) #16
  br label %megasas_map_dcmd.exit.i.i

megasas_map_dcmd.exit.thread.i.i:                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  store i64 0, ptr %i.lu, align 8
  br label %megasas_handle_dcmd.exit.i

megasas_map_dcmd.exit.i.i:                        ; preds = %megasas_sgl_get_addr.exit.i.i.i, %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.sink.i.i.i = phi i64 [ %i.lp, %megasas_sgl_get_addr.exit.i.i.i ], [ 0, %bb.dj ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.di ] ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dm, i64 104 ; 3 uses
  store i64 %.sink.i.i.i, ptr %i.lv, align 8
  %i.lw = load i32, ptr %i.fj, align 8            ; 3 uses
  switch i32 %i.lw, label %4 [
    i32 16834816, label %.critedge.i.i
    i32 16842752, label %.critedge.fold.split.i.i.a
    i32 16908544, label %.critedge.fold.split65.i.i
    i32 16908800, label %.critedge.fold.split66.i.i
    i32 16974080, label %.critedge.fold.split67.i.i
    i32 16974336, label %.critedge.fold.split68.i.i
    i32 16974592, label %.critedge.fold.split69.i.i
    i32 16974848, label %.critedge.fold.split70.i.i
    i32 16975104, label %.critedge.fold.split71.i.i
    i32 17039616, label %.critedge.fold.split72.i.i
    i32 17040128, label %.critedge.fold.split73.i.i
    i32 17040640, label %.critedge.fold.split74.i.i
    i32 17104896, label %.critedge.fold.split75.i.i
    i32 17170432, label %.critedge.fold.split76.i.i
    i32 17301761, label %.critedge.fold.split77.i.i
    i32 17301762, label %.critedge.fold.split78.i.i
    i32 17563904, label %.critedge.fold.split79.i.i
    i32 17629184, label %.critedge.fold.split80.i.i
    i32 17695233, label %.critedge.fold.split81.i.i
    i32 17695234, label %.critedge.fold.split82.i.i
    i32 17829888, label %.critedge.fold.split83.i.i
  ]

4:                                                ; preds = %megasas_map_dcmd.exit.i.i
  switch i32 %i.lw, label %bb.dt [
    i32 33619968, label %.critedge.i.i
    i32 33620224, label %.critedge.fold.split84.i.i
    i32 33685504, label %.critedge.fold.split85.i.i
    i32 33751296, label %.critedge.fold.split86.i.i
    i32 33816832, label %.critedge.fold.split87.i.i
    i32 34013440, label %.critedge.fold.split88.i.i
    i32 34013696, label %.critedge.fold.split89.i.i
    i32 50397184, label %.critedge.fold.split90.i.i
    i32 50397440, label %.critedge.fold.split91.i.i
    i32 50462720, label %.critedge.fold.split92.i.i
    i32 50528256, label %.critedge.fold.split93.i.i
    i32 50593792, label %.critedge.fold.split94.i.i
    i32 50921472, label %.critedge.fold.split95.i.i
    i32 67174400, label %.critedge.fold.split96.i.i
    i32 67239936, label %.critedge.fold.split97.i.i
    i32 67305472, label %.critedge.fold.split98.i.i
    i32 67502336, label %.critedge.fold.split99.i.i
    i32 67503104, label %.critedge.fold.split100.i.i
    i32 83951616, label %.critedge.fold.split101.i.i
    i32 84017152, label %.critedge.fold.split102.i.i
    i32 84082688, label %.critedge.fold.split103.i.i
    i32 84214016, label %.critedge.fold.split104.i.i
    i32 134217728, label %.critedge.fold.split105.i.i
    i32 134283520, label %.critedge.fold.split106.i.i
    i32 134283776, label %.critedge.fold.split107.i.i
  ]

bb.dt:                                            ; preds = %4
  %i.lx = load i32, ptr %i.dm, align 8            ; 3 uses
  %i.ly = trunc nuw i64 %.sink.i.i.i to i32       ; 6 uses
  %i.lz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i32.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i32.i.i, label %trace_megasas_finish_dcmd.exit.i.i.i, label %bb.du, !prof !8

bb.du:                                            ; preds = %bb.dt
  %i.ma = load i16, ptr @_TRACE_MEGASAS_DCMD_UNHANDLED_DSTATE, align 2
  %.not3.i33.i.i = icmp eq i16 %i.ma, 0
  br i1 %.not3.i33.i.i, label %trace_megasas_dcmd_unhandled.exit.thread47.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mb = load i32, ptr @qemu_loglevel, align 4
  %i.mc = and i32 %i.mb, 32768
  %.not4.i.i.i = icmp eq i32 %i.mc, 0
  br i1 %.not4.i.i.i, label %trace_megasas_dcmd_unhandled.exit.thread47.i.i, label %trace_megasas_dcmd_unhandled.exit.i.i

trace_megasas_dcmd_unhandled.exit.i.i:            ; preds = %bb.dv
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.159, i32 noundef %i.lx, i32 noundef %i.lw, i32 noundef %i.ly) #16
  %.pr.pre.i.i = load i32, ptr @trace_events_enabled_count, align 4
  %i.md = icmp eq i32 %.pr.pre.i.i, 0
  br i1 %i.md, label %trace_megasas_finish_dcmd.exit.i.i.i, label %trace_megasas_dcmd_unhandled.exit.i.trace_megasas_dcmd_unhandled.exit.trace_megasas_dcmd_unhandled.exit.thread47_crit_edge.i_crit_edge.i, !prof !20

trace_megasas_dcmd_unhandled.exit.i.trace_megasas_dcmd_unhandled.exit.trace_megasas_dcmd_unhandled.exit.thread47_crit_edge.i_crit_edge.i: ; preds = %trace_megasas_dcmd_unhandled.exit.i.i
  %.pre60.i.pre.i = load i32, ptr %i.dm, align 8
  %.pre61.i.pre.i = load i64, ptr %i.lv, align 8
  br label %trace_megasas_dcmd_unhandled.exit.thread47.i.i

trace_megasas_dcmd_unhandled.exit.thread47.i.i:   ; preds = %trace_megasas_dcmd_unhandled.exit.i.trace_megasas_dcmd_unhandled.exit.trace_megasas_dcmd_unhandled.exit.thread47_crit_edge.i_crit_edge.i, %bb.dv, %bb.du
  %i.me = phi i64 [ %.sink.i.i.i, %bb.du ], [ %.pre61.i.pre.i, %trace_megasas_dcmd_unhandled.exit.i.trace_megasas_dcmd_unhandled.exit.trace_megasas_dcmd_unhandled.exit.thread47_crit_edge.i_crit_edge.i ], [ %.sink.i.i.i, %bb.dv ]
  %i.mf = phi i32 [ %i.lx, %bb.du ], [ %.pre60.i.pre.i, %trace_megasas_dcmd_unhandled.exit.i.trace_megasas_dcmd_unhandled.exit.trace_megasas_dcmd_unhandled.exit.thread47_crit_edge.i_crit_edge.i ], [ %i.lx, %bb.dv ]
  %i.mg = load i16, ptr @_TRACE_MEGASAS_DCMD_DUMMY_DSTATE, align 2
  %.not2.i.i35.i.i = icmp eq i16 %i.mg, 0
  br i1 %.not2.i.i35.i.i, label %megasas_dcmd_dummy.exit.thread.i.i, label %bb.dw

bb.dw:                                            ; preds = %trace_megasas_dcmd_unhandled.exit.thread47.i.i
  %i.mh = load i32, ptr @qemu_loglevel, align 4
  %i.mi = and i32 %i.mh, 32768
  %.not3.i.i36.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not3.i.i36.i.i, label %megasas_dcmd_dummy.exit.thread.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.160, i32 noundef %i.mf, i64 noundef %i.me) #16
  br label %megasas_dcmd_dummy.exit.thread.i.i

.critedge.fold.split.i.i.a:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split65.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split66.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split67.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split68.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split69.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split70.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split71.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split72.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split73.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split74.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split75.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split76.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split77.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split78.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split79.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split80.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split81.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split82.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split83.i.i:                       ; preds = %megasas_map_dcmd.exit.i.i
  br label %.critedge.i.i

.critedge.fold.split84.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split85.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split86.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split87.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split88.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split89.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split90.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split91.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split92.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split93.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split94.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split95.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split96.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split97.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split98.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split99.i.i:                       ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split100.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split101.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split102.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split103.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split104.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split105.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split106.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.fold.split107.i.i:                      ; preds = %4
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.fold.split107.i.i, %.critedge.fold.split106.i.i, %.critedge.fold.split105.i.i, %.critedge.fold.split104.i.i, %.critedge.fold.split103.i.i, %.critedge.fold.split102.i.i, %.critedge.fold.split101.i.i, %.critedge.fold.split100.i.i, %.critedge.fold.split99.i.i, %.critedge.fold.split98.i.i, %.critedge.fold.split97.i.i, %.critedge.fold.split96.i.i, %.critedge.fold.split95.i.i, %.critedge.fold.split94.i.i, %.critedge.fold.split93.i.i, %.critedge.fold.split92.i.i, %.critedge.fold.split91.i.i, %.critedge.fold.split90.i.i, %.critedge.fold.split89.i.i, %.critedge.fold.split88.i.i, %.critedge.fold.split87.i.i, %.critedge.fold.split86.i.i, %.critedge.fold.split85.i.i, %.critedge.fold.split84.i.i, %.critedge.fold.split83.i.i, %.critedge.fold.split82.i.i, %.critedge.fold.split81.i.i, %.critedge.fold.split80.i.i, %.critedge.fold.split79.i.i, %.critedge.fold.split78.i.i, %.critedge.fold.split77.i.i, %.critedge.fold.split76.i.i, %.critedge.fold.split75.i.i, %.critedge.fold.split74.i.i, %.critedge.fold.split73.i.i, %.critedge.fold.split72.i.i, %.critedge.fold.split71.i.i, %.critedge.fold.split70.i.i, %.critedge.fold.split69.i.i, %.critedge.fold.split68.i.i, %.critedge.fold.split67.i.i, %.critedge.fold.split66.i.i, %.critedge.fold.split65.i.i, %.critedge.fold.split.i.i.a, %4, %megasas_map_dcmd.exit.i.i
  %.057.lcssa.i.i = phi ptr [ @dcmd_cmd_tbl, %megasas_map_dcmd.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 1056), %.critedge.fold.split106.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 24), %.critedge.fold.split.i.i.a ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 48), %.critedge.fold.split65.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 72), %.critedge.fold.split66.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 96), %.critedge.fold.split67.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 120), %.critedge.fold.split68.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 144), %.critedge.fold.split69.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 168), %.critedge.fold.split70.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 192), %.critedge.fold.split71.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 216), %.critedge.fold.split72.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 240), %.critedge.fold.split73.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 264), %.critedge.fold.split74.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 288), %.critedge.fold.split75.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 312), %.critedge.fold.split76.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 336), %.critedge.fold.split77.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 360), %.critedge.fold.split78.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 384), %.critedge.fold.split79.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 408), %.critedge.fold.split80.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 432), %.critedge.fold.split81.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 456), %.critedge.fold.split82.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 504), %4 ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 480), %.critedge.fold.split83.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 528), %.critedge.fold.split84.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 552), %.critedge.fold.split85.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 576), %.critedge.fold.split86.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 600), %.critedge.fold.split87.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 624), %.critedge.fold.split88.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 648), %.critedge.fold.split89.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 672), %.critedge.fold.split90.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 696), %.critedge.fold.split91.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 720), %.critedge.fold.split92.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 744), %.critedge.fold.split93.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 768), %.critedge.fold.split94.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 792), %.critedge.fold.split95.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 816), %.critedge.fold.split96.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 840), %.critedge.fold.split97.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 864), %.critedge.fold.split98.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 888), %.critedge.fold.split99.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 912), %.critedge.fold.split100.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 936), %.critedge.fold.split101.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 960), %.critedge.fold.split102.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 984), %.critedge.fold.split103.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 1008), %.critedge.fold.split104.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 1032), %.critedge.fold.split105.i.i ], [ getelementptr inbounds nuw (i8, ptr @dcmd_cmd_tbl, i64 1080), %.critedge.fold.split107.i.i ] ; 2 uses
  %i.mj = load i32, ptr %i.dm, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.057.lcssa.i.i, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = trunc nuw i64 %.sink.i.i.i to i32       ; 2 uses
  %i.mn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i37.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not.i37.i.i, label %megasas_dcmd_dummy.exit.i.i, label %bb.dy, !prof !8

bb.dy:                                            ; preds = %.critedge.i.i
  %i.mo = load i16, ptr @_TRACE_MEGASAS_DCMD_ENTER_DSTATE, align 2
  %.not2.i38.i.i = icmp eq i16 %i.mo, 0
  br i1 %.not2.i38.i.i, label %megasas_dcmd_dummy.exit.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mp = load i32, ptr @qemu_loglevel, align 4
  %i.mq = and i32 %i.mp, 32768
  %.not3.i39.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not3.i39.i.i, label %megasas_dcmd_dummy.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.161, i32 noundef %i.mj, ptr noundef %i.ml, i32 noundef %i.mm) #16
  br label %megasas_dcmd_dummy.exit.i.i

megasas_dcmd_dummy.exit.i.i:                      ; preds = %bb.ea, %bb.dz, %bb.dy, %.critedge.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.057.lcssa.i.i, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = call i32 %i.ms(ptr noundef nonnull %0, ptr noundef nonnull %i.dm) #16, !inline_history !17 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.mt, 255
  br i1 %.not31.i.i, label %megasas_handle_dcmd.exit.i, label %megasas_dcmd_dummy.exit.thread.i.i

megasas_dcmd_dummy.exit.thread.i.i:               ; preds = %megasas_dcmd_dummy.exit.i.i, %bb.dx, %bb.dw, %trace_megasas_dcmd_unhandled.exit.thread47.i.i
  %.pre-phi.i.i = phi i32 [ %i.ly, %bb.dx ], [ %i.ly, %bb.dw ], [ %i.ly, %trace_megasas_dcmd_unhandled.exit.thread47.i.i ], [ %i.mm, %megasas_dcmd_dummy.exit.i.i ] ; 4 uses
  %.02751.ph.i.i = phi i32 [ 0, %bb.dx ], [ 0, %bb.dw ], [ 0, %trace_megasas_dcmd_unhandled.exit.thread47.i.i ], [ %i.mt, %megasas_dcmd_dummy.exit.i.i ] ; 3 uses
  %.pr52.i.i = load i32, ptr @trace_events_enabled_count, align 4
  %i.mu = load i32, ptr %i.dm, align 8
  %.not.i.i40.i.i = icmp eq i32 %.pr52.i.i, 0
  %i.mv = load i16, ptr @_TRACE_MEGASAS_FINISH_DCMD_DSTATE, align 2
  %.not2.i.i41.i.i = icmp eq i16 %i.mv, 0
  %or.cond.i60.i = select i1 %.not.i.i40.i.i, i1 true, i1 %.not2.i.i41.i.i, !prof !21
  br i1 %or.cond.i60.i, label %trace_megasas_finish_dcmd.exit.i.i.i, label %bb.eb, !prof !21

bb.eb:                                            ; preds = %megasas_dcmd_dummy.exit.thread.i.i
  %i.mw = load i32, ptr @qemu_loglevel, align 4
  %i.mx = and i32 %i.mw, 32768
  %.not3.i.i42.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not3.i.i42.i.i, label %trace_megasas_finish_dcmd.exit.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.162, i32 noundef %i.mu, i32 noundef %.pre-phi.i.i) #16
  br label %trace_megasas_finish_dcmd.exit.i.i.i

trace_megasas_finish_dcmd.exit.i.i.i:             ; preds = %bb.ec, %bb.eb, %megasas_dcmd_dummy.exit.thread.i.i, %trace_megasas_dcmd_unhandled.exit.i.i, %bb.dt
  %i.my = phi i32 [ %.pre-phi.i.i, %megasas_dcmd_dummy.exit.thread.i.i ], [ %.pre-phi.i.i, %bb.ec ], [ %.pre-phi.i.i, %bb.eb ], [ %i.ly, %bb.dt ], [ %i.ly, %trace_megasas_dcmd_unhandled.exit.i.i ] ; 4 uses
  %.0275155.i.i = phi i32 [ %.02751.ph.i.i, %megasas_dcmd_dummy.exit.thread.i.i ], [ %.02751.ph.i.i, %bb.ec ], [ %.02751.ph.i.i, %bb.eb ], [ 0, %bb.dt ], [ 0, %trace_megasas_dcmd_unhandled.exit.i.i ] ; 4 uses
  %i.mz = zext i32 %i.my to i64
  %i.na = load i64, ptr %i.lv, align 8
  %i.nb = icmp ult i64 %i.na, %i.mz
  br i1 %i.nb, label %bb.ed, label %megasas_handle_dcmd.exit.i

bb.ed:                                            ; preds = %trace_megasas_finish_dcmd.exit.i.i.i
  %.val.i.i.i = load i16, ptr %i.kr, align 4      ; 2 uses
  %i.nc = and i16 %.val.i.i.i, 32
  %.not.i43.i.i = icmp eq i16 %i.nc, 0
  br i1 %.not.i43.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nd = load ptr, ptr %i.ec, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  store i32 %i.my, ptr %i.ne, align 8
  br label %megasas_handle_dcmd.exit.i

bb.ef:                                            ; preds = %bb.ed
  %i.nf = and i16 %.val.i.i.i, 2
  %.not12.i.i.i = icmp eq i16 %i.nf, 0
  %i.ng = load ptr, ptr %i.ec, align 8            ; 2 uses
  br i1 %.not12.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  store i32 %i.my, ptr %i.nh, align 8
  br label %megasas_handle_dcmd.exit.i

bb.eh:                                            ; preds = %bb.ef
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 44
  store i32 %i.my, ptr %i.ni, align 4
  br label %megasas_handle_dcmd.exit.i

megasas_handle_dcmd.exit.i:                       ; preds = %bb.eh, %bb.eg, %bb.ee, %trace_megasas_finish_dcmd.exit.i.i.i, %megasas_dcmd_dummy.exit.i.i, %megasas_map_dcmd.exit.thread.i.i
  %.028.i.i = phi i32 [ 32, %megasas_map_dcmd.exit.thread.i.i ], [ 255, %megasas_dcmd_dummy.exit.i.i ], [ %.0275155.i.i, %trace_megasas_finish_dcmd.exit.i.i.i ], [ %.0275155.i.i, %bb.ee ], [ %.0275155.i.i, %bb.eg ], [ %.0275155.i.i, %bb.eh ]
  %i.nj = trunc i32 %.028.i.i to i8
  br label %megasas_handle_scsi.exit.i

bb.ei:                                            ; preds = %megasas_enqueue_frame.exit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.nl = load i64, ptr %i.nk, align 8            ; 3 uses
  %i.nm = getelementptr i8, ptr %i.go, i64 32
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = load i32, ptr %i.fw, align 4            ; 2 uses
  %i.np = load i32, ptr %i.cq, align 4            ; 3 uses
  %i.nq = icmp ne i32 %i.np, 0
  %i.nr = icmp slt i32 %i.no, 2048
  %i.ns = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %i.ns, label %.lr.ph.i.i64.i, label %.loopexit.i.i

.lr.ph.i.i64.i:                                   ; preds = %bb.ei, %bb.ej
  %.019.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %bb.ej ], [ %i.no, %bb.ei ] ; 2 uses
  %.01518.i.i.i = phi i32 [ %i.oa, %bb.ej ], [ 0, %bb.ei ]
  %i.nt = sext i32 %.019.i.i.i to i64
  %i.nu = getelementptr inbounds [128 x i8], ptr %i.dl, i64 %i.nt ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load i64, ptr %i.nv, align 8            ; 2 uses
  %.not.i.i65.i = icmp ne i64 %i.nw, 0
  %i.nx = icmp eq i64 %i.nw, %i.nn
  %or.cond.i.i.i = and i1 %.not.i.i65.i, %i.nx
  br i1 %or.cond.i.i.i, label %megasas_lookup_frame.exit.i.i, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i64.i
  %i.ny = add nsw i32 %.019.i.i.i, 1              ; 2 uses
  %i.nz = icmp eq i32 %i.ny, %i.np
  %spec.store.select.i.i.i.i = select i1 %i.nz, i32 0, i32 %i.ny ; 2 uses
  %i.oa = add nuw i32 %.01518.i.i.i, 1            ; 2 uses
  %i.ob = icmp ult i32 %i.oa, %i.np
  %i.oc = icmp slt i32 %spec.store.select.i.i.i.i, 2048
  %i.od = select i1 %i.ob, i1 %i.oc, i1 false
  br i1 %i.od, label %.lr.ph.i.i64.i, label %.loopexit.i.i, !llvm.loop !18

.loopexit.i.i:                                    ; preds = %bb.ej, %bb.ei
  %i.oe = load i32, ptr %i.dm, align 8
  %i.of = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i34.i.i = icmp eq i32 %i.of, 0
  br i1 %.not.i34.i.i, label %megasas_handle_abort.exit.i, label %bb.ek, !prof !8

bb.ek:                                            ; preds = %.loopexit.i.i
  %i.og = load i16, ptr @_TRACE_MEGASAS_ABORT_NO_CMD_DSTATE, align 2
  %.not2.i.i62.i = icmp eq i16 %i.og, 0
  br i1 %.not2.i.i62.i, label %megasas_handle_abort.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.oh = load i32, ptr @qemu_loglevel, align 4
  %i.oi = and i32 %i.oh, 32768
  %.not3.i.i63.i = icmp eq i32 %i.oi, 0
  br i1 %.not3.i.i63.i, label %megasas_handle_abort.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.163, i32 noundef %i.oe, i64 noundef %i.nl) #16
  br label %megasas_handle_abort.exit.i

megasas_lookup_frame.exit.i.i:                    ; preds = %.lr.ph.i.i64.i
  %.val.i66.i = load i32, ptr %i.fd, align 16
  %i.oj = and i32 %.val.i66.i, 2
  %.not.i67.i = icmp eq i32 %i.oj, 0
  %i.ok = and i64 %i.nl, 4294967295
  %spec.select.i.i = select i1 %.not.i67.i, i64 %i.ok, i64 %i.nl
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.om = load i64, ptr %i.ol, align 8            ; 2 uses
  %.not31.i68.i = icmp eq i64 %i.om, %spec.select.i.i
  %i.on = load i32, ptr %i.dm, align 8            ; 2 uses
  %i.oo = load i32, ptr %i.nu, align 8            ; 2 uses
  %i.op = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i37.i69.i = icmp eq i32 %i.op, 0          ; 2 uses
  br i1 %.not31.i68.i, label %bb.er, label %bb.en

bb.en:                                            ; preds = %megasas_lookup_frame.exit.i.i
  br i1 %.not.i37.i69.i, label %megasas_handle_abort.exit.i, label %bb.eo, !prof !8

bb.eo:                                            ; preds = %bb.en
  %i.oq = load i16, ptr @_TRACE_MEGASAS_ABORT_INVALID_CONTEXT_DSTATE, align 2
  %.not3.i36.i.i = icmp eq i16 %i.oq, 0
  br i1 %.not3.i36.i.i, label %megasas_handle_abort.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.or = load i32, ptr @qemu_loglevel, align 4
  %i.os = and i32 %i.or, 32768
  %.not4.i.i70.i = icmp eq i32 %i.os, 0
  br i1 %.not4.i.i70.i, label %megasas_handle_abort.exit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.164, i32 noundef %i.on, i64 noundef %i.om, i32 noundef %i.oo) #16
  br label %megasas_handle_abort.exit.i

bb.er:                                            ; preds = %megasas_lookup_frame.exit.i.i
  br i1 %.not.i37.i69.i, label %trace_megasas_abort_frame.exit.i.i, label %bb.es, !prof !8

bb.es:                                            ; preds = %bb.er
  %i.ot = load i16, ptr @_TRACE_MEGASAS_ABORT_FRAME_DSTATE, align 2
  %.not2.i38.i71.i = icmp eq i16 %i.ot, 0
  br i1 %.not2.i38.i71.i, label %trace_megasas_abort_frame.exit.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ou = load i32, ptr @qemu_loglevel, align 4
  %i.ov = and i32 %i.ou, 32768
  %.not3.i39.i72.i = icmp eq i32 %i.ov, 0
  br i1 %.not3.i39.i72.i, label %trace_megasas_abort_frame.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.165, i32 noundef %i.on, i32 noundef %i.oo) #16
  br label %trace_megasas_abort_frame.exit.i.i

trace_megasas_abort_frame.exit.i.i:               ; preds = %bb.eu, %bb.et, %bb.es, %bb.er
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hpet?download=true
inline.NumInlined: 133
inline.NumDeleted: 40
begin_hunk_0_@hpet_select_clockevents:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 104), align 8
  %i.d = and i64 %i.c, 4
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %.b = load i1, ptr @hpet_verbose, align 1
  br i1 %.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_hpet_print_config(ptr noundef @__func__.hpet_select_clockevents, i32 noundef 708) #22, !srcloc !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = load i8, ptr @hpet_blockid, align 1      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr @x86_vector_domain, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %hpet_create_irq_domain.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.k = tail call noalias align 8 dereferenceable_or_null(88) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef 3520, i64 noundef range(i64 88, 10241) 88) #26 ; 7 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %hpet_create_irq_domain.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef align 8 dereferenceable(88) @hpet_msi_domain_info, i64 80, i1 false)
  %i.l = zext i8 %i.e to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.k, i64 80
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr @hpet_msi_controller, align 8
  %i.p = tail call ptr @__irq_domain_alloc_fwnode(i32 noundef 2, i32 noundef range(i32 0, 256) %i.f, ptr noundef %i.o, ptr noundef null, ptr noundef null) #20 ; 5 uses
  %.not29.i = icmp eq ptr %i.p, null
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @kfree(ptr noundef nonnull %i.k) #20
  br label %hpet_create_irq_domain.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false), !annotation !19
  store ptr %i.p, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.f, ptr %i.r, align 4
  %i.s = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %1, i32 noundef 2) #20 ; 3 uses
  %.not30.i = icmp eq ptr %i.s, null
  br i1 %.not30.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @irq_domain_free_fwnode(ptr noundef nonnull %i.p) #20
  call void @kfree(ptr noundef nonnull %i.k) #20
  br label %hpet_create_irq_domain.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @x86_vector_domain, align 8
  %.not31.i = icmp eq ptr %i.s, %i.t
  br i1 %.not31.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.27, ptr @hpet_msi_controller, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = call ptr @msi_create_irq_domain(ptr noundef nonnull %i.p, ptr noundef nonnull %i.k, ptr noundef nonnull %i.s) #20 ; 2 uses
  %.not32.i = icmp eq ptr %i.u, null
  br i1 %.not32.i, label %bb.n, label %hpet_create_irq_domain.exit

bb.n:                                             ; preds = %bb.m
  call void @irq_domain_free_fwnode(ptr noundef nonnull %i.p) #20
  call void @kfree(ptr noundef nonnull %i.k) #20
  br label %hpet_create_irq_domain.exit.thread

hpet_create_irq_domain.exit.thread:               ; preds = %bb.e, %bb.f, %bb.j, %bb.h, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  store ptr null, ptr @hpet_domain, align 8
  br label %bb.t

hpet_create_irq_domain.exit:                      ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  store ptr %i.u, ptr @hpet_domain, align 8
  %i.v = load i32, ptr @hpet_base.0, align 8      ; 2 uses
  %.not22 = icmp eq i32 %i.v, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hpet_create_irq_domain.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre24 = load ptr, ptr @hpet_base.3, align 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.s
  %i.z = phi i32 [ %i.v, %.lr.ph ], [ %i.ba, %bb.s ] ; 2 uses
  %i.aa = phi ptr [ %.pre24, %.lr.ph ], [ %i.bb, %bb.s ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.ab = getelementptr [320 x i8], ptr %i.aa, i64 %indvars.iv ; 6 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 272    ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 16
  %.not15 = icmp eq i32 %i.ad, 0
  br i1 %.not15, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %i.ab, i64 276
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 32768
  %.not16 = icmp eq i32 %i.ag, 0
  br i1 %.not16, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.ab, i64 280
  %i.ai = trunc nuw i64 %indvars.iv to i32
  %i.aj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.ah, ptr noundef @.str.25, i32 noundef %i.ai) #20 ; 0 uses
  %i.ak = load ptr, ptr @hpet_domain, align 8     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 256
  %i.am = load i32, ptr %i.al, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !19
  call void @init_irq_alloc_info(ptr noundef nonnull %0, ptr noundef null) #20
  store i32 2, ptr %0, align 8
  store ptr %i.ab, ptr %i.w, align 8
  %i.an = call ptr @msi_get_domain_info(ptr noundef %i.ak) #20
  %i.ao = getelementptr i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.x, align 8
  %i.as = sext i32 %i.am to i64
  store i64 %i.as, ptr %i.y, align 8
  %i.at = call i32 @__irq_domain_alloc_irqs(ptr noundef %i.ak, i32 noundef -1, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.au = icmp slt i32 %i.at, 1
  %.pre = load ptr, ptr @hpet_base.3, align 8     ; 2 uses
  br i1 %i.au, label %._crit_edge27, label %bb.r

._crit_edge27:                                    ; preds = %bb.q
  %.pre28 = load i32, ptr @hpet_base.0, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.ab, i64 264
  store i32 %i.at, ptr %i.av, align 8
  store i32 2, ptr %i.ac, align 16
  %i.aw = load i32, ptr @hpet_base.1, align 4
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr @hpet_base.1, align 4
  %i.ay = load i32, ptr @__num_possible_cpus, align 4
  %i.az = icmp eq i32 %i.ax, %i.ay
  %.pre29 = load i32, ptr @hpet_base.0, align 8   ; 2 uses
  br i1 %i.az, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %._crit_edge27, %bb.o, %bb.p, %bb.r
  %i.ba = phi i32 [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %.pre29, %bb.r ], [ %.pre28, %._crit_edge27 ] ; 3 uses
  %i.bb = phi ptr [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %.pre, %bb.r ], [ %.pre, %._crit_edge27 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = zext i32 %i.ba to i64
  %i.bd = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.o, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.r, %bb.s, %hpet_create_irq_domain.exit
  %i.be = phi i32 [ 0, %hpet_create_irq_domain.exit ], [ %i.ba, %bb.s ], [ %.pre29, %bb.r ]
  %i.bf = load i32, ptr @hpet_base.1, align 4
  %i.bg = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, i32 noundef %i.be, i32 noundef %i.bf) #24 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %hpet_create_irq_domain.exit.thread, %bb.a, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @hpet_reserve_platform_timers() unnamed_addr #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.hpet_data, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i8 0, i64 136, i1 false)
  %i.b = load i64, ptr @hpet_address, align 8
  store i64 %i.b, ptr %0, align 8
  %i.c = load ptr, ptr @hpet_virt_address, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = load i32, ptr @hpet_base.0, align 8      ; 3 uses
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 8, ptr %i.i, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr @hpet_base.3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.l = getelementptr [320 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.m = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 264
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %i.l, i64 272      ; 2 uses
  %i.r = load i32, ptr %i.q, align 16
  switch i32 %i.r, label %bb.g [
    i32 0, label %bb.e
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i32 3, ptr %i.q, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.s = getelementptr i8, ptr %i.l, i64 256
  %i.t = load i32, ptr %i.s, align 64
  %i.u = shl nuw i32 1, %i.t
  %1 = load i32, ptr %i.k, align 4
  %i.v = or i32 %1, %i.u
  store i32 %i.v, ptr %i.k, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.a, label %bb.b, !llvm.loop !54

._crit_edge.a:                                    ; preds = %bb.g, %bb.a
  %i.w = call i32 @hpet_alloc(ptr noundef nonnull %0) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hpet_cpuhp_online(i32 noundef %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @hpet_base.0, align 8      ; 2 uses
  %.not17.i = icmp eq i32 %i.a, 0
  br i1 %.not17.i, label %hpet_get_unused_clockevent.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load ptr, ptr @hpet_base.3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.0816.i = phi i32 [ 0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.c = sext i32 %.0816.i to i64
  %i.d = getelementptr [320 x i8], ptr %i.b, i64 %i.c ; 21 uses
  %i.e = getelementptr i8, ptr %i.d, i64 272
  %i.f = load i32, ptr %i.e, align 16
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 268
  %i.h = load i32, ptr %i.g, align 4
  %.not10.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i, label %hpet_get_unused_clockevent.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw i32 %.0816.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.i, %i.a
  br i1 %exitcond.not.i, label %hpet_get_unused_clockevent.exit.thread, label %bb.b, !llvm.loop !55

hpet_get_unused_clockevent.exit:                  ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 268
  store i32 1, ptr %i.j, align 4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %hpet_get_unused_clockevent.exit.thread, label %bb.e

bb.e:                                             ; preds = %hpet_get_unused_clockevent.exit
  %i.k = getelementptr i8, ptr %i.d, i64 260      ; 3 uses
  store i32 %0, ptr %i.k, align 4
  %i.l = sext i32 %0 to i64
  %i.m = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, ptrtoint (ptr @cpu_hpet_channel to i64)
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.d, i64 264      ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.d, i64 280      ; 2 uses
  %i.t = tail call i32 @request_threaded_irq(i32 noundef %i.r, ptr noundef @hpet_msi_interrupt_handler, ptr noundef null, i64 noundef 2181632, ptr noundef %i.s, ptr noundef nonnull %i.d) #20
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %hpet_setup_msi_irq.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.q, align 8
  tail call void @disable_irq(i32 noundef %i.u) #20
  %i.v = load i32, ptr %i.q, align 8
  %i.w = load i32, ptr %i.k, align 4              ; 2 uses
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr @cpu_bit_bitmap, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = lshr i32 %i.w, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = tail call i32 @irq_set_affinity(i32 noundef %i.v, ptr noundef %i.ae) #20 ; 0 uses
  %i.ag = load i32, ptr %i.q, align 8
  tail call void @enable_irq(i32 noundef %i.ag) #20
  br label %hpet_setup_msi_irq.exit.i

hpet_setup_msi_irq.exit.i:                        ; preds = %bb.f, %bb.e
  %i.ah = getelementptr i8, ptr %i.d, i64 176
  store i32 110, ptr %i.ah, align 16
  %i.ai = load i32, ptr %i.q, align 8
  %i.aj = getelementptr i8, ptr %i.d, i64 180
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %i.d, i64 168
  store ptr %i.s, ptr %i.ak, align 8
  %i.al = load i32, ptr %i.k, align 4             ; 2 uses
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr @cpu_bit_bitmap, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = lshr i32 %i.al, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.d, i64 192
  store ptr %i.at, ptr %i.au, align 64
  %i.av = getelementptr i8, ptr %i.d, i64 96
  store ptr @hpet_clkevt_set_state_oneshot, ptr %i.av, align 32
  %i.aw = getelementptr i8, ptr %i.d, i64 8
  store ptr @hpet_clkevt_set_next_event, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.d, i64 112
  store ptr @hpet_clkevt_set_state_shutdown, ptr %i.ax, align 16
  %i.ay = getelementptr i8, ptr %i.d, i64 68      ; 2 uses
  store i32 2, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %i.d, i64 276
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 8
  %.not.i9.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i9.i, label %init_one_hpet_msi_clockevent.exit, label %bb.g

bb.g:                                             ; preds = %hpet_setup_msi_irq.exit.i
  store i32 3, ptr %i.ay, align 4
  %i.bc = getelementptr i8, ptr %i.d, i64 88
  store ptr @hpet_clkevt_set_state_periodic, ptr %i.bc, align 8
  br label %init_one_hpet_msi_clockevent.exit

init_one_hpet_msi_clockevent.exit:                ; preds = %hpet_setup_msi_irq.exit.i, %bb.g
  %i.bd = getelementptr i8, ptr %i.d, i64 120
  store ptr @hpet_clkevt_msi_resume, ptr %i.bd, align 8
  %i.be = load i64, ptr @hpet_freq, align 8
  %i.bf = trunc i64 %i.be to i32
  tail call void @clockevents_config_and_register(ptr noundef nonnull %i.d, i32 noundef %i.bf, i64 noundef 192, i64 noundef 2147483647) #20
  br label %hpet_get_unused_clockevent.exit.thread

hpet_get_unused_clockevent.exit.thread:           ; preds = %bb.d, %bb.a, %init_one_hpet_msi_clockevent.exit, %hpet_get_unused_clockevent.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hpet_cpuhp_dead(i32 noundef %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, ptrtoint (ptr @cpu_hpet_channel to i64)
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 264
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call ptr @free_irq(i32 noundef %i.h, ptr noundef nonnull %i.f) #20 ; 0 uses
  %i.j = getelementptr i8, ptr %i.f, i64 268
  store i32 0, ptr %i.j, align 4
  %i.k = load i64, ptr %i.b, align 8
  %i.l = add i64 %i.k, ptrtoint (ptr @cpu_hpet_channel to i64)
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hpet_msi_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 %3, ptr nofree noundef readonly captures(none) %4) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %4, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %2, i64 noundef %i.b, ptr noundef %i.d, ptr noundef null, ptr noundef @handle_edge_irq, ptr noundef %i.f, ptr noundef @.str.29) #20
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__irq_domain_alloc_fwnode(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hpet_msi_mask(ptr nofree noundef readonly captures(none) %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8
end_hunk_0

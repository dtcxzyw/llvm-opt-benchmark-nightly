Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci-hub?download=true
inline.NumInlined: 146
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xhci_ring_device:bb.a
  %i.g = getelementptr [160 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 16
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.021 = phi i32 [ %i.q, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  tail call void @xhci_ring_ep_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %i.p, i32 noundef %.021) #9
  %i.q = add nuw i32 %.021, 1                     ; 2 uses
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ult i32 %i.q, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.g, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.w, null
  br i1 %.not19, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %.not20 = icmp eq ptr %i.y, null
  br i1 %.not20, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @xhci_ring_ep_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %i.z, i32 noundef 0) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !12

bb.f:                                             ; preds = %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_ring_ep_doorbell(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xhci_get_rhub(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 63
  %.0.v = select i1 %i.f, i64 1120, i64 1048
  %.0 = getelementptr i8, ptr %.0.i, i64 %.0.v
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @xhci_port_is_tunneled(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = load ptr, ptr %.val, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, @pci_bus_type
  br i1 %i.d, label %bb.b, label %xhci_find_next_ext_cap.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 -140
  %i.f = load i16, ptr %i.e, align 4
  %.not = icmp eq i16 %i.f, -32634
  br i1 %.not, label %bb.c, label %xhci_find_next_ext_cap.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i) #10, !srcloc !13 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %xhci_find_next_ext_cap.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.j, 14
  %i.m = and i32 %i.l, 262140                     ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %xhci_find_next_ext_cap.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.1.i = phi i32 [ %i.w, %bb.f ], [ %i.m, %bb.d ] ; 4 uses
  %i.n = zext i32 %.1.i to i64
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o) #10, !srcloc !13 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %xhci_find_next_ext_cap.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %.not27.i = icmp ne i32 %.1.i, 0
  %i.r = and i32 %i.p, 255
  %i.s = icmp eq i32 %i.r, 206
  %or.cond.i = and i1 %.not27.i, %i.s
  br i1 %or.cond.i, label %xhci_find_next_ext_cap.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i32 %i.p, 8
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = add i32 %i.v, %.1.i
  %.not28.i = icmp eq i32 %i.u, 0
  br i1 %.not28.i, label %xhci_find_next_ext_cap.exit.thread, label %.preheader.i, !llvm.loop !14

xhci_find_next_ext_cap.exit:                      ; preds = %bb.e
  %i.x = add i32 %.1.i, -4
  %or.cond = icmp ult i32 %i.x, 35524
  br i1 %or.cond, label %bb.g, label %xhci_find_next_ext_cap.exit.thread

bb.g:                                             ; preds = %xhci_find_next_ext_cap.exit
  %i.y = getelementptr i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl i32 %i.z, 5
  %i.ab = add i32 %i.aa, 35524
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac
  %i.ae = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad) #10, !srcloc !13
  %i.af = and i32 %i.ae, 16
  %.not13 = icmp eq i32 %i.af, 0
  %. = select i1 %.not13, i32 1, i32 2
  br label %xhci_find_next_ext_cap.exit.thread

xhci_find_next_ext_cap.exit.thread:               ; preds = %.preheader.i, %bb.f, %bb.d, %bb.c, %xhci_find_next_ext_cap.exit, %bb.g, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %., %bb.g ], [ 0, %bb.a ], [ 0, %xhci_find_next_ext_cap.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xhci_set_link_state(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9
  %i.b = and i32 %i.a, 1308687881
  %i.c = or i32 %2, %i.b
  %i.d = or i32 %i.c, 65536
  tail call void @xhci_portsc_writel(ptr noundef %1, i32 noundef %i.d) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_portsc_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_portsc_writel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xhci_test_and_clear_bit(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9 ; 2 uses
  %i.b = and i32 %i.a, %2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 1308688361
  %i.d = or i32 %i.c, %2
  tail call void @xhci_portsc_writel(ptr noundef %1, i32 noundef %i.d) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @xhci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nofree noundef captures(none) %4, i16 noundef zeroext %5) #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 6 uses
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 528
  %i.d = load ptr, ptr %i.c, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 13 uses
  %i.e = getelementptr i8, ptr %.0.i, i64 584     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %xhci_get_rhub.exit

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.g = getelementptr i8, ptr %0, i64 528
  %i.h = load ptr, ptr %i.g, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %hcd_to_xhci.exit, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ %0, %hcd_to_xhci.exit ]
  %i.i = getelementptr i8, ptr %0, i64 152        ; 8 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 63
  %.0.v.i = select i1 %i.k, i64 1120, i64 1048
  %.0.i271 = getelementptr i8, ptr %.0.i.i, i64 %.0.v.i ; 8 uses
  %i.l = load ptr, ptr %.0.i271, align 8          ; 3 uses
  %i.m = getelementptr i8, ptr %.0.i271, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %.0.i, i64 648     ; 16 uses
  %i.p = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.o) #9 ; 9 uses
  store i64 %i.p, ptr %i.a, align 8
  switch i16 %1, label %xhci_hub_descriptor.exit [
    i16 -24576, label %bb.d
    i16 -24570, label %bb.e
    i16 -32762, label %bb.j
    i16 -23808, label %bb.ai
    i16 8963, label %bb.cd
    i16 8961, label %bb.ek
  ]

bb.d:                                             ; preds = %xhci_get_rhub.exit
  store i32 0, ptr %4, align 1
  br label %xhci_hub_descriptor.exit

bb.e:                                             ; preds = %xhci_get_rhub.exit
  %i.q = load i32, ptr %i.i, align 8
  %i.r = icmp sgt i32 %i.q, 63
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ult i16 %5, 12
  %.mask262 = and i16 %2, -256
  %i.t = icmp ne i16 %.mask262, 10752
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %xhci_hub_descriptor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0.i, i64 1120
  %i.v = getelementptr i8, ptr %.0.i, i64 1128
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.x, align 1
  %i.y = trunc i32 %i.w to i8
  %i.z = getelementptr i8, ptr %4, i64 2
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %.0.i, i64 640
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 8
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  %..i.i.i = select i1 %.not.i.i.i, i16 10, i16 9
  %i.ad = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i.i, ptr %i.ad, align 1
  %i.ae = getelementptr i8, ptr %4, i64 1
  store i8 42, ptr %i.ae, align 1
  store i8 12, ptr %4, align 1
  %i.af = getelementptr i8, ptr %4, i64 5
  store i8 50, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %4, i64 7
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %4, i64 8
  store i16 0, ptr %i.ah, align 1
  %.not3.i.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %wide.trip.count.i.i = zext i32 %i.w to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0191.i.i = phi i16 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 @xhci_portsc_readl(ptr noundef %i.ak) #9
  %i.am = and i32 %i.al, 1073741824
  %.not.i.i272 = icmp eq i32 %i.am, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 2, %i.an
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = select i1 %.not.i.i272, i16 0, i16 %i.ap
  %.1.i.i = or i16 %i.aq, %.0191.i.i              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.i.i, !llvm.loop !15

xhci_usb3_hub_descriptor.exit.i:                  ; preds = %.lr.ph.i.i, %bb.g
  %.019.lcssa.i.i = phi i16 [ 0, %bb.g ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.ar = getelementptr i8, ptr %4, i64 10
  store i16 %.019.lcssa.i.i, ptr %i.ar, align 1
  br label %xhci_hub_descriptor.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.as = getelementptr i8, ptr %.0.i, i64 1048
  %i.at = getelementptr i8, ptr %.0.i, i64 1056
  %i.au = load i32, ptr %i.at, align 8            ; 6 uses
  %i.av = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.av, align 1
  %i.aw = trunc i32 %i.au to i8
  %i.ax = getelementptr i8, ptr %4, i64 2
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %.0.i, i64 640
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 8
  %.not.i.i7.i = icmp eq i32 %i.ba, 0
  %..i.i8.i = select i1 %.not.i.i7.i, i16 10, i16 9
  %i.bb = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i8.i, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %4, i64 1
  store i8 41, ptr %i.bc, align 1
  %i.bd = sdiv i32 %i.au, 8
  %.tr.i.i = trunc i32 %i.bd to i8
  %i.be = shl i8 %.tr.i.i, 1
  %i.bf = add i8 %i.be, 9
  store i8 %i.bf, ptr %4, align 1
  %i.bg = getelementptr i8, ptr %4, i64 5
  store i8 10, ptr %i.bg, align 1
  store i32 0, ptr %.sroa.0.i, align 4
  %.not6.i.i = icmp eq i32 %i.au, 0
  br i1 %.not6.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i9.i

._crit_edge.thread.i.i:                           ; preds = %bb.h
  %i.bh = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.bi, align 1
  br label %.lr.ph4.preheader.i.i

.lr.ph.preheader.i9.i:                            ; preds = %bb.h
  %wide.trip.count.i10.i = zext i32 %i.au to i64
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph._crit_edge.i.i, %.lr.ph.preheader.i9.i
  %indvars.iv.i12.i = phi i64 [ 0, %.lr.ph.preheader.i9.i ], [ %.pre.i.i, %.lr.ph._crit_edge.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.as, align 8
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.i12.i
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 @xhci_portsc_readl(ptr noundef %i.bl) #9
  %i.bn = and i32 %i.bm, 1073741824
  %.not.i13.i = icmp eq i32 %i.bn, 0
  %.pre.i.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 4 uses
  br i1 %.not.i13.i, label %.lr.ph._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i11.i
  %i.bo = trunc i64 %.pre.i.i to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = shl nuw i8 1, %i.bp
  %i.br = lshr i64 %.pre.i.i, 3
  %i.bs = and i64 %i.br, 536870911                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = or i8 %i.bu, %i.bq
  %.sroa.0.i.0.i.0.i.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.bs
  store i8 %i.bv, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx340, align 1
  br label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.i, %.lr.ph.i11.i
  %exitcond.not.i14.i = icmp eq i64 %.pre.i.i, %wide.trip.count.i10.i
  br i1 %exitcond.not.i14.i, label %._crit_edge.i.i, label %.lr.ph.i11.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph._crit_edge.i.i
  %i.bw = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.bx, align 1
  %.not7.i.i = icmp ugt i32 %i.au, -16
  br i1 %.not7.i.i, label %xhci_usb2_hub_descriptor.exit.i, label %.lr.ph4.preheader.i.i

.lr.ph4.preheader.i.i:                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.by = phi ptr [ %i.bh, %._crit_edge.thread.i.i ], [ %i.bw, %._crit_edge.i.i ]
  %i.bz = add nuw i32 %i.au, 8
  %i.ca = sdiv i32 %i.bz, 8
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %umax.i.i = zext i32 %i.cb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.by, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i, i64 %umax.i.i, i1 false)
  br label %xhci_usb2_hub_descriptor.exit.i

xhci_usb2_hub_descriptor.exit.i:                  ; preds = %.lr.ph4.preheader.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %xhci_hub_descriptor.exit

bb.j:                                             ; preds = %xhci_get_rhub.exit
  %.mask = and i16 %2, -256
  %.not261 = icmp eq i16 %.mask, 3840
  br i1 %.not261, label %bb.k, label %xhci_hub_descriptor.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = load i32, ptr %i.i, align 8
  %i.cd = icmp slt i32 %i.cc, 64
  br i1 %i.cd, label %xhci_hub_descriptor.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 5, ptr %4, align 1
  %i.ce = getelementptr i8, ptr %4, i64 1
  store i8 15, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %4, i64 2         ; 4 uses
  store i16 15, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %4, i64 4         ; 2 uses
  store i8 1, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %.0.i, i64 1208
  %i.ci = load i32, ptr %i.ch, align 8            ; 4 uses
  %.not275.i = icmp eq i32 %i.ci, 0
  br i1 %.not275.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cj = getelementptr i8, ptr %.0.i, i64 1200
  %i.ck = load ptr, ptr %i.cj, align 8            ; 8 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 10
  %i.cm = load i8, ptr %i.cl, align 2
  %i.cn = getelementptr i8, ptr %i.ck, i64 11
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.cm to i16
  %i.cq = shl nuw i16 %i.cp, 8
  %i.cr = zext i8 %i.co to i16
  %i.cs = or disjoint i16 %i.cq, %i.cr            ; 3 uses
  %exitcond.peel.not.i = icmp eq i32 %i.ci, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph.i
  %i.ct = add i32 %i.ci, -1                       ; 3 uses
  %xtraiter = and i32 %i.ct, 1
  %i.cu = icmp eq i32 %i.ci, 2
  br i1 %i.cu, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i32 %i.ct, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i, %.peel.next.i.preheader.new
  %.0189258.i = phi ptr [ %i.ck, %.peel.next.i.preheader.new ], [ %spec.select249.i.1, %.peel.next.i ]
  %.0190257.i = phi i16 [ %i.cs, %.peel.next.i.preheader.new ], [ %spec.select248.i.1, %.peel.next.i ] ; 2 uses
  %.0203256.i = phi i32 [ 1, %.peel.next.i.preheader.new ], [ %i.ds, %.peel.next.i ] ; 3 uses
  %niter = phi i32 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %.peel.next.i ]
  %i.cv = sext i32 %.0203256.i to i64
  %i.cw = getelementptr [16 x i8], ptr %i.ck, i64 %i.cv ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 10
  %i.cy = load i8, ptr %i.cx, align 2
  %i.cz = getelementptr i8, ptr %i.cw, i64 11
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.cy to i16
  %i.dc = shl nuw i16 %i.db, 8
  %i.dd = zext i8 %i.da to i16
  %i.de = or disjoint i16 %i.dc, %i.dd            ; 2 uses
  %i.df = icmp ult i16 %.0190257.i, %i.de
  %spec.select248.i = tail call i16 @llvm.umax.i16(i16 %.0190257.i, i16 %i.de) ; 2 uses
  %spec.select249.i = select i1 %i.df, ptr %i.cw, ptr %.0189258.i
  %i.dg = add nuw i32 %.0203256.i, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [16 x i8], ptr %i.ck, i64 %i.dh ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 10
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = getelementptr i8, ptr %i.di, i64 11
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dk to i16
  %i.do = shl nuw i16 %i.dn, 8
  %i.dp = zext i8 %i.dm to i16
  %i.dq = or disjoint i16 %i.do, %i.dp            ; 2 uses
  %i.dr = icmp ult i16 %spec.select248.i, %i.dq
  %spec.select248.i.1 = tail call i16 @llvm.umax.i16(i16 %spec.select248.i, i16 %i.dq) ; 3 uses
  %spec.select249.i.1 = select i1 %i.dr, ptr %i.di, ptr %spec.select249.i ; 3 uses
  %i.ds = add nuw i32 %.0203256.i, 2              ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.peel.next.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.0189258.i.epil.init = phi ptr [ %i.ck, %.peel.next.i.preheader ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0190257.i.epil.init = phi i16 [ %i.cs, %.peel.next.i.preheader ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.0203256.i.epil.init = phi i32 [ 1, %.peel.next.i.preheader ], [ %i.ds, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i32 %i.ct to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.dt = sext i32 %.0203256.i.epil.init to i64
  %i.du = getelementptr [16 x i8], ptr %i.ck, i64 %i.dt ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 10
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = getelementptr i8, ptr %i.du, i64 11
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dw to i16
  %i.ea = shl nuw i16 %i.dz, 8
  %i.eb = zext i8 %i.dy to i16
  %i.ec = or disjoint i16 %i.ea, %i.eb            ; 2 uses
  %i.ed = icmp ult i16 %.0190257.i.epil.init, %i.ec
  %spec.select248.i.epil = tail call i16 @llvm.umax.i16(i16 %.0190257.i.epil.init, i16 %i.ec)
  %spec.select249.i.epil = select i1 %i.ed, ptr %i.du, ptr %.0189258.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.peel.next.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.0190.lcssa.i = phi i16 [ %i.cs, %.lr.ph.i ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select248.i.epil, %.peel.next.i.epil.preheader ] ; 4 uses
  %.0189.lcssa.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select249.i.epil, %.peel.next.i.epil.preheader ] ; 5 uses
  %i.ee = icmp ugt i16 %.0190.lcssa.i, 783
  br i1 %i.ee, label %bb.m, label %._crit_edge.thread.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.ef = getelementptr i8, ptr %.0189.lcssa.i, i64 8
  %i.eg = load i8, ptr %i.ef, align 8             ; 4 uses
  %.not.i274 = icmp eq i8 %i.eg, 0
  br i1 %.not.i274, label %bb.p, label %.preheader253.i

.preheader253.i:                                  ; preds = %bb.m
  %i.eh = load ptr, ptr %.0189.lcssa.i, align 8   ; 5 uses
  %wide.trip.count.i = zext i8 %i.eg to i64       ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ei = icmp ult i8 %i.eg, 4
  br i1 %i.ei, label %.epil.preheader, label %.preheader253.i.new

.preheader253.i.new:                              ; preds = %.preheader253.i
  %unroll_iter329 = and i64 %wide.trip.count.i, 252
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader253.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader253.i.new ], [ %indvars.iv.next.i.3, %bb.n ] ; 5 uses
  %.0206260.i = phi i8 [ 0, %.preheader253.i.new ], [ %spec.select.i.3, %bb.n ]
  %niter330 = phi i64 [ 0, %.preheader253.i.new ], [ %niter330.next.3, %bb.n ]
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 192
  %i.em = icmp eq i32 %i.el, 0
  %i.en = zext i1 %i.em to i8
  %spec.select.i = add i8 %.0206260.i, %i.en
  %i.eo = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = and i32 %i.eq, 192
  %i.es = icmp eq i32 %i.er, 0
  %i.et = zext i1 %i.es to i8
  %spec.select.i.1 = add i8 %spec.select.i, %i.et
  %i.eu = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = and i32 %i.ew, 192
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i8
  %spec.select.i.2 = add i8 %spec.select.i.1, %i.ez
  %i.fa = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.fb = getelementptr i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = and i32 %i.fc, 192
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i8
  %spec.select.i.3 = add i8 %spec.select.i.2, %i.ff ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter330.next.3 = add i64 %niter330, 4         ; 2 uses
  %niter330.ncmp.3 = icmp eq i64 %niter330.next.3, %unroll_iter329
  br i1 %niter330.ncmp.3, label %.unr-lcssa, label %bb.n, !llvm.loop !19

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader253.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader253.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.0206260.i.epil.init = phi i8 [ 0, %.preheader253.i ], [ %spec.select.i.3, %.unr-lcssa ]
  %lcmp.mod328 = icmp ne i64 %xtraiter325, 0
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.o ] ; 2 uses
  %.0206260.i.epil = phi i8 [ %.0206260.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.fg = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv.i.epil
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 192
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = zext i1 %i.fj to i8
  %spec.select.i.epil = add i8 %.0206260.i.epil, %i.fk ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter325
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.o, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.o, %.unr-lcssa
  %spec.select.i.lcssa = phi i8 [ %spec.select.i.3, %.unr-lcssa ], [ %spec.select.i.epil, %bb.o ]
  %i.fl = add i8 %i.eg, -1
  %i.fm = add i8 %i.fl, %spec.select.i.lcssa
end_hunk_0

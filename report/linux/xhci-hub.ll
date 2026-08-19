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
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  %i.c = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 528
  %i.e = load ptr, ptr %i.d, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]  ; 13 uses
  %i.f = getelementptr i8, ptr %.0.i, i64 584     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.g = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %xhci_get_rhub.exit

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.h = getelementptr i8, ptr %0, i64 528
  %i.i = load ptr, ptr %i.h, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %hcd_to_xhci.exit, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.c ], [ %0, %hcd_to_xhci.exit ]
  %i.j = getelementptr i8, ptr %0, i64 152        ; 8 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp sgt i32 %i.k, 63
  %.0.v.i = select i1 %i.l, i64 1120, i64 1048
  %.0.i271 = getelementptr i8, ptr %.0.i.i, i64 %.0.v.i ; 8 uses
  %i.m = load ptr, ptr %.0.i271, align 8          ; 3 uses
  %i.n = getelementptr i8, ptr %.0.i271, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr i8, ptr %.0.i, i64 648     ; 16 uses
  %i.q = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9 ; 9 uses
  store i64 %i.q, ptr %i.b, align 8
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
  %i.r = load i32, ptr %i.j, align 8
  %i.s = icmp sgt i32 %i.r, 63
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i16 %5, 12
  %.mask262 = and i16 %2, -256
  %i.u = icmp ne i16 %.mask262, 10752
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %xhci_hub_descriptor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.0.i, i64 1120
  %i.w = getelementptr i8, ptr %.0.i, i64 1128
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.y, align 1
  %i.z = trunc i32 %i.x to i8
  %i.aa = getelementptr i8, ptr %4, i64 2
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %.0.i, i64 640
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 8
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  %..i.i.i = select i1 %.not.i.i.i, i16 10, i16 9
  %i.ae = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i.i, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %4, i64 1
  store i8 42, ptr %i.af, align 1
  store i8 12, ptr %4, align 1
  %i.ag = getelementptr i8, ptr %4, i64 5
  store i8 50, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %4, i64 7
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %4, i64 8
  store i16 0, ptr %i.ai, align 1
  %.not3.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %wide.trip.count.i.i = zext i32 %i.x to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0191.i.i = phi i16 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.aj = load ptr, ptr %i.v, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 @xhci_portsc_readl(ptr noundef %i.al) #9
  %i.an = and i32 %i.am, 1073741824
  %.not.i.i272 = icmp eq i32 %i.an, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = select i1 %.not.i.i272, i16 0, i16 %i.aq
  %.1.i.i = or i16 %i.ar, %.0191.i.i              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.i.i, !llvm.loop !15

xhci_usb3_hub_descriptor.exit.i:                  ; preds = %.lr.ph.i.i, %bb.g
  %.019.lcssa.i.i = phi i16 [ 0, %bb.g ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.as = getelementptr i8, ptr %4, i64 10
  store i16 %.019.lcssa.i.i, ptr %i.as, align 1
  br label %xhci_hub_descriptor.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = getelementptr i8, ptr %.0.i, i64 1048
  %i.au = getelementptr i8, ptr %.0.i, i64 1056
  %i.av = load i32, ptr %i.au, align 8            ; 6 uses
  %i.aw = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.aw, align 1
  %i.ax = trunc i32 %i.av to i8
  %i.ay = getelementptr i8, ptr %4, i64 2
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %.0.i, i64 640
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 8
  %.not.i.i7.i = icmp eq i32 %i.bb, 0
  %..i.i8.i = select i1 %.not.i.i7.i, i16 10, i16 9
  %i.bc = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i8.i, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %4, i64 1
  store i8 41, ptr %i.bd, align 1
  %i.be = sdiv i32 %i.av, 8
  %.tr.i.i = trunc i32 %i.be to i8
  %i.bf = shl i8 %.tr.i.i, 1
  %i.bg = add i8 %i.bf, 9
  store i8 %i.bg, ptr %4, align 1
  %i.bh = getelementptr i8, ptr %4, i64 5
  store i8 10, ptr %i.bh, align 1
  store i32 0, ptr %i.a, align 4
  %.not6.i.i = icmp eq i32 %i.av, 0
  br i1 %.not6.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i9.i

._crit_edge.thread.i.i:                           ; preds = %bb.h
  %i.bi = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.bj, align 1
  br label %.lr.ph4.preheader.i.i

.lr.ph.preheader.i9.i:                            ; preds = %bb.h
  %wide.trip.count.i10.i = zext i32 %i.av to i64
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph._crit_edge.i.i, %.lr.ph.preheader.i9.i
  %indvars.iv.i12.i = phi i64 [ 0, %.lr.ph.preheader.i9.i ], [ %.pre.i.i, %.lr.ph._crit_edge.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.at, align 8
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv.i12.i
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 @xhci_portsc_readl(ptr noundef %i.bm) #9
  %i.bo = and i32 %i.bn, 1073741824
  %.not.i13.i = icmp eq i32 %i.bo, 0
  %.pre.i.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 4 uses
  br i1 %.not.i13.i, label %.lr.ph._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i11.i
  %i.bp = trunc i64 %.pre.i.i to i8
  %i.bq = and i8 %i.bp, 7
  %i.br = shl nuw i8 1, %i.bq
  %i.bs = lshr i64 %.pre.i.i, 3
  %i.bt = and i64 %i.bs, 536870911
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = or i8 %i.bv, %i.br
  store i8 %i.bw, ptr %i.bu, align 1
  br label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.i, %.lr.ph.i11.i
  %exitcond.not.i14.i = icmp eq i64 %.pre.i.i, %wide.trip.count.i10.i
  br i1 %exitcond.not.i14.i, label %._crit_edge.i.i, label %.lr.ph.i11.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph._crit_edge.i.i
  %i.bx = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.by, align 1
  %.not7.i.i = icmp ugt i32 %i.av, -16
  br i1 %.not7.i.i, label %xhci_usb2_hub_descriptor.exit.i, label %.lr.ph4.preheader.i.i

.lr.ph4.preheader.i.i:                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %6 = phi ptr [ %i.bi, %._crit_edge.thread.i.i ], [ %i.bx, %._crit_edge.i.i ]
  %i.bz = add nuw i32 %i.av, 8
  %i.ca = sdiv i32 %i.bz, 8
  %umax.i.i.a = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %wide.trip.count12.i.i = zext i32 %umax.i.i.a to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %6, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %wide.trip.count12.i.i, i1 false)
  br label %xhci_usb2_hub_descriptor.exit.i

xhci_usb2_hub_descriptor.exit.i:                  ; preds = %.lr.ph4.preheader.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %xhci_hub_descriptor.exit

bb.j:                                             ; preds = %xhci_get_rhub.exit
  %.mask = and i16 %2, -256
  %.not261 = icmp eq i16 %.mask, 3840
  br i1 %.not261, label %bb.k, label %xhci_hub_descriptor.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = load i32, ptr %i.j, align 8
  %i.cc = icmp slt i32 %i.cb, 64
  br i1 %i.cc, label %xhci_hub_descriptor.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 5, ptr %4, align 1
  %i.cd = getelementptr i8, ptr %4, i64 1
  store i8 15, ptr %i.cd, align 1
  %i.ce = getelementptr i8, ptr %4, i64 2         ; 4 uses
  store i16 15, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %4, i64 4         ; 2 uses
  store i8 1, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %.0.i, i64 1208
  %i.ch = load i32, ptr %i.cg, align 8            ; 4 uses
  %.not275.i = icmp eq i32 %i.ch, 0
  br i1 %.not275.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ci = getelementptr i8, ptr %.0.i, i64 1200
  %i.cj = load ptr, ptr %i.ci, align 8            ; 8 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 10
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = getelementptr i8, ptr %i.cj, i64 11
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cl to i16
  %i.cp = shl nuw i16 %i.co, 8
  %i.cq = zext i8 %i.cn to i16
  %i.cr = or disjoint i16 %i.cp, %i.cq            ; 3 uses
  %exitcond.peel.not.i = icmp eq i32 %i.ch, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph.i
  %i.cs = add i32 %i.ch, -1                       ; 3 uses
  %xtraiter = and i32 %i.cs, 1
  %i.ct = icmp eq i32 %i.ch, 2
  br i1 %i.ct, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i32 %i.cs, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i, %.peel.next.i.preheader.new
  %.0189258.i = phi ptr [ %i.cj, %.peel.next.i.preheader.new ], [ %spec.select249.i.1, %.peel.next.i ]
  %.0190257.i = phi i16 [ %i.cr, %.peel.next.i.preheader.new ], [ %spec.select248.i.1, %.peel.next.i ] ; 2 uses
  %.0203256.i = phi i32 [ 1, %.peel.next.i.preheader.new ], [ %i.dr, %.peel.next.i ] ; 3 uses
  %niter = phi i32 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %.peel.next.i ]
  %i.cu = sext i32 %.0203256.i to i64
  %i.cv = getelementptr [16 x i8], ptr %i.cj, i64 %i.cu ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 10
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr i8, ptr %i.cv, i64 11
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cx to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = zext i8 %i.cz to i16
  %i.dd = or disjoint i16 %i.db, %i.dc            ; 2 uses
  %i.de = icmp ult i16 %.0190257.i, %i.dd
  %spec.select248.i = tail call i16 @llvm.umax.i16(i16 %.0190257.i, i16 %i.dd) ; 2 uses
  %spec.select249.i = select i1 %i.de, ptr %i.cv, ptr %.0189258.i
  %i.df = add nuw i32 %.0203256.i, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [16 x i8], ptr %i.cj, i64 %i.dg ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 10
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = getelementptr i8, ptr %i.dh, i64 11
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dj to i16
  %i.dn = shl nuw i16 %i.dm, 8
  %i.do = zext i8 %i.dl to i16
  %i.dp = or disjoint i16 %i.dn, %i.do            ; 2 uses
  %i.dq = icmp ult i16 %spec.select248.i, %i.dp
  %spec.select248.i.1 = tail call i16 @llvm.umax.i16(i16 %spec.select248.i, i16 %i.dp) ; 3 uses
  %spec.select249.i.1 = select i1 %i.dq, ptr %i.dh, ptr %spec.select249.i ; 3 uses
  %i.dr = add nuw i32 %.0203256.i, 2              ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.peel.next.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.0189258.i.epil.init = phi ptr [ %i.cj, %.peel.next.i.preheader ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0190257.i.epil.init = phi i16 [ %i.cr, %.peel.next.i.preheader ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.0203256.i.epil.init = phi i32 [ 1, %.peel.next.i.preheader ], [ %i.dr, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i32 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.ds = sext i32 %.0203256.i.epil.init to i64
  %i.dt = getelementptr [16 x i8], ptr %i.cj, i64 %i.ds ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 10
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = getelementptr i8, ptr %i.dt, i64 11
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dv to i16
  %i.dz = shl nuw i16 %i.dy, 8
  %i.ea = zext i8 %i.dx to i16
  %i.eb = or disjoint i16 %i.dz, %i.ea            ; 2 uses
  %i.ec = icmp ult i16 %.0190257.i.epil.init, %i.eb
  %spec.select248.i.epil = tail call i16 @llvm.umax.i16(i16 %.0190257.i.epil.init, i16 %i.eb)
  %spec.select249.i.epil = select i1 %i.ec, ptr %i.dt, ptr %.0189258.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.peel.next.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.0190.lcssa.i = phi i16 [ %i.cr, %.lr.ph.i ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select248.i.epil, %.peel.next.i.epil.preheader ] ; 4 uses
  %.0189.lcssa.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select249.i.epil, %.peel.next.i.epil.preheader ] ; 5 uses
  %i.ed = icmp ugt i16 %.0190.lcssa.i, 783
  br i1 %i.ed, label %bb.m, label %._crit_edge.thread.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.ee = getelementptr i8, ptr %.0189.lcssa.i, i64 8
  %i.ef = load i8, ptr %i.ee, align 8             ; 4 uses
  %.not.i274 = icmp eq i8 %i.ef, 0
  br i1 %.not.i274, label %bb.p, label %.preheader253.i

.preheader253.i:                                  ; preds = %bb.m
  %i.eg = load ptr, ptr %.0189.lcssa.i, align 8   ; 5 uses
  %wide.trip.count.i = zext i8 %i.ef to i64       ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.eh = icmp ult i8 %i.ef, 4
  br i1 %i.eh, label %.epil.preheader, label %.preheader253.i.new

.preheader253.i.new:                              ; preds = %.preheader253.i
  %unroll_iter329 = and i64 %wide.trip.count.i, 252
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader253.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader253.i.new ], [ %indvars.iv.next.i.3, %bb.n ] ; 5 uses
  %.0206260.i = phi i8 [ 0, %.preheader253.i.new ], [ %spec.select.i.3, %bb.n ]
  %niter330 = phi i64 [ 0, %.preheader253.i.new ], [ %niter330.next.3, %bb.n ]
  %i.ei = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = and i32 %i.ej, 192
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = zext i1 %i.el to i8
  %spec.select.i = add i8 %.0206260.i, %i.em
  %i.en = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 192
  %i.er = icmp eq i32 %i.eq, 0
  %i.es = zext i1 %i.er to i8
  %spec.select.i.1 = add i8 %spec.select.i, %i.es
  %i.et = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = and i32 %i.ev, 192
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  %spec.select.i.2 = add i8 %spec.select.i.1, %i.ey
  %i.ez = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.fa = getelementptr i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, 192
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = zext i1 %i.fd to i8
  %spec.select.i.3 = add i8 %spec.select.i.2, %i.fe ; 3 uses
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
  %i.ff = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv.i.epil
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 192
  %i.fi = icmp eq i32 %i.fh, 0
  %i.fj = zext i1 %i.fi to i8
  %spec.select.i.epil = add i8 %.0206260.i.epil, %i.fj ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter325
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.o, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.o, %.unr-lcssa
  %spec.select.i.lcssa = phi i8 [ %spec.select.i.3, %.unr-lcssa ], [ %spec.select.i.epil, %bb.o ]
  %i.fk = add i8 %i.ef, -1
  %i.fl = add i8 %i.fk, %spec.select.i.lcssa
  %i.fm = getelementptr i8, ptr %.0189.lcssa.i, i64 9
  %i.fn = load i8, ptr %i.fm, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.fo = icmp ugt i16 %.0190.lcssa.i, 799
  %..i = select i1 %i.fo, i8 7, i8 3              ; 2 uses
  %narrow.i = add nuw nsw i8 %..i, 1
  %i.fp = lshr exact i8 %narrow.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.epilog-lcssa
  %.0199.in.i = phi i8 [ %i.fn, %.epilog-lcssa ], [ %i.fp, %bb.p ]
  %.1197.i = phi i8 [ %i.fl, %.epilog-lcssa ], [ %..i, %bb.p ] ; 2 uses
  %.0199.i = add i8 %.0199.in.i, 15
  store i8 2, ptr %i.cf, align 1
  %i.fq = zext i8 %.1197.i to i16
  %i.fr = shl nuw nsw i16 %i.fq, 2
  %i.fs = add nuw nsw i16 %i.fr, 31
  store i16 %i.fs, ptr %i.ce, align 1
  %i.ft = zext i8 %.0199.i to i32
  %i.fu = shl nuw nsw i32 %i.ft, 5
  %i.fv = and i32 %i.fu, 480
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.q, %._crit_edge.i, %bb.l
  %.0189.lcssa297.i = phi ptr [ %.0189.lcssa.i, %bb.q ], [ %.0189.lcssa.i, %._crit_edge.i ], [ null, %bb.l ] ; 3 uses
  %.0190.lcssa296.i = phi i16 [ %.0190.lcssa.i, %bb.q ], [ %.0190.lcssa.i, %._crit_edge.i ], [ 0, %bb.l ] ; 2 uses
  %.1200.i = phi i32 [ %i.fv, %bb.q ], [ 0, %._crit_edge.i ], [ 0, %bb.l ]
  %.2198.i = phi i8 [ %.1197.i, %bb.q ], [ 0, %._crit_edge.i ], [ 0, %bb.l ] ; 3 uses
  %i.fw = icmp ult i16 %5, 15
  br i1 %i.fw, label %xhci_create_usb3x_bos_desc.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i
  %i.fx = getelementptr i8, ptr %4, i64 5
  store i8 10, ptr %i.fx, align 1
  %i.fy = getelementptr i8, ptr %4, i64 6
  store i8 16, ptr %i.fy, align 1
  %i.fz = getelementptr i8, ptr %4, i64 7
  store i8 3, ptr %i.fz, align 1
  %i.ga = getelementptr i8, ptr %4, i64 8         ; 3 uses
  store i8 0, ptr %i.ga, align 1
  %i.gb = getelementptr i8, ptr %4, i64 9
  store i16 8, ptr %i.gb, align 1
  %i.gc = getelementptr i8, ptr %4, i64 11
  store i8 1, ptr %i.gc, align 1
  %i.gd = getelementptr i8, ptr %4, i64 12        ; 2 uses
  store i8 0, ptr %i.gd, align 1
  %i.ge = getelementptr i8, ptr %4, i64 13        ; 2 uses
  store i16 0, ptr %i.ge, align 1
  %i.gf = getelementptr i8, ptr %.0.i, i64 600    ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %i.gi = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gh) #10, !srcloc !13
  %i.gj = and i32 %i.gi, 64
  %.not224.i = icmp eq i32 %i.gj, 0
  br i1 %.not224.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gk = load i8, ptr %i.ga, align 1
  %i.gl = or i8 %i.gk, 2
  store i8 %i.gl, ptr %i.ga, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gm = getelementptr i8, ptr %.0.i, i64 1024
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = and i64 %i.gn, 2048
  %.not225.i = icmp eq i64 %i.go, 0
  br i1 %.not225.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gp = load ptr, ptr %i.gf, align 8
  %i.gq = getelementptr i8, ptr %i.gp, i64 12
  %i.gr = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gq) #10, !srcloc !13 ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  store i8 %i.gs, ptr %i.gd, align 1
  %i.gt = lshr i32 %i.gr, 16
  %i.gu = trunc nuw i32 %i.gt to i16
  store i16 %i.gu, ptr %i.ge, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gv = load i16, ptr %i.ce, align 1            ; 3 uses
  %i.gw = icmp ult i16 %5, %i.gv
  br i1 %i.gw, label %xhci_create_usb3x_bos_desc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = icmp ult i16 %.0190.lcssa296.i, 784
  br i1 %i.gx, label %xhci_create_usb3x_bos_desc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr i8, ptr %4, i64 15
  %.tr.i = shl i8 %.2198.i, 2
  %i.gz = add i8 %.tr.i, 16
  store i8 %i.gz, ptr %i.gy, align 1
  %i.ha = getelementptr i8, ptr %4, i64 16
  store i8 16, ptr %i.ha, align 1
  %i.hb = getelementptr i8, ptr %4, i64 17
  store i8 10, ptr %i.hb, align 1
  %i.hc = getelementptr i8, ptr %4, i64 18
  store i8 0, ptr %i.hc, align 1
  %i.hd = getelementptr i8, ptr %4, i64 25
  store i16 0, ptr %i.hd, align 1
  %i.he = and i8 %.2198.i, 31
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = or disjoint i32 %.1200.i, %i.hf
  %i.hh = getelementptr i8, ptr %4, i64 19
  store i32 %i.hg, ptr %i.hh, align 1
  %i.hi = getelementptr i8, ptr %.0189.lcssa297.i, i64 8 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 8             ; 2 uses
  %.not228.i = icmp eq i8 %i.hj, 0
  br i1 %.not228.i, label %.preheader.i, label %.lr.ph272.i

.lr.ph272.i:                                      ; preds = %bb.x
  %i.hk = icmp eq i16 %.0190.lcssa296.i, 800      ; 2 uses
  %i.hl = getelementptr i8, ptr %4, i64 27        ; 4 uses
  %i.hm = load ptr, ptr %.0189.lcssa297.i, align 8
  %i.hn = load i32, ptr %i.hm, align 4
  %.fr.i.peel = freeze i32 %i.hn                  ; 5 uses
  %i.ho = trunc i32 %.fr.i.peel to i8             ; 3 uses
  %i.hp = and i8 %i.ho, 15                        ; 2 uses
  %i.hq = and i32 %.fr.i.peel, 49152
  %i.hr = lshr i8 %i.ho, 4
  %i.hs = and i8 %i.hr, 3                         ; 4 uses
  %i.ht = lshr i32 %.fr.i.peel, 16                ; 3 uses
  %i.hu = trunc nuw i32 %i.ht to i16              ; 2 uses
  %i.hv = and i32 %.fr.i.peel, 192
  %.not277.i.peel = icmp eq i8 %i.hs, 3
  br i1 %.not277.i.peel, label %._crit_edge266.i.peel, label %.lr.ph265.preheader.i.peel

.lr.ph265.preheader.i.peel:                       ; preds = %.lr.ph272.i
  %i.hw = udiv i16 %i.hu, 1000
  %exitcond283.not.i.peel.peel = icmp eq i8 %i.hs, 2
  %spec.select.peel = select i1 %exitcond283.not.i.peel.peel, i16 %i.hw, i16 0
  br label %._crit_edge266.i.peel

._crit_edge266.i.peel:                            ; preds = %.lr.ph265.preheader.i.peel, %.lr.ph272.i
  %.0212.lcssa.i.peel = phi i16 [ %i.hu, %.lr.ph272.i ], [ %spec.select.peel, %.lr.ph265.preheader.i.peel ] ; 3 uses
  %i.hx = zext i16 %.0212.lcssa.i.peel to i32
  %i.hy = icmp ugt i16 %.0212.lcssa.i.peel, 9
  %i.hz = icmp eq i32 %i.hv, 0
  %or.cond.i.peel = and i1 %i.hk, %i.hz           ; 2 uses
  %i.ia = icmp ugt i16 %.0212.lcssa.i.peel, 10    ; 2 uses
  %spec.select245.i.peel = select i1 %i.ia, i8 3, i8 %i.hs
  %i.ib = select i1 %i.ia, i32 10, i32 %i.ht
  %.2215.i.peel = select i1 %or.cond.i.peel, i32 %i.ib, i32 %i.ht
  %.2211.i.peel = select i1 %or.cond.i.peel, i8 %spec.select245.i.peel, i8 %i.hs
  %i.ic = and i32 %.fr.i.peel, 15
  %i.id = select i1 %i.hy, i32 16384, i32 %i.hq
  %i.ie = or disjoint i32 %i.id, %i.ic
  %i.if = zext nneg i8 %.2211.i.peel to i32
  %i.ig = shl nuw nsw i32 %i.if, 4
  %i.ih = and i32 %i.ig, 48
  %i.ii = shl nuw i32 %.2215.i.peel, 16
  %i.ij = and i32 %i.ii, 16711680
  %i.ik = or disjoint i32 %i.ie, %i.ij
  %i.il = or disjoint i32 %i.ik, %i.ih            ; 2 uses
  %i.im = lshr i8 %i.ho, 6
  switch i8 %i.im, label %default.unreachable [
    i8 0, label %bb.z
    i8 2, label %.sink.split.i.peel
    i8 3, label %bb.y
    i8 1, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge266.i.peel
  br label %.sink.split.i.peel

bb.z:                                             ; preds = %._crit_edge266.i.peel
  store i32 %i.il, ptr %i.hl, align 1
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.z, %bb.y, %._crit_edge266.i.peel
  %.sink303.i.peel = phi i32 [ 192, %bb.y ], [ 128, %bb.z ], [ 64, %._crit_edge266.i.peel ]
  %.sink302.i.peel = phi i32 [ 1, %bb.y ], [ 2, %bb.z ], [ 1, %._crit_edge266.i.peel ]
  %.0201269.sink.i.peel = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %._crit_edge266.i.peel ]
  %i.in = or disjoint i32 %.sink303.i.peel, %i.il
  %i.io = getelementptr [4 x i8], ptr %i.hl, i64 %.0201269.sink.i.peel
  store i32 %i.in, ptr %i.io, align 1
  %.pre.peel = load i8, ptr %i.hi, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i.peel, %._crit_edge266.i.peel
  %i.ip = phi i8 [ %i.hj, %._crit_edge266.i.peel ], [ %.pre.peel, %.sink.split.i.peel ] ; 2 uses
  %.1202.i.peel = phi i32 [ 0, %._crit_edge266.i.peel ], [ %.sink302.i.peel, %.sink.split.i.peel ]
  %i.iq = icmp ugt i8 %i.ip, 1
  br i1 %i.iq, label %.lr.ph272.i.peel.newph, label %.loopexit.loopexit278.i

.preheader.i:                                     ; preds = %bb.x
  %i.ir = getelementptr i8, ptr %4, i64 27
  %i.is = zext i8 %.2198.i to i64
  %i.it = shl nuw nsw i64 %i.is, 2
  %i.iu = add nuw nsw i64 %i.it, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ir, ptr noundef nonnull align 16 dereferenceable(1) @ssp_cap_default_ssa, i64 %i.iu, i1 false)
  br label %.loopexit.i

.lr.ph272.i.peel.newph:                           ; preds = %bb.aa, %bb.ah
  %i.iv = phi i8 [ %i.km, %bb.ah ], [ %i.ip, %bb.aa ]
  %indvars.iv284.i = phi i64 [ %indvars.iv.next285.i, %bb.ah ], [ 1, %bb.aa ] ; 2 uses
  %.0192271.i = phi i32 [ %.1193.i, %bb.ah ], [ %i.hx, %bb.aa ] ; 2 uses
  %.0194270.i = phi i8 [ %.1195.i, %bb.ah ], [ %i.hp, %bb.aa ]
  %.0201269.i = phi i32 [ %.1202.i, %bb.ah ], [ %.1202.i.peel, %bb.aa ] ; 6 uses
  %i.iw = load ptr, ptr %.0189.lcssa297.i, align 8
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %indvars.iv284.i ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4
  %.fr.i = freeze i32 %i.iy                       ; 6 uses
  %i.iz = trunc i32 %.fr.i to i8                  ; 3 uses
  %i.ja = and i8 %i.iz, 15
  %i.jb = and i32 %.fr.i, 49152
  %i.jc = lshr i8 %i.iz, 4
  %i.jd = and i8 %i.jc, 3                         ; 5 uses
  %i.je = lshr i32 %.fr.i, 16                     ; 4 uses
  %i.jf = trunc nuw i32 %i.je to i16              ; 2 uses
  %i.jg = and i32 %.fr.i, 192
  %.not277.i = icmp eq i8 %i.jd, 3
  br i1 %.not277.i, label %._crit_edge266.i, label %.lr.ph265.preheader.i

.lr.ph265.preheader.i:                            ; preds = %.lr.ph272.i.peel.newph
  %i.jh = udiv i16 %i.jf, 1000
  %exitcond283.not.i.peel = icmp eq i8 %i.jd, 2
  %spec.select = select i1 %exitcond283.not.i.peel, i16 %i.jh, i16 0
  br label %._crit_edge266.i

._crit_edge266.i:                                 ; preds = %.lr.ph265.preheader.i, %.lr.ph272.i.peel.newph
  %.0212.lcssa.i = phi i16 [ %i.jf, %.lr.ph272.i.peel.newph ], [ %spec.select, %.lr.ph265.preheader.i ] ; 4 uses
  %i.ji = zext i16 %.0212.lcssa.i to i32          ; 2 uses
  %i.jj = add nsw i32 %.0192271.i, -1
  %or.cond238.not.i = icmp ult i32 %i.jj, %i.ji   ; 2 uses
  %.1195.i = select i1 %or.cond238.not.i, i8 %.0194270.i, i8 %i.ja ; 2 uses
  %.1193.i = select i1 %or.cond238.not.i, i32 %.0192271.i, i32 %i.ji
  %i.jk = icmp ugt i16 %.0212.lcssa.i, 9
  %i.jl = icmp eq i32 %i.jg, 0
  %or.cond.i = and i1 %i.hk, %i.jl
  br i1 %or.cond.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge266.i
  %i.jm = and i32 %.fr.i, 15
  %i.jn = icmp eq i32 %i.jm, 6
  %i.jo = icmp eq i16 %.0212.lcssa.i, 10
  %or.cond8.i = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond8.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jp = getelementptr i8, ptr %i.ix, i64 -4
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = and i32 %i.jq, -65281
  %or.cond243.i = icmp eq i32 %i.jr, 655413       ; 2 uses
  %.0213.i = select i1 %or.cond243.i, i32 5, i32 %i.je
  %.0209.i = select i1 %or.cond243.i, i8 3, i8 %i.jd
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1214.i = phi i32 [ %.0213.i, %bb.ac ], [ %i.je, %bb.ab ]
  %.1210.i = phi i8 [ %.0209.i, %bb.ac ], [ %i.jd, %bb.ab ]
  %i.js = icmp ugt i16 %.0212.lcssa.i, 10         ; 2 uses
  %spec.select245.i = select i1 %i.js, i8 3, i8 %.1210.i
  %i.jt = select i1 %i.js, i32 10, i32 %.1214.i
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge266.i, %bb.ad
  %.2215.i = phi i32 [ %i.je, %._crit_edge266.i ], [ %i.jt, %bb.ad ]
  %.2211.i = phi i8 [ %i.jd, %._crit_edge266.i ], [ %spec.select245.i, %bb.ad ]
  %i.ju = and i32 %.fr.i, 15
  %i.jv = select i1 %i.jk, i32 16384, i32 %i.jb
  %i.jw = or disjoint i32 %i.jv, %i.ju
  %i.jx = zext nneg i8 %.2211.i to i32
  %i.jy = shl nuw nsw i32 %i.jx, 4
  %i.jz = and i32 %i.jy, 48
  %i.ka = shl nuw i32 %.2215.i, 16
  %i.kb = and i32 %i.ka, 16711680
  %i.kc = or disjoint i32 %i.jw, %i.kb
  %i.kd = or disjoint i32 %i.kc, %i.jz            ; 2 uses
  %i.ke = lshr i8 %i.iz, 6
  switch i8 %i.ke, label %.unreachabledefault [
    i8 0, label %bb.af
    i8 2, label %.sink.split.i
    i8 3, label %bb.ag
    i8 1, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.kf = add i32 %.0201269.i, 1
  %i.kg = sext i32 %.0201269.i to i64
  %i.kh = getelementptr [4 x i8], ptr %i.hl, i64 %i.kg
  store i32 %i.kd, ptr %i.kh, align 1
  br label %.sink.split.i

bb.ag:                                            ; preds = %bb.ae
  br label %.sink.split.i

.unreachabledefault:                              ; preds = %bb.ae
  unreachable

default.unreachable:                              ; preds = %._crit_edge266.i.peel
  unreachable

.sink.split.i:                                    ; preds = %bb.ag, %bb.af, %bb.ae
  %.sink303.i = phi i32 [ 192, %bb.ag ], [ 128, %bb.af ], [ 64, %bb.ae ]
  %.sink302.i = phi i32 [ 1, %bb.ag ], [ 2, %bb.af ], [ 1, %bb.ae ]
  %.0201269.sink.i = phi i32 [ %.0201269.i, %bb.ag ], [ %i.kf, %bb.af ], [ %.0201269.i, %bb.ae ]
  %i.ki = or disjoint i32 %.sink303.i, %i.kd
  %i.kj = add i32 %.sink302.i, %.0201269.i
  %i.kk = sext i32 %.0201269.sink.i to i64
  %i.kl = getelementptr [4 x i8], ptr %i.hl, i64 %i.kk
  store i32 %i.ki, ptr %i.kl, align 1
  %.pre = load i8, ptr %i.hi, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.ae
  %i.km = phi i8 [ %i.iv, %bb.ae ], [ %.pre, %.sink.split.i ] ; 2 uses
  %.1202.i = phi i32 [ %.0201269.i, %bb.ae ], [ %i.kj, %.sink.split.i ]
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 1 ; 2 uses
  %i.kn = zext i8 %i.km to i64
  %i.ko = icmp samesign ult i64 %indvars.iv.next285.i, %i.kn
  br i1 %i.ko, label %.lr.ph272.i.peel.newph, label %.loopexit.loopexit278.i, !llvm.loop !22

.loopexit.loopexit278.i:                          ; preds = %bb.ah, %bb.aa
  %.1195.i.lcssa321 = phi i8 [ %i.hp, %bb.aa ], [ %.1195.i, %bb.ah ]
  %.pre.i = load i16, ptr %i.ce, align 1
  %i.kp = zext nneg i8 %.1195.i.lcssa321 to i16
  %i.kq = or disjoint i16 %i.kp, 4352
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit278.i, %.preheader.i
  %i.kr = phi i16 [ %i.gv, %.preheader.i ], [ %.pre.i, %.loopexit.loopexit278.i ]
  %.2.i = phi i16 [ 4356, %.preheader.i ], [ %i.kq, %.loopexit.loopexit278.i ]
  %i.ks = getelementptr i8, ptr %4, i64 23
  store i16 %.2.i, ptr %i.ks, align 1
  br label %xhci_create_usb3x_bos_desc.exit

xhci_create_usb3x_bos_desc.exit:                  ; preds = %._crit_edge.thread.i, %bb.v, %bb.w, %.loopexit.i
  %.0.in.i = phi i16 [ %i.kr, %.loopexit.i ], [ %5, %._crit_edge.thread.i ], [ %5, %bb.v ], [ %i.gv, %bb.w ]
  %.0.i273 = zext i16 %.0.in.i to i32
  br label %bb.fd

bb.ai:                                            ; preds = %xhci_get_rhub.exit
  %i.kt = and i16 %3, 255
  %i.ku = zext nneg i16 %i.kt to i32
  %i.kv = add nsw i32 %i.ku, -1                   ; 3 uses
  %i.kw = icmp ult i32 %i.kv, %i.o
  br i1 %i.kw, label %bb.aj, label %xhci_hub_descriptor.exit

bb.aj:                                            ; preds = %bb.ai
  %i.kx = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.ky = getelementptr [8 x i8], ptr %i.m, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8            ; 3 uses
  %i.la = tail call i32 @xhci_portsc_readl(ptr noundef %i.kz) #9 ; 15 uses
  %i.lb = icmp eq i32 %i.la, -1
  br i1 %i.lb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @xhci_hc_died(ptr noundef %i.f) #9
  br label %xhci_hub_descriptor.exit

bb.al:                                            ; preds = %bb.aj
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_get_port_status, i64 8), i1 false) #10
          to label %trace_xhci_get_port_status.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.al
  %i.lc = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !24
  %i.ld = zext i32 %i.lc to i64
  %i.le = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ld) #10, !srcloc !25 ; 2 uses
  %i.lf = icmp ult i8 %i.le, 2
  tail call void @llvm.assume(i1 %i.lf)
  %i.lg = trunc nuw i8 %i.le to i1
  br i1 %i.lg, label %bb.am, label %trace_xhci_get_port_status.exit

bb.am:                                            ; preds = %arch_test_bit.exit.i.i
  %i.lh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lh, ptr elementtype(i64) %i.lh) #10, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !27
  %i.li = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_get_port_status, i64 56), align 8 ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.li, null
  br i1 %.not.i.i275, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = tail call i32 @__SCT__tp_func_xhci_get_port_status(ptr noundef %i.lk, ptr noundef %i.kz, i32 noundef range(i32 0, -1) %i.la) #9 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  %i.lm = getelementptr i8, ptr %i.lh, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lm, ptr elementtype(i64) %i.lm) #10, !srcloc !29
  br label %trace_xhci_get_port_status.exit

trace_xhci_get_port_status.exit:                  ; preds = %bb.al, %arch_test_bit.exit.i.i, %bb.ao
  %i.ln = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i.i276 = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i276, label %bb.ap, label %xhci_get_rhub.exit.i

bb.ap:                                            ; preds = %trace_xhci_get_port_status.exit
  %i.lo = getelementptr i8, ptr %0, i64 528
  %i.lp = load ptr, ptr %i.lo, align 8
  br label %xhci_get_rhub.exit.i

xhci_get_rhub.exit.i:                             ; preds = %bb.ap, %trace_xhci_get_port_status.exit
  %.0.i.i.i = phi ptr [ %i.lp, %bb.ap ], [ %0, %trace_xhci_get_port_status.exit ]
  %i.lq = load i32, ptr %i.j, align 8
  %i.lr = icmp sgt i32 %i.lq, 63                  ; 2 uses
  %.0.v.i.i = select i1 %i.lr, i64 1120, i64 1048
  %.0.i.i277 = getelementptr i8, ptr %.0.i.i.i, i64 %.0.v.i.i
  %i.ls = load ptr, ptr %.0.i.i277, align 8
  %i.lt = getelementptr [8 x i8], ptr %i.ls, i64 %i.kx
  %i.lu = load ptr, ptr %i.lt, align 8            ; 15 uses
  %i.lv = lshr i32 %i.la, 1
  %.3.i = and i32 %i.lv, 1769472                  ; 2 uses
  %i.lw = and i32 %i.la, 1
  %.not22.i = icmp eq i32 %i.lw, 0
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %xhci_get_rhub.exit.i
  %i.lx = and i32 %i.la, 15360                    ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.lx, 3072
  %switch.selectcmp4.i.i = icmp eq i32 %i.lx, 2048
  %i.ly = select i1 %switch.selectcmp.i.i, i32 1025, i32 1
  %i.lz = select i1 %switch.selectcmp4.i.i, i32 513, i32 %i.ly
  %i.ma = or disjoint i32 %i.lz, %.3.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %xhci_get_rhub.exit.i
  %.4.i = phi i32 [ %.3.i, %xhci_get_rhub.exit.i ], [ %i.ma, %bb.aq ]
  %i.mb = and i32 %i.la, 26
  %.7.i = or i32 %.4.i, %i.mb                     ; 6 uses
  %i.mc = getelementptr i8, ptr %i.lu, i64 16     ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8            ; 14 uses
  br i1 %i.lr, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.me = getelementptr i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8            ; 3 uses
  %i.mg = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %i.mf) #9
  %.not.i.i27.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i27.i, label %bb.at, label %hcd_to_xhci.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.mh = getelementptr i8, ptr %i.mf, i64 528
  %i.mi = load ptr, ptr %i.mh, align 8
  br label %hcd_to_xhci.exit.i.i

hcd_to_xhci.exit.i.i:                             ; preds = %bb.at, %bb.as
  %.0.i.i28.i = phi ptr [ %i.mi, %bb.at ], [ %i.mf, %bb.as ] ; 6 uses
  %i.mj = getelementptr i8, ptr %.0.i.i28.i, i64 584 ; 2 uses
  %i.mk = load ptr, ptr %i.mc, align 8
  %i.ml = getelementptr i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = and i32 %i.la, 480                      ; 6 uses
  %i.mo = getelementptr i8, ptr %i.lu, i64 12
  %i.mp = load i32, ptr %i.mo, align 4            ; 3 uses
  %i.mq = and i32 %i.la, 4194304
  %i.mr = icmp ne i32 %i.mq, 0
  %i.ms = icmp ne i32 %i.mn, 480
  %or.cond.i.i = and i1 %i.mr, %i.ms
  %i.mt = or i32 %.7.i, 4194304
  %spec.select54.i = select i1 %or.cond.i.i, i32 %i.mt, i32 %.7.i
  %i.mu = shl i32 %i.la, 2
  %i.mv = and i32 %i.mu, 2097152
  %i.mw = and i32 %i.la, 8389120
  %.11.i = or disjoint i32 %i.mv, %i.mw
  %.13.i = or i32 %.11.i, %spec.select54.i        ; 4 uses
  switch i32 %i.mn, label %bb.au [
    i32 480, label %bb.aw
    i32 256, label %bb.aw
    i32 96, label %bb.aw
  ]

bb.au:                                            ; preds = %hcd_to_xhci.exit.i.i
  %i.mx = getelementptr i8, ptr %i.md, i64 48     ; 2 uses
  %i.my = load i32, ptr %i.mx, align 8            ; 2 uses
  %i.mz = shl nuw i32 1, %i.mp                    ; 2 uses
  %i.na = and i32 %i.my, %i.mz
  %.not37.i.i = icmp eq i32 %i.na, 0
  %.pre.i.i280 = xor i32 %i.mz, -1                ; 2 uses
  br i1 %.not37.i.i, label %._crit_edge.i.i281, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nb = and i32 %i.my, %.pre.i.i280
  store i32 %i.nb, ptr %i.mx, align 8
  tail call void @usb_hcd_end_port_resume(ptr noundef %i.mm, i32 noundef %i.mp) #9
  br label %._crit_edge.i.i281

._crit_edge.i.i281:                               ; preds = %bb.av, %bb.au
  %i.nc = getelementptr i8, ptr %i.md, i64 44     ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = and i32 %i.nd, %.pre.i.i280
  store i32 %i.ne, ptr %i.nc, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i281, %hcd_to_xhci.exit.i.i, %hcd_to_xhci.exit.i.i, %hcd_to_xhci.exit.i.i
  %i.nf = and i32 %i.la, 16777216
  %.not.i38.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i38.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not13.i.i.i = icmp eq i32 %i.mn, 192
  %spec.store.select.i.i.i = select i1 %.not13.i.i.i, i32 192, i32 320
  %i.ng = or i32 %.13.i, 1
  br label %xhci_hub_report_usb3_link_state.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  switch i32 %i.mn, label %.fold.split.i.i.i [
    i32 480, label %xhci_hub_report_usb3_link_state.exit.i.i
    i32 320, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.nh = getelementptr i8, ptr %.0.i.i28.i, i64 1024
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = lshr i32 %i.nj, 14
  %i.nl = and i32 %i.nk, 1
  %spec.select55.i = or i32 %i.nl, %.13.i
  br label %xhci_hub_report_usb3_link_state.exit.i.i

.fold.split.i.i.i:                                ; preds = %bb.ay
  br label %xhci_hub_report_usb3_link_state.exit.i.i

xhci_hub_report_usb3_link_state.exit.i.i:         ; preds = %.fold.split.i.i.i, %bb.az, %bb.ay, %bb.ax
  %.14.i = phi i32 [ %.13.i, %.fold.split.i.i.i ], [ %.13.i, %bb.ay ], [ %spec.select55.i, %bb.az ], [ %i.ng, %bb.ax ]
  %.0.i39.i.i = phi i32 [ %i.mn, %.fold.split.i.i.i ], [ 96, %bb.ay ], [ 320, %bb.az ], [ %spec.store.select.i.i.i, %bb.ax ]
  %i.nm = or i32 %.0.i39.i.i, %.14.i              ; 4 uses
  %i.nn = getelementptr i8, ptr %.0.i.i28.i, i64 1128
  %i.no = load i32, ptr %i.nn, align 8
  %notmask.i.i.i = shl nsw i32 -1, %i.no
  %i.np = xor i32 %notmask.i.i.i, -1              ; 2 uses
  %i.nq = getelementptr i8, ptr %.0.i.i28.i, i64 1024
  %i.nr = load i64, ptr %i.nq, align 8
  %i.ns = and i64 %i.nr, 16384
  %.not.i40.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not.i40.i.i, label %xhci_get_port_status.exit, label %bb.ba

bb.ba:                                            ; preds = %xhci_hub_report_usb3_link_state.exit.i.i
  %i.nt = icmp eq i32 %i.mn, 0
  %i.nu = getelementptr i8, ptr %.0.i.i28.i, i64 1256 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8            ; 2 uses
  %i.nw = icmp ne i32 %i.nv, %i.np
  %or.cond.i.i.i = and i1 %i.nt, %i.nw
  br i1 %or.cond.i.i.i, label %bb.bb, label %xhci_get_port_status.exit

bb.bb:                                            ; preds = %bb.ba
  %i.nx = shl nuw i32 1, %i.mp
  %i.ny = or i32 %i.nv, %i.nx                     ; 2 uses
  store i32 %i.ny, ptr %i.nu, align 8
  %i.nz = icmp eq i32 %i.ny, %i.np
  br i1 %i.nz, label %bb.bc, label %xhci_get_port_status.exit

bb.bc:                                            ; preds = %bb.bb
  %i.oa = getelementptr i8, ptr %.0.i.i28.i, i64 1216
  %i.ob = tail call i32 @timer_delete_sync(ptr noundef %i.oa) #9 ; 0 uses
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.mj, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.6) #9
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.mj, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.7) #9
  br label %xhci_get_port_status.exit

bb.bd:                                            ; preds = %bb.ar
  %i.oc = and i32 %i.la, 480                      ; 3 uses
  %i.od = getelementptr i8, ptr %i.lu, i64 12     ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4            ; 5 uses
  %i.of = and i32 %i.la, 512
  %.not.i29.i = icmp eq i32 %i.of, 0
  br i1 %.not.i29.i, label %bb.bw, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.og = icmp eq i32 %i.oc, 96
  %spec.select.v.i.i = select i1 %i.og, i32 260, i32 256
  %spec.select.i.i = or i32 %.7.i, %spec.select.v.i.i ; 5 uses
  switch i32 %i.oc, label %bb.bx [
    i32 64, label %.thread.i.i
    i32 0, label %bb.bf
    i32 480, label %bb.bh
    i32 96, label %xhci_get_port_status.exit
  ]

.thread.i.i:                                      ; preds = %bb.be
  %i.oh = or i32 %.7.i, 288
  br label %bb.bx

bb.bf:                                            ; preds = %bb.be
  %i.oi = getelementptr i8, ptr %i.md, i64 44     ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4            ; 2 uses
  %i.ok = shl nuw i32 1, %i.oe                    ; 3 uses
  %i.ol = and i32 %i.oj, %i.ok
  %.not48.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not48.i.i, label %bb.bx, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.om = xor i32 %i.ok, -1
  %i.on = and i32 %i.oj, %i.om
  store i32 %i.on, ptr %i.oi, align 4
  %i.oo = getelementptr i8, ptr %i.md, i64 40     ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8
  %i.oq = or i32 %i.op, %i.ok
  store i32 %i.oq, ptr %i.oo, align 8
  br label %bb.bx

bb.bh:                                            ; preds = %bb.be
  %i.or = getelementptr i8, ptr %i.md, i64 16
  %i.os = load ptr, ptr %i.or, align 8            ; 7 uses
  %i.ot = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %i.os) #9
  %.not.i.i.i.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i.i.i.i, label %bb.bi, label %hcd_to_xhci.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ou = getelementptr i8, ptr %i.os, i64 528
  %i.ov = load ptr, ptr %i.ou, align 8
  br label %hcd_to_xhci.exit.i.i.i

hcd_to_xhci.exit.i.i.i:                           ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i = phi ptr [ %i.ov, %bb.bi ], [ %i.os, %bb.bh ] ; 3 uses
  %i.ow = getelementptr i8, ptr %.0.i.i.i.i, i64 584 ; 3 uses
  %i.ox = load i32, ptr %i.od, align 4            ; 6 uses
  %i.oy = and i32 %i.la, 18
  %or.cond62.not.i.i.i = icmp eq i32 %i.oy, 2
  br i1 %or.cond62.not.i.i.i, label %bb.bj, label %xhci_get_port_status.exit

bb.bj:                                            ; preds = %hcd_to_xhci.exit.i.i.i
  %i.oz = getelementptr i8, ptr %i.lu, i64 40     ; 4 uses
  %i.pa = load i64, ptr %i.oz, align 8            ; 2 uses
  %.not59.i.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not59.i.i.i, label %arch_test_bit.exit.i.i.i, label %bb.bk

arch_test_bit.exit.i.i.i:                         ; preds = %bb.bj
  %i.pb = sext i32 %i.ox to i64                   ; 2 uses
  %i.pc = getelementptr i8, ptr %i.md, i64 56
  %i.pd = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.pc, i64 range(i64 -2147483648, 4294967296) %i.pb) #10, !srcloc !25 ; 2 uses
  %i.pe = icmp ult i8 %i.pd, 2
  tail call void @llvm.assume(i1 %i.pe)
  %i.pf = trunc nuw i8 %i.pd to i1
  br i1 %i.pf, label %bb.bt, label %arch_set_bit.exit.i.i.i

arch_set_bit.exit.i.i.i:                          ; preds = %arch_test_bit.exit.i.i.i
  %i.pg = load volatile i64, ptr @jiffies, align 64
  %i.ph = add i64 %i.pg, 40                       ; 2 uses
  %i.pi = getelementptr i8, ptr %i.md, i64 56
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.pi, i64 range(i64 -2147483648, 2147483648) %i.pb) #10, !srcloc !30
  store i64 %i.ph, ptr %i.oz, align 8
  %i.pj = getelementptr i8, ptr %i.os, i64 184
  %i.pk = tail call i32 @mod_timer(ptr noundef %i.pj, i64 noundef %i.ph) #9 ; 0 uses
  tail call void @usb_hcd_start_port_resume(ptr noundef %i.os, i32 noundef %i.ox) #9
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.pl = load volatile i64, ptr @jiffies, align 64
  %i.pm = sub i64 %i.pl, %i.pa
  %i.pn = icmp sgt i64 %i.pm, -1
  br i1 %i.pn, label %arch_clear_bit.exit.i.i.i, label %bb.bt

arch_clear_bit.exit.i.i.i:                        ; preds = %bb.bk
  store i64 0, ptr %i.oz, align 8
  %i.po = getelementptr i8, ptr %i.md, i64 56
  %i.pp = sext i32 %i.ox to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.po, i64 range(i64 -2147483648, 4294967296) %i.pp) #10, !srcloc !31
  %i.pq = getelementptr i8, ptr %i.lu, i64 56     ; 2 uses
  store i32 0, ptr %i.pq, align 8
  %i.pr = getelementptr i8, ptr %i.lu, i64 48
  store i8 1, ptr %i.pr, align 8
  %i.ps = tail call i32 @xhci_portsc_readl(ptr noundef %i.lu) #9 ; 2 uses
  %i.pt = and i32 %i.ps, 4194304
  %.not.i63.i.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i63.i.i.i, label %xhci_test_and_clear_bit.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %arch_clear_bit.exit.i.i.i
  %i.pu = and i32 %i.ps, 1312882665
  tail call void @xhci_portsc_writel(ptr noundef %i.lu, i32 noundef %i.pu) #9
  br label %xhci_test_and_clear_bit.exit.i.i.i

xhci_test_and_clear_bit.exit.i.i.i:               ; preds = %bb.bl, %arch_clear_bit.exit.i.i.i
  %i.pv = tail call i32 @xhci_portsc_readl(ptr noundef %i.lu) #9
  %i.pw = and i32 %i.pv, 1308687881
  %i.px = or disjoint i32 %i.pw, 65536
  tail call void @xhci_portsc_writel(ptr noundef %i.lu, i32 noundef %i.px) #9
  %i.py = getelementptr i8, ptr %.0.i.i.i.i, i64 648 ; 2 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.py, i64 noundef %i.q) #9
  %i.pz = tail call i64 @wait_for_completion_timeout(ptr noundef %i.pq, i64 noundef 20) #9
  %i.qa = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.py) #9
  store i64 %i.qa, ptr %i.b, align 8
  %i.qb = and i64 %i.pz, 4294967295
  %.not60.i.i.i = icmp eq i64 %i.qb, 0
  br i1 %.not60.i.i.i, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %xhci_test_and_clear_bit.exit.i.i.i
  %i.qc = getelementptr i8, ptr %i.lu, i64 52
  %i.qd = load i32, ptr %i.qc, align 4            ; 4 uses
  %.not61.i.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not61.i.i.i, label %xhci_get_port_status.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qe = getelementptr i8, ptr %.0.i.i.i.i, i64 928
  %i.qf = sext i32 %i.qd to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.i.i.i.i, %bb.bn
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %indvars.iv.next.i.i.i.i, %.loopexit.i.i.i.i ] ; 4 uses
  %i.qg = load ptr, ptr %i.qe, align 8
  %i.qh = getelementptr [8 x i8], ptr %i.qg, i64 %i.qf
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = getelementptr i8, ptr %i.qi, i64 32
  %i.qk = getelementptr [160 x i8], ptr %i.qj, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 44
  %i.qm = load i32, ptr %i.ql, align 4
  %i.qn = and i32 %i.qm, 16
  %.not.i64.i.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not.i64.i.i.i, label %bb.bp, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bo
  %i.qo = getelementptr i8, ptr %i.qk, i64 24     ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = icmp ugt i32 %i.qr, 1
  br i1 %i.qs, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.qt = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.021.i.i.i.i = phi i32 [ %i.qu, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  tail call void @xhci_ring_ep_doorbell(ptr noundef %i.ow, i32 noundef %i.qd, i32 noundef %i.qt, i32 noundef %.021.i.i.i.i) #9
  %i.qu = add nuw i32 %.021.i.i.i.i, 1            ; 2 uses
  %i.qv = load ptr, ptr %i.qo, align 8
  %i.qw = getelementptr i8, ptr %i.qv, i64 8
  %i.qx = load i32, ptr %i.qw, align 8
  %i.qy = icmp ult i32 %i.qu, %i.qx
  br i1 %i.qy, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !10

bb.bp:                                            ; preds = %bb.bo
  %i.qz = getelementptr i8, ptr %i.qk, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8            ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.ra, null
  br i1 %.not19.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rb = getelementptr i8, ptr %i.ra, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8
  %.not20.i.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not20.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rd = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  tail call void @xhci_ring_ep_doorbell(ptr noundef %i.ow, i32 noundef %i.qd, i32 noundef %i.rd, i32 noundef 0) #9
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.br, %bb.bq, %bb.bp, %.preheader.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 31
  br i1 %exitcond.not.i.i.i.i, label %.critedge.i.i.i, label %bb.bo, !llvm.loop !12

bb.bs:                                            ; preds = %xhci_test_and_clear_bit.exit.i.i.i
  %i.re = tail call i32 @xhci_portsc_readl(ptr noundef %i.lu) #9
  %.val.i.i.i = load ptr, ptr %i.ow, align 8
  %i.rf = load ptr, ptr %.val.i.i.i, align 8
  %i.rg = getelementptr i8, ptr %i.os, i64 16
  %i.rh = load i32, ptr %i.rg, align 8
  %i.ri = add i32 %i.ox, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.rf, ptr noundef nonnull @.str.8, i32 noundef %i.rh, i32 noundef %i.ri, i32 noundef %i.re) #11
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.loopexit.i.i.i.i, %bb.bs
  tail call void @usb_hcd_end_port_resume(ptr noundef %i.os, i32 noundef %i.ox) #9
  %i.rj = shl nuw i32 1, %i.ox                    ; 2 uses
  %i.rk = getelementptr i8, ptr %i.md, i64 40     ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 8
  %i.rm = or i32 %i.rl, %i.rj
  store i32 %i.rm, ptr %i.rk, align 8
  %i.rn = xor i32 %i.rj, -1
  %i.ro = getelementptr i8, ptr %i.md, i64 44     ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4
  %i.rq = and i32 %i.rp, %i.rn
  store i32 %i.rq, ptr %i.ro, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge.i.i.i, %bb.bk, %arch_set_bit.exit.i.i.i, %arch_test_bit.exit.i.i.i
  %i.rr = load i64, ptr %i.oz, align 8
  %.not49.i.i = icmp eq i64 %i.rr, 0
  br i1 %.not49.i.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.rs = getelementptr i8, ptr %i.lu, i64 48
  %i.rt = load i8, ptr %i.rs, align 8, !range !32, !noundef !33
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.rv = or i32 %.7.i, 260
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bd
  %.15.i = phi i32 [ %.7.i, %bb.bd ], [ %i.rv, %bb.bv ], [ %spec.select.i.i, %bb.bu ] ; 3 uses
  switch i32 %i.oc, label %bb.bx [
    i32 480, label %xhci_get_port_status.exit
    i32 96, label %xhci_get_port_status.exit
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bg, %bb.bf, %.thread.i.i, %bb.be
  %.16.i = phi i32 [ %.15.i, %bb.bw ], [ %spec.select.i.i, %bb.be ], [ %i.oh, %.thread.i.i ], [ %spec.select.i.i, %bb.bf ], [ %spec.select.i.i, %bb.bg ]
  %i.rw = getelementptr i8, ptr %i.lu, i64 40     ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8
  %.not50.i.i = icmp eq i64 %i.rx, 0
  br i1 %.not50.i.i, label %arch_test_bit.exit.i.i278, label %._crit_edge.i30.i

._crit_edge.i30.i:                                ; preds = %bb.bx
  %.pre.i31.i = zext i32 %i.oe to i64
  br label %arch_clear_bit.exit.i.i

arch_test_bit.exit.i.i278:                        ; preds = %bb.bx
  %i.ry = getelementptr i8, ptr %i.md, i64 56
  %i.rz = zext i32 %i.oe to i64                   ; 2 uses
  %i.sa = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ry, i64 range(i64 -2147483648, 4294967296) %i.rz) #10, !srcloc !25 ; 2 uses
  %i.sb = icmp ult i8 %i.sa, 2
  tail call void @llvm.assume(i1 %i.sb)
  %i.sc = trunc nuw i8 %i.sa to i1
  br i1 %i.sc, label %arch_clear_bit.exit.i.i, label %bb.by

arch_clear_bit.exit.i.i:                          ; preds = %arch_test_bit.exit.i.i278, %._crit_edge.i30.i
  %.pre-phi.i.i = phi i64 [ %.pre.i31.i, %._crit_edge.i30.i ], [ %i.rz, %arch_test_bit.exit.i.i278 ]
  store i64 0, ptr %i.rw, align 8
  %i.sd = getelementptr i8, ptr %i.md, i64 56
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.sd, i64 range(i64 -2147483648, 4294967296) %.pre-phi.i.i) #10, !srcloc !31
  %i.se = load ptr, ptr %i.mc, align 8
  %i.sf = getelementptr i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8
  tail call void @usb_hcd_end_port_resume(ptr noundef %i.sg, i32 noundef %i.oe) #9
  br label %bb.by

bb.by:                                            ; preds = %arch_clear_bit.exit.i.i, %arch_test_bit.exit.i.i278
  %i.sh = getelementptr i8, ptr %i.lu, i64 48
  store i8 0, ptr %i.sh, align 8
  %i.si = shl nuw i32 1, %i.oe
  %i.sj = xor i32 %i.si, -1
  %i.sk = getelementptr i8, ptr %i.md, i64 44     ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4
  %i.sm = and i32 %i.sl, %i.sj
  store i32 %i.sm, ptr %i.sk, align 4
  br label %xhci_get_port_status.exit

xhci_get_port_status.exit:                        ; preds = %xhci_hub_report_usb3_link_state.exit.i.i, %bb.ba, %bb.bb, %bb.bc, %bb.be, %hcd_to_xhci.exit.i.i.i, %bb.bm, %bb.bw, %bb.bw, %bb.by
  %.8.i = phi i32 [ %i.nm, %bb.bc ], [ %i.nm, %xhci_hub_report_usb3_link_state.exit.i.i ], [ %i.nm, %bb.ba ], [ %i.nm, %bb.bb ], [ %.16.i, %bb.by ], [ %.15.i, %bb.bw ], [ %.15.i, %bb.bw ], [ %spec.select.i.i, %bb.be ], [ -1, %bb.bm ], [ -1, %hcd_to_xhci.exit.i.i.i ] ; 2 uses
  %i.sn = getelementptr i8, ptr %.0.i271, i64 40
  %i.so = load i32, ptr %i.sn, align 8
  %i.sp = shl nuw i32 1, %i.kv
  %i.sq = and i32 %i.so, %i.sp
  %.not26.i = icmp eq i32 %i.sq, 0
  %i.sr = or i32 %.8.i, 262144
  %spec.select56.i = select i1 %.not26.i, i32 %.8.i, i32 %i.sr ; 2 uses
  %i.ss = icmp eq i32 %spec.select56.i, -1
  br i1 %i.ss, label %xhci_hub_descriptor.exit, label %bb.bz

bb.bz:                                            ; preds = %xhci_get_port_status.exit
  store i32 %spec.select56.i, ptr %4, align 1
  %i.st = icmp eq i16 %2, 2
  br i1 %i.st, label %bb.ca, label %xhci_hub_descriptor.exit

bb.ca:                                            ; preds = %bb.bz
  %i.su = load i32, ptr %i.j, align 8
  %i.sv = icmp slt i32 %i.su, 80
  %i.sw = icmp ne i16 %5, 8
  %or.cond5 = or i1 %i.sw, %i.sv
  br i1 %or.cond5, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %.val269 = load ptr, ptr %i.f, align 8
  %i.sx = load ptr, ptr %.val269, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.sx, ptr noundef nonnull @.str) #11
  br label %xhci_hub_descriptor.exit

bb.cc:                                            ; preds = %bb.ca
  %i.sy = load ptr, ptr %i.kz, align 8
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.sz) #10, !srcloc !13
  %i.tb = lshr i32 %i.la, 10
  %i.tc = and i32 %i.tb, 15                       ; 2 uses
  %i.td = shl nuw nsw i32 %i.tc, 4
  %i.te = lshr i32 %i.ta, 8
  %i.tf = and i32 %i.te, 65280
  %i.tg = or disjoint i32 %i.tf, %i.td
  %i.th = or disjoint i32 %i.tg, %i.tc
  %i.ti = getelementptr i8, ptr %4, i64 4
  store i32 %i.th, ptr %i.ti, align 1
  br label %xhci_hub_descriptor.exit

bb.cd:                                            ; preds = %xhci_get_rhub.exit
  %i.tj = and i16 %3, 255
  %i.tk = zext nneg i16 %i.tj to i32              ; 3 uses
  %i.tl = add nsw i32 %i.tk, -1                   ; 5 uses
  %i.tm = icmp ult i32 %i.tl, %i.o
  br i1 %i.tm, label %bb.ce, label %xhci_hub_descriptor.exit

bb.ce:                                            ; preds = %bb.cd
  %i.tn = zext nneg i32 %i.tl to i64
  %i.to = getelementptr [8 x i8], ptr %i.m, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8            ; 51 uses
  %i.tq = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 2 uses
  %i.tr = icmp eq i32 %i.tq, -1
  br i1 %i.tr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void @xhci_hc_died(ptr noundef %i.f) #9
  br label %xhci_hub_descriptor.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ts = and i32 %i.tq, 1308688361               ; 2 uses
  switch i16 %2, label %xhci_hub_descriptor.exit [
    i16 2, label %bb.ch
    i16 5, label %bb.co
    i16 8, label %bb.dz
    i16 4, label %bb.ea
    i16 27, label %bb.eb
    i16 28, label %bb.ec
    i16 23, label %bb.ed
    i16 24, label %bb.ef
    i16 21, label %bb.eh
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.tt = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.tu = and i32 %i.tt, 480
  %.not258 = icmp eq i32 %i.tu, 0
  br i1 %.not258, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.tv = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.tw = and i32 %i.tv, 1308687881
  %i.tx = or disjoint i32 %i.tw, 65536
  tail call void @xhci_portsc_writel(ptr noundef %i.tp, i32 noundef %i.tx) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #9
  tail call void @msleep(i32 noundef 10) #9
  %i.ty = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9 ; 2 uses
  store i64 %i.ty, ptr %i.b, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.tz = phi i64 [ %i.ty, %bb.ci ], [ %i.q, %bb.ch ]
  %i.ua = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 2 uses
  %i.ub = and i32 %i.ua, 18
  %or.cond263 = icmp ne i32 %i.ub, 2
  %i.uc = and i32 %i.ua, 480
  %i.ud = icmp samesign ugt i32 %i.uc, 95
  %or.cond265 = select i1 %or.cond263, i1 true, i1 %i.ud
  br i1 %or.cond265, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val268 = load ptr, ptr %i.f, align 8
  %i.ue = load ptr, ptr %.val268, align 8
  %i.uf = getelementptr i8, ptr %0, i64 16
  %i.ug = load i32, ptr %i.uf, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ue, ptr noundef nonnull @.str.1, i32 noundef %i.ug, i32 noundef %i.tk) #11
  br label %xhci_hub_descriptor.exit

bb.cl:                                            ; preds = %bb.cj
  %i.uh = getelementptr i8, ptr %i.tp, i64 52     ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4
  %.not260 = icmp eq i32 %i.ui, 0
  br i1 %.not260, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.val267 = load ptr, ptr %i.f, align 8
  %i.uj = load ptr, ptr %.val267, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.uj, ptr noundef nonnull @.str.2) #11
  br label %xhci_hub_descriptor.exit

bb.cn:                                            ; preds = %bb.cl
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.tz) #9
  %i.uk = load i32, ptr %i.uh, align 4
  tail call fastcc void @xhci_stop_device(ptr noundef %i.f, i32 noundef %i.uk) #12
  %i.ul = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9
  tail call void @xhci_set_link_state(ptr poison, ptr noundef %i.tp, i32 noundef 96) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.ul) #9
  tail call void @msleep(i32 noundef 10) #9
  %i.um = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9
  store i64 %i.um, ptr %i.b, align 8
  %i.un = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  %i.uo = shl nuw i32 1, %i.tl
  %i.up = getelementptr i8, ptr %.0.i271, i64 44  ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = or i32 %i.uq, %i.uo
  store i32 %i.ur, ptr %i.up, align 4
  br label %.thread283

bb.co:                                            ; preds = %bb.cg
  %i.us = lshr i16 %3, 3
  %i.ut = and i16 %i.us, 8160                     ; 4 uses
  %i.uu = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 4 uses
  %i.uv = zext nneg i16 %i.ut to i32
  switch i16 %i.ut, label %bb.cv [
    i16 128, label %bb.cp
    i16 160, label %bb.cq
    i16 320, label %bb.cr
  ]

bb.cp:                                            ; preds = %bb.co
  %i.uw = and i32 %i.uu, 1308688361
  %i.ux = or disjoint i32 %i.uw, 16646146
  tail call void @xhci_portsc_writel(ptr noundef %i.tp, i32 noundef %i.ux) #9
  %i.uy = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.cq:                                            ; preds = %bb.co
  tail call void @xhci_set_link_state(ptr poison, ptr noundef %i.tp, i32 noundef 160) #12
  %i.uz = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.cr:                                            ; preds = %bb.co
  %i.va = getelementptr i8, ptr %.0.i, i64 644
  %i.vb = load i32, ptr %i.va, align 4
  %i.vc = and i32 %i.vb, 8
  %.not256 = icmp eq i32 %i.vc, 0
  br i1 %.not256, label %.thread283, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vd = and i32 %i.uu, 1
  %.not257 = icmp eq i32 %i.vd, 0
  br i1 %.not257, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val266 = load ptr, ptr %i.f, align 8
  %i.ve = load ptr, ptr %.val266, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ve, ptr noundef nonnull @.str.3) #11
  br label %xhci_hub_descriptor.exit
end_hunk_0
begin_hunk_1_@xhci_hub_control:bb.a
  br i1 %i.vh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %.val = load ptr, ptr %i.f, align 8
  %i.vi = load ptr, ptr %.val, align 8
  %i.vj = getelementptr i8, ptr %0, i64 16
  %i.vk = load i32, ptr %i.vj, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.vi, ptr noundef nonnull @.str.4, i32 noundef %i.vk, i32 noundef %i.tk, i32 noundef %i.uv) #11
  br label %xhci_hub_descriptor.exit

bb.cy:                                            ; preds = %bb.cw
  switch i16 %i.ut, label %.thread283 [
    i16 0, label %bb.cz
    i16 96, label %bb.dg
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.vl = and i32 %i.uu, 480                      ; 5 uses
  switch i32 %i.vl, label %bb.db [
    i32 0, label %.thread283
    i32 480, label %bb.da
    i32 256, label %bb.da
    i32 96, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz
  %i.vm = getelementptr i8, ptr %i.tp, i64 88
  store i32 0, ptr %i.vm, align 8
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.vn = icmp samesign ult i32 %i.vl, 97
  br i1 %i.vn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.vo = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.vp = and i32 %i.vo, 1308687881
  %i.vq = or disjoint i32 %i.vp, 65536
  tail call void @xhci_portsc_writel(ptr noundef %i.tp, i32 noundef %i.vq) #9
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  switch i32 %i.vl, label %bb.de [
    i32 480, label %bb.df
    i32 256, label %bb.df
    i32 96, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  %i.vr = icmp samesign ugt i32 %i.vl, 96
  br i1 %i.vr, label %xhci_hub_descriptor.exit, label %.thread283

bb.df:                                            ; preds = %bb.dd, %bb.dd, %bb.dd
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #9
  %i.vs = getelementptr i8, ptr %i.tp, i64 88
  %i.vt = tail call i64 @wait_for_completion_timeout(ptr noundef %i.vs, i64 noundef 500) #9 ; 0 uses
  %i.vu = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9
  store i64 %i.vu, ptr %i.b, align 8
  %i.vv = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.dg:                                            ; preds = %bb.cy
  %i.vw = getelementptr i8, ptr %i.tp, i64 52     ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 4
  %.not254 = icmp eq i32 %i.vx, 0
  br i1 %.not254, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #9
  %i.vy = load i32, ptr %i.vw, align 4
  tail call fastcc void @xhci_stop_device(ptr noundef %i.f, i32 noundef %i.vy) #12
  %i.vz = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9 ; 2 uses
  store i64 %i.vz, ptr %i.b, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.wa = phi i64 [ %i.vz, %bb.dh ], [ %i.q, %bb.dg ]
  tail call void @xhci_set_link_state(ptr poison, ptr noundef %i.tp, i32 noundef 96) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.wa) #9
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wb = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wc = and i32 %i.wb, 480
  %i.wd = icmp eq i32 %i.wc, 96
  br i1 %i.wd, label %bb.dy, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.we = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wf = and i32 %i.we, 480
  %i.wg = icmp eq i32 %i.wf, 96
  br i1 %i.wg, label %bb.dy, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wh = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wi = and i32 %i.wh, 480
  %i.wj = icmp eq i32 %i.wi, 96
  br i1 %i.wj, label %bb.dy, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wk = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wl = and i32 %i.wk, 480
  %i.wm = icmp eq i32 %i.wl, 96
  br i1 %i.wm, label %bb.dy, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wn = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wo = and i32 %i.wn, 480
  %i.wp = icmp eq i32 %i.wo, 96
  br i1 %i.wp, label %bb.dy, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wq = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wr = and i32 %i.wq, 480
  %i.ws = icmp eq i32 %i.wr, 96
  br i1 %i.ws, label %bb.dy, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wt = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wu = and i32 %i.wt, 480
  %i.wv = icmp eq i32 %i.wu, 96
  br i1 %i.wv, label %bb.dy, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.ww = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.wx = and i32 %i.ww, 480
  %i.wy = icmp eq i32 %i.wx, 96
  br i1 %i.wy, label %bb.dy, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.wz = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xa = and i32 %i.wz, 480
  %i.xb = icmp eq i32 %i.xa, 96
  br i1 %i.xb, label %bb.dy, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xc = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xd = and i32 %i.xc, 480
  %i.xe = icmp eq i32 %i.xd, 96
  br i1 %i.xe, label %bb.dy, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xf = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xg = and i32 %i.xf, 480
  %i.xh = icmp eq i32 %i.xg, 96
  br i1 %i.xh, label %bb.dy, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xi = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xj = and i32 %i.xi, 480
  %i.xk = icmp eq i32 %i.xj, 96
  br i1 %i.xk, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xl = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xm = and i32 %i.xl, 480
  %i.xn = icmp eq i32 %i.xm, 96
  br i1 %i.xn, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xo = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xp = and i32 %i.xo, 480
  %i.xq = icmp eq i32 %i.xp, 96
  br i1 %i.xq, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xr = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9
  %i.xs = and i32 %i.xr, 480
  %i.xt = icmp eq i32 %i.xs, 96
  br i1 %i.xt, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @usleep_range_state(i64 noundef 4000, i64 noundef 8000, i32 noundef 2) #9
  %i.xu = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di
  %i.xv = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9
  store i64 %i.xv, ptr %i.b, align 8
  %i.xw = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  %i.xx = shl nuw i32 1, %i.tl
  %i.xy = getelementptr i8, ptr %.0.i271, i64 44  ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4
  %i.ya = or i32 %i.xz, %i.xx
  store i32 %i.ya, ptr %i.xy, align 4
  br label %.thread283

bb.dz:                                            ; preds = %bb.cg
  call fastcc void @xhci_set_port_power(ptr noundef %i.f, ptr noundef %i.tp, i1 noundef zeroext true, ptr noundef nonnull %i.b) #12, !srcloc !34
  br label %.thread283

bb.ea:                                            ; preds = %bb.cg
  %i.yb = or disjoint i32 %i.ts, 16
  tail call void @xhci_portsc_writel(ptr noundef %i.tp, i32 noundef %i.yb) #9
  %i.yc = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.eb:                                            ; preds = %bb.cg
  %i.yd = and i16 %3, -256
  tail call fastcc void @xhci_set_remote_wake_mask(ptr noundef %i.tp, i16 noundef zeroext %i.yd) #12
  %i.ye = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.ec:                                            ; preds = %bb.cg
  %i.yf = or disjoint i32 %i.ts, -2147483648
  tail call void @xhci_portsc_writel(ptr noundef %i.tp, i32 noundef %i.yf) #9
  %i.yg = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %.thread283

bb.ed:                                            ; preds = %bb.cg
  %i.yh = load i32, ptr %i.j, align 8
  %i.yi = icmp slt i32 %i.yh, 64
  br i1 %i.yi, label %xhci_hub_descriptor.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.yj = lshr i16 %3, 8
  %i.yk = zext nneg i16 %i.yj to i32
  %i.yl = load ptr, ptr %i.tp, align 8
  %i.ym = getelementptr i8, ptr %i.yl, i64 4
  %i.yn = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ym) #10, !srcloc !13
  %i.yo = and i32 %i.yn, -256
  %i.yp = or disjoint i32 %i.yo, %i.yk
  %i.yq = load ptr, ptr %i.tp, align 8
  %i.yr = getelementptr i8, ptr %i.yq, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.yp, ptr elementtype(i32) %i.yr) #10, !srcloc !35
  br label %.thread283

bb.ef:                                            ; preds = %bb.cg
  %i.ys = load i32, ptr %i.j, align 8
  %i.yt = icmp slt i32 %i.ys, 64
  br i1 %i.yt, label %xhci_hub_descriptor.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.yu = and i16 %3, -256
  %i.yv = load ptr, ptr %i.tp, align 8
  %i.yw = getelementptr i8, ptr %i.yv, i64 4
  %i.yx = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.yw) #10, !srcloc !13
  %i.yy = and i32 %i.yx, -65281
  %i.yz = zext i16 %i.yu to i32
  %i.za = or disjoint i32 %i.yy, %i.yz
  %i.zb = load ptr, ptr %i.tp, align 8
  %i.zc = getelementptr i8, ptr %i.zb, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.za, ptr elementtype(i32) %i.zc) #10, !srcloc !35
  br label %.thread283

bb.eh:                                            ; preds = %bb.cg
  %i.zd = load i32, ptr %i.j, align 8
  %.not252 = icmp eq i32 %i.zd, 32
  br i1 %.not252, label %bb.ei, label %xhci_hub_descriptor.exit

bb.ei:                                            ; preds = %bb.eh
  %i.ze = lshr i16 %3, 8                          ; 2 uses
  %i.zf = icmp ugt i16 %3, 1535
  %i.zg = icmp eq i16 %i.ze, 0
  %or.cond12 = or i1 %i.zf, %i.zg
  br i1 %or.cond12, label %xhci_hub_descriptor.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.zh = call fastcc i32 @xhci_enter_test_mode(ptr noundef %i.f, i16 noundef zeroext %i.ze, i32 noundef %i.tl, ptr noundef nonnull %i.b) #12, !srcloc !36
  br label %.thread283

.thread283:                                       ; preds = %bb.de, %bb.df, %bb.cz, %bb.cy, %bb.cv, %bb.dy, %bb.cr, %bb.ej, %bb.eg, %bb.ee, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.cu, %bb.cq, %bb.cp, %bb.cn
  %.1 = phi i32 [ 0, %bb.cn ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.cu ], [ 0, %bb.cr ], [ -19, %bb.cv ], [ 0, %bb.dy ], [ 0, %bb.cy ], [ %i.zh, %bb.ej ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %bb.ee ], [ 0, %bb.eg ], [ %i.vl, %bb.cz ], [ 0, %bb.df ], [ 0, %bb.de ]
  %i.zi = tail call i32 @xhci_portsc_readl(ptr noundef %i.tp) #9 ; 0 uses
  br label %xhci_hub_descriptor.exit

bb.ek:                                            ; preds = %xhci_get_rhub.exit
  %i.zj = and i16 %3, 255
  %i.zk = zext nneg i16 %i.zj to i32
  %i.zl = add nsw i32 %i.zk, -1                   ; 6 uses
  %i.zm = icmp ult i32 %i.zl, %i.o
  br i1 %i.zm, label %bb.el, label %xhci_hub_descriptor.exit

bb.el:                                            ; preds = %bb.ek
  %i.zn = zext nneg i32 %i.zl to i64              ; 3 uses
  %i.zo = getelementptr [8 x i8], ptr %i.m, i64 %i.zn
  %i.zp = load ptr, ptr %i.zo, align 8            ; 10 uses
  %i.zq = tail call i32 @xhci_portsc_readl(ptr noundef %i.zp) #9 ; 2 uses
  %i.zr = icmp eq i32 %i.zq, -1
  br i1 %i.zr, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  tail call void @xhci_hc_died(ptr noundef %i.f) #9
  br label %xhci_hub_descriptor.exit

bb.en:                                            ; preds = %bb.el
  %i.zs = and i32 %i.zq, 1308688361
  switch i16 %2, label %xhci_hub_descriptor.exit [
    i16 2, label %bb.eo
    i16 18, label %.thread285
    i16 21, label %bb.fc
    i16 8, label %bb.fb
    i16 1, label %bb.fa
    i16 20, label %bb.ez
    i16 29, label %bb.et
    i16 16, label %bb.eu
    i16 19, label %bb.ev
    i16 17, label %bb.ew
    i16 25, label %bb.ex
    i16 26, label %bb.ey
  ]

bb.eo:                                            ; preds = %bb.en
  %i.zt = tail call i32 @xhci_portsc_readl(ptr noundef %i.zp) #9 ; 3 uses
  %i.zu = and i32 %i.zt, 16
  %.not = icmp eq i32 %i.zu, 0
  br i1 %.not, label %bb.ep, label %xhci_hub_descriptor.exit

bb.ep:                                            ; preds = %bb.eo
  %i.zv = and i32 %i.zt, 480
  %i.zw = icmp eq i32 %i.zv, 96
  br i1 %i.zw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.zx = and i32 %i.zt, 2
  %i.zy = icmp eq i32 %i.zx, 0
  br i1 %i.zy, label %xhci_hub_descriptor.exit, label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.eq
  %i.zz = getelementptr i8, ptr %.0.i271, i64 56  ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.zz, i64 range(i64 -2147483648, 2147483648) %i.zn) #10, !srcloc !30
  tail call void @usb_hcd_start_port_resume(ptr noundef %0, i32 noundef %i.zl) #9
  tail call void @xhci_set_link_state(ptr poison, ptr noundef %i.zp, i32 noundef 480) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #9
  tail call void @msleep(i32 noundef 40) #9
  %i.aaa = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #9
  store i64 %i.aaa, ptr %i.b, align 8
  %i.aab = tail call i32 @xhci_portsc_readl(ptr noundef %i.zp) #9
  %i.aac = and i32 %i.aab, 1308687881
  %i.aad = or disjoint i32 %i.aac, 65536
  tail call void @xhci_portsc_writel(ptr noundef %i.zp, i32 noundef %i.aad) #9
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.zz, i64 range(i64 -2147483648, 4294967296) %i.zn) #10, !srcloc !31
  tail call void @usb_hcd_end_port_resume(ptr noundef %0, i32 noundef %i.zl) #9
  br label %bb.er

bb.er:                                            ; preds = %arch_set_bit.exit, %bb.ep
  %i.aae = shl nuw i32 1, %i.zl
  %i.aaf = getelementptr i8, ptr %.0.i271, i64 40 ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 8
  %i.aah = or i32 %i.aag, %i.aae
  store i32 %i.aah, ptr %i.aaf, align 8
  %i.aai = getelementptr i8, ptr %i.zp, i64 52
  %i.aaj = load i32, ptr %i.aai, align 4          ; 2 uses
  %.not251 = icmp eq i32 %i.aaj, 0
  br i1 %.not251, label %xhci_hub_descriptor.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @xhci_ring_device(ptr noundef %i.f, i32 noundef %i.aaj) #12
  br label %xhci_hub_descriptor.exit

.thread285:                                       ; preds = %bb.en
  %i.aak = shl nuw i32 1, %i.zl
  %i.aal = xor i32 %i.aak, -1
  %i.aam = getelementptr i8, ptr %.0.i271, i64 40 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 8
  %i.aao = and i32 %i.aan, %i.aal
  store i32 %i.aao, ptr %i.aam, align 8
  br label %bb.ex

bb.et:                                            ; preds = %bb.en
  br label %bb.ez

bb.eu:                                            ; preds = %bb.en
  br label %bb.ez

bb.ev:                                            ; preds = %bb.en
  br label %bb.ez

bb.ew:                                            ; preds = %bb.en
  br label %bb.ez

bb.ex:                                            ; preds = %bb.en, %.thread285
  br label %bb.ez

bb.ey:                                            ; preds = %bb.en
  br label %bb.ez

bb.ez:                                            ; preds = %bb.en, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et
  %.0.i282 = phi i32 [ 8388608, %bb.ey ], [ 524288, %bb.et ], [ 131072, %bb.eu ], [ 1048576, %bb.ev ], [ 262144, %bb.ew ], [ 4194304, %bb.ex ], [ 2097152, %bb.en ]
  %i.aap = or disjoint i32 %.0.i282, %i.zs
  tail call void @xhci_portsc_writel(ptr noundef %i.zp, i32 noundef %i.aap) #9
  %i.aaq = tail call i32 @xhci_portsc_readl(ptr noundef %i.zp) #9 ; 0 uses
  br label %xhci_hub_descriptor.exit

bb.fa:                                            ; preds = %bb.en
  tail call fastcc void @xhci_disable_port(ptr noundef %i.f, ptr noundef %i.zp) #12, !srcloc !37
  br label %xhci_hub_descriptor.exit

bb.fb:                                            ; preds = %bb.en
  call fastcc void @xhci_set_port_power(ptr noundef %i.f, ptr noundef %i.zp, i1 noundef zeroext false, ptr noundef nonnull %i.b) #12, !srcloc !38
  br label %xhci_hub_descriptor.exit

bb.fc:                                            ; preds = %bb.en
  %i.aar = tail call fastcc i32 @xhci_exit_test_mode(ptr noundef %i.f) #12, !srcloc !39
  br label %xhci_hub_descriptor.exit

xhci_hub_descriptor.exit:                         ; preds = %bb.en, %bb.ez, %bb.de, %xhci_usb2_hub_descriptor.exit.i, %xhci_usb3_hub_descriptor.exit.i, %bb.ck, %bb.cm, %bb.ct, %bb.cx, %bb.f, %bb.j, %bb.k, %bb.ai, %xhci_get_port_status.exit, %bb.cd, %bb.ed, %bb.ef, %bb.eh, %bb.ei, %bb.cg, %bb.ek, %bb.eo, %bb.eq, %bb.er, %xhci_get_rhub.exit, %bb.cb, %bb.cc, %bb.es, %bb.fa, %bb.fb, %bb.fc, %bb.bz, %bb.em, %.thread283, %bb.cf, %bb.ak, %bb.d
  %.2 = phi i32 [ 0, %bb.cc ], [ 0, %bb.d ], [ -32, %bb.ck ], [ -19, %bb.ak ], [ %i.aar, %bb.fc ], [ 0, %bb.bz ], [ -19, %bb.cf ], [ %.1, %.thread283 ], [ -19, %bb.em ], [ 0, %bb.es ], [ -32, %bb.de ], [ 0, %bb.fa ], [ 0, %bb.fb ], [ -22, %bb.cb ], [ 0, %xhci_usb2_hub_descriptor.exit.i ], [ -32, %xhci_get_rhub.exit ], [ -32, %bb.en ], [ -32, %bb.er ], [ -32, %bb.eq ], [ -32, %bb.eo ], [ -32, %bb.ek ], [ -32, %bb.cg ], [ -32, %bb.ei ], [ -32, %bb.eh ], [ -32, %bb.ef ], [ -32, %bb.ed ], [ -32, %bb.cd ], [ -32, %xhci_get_port_status.exit ], [ -32, %bb.ai ], [ -32, %bb.k ], [ -32, %bb.j ], [ -32, %bb.f ], [ -32, %bb.cx ], [ -32, %bb.ct ], [ -32, %bb.cm ], [ 0, %xhci_usb3_hub_descriptor.exit.i ], [ 0, %bb.ez ]
  %i.aas = load i64, ptr %i.b, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %xhci_hub_descriptor.exit, %xhci_create_usb3x_bos_desc.exit
  %.sink = phi i64 [ %i.aas, %xhci_hub_descriptor.exit ], [ %i.q, %xhci_create_usb3x_bos_desc.exit ]
  %.0 = phi i32 [ %.2, %xhci_hub_descriptor.exit ], [ %.0.i273, %xhci_create_usb3x_bos_desc.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %.sink) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_hc_died(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @xhci_stop_device(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_stop_device, i64 8), i1 false) #10
          to label %trace_xhci_stop_device.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.b
  %i.f = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !40
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.g) #10, !srcloc !25 ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %bb.c, label %trace_xhci_stop_device.exit

bb.c:                                             ; preds = %arch_test_bit.exit.i.i
  %i.k = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #10, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !27
  %i.l = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_stop_device, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @__SCT__tp_func_xhci_stop_device(ptr noundef %i.n, ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  %i.p = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, ptr elementtype(i64) %i.p) #10, !srcloc !29
  br label %trace_xhci_stop_device.exit

trace_xhci_stop_device.exit:                      ; preds = %bb.b, %arch_test_bit.exit.i.i, %bb.e
  %i.q = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext true, i32 noundef 3072) #9 ; 5 uses
  %.not61 = icmp eq ptr %i.q, null
  br i1 %.not61, label %bb.s, label %bb.f

bb.f:                                             ; preds = %trace_xhci_stop_device.exit
  %i.r = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.s = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.r) #9 ; 4 uses
  %i.t = getelementptr i8, ptr %i.e, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.n
  %indvars.iv = phi i64 [ 30, %bb.f ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.u = getelementptr [160 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not63 = icmp eq ptr %i.w, null
  br i1 %.not63, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %.not64 = icmp eq ptr %i.y, null
  br i1 %.not64, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %i.z, i32 noundef %i.aa) #9
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 7
  %.not65 = icmp eq i32 %i.ad, 1
  br i1 %.not65, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext false, i32 noundef 10240) #9 ; 3 uses
  %.not66 = icmp eq ptr %i.ae, null
  br i1 %.not66, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #9
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.af = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %0, ptr noundef nonnull %i.ae, i32 noundef %1, i32 noundef %i.aa, i32 noundef 1) #9
  %.not67 = icmp eq i32 %i.af, 0
  br i1 %.not67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #9
  tail call void @xhci_free_command(ptr noundef %0, ptr noundef nonnull %i.ae) #9
  br label %.thread

bb.n:                                             ; preds = %bb.i, %bb.l, %bb.g, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ag, label %bb.g, label %bb.o, !llvm.loop !41

bb.o:                                             ; preds = %bb.n
  %i.ah = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef %1, i32 noundef 0, i32 noundef 1) #9
  %.not62 = icmp eq i32 %i.ah, 0
  br i1 %.not62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #9
  br label %.thread

bb.q:                                             ; preds = %bb.o
  tail call void @xhci_ring_cmd_db(ptr noundef %0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.r, i64 noundef %i.s) #9
  %i.ai = getelementptr i8, ptr %i.q, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void @wait_for_completion(ptr noundef %i.aj) #9
  %i.ak = getelementptr i8, ptr %i.q, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, -2
  %switch = icmp eq i32 %i.am, 24
  br i1 %switch, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %0, align 8
  %i.an = load ptr, ptr %.val, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.an, ptr noundef nonnull @.str.9) #11
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.q, %bb.r, %bb.p
  tail call void @xhci_free_command(ptr noundef %0, ptr noundef nonnull %i.q) #9
  br label %bb.s

bb.s:                                             ; preds = %trace_xhci_stop_device.exit, %bb.a, %.thread
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_timeout(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @xhci_set_port_power(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9
  %i.f = and i32 %i.e, 1308687849                 ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.f, 512
  tail call void @xhci_portsc_writel(ptr noundef %1, i32 noundef %i.g) #9
  %i.h = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @xhci_portsc_writel(ptr noundef %1, i32 noundef %i.f) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.j = load i64, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.i, i64 noundef %i.j) #9
  %i.k = getelementptr i8, ptr %i.d, i64 88       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call zeroext i1 @usb_acpi_power_manageable(ptr noundef %i.l, i32 noundef %i.n) #9
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = load i32, ptr %i.m, align 4
  %i.r = tail call i32 @usb_acpi_set_power_state(ptr noundef %i.p, i32 noundef %i.q, i1 noundef zeroext %2) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.i) #9
  store i64 %i.s, ptr %3, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @xhci_set_remote_wake_mask(ptr noundef %0, i16 noundef zeroext range(i16 0, -255) %1) unnamed_addr #1 align 16 {
bb.a:
  %i.a = tail call i32 @xhci_portsc_readl(ptr noundef %0) #9
  %i.b = and i32 %i.a, 1275133929
  %i.c = zext i16 %1 to i32                       ; 3 uses
  %i.d = shl i32 %i.c, 17
  %i.e = and i32 %i.d, 33554432
  %.0 = or disjoint i32 %i.b, %i.e                ; 2 uses
  %i.f = and i32 %i.c, 512
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = or i32 %.0, 67108864
  %i.h = and i32 %.0, 1241579497
  %.1 = select i1 %.not12, i32 %i.h, i32 %i.g     ; 2 uses
  %i.i = and i32 %i.c, 1024
  %.not13 = icmp eq i32 %i.i, 0
  %i.j = or i32 %.1, 134217728
  %i.k = and i32 %.1, 1174470633
  %.2 = select i1 %.not13, i32 %i.k, i32 %i.j
  tail call void @xhci_portsc_writel(ptr noundef %0, i32 noundef %.2) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @xhci_enter_test_mode(ptr noundef %0, i16 noundef zeroext range(i16 0, 256) %1, i32 noundef range(i32 -1, 255) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 6 uses
  %i.b = load i64, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #9
  %i.c = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %.not43 = icmp eq i8 %i.d, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 344
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %.not39 = icmp eq ptr %i.h, null
  br i1 %.not39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.j = tail call i32 @xhci_disable_and_free_slot(ptr noundef %0, i32 noundef %i.i) #9 ; 2 uses
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val41 = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %.val41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.k, ptr noundef nonnull @.str.10, i32 noundef %i.i, i32 noundef %i.j) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.l = load i8, ptr %i.c, align 8
  %i.m = zext i8 %i.l to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.m
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.n = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #9
  store i64 %i.n, ptr %3, align 8
  %i.o = getelementptr i8, ptr %0, i64 544        ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.preheader, label %.lr.ph47

.lr.ph47:                                         ; preds = %._crit_edge
  %i.q = getelementptr i8, ptr %0, i64 536
  br label %bb.f

.preheader:                                       ; preds = %xhci_set_port_power.exit, %._crit_edge
  %i.r = getelementptr i8, ptr %0, i64 472        ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader
  %i.t = getelementptr i8, ptr %0, i64 464
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph47, %xhci_set_port_power.exit
  %.145 = phi i32 [ 0, %.lr.ph47 ], [ %i.ao, %xhci_set_port_power.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = sext i32 %.145 to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @xhci_portsc_readl(ptr noundef %i.x) #9
  %i.ad = and i32 %i.ac, 1308687849
  tail call void @xhci_portsc_writel(ptr noundef %i.x, i32 noundef %i.ad) #9
  %i.ae = load i64, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.ae) #9
  %i.af = getelementptr i8, ptr %i.ab, i64 88     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.x, i64 12      ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call zeroext i1 @usb_acpi_power_manageable(ptr noundef %i.ag, i32 noundef %i.ai) #9
  br i1 %i.aj, label %bb.g, label %xhci_set_port_power.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = load i32, ptr %i.ah, align 4
  %i.am = tail call i32 @usb_acpi_set_power_state(ptr noundef %i.ak, i32 noundef %i.al, i1 noundef zeroext false) #9 ; 0 uses
  br label %xhci_set_port_power.exit

xhci_set_port_power.exit:                         ; preds = %bb.f, %bb.g
  %i.an = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #9
  store i64 %i.an, ptr %3, align 8
  %i.ao = add nuw i32 %.145, 1                    ; 2 uses
  %i.ap = load i32, ptr %i.o, align 8
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %.preheader, !llvm.loop !43

bb.h:                                             ; preds = %.lr.ph49, %xhci_set_port_power.exit42
  %.248 = phi i32 [ 0, %.lr.ph49 ], [ %i.bl, %xhci_set_port_power.exit42 ] ; 2 uses
  %i.ar = load ptr, ptr %i.t, align 8
  %i.as = sext i32 %.248 to i64
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call i32 @xhci_portsc_readl(ptr noundef %i.au) #9
  %i.ba = and i32 %i.az, 1308687849
  tail call void @xhci_portsc_writel(ptr noundef %i.au, i32 noundef %i.ba) #9
  %i.bb = load i64, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.bb) #9
  %i.bc = getelementptr i8, ptr %i.ay, i64 88     ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.au, i64 12     ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call zeroext i1 @usb_acpi_power_manageable(ptr noundef %i.bd, i32 noundef %i.bf) #9
  br i1 %i.bg, label %bb.i, label %xhci_set_port_power.exit42

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = load i32, ptr %i.be, align 4
  %i.bj = tail call i32 @usb_acpi_set_power_state(ptr noundef %i.bh, i32 noundef %i.bi, i1 noundef zeroext false) #9 ; 0 uses
  br label %xhci_set_port_power.exit42

xhci_set_port_power.exit42:                       ; preds = %bb.h, %bb.i
  %i.bk = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #9
  store i64 %i.bk, ptr %3, align 8
  %i.bl = add nuw i32 %.248, 1                    ; 2 uses
  %i.bm = load i32, ptr %i.r, align 8
  %i.bn = icmp ult i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %._crit_edge50, !llvm.loop !44

._crit_edge50:                                    ; preds = %xhci_set_port_power.exit42, %.preheader
  %i.bo = tail call i32 @xhci_halt(ptr noundef %0) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.bo, 0
  br i1 %.not38, label %bb.j, label %xhci_port_set_test_mode.exit

bb.j:                                             ; preds = %._crit_edge50
  %.val = load ptr, ptr %0, align 8
  %i.bp = load ptr, ptr %.val, align 8
  tail call void @pm_runtime_forbid(ptr noundef %i.bp) #9
  %i.bq = getelementptr i8, ptr %0, i64 464
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = sext i32 %2 to i64
  %i.bt = getelementptr [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %i.bx = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bw) #10, !srcloc !13
  %i.by = zext nneg i16 %1 to i32
  %i.bz = shl i32 %i.by, 28
  %i.ca = or i32 %i.bx, %i.bz
  %i.cb = load ptr, ptr %i.bu, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ca, ptr elementtype(i32) %i.cc) #10, !srcloc !35
  %i.cd = getelementptr i8, ptr %0, i64 676
  store i16 %1, ptr %i.cd, align 4
  %i.ce = icmp eq i16 %1, 5
  br i1 %i.ce, label %bb.k, label %xhci_port_set_test_mode.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = tail call i32 @xhci_start(ptr noundef %0) #9 ; 0 uses
  br label %xhci_port_set_test_mode.exit

xhci_port_set_test_mode.exit:                     ; preds = %bb.k, %bb.j, %._crit_edge50
  ret i32 %i.bo
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_hcd_start_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_hcd_end_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @xhci_disable_port(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 152
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 63
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 440
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 33554432
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9
  %i.l = and i32 %i.k, 1308688361
  %i.m = or disjoint i32 %i.l, 2
  tail call void @xhci_portsc_writel(ptr noundef %1, i32 noundef %i.m) #9
  %i.n = tail call i32 @xhci_portsc_readl(ptr noundef %1) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @xhci_exit_test_mode(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 676        ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  switch i16 %i.b, label %bb.e [
    i16 0, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.val14 = load ptr, ptr %0, align 8
  %i.c = load ptr, ptr %.val14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.c, ptr noundef nonnull @.str.19) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 400
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 2
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @xhci_halt(ptr noundef %0) #9 ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.val = load ptr, ptr %0, align 8
  %i.h = load ptr, ptr %.val, align 8
  tail call void @pm_runtime_allow(ptr noundef %i.h) #9
  store i16 0, ptr %i.a, align 4
  %i.i = tail call i32 @xhci_reset(ptr noundef %0, i64 noundef 250000) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ %i.i, %bb.e ], [ 0, %bb.b ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -268435456, 268435456) i32 @xhci_hub_status_data(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 584
  %i.e = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %xhci_get_rhub.exit

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.f = getelementptr i8, ptr %0, i64 528
  %i.g = load ptr, ptr %i.f, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %hcd_to_xhci.exit, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %0, %hcd_to_xhci.exit ]
  %i.h = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 63
  %.0.v.i = select i1 %i.j, i64 1120, i64 1048
  %.0.i54 = getelementptr i8, ptr %.0.i.i, i64 %.0.v.i ; 4 uses
  %i.k = load ptr, ptr %.0.i54, align 8
  %i.l = getelementptr i8, ptr %.0.i54, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = add i32 %i.m, 8
  %i.o = sdiv i32 %i.n, 8                         ; 3 uses
  %i.p = sext i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr i8, ptr %.0.i, i64 648     ; 2 uses
  %i.r = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.q) #9
  %i.s = getelementptr i8, ptr %.0.i54, i64 56
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = load i32, ptr %i.h, align 8
  %i.w = icmp sgt i32 %i.v, 63
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %xhci_get_rhub.exit
  %i.x = getelementptr i8, ptr %.0.i, i64 992     ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load volatile i64, ptr @jiffies, align 64
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %xhci_get_rhub.exit
  %.0 = phi i32 [ %i.u, %xhci_get_rhub.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %i.ac = icmp sgt i32 %i.m, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %.0.i54, i64 40
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.162 = phi i32 [ %.0, %.lr.ph ], [ %.3, %bb.r ] ; 3 uses
  %.04461 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.r ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @xhci_portsc_readl(ptr noundef %i.af) #9 ; 5 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @xhci_hc_died(ptr noundef %i.d) #9
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ae, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_hub_status_data, i64 8), i1 false) #10
          to label %trace_xhci_hub_status_data.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.j
  %i.aj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !45
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ak) #10, !srcloc !25 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %bb.k, label %trace_xhci_hub_status_data.exit

bb.k:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ao = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ao, ptr elementtype(i64) %i.ao) #10, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !27
  %i.ap = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_hub_status_data, i64 56), align 8 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i32 @__SCT__tp_func_xhci_hub_status_data(ptr noundef %i.ar, ptr noundef %i.ai, i32 noundef range(i32 0, -1) %i.ag) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  %i.at = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.at, ptr elementtype(i64) %i.at) #10, !srcloc !29
  br label %trace_xhci_hub_status_data.exit

trace_xhci_hub_status_data.exit:                  ; preds = %bb.j, %arch_test_bit.exit.i.i, %bb.m
  %i.au = and i32 %i.ag, 14548992
  %.not49 = icmp eq i32 %i.au, 0
  br i1 %.not49, label %bb.n, label %bb.q

bb.n:                                             ; preds = %trace_xhci_hub_status_data.exit
  %i.av = load i32, ptr %i.ad, align 8
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.av, %i.ax
  %.not50 = icmp eq i32 %i.ay, 0
  br i1 %.not50, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.ae, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 40
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %.not51 = icmp eq i64 %i.bb, 0
  br i1 %.not51, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load volatile i64, ptr @jiffies, align 64
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp sgt i64 %i.bd, -1
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.n, %trace_xhci_hub_status_data.exit
  %i.bf = trunc i64 %indvars.iv to i32
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  %i.bh = and i32 %i.bg, 7
  %i.bi = shl nuw nsw i32 1, %i.bh
  %i.bj = lshr i32 %i.bg, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = trunc nuw i32 %i.bi to i8
  %i.bo = or i8 %i.bm, %i.bn
  store i8 %i.bo, ptr %i.bl, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.2 = phi i32 [ 1, %bb.q ], [ %.162, %bb.p ], [ %.162, %bb.o ]
  %i.bp = and i32 %i.ag, 2097152
  %.not52 = icmp ne i32 %i.bp, 0
  %spec.select = select i1 %.not52, i1 true, i1 %.04461 ; 2 uses
  %i.bq = and i32 %i.ag, 8
  %.not53 = icmp eq i32 %i.bq, 0
  %.3 = select i1 %.not53, i32 %.2, i32 1         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !46

.loopexit:                                        ; preds = %bb.r, %bb.g, %bb.i
  %.04459 = phi i1 [ %.04461, %bb.i ], [ false, %bb.g ], [ %spec.select, %bb.r ]
  %.157 = phi i32 [ %.162, %bb.i ], [ %.0, %bb.g ], [ %.3, %bb.r ]
  %.046 = phi i32 [ -19, %bb.i ], [ %i.o, %bb.g ], [ %i.o, %bb.r ]
  %i.br = icmp ne i32 %.157, 0                    ; 2 uses
  %or.cond = select i1 %i.br, i1 true, i1 %.04459
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.bs = getelementptr i8, ptr %0, i64 320       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bs, i32 -5, ptr elementtype(i8) %i.bs) #10, !srcloc !47
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.q, i64 noundef %i.r) #9
  %i.bt = select i1 %i.br, i32 %.046, i32 0
  ret i32 %i.bt
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -16, 1) i32 @xhci_bus_suspend(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [31 x i32], align 16              ; 5 uses
  %i.b = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 528
  %i.d = load ptr, ptr %i.c, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.e = getelementptr i8, ptr %.0.i, i64 584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false), !annotation !48
  %i.f = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %xhci_get_rhub.exit

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.g = getelementptr i8, ptr %0, i64 528
  %i.h = load ptr, ptr %i.g, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %hcd_to_xhci.exit, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ %0, %hcd_to_xhci.exit ]
  %i.i = getelementptr i8, ptr %0, i64 152        ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 63
  %.0.v.i = select i1 %i.k, i64 1120, i64 1048
  %.0.i117 = getelementptr i8, ptr %.0.i.i, i64 %.0.v.i ; 6 uses
  %i.l = load ptr, ptr %.0.i117, align 8          ; 3 uses
  %i.m = getelementptr i8, ptr %.0.i117, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %.0.i117, i64 24   ; 6 uses
  %i.p = getelementptr i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 1336
  %i.s = load i8, ptr %i.r, align 8
  %i.t = trunc i8 %i.s to i1                      ; 3 uses
  %i.u = getelementptr i8, ptr %.0.i, i64 648     ; 9 uses
  %i.v = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.u) #9 ; 3 uses
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %xhci_get_rhub.exit
  %i.w = getelementptr i8, ptr %.0.i117, i64 56
  %i.x = load i64, ptr %i.w, align 8
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.0.i117, i64 48
  %i.z = load i32, ptr %i.y, align 8
  %.not101 = icmp eq i32 %i.z, 0
  br i1 %.not101, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %i.v) #9
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %xhci_get_rhub.exit
  store i64 0, ptr %i.o, align 8
  %.not102140 = icmp eq i32 %i.n, 0
  br i1 %.not102140, label %._crit_edge146, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %.0.i, i64 1024
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %bb.t
  %.in = phi i32 [ %i.n, %.preheader120.lr.ph ], [ %i.ab, %bb.t ]
  %.092141 = phi i64 [ %i.v, %.preheader120.lr.ph ], [ %.193.lcssa, %bb.t ] ; 2 uses
  %i.ab = add i32 %.in, -1                        ; 4 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.l, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 @xhci_portsc_readl(ptr noundef %i.ae) #9 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.ac ; 3 uses
  store i32 0, ptr %i.ag, align 4
  %i.ah = load i32, ptr %i.i, align 8
  %i.ai = icmp sgt i32 %i.ah, 63
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader120, %bb.h
  %i.aj = phi i32 [ %i.ap, %bb.h ], [ %i.af, %.preheader120 ] ; 2 uses
  %.193129 = phi i64 [ %i.an, %bb.h ], [ %.092141, %.preheader120 ] ; 2 uses
  %.095128 = phi i32 [ %i.am, %bb.h ], [ 10, %.preheader120 ] ; 2 uses
  %.not107 = icmp ne i32 %.095128, 0
  %i.ak = and i32 %i.aj, 480
  %i.al = icmp eq i32 %i.ak, 224
  %or.cond114 = and i1 %.not107, %i.al
  br i1 %or.cond114, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.am = add nsw i32 %.095128, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %.193129) #9
  tail call void @msleep(i32 noundef 36) #9
  %i.an = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.u) #9 ; 2 uses
  %i.ao = load ptr, ptr %i.ad, align 8
  %i.ap = tail call i32 @xhci_portsc_readl(ptr noundef %i.ao) #9 ; 2 uses
  store i32 0, ptr %i.ag, align 4
  %i.aq = load i32, ptr %i.i, align 8
  %i.ar = icmp sgt i32 %i.aq, 63
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %.preheader120
  %.lcssa = phi i32 [ %i.af, %.preheader120 ], [ %i.aj, %.lr.ph ], [ %i.ap, %bb.h ] ; 6 uses
  %.193.lcssa = phi i64 [ %.092141, %.preheader120 ], [ %.193129, %.lr.ph ], [ %i.an, %bb.h ] ; 4 uses
  %i.as = and i32 %.lcssa, 1308688361             ; 2 uses
  %i.at = and i32 %.lcssa, 8
  %.not108 = icmp eq i32 %i.at, 0
  br i1 %.not108, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.o, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %.193.lcssa) #9
  br label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.au = and i32 %.lcssa, 482
  %or.cond116 = icmp eq i32 %i.au, 2
  br i1 %or.cond116, label %bb.k, label %arch_set_bit.exit

bb.k:                                             ; preds = %bb.j
  %i.av = and i32 %.lcssa, 131072
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond = select i1 %i.aw, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.o, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %.193.lcssa) #9
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ax = and i32 %.lcssa, 1308687873
  %i.ay = or disjoint i32 %i.ax, 65632
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, i64 range(i64 -2147483648, 2147483648) %i.ac) #10, !srcloc !30
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.m, %bb.j
  %.096 = phi i32 [ %i.as, %bb.j ], [ %i.ay, %bb.m ] ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.q

bb.n:                                             ; preds = %arch_set_bit.exit
  %i.az = and i32 %.lcssa, 1
  %.not110 = icmp eq i32 %i.az, 0
  %i.ba = and i32 %.096, -234881025               ; 2 uses
  %.197.v = select i1 %.not110, i32 167772160, i32 201326592
  %.197 = or disjoint i32 %i.ba, %.197.v          ; 3 uses
  %i.bb = load i64, ptr %i.aa, align 8
  %i.bc = and i64 %i.bb, 134217728
  %.not111 = icmp eq i64 %i.bc, 0
  br i1 %.not111, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %i.i, align 8
  %i.be = icmp slt i32 %i.bd, 64
  br i1 %i.be, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = tail call zeroext i1 @usb_amd_pt_check_port(ptr noundef %i.bf, i32 noundef %i.ab) #9
  %spec.select = select i1 %i.bg, i32 %i.ba, i32 %.197
  br label %bb.r

bb.q:                                             ; preds = %arch_set_bit.exit
  %i.bh = and i32 %.096, -234881025
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.q
  %.298 = phi i32 [ %i.bh, %bb.q ], [ %spec.select, %bb.p ], [ %.197, %bb.o ], [ %.197, %bb.n ] ; 2 uses
  %.not112 = icmp eq i32 %i.as, %.298
  br i1 %.not112, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.298, ptr %i.ag, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.not102 = icmp eq i32 %i.ab, 0
  br i1 %.not102, label %.lr.ph145, label %.preheader120, !llvm.loop !49

.lr.ph145:                                        ; preds = %bb.t, %.backedge
  %.in148 = phi i32 [ %i.bi, %.backedge ], [ %i.n, %bb.t ]
  %.294144 = phi i64 [ %.294.be, %.backedge ], [ %.193.lcssa, %bb.t ] ; 4 uses
  %i.bi = add i32 %.in148, -1                     ; 3 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = getelementptr [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %.not105 = icmp eq i32 %i.bl, 0
  br i1 %.not105, label %.backedge, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %.lr.ph145
  %i.bm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, i64 range(i64 -2147483648, 4294967296) %i.bj) #10, !srcloc !25 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 2
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc nuw i8 %i.bm to i1
  br i1 %i.bo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %arch_test_bit.exit
  %i.bp = getelementptr [8 x i8], ptr %i.l, i64 %i.bj
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 52
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %.not106 = icmp eq i32 %i.bs, 0
  br i1 %.not106, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %.294144) #9
  tail call fastcc void @xhci_stop_device(ptr noundef %i.e, i32 noundef %i.bs) #12
  %i.bt = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.u) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %arch_test_bit.exit
  %.4 = phi i64 [ %.294144, %arch_test_bit.exit ], [ %.294144, %bb.u ], [ %i.bt, %bb.v ]
  %i.bu = getelementptr [8 x i8], ptr %i.l, i64 %i.bj
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void @xhci_portsc_writel(ptr noundef %i.bv, i32 noundef %i.bl) #9
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %.lr.ph145
  %.294.be = phi i64 [ %.294144, %.lr.ph145 ], [ %.4, %bb.w ] ; 2 uses
  %.not103 = icmp eq i32 %i.bi, 0
  br i1 %.not103, label %._crit_edge146, label %.lr.ph145, !llvm.loop !50

._crit_edge146:                                   ; preds = %.backedge, %bb.g
  %.294.lcssa = phi i64 [ %i.v, %bb.g ], [ %.294.be, %.backedge ]
  %i.bw = getelementptr i8, ptr %0, i64 568
  store i32 4, ptr %i.bw, align 8
  %i.bx = load volatile i64, ptr @jiffies, align 64
  %i.by = add i64 %i.bx, 10
  %i.bz = getelementptr i8, ptr %.0.i117, i64 32
  store i64 %i.by, ptr %i.bz, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %.294.lcssa) #9
  %i.ca = load i64, ptr %i.o, align 8
  %.not104 = icmp eq i64 %i.ca, 0
  br i1 %.not104, label %.critedge, label %bb.x

bb.x:                                             ; preds = %._crit_edge146
  tail call void @usleep_range_state(i64 noundef 5000, i64 noundef 10000, i32 noundef 2) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.l, %._crit_edge146, %bb.x, %bb.f
  %.2 = phi i32 [ -16, %bb.f ], [ 0, %._crit_edge146 ], [ 0, %bb.x ], [ -16, %bb.l ], [ -16, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_pt_check_port(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -108, 1) i32 @xhci_bus_resume(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i107 = icmp eq i32 %i.a, 0
  br i1 %.not.i107, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i108 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %.0.i108, i64 584  ; 4 uses
  %i.e = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %xhci_get_rhub.exit

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.f = getelementptr i8, ptr %0, i64 528
  %i.g = load ptr, ptr %i.f, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %hcd_to_xhci.exit, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %0, %hcd_to_xhci.exit ]
  %i.h = getelementptr i8, ptr %0, i64 152        ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 63
  %.0.v.i = select i1 %i.j, i64 1120, i64 1048
  %.0.i109 = getelementptr i8, ptr %.0.i.i, i64 %.0.v.i ; 4 uses
  %i.k = load ptr, ptr %.0.i109, align 8          ; 3 uses
  %i.l = getelementptr i8, ptr %.0.i109, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %.0.i109, i64 24   ; 7 uses
  %i.o = load volatile i64, ptr @jiffies, align 64
  %i.p = getelementptr i8, ptr %.0.i109, i64 32   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %xhci_get_rhub.exit
  tail call void @msleep(i32 noundef 5) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %xhci_get_rhub.exit
  %i.t = getelementptr i8, ptr %.0.i108, i64 648  ; 4 uses
  %i.u = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.t) #9 ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 320
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.ai, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.h, align 8
  %i.z = icmp sgt i32 %i.y, 63
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.n, align 8
  %.not94 = icmp eq i64 %i.aa, 0
  br i1 %.not94, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %.0.i108, i64 720
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 @xhci_disable_interrupter(ptr noundef %i.d, ptr noundef %i.ad) #9 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.090 = phi i32 [ 66016, %bb.g ], [ 66016, %bb.h ], [ 65536, %bb.f ]
  %.088 = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.f ]
  %.not95121 = icmp eq i32 %i.m, 0
  br i1 %.not95121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.0.i108, i64 1024
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.backedge
  %.in = phi i32 [ %i.m, %.lr.ph ], [ %i.ag, %.backedge ]
  %i.ag = add i32 %.in, -1                        ; 3 uses
  %i.ah = sext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr [8 x i8], ptr %i.k, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @xhci_portsc_readl(ptr noundef %i.aj) #9 ; 5 uses
  %i.al = load i64, ptr %i.af, align 8
  %i.am = and i64 %i.al, 16777216
  %.not102 = icmp eq i64 %i.am, 0
  br i1 %.not102, label %arch_test_bit.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.h, align 8
  %i.ao = icmp sgt i32 %i.an, 63
  br i1 %i.ao, label %bb.l, label %arch_test_bit.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.aq = tail call i32 @xhci_portsc_readl(ptr noundef %i.ap) #9 ; 3 uses
  %i.ar = and i32 %i.aq, 16777217
  %.not.i110 = icmp eq i32 %i.ar, 0
  br i1 %.not.i110, label %bb.m, label %arch_test_bit.exit

bb.m:                                             ; preds = %bb.l
  %i.as = and i32 %i.aq, 480
  switch i32 %i.as, label %arch_test_bit.exit [
    i32 224, label %bb.n
    i32 320, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.at = and i32 %i.aq, 1879179260
  %i.au = or disjoint i32 %i.at, -2147483648
  tail call void @xhci_portsc_writel(ptr noundef %i.ap, i32 noundef %i.au) #9
  %i.av = tail call i32 @xhci_portsc_readl(ptr noundef %i.ap) #9 ; 0 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 -2147483648, 4294967296) %i.ah) #10, !srcloc !31
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %arch_clear_bit.exit106
  %.not95 = icmp eq i32 %i.ag, 0
  br i1 %.not95, label %._crit_edge, label %bb.j, !llvm.loop !51

arch_test_bit.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 -2147483648, 4294967296) %i.ah) #10, !srcloc !25 ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 2
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc nuw i8 %i.aw to i1
  br i1 %i.ay, label %bb.o, label %arch_clear_bit.exit106

bb.o:                                             ; preds = %arch_test_bit.exit
  %i.az = and i32 %i.ak, 480
  switch i32 %i.az, label %bb.q [
    i32 96, label %bb.p
    i32 480, label %arch_clear_bit.exit106
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = and i32 %i.ak, 1308687881
  %i.bb = or disjoint i32 %i.ba, %.090
  br label %arch_clear_bit.exit106

bb.q:                                             ; preds = %bb.o
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 -2147483648, 4294967296) %i.ah) #10, !srcloc !31
  br label %arch_clear_bit.exit106

arch_clear_bit.exit106:                           ; preds = %bb.q, %bb.o, %bb.p, %arch_test_bit.exit
  %.089 = phi i32 [ %i.ak, %arch_test_bit.exit ], [ %i.bb, %bb.p ], [ %i.ak, %bb.o ], [ %i.ak, %bb.q ]
  %i.bc = and i32 %.089, -251527171
  %i.bd = load ptr, ptr %i.ai, align 8
  tail call void @xhci_portsc_writel(ptr noundef %i.bd, i32 noundef %i.bc) #9
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.i
  %i.be = load i32, ptr %i.h, align 8
  %i.bf = icmp slt i32 %i.be, 64
  br i1 %i.bf, label %bb.r, label %find_next_bit.exit105.thread

bb.r:                                             ; preds = %._crit_edge
  %i.bg = load i64, ptr %i.n, align 8
  %.not96 = icmp eq i64 %i.bg, 0
  br i1 %.not96, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.t, i64 noundef %i.u) #9
  tail call void @msleep(i32 noundef 40) #9
  %i.bh = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.t) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.085 = phi i64 [ %i.bh, %bb.s ], [ %i.u, %bb.r ] ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %xhci_test_and_clear_bit.exit
  %i.bi = phi i64 [ 0, %bb.t ], [ %i.bz, %xhci_test_and_clear_bit.exit ]
  %i.bj = load i64, ptr %i.n, align 8
  %i.bk = shl nsw i64 -1, %i.bi
  %i.bl = and i64 %i.bj, %i.bk                    ; 2 uses
  %.not.i103 = icmp eq i64 %i.bl, 0
  br i1 %.not.i103, label %find_next_bit.exit105.thread, label %find_next_bit.exit105

find_next_bit.exit105:                            ; preds = %bb.u
  %i.bm = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.bl) #13, !srcloc !52 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp slt i32 %i.bn, 64
  br i1 %i.bo, label %bb.v, label %find_next_bit.exit105.thread

bb.v:                                             ; preds = %find_next_bit.exit105
  %sext101 = shl i64 %i.bm, 32                    ; 2 uses
  %i.bp = ashr exact i64 %sext101, 29
  %i.bq = getelementptr i8, ptr %i.k, i64 %i.bp   ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = tail call i32 @xhci_portsc_readl(ptr noundef %i.br) #9 ; 2 uses
  %i.bt = and i32 %i.bs, 4194304
  %.not.i112 = icmp eq i32 %i.bt, 0
  br i1 %.not.i112, label %xhci_test_and_clear_bit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = and i32 %i.bs, 1312882665
  tail call void @xhci_portsc_writel(ptr noundef %i.br, i32 noundef %i.bu) #9
  br label %xhci_test_and_clear_bit.exit

xhci_test_and_clear_bit.exit:                     ; preds = %bb.v, %bb.w
  %i.bv = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bw = tail call i32 @xhci_portsc_readl(ptr noundef %i.bv) #9
  %i.bx = and i32 %i.bw, 1308687881
  %i.by = or disjoint i32 %i.bx, 65536
  tail call void @xhci_portsc_writel(ptr noundef %i.bv, i32 noundef %i.by) #9
  %sext = add i64 %sext101, 4294967296
  %i.bz = ashr exact i64 %sext, 32                ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 63
  br i1 %i.ca, label %find_next_bit.exit105.thread, label %bb.u, !prof !53, !llvm.loop !54

find_next_bit.exit105.thread:                     ; preds = %bb.u, %xhci_test_and_clear_bit.exit, %find_next_bit.exit105, %._crit_edge
  %.1 = phi i64 [ %i.u, %._crit_edge ], [ %.085, %find_next_bit.exit105 ], [ %.085, %xhci_test_and_clear_bit.exit ], [ %.085, %bb.u ] ; 2 uses
  %i.cb = getelementptr i8, ptr %0, i64 16
  %i.cc = getelementptr i8, ptr %.0.i108, i64 928
  br label %bb.x

bb.x:                                             ; preds = %find_next_bit.exit105.thread, %xhci_ring_device.exit
  %i.cd = phi i64 [ 0, %find_next_bit.exit105.thread ], [ %i.dy, %xhci_ring_device.exit ]
  %i.ce = load i64, ptr %i.n, align 8
  %i.cf = shl nsw i64 -1, %i.cd
  %i.cg = and i64 %i.ce, %i.cf                    ; 2 uses
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.x
  %i.ch = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.cg) #13, !srcloc !52 ; 2 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 64
  br i1 %i.cj, label %bb.y, label %find_next_bit.exit.thread

bb.y:                                             ; preds = %find_next_bit.exit
  %sext98 = shl i64 %i.ch, 32                     ; 2 uses
  %i.ck = ashr exact i64 %sext98, 29
  %i.cl = getelementptr i8, ptr %i.k, i64 %i.ck   ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call i32 @xhci_handshake(ptr noundef %i.cn, i32 noundef 4194304, i32 noundef 4194304, i64 noundef 10000) #9
  %.not99 = icmp eq i32 %i.co, 0
  br i1 %.not99, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val = load ptr, ptr %i.d, align 8
  %i.cp = load ptr, ptr %.val, align 8
  %i.cq = load i32, ptr %i.cb, align 8
  %i.cr = add nsw i32 %i.ci, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.cp, ptr noundef nonnull @.str.5, i32 noundef %i.cq, i32 noundef %i.cr) #11
  br label %xhci_ring_device.exit

bb.aa:                                            ; preds = %bb.y
  %i.cs = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.ct = tail call i32 @xhci_portsc_readl(ptr noundef %i.cs) #9 ; 2 uses
  %i.cu = and i32 %i.ct, 4194304
  %.not.i113 = icmp eq i32 %i.cu, 0
  br i1 %.not.i113, label %xhci_test_and_clear_bit.exit114, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = and i32 %i.ct, 1312882665
  tail call void @xhci_portsc_writel(ptr noundef %i.cs, i32 noundef %i.cv) #9
  br label %xhci_test_and_clear_bit.exit114

xhci_test_and_clear_bit.exit114:                  ; preds = %bb.aa, %bb.ab
  %i.cw = load ptr, ptr %i.cl, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 52
  %i.cy = load i32, ptr %i.cx, align 4            ; 4 uses
  %.not100 = icmp eq i32 %i.cy, 0
  br i1 %.not100, label %xhci_ring_device.exit, label %bb.ac

bb.ac:                                            ; preds = %xhci_test_and_clear_bit.exit114
  %i.cz = sext i32 %i.cy to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.ac
  %indvars.iv.i = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i, %.loopexit.i ] ; 4 uses
  %i.da = load ptr, ptr %i.cc, align 8
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 32
  %i.de = getelementptr [160 x i8], ptr %i.dd, i64 %indvars.iv.i ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 44
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 16
  %.not.i115 = icmp eq i32 %i.dh, 0
  br i1 %.not.i115, label %bb.ae, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ad
  %i.di = getelementptr i8, ptr %i.de, i64 24     ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = icmp ugt i32 %i.dl, 1
  br i1 %i.dm, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.dn = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi i32 [ %i.do, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  tail call void @xhci_ring_ep_doorbell(ptr noundef %i.d, i32 noundef %i.cy, i32 noundef %i.dn, i32 noundef %.021.i) #9
  %i.do = add nuw i32 %.021.i, 1                  ; 2 uses
  %i.dp = load ptr, ptr %i.di, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = icmp ult i32 %i.do, %i.dr
  br i1 %i.ds, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !10

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr i8, ptr %i.de, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not19.i = icmp eq ptr %i.du, null
  br i1 %.not19.i, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %.not20.i = icmp eq ptr %i.dw, null
  br i1 %.not20.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void @xhci_ring_ep_doorbell(ptr noundef %i.d, i32 noundef %i.cy, i32 noundef %i.dx, i32 noundef 0) #9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.ag, %bb.af, %bb.ae, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %xhci_ring_device.exit, label %bb.ad, !llvm.loop !12

xhci_ring_device.exit:                            ; preds = %.loopexit.i, %xhci_test_and_clear_bit.exit114, %bb.z
  %sext97 = add i64 %sext98, 4294967296
  %i.dy = ashr exact i64 %sext97, 32              ; 2 uses
  %i.dz = icmp ugt i64 %i.dy, 63
  br i1 %i.dz, label %find_next_bit.exit.thread, label %bb.x, !prof !53, !llvm.loop !55

find_next_bit.exit.thread:                        ; preds = %bb.x, %xhci_ring_device.exit, %find_next_bit.exit
  %i.ea = getelementptr i8, ptr %.0.i108, i64 608
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eb) #10, !srcloc !13 ; 0 uses
  %i.ed = load volatile i64, ptr @jiffies, align 64
  %i.ee = add i64 %i.ed, 5
  store i64 %i.ee, ptr %i.p, align 8
  br i1 %.088, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %find_next_bit.exit.thread
  %i.ef = getelementptr i8, ptr %.0.i108, i64 720
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call i32 @xhci_enable_interrupter(ptr noundef %i.eh) #9 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %find_next_bit.exit.thread, %bb.ah, %bb.e
  %.1.sink = phi i64 [ %i.u, %bb.e ], [ %.1, %bb.ah ], [ %.1, %find_next_bit.exit.thread ]
  %.0 = phi i32 [ -108, %bb.e ], [ 0, %bb.ah ], [ 0, %find_next_bit.exit.thread ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.t, i64 noundef %.1.sink) #9
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_disable_interrupter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_handshake(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_enable_interrupter(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @xhci_get_resuming_ports(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #9
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %xhci_get_rhub.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %xhci_get_rhub.exit

xhci_get_rhub.exit:                               ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 63
  %i.g = select i1 %i.f, i64 1176, i64 1104
  %i.h = getelementptr i8, ptr %.0.i.i, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  ret i64 %i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_xhci_get_port_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @timer_delete_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_xhci_dbg_quirks(ptr noundef %0) #6 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_dbg_quirks, i64 8), i1 false) #10
          to label %arch_static_branch.exit [label %arch_test_bit.exit.i], !srcloc !23

arch_test_bit.exit.i:                             ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #10, !srcloc !56
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.b) #10, !srcloc !25 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #10, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !27
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_dbg_quirks, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_xhci_dbg_quirks(ptr noundef %i.i, ptr noundef %0) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !28
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #10, !srcloc !29
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %arch_test_bit.exit.i, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xhci_alloc_command(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_queue_stop_endpoint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_free_command(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xhci_ring_cmd_db(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_xhci_stop_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @usb_acpi_power_manageable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_acpi_set_power_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_disable_and_free_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_reset(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_xhci_hub_status_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{i64 2155724368}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11, !18}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !11, !18}
!23 = !{i64 2148380980, i64 2148381020, i64 2148381137, i64 2148381158, i64 2148381201, i64 2148381216, i64 2148381249, i64 2148381283, i64 2148381307}
!24 = !{i64 2159138759}
!25 = !{i64 2149284905}
!26 = !{i64 2151603720}
!27 = !{i64 2151607022}
!28 = !{i64 2151607444}
!29 = !{i64 2151619226}
!30 = !{i64 2149267897, i64 2149267936, i64 2149267957, i64 2149267994, i64 2149268017, i64 2149267888}
!31 = !{i64 2149273270, i64 2149273309, i64 2149273330, i64 2149273367, i64 2149273390, i64 2149273261}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{i64 42856}
!35 = !{i64 2155726761}
!36 = !{i64 44479}
!37 = !{i64 46410}
!38 = !{i64 46482}
!39 = !{i64 46579}
!40 = !{i64 2158172278}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = !{i64 2159170339}
!46 = distinct !{!46, !11}
!47 = !{i64 2149272973, i64 2149273012, i64 2149273033, i64 2149273070, i64 2149273093, i64 2149272964}
!48 = !{!"auto-init"}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{i64 1778796}
!53 = !{!"branch_weights", i32 1, i32 1999}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = !{i64 2157584417}
end_hunk_1

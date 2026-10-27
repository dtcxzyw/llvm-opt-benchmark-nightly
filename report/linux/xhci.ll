Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci?download=true
inline.NumInlined: 585
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@xhci_map_urb_for_dma:bb.a

bb.y:                                             ; preds = %dma_map_single_attrs.exit.i
  %i.cu = load i32, ptr %i.al, align 4
  %i.cv = or i32 %i.cu, 65536
  store i32 %i.cv, ptr %i.al, align 4
  br label %xhci_map_temp_buffer.exit

xhci_urb_temp_buffer_required.exit.thread:        ; preds = %sg_next.exit38.i, %bb.j, %bb.k, %xhci_usb_endpoint_maxp.exit.i, %xhci_urb_suitable_for_idt.exit
  %i.cw = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  br label %xhci_map_temp_buffer.exit

xhci_map_temp_buffer.exit:                        ; preds = %bb.f, %bb.y, %bb.x, %xhci_urb_temp_buffer_required.exit, %xhci_urb_temp_buffer_required.exit.thread
  %.0 = phi i32 [ %i.cw, %xhci_urb_temp_buffer_required.exit.thread ], [ 0, %bb.y ], [ -12, %xhci_urb_temp_buffer_required.exit ], [ -11, %bb.x ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xhci_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]
  %i.d = getelementptr i8, ptr %1, i64 132        ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.f = getelementptr i8, ptr %1, i64 92         ; 4 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 65536
  %.not9 = icmp ne i32 %i.h, 0
  %i.i = getelementptr i8, ptr %.0.i, i64 1024
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 549755813888
  %i.l = icmp ne i64 %i.k, 0
  %or.cond = and i1 %.not9, %i.l
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 136
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = and i32 %i.g, 512
  %.not.i10 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not.i10, i32 1, i32 2
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 104
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext i32 %i.n to i64
  tail call void @dma_unmap_page_attrs(ptr noundef %i.r, i64 noundef %i.t, i64 noundef range(i64 0, 4294967296) %i.u, i32 noundef range(i32 1, 3) %i.p, i64 noundef 0) #20
  %.val.pre.i = load i32, ptr %i.f, align 4
  %i.v = and i32 %.val.pre.i, 512
  %.not19.i = icmp eq i32 %i.v, 0
  br i1 %.not19.i, label %xhci_unmap_temp_buf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.d, align 4
  %i.z = getelementptr i8, ptr %1, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = zext i32 %i.n to i64
  %i.ac = tail call i64 @sg_pcopy_from_buffer(ptr noundef %i.x, i32 noundef %i.y, ptr noundef %i.aa, i64 noundef %i.ab, i64 noundef 0) #20
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %.not20.i = icmp eq i32 %i.n, %i.ad
  br i1 %.not20.i, label %xhci_unmap_temp_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %1, i64 140
  store i32 %i.ad, ptr %i.ae, align 4
  br label %xhci_unmap_temp_buf.exit

xhci_unmap_temp_buf.exit:                         ; preds = %bb.d, %bb.e, %bb.f
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.f, align 4
  %i.ah = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @kfree(ptr noundef %i.ai) #20
  store ptr null, ptr %i.ah, align 8
  br label %bb.g

.thread:                                          ; preds = %hcd_to_xhci.exit, %bb.c
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #20
  br label %bb.g

bb.g:                                             ; preds = %.thread, %xhci_unmap_temp_buf.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xhci_endpoint_disable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 928
  %i.e = getelementptr i8, ptr %.0.i, i64 648     ; 4 uses
  %i.f = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.e) #20 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %xhci_get_endpoint_index.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hcd_to_xhci.exit
  %i.i = getelementptr i8, ptr %1, i64 3
  %i.j = getelementptr i8, ptr %1, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.ag, %bb.h ]
  %i.l = phi i64 [ %i.f, %.lr.ph ], [ %i.af, %bb.h ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.k, i64 1360
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %xhci_get_endpoint_index.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.r, null
  br i1 %.not19, label %xhci_get_endpoint_index.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load i8, ptr %i.i, align 1
  %i.s = and i8 %.val.i, 3
  %.not.i21 = icmp eq i8 %i.s, 0
  %.val6.i = load i8, ptr %i.j, align 2           ; 2 uses
  %i.t = shl i8 %.val6.i, 1
  %i.u = and i8 %i.t, 30                          ; 2 uses
  br i1 %.not.i21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = zext nneg i8 %i.u to i64
  br label %xhci_get_endpoint_index.exit

bb.g:                                             ; preds = %bb.e
  %.lobit.i.i = lshr i8 %.val6.i, 7
  %i.w = or disjoint i8 %i.u, %.lobit.i.i
  %i.x = zext nneg i8 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 4294967295
  br label %xhci_get_endpoint_index.exit

xhci_get_endpoint_index.exit:                     ; preds = %bb.f, %bb.g
  %.0.i22 = phi i64 [ %i.v, %bb.f ], [ %i.y, %bb.g ]
  %i.z = and i64 %.0.i22, 4294967295
  %i.aa = getelementptr [160 x i8], ptr %i.r, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 76
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 256
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %xhci_get_endpoint_index.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %xhci_get_endpoint_index.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.e, i64 noundef %i.l) #20
  %i.ae = tail call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #20 ; 0 uses
  %i.af = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.e) #20 ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %xhci_get_endpoint_index.exit._crit_edge, label %bb.c

xhci_get_endpoint_index.exit._crit_edge:          ; preds = %bb.c, %bb.h, %bb.d, %xhci_get_endpoint_index.exit, %hcd_to_xhci.exit
  %.lcssa = phi i64 [ %i.f, %hcd_to_xhci.exit ], [ %i.l, %xhci_get_endpoint_index.exit ], [ %i.l, %bb.d ], [ %i.af, %bb.h ], [ %i.l, %bb.c ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.e, i64 noundef %.lcssa) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xhci_endpoint_reset(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 584     ; 24 uses
  %i.e = getelementptr i8, ptr %1, i64 3          ; 2 uses
  %.val.i = load i8, ptr %i.e, align 1
  %i.f = and i8 %.val.i, 3
  %.not.i129 = icmp eq i8 %i.f, 0
  %i.g = getelementptr i8, ptr %1, i64 2          ; 2 uses
  %.val6.i = load i8, ptr %i.g, align 1           ; 2 uses
  %i.h = shl i8 %.val6.i, 1
  %i.i = and i8 %i.h, 30                          ; 3 uses
  br i1 %.not.i129, label %xhci_get_endpoint_index.exit, label %xhci_get_endpoint_index.exit.thread

xhci_get_endpoint_index.exit.thread:              ; preds = %hcd_to_xhci.exit
  %.lobit.i.i = lshr i8 %.val6.i, 7
  %i.j = or disjoint i8 %i.i, %.lobit.i.i
  %i.k = zext nneg i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -1
  br label %bb.n

xhci_get_endpoint_index.exit:                     ; preds = %hcd_to_xhci.exit
  %i.m = zext nneg i8 %i.i to i32
  %i.n = icmp eq i8 %i.i, 0
  br i1 %i.n, label %bb.c, label %bb.n

bb.c:                                             ; preds = %xhci_get_endpoint_index.exit
  %i.o = getelementptr i8, ptr %1, i64 -88
  %i.p = getelementptr i8, ptr %1, i64 -60
  %i.q = load i32, ptr %i.p, align 4
  %.not120 = icmp eq i32 %i.q, 2
  br i1 %.not120, label %bb.d, label %xhci_check_ep0_maxpacket.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 1272
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not121 = icmp eq i32 %i.s, 0
  br i1 %.not121, label %xhci_check_ep0_maxpacket.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.0.i, i64 928
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %.not122 = icmp eq ptr %i.x, null
  br i1 %.not122, label %xhci_check_ep0_maxpacket.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not123 = icmp eq ptr %i.z, %i.o
  br i1 %.not123, label %bb.g, label %xhci_check_ep0_maxpacket.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.x, i64 16      ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @xhci_get_ep_ctx(ptr noundef %i.d, ptr noundef %i.ab, i32 noundef 0) #20
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = lshr i32 %i.ae, 16                      ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 92
  %.val44.i = load i16, ptr %i.ah, align 1
  %i.ai = and i16 %.val44.i, 2047                 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i32              ; 3 uses
  %i.ak = icmp eq i32 %i.af, %i.aj
  br i1 %i.ak, label %xhci_check_ep0_maxpacket.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i16 %i.ai, label %xhci_check_ep0_maxpacket.exit [
    i16 8, label %bb.i
    i16 16, label %bb.i
    i16 32, label %bb.i
    i16 64, label %bb.i
    i16 9, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.d, ptr noundef @trace_xhci_dbg_context_change, ptr noundef @.str.142) #20
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.d, ptr noundef @trace_xhci_dbg_context_change, ptr noundef @.str.143, i32 noundef %i.aj) #20
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.d, ptr noundef @trace_xhci_dbg_context_change, ptr noundef @.str.144, i32 noundef %i.af) #20
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %i.d, ptr noundef @trace_xhci_dbg_context_change, ptr noundef @.str.145) #20
  %i.al = tail call ptr @xhci_alloc_command(ptr noundef %i.d, i1 noundef zeroext true, i32 noundef 3264) #20 ; 6 uses
  %.not.i131 = icmp eq ptr %i.al, null
  br i1 %.not.i131, label %xhci_check_ep0_maxpacket.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.an, ptr %i.al, align 8
  %i.ao = tail call ptr @xhci_get_input_control_ctx(ptr noundef %i.an) #20 ; 3 uses
  %.not43.i = icmp eq ptr %i.ao, null
  br i1 %.not43.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val.i133 = load ptr, ptr %i.d, align 8
  %i.ap = load ptr, ptr %.val.i133, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ap, ptr noundef @.str.25, ptr noundef @__func__.xhci_check_ep0_maxpacket) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = load ptr, ptr %i.aa, align 8
  tail call void @xhci_endpoint_copy(ptr noundef %i.d, ptr noundef %i.aq, ptr noundef %i.ar, i32 noundef 0) #20
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = tail call ptr @xhci_get_ep_ctx(ptr noundef %i.d, ptr noundef %i.as, i32 noundef 0) #20 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, -8
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 65535
  %i.az = shl nuw nsw i32 %i.aj, 16
  %i.ba = or disjoint i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.aw, align 4
  %i.bb = getelementptr i8, ptr %i.ao, i64 4      ; 2 uses
  store i32 2, ptr %i.bb, align 4
  store i32 0, ptr %i.ao, align 4
  %i.bc = load ptr, ptr %i.y, align 8
  %i.bd = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %i.d, ptr noundef %i.bc, ptr noundef nonnull %i.al, i1 noundef zeroext true, i1 noundef zeroext false) #22, !srcloc !81 ; 0 uses
  store i32 1, ptr %i.bb, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = getelementptr i8, ptr %i.al, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @kfree(ptr noundef %i.bf) #20
  tail call void @kfree(ptr noundef nonnull %i.al) #20
  br label %xhci_check_ep0_maxpacket.exit

bb.n:                                             ; preds = %xhci_get_endpoint_index.exit.thread, %xhci_get_endpoint_index.exit
  %.0.i130136 = phi i32 [ %i.l, %xhci_get_endpoint_index.exit.thread ], [ %i.m, %xhci_get_endpoint_index.exit ] ; 3 uses
  %i.bg = getelementptr i8, ptr %1, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %xhci_check_ep0_maxpacket.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %.0.i, i64 928
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bh, i64 1360   ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = icmp ne i32 %i.bl, 0
  %i.bq = icmp ne ptr %i.bo, null
  %or.cond3 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond3, label %bb.p, label %xhci_check_ep0_maxpacket.exit

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr i8, ptr %i.bo, i64 32
  %i.bs = zext i32 %.0.i130136 to i64
  %i.bt = getelementptr [160 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %.0.i, i64 648    ; 13 uses
  %i.bv = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bu) #20 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bt, i64 44     ; 6 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = and i32 %i.bx, 64
  %.not112 = icmp eq i32 %i.by, 0
  br i1 %.not112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = and i32 %i.bx, -65
  store i32 %i.bz, ptr %i.bw, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.bv) #20
  br label %xhci_check_ep0_maxpacket.exit

bb.r:                                             ; preds = %bb.p
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.bv) #20
  %.val124 = load i8, ptr %i.e, align 1
  %i.ca = and i8 %.val124, 2
  %switch.not.not = icmp eq i8 %i.ca, 0
  br i1 %switch.not.not, label %xhci_check_ep0_maxpacket.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val126 = load i8, ptr %i.g, align 2           ; 2 uses
  %i.cb = shl i8 %.val126, 1
  %i.cc = and i8 %i.cb, 30                        ; 2 uses
  %.lobit.i.i.i = lshr i8 %.val126, 7
  %.0.i.in.i = or disjoint i8 %i.cc, %.lobit.i.i.i
  %.0.i.i = zext nneg i8 %.0.i.in.i to i32
  %i.cd = shl nuw i32 1, %.0.i.i                  ; 2 uses
  %or.cond6 = icmp eq i8 %i.cc, 0
  br i1 %or.cond6, label %xhci_check_ep0_maxpacket.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = tail call ptr @xhci_alloc_command(ptr noundef %i.d, i1 noundef zeroext true, i32 noundef 10240) #20 ; 4 uses
  %.not115 = icmp eq ptr %i.ce, null
  br i1 %.not115, label %xhci_check_ep0_maxpacket.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %i.d, i1 noundef zeroext true, i32 noundef 10240) #20 ; 11 uses
  %.not116 = icmp eq ptr %i.cf, null
  br i1 %.not116, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bu) #20 ; 3 uses
  %i.ch = load i32, ptr %i.bw, align 4
  %i.ci = or i32 %i.ch, 128
  store i32 %i.ci, ptr %i.bw, align 4
  %i.cj = getelementptr i8, ptr %i.bt, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 48     ; 2 uses
  %i.cm = load volatile ptr, ptr %i.cl, align 8
  %.not139 = icmp eq ptr %i.cm, %i.cl
  br i1 %.not139, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %i.bh, i64 176
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cn, ptr noundef @.str.141) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.cg) #20
  tail call void @xhci_free_command(ptr noundef %i.d, ptr noundef nonnull %i.cf) #20
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.co = load i32, ptr %i.bk, align 8
  %i.cp = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %i.d, ptr noundef nonnull %i.ce, i32 noundef %i.co, i32 noundef %.0.i130136, i32 noundef 0) #20
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.cg) #20
  tail call void @xhci_free_command(ptr noundef %i.d, ptr noundef nonnull %i.cf) #20
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @xhci_ring_cmd_db(ptr noundef %i.d) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.cg) #20
  %i.cr = getelementptr i8, ptr %i.ce, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void @wait_for_completion(ptr noundef %i.cs) #20
  %i.ct = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bu) #20 ; 3 uses
  %i.cu = load ptr, ptr %i.cf, align 8
  %i.cv = tail call ptr @xhci_get_input_control_ctx(ptr noundef %i.cu) #20 ; 3 uses
  %.not118 = icmp eq ptr %i.cv, null
  br i1 %.not118, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.ct) #20
  tail call void @xhci_free_command(ptr noundef %i.d, ptr noundef nonnull %i.cf) #20
  %.val = load ptr, ptr %i.d, align 8
  %i.cw = load ptr, ptr %.val, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.cw, ptr noundef @.str.25, ptr noundef @__func__.xhci_endpoint_reset) #21
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr %i.cf, align 8
  %i.cy = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cv, i64 4      ; 3 uses
  store i32 %i.cd, ptr %i.da, align 4
  store i32 %i.cd, ptr %i.cv, align 4
  tail call void @xhci_slot_copy(ptr noundef %i.d, ptr noundef %i.cx, ptr noundef %i.cz) #20
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = or i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4
  %i.dd = load ptr, ptr %i.cf, align 8
  %i.de = load ptr, ptr %i.cy, align 8
  tail call void @xhci_endpoint_copy(ptr noundef %i.d, ptr noundef %i.dd, ptr noundef %i.de, i32 noundef %.0.i130136) #20
  %i.df = load ptr, ptr %i.cf, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = load i32, ptr %i.bk, align 8
  %i.dj = tail call i32 @xhci_queue_configure_endpoint(ptr noundef %i.d, ptr noundef nonnull %i.cf, i64 noundef %i.dh, i32 noundef %i.di, i1 noundef zeroext false) #20
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.ct) #20
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  tail call void @xhci_ring_cmd_db(ptr noundef %i.d) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.ct) #20
  %i.dl = getelementptr i8, ptr %i.cf, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void @wait_for_completion(ptr noundef %i.dm) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  tail call void @xhci_free_command(ptr noundef %i.d, ptr noundef nonnull %i.cf) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.u, %bb.aa, %bb.y, %bb.w
  tail call void @xhci_free_command(ptr noundef %i.d, ptr noundef nonnull %i.ce) #20
  %i.dn = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bu) #20
  %i.do = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.dp = and i32 %i.do, 128
  %.not119 = icmp eq i32 %i.dp, 0
  br i1 %.not119, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = and i32 %i.do, -129
  store i32 %i.dq, ptr %i.bw, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bu, i64 noundef %i.dn) #20
  br label %xhci_check_ep0_maxpacket.exit

xhci_check_ep0_maxpacket.exit:                    ; preds = %bb.r, %bb.m, %bb.i, %bb.h, %bb.g, %bb.t, %bb.s, %bb.o, %bb.n, %bb.e, %bb.f, %bb.c, %bb.d, %bb.ag, %bb.q
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_hub_status_data(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_bus_suspend(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @xhci_bus_resume(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @xhci_get_resuming_ports(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xhci_clear_tt_buffer_complete(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 648     ; 2 uses
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #20
  %i.f = getelementptr i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 1360
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 3
  %.val.i = load i8, ptr %i.j, align 1
  %i.k = and i8 %.val.i, 3
  %.not.i12 = icmp eq i8 %i.k, 0
  %i.l = getelementptr i8, ptr %1, i64 2
  %.val6.i = load i8, ptr %i.l, align 2           ; 2 uses
  %i.m = shl i8 %.val6.i, 1
  %i.n = and i8 %i.m, 30                          ; 2 uses
  br i1 %.not.i12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.o = zext nneg i8 %i.n to i32
  br label %xhci_get_endpoint_index.exit

bb.d:                                             ; preds = %hcd_to_xhci.exit
  %.lobit.i.i = lshr i8 %.val6.i, 7
  %i.p = or disjoint i8 %i.n, %.lobit.i.i
  %i.q = zext nneg i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -1
  br label %xhci_get_endpoint_index.exit

xhci_get_endpoint_index.exit:                     ; preds = %bb.c, %bb.d
  %.0.i13 = phi i32 [ %i.o, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0.i, i64 584
  %i.t = getelementptr i8, ptr %.0.i, i64 928
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = zext i32 %i.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext i32 %.0.i13 to i64
  %i.z = getelementptr [160 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 76      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, -257
  store i32 %i.ac, ptr %i.aa, align 4
  tail call void @xhci_ring_doorbell_for_active_rings(ptr noundef %i.s, i32 noundef %i.i, i32 noundef %.0.i13) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.e) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xhci_free_dev(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %hcd_to_xhci.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 584     ; 3 uses
  %i.e = getelementptr i8, ptr %.0.i, i64 1024
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 128
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %pm_runtime_put_noidle.exit, label %bb.c

bb.c:                                             ; preds = %hcd_to_xhci.exit
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 456      ; 3 uses
  %i.j = load volatile i32, ptr %i.i, align 4     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %pm_runtime_put_noidle.exit, label %.lr.ph.i, !prof !82

.lr.ph.i:                                         ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i
  %.04.i = phi i32 [ %i.q, %arch_atomic_try_cmpxchg.exit.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = add i32 %.04.i, -1
  %i.m = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 0, -1) %i.l, ptr elementtype(i32) %i.i, i32 %.04.i) #19, !srcloc !83 ; 2 uses
  %i.n = extractvalue { i8, i32 } %i.m, 0         ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %pm_runtime_put_noidle.exit, label %arch_atomic_try_cmpxchg.exit.i, !prof !84

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.q = extractvalue { i8, i32 } %i.m, 1         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %pm_runtime_put_noidle.exit, label %.lr.ph.i, !prof !85

pm_runtime_put_noidle.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.i, %.lr.ph.i, %bb.c, %hcd_to_xhci.exit
  %.not.i25 = icmp ne ptr %0, null
  %i.s = icmp ne ptr %1, null
  %or.cond28 = and i1 %.not.i25, %i.s
  br i1 %or.cond28, label %bb.d, label %xhci_check_args.exit

bb.d:                                             ; preds = %pm_runtime_put_noidle.exit
  %i.t = getelementptr i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  %.not22.i = icmp eq ptr %i.u, null
  br i1 %.not22.i, label %xhci_check_args.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #20
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.f, label %hcd_to_xhci.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 528
  %i.x = load ptr, ptr %i.w, align 8
  br label %hcd_to_xhci.exit.i

hcd_to_xhci.exit.i:                               ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.x, %bb.f ], [ %0, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 1360
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %.not23.i = icmp eq i32 %i.z, 0
  br i1 %.not23.i, label %xhci_check_args.exit, label %bb.g

bb.g:                                             ; preds = %hcd_to_xhci.exit.i
  %i.aa = getelementptr i8, ptr %.0.i.i, i64 928
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.ae, null
  br i1 %.not24.i, label %xhci_check_args.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %.not25.i = icmp eq ptr %i.ag, %1
  br i1 %.not25.i, label %bb.i, label %xhci_check_args.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 984
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 2
  %.not26.i = icmp eq i32 %i.aj, 0
  %..i = select i1 %.not26.i, i32 1, i32 -19
  br label %xhci_check_args.exit

xhci_check_args.exit:                             ; preds = %pm_runtime_put_noidle.exit, %bb.d, %hcd_to_xhci.exit.i, %bb.g, %bb.h, %bb.i
  %.0.i26 = phi i32 [ -22, %hcd_to_xhci.exit.i ], [ %..i, %bb.i ], [ -22, %bb.h ], [ 0, %bb.d ], [ -22, %pm_runtime_put_noidle.exit ], [ -22, %bb.g ] ; 2 uses
  %i.ak = icmp slt i32 %.0.i26, 1
  %i.al = icmp ne i32 %.0.i26, -19
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.n, label %bb.j

bb.j:                                             ; preds = %xhci_check_args.exit
  %i.am = getelementptr i8, ptr %.0.i, i64 928
  %i.an = load ptr, ptr %i.am, align 8
end_hunk_0

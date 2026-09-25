Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hcd-ehci?download=true
inline.NumInlined: 281
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@get_dwords:bb.a
  fence seq_cst
  %i.aa = tail call i32 @address_space_rw(ptr noundef %i.y, i64 noundef range(i64 0, 4294967296) %i.z, i64 4294967296, ptr noundef nonnull %.02327, i64 noundef 4, i1 noundef zeroext false) #14 ; 0 uses
  %i.ab = add nuw nsw i32 %.02426, 1              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02327, i64 4
  %i.ad = add i32 %.02228, 4
  %exitcond.not = icmp eq i32 %i.ab, %3
  br i1 %exitcond.not, label %trace_usb_ehci_dma_error.exit, label %.preheader, !llvm.loop !24

trace_usb_ehci_dma_error.exit:                    ; preds = %.preheader, %bb.h, %bb.g, %bb.f, %ehci_raise_irq.exit
  %.0 = phi i32 [ -1, %bb.h ], [ -1, %ehci_raise_irq.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ %3, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ehci_state_executing(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.24, i32 noundef 1986, ptr noundef nonnull @__PRETTY_FUNCTION__.ehci_state_executing) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 1987, ptr noundef nonnull @__PRETTY_FUNCTION__.ehci_state_executing) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 244 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  switch i32 %i.i, label %bb.f [
    i32 1, label %bb.g
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.24, i32 noundef 1282, ptr noundef nonnull @__PRETTY_FUNCTION__.ehci_execute_complete) #16
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %trace_usb_ehci_execute_complete.exit.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = load i16, ptr @_TRACE_USB_EHCI_EXECUTE_COMPLETE_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.t, 0
  br i1 %.not5.i.i, label %trace_usb_ehci_execute_complete.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not6.i.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i.i, label %trace_usb_ehci_execute_complete.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.d, i32 noundef %i.p, i32 noundef %i.r) #14
  %.pr.pre.i = load i32, ptr %i.o, align 4
  br label %trace_usb_ehci_execute_complete.exit.i

trace_usb_ehci_execute_complete.exit.i:           ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.w = phi i32 [ %i.p, %bb.g ], [ %.pr.pre.i, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  switch i32 %i.w, label %bb.o [
    i32 0, label %bb.r
    i32 -5, label %bb.k
    i32 -1, label %bb.k
    i32 -3, label %bb.l
    i32 -2, label %bb.m
    i32 -4, label %bb.n
  ]

bb.k:                                             ; preds = %trace_usb_ehci_execute_complete.exit.i, %trace_usb_ehci_execute_complete.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, -3145
  %i.aa = or disjoint i32 %i.z, 72
  store i32 %i.aa, ptr %i.x, align 8
  br label %.sink.split.i

bb.l:                                             ; preds = %trace_usb_ehci_execute_complete.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = or i32 %i.ac, 64
  store i32 %i.ad, ptr %i.ab, align 8
  br label %.sink.split.i

bb.m:                                             ; preds = %trace_usb_ehci_execute_complete.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -31
  store i32 %i.ag, ptr %i.ae, align 4
  br label %ehci_execute_complete.exit

bb.n:                                             ; preds = %trace_usb_ehci_execute_complete.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = or i32 %i.ai, 80
  store i32 %i.aj, ptr %i.ah, align 8
  br label %.sink.split.i

bb.o:                                             ; preds = %trace_usb_ehci_execute_complete.exit.i
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 2048
  %.not66.i = icmp eq i32 %i.al, 0
  br i1 %.not66.i, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, i32 noundef %i.w) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 1311, ptr noundef nonnull @__func__.ehci_execute_complete, ptr noundef null) #16
  unreachable

.sink.split.i:                                    ; preds = %bb.n, %bb.l, %bb.k
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1952 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = or i32 %i.ao, 2
  store i32 %i.ap, ptr %i.an, align 16
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %trace_usb_ehci_execute_complete.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = lshr i32 %i.ar, 16
  %i.at = and i32 %i.as, 32767                    ; 2 uses
  %.not60.i = icmp eq i32 %i.at, 0
  br i1 %.not60.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, 105
  br i1 %i.aw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ax = load i32, ptr %i.q, align 8
  %i.ay = sub i32 %i.at, %i.ax                    ; 3 uses
  %.not61.i = icmp eq i32 %i.ay, 0
  br i1 %.not61.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1952 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 16
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i32, ptr %i.bd, align 8
  %.not62.i = icmp eq i32 %i.be, 0
  br i1 %.not62.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2192
  store i8 1, ptr %i.bg, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i = phi i32 [ %i.ay, %bb.v ], [ %i.ay, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.bh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i65.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i65.i, label %trace_usb_ehci_qh_tbytes.exit.i, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bi = load i16, ptr @_TRACE_USB_EHCI_QH_TBYTES_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not1.i.i, label %trace_usb_ehci_qh_tbytes.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = load i32, ptr @qemu_loglevel, align 4
  %i.bk = and i32 %i.bj, 32768
  %.not2.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not2.i.i, label %trace_usb_ehci_qh_tbytes.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.47, i32 noundef %.0.i) #14
  br label %trace_usb_ehci_qh_tbytes.exit.i

trace_usb_ehci_qh_tbytes.exit.i:                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.bl = load i32, ptr %i.aq, align 8
  %i.bm = and i32 %i.bl, -2147418113
  %i.bn = shl i32 %.0.i, 16
  %i.bo = and i32 %i.bn, 2147418112
  %i.bp = or disjoint i32 %i.bm, %i.bo            ; 2 uses
  store i32 %i.bp, ptr %i.aq, align 8
  %i.bq = load i32, ptr %i.q, align 8             ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.aa, label %ehci_finish_transfer.exit.i

bb.aa:                                            ; preds = %trace_usb_ehci_qh_tbytes.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = and i32 %i.bt, 4095
  %i.bv = add nuw i32 %i.bu, %i.bq                ; 2 uses
  %i.bw = and i32 %i.bv, 4095
  %i.bx = and i32 %i.bv, 28672
  %i.by = or i32 %i.bx, %i.bp
  store i32 %i.by, ptr %i.aq, align 8
  %i.bz = and i32 %i.bt, -4096
  %i.ca = or disjoint i32 %i.bw, %i.bz
  store i32 %i.ca, ptr %i.bs, align 4
  br label %ehci_finish_transfer.exit.i

ehci_finish_transfer.exit.i:                      ; preds = %bb.aa, %trace_usb_ehci_qh_tbytes.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  tail call void @usb_packet_unmap(ptr noundef nonnull %i.n, ptr noundef nonnull %i.cb) #14
  tail call void @qemu_sglist_destroy(ptr noundef nonnull %i.cb) #14
  store i32 0, ptr %i.h, align 4
  %i.cc = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.cd = and i32 %i.cc, -129
  %i.ce = xor i32 %i.cd, -2147483648
  store i32 %i.ce, ptr %i.aq, align 8
  %i.cf = and i32 %i.cc, 32768
  %.not63.i = icmp eq i32 %i.cf, 0
  br i1 %.not63.i, label %ehci_execute_complete.exit, label %bb.ab

bb.ab:                                            ; preds = %ehci_finish_transfer.exit.i
  %i.cg = load ptr, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1952 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 16
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = load i32, ptr %i.ck, align 8
  %.not64.i = icmp eq i32 %i.cl, 0
  br i1 %.not64.i, label %ehci_execute_complete.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2192
  store i8 1, ptr %i.cn, align 16
  br label %ehci_execute_complete.exit

ehci_execute_complete.exit:                       ; preds = %bb.m, %ehci_finish_transfer.exit.i, %bb.ab, %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %.not15 = icmp eq i32 %i.cp, 0
  br i1 %.not15, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %ehci_execute_complete.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.cq, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %ehci_execute_complete.exit
  %i.cu = load i32, ptr %i.o, align 4
  %i.cv = icmp eq i32 %i.cu, -2
  %i.cw = load ptr, ptr %0, align 8
  %. = select i1 %i.cv, i32 1013, i32 1012
  tail call fastcc void @ehci_set_state(ptr noundef %i.cw, i32 noundef %i.cp, i32 noundef %.)
  %i.cx = load i32, ptr %i.j, align 8
  %i.cy = and i32 %i.cx, -32
  %i.cz = load ptr, ptr %0, align 8
  %i.da = or disjoint i32 %i.cy, 12
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call fastcc void @put_dwords(ptr noundef %i.cz, i32 noundef %i.da, ptr noundef nonnull readonly %i.db, i32 noundef 9)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ehci_state_writeback(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.24, i32 noundef 2015, ptr noundef nonnull @__PRETTY_FUNCTION__.ehci_state_writeback) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 2016, ptr noundef nonnull @__PRETTY_FUNCTION__.ehci_state_writeback) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, -32
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @ehci_trace_qtd(ptr noundef nonnull %0, i64 noundef %i.i, ptr noundef nonnull %i.j)
  %i.k = load i32, ptr %i.c, align 8
  %i.l = and i32 %i.k, -32                        ; 2 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = or disjoint i32 %i.l, 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call fastcc void @put_dwords(ptr noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %i.o, i32 noundef 1)
  %i.p = load ptr, ptr %0, align 8
  %i.q = or disjoint i32 %i.l, 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call fastcc void @put_dwords(ptr noundef %i.p, i32 noundef %i.q, ptr noundef nonnull %i.r, i32 noundef 1)
  tail call fastcc void @ehci_free_packet(ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 64
  %.not22 = icmp eq i32 %i.t, 0
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %. = select i1 %.not22, i32 1009, i32 1013
  tail call fastcc void @ehci_set_state(ptr noundef %i.u, i32 noundef %i.w, i32 noundef %.)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ehci_set_state(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = icmp ult i32 %2, 1014                    ; 2 uses
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @ehci_state_names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %state2str.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %state2str.exit

state2str.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @.str.54, %bb.d ], [ %i.d, %bb.c ]
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_usb_ehci_state.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %state2str.exit
  %i.f = load i16, ptr @_TRACE_USB_EHCI_STATE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %trace_usb_ehci_state.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %trace_usb_ehci_state.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, ptr noundef nonnull %.0.i.i) #14
  br label %trace_usb_ehci_state.exit

trace_usb_ehci_state.exit:                        ; preds = %state2str.exit, %bb.e, %bb.f, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %2, ptr %i.i, align 4
  %i.j = icmp eq i32 %2, 1000
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4              ; 7 uses
  %i.m = and i32 %i.l, 32768
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.j, label %bb.h, label %bb.m

bb.h:                                             ; preds = %trace_usb_ehci_state.exit
  br i1 %i.n, label %ehci_clear_usbsts.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i61.i = icmp eq i32 %i.o, 0
  br i1 %.not.i61.i, label %ehci_trace_usbsts.exit, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.p = load i16, ptr @_TRACE_USB_EHCI_USBSTS_DSTATE, align 2
  %.not1.i62.i = icmp eq i16 %i.p, 0
  br i1 %.not1.i62.i, label %ehci_trace_usbsts.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not2.i63.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i63.i, label %ehci_trace_usbsts.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, i32 noundef range(i32 0, 2) 0) #14
  %.pre68 = load i32, ptr %i.k, align 4
  br label %ehci_trace_usbsts.exit

ehci_trace_usbsts.exit:                           ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.s = phi i32 [ %i.l, %bb.i ], [ %i.l, %bb.j ], [ %i.l, %bb.k ], [ %.pre68, %bb.l ]
  %i.t = and i32 %i.s, -32769
  store i32 %i.t, ptr %i.k, align 4
  br label %ehci_clear_usbsts.exit

ehci_clear_usbsts.exit:                           ; preds = %bb.h, %ehci_trace_usbsts.exit
  tail call fastcc void @ehci_update_halt(ptr noundef nonnull %0)
  br label %ehci_set_usbsts.exit
end_hunk_0

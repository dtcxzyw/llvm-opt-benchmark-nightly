Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci-ring?download=true
inline.NumInlined: 528
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@queue_trb:bb.a
bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp ugt i64 %i.o, 4080
  br i1 %i.p, label %xhci_trb_virt_to_dma.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.g, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, %i.o
  br label %xhci_trb_virt_to_dma.exit

xhci_trb_virt_to_dma.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_queue_trb, i64 8), i1 false) #11
          to label %trace_xhci_queue_trb.exit [label %arch_test_bit.exit.i.i], !srcloc !15

arch_test_bit.exit.i.i:                           ; preds = %xhci_trb_virt_to_dma.exit
  %i.t = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !35
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.u) #11, !srcloc !16 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %bb.e, label %trace_xhci_queue_trb.exit

bb.e:                                             ; preds = %arch_test_bit.exit.i.i
  %i.y = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, ptr elementtype(i64) %i.y) #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.z = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_queue_trb, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @__SCT__tp_func_xhci_queue_trb(ptr noundef %i.ab, ptr noundef %1, ptr noundef %i.b, i64 noundef %.0.i) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !19
  %i.ad = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, ptr elementtype(i64) %i.ad) #11, !srcloc !20
  br label %trace_xhci_queue_trb.exit

trace_xhci_queue_trb.exit:                        ; preds = %xhci_trb_virt_to_dma.exit, %arch_test_bit.exit.i.i, %bb.g
  %i.ae = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 16                       ; 2 uses
  %i.ai = load ptr, ptr %i.f, align 8
  %.val.i = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val.i, i64 4080
  %i.ak = icmp eq ptr %i.ae, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %trace_xhci_queue_trb.exit
  %.val13.i = load ptr, ptr %0, align 8
  %i.al = load ptr, ptr %.val13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.al, ptr noundef nonnull @.str.79) #13
  br label %inc_enq.exit

bb.i:                                             ; preds = %trace_xhci_queue_trb.exit
  %i.am = getelementptr i8, ptr %i.ae, i64 16
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr i8, ptr %i.ae, i64 28
  %.val12.i = load i32, ptr %i.an, align 4
  %i.ao = and i32 %.val12.i, 64512
  %i.ap = icmp eq i32 %i.ao, 6144
  %i.aq = icmp ne i32 %i.ah, 0
  %or.cond.i15 = or i1 %2, %i.aq
  %or.cond11.i = select i1 %i.ap, i1 %or.cond.i15, i1 false
  br i1 %or.cond11.i, label %bb.j, label %inc_enq.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @inc_enq_past_link(ptr noundef readonly %0, ptr noundef %1, i32 noundef %i.ah) #14, !srcloc !83
  br label %inc_enq.exit

inc_enq.exit:                                     ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @xhci_queue_ctrl_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %2, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 1360
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %2, i64 72         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @xhci_get_endpoint_index(ptr noundef %i.g) #12
  %i.i = getelementptr i8, ptr %2, i64 84         ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef readonly %0, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.j) #14 ; 11 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %giveback_first_trb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %2, i64 144        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not92 = icmp eq ptr %i.m, null
  br i1 %.not92, label %giveback_first_trb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 440        ; 3 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 562949953421312
  %.not93 = icmp eq i64 %i.p, 0
  br i1 %.not93, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ugt i32 %i.s, 4
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.k, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val = load ptr, ptr %i.v, align 8
  %i.z = getelementptr i8, ptr %.val, i64 4080
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.k, i64 64
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = or i32 %i.ac, 8192
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %i.k, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ad) #14, !srcloc !84
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.ae = getelementptr i8, ptr %2, i64 136       ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not94 = icmp eq i32 %i.af, 0
  %spec.select = select i1 %.not94, i32 2, i32 3
  %i.ag = getelementptr i8, ptr %0, i64 344       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = sext i32 %3 to i64
  %i.aj = getelementptr [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i32, ptr %i.i, align 4
  %i.am = tail call fastcc i32 @prepare_transfer(ptr noundef %0, ptr noundef %i.ak, i32 noundef %4, i32 noundef %i.al, i32 noundef %spec.select, ptr noundef %2, i32 noundef 0, i32 noundef %1) #14, !srcloc !85 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %giveback_first_trb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %i.k, i64 16      ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.k, i64 64      ; 3 uses
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.av = icmp eq i32 %i.at, 0                    ; 2 uses
  %spec.select103 = select i1 %i.av, i32 2113, i32 2112 ; 4 uses
  %i.aw = getelementptr i8, ptr %0, i64 68        ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = icmp ugt i16 %i.ax, 255
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr %i.n, align 8
  %i.ba = and i64 %i.az, 2097152
  %.not95 = icmp eq i64 %i.ba, 0
  br i1 %.not95, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = load i32, ptr %i.ae, align 8
  %.not96 = icmp eq i32 %i.bb, 0
  br i1 %.not96, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.au, align 1
  %.not97 = icmp sgt i8 %i.bc, -1
  br i1 %.not97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = or disjoint i32 %spec.select103, 196608
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = or disjoint i32 %spec.select103, 131072
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.i
  %.1 = phi i32 [ %i.bd, %bb.l ], [ %i.be, %bb.m ], [ %spec.select103, %bb.j ], [ %spec.select103, %bb.i ]
  %i.bf = load i32, ptr %i.au, align 1
  %i.bg = getelementptr i8, ptr %i.au, i64 4
  %i.bh = load i32, ptr %i.bg, align 1
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %i.k, i1 noundef zeroext true, i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef 8, i32 noundef %.1) #14, !srcloc !86
  %i.bi = getelementptr i8, ptr %2, i64 92
  %.val105 = load i32, ptr %i.bi, align 4         ; 2 uses
  %5 = and i32 %.val105, 512
  %.not98 = icmp eq i32 %5, 0                     ; 2 uses
  %. = select i1 %.not98, i32 3072, i32 3076
  %i.bj = load i32, ptr %i.ae, align 8            ; 5 uses
  %.not99 = icmp eq i32 %i.bj, 0
  br i1 %.not99, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.bk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 3
  %.val10.i = load i8, ptr %i.bl, align 1
  %i.bm = and i8 %.val10.i, 3
  %.not.i = icmp ne i8 %i.bm, 1
  %or.cond = select i1 %.not.i, i1 %.not98, i1 false
  br i1 %or.cond, label %bb.p, label %xhci_urb_suitable_for_idt.exit

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bk, i64 4
  %.val11.i = load i16, ptr %i.bn, align 1
  %i.bo = and i16 %.val11.i, 2040
  %.not12.i = icmp eq i16 %i.bo, 0
  br i1 %.not12.i, label %xhci_urb_suitable_for_idt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp ult i32 %i.bj, 9
  %i.bq = and i32 %.val105, 4
  %.not8.i = icmp eq i32 %i.bq, 0
  %or.cond.i = and i1 %.not8.i, %i.bp
  br i1 %or.cond.i, label %bb.r, label %xhci_urb_suitable_for_idt.exit

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %2, i64 132
  %i.bs = load i32, ptr %i.br, align 4
  %.not9.i = icmp eq i32 %i.bs, 0
  br i1 %.not9.i, label %bb.s, label %xhci_urb_suitable_for_idt.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr i8, ptr %2, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = zext nneg i32 %i.bj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.bu, i64 %i.bv, i1 false)
  br label %bb.t

xhci_urb_suitable_for_idt.exit:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bw = getelementptr i8, ptr %2, i64 104
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %xhci_urb_suitable_for_idt.exit, %bb.s
  %.3 = phi i32 [ 3136, %bb.s ], [ %., %xhci_urb_suitable_for_idt.exit ] ; 2 uses
  %i.by = load i16, ptr %i.aw, align 4
  %i.bz = icmp ugt i16 %i.by, 255
  br i1 %i.bz, label %xhci_td_remainder.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load i64, ptr %i.n, align 8
  %i.cb = and i64 %i.ca, 2097152
  %.not.i106 = icmp eq i64 %i.cb, 0
  %i.cc = lshr i32 %i.bj, 10
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 31)
  %i.ce = shl nuw nsw i32 %i.cd, 17
  %i.cf = select i1 %.not.i106, i32 %i.ce, i32 0
  br label %xhci_td_remainder.exit

xhci_td_remainder.exit:                           ; preds = %bb.u, %bb.t
  %.0.i108 = phi i32 [ 0, %bb.t ], [ %i.cf, %bb.u ]
  %i.cg = and i32 %i.bj, 131071
  %i.ch = or disjoint i32 %.0.i108, %i.cg
  %i.ci = load i8, ptr %i.au, align 1
  %i.cj = or disjoint i32 %.3, 65536
  %.not100112 = icmp slt i8 %i.ci, 0
  %spec.select104 = select i1 %.not100112, i32 %i.cj, i32 %.3
  %.0..0..0..0. = load i64, ptr %i.a, align 8     ; 2 uses
  %i.ck = trunc i64 %.0..0..0..0. to i32
  %i.cl = lshr i64 %.0..0..0..0., 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = load i32, ptr %i.as, align 8
  %i.co = or i32 %spec.select104, %i.cn
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %i.k, i1 noundef zeroext true, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.ch, i32 noundef %i.co) #14, !srcloc !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %xhci_td_remainder.exit, %bb.n
  %i.cp = load ptr, ptr %i.aq, align 8
  %i.cq = getelementptr i8, ptr %i.ap, i64 80
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %i.k, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %i.ap, i64 72
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = load i32, ptr %i.ae, align 8
  %.not101 = icmp eq i32 %i.cu, 0
  br i1 %.not101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = load i8, ptr %i.au, align 1
  %.not102 = icmp sgt i8 %i.cv, -1
  br i1 %.not102, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.5 = phi i32 [ 69664, %bb.x ], [ 4128, %bb.w ]
  %i.cw = load i32, ptr %i.as, align 8
  %i.cx = or i32 %i.cw, %.5
  tail call fastcc void @queue_trb(ptr noundef %0, ptr noundef nonnull %i.k, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cx) #14, !srcloc !88
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !33
  %i.cy = getelementptr i8, ptr %i.ar, i64 12     ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = and i32 %i.cz, -2
  %i.db = or i32 %i.cz, %i.at
  %.sink.i = select i1 %i.av, i32 %i.da, i32 %i.db
  store i32 %.sink.i, ptr %i.cy, align 4
  %i.dc = getelementptr i8, ptr %0, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = zext i32 %3 to i64                      ; 2 uses
  %i.df = getelementptr [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.ag, align 8
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.de
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = zext i32 %4 to i64
  %i.dk = getelementptr [160 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 76
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 263
  %or.cond20.i.i = icmp eq i32 %i.dn, 0
  br i1 %or.cond20.i.i, label %bb.z, label %giveback_first_trb.exit

bb.z:                                             ; preds = %bb.y
  %i.do = add i32 %4, 1
  %i.dp = and i32 %i.do, 255                      ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_ring_ep_doorbell, i64 8), i1 false) #11
          to label %trace_xhci_ring_ep_doorbell.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !15

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.z
  %i.dq = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !25
  %i.dr = zext i32 %i.dq to i64
  %i.ds = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dr) #11, !srcloc !16 ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 2
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc nuw i8 %i.ds to i1
  br i1 %i.du, label %bb.aa, label %trace_xhci_ring_ep_doorbell.exit.i.i

bb.aa:                                            ; preds = %arch_test_bit.exit.i.i.i.i
  %i.dv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dv, ptr elementtype(i64) %i.dv) #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.dw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_ring_ep_doorbell, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call i32 @__SCT__tp_func_xhci_ring_ep_doorbell(ptr noundef %i.dy, i32 noundef %3, i32 noundef range(i32 0, -65280) %i.dp) #12 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !19
  %i.ea = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ea, ptr elementtype(i64) %i.ea) #11, !srcloc !20
  br label %trace_xhci_ring_ep_doorbell.exit.i.i

trace_xhci_ring_ep_doorbell.exit.i.i:             ; preds = %bb.ac, %arch_test_bit.exit.i.i.i.i, %bb.z
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dp, ptr elementtype(i32) %i.df) #11, !srcloc !23
  %i.eb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.df) #11, !srcloc !24 ; 0 uses
  br label %giveback_first_trb.exit

giveback_first_trb.exit:                          ; preds = %trace_xhci_ring_ep_doorbell.exit.i.i, %bb.y, %bb.g, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ %i.am, %bb.g ], [ -22, %bb.a ], [ 0, %bb.y ], [ 0, %trace_xhci_ring_ep_doorbell.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @xhci_queue_isoc_tx_prepare(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %3 to i64                       ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = zext i32 %4 to i64                       ; 3 uses
  %i.h = getelementptr [160 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %i.l, i32 noundef %4) #12 ; 3 uses
  %i.n = getelementptr i8, ptr %2, i64 164        ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr i8, ptr %2, i64 104
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr i8, ptr %2, i64 192        ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %i.o, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.06586 = phi i32 [ 0, %.lr.ph.new ], [ %i.au, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %i.r, %i.w
  %i.y = getelementptr i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = and i64 %i.x, 65535
  %i.ac = add nuw nsw i64 %i.aa, 65535
  %i.ad = add nuw nsw i64 %i.ac, %i.ab
  %i.ae = lshr i64 %i.ad, 16
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %spec.select.i.i = tail call range(i32 1, 65538) i32 @llvm.umax.i32(i32 %i.af, i32 1)
  %i.ag = add i32 %spec.select.i.i, %.06586
  %i.ah = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = add i64 %i.r, %i.ak
  %i.am = getelementptr i8, ptr %i.ah, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = and i64 %i.al, 65535
  %i.aq = add nuw nsw i64 %i.ao, 65535
  %i.ar = add nuw nsw i64 %i.aq, %i.ap
  %i.as = lshr i64 %i.ar, 16
  %i.at = trunc nuw nsw i64 %i.as to i32
  %spec.select.i.i.1 = tail call range(i32 1, 65538) i32 @llvm.umax.i32(i32 %i.at, i32 1)
  %i.au = add i32 %spec.select.i.i.1, %i.ag       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !89

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.06586.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod146 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.av = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv.epil.init ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add i64 %i.r, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = and i64 %i.ay, 65535
  %i.bd = add nuw nsw i64 %i.bb, 65535
  %i.be = add nuw nsw i64 %i.bd, %i.bc
  %i.bf = lshr i64 %i.be, 16
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %spec.select.i.i.epil = tail call range(i32 1, 65538) i32 @llvm.umax.i32(i32 %i.bg, i32 1)
  %i.bh = add i32 %spec.select.i.i.epil, %.06586.epil.init
  br label %._crit_edge
end_hunk_0

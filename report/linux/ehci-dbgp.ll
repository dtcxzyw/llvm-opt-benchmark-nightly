Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ehci-dbgp?download=true
inline.NumInlined: 121
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@write_pci_config_byte
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @cachemode2protval(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @detect_set_debug_port() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @ehci_dev.0, align 4
  %i.b = trunc i32 %i.a to i8
  %i.c = load i32, ptr @ehci_dev.1, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = load i32, ptr @ehci_dev.2, align 4
  %i.f = trunc i32 %i.e to i8
  %i.g = tail call i32 @read_pci_config(i8 noundef zeroext %i.b, i8 noundef zeroext %i.d, i8 noundef zeroext %i.f, i8 noundef zeroext 0) #9
  %i.h = and i32 %i.g, 65535
  %i.i = icmp eq i32 %i.h, 4318
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @nvidia_set_debug_port, ptr @set_debug_port, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -1, 1) i32 @ehci_setup() unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call fastcc void @early_ehci_bios_handoff() #10, !srcloc !25
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ %.1.lcssa.sink, %.backedge ]
  %.0 = phi i32 [ 3, %bb.a ], [ %.0.be, %.backedge ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %.1 = phi i32 [ %.032, %bb.b ], [ %i.al, %bb.l ] ; 2 uses
  %.030 = phi i32 [ 0, %bb.b ], [ %i.aj, %bb.l ]  ; 2 uses
  %i.a = load ptr, ptr @ehci_caps, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b) #8, !srcloc !12 ; 2 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = and i32 %i.d, 15                         ; 4 uses
  store i32 %i.e, ptr @dbgp_phys_port, align 4
  %i.f = and i32 %i.c, 15                         ; 4 uses
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.f, 1
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr @ehci_regs, align 8
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr i8, ptr %i.i, i64 64
  %i.k = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j) #8, !srcloc !12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.not39 = icmp eq i32 %.030, 0
  %.not40 = icmp eq i32 %.1, %i.e
  %or.cond = select i1 %.not39, i1 true, i1 %.not40
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.l = add nsw i32 %.0, -1                      ; 2 uses
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %dbgp_ehci_controller_reset.exit, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.m
  %.1.lcssa.sink = phi i32 [ %i.al, %bb.m ], [ %.1, %bb.d ] ; 2 uses
  %.0.be = phi i32 [ %i.ao, %bb.m ], [ %i.l, %bb.d ]
  %i.m = load ptr, ptr @set_debug_port, align 8
  tail call void %i.m(i32 noundef %.1.lcssa.sink) #9, !callees !26
  br label %bb.b

bb.e:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr @ehci_regs, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 64
  %i.p = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o) #8, !srcloc !12
  %i.q = and i32 %i.p, 1
  %.not41 = icmp eq i32 %i.q, 0
  br i1 %.not41, label %bb.f, label %dbgp_ehci_controller_reset.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @ehci_regs, align 8
  %i.s = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r) #8, !srcloc !12
  %i.t = or i32 %i.s, 2
  %i.u = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.t, ptr elementtype(i32) %i.u) #8, !srcloc !14
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i = phi i32 [ 250000, %bb.f ], [ %i.y, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr @ehci_regs, align 8
  %i.w = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v) #8, !srcloc !12
  %i.x = and i32 %i.w, 2
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %dbgp_ehci_controller_reset.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %.0.i, -1
  %i.z = icmp samesign ugt i32 %.0.i, 1
  br i1 %i.z, label %bb.g, label %dbgp_ehci_controller_reset.exit, !llvm.loop !0

dbgp_ehci_controller_reset.exit.thread:           ; preds = %bb.g, %bb.e
  %i.aa = tail call fastcc i32 @_dbgp_external_startup() #11, !srcloc !27 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -5
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %dbgp_ehci_controller_reset.exit.thread
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %dbgp_ehci_controller_reset.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @ehci_debug, align 8
  %i.ae = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad) #8, !srcloc !12
  %i.af = and i32 %i.ae, -1342178321
  %i.ag = load ptr, ptr @ehci_debug, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, ptr elementtype(i32) %i.ag) #8, !srcloc !14
  br label %dbgp_ehci_controller_reset.exit

bb.k:                                             ; preds = %dbgp_ehci_controller_reset.exit.thread
  %i.ah = add nsw i32 %i.e, -1
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = or i32 %i.ai, %.030                     ; 2 uses
  %i.ak = urem i32 %i.e, %i.f
  %i.al = add nuw nsw i32 %i.ak, 1                ; 3 uses
  %notmask = shl nsw i32 -1, %i.f
  %i.am = xor i32 %i.aj, %notmask
  %.not43 = icmp eq i32 %i.am, -1
  br i1 %.not43, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @set_debug_port, align 8
  tail call void %i.an(i32 noundef %i.al) #9, !callees !26
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %.0, -1                     ; 2 uses
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %dbgp_ehci_controller_reset.exit, label %.backedge

dbgp_ehci_controller_reset.exit:                  ; preds = %bb.m, %bb.d, %bb.h, %bb.i, %bb.j
  %.033 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.m ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_dbgp_write(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.b = load ptr, ptr @ehci_debug, align 8
  %i.c = icmp eq ptr %i.b, null
  %.b = load i1, ptr @dbgp_not_safe, align 4
  %or.cond = select i1 %i.c, i1 true, i1 %.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @ehci_regs, align 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #8, !srcloc !12 ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.f, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @ehci_debug, align 8
  %i.h = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g) #8, !srcloc !12
  %i.i = and i32 %i.h, 268435456
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i1 true, ptr @dbgp_not_safe, align 4
  %i.j = tail call fastcc i32 @_dbgp_external_startup() #11, !srcloc !34 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = or disjoint i32 %i.e, 1
  %i.l = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.k, ptr elementtype(i32) %i.l) #8, !srcloc !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.not33 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.b ]
  %.not3241 = icmp eq i32 %2, 0
  br i1 %.not3241, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.preheader.backedge ], [ 0, %bb.f ] ; 8 uses
  %.140 = phi i32 [ %.2, %.preheader.backedge ], [ 0, %bb.f ]
  %.12638 = phi i32 [ %.227, %.preheader.backedge ], [ %2, %bb.f ] ; 2 uses
  %.12937 = phi ptr [ %i.q, %.preheader.backedge ], [ %1, %bb.f ] ; 3 uses
  %.not35 = icmp eq i32 %.140, 0
  %.pre = load i8, ptr %.12937, align 1           ; 2 uses
  %i.m = icmp eq i8 %.pre, 10
  %or.cond51 = select i1 %.not35, i1 %i.m, i1 false
  %i.n = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  br i1 %or.cond51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  store i8 13, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %.12937, i64 -1
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  store i8 %.pre, ptr %i.n, align 1
  %i.p = add i32 %.12638, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.230 = phi ptr [ %.12937, %bb.h ], [ %i.o, %bb.g ]
  %.227 = phi i32 [ %i.p, %bb.h ], [ %.12638, %bb.g ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  %i.q = getelementptr i8, ptr %.230, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv, 7
  %i.s = icmp ne i32 %.227, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.preheader.backedge, label %bb.j

.preheader.backedge:                              ; preds = %bb.i, %dbgp_bulk_write.exit
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %dbgp_bulk_write.exit ]
  br label %.preheader, !llvm.loop !28

bb.j:                                             ; preds = %bb.i
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.v = load i32, ptr @dbgp_endpoint_out, align 4
  %i.w = load ptr, ptr @ehci_debug, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x) #8, !srcloc !12
  %i.z = load i32, ptr @dbgp_pid_write_update.data0, align 4
  %i.aa = xor i32 %i.z, 136                       ; 2 uses
  store i32 %i.aa, ptr @dbgp_pid_write_update.data0, align 4
  %i.ab = load ptr, ptr @ehci_debug, align 8
  %i.ac = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab) #8, !srcloc !12
  %invariant.umin.i.i = tail call i32 @llvm.umin.i32(i32 range(i32 1, 9) %i.u, i32 4)
  %wide.trip.count.i.i = zext nneg i32 %invariant.umin.i.i to i64 ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ad = icmp ult i64 %indvars.iv, 3
  br i1 %i.ad, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i.i, 4
  br label %bb.l

.preheader.i.i.unr-lcssa:                         ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %bb.j
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.i.3, %.preheader.i.i.unr-lcssa ]
  %.01920.i.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.br, %.preheader.i.i.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.k ] ; 3 uses
  %.01920.i.i.epil = phi i32 [ %.01920.i.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ae = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %indvars.iv.tr.i.i.epil = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32
  %i.ah = shl nuw nsw i32 %indvars.iv.tr.i.i.epil, 3
  %i.ai = shl nuw i32 %i.ag, %i.ah
  %i.aj = or i32 %i.ai, %.01920.i.i.epil          ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i, label %bb.k, !llvm.loop !29

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.br, %.preheader.i.i.unr-lcssa ], [ %i.aj, %bb.k ]
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = or disjoint i32 %i.v, 32512
  %i.al = and i32 %i.y, -65536
  %i.am = shl nuw nsw i32 %i.aa, 8
  %i.an = or i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, 225
  %i.ap = and i32 %i.ac, -64
  %4 = add nuw i32 %3, 49
  %i.aq = or disjoint i32 %4, %i.ap
  %i.ar = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.ar, label %.lr.ph.i.i.preheader, label %dbgp_bulk_write.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.as = add i64 %indvars.iv, 1
  %i.at = sub i64 %i.as, %wide.trip.count.i.i     ; 2 uses
  %i.au = sub i64 %indvars.iv, %wide.trip.count.i.i
  %xtraiter57 = and i64 %i.at, 3                  ; 3 uses
  %i.av = icmp ult i64 %i.au, 3
  br i1 %i.av, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter62 = and i64 %i.at, -4
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.l ] ; 5 uses
  %.01920.i.i = phi i32 [ 0, %.new ], [ %i.br, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.aw = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = zext i8 %i.ax to i32
  %i.az = or i32 %.01920.i.i, %i.ay
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %indvars.iv.tr.i.i.1 = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.bd = shl nuw nsw i32 %indvars.iv.tr.i.i.1, 3
  %i.be = shl nuw i32 %i.bc, %i.bd
  %i.bf = or i32 %i.be, %i.az
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = zext i8 %i.bh to i32
  %indvars.iv.tr.i.i.2 = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.bj = shl nuw nsw i32 %indvars.iv.tr.i.i.2, 3
  %i.bk = shl nuw i32 %i.bi, %i.bj
  %i.bl = or i32 %i.bk, %i.bf
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %indvars.iv.tr.i.i.3 = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.bp = shl nuw nsw i32 %indvars.iv.tr.i.i.3, 3
  %i.bq = shl nuw i32 %i.bo, %i.bp
  %i.br = or i32 %i.bq, %i.bl                     ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !30

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv29.i.i = phi i64 [ %wide.trip.count.i.i, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next30.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %.01824.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ct, %.lr.ph.i.i ]
  %niter63 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter63.next.3, %.lr.ph.i.i ]
  %i.bs = getelementptr i8, ptr %i.a, i64 %indvars.iv29.i.i
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %indvars.iv29.tr.i.i = trunc i64 %indvars.iv29.i.i to i32
  %i.bv = shl i32 %indvars.iv29.tr.i.i, 3
  %i.bw = add i32 %i.bv, -32
  %i.bx = shl nuw i32 %i.bu, %i.bw
  %i.by = or i32 %i.bx, %.01824.i.i
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %indvars.iv29.tr.i.i.1 = trunc i64 %indvars.iv.next30.i.i to i32
  %i.cc = shl i32 %indvars.iv29.tr.i.i.1, 3
  %i.cd = add i32 %i.cc, -32
  %i.ce = shl nuw i32 %i.cb, %i.cd
  %i.cf = or i32 %i.ce, %i.by
  %indvars.iv.next30.i.i.1 = add nuw nsw i64 %indvars.iv29.i.i, 2 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i.1
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %indvars.iv29.tr.i.i.2 = trunc i64 %indvars.iv.next30.i.i.1 to i32
  %i.cj = shl i32 %indvars.iv29.tr.i.i.2, 3
  %i.ck = add i32 %i.cj, -32
  %i.cl = shl nuw i32 %i.ci, %i.ck
  %i.cm = or i32 %i.cl, %i.cf
  %indvars.iv.next30.i.i.2 = add nuw nsw i64 %indvars.iv29.i.i, 3 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i.2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %indvars.iv29.tr.i.i.3 = trunc i64 %indvars.iv.next30.i.i.2 to i32
  %i.cq = shl i32 %indvars.iv29.tr.i.i.3, 3
  %i.cr = add i32 %i.cq, -32
  %i.cs = shl nuw i32 %i.cp, %i.cr
  %i.ct = or i32 %i.cs, %i.cm                     ; 3 uses
  %indvars.iv.next30.i.i.3 = add nuw nsw i64 %indvars.iv29.i.i, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %dbgp_bulk_write.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !31

dbgp_bulk_write.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %dbgp_bulk_write.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %dbgp_bulk_write.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv29.i.i.epil.init = phi i64 [ %wide.trip.count.i.i, %.lr.ph.i.i.preheader ], [ %indvars.iv.next30.i.i.3, %dbgp_bulk_write.exit.loopexit.unr-lcssa ]
  %.01824.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ct, %dbgp_bulk_write.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv29.i.i.epil = phi i64 [ %indvars.iv.next30.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.01824.i.i.epil = phi i32 [ %i.da, %.lr.ph.i.i.epil ], [ %.01824.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter58 = phi i64 [ %epil.iter58.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cu = getelementptr i8, ptr %i.a, i64 %indvars.iv29.i.i.epil
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %indvars.iv29.tr.i.i.epil = trunc i64 %indvars.iv29.i.i.epil to i32
  %i.cx = shl i32 %indvars.iv29.tr.i.i.epil, 3
  %i.cy = add i32 %i.cx, -32
  %i.cz = shl nuw i32 %i.cw, %i.cy
  %i.da = or i32 %i.cz, %.01824.i.i.epil          ; 2 uses
  %indvars.iv.next30.i.i.epil = add nuw nsw i64 %indvars.iv29.i.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %dbgp_bulk_write.exit, label %.lr.ph.i.i.epil, !llvm.loop !32

dbgp_bulk_write.exit:                             ; preds = %dbgp_bulk_write.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader.i.i
  %.018.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ct, %dbgp_bulk_write.exit.loopexit.unr-lcssa ], [ %i.da, %.lr.ph.i.i.epil ]
  %i.db = load ptr, ptr @ehci_debug, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.lcssa, ptr elementtype(i32) %i.dc) #8, !srcloc !14
  %i.dd = load ptr, ptr @ehci_debug, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.018.lcssa.i.i, ptr elementtype(i32) %i.de) #8, !srcloc !14
  %i.df = load ptr, ptr @ehci_debug, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ak, ptr elementtype(i32) %i.dg) #8, !srcloc !14
  %i.dh = load ptr, ptr @ehci_debug, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ao, ptr elementtype(i32) %i.di) #8, !srcloc !14
  %i.dj = tail call fastcc i32 @dbgp_wait_until_done(i32 noundef %i.aq) #11 ; 0 uses
  %.not32 = icmp eq i32 %.227, 0
  br i1 %.not32, label %._crit_edge, label %.preheader.backedge

._crit_edge:                                      ; preds = %dbgp_bulk_write.exit, %bb.f
  br i1 %.not33, label %bb.n, label %bb.m, !prof !36

bb.m:                                             ; preds = %._crit_edge
  %i.dk = load ptr, ptr @ehci_regs, align 8
  %i.dl = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dk) #8, !srcloc !12
  %i.dm = and i32 %i.dl, -2
  %i.dn = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dm, ptr elementtype(i32) %i.dn) #8, !srcloc !14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 1, 0) i32 @dbgp_reset_prep(ptr nofree readnone captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 1, 0) i32 @dbgp_external_startup(ptr nofree readnone captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  ret i32 -1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -19, 1) i32 @_dbgp_external_startup() unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @dbgp_phys_port, align 4
  %i.b = add nsw i32 %i.a, -1
  %i.c = sext i32 %i.b to i64                     ; 19 uses
  br label %dbgp_ehci_controller_reset.exit.outer

dbgp_ehci_controller_reset.exit.outer:            ; preds = %bb.t, %bb.a
  %.038.ph = phi i32 [ %i.eq, %bb.t ], [ 1, %bb.a ] ; 2 uses
  %.037.ph = phi i32 [ %.037, %bb.t ], [ 1, %bb.a ]
  br label %dbgp_ehci_controller_reset.exit

dbgp_ehci_controller_reset.exit.loopexit:         ; preds = %bb.s
  br label %dbgp_ehci_controller_reset.exit, !llvm.loop !0

dbgp_ehci_controller_reset.exit:                  ; preds = %dbgp_ehci_controller_reset.exit.loopexit, %dbgp_ehci_controller_reset.exit.outer
  %.037 = phi i32 [ %.037.ph, %dbgp_ehci_controller_reset.exit.outer ], [ 0, %dbgp_ehci_controller_reset.exit.loopexit ] ; 2 uses
  %i.d = load ptr, ptr @ehci_debug, align 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #8, !srcloc !12
  %i.f = and i32 %i.e, -1342178305
  %i.g = or disjoint i32 %i.f, 1073741824
  %i.h = load ptr, ptr @ehci_debug, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.g, ptr elementtype(i32) %i.h) #8, !srcloc !14
  tail call void @__const_udelay(i64 noundef 4295) #9
  %i.i = load ptr, ptr @ehci_regs, align 8
  %i.j = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i) #8, !srcloc !12
  %i.k = and i32 %i.j, -244
  %i.l = or disjoint i32 %i.k, 1
  %i.m = load ptr, ptr @ehci_regs, align 8
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ehci-dbgp?download=true
inline.NumInlined: 121
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@early_dbgp_init:bb.a
  %i.x = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %i.k, i8 noundef zeroext %i.m, i8 noundef zeroext %i.o, i8 noundef zeroext 4) #9 ; 2 uses
  %i.y = and i8 %i.x, 2
  %.not33 = icmp eq i8 %i.y, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = or disjoint i8 %i.x, 2
  call void @write_pci_config_byte(i8 noundef zeroext %i.k, i8 noundef zeroext %i.m, i8 noundef zeroext %i.o, i8 noundef zeroext 4, i8 noundef zeroext %i.z) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = and i64 %i.v, 4294963200
  %i.ab = call i64 @cachemode2protval(i32 noundef 3) #9
  %i.ac = or i64 %i.ab, -9223372036854775453
  %i.ad = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.ae = and i64 %i.ac, %i.ad
  call void @native_set_fixmap(i32 noundef 512, i64 noundef range(i64 0, 4294963201) %i.aa, i64 %i.ae) #9
  %i.af = and i64 %i.v, 4080
  %i.ag = getelementptr i8, ptr inttoptr (i64 -10489856 to ptr), i64 %i.af ; 4 uses
  store ptr %i.ag, ptr @ehci_caps, align 8
  %i.ah = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag) #8, !srcloc !12
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %i.ag, i64 %i.aj
  store ptr %i.ak, ptr @ehci_regs, align 8
  %i.al = zext nneg i32 %i.s to i64
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.al
  store ptr %i.am, ptr @ehci_debug, align 8
  store i32 %i.j, ptr @ehci_dev.0, align 4
  store i32 %i.l, ptr @ehci_dev.1, align 4
  store i32 %i.n, ptr @ehci_dev.2, align 4
  call fastcc void @detect_set_debug_port() #10, !srcloc !18
  %i.an = call fastcc i32 @ehci_setup() #10, !srcloc !19
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr @ehci_debug, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.a, %bb.j
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.j ], [ -1, %bb.f ], [ -1, %bb.a ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @early_pci_allowed() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 0, 253) i32 @find_dbgp(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  br label %.preheader34

.preheader34:                                     ; preds = %bb.a, %bb.g
  %.02145 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.g ] ; 3 uses
  %.02344 = phi i32 [ %0, %bb.a ], [ %.326.ph, %bb.g ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader34, %bb.f
  %.02043 = phi i32 [ 0, %.preheader34 ], [ %i.d, %bb.f ] ; 3 uses
  %.12442 = phi i32 [ %.02344, %.preheader34 ], [ %.326.ph, %bb.f ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %.01941 = phi i32 [ 0, %.preheader ], [ %i.c, %bb.e ] ; 3 uses
  %.22540 = phi i32 [ %.12442, %.preheader ], [ %.326.ph, %bb.e ] ; 3 uses
  %i.a = tail call fastcc i32 @__find_dbgp(i32 noundef %.02145, i32 noundef %.02043, i32 noundef %.01941) #10, !srcloc !23 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i32 %.22540, -1
  %.not28 = icmp eq i32 %.22540, 0
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.02145, ptr %1, align 4
  store i32 %.02043, ptr %2, align 4
  store i32 %.01941, ptr %3, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.c
  %.326.ph = phi i32 [ %i.b, %bb.c ], [ %.22540, %bb.b ] ; 3 uses
  %i.c = add nuw nsw i32 %.01941, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, 8
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %i.d = add nuw nsw i32 %.02043, 1               ; 2 uses
  %exitcond50.not = icmp eq i32 %i.d, 32
  br i1 %exitcond50.not, label %bb.g, label %.preheader, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  %i.e = add nuw nsw i32 %.02145, 1               ; 2 uses
  %exitcond51.not = icmp eq i32 %i.e, 256
  br i1 %exitcond51.not, label %.loopexit, label %.preheader34, !llvm.loop !22

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.4 = phi i32 [ %i.a, %bb.d ], [ 0, %bb.g ]
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @read_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @write_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

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
  %indvars.iv = phi i64 [ %indvars.iv.be, %.preheader.backedge ], [ 0, %bb.f ] ; 7 uses
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
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
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
  %.01920.i.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.bs, %.preheader.i.i.unr-lcssa ]
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
  %.lcssa = phi i32 [ %i.bs, %.preheader.i.i.unr-lcssa ], [ %i.aj, %bb.k ]
  %i.ak = or disjoint i32 %i.v, 32512
  %i.al = and i32 %i.y, -65536
  %i.am = shl nuw nsw i32 %i.aa, 8
  %i.an = or i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, 225
  %i.ap = and i32 %i.ac, -64
  %i.aq = or disjoint i32 %i.ap, %i.u
  %i.ar = or disjoint i32 %i.aq, 48
  %i.as = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.as, label %.lr.ph.i.i.preheader, label %dbgp_bulk_write.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.at = add i64 %indvars.iv, 1
  %i.au = sub i64 %i.at, %wide.trip.count.i.i     ; 2 uses
  %i.av = sub i64 %indvars.iv, %wide.trip.count.i.i
  %xtraiter57 = and i64 %i.au, 3                  ; 3 uses
  %i.aw = icmp ult i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter62 = and i64 %i.au, -4
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.l ] ; 5 uses
  %.01920.i.i = phi i32 [ 0, %.new ], [ %i.bs, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.ax = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = zext i8 %i.ay to i32
  %i.ba = or i32 %.01920.i.i, %i.az
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %indvars.iv.tr.i.i.1 = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.be = shl nuw nsw i32 %indvars.iv.tr.i.i.1, 3
  %i.bf = shl nuw i32 %i.bd, %i.be
  %i.bg = or i32 %i.bf, %i.ba
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = zext i8 %i.bi to i32
  %indvars.iv.tr.i.i.2 = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.bk = shl nuw nsw i32 %indvars.iv.tr.i.i.2, 3
  %i.bl = shl nuw i32 %i.bj, %i.bk
  %i.bm = or i32 %i.bl, %i.bg
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %indvars.iv.tr.i.i.3 = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.bq = shl nuw nsw i32 %indvars.iv.tr.i.i.3, 3
  %i.br = shl nuw i32 %i.bp, %i.bq
  %i.bs = or i32 %i.br, %i.bm                     ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
end_hunk_0
begin_hunk_1_@dbgp_wait_until_done:bb.a
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #8, !srcloc !12 ; 0 uses
  %.b = load i1, ptr @dbgp_not_safe, align 4
  br i1 %.b, label %.thread34, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @dbgp_not_safe, align 4
  br label %.thread34

bb.d:                                             ; preds = %dbgp_wait_until_complete.exit
  %i.y = icmp eq i32 %i.n, 1
  %i.z = add i32 %.0, -1                          ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %or.cond21 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond21, label %.backedge.backedge, label %.thread34.loopexit.split.loop.exit

.backedge.backedge:                               ; preds = %bb.d, %bb.f
  %.0.be = phi i32 [ %i.z, %bb.d ], [ %i.af, %bb.f ]
  br label %.backedge

bb.e:                                             ; preds = %dbgp_wait_until_complete.exit.thread27, %dbgp_wait_until_complete.exit
  %i.ab = phi i32 [ %i.r, %dbgp_wait_until_complete.exit.thread27 ], [ %i.u, %dbgp_wait_until_complete.exit ] ; 2 uses
  %.0.i29 = phi i32 [ %i.o, %dbgp_wait_until_complete.exit.thread27 ], [ 0, %dbgp_wait_until_complete.exit ] ; 2 uses
  %i.ac = lshr i32 %i.ab, 16
  %trunc = trunc i32 %i.ac to i8
  switch i8 %trunc, label %.thread34 [
    i8 -106, label %bb.f
    i8 90, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ad = and i32 %i.ab, 16711680
  %i.ae = icmp eq i32 %i.ad, 5898240
  %i.af = add nsw i32 %.0, -1
  %i.ag = icmp sgt i32 %.0, 1
  %or.cond23 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond23, label %.backedge.backedge, label %.thread34

.thread34.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.ah = sub nsw i32 0, %i.n
  br label %.thread34

.thread34:                                        ; preds = %bb.e, %bb.f, %.thread34.loopexit.split.loop.exit, %bb.b, %bb.c
  %.0.i26 = phi i32 [ -250000, %bb.b ], [ -250000, %bb.c ], [ %i.ah, %.thread34.loopexit.split.loop.exit ], [ %.0.i29, %bb.f ], [ %.0.i29, %bb.e ]
  ret i32 %.0.i26
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -250000, 16) i32 @dbgp_control_msg(i32 noundef range(i32 -2147483648, 128) %0, i32 noundef range(i32 0, 129) %1, i32 noundef range(i32 3, 7) %2, i32 noundef range(i32 6, 2561) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef range(i32 0, 5) %5) unnamed_addr #3 align 16 {
bb.a:
  %i.a = lshr i32 %1, 4
  %i.b = and i32 %i.a, 8
  %i.c = icmp samesign ugt i32 %5, %i.b
  br i1 %i.c, label %dbgp_bulk_read.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = load ptr, ptr @ehci_debug, align 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #8, !srcloc !12
  %i.f = shl nuw nsw i32 %5, 16
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = shl nuw nsw i32 %3, 16
  %i.i = and i32 %i.h, 16711680
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = shl nuw nsw i32 %3, 16
  %i.l = and i32 %i.k, 251658240
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = or disjoint i32 %i.m, %1
  %i.o = shl i32 %0, 8                            ; 2 uses
  %i.p = and i32 %i.e, -64
  %i.q = or disjoint i32 %i.p, 56
  %i.r = load ptr, ptr @ehci_debug, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr elementtype(i32) %i.s) #8, !srcloc !14
  %i.t = load ptr, ptr @ehci_debug, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.f, ptr elementtype(i32) %i.u) #8, !srcloc !14
  %i.v = load ptr, ptr @ehci_debug, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, ptr elementtype(i32) %i.w) #8, !srcloc !14
  %i.x = load ptr, ptr @ehci_debug, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 49965, ptr elementtype(i32) %i.y) #8, !srcloc !14
  %i.z = tail call fastcc i32 @dbgp_wait_until_done(i32 noundef %i.q) #11 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %dbgp_bulk_read.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.ab = load ptr, ptr @ehci_debug, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ac) #8, !srcloc !12
  %i.ae = and i32 %i.ad, -65536
  %i.af = or disjoint i32 %i.ae, 50025
  %i.ag = load ptr, ptr @ehci_debug, align 8
  %i.ah = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag) #8, !srcloc !12
  %i.ai = and i32 %i.ah, -64
  %i.aj = or disjoint i32 %5, %i.ai
  %i.ak = or disjoint i32 %i.aj, 32
  %i.al = load ptr, ptr @ehci_debug, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, ptr elementtype(i32) %i.am) #8, !srcloc !14
  %i.an = load ptr, ptr @ehci_debug, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, ptr elementtype(i32) %i.ao) #8, !srcloc !14
  %i.ap = tail call fastcc i32 @dbgp_wait_until_done(i32 noundef %i.ak) #11 ; 8 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %dbgp_bulk_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 5) %5, i32 %i.ap) ; 4 uses
  %i.ar = load ptr, ptr @ehci_debug, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.as) #8, !srcloc !12 ; 4 uses
  %i.au = load ptr, ptr @ehci_debug, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 12
  %i.aw = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av) #8, !srcloc !12 ; 0 uses
  %.not.i.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i.i, label %dbgp_bulk_read.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ax = trunc i32 %i.at to i8
  store i8 %i.ax, ptr %4, align 1
  %exitcond.not.i.i = icmp eq i32 %spec.select.i, 1
  br i1 %exitcond.not.i.i, label %dbgp_bulk_read.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ay = lshr i32 %i.at, 8
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr i8, ptr %4, i64 1
  store i8 %i.az, ptr %i.ba, align 1
  %exitcond.not.i.i.1 = icmp eq i32 %spec.select.i, 2
  br i1 %exitcond.not.i.i.1, label %dbgp_bulk_read.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.bb = lshr i32 %i.at, 16
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr i8, ptr %4, i64 2
  store i8 %i.bc, ptr %i.bd, align 1
  %exitcond.not.i.i.2 = icmp eq i32 %spec.select.i, 3
  br i1 %exitcond.not.i.i.2, label %dbgp_bulk_read.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.be = lshr i32 %i.at, 24
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr i8, ptr %4, i64 3
  store i8 %i.bf, ptr %i.bg, align 1
  br label %dbgp_bulk_read.exit

dbgp_bulk_read.exit:                              ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %bb.c, %bb.b, %.lr.ph.i.preheader, %bb.a
  %.0 = phi i32 [ %i.z, %.lr.ph.i.preheader ], [ -1, %bb.a ], [ %i.ap, %bb.b ], [ %i.ap, %bb.c ], [ %i.ap, %.lr.ph.i.i.3 ], [ %i.ap, %.lr.ph.i.i.2 ], [ %i.ap, %.lr.ph.i.i.1 ], [ %i.ap, %.lr.ph.i.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { cold noredzone "no-builtin-wcslen" }
attributes #11 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !13}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"auto-init"}
!12 = !{i64 2153648733}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2153651126}
!15 = !{i64 2157225698}
!16 = !{i64 2441706}
!17 = !{i64 20838}
!18 = !{i64 22301}
!19 = !{i64 22334}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = !{i64 10099}
!24 = distinct !{!24, !13}
!25 = !{i64 19012}
!26 = !{ptr @default_set_debug_port, ptr @nvidia_set_debug_port}
!27 = !{i64 19924}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !35}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !35}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{i64 23041}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{i64 2153645379}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
end_hunk_1

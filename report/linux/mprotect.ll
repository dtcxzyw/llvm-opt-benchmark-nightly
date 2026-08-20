inline.NumInlined: 409
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@change_protection:bb.a
  %niter87 = phi i32 [ 0, %.lr.ph.i276.i.i.i.i.i.preheader ], [ %niter87.next.1, %.lr.ph.i276.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  store i64 %.sroa.08.03.i277.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i, ptr %.0131.i279.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  %.not.i.i14.i281.i.i.i.i.i = icmp ne i64 %.sroa.08.03.i277.i.i.i.i.i, 0
  %i.mx = and i64 %.sroa.08.03.i277.i.i.i.i.i, 1
  %.not2.i.i15.i282.i.i.i.i.i = icmp eq i64 %i.mx, 0
  %i.my = and i1 %.not.i.i14.i281.i.i.i.i.i, %.not2.i.i15.i282.i.i.i.i.i
  %.sroa.04.0.p.i16.i283.i.i.i.i.i = select i1 %i.my, i64 -4096, i64 4096
  %.sroa.04.0.i17.i284.i.i.i.i.i = add i64 %.sroa.04.0.p.i16.i283.i.i.i.i.i, %.sroa.08.03.i277.i.i.i.i.i ; 3 uses
  %i.mz = getelementptr i8, ptr %.0131.i279.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i284.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i.1 = load volatile i64, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i.1, ptr %i.mz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  %.not.i.i14.i281.i.i.i.i.i.1 = icmp ne i64 %.sroa.04.0.i17.i284.i.i.i.i.i, 0
  %i.na = and i64 %.sroa.08.03.i277.i.i.i.i.i, 1
  %.not2.i.i15.i282.i.i.i.i.i.1 = icmp eq i64 %i.na, 0
  %i.nb = and i1 %.not.i.i14.i281.i.i.i.i.i.1, %.not2.i.i15.i282.i.i.i.i.i.1
  %.sroa.04.0.p.i16.i283.i.i.i.i.i.1 = select i1 %i.nb, i64 -4096, i64 4096
  %.sroa.04.0.i17.i284.i.i.i.i.i.1 = add i64 %.sroa.04.0.p.i16.i283.i.i.i.i.i.1, %.sroa.04.0.i17.i284.i.i.i.i.i ; 2 uses
  %i.nc = getelementptr i8, ptr %.0131.i279.i.i.i.i.i, i64 16 ; 2 uses
  %niter87.next.1 = add i32 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i32 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %modify_prot_commit_ptes.exit286.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i276.i.i.i.i.i, !llvm.loop !32

modify_prot_commit_ptes.exit286.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i276.i.i.i.i.i
  %lcmp.mod84.not = icmp eq i32 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %modify_prot_commit_ptes.exit286.i.i.i.i.i, label %.lr.ph.i276.i.i.i.i.i.epil.preheader

.lr.ph.i276.i.i.i.i.i.epil.preheader:             ; preds = %modify_prot_commit_ptes.exit286.i.i.i.i.i.loopexit.unr-lcssa
  %lcmp.mod85 = trunc i32 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i284.i.i.i.i.i.1, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i.epil = load volatile i64, ptr %.sroa.0.i.i.i.i.i274.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.i.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.i274.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i280.i.i.i.i.i.epil, ptr %i.nc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i274.i.i.i.i.i)
  br label %modify_prot_commit_ptes.exit286.i.i.i.i.i

modify_prot_commit_ptes.exit286.i.i.i.i.i:        ; preds = %.lr.ph.i276.i.i.i.i.i.epil.preheader, %modify_prot_commit_ptes.exit286.i.i.i.i.i.loopexit.unr-lcssa, %bb.bd
  br i1 %.not2.i.i.i.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %modify_prot_commit_ptes.exit286.i.i.i.i.i
  %.not.i.i.i6.i93.i.i.i.i = icmp ne i64 %.sroa.016.0.i.i.i.i.i.i, 0
  %i.nd = and i64 %.sroa.016.0.i.i.i.i.i.i, 1
  %.not2.i.i.i7.i94.i.i.i.i = icmp eq i64 %i.nd, 0
  %i.ne = and i1 %.not.i.i.i6.i93.i.i.i.i, %.not2.i.i.i7.i94.i.i.i.i
  %i.nf = sext i1 %i.ne to i64
  %i.ng = xor i64 %.sroa.013.1.i.i.i.i.i, %i.nf
  %i.nh = xor i64 %i.ng, %.sroa.016.0.i.i.i.i.i.i
  %i.ni = and i64 %i.nh, 4503599627366400
  %.not5.i95.i.i.i.i = icmp eq i64 %i.ni, 0
  br i1 %.not5.i95.i.i.i.i, label %pte_needs_flush.exit98.i.i.i.i, label %pte_needs_flush.exit98.thread.i.i.i.i

pte_needs_flush.exit98.i.i.i.i:                   ; preds = %bb.be
  %i.nj = xor i64 %.sroa.016.0.i.i.i.i.i.i, %.sroa.013.1.i.i.i.i.i
  %i.nk = and i64 %.sroa.013.1.i.i.i.i.i, 65
  %i.nl = or disjoint i64 %i.nk, -576460752303423074
  %i.nm = and i64 %i.nj, %i.nl
  %.08.i.i97.not.i.i.i.i = icmp eq i64 %i.nm, 0
  br i1 %.08.i.i97.not.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %pte_needs_flush.exit98.thread.i.i.i.i

pte_needs_flush.exit98.thread.i.i.i.i:            ; preds = %pte_needs_flush.exit98.i.i.i.i, %bb.be
  %i.nn = sext i32 %i.gs to i64
  %i.no = shl nsw i64 %i.nn, 12
  %i.np = load i64, ptr %i.aq, align 8
  %i.nq = call i64 @llvm.umin.i64(i64 %i.np, i64 %.078.i.i.i.i.i)
  store i64 %i.nq, ptr %i.aq, align 8
  %i.nr = load i64, ptr %i.ar, align 8
  %i.ns = and i64 %i.no, 4294963200
  %i.nt = add i64 %i.ns, %.078.i.i.i.i.i
  %i.nu = call i64 @llvm.umax.i64(i64 %i.nr, i64 %i.nt)
  br label %change_present_ptes.exit99.sink.split.i.i.i.i.i

bb.bf:                                            ; preds = %pte_write.exit261.thread.i.i.i.i.i
  br i1 %.not.i287.not.i.i.i.i.i, label %maybe_change_pte_writable.exit289.thread.i.i.i.i.i, label %maybe_change_pte_writable.exit289.i.i.i.i.i, !prof !10

maybe_change_pte_writable.exit289.thread.i.i.i.i.i: ; preds = %bb.bf
  call void asm sideeffect "715: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 715b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 715) #8, !srcloc !11
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 43, i32 2307, i64 16) #8, !srcloc !12
  call void asm sideeffect "716: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 716b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 716) #8, !srcloc !13
  br label %.critedge.i103.i.i.i.i.i

maybe_change_pte_writable.exit289.i.i.i.i.i:      ; preds = %bb.bf
  %i.nv = getelementptr i8, ptr %i.eq, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = trunc i64 %i.nx to i1
  br i1 %i.ny, label %.preheader414.i.i.i.i.i, label %.critedge.i103.i.i.i.i.i

.preheader414.i.i.i.i.i:                          ; preds = %maybe_change_pte_writable.exit289.i.i.i.i.i
  %.not.i114416.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i114416.i.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader414.i.i.i.i.i
  %.not.i.i318.i.i.i.i.i = icmp ne i64 %i.mp, 0
  %i.nz = and i64 %spec.select.i.i.i.i.i.i, 1
  %.not2.i.i319.i.i.i.i.i = icmp eq i64 %i.nz, 0
  %i.oa = and i1 %.not2.i.i319.i.i.i.i.i, %.not.i.i318.i.i.i.i.i
  %i.ob = and i64 %.sroa.013.1.i.i.i.i.i, 65
  %i.oc = or disjoint i64 %i.ob, -576460752303423074
  br label %bb.bh

.critedge.i103.i.i.i.i.i:                         ; preds = %maybe_change_pte_writable.exit289.i.i.i.i.i, %maybe_change_pte_writable.exit289.thread.i.i.i.i.i
  %.not.i299.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i299.i.i.i.i.i, label %modify_prot_commit_ptes.exit310.i.i.i.i.i, label %.lr.ph.i300.i.i.i.i.i.preheader

.lr.ph.i300.i.i.i.i.i.preheader:                  ; preds = %.critedge.i103.i.i.i.i.i
  %xtraiter93 = and i32 %i.gs, 1
  %unroll_iter96 = and i32 %i.gs, -2
  br label %.lr.ph.i300.i.i.i.i.i

.lr.ph.i300.i.i.i.i.i:                            ; preds = %.lr.ph.i300.i.i.i.i.i, %.lr.ph.i300.i.i.i.i.i.preheader
  %.sroa.08.03.i301.i.i.i.i.i = phi i64 [ %i.mp, %.lr.ph.i300.i.i.i.i.i.preheader ], [ %.sroa.04.0.i17.i308.i.i.i.i.i.1, %.lr.ph.i300.i.i.i.i.i ] ; 5 uses
  %.0131.i303.i.i.i.i.i = phi ptr [ %.083.i.i.i.i.i, %.lr.ph.i300.i.i.i.i.i.preheader ], [ %i.oi, %.lr.ph.i300.i.i.i.i.i ] ; 3 uses
  %niter97 = phi i32 [ 0, %.lr.ph.i300.i.i.i.i.i.preheader ], [ %niter97.next.1, %.lr.ph.i300.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  store i64 %.sroa.08.03.i301.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i, ptr %.0131.i303.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  %.not.i.i14.i305.i.i.i.i.i = icmp ne i64 %.sroa.08.03.i301.i.i.i.i.i, 0
  %i.od = and i64 %.sroa.08.03.i301.i.i.i.i.i, 1
  %.not2.i.i15.i306.i.i.i.i.i = icmp eq i64 %i.od, 0
  %i.oe = and i1 %.not.i.i14.i305.i.i.i.i.i, %.not2.i.i15.i306.i.i.i.i.i
  %.sroa.04.0.p.i16.i307.i.i.i.i.i = select i1 %i.oe, i64 -4096, i64 4096
  %.sroa.04.0.i17.i308.i.i.i.i.i = add i64 %.sroa.04.0.p.i16.i307.i.i.i.i.i, %.sroa.08.03.i301.i.i.i.i.i ; 3 uses
  %i.of = getelementptr i8, ptr %.0131.i303.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i308.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i.1 = load volatile i64, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i.1, ptr %i.of, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  %.not.i.i14.i305.i.i.i.i.i.1 = icmp ne i64 %.sroa.04.0.i17.i308.i.i.i.i.i, 0
  %i.og = and i64 %.sroa.08.03.i301.i.i.i.i.i, 1
  %.not2.i.i15.i306.i.i.i.i.i.1 = icmp eq i64 %i.og, 0
  %i.oh = and i1 %.not.i.i14.i305.i.i.i.i.i.1, %.not2.i.i15.i306.i.i.i.i.i.1
  %.sroa.04.0.p.i16.i307.i.i.i.i.i.1 = select i1 %i.oh, i64 -4096, i64 4096
  %.sroa.04.0.i17.i308.i.i.i.i.i.1 = add i64 %.sroa.04.0.p.i16.i307.i.i.i.i.i.1, %.sroa.04.0.i17.i308.i.i.i.i.i ; 2 uses
  %i.oi = getelementptr i8, ptr %.0131.i303.i.i.i.i.i, i64 16 ; 2 uses
  %niter97.next.1 = add i32 %niter97, 2           ; 2 uses
  %niter97.ncmp.1 = icmp eq i32 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %modify_prot_commit_ptes.exit310.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i300.i.i.i.i.i, !llvm.loop !32

modify_prot_commit_ptes.exit310.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i300.i.i.i.i.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %modify_prot_commit_ptes.exit310.i.i.i.i.i, label %.lr.ph.i300.i.i.i.i.i.epil.preheader

.lr.ph.i300.i.i.i.i.i.epil.preheader:             ; preds = %modify_prot_commit_ptes.exit310.i.i.i.i.i.loopexit.unr-lcssa
  %lcmp.mod95 = trunc i32 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod95)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i308.i.i.i.i.i.1, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i.epil = load volatile i64, ptr %.sroa.0.i.i.i.i.i298.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.i.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.i298.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i304.i.i.i.i.i.epil, ptr %i.oi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i298.i.i.i.i.i)
  br label %modify_prot_commit_ptes.exit310.i.i.i.i.i

modify_prot_commit_ptes.exit310.i.i.i.i.i:        ; preds = %.lr.ph.i300.i.i.i.i.i.epil.preheader, %modify_prot_commit_ptes.exit310.i.i.i.i.i.loopexit.unr-lcssa, %.critedge.i103.i.i.i.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %modify_prot_commit_ptes.exit310.i.i.i.i.i
  %.not.i.i.i6.i86.i.i.i.i = icmp ne i64 %i.mp, 0
  %i.oj = and i64 %spec.select.i.i.i.i.i.i, 1
  %.not2.i.i.i7.i87.i.i.i.i = icmp eq i64 %i.oj, 0
  %i.ok = and i1 %.not2.i.i.i7.i87.i.i.i.i, %.not.i.i.i6.i86.i.i.i.i
  %i.ol = sext i1 %i.ok to i64
  %i.om = xor i64 %.sroa.013.1.i.i.i.i.i, %i.ol
  %i.on = xor i64 %i.om, %i.mp
  %i.oo = and i64 %i.on, 4503599627366400
  %.not5.i88.i.i.i.i = icmp eq i64 %i.oo, 0
  br i1 %.not5.i88.i.i.i.i, label %pte_needs_flush.exit91.i.i.i.i, label %pte_needs_flush.exit91.thread.i.i.i.i

pte_needs_flush.exit91.i.i.i.i:                   ; preds = %bb.bg
  %i.op = xor i64 %i.mp, %.sroa.013.1.i.i.i.i.i
  %i.oq = and i64 %.sroa.013.1.i.i.i.i.i, 65
  %i.or = or disjoint i64 %i.oq, -576460752303423074
  %i.os = and i64 %i.op, %i.or
  %.08.i.i90.not.i.i.i.i = icmp eq i64 %i.os, 0
  br i1 %.08.i.i90.not.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %pte_needs_flush.exit91.thread.i.i.i.i

pte_needs_flush.exit91.thread.i.i.i.i:            ; preds = %pte_needs_flush.exit91.i.i.i.i, %bb.bg
  %i.ot = sext i32 %i.gs to i64
  %i.ou = shl nsw i64 %i.ot, 12
  %i.ov = load i64, ptr %i.aq, align 8
  %i.ow = call i64 @llvm.umin.i64(i64 %i.ov, i64 %.078.i.i.i.i.i)
  store i64 %i.ow, ptr %i.aq, align 8
  %i.ox = load i64, ptr %i.ar, align 8
  %i.oy = and i64 %i.ou, 4294963200
  %i.oz = add i64 %i.oy, %.078.i.i.i.i.i
  %i.pa = call i64 @llvm.umax.i64(i64 %i.ox, i64 %i.oz)
  br label %change_present_ptes.exit99.sink.split.i.i.i.i.i

bb.bh:                                            ; preds = %prot_commit_flush_ptes.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i418.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %.0.i136.i.i.i.i.i.lcssa, %prot_commit_flush_ptes.exit.i.i.i.i.i.i ] ; 5 uses
  %.018.i417.i.i.i.i.i = phi i32 [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %i.rx, %prot_commit_flush_ptes.exit.i.i.i.i.i.i ] ; 2 uses
  %i.pb = sext i32 %.0.i418.i.i.i.i.i to i64      ; 5 uses
  %i.pc = getelementptr [64 x i8], ptr %i.ei, i64 %i.pb ; 3 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 8      ; 2 uses
  %i.pe = load volatile i64, ptr %i.pd, align 8   ; 2 uses
  %i.pf = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.pg = and i64 %i.pe, 1
  %i.ph = add nsw i64 %i.pg, -1
  %i.pi = or i64 %i.ph, %i.pe
  %i.pj = and i64 %i.pi, %i.pf
  %i.pk = inttoptr i64 %i.pj to ptr
  %i.pl = getelementptr i8, ptr %i.pk, i64 48
  %i.pm = load i32, ptr %i.pl, align 16
  %.mask.i.i311.i.i.i.i.i = and i32 %i.pm, -16777216
  %i.pn = icmp eq i32 %.mask.i.i311.i.i.i.i.i, -201326592
  br i1 %i.pn, label %bb.bi, label %PageAnonExclusive.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.po = load volatile i64, ptr %i.pd, align 8   ; 2 uses
  %i.pp = and i64 %i.po, 1
  %i.pq = add nsw i64 %i.pp, -1
  %i.pr = or i64 %i.pq, %i.po
  %i.ps = and i64 %i.pr, %i.pf
  %i.pt = inttoptr i64 %i.ps to ptr
  br label %PageAnonExclusive.exit.i.i.i.i.i.i

PageAnonExclusive.exit.i.i.i.i.i.i:               ; preds = %bb.bh, %bb.bi
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.pt, %bb.bi ], [ %i.pc, %bb.bh ]
  %i.pu = load volatile i64, ptr %.0.i.i.i.i.i.i.i, align 8
  %.in.i.i.in.i.i.i.i.i = and i64 %i.pu, 2048     ; 2 uses
  %.in.i.i.not.i.i.i.i.i = icmp eq i64 %.in.i.i.in.i.i.i.i.i, 0
  %i.pv = add i32 %.018.i417.i.i.i.i.i, %.0.i418.i.i.i.i.i ; 3 uses
  %.in.i.i.in.lobit.i.i.i.i.i = lshr exact i64 %.in.i.i.in.i.i.i.i.i, 11
  %i.pw = trunc nuw nsw i64 %.in.i.i.in.lobit.i.i.i.i.i to i32
  %.0.i136.i.i.i.i.i69 = add i32 %.0.i418.i.i.i.i.i, 1
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.pv, i32 %.0.i136.i.i.i.i.i69) ; 2 uses
  %indvars.iv.next.i.i.i.i.i69 = add nsw i64 %i.pb, 1 ; 2 uses
  %indvars.i.i.i.i.i70 = trunc i64 %indvars.iv.next.i.i.i.i.i69 to i32 ; 2 uses
  %6 = icmp sgt i32 %i.pv, %indvars.i.i.i.i.i70
  br i1 %6, label %.lr.ph, label %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i

bb.bj:                                            ; preds = %PageAnonExclusive.exit.i141.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.next.i.i.i.i.i71, 1 ; 2 uses
  %indvars.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i to i32 ; 2 uses
  %7 = icmp sgt i32 %i.pv, %indvars.i.i.i.i.i
  br i1 %7, label %.lr.ph, label %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i, !llvm.loop !33

.lr.ph:                                           ; preds = %PageAnonExclusive.exit.i.i.i.i.i.i, %bb.bj
  %.0.i136.i.i.i.i.i70 = phi i32 [ %indvars.i.i.i.i.i, %bb.bj ], [ %indvars.i.i.i.i.i70, %PageAnonExclusive.exit.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i71 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.bj ], [ %indvars.iv.next.i.i.i.i.i69, %PageAnonExclusive.exit.i.i.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %indvars.iv.next.i.i.i.i.i71, 32
  %8 = ashr exact i64 %sext.i.i.i.i.i, 26
  %9 = getelementptr i8, ptr %i.ei, i64 %8        ; 3 uses
  %i.px = getelementptr i8, ptr %9, i64 8         ; 2 uses
  %i.py = load volatile i64, ptr %i.px, align 8   ; 2 uses
  %i.pz = ptrtoint ptr %9 to i64                  ; 2 uses
  %i.qa = and i64 %i.py, 1
  %i.qb = add nsw i64 %i.qa, -1
  %i.qc = or i64 %i.qb, %i.py
  %i.qd = and i64 %i.qc, %i.pz
  %i.qe = inttoptr i64 %i.qd to ptr
  %i.qf = getelementptr i8, ptr %i.qe, i64 48
  %i.qg = load i32, ptr %i.qf, align 16
  %.mask.i.i312.i.i.i.i.i = and i32 %i.qg, -16777216
  %i.qh = icmp eq i32 %.mask.i.i312.i.i.i.i.i, -201326592
  br i1 %i.qh, label %bb.bk, label %PageAnonExclusive.exit.i141.i.i.i.i.i

bb.bk:                                            ; preds = %.lr.ph
  %i.qi = load volatile i64, ptr %i.px, align 8   ; 2 uses
  %i.qj = and i64 %i.qi, 1
  %i.qk = add nsw i64 %i.qj, -1
  %i.ql = or i64 %i.qk, %i.qi
  %i.qm = and i64 %i.ql, %i.pz
  %i.qn = inttoptr i64 %i.qm to ptr
  br label %PageAnonExclusive.exit.i141.i.i.i.i.i

PageAnonExclusive.exit.i141.i.i.i.i.i:            ; preds = %.lr.ph, %bb.bk
  %.0.i.i137.i.i.i.i.i = phi ptr [ %i.qn, %bb.bk ], [ %9, %.lr.ph ]
  %i.qo = load volatile i64, ptr %.0.i.i137.i.i.i.i.i, align 8
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = lshr i32 %i.qp, 11
  %i.qr = and i32 %i.qq, 1
  %.not.i143.i.i.i.i.i = icmp eq i32 %i.qr, %i.pw
  br i1 %.not.i143.i.i.i.i.i, label %bb.bj, label %PageAnonExclusive.exit.i141.i.i.i.i.i.page_anon_exclusive_sub_batch.exit144.i.i.i.i.i_crit_edge, !llvm.loop !33

PageAnonExclusive.exit.i141.i.i.i.i.i.page_anon_exclusive_sub_batch.exit144.i.i.i.i.i_crit_edge: ; preds = %PageAnonExclusive.exit.i141.i.i.i.i.i
  br label %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i, !llvm.loop !33

page_anon_exclusive_sub_batch.exit144.i.i.i.i.i:  ; preds = %bb.bj, %PageAnonExclusive.exit.i141.i.i.i.i.i.page_anon_exclusive_sub_batch.exit144.i.i.i.i.i_crit_edge, %PageAnonExclusive.exit.i.i.i.i.i.i
  %.0.i136.i.i.i.i.i.lcssa = phi i32 [ %.0.i136.i.i.i.i.i70, %PageAnonExclusive.exit.i141.i.i.i.i.i.page_anon_exclusive_sub_batch.exit144.i.i.i.i.i_crit_edge ], [ %smax.i.i.i.i, %PageAnonExclusive.exit.i.i.i.i.i.i ], [ %smax.i.i.i.i, %bb.bj ] ; 3 uses
  %i.qs = sub i32 %.0.i136.i.i.i.i.i.lcssa, %.0.i418.i.i.i.i.i
  %i.qt = freeze i32 %i.qs                        ; 6 uses
  %i.qu = shl nsw i64 %i.pb, 12                   ; 3 uses
  %i.qv = add i64 %i.qu, %.078.i.i.i.i.i          ; 2 uses
  %i.qw = getelementptr [8 x i8], ptr %.083.i.i.i.i.i, i64 %i.pb ; 2 uses
  %.neg.i315.i.i.i.i.i = mul nsw i64 %i.pb, -4096 ; 2 uses
  %.sroa.04.0.p.i316.i.i.i.i.i = select i1 %i.ma, i64 %.neg.i315.i.i.i.i.i, i64 %i.qu
  %.sroa.04.0.i317.i.i.i.i.i = add i64 %.sroa.04.0.p.i316.i.i.i.i.i, %spec.select.i.i.i.i.i ; 2 uses
  %.sroa.04.0.p.i321.i.i.i.i.i = select i1 %i.oa, i64 %.neg.i315.i.i.i.i.i, i64 %i.qu
  %.sroa.04.0.i322.i.i.i.i.i = add i64 %.sroa.04.0.p.i321.i.i.i.i.i, %i.mp ; 2 uses
  br i1 %.in.i.i.not.i.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i
  %i.qx = call i64 @pte_mkwrite(i64 %.sroa.04.0.i322.i.i.i.i.i, ptr noundef %1) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i
  %.sroa.016.0.i.i.i.i.i.i.i = phi i64 [ %i.qx, %bb.bl ], [ %.sroa.04.0.i322.i.i.i.i.i, %page_anon_exclusive_sub_batch.exit144.i.i.i.i.i ] ; 6 uses
  %.not.i324.i.i.i.i.i = icmp eq i32 %.0.i418.i.i.i.i.i, %.0.i136.i.i.i.i.i.lcssa
  br i1 %.not.i324.i.i.i.i.i, label %modify_prot_commit_ptes.exit335.i.i.i.i.i, label %.lr.ph.i325.i.i.i.i.i.preheader

.lr.ph.i325.i.i.i.i.i.preheader:                  ; preds = %bb.bm
  %xtraiter88 = and i32 %i.qt, 1
  %i.qy = icmp eq i32 %i.qt, 1
  br i1 %i.qy, label %.lr.ph.i325.i.i.i.i.i.epil.preheader, label %.lr.ph.i325.i.i.i.i.i.preheader.new

.lr.ph.i325.i.i.i.i.i.preheader.new:              ; preds = %.lr.ph.i325.i.i.i.i.i.preheader
  %unroll_iter91 = and i32 %i.qt, -2
  br label %.lr.ph.i325.i.i.i.i.i

.lr.ph.i325.i.i.i.i.i:                            ; preds = %.lr.ph.i325.i.i.i.i.i, %.lr.ph.i325.i.i.i.i.i.preheader.new
  %.sroa.08.03.i326.i.i.i.i.i = phi i64 [ %.sroa.016.0.i.i.i.i.i.i.i, %.lr.ph.i325.i.i.i.i.i.preheader.new ], [ %.sroa.04.0.i17.i333.i.i.i.i.i.1, %.lr.ph.i325.i.i.i.i.i ] ; 5 uses
  %.0131.i328.i.i.i.i.i = phi ptr [ %i.qw, %.lr.ph.i325.i.i.i.i.i.preheader.new ], [ %i.re, %.lr.ph.i325.i.i.i.i.i ] ; 3 uses
  %niter92 = phi i32 [ 0, %.lr.ph.i325.i.i.i.i.i.preheader.new ], [ %niter92.next.1, %.lr.ph.i325.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  store i64 %.sroa.08.03.i326.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i, ptr %.0131.i328.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  %.not.i.i14.i330.i.i.i.i.i = icmp ne i64 %.sroa.08.03.i326.i.i.i.i.i, 0
  %i.qz = and i64 %.sroa.08.03.i326.i.i.i.i.i, 1
  %.not2.i.i15.i331.i.i.i.i.i = icmp eq i64 %i.qz, 0
  %i.ra = and i1 %.not.i.i14.i330.i.i.i.i.i, %.not2.i.i15.i331.i.i.i.i.i
  %.sroa.04.0.p.i16.i332.i.i.i.i.i = select i1 %i.ra, i64 -4096, i64 4096
  %.sroa.04.0.i17.i333.i.i.i.i.i = add i64 %.sroa.04.0.p.i16.i332.i.i.i.i.i, %.sroa.08.03.i326.i.i.i.i.i ; 3 uses
  %i.rb = getelementptr i8, ptr %.0131.i328.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i333.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i.1 = load volatile i64, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i.1, ptr %i.rb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  %.not.i.i14.i330.i.i.i.i.i.1 = icmp ne i64 %.sroa.04.0.i17.i333.i.i.i.i.i, 0
  %i.rc = and i64 %.sroa.08.03.i326.i.i.i.i.i, 1
  %.not2.i.i15.i331.i.i.i.i.i.1 = icmp eq i64 %i.rc, 0
  %i.rd = and i1 %.not.i.i14.i330.i.i.i.i.i.1, %.not2.i.i15.i331.i.i.i.i.i.1
  %.sroa.04.0.p.i16.i332.i.i.i.i.i.1 = select i1 %i.rd, i64 -4096, i64 4096
  %.sroa.04.0.i17.i333.i.i.i.i.i.1 = add i64 %.sroa.04.0.p.i16.i332.i.i.i.i.i.1, %.sroa.04.0.i17.i333.i.i.i.i.i ; 2 uses
  %i.re = getelementptr i8, ptr %.0131.i328.i.i.i.i.i, i64 16 ; 2 uses
  %niter92.next.1 = add i32 %niter92, 2           ; 2 uses
  %niter92.ncmp.1 = icmp eq i32 %niter92.next.1, %unroll_iter91
  br i1 %niter92.ncmp.1, label %modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i325.i.i.i.i.i, !llvm.loop !32

modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i325.i.i.i.i.i
  %lcmp.mod89.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %modify_prot_commit_ptes.exit335.i.i.i.i.i, label %.lr.ph.i325.i.i.i.i.i.epil.preheader

.lr.ph.i325.i.i.i.i.i.epil.preheader:             ; preds = %modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i325.i.i.i.i.i.preheader
  %.sroa.08.03.i326.i.i.i.i.i.epil.init = phi i64 [ %.sroa.016.0.i.i.i.i.i.i.i, %.lr.ph.i325.i.i.i.i.i.preheader ], [ %.sroa.04.0.i17.i333.i.i.i.i.i.1, %modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa ]
  %.0131.i328.i.i.i.i.i.epil.init = phi ptr [ %i.qw, %.lr.ph.i325.i.i.i.i.i.preheader ], [ %i.re, %modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i32 %i.qt to i1
  call void @llvm.assume(i1 %lcmp.mod90)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  store i64 %.sroa.08.03.i326.i.i.i.i.i.epil.init, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i.epil = load volatile i64, ptr %.sroa.0.i.i.i.i.i323.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.i.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.i323.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i329.i.i.i.i.i.epil, ptr %.0131.i328.i.i.i.i.i.epil.init, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i323.i.i.i.i.i)
  br label %modify_prot_commit_ptes.exit335.i.i.i.i.i

modify_prot_commit_ptes.exit335.i.i.i.i.i:        ; preds = %.lr.ph.i325.i.i.i.i.i.epil.preheader, %modify_prot_commit_ptes.exit335.i.i.i.i.i.loopexit.unr-lcssa, %bb.bm
  br i1 %.not2.i.i.i.i.i.i.i, label %prot_commit_flush_ptes.exit.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %modify_prot_commit_ptes.exit335.i.i.i.i.i
  %.not.i.i.i6.i79.i.i.i.i = icmp ne i64 %.sroa.016.0.i.i.i.i.i.i.i, 0
  %i.rf = and i64 %.sroa.016.0.i.i.i.i.i.i.i, 1
  %.not2.i.i.i7.i80.i.i.i.i = icmp eq i64 %i.rf, 0
  %i.rg = and i1 %.not.i.i.i6.i79.i.i.i.i, %.not2.i.i.i7.i80.i.i.i.i
  %i.rh = sext i1 %i.rg to i64
  %i.ri = xor i64 %.sroa.04.0.i317.i.i.i.i.i, %i.rh
  %i.rj = xor i64 %i.ri, %.sroa.016.0.i.i.i.i.i.i.i
  %i.rk = and i64 %i.rj, 4503599627366400
  %.not5.i81.i.i.i.i = icmp eq i64 %i.rk, 0
  br i1 %.not5.i81.i.i.i.i, label %pte_needs_flush.exit84.i.i.i.i, label %pte_needs_flush.exit84.thread.i.i.i.i

pte_needs_flush.exit84.i.i.i.i:                   ; preds = %bb.bn
  %i.rl = xor i64 %.sroa.016.0.i.i.i.i.i.i.i, %.sroa.04.0.i317.i.i.i.i.i
  %i.rm = and i64 %i.rl, %i.oc
  %.08.i.i83.not.i.i.i.i = icmp eq i64 %i.rm, 0
  br i1 %.08.i.i83.not.i.i.i.i, label %prot_commit_flush_ptes.exit.i.i.i.i.i.i, label %pte_needs_flush.exit84.thread.i.i.i.i

pte_needs_flush.exit84.thread.i.i.i.i:            ; preds = %pte_needs_flush.exit84.i.i.i.i, %bb.bn
  %i.rn = sext i32 %i.qt to i64
  %i.ro = shl nsw i64 %i.rn, 12
  %i.rp = load i64, ptr %i.aq, align 8
  %i.rq = call i64 @llvm.umin.i64(i64 %i.rp, i64 %i.qv)
  store i64 %i.rq, ptr %i.aq, align 8
  %i.rr = load i64, ptr %i.ar, align 8
  %i.rs = and i64 %i.ro, 4294963200
  %i.rt = add i64 %i.rs, %i.qv
  %i.ru = call i64 @llvm.umax.i64(i64 %i.rr, i64 %i.rt)
  store i64 %i.ru, ptr %i.ar, align 8
  %i.rv = load i16, ptr %i.r, align 8
  %i.rw = or i16 %i.rv, 16
  store i16 %i.rw, ptr %i.r, align 8
  br label %prot_commit_flush_ptes.exit.i.i.i.i.i.i

prot_commit_flush_ptes.exit.i.i.i.i.i.i:          ; preds = %pte_needs_flush.exit84.thread.i.i.i.i, %pte_needs_flush.exit84.i.i.i.i, %modify_prot_commit_ptes.exit335.i.i.i.i.i
  %i.rx = sub i32 %.018.i417.i.i.i.i.i, %i.qt     ; 2 uses
  %.not.i114.i.i.i.i.i = icmp eq i32 %i.rx, 0
  br i1 %.not.i114.i.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %bb.bh, !llvm.loop !34

pte_write.exit261.thread401.i.i.i.i.i:            ; preds = %pte_write.exit261.i.i.i.i.i, %modify_prot_start_ptes.exit.i.i.i.i
  %.not.i345.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i345.i.i.i.i.i, label %modify_prot_commit_ptes.exit356.i.i.i.i.i, label %.lr.ph.i346.i.i.i.i.i.preheader

.lr.ph.i346.i.i.i.i.i.preheader:                  ; preds = %pte_write.exit261.thread401.i.i.i.i.i
  %xtraiter = and i32 %i.gs, 1
  %unroll_iter = and i32 %i.gs, -2
  br label %.lr.ph.i346.i.i.i.i.i

.lr.ph.i346.i.i.i.i.i:                            ; preds = %.lr.ph.i346.i.i.i.i.i, %.lr.ph.i346.i.i.i.i.i.preheader
  %.sroa.08.03.i347.i.i.i.i.i = phi i64 [ %i.mp, %.lr.ph.i346.i.i.i.i.i.preheader ], [ %.sroa.04.0.i17.i354.i.i.i.i.i.1, %.lr.ph.i346.i.i.i.i.i ] ; 5 uses
  %.0131.i349.i.i.i.i.i = phi ptr [ %.083.i.i.i.i.i, %.lr.ph.i346.i.i.i.i.i.preheader ], [ %i.sd, %.lr.ph.i346.i.i.i.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i346.i.i.i.i.i.preheader ], [ %niter.next.1, %.lr.ph.i346.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  store i64 %.sroa.08.03.i347.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i, ptr %.0131.i349.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  %.not.i.i14.i351.i.i.i.i.i = icmp ne i64 %.sroa.08.03.i347.i.i.i.i.i, 0
  %i.ry = and i64 %.sroa.08.03.i347.i.i.i.i.i, 1
  %.not2.i.i15.i352.i.i.i.i.i = icmp eq i64 %i.ry, 0
  %i.rz = and i1 %.not.i.i14.i351.i.i.i.i.i, %.not2.i.i15.i352.i.i.i.i.i
  %.sroa.04.0.p.i16.i353.i.i.i.i.i = select i1 %i.rz, i64 -4096, i64 4096
  %.sroa.04.0.i17.i354.i.i.i.i.i = add i64 %.sroa.04.0.p.i16.i353.i.i.i.i.i, %.sroa.08.03.i347.i.i.i.i.i ; 3 uses
  %i.sa = getelementptr i8, ptr %.0131.i349.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i354.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i.1 = load volatile i64, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i.1, ptr %i.sa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  %.not.i.i14.i351.i.i.i.i.i.1 = icmp ne i64 %.sroa.04.0.i17.i354.i.i.i.i.i, 0
  %i.sb = and i64 %.sroa.08.03.i347.i.i.i.i.i, 1
  %.not2.i.i15.i352.i.i.i.i.i.1 = icmp eq i64 %i.sb, 0
  %i.sc = and i1 %.not.i.i14.i351.i.i.i.i.i.1, %.not2.i.i15.i352.i.i.i.i.i.1
  %.sroa.04.0.p.i16.i353.i.i.i.i.i.1 = select i1 %i.sc, i64 -4096, i64 4096
  %.sroa.04.0.i17.i354.i.i.i.i.i.1 = add i64 %.sroa.04.0.p.i16.i353.i.i.i.i.i.1, %.sroa.04.0.i17.i354.i.i.i.i.i ; 2 uses
  %i.sd = getelementptr i8, ptr %.0131.i349.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %modify_prot_commit_ptes.exit356.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i346.i.i.i.i.i, !llvm.loop !32

modify_prot_commit_ptes.exit356.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i346.i.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %modify_prot_commit_ptes.exit356.i.i.i.i.i, label %.lr.ph.i346.i.i.i.i.i.epil.preheader

.lr.ph.i346.i.i.i.i.i.epil.preheader:             ; preds = %modify_prot_commit_ptes.exit356.i.i.i.i.i.loopexit.unr-lcssa
  %lcmp.mod82 = trunc i32 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod82)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  store i64 %.sroa.04.0.i17.i354.i.i.i.i.i.1, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i.epil = load volatile i64, ptr %.sroa.0.i.i.i.i.i344.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.i.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.i344.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i350.i.i.i.i.i.epil, ptr %i.sd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i344.i.i.i.i.i)
  br label %modify_prot_commit_ptes.exit356.i.i.i.i.i

modify_prot_commit_ptes.exit356.i.i.i.i.i:        ; preds = %.lr.ph.i346.i.i.i.i.i.epil.preheader, %modify_prot_commit_ptes.exit356.i.i.i.i.i.loopexit.unr-lcssa, %pte_write.exit261.thread401.i.i.i.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %modify_prot_commit_ptes.exit356.i.i.i.i.i
  %.not.i.i.i6.i.i.i.i.i = icmp ne i64 %i.mp, 0
  %i.se = and i64 %spec.select.i.i.i.i.i.i, 1
  %.not2.i.i.i7.i.i.i.i.i = icmp eq i64 %i.se, 0
  %i.sf = and i1 %.not2.i.i.i7.i.i.i.i.i, %.not.i.i.i6.i.i.i.i.i
  %i.sg = sext i1 %i.sf to i64
  %i.sh = xor i64 %.sroa.013.1.i.i.i.i.i, %i.sg
  %i.si = xor i64 %i.sh, %i.mp
  %i.sj = and i64 %i.si, 4503599627366400
  %.not5.i.i.i.i.i = icmp eq i64 %i.sj, 0
  br i1 %.not5.i.i.i.i.i, label %pte_needs_flush.exit.i.i.i.i, label %pte_needs_flush.exit.thread.i.i.i.i

pte_needs_flush.exit.i.i.i.i:                     ; preds = %bb.bo
  %i.sk = xor i64 %i.mp, %.sroa.013.1.i.i.i.i.i
  %i.sl = and i64 %.sroa.013.1.i.i.i.i.i, 65
  %i.sm = or disjoint i64 %i.sl, -576460752303423074
  %i.sn = and i64 %i.sk, %i.sm
  %.08.i.i.not.i.i.i.i = icmp eq i64 %i.sn, 0
  br i1 %.08.i.i.not.i.i.i.i, label %change_present_ptes.exit99.i.i.i.i.i, label %pte_needs_flush.exit.thread.i.i.i.i

pte_needs_flush.exit.thread.i.i.i.i:              ; preds = %pte_needs_flush.exit.i.i.i.i, %bb.bo
  %i.so = sext i32 %i.gs to i64
  %i.sp = shl nsw i64 %i.so, 12
  %i.sq = load i64, ptr %i.aq, align 8
  %i.sr = call i64 @llvm.umin.i64(i64 %i.sq, i64 %.078.i.i.i.i.i)
  store i64 %i.sr, ptr %i.aq, align 8
  %i.ss = load i64, ptr %i.ar, align 8
  %i.st = and i64 %i.sp, 4294963200
  %i.su = add i64 %i.st, %.078.i.i.i.i.i
  %i.sv = call i64 @llvm.umax.i64(i64 %i.ss, i64 %i.su)
  br label %change_present_ptes.exit99.sink.split.i.i.i.i.i

change_present_ptes.exit99.sink.split.i.i.i.i.i:  ; preds = %pte_needs_flush.exit.thread.i.i.i.i, %pte_needs_flush.exit91.thread.i.i.i.i, %pte_needs_flush.exit98.thread.i.i.i.i, %pte_needs_flush.exit259.thread.i.i.i.i.i, %pte_needs_flush.exit232.thread.i.i.i.i.i, %pte_needs_flush.exit204.thread.i.i.i.i.i, %pte_needs_flush.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ %i.kn, %pte_needs_flush.exit232.thread.i.i.i.i.i ], [ %i.pa, %pte_needs_flush.exit91.thread.i.i.i.i ], [ %i.nu, %pte_needs_flush.exit98.thread.i.i.i.i ], [ %i.sv, %pte_needs_flush.exit.thread.i.i.i.i ], [ %i.jf, %pte_needs_flush.exit204.thread.i.i.i.i.i ], [ %i.im, %pte_needs_flush.exit.thread.i.i.i.i.i ], [ %i.lc, %pte_needs_flush.exit259.thread.i.i.i.i.i ]
  %.0.i166377.ph.i.i.i.i.i = phi i32 [ 1, %pte_needs_flush.exit232.thread.i.i.i.i.i ], [ %i.gs, %pte_needs_flush.exit91.thread.i.i.i.i ], [ %i.gs, %pte_needs_flush.exit98.thread.i.i.i.i ], [ %i.gs, %pte_needs_flush.exit.thread.i.i.i.i ], [ 1, %pte_needs_flush.exit204.thread.i.i.i.i.i ], [ 1, %pte_needs_flush.exit.thread.i.i.i.i.i ], [ 1, %pte_needs_flush.exit259.thread.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i, ptr %i.ar, align 8
  %i.sw = load i16, ptr %i.r, align 8
  %i.sx = or i16 %i.sw, 16
  store i16 %i.sx, ptr %i.r, align 8
  br label %change_present_ptes.exit99.i.i.i.i.i

end_hunk_0
begin_hunk_1_@do_mprotect_pkey:bb.a
  %i.bs = and i64 %i.br, 64424509440
  br label %arch_override_mprotect_pkey.exit

arch_override_mprotect_pkey.exit:                 ; preds = %bb.x, %bb.y
  %.0.i133 = phi i64 [ %i.bs, %bb.y ], [ 0, %bb.x ]
  %i.bt = and i64 %.193, 7                        ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bi, i64 32     ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 32
  %i.bw = and i64 %i.bv, -64424509448
  %i.bx = or disjoint i64 %i.bw, %.0.i133         ; 2 uses
  %i.by = or disjoint i64 %i.bx, %i.bt            ; 3 uses
  store i64 %i.by, ptr %6, align 8
  %i.bz = lshr i64 %i.bx, 4
  %i.ca = xor i64 %i.bz, -1
  %i.cb = and i64 %i.bt, %i.ca
  %.not122 = icmp eq i64 %i.cb, 0
  br i1 %.not122, label %bb.z, label %.thread140

bb.z:                                             ; preds = %arch_override_mprotect_pkey.exit
  %i.cc = call fastcc zeroext i1 @map_deny_write_exec(ptr noundef %i.bu, ptr noundef nonnull %6) #11, !srcloc !55
  br i1 %i.cc, label %.thread140, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = call i32 @security_file_mprotect(ptr noundef nonnull %i.bi, i64 noundef %i.l, i64 noundef %.193) #9 ; 2 uses
  %.not123 = icmp eq i32 %i.cd, 0
  br i1 %.not123, label %bb.ab, label %.thread140

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr i8, ptr %i.bi, i64 8
  %i.cf = load i64, ptr %i.ce, align 8
  %spec.select129 = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.q) ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not124 = icmp eq ptr %i.ch, null
  br i1 %.not124, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.cj, null
  br i1 %.not125, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = call i32 %i.cj(ptr noundef nonnull %i.bi, i64 noundef %.089148, i64 noundef %spec.select129, i64 noundef %i.by) #9 ; 2 uses
  %.not126 = icmp eq i32 %i.ck, 0
  br i1 %.not126, label %bb.ae, label %.thread140

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.cl = call i32 @mprotect_fixup(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.a, i64 noundef %.089148, i64 noundef %spec.select129, i64 noundef %i.by) #11 ; 2 uses
  %.not127 = icmp eq i32 %i.cl, 0
  br i1 %.not127, label %bb.af, label %.thread140

.thread140:                                       ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %arch_override_mprotect_pkey.exit, %.lr.ph
  %.2.ph = phi i32 [ %i.cl, %bb.ae ], [ %i.ck, %bb.ad ], [ %i.cd, %bb.aa ], [ -13, %bb.z ], [ -13, %arch_override_mprotect_pkey.exit ], [ -12, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @tlb_finish_mmu(ptr noundef nonnull %4) #9
  br label %mm_pkey_is_allocated.exit.thread

bb.af:                                            ; preds = %bb.ae
  %.val = load i64, ptr %i.ao, align 8
  %i.cm = add i64 %.val, 1                        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.cn = call ptr @mas_find(ptr noundef nonnull %5, i64 noundef %i.at) #9 ; 2 uses
  %.not119 = icmp eq ptr %i.cn, null
  br i1 %.not119, label %bb.ag, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u
  call void @tlb_finish_mmu(ptr noundef nonnull %4) #9
  br label %mm_pkey_is_allocated.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @tlb_finish_mmu(ptr noundef nonnull %4) #9
  %i.co = icmp ult i64 %i.cm, %i.q
  %spec.select130 = select i1 %i.co, i32 -12, i32 0
  br label %mm_pkey_is_allocated.exit.thread

mm_pkey_is_allocated.exit.thread:                 ; preds = %._crit_edge, %bb.n, %_static_cpu_has.exit.i, %bb.k, %.thread140, %bb.ag, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %mm_pkey_is_allocated.exit
  %.4 = phi i32 [ -12, %bb.q ], [ %.083, %._crit_edge ], [ -22, %bb.t ], [ %spec.select130, %bb.ag ], [ -22, %bb.r ], [ -12, %bb.s ], [ -22, %mm_pkey_is_allocated.exit ], [ -12, %bb.o ], [ %.2.ph, %.thread140 ], [ -22, %bb.k ], [ -22, %_static_cpu_has.exit.i ], [ -22, %bb.n ]
  %i.cp = load ptr, ptr %i.s, align 8             ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #8
          to label %__mmap_lock_trace_released.exit.i [label %bb.ah], !srcloc !48

bb.ah:                                            ; preds = %mm_pkey_is_allocated.exit.thread
  call void @__mmap_lock_do_trace_released(ptr noundef %i.cp, i1 noundef zeroext true) #9
  br label %__mmap_lock_trace_released.exit.i

__mmap_lock_trace_released.exit.i:                ; preds = %bb.ah, %mm_pkey_is_allocated.exit.thread
  %i.cq = getelementptr i8, ptr %i.cp, i64 464    ; 2 uses
  %i.cr = load volatile i64, ptr %i.cq, align 8
  %i.cs = and i64 %i.cr, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %mmap_write_unlock.exit, !prof !10

bb.ai:                                            ; preds = %__mmap_lock_trace_released.exit.i
  call void asm sideeffect "151: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 151b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 151) #8, !srcloc !42
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.3, i32 87, i32 2305, i64 16) #8, !srcloc !43
  call void asm sideeffect "152: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 152b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 152) #8, !srcloc !44
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %__mmap_lock_trace_released.exit.i, %bb.ai
  %i.ct = getelementptr i8, ptr %i.cp, i64 520    ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !51
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8
  call void @up_write(ptr noundef %i.cq) #9
  br label %bb.aj

bb.aj:                                            ; preds = %mmap_write_lock_killable.exit, %bb.d, %bb.c, %bb.b, %bb.a, %mmap_write_unlock.exit
  %.0 = phi i32 [ -4, %mmap_write_lock_killable.exit ], [ -22, %bb.a ], [ 0, %bb.b ], [ -22, %bb.d ], [ %.4, %mmap_write_unlock.exit ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc zeroext i1 @map_deny_write_exec(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) unnamed_addr #5 align 16 prefalign(16) {
mm_flags_test.exit:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !srcloc !41
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 1552
  %i.f = load volatile i64, ptr %i.e, align 8
  %.in.in.i = and i64 %i.f, 268435456
  %.in.i14.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i14.not, label %bb.a, label %vma_flags_test.exit9

vma_flags_test.exit9:                             ; preds = %mm_flags_test.exit
  %i.g = load volatile i64, ptr %1, align 8
  %i.h = and i64 %i.g, 4
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.a, label %vma_flags_test.exit6

vma_flags_test.exit6:                             ; preds = %vma_flags_test.exit9
  %i.i = load volatile i64, ptr %1, align 8
  %i.j = and i64 %i.i, 2
  %.not17 = icmp eq i64 %i.j, 0
  br i1 %.not17, label %vma_flags_test.exit, label %bb.a

vma_flags_test.exit:                              ; preds = %vma_flags_test.exit6
  %i.k = load volatile i64, ptr %0, align 8
  %.in.i.in = and i64 %i.k, 4
  %.in.i.not = icmp eq i64 %.in.i.in, 0
  br label %bb.a

bb.a:                                             ; preds = %vma_flags_test.exit, %vma_flags_test.exit6, %vma_flags_test.exit9, %mm_flags_test.exit
  %.0 = phi i1 [ false, %vma_flags_test.exit9 ], [ true, %vma_flags_test.exit6 ], [ %.in.i.not, %vma_flags_test.exit ], [ false, %mm_flags_test.exit ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_file_mprotect(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_find(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_prev(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__arch_override_mprotect_pkey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @arch_set_user_pkey_access(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noredzone "no-builtin-wcslen" }

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
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i64 2159266186, i64 2159266061}
!12 = !{i64 2159266709, i64 2159267774, i64 2159267807, i64 2159267842, i64 2159267858, i64 2159268785, i64 2159268843, i64 2159268892, i64 2159268702, i64 2159267917, i64 2159267949, i64 2159268032}
!13 = !{i64 2159269184, i64 2159269060}
!14 = !{i64 2159280287, i64 2159280162}
!15 = !{i64 2159280810, i64 2159281286, i64 2159281319, i64 2159281354, i64 2159281370, i64 2159282211, i64 2159282269, i64 2159282318, i64 2159282128, i64 2159281429, i64 2159281461}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i64 2159283241, i64 2159283116}
!18 = !{i64 2159283764, i64 2159284828, i64 2159284861, i64 2159284896, i64 2159284912, i64 2159285839, i64 2159285897, i64 2159285946, i64 2159285756, i64 2159284971, i64 2159285003, i64 2159285086}
!19 = !{i64 2159286239, i64 2159286115}
!20 = !{i64 2159276755, i64 2159276630}
!21 = !{i64 2159277278, i64 2159277754, i64 2159277787, i64 2159277822, i64 2159277838, i64 2159278679, i64 2159278737, i64 2159278786, i64 2159278596, i64 2159277897, i64 2159277929}
!22 = !{i64 2150181311, i64 2150181340, i64 2150181346, i64 2150181542, i64 2150181548, i64 2150181564, i64 2150181580, i64 2150181607, i64 2150181719, i64 2150181728, i64 2150181802, i64 2150181850, i64 2150181898, i64 2150181953, i64 2150182007, i64 2150182062, i64 2150182078, i64 2150182125, i64 2150182236, i64 2150182267, i64 2150182273, i64 2150182295, i64 2150182311, i64 2150181360, i64 2150181362, i64 2150181378, i64 2150181405, i64 2150181505, i64 2150182375, i64 2150182489, i64 2150182537, i64 2150182585, i64 2150182649, i64 2150182706, i64 2150182758, i64 2150182887, i64 2150183102, i64 2150182973, i64 2150183004, i64 2150183010, i64 2150183026, i64 2150183042, i64 2466212, i64 2466252, i64 2150183561, i64 2466290, i64 2466327, i64 2466348, i64 2466368}
!23 = !{!"branch_weights", !"expected", i32 2145873841, i32 1609807}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unswitch.partial.disable"}
!26 = !{!"auto-init"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"branch_weights", !"expected", i32 2141988839, i32 5494809}
!30 = !{i64 2153001699}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = !{i64 2158863849}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = !{i64 2149916724}
!42 = !{i64 2151333681, i64 2151333556}
!43 = !{i64 2151334204, i64 2151335296, i64 2151335329, i64 2151335364, i64 2151335380, i64 2151336307, i64 2151336365, i64 2151336414, i64 2151336224, i64 2151335439, i64 2151335471, i64 2151335554}
!44 = !{i64 2151336714, i64 2151336590}
!45 = !{i64 27298}
!46 = !{i64 27481}
!47 = !{i64 2159332802}
!48 = !{i64 2148468589, i64 2148468629, i64 2148468746, i64 2148468767, i64 2148468810, i64 2148468825, i64 2148468858, i64 2148468892, i64 2148468916}
!49 = !{i64 2150782637}
!50 = !{i64 1868288}
!51 = !{i64 2150782910}
!52 = !{i64 2159334773}
!53 = !{i64 2159341764}
!54 = !{i64 2159342888}
!55 = !{i64 26427}
end_hunk_1

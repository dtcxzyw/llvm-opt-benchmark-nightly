Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hugetlb?download=true
inline.NumInlined: 1496
inline.NumDeleted: 459
begin_hunk_0_@hugetlb_wp:bb.a

bb.au:                                            ; preds = %bb.at
  %i.ls = and i64 %i.lq, 128
  %.not.i.i.i.i.i175 = icmp eq i64 %i.ls, 0
  %..i.i.i.i.i176 = select i1 %.not.i.i.i.i.i175, i64 4503599627366400, i64 4503598553628672
  %i.lt = and i64 %..i.i.i.i.i176, %i.lq
  %i.lu = add i64 %i.lt, %i.lj
  %i.lv = inttoptr i64 %i.lu to ptr
  %i.lw = lshr i64 %i.km, 21
  %i.lx = and i64 %i.lw, 511
  %i.ly = getelementptr [8 x i8], ptr %i.lv, i64 %i.lx
  br label %hugetlb_walk.exit180

hugetlb_walk.exit180.thread:                      ; preds = %p4d_offset.exit.i.i171, %pgd_present.exit.i.i178, %bb.at
  store ptr null, ptr %i.h, align 8
  br label %.critedge135

hugetlb_walk.exit180:                             ; preds = %bb.as, %bb.au
  %.0.i.i177 = phi ptr [ %i.lo, %bb.as ], [ %i.ly, %bb.au ] ; 3 uses
  store ptr %.0.i.i177, ptr %i.h, align 8
  %.not130 = icmp eq ptr %.0.i.i177, null
  br i1 %.not130, label %.critedge135, label %bb.av, !prof !198

bb.av:                                            ; preds = %hugetlb_walk.exit180
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i181)
  %.sroa.0.0.copyload.i.i182 = load volatile i64, ptr %.0.i.i177, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.i182, ptr %.sroa.0.i.i181, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i181)
  %i.lz = icmp eq i64 %.sroa.0.0.copyload.i.i182, %.sroa.0.0.copyload.i.i
  br i1 %i.lz, label %bb.aw, label %.critedge135, !prof !25

bb.aw:                                            ; preds = %bb.av
  %i.ma = getelementptr i8, ptr %i.a, i64 24
  %i.mb = load i64, ptr %i.ma, align 8            ; 4 uses
  %i.mc = load i64, ptr @vmemmap_base, align 8
  %i.md = and i64 %i.mb, 66
  %i.me = icmp eq i64 %i.md, 64
  br i1 %i.me, label %bb.ax, label %folio_mk_pte.exit.i, !prof !21

bb.ax:                                            ; preds = %bb.aw
  call void asm sideeffect "219: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 219b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 219) #28, !srcloc !53
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.35, i32 735, i32 2307, i64 16) #28, !srcloc !54
  call void asm sideeffect "220: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 220b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #28, !srcloc !55
  br label %folio_mk_pte.exit.i

folio_mk_pte.exit.i:                              ; preds = %bb.ax, %bb.aw
  %i.mf = ptrtoint ptr %i.di to i64
  %i.mg = sub i64 %i.mf, %i.mc
  %i.mh = shl i64 %i.mg, 6
  %.not.i.i.i.i.i183 = icmp ne i64 %i.mb, 0
  %i.mi = and i64 %i.mb, 1
  %.not2.i.i.i.i.i = icmp eq i64 %i.mi, 0         ; 2 uses
  %i.mj = and i1 %.not.i.i.i.i.i183, %.not2.i.i.i.i.i
  %i.mk = sext i1 %i.mj to i64
  %i.ml = xor i64 %i.mh, %i.mk
  %i.mm = and i64 %i.ml, 4503599627366400
  %i.mn = load i64, ptr @__supported_pte_mask, align 8
  %i.mo = select i1 %.not2.i.i.i.i.i, i64 -1, i64 %i.mn
  %.0.i.i.i.i.i = and i64 %i.mo, %i.mb            ; 3 uses
  %i.mp = or i64 %.0.i.i.i.i.i, %i.mm             ; 2 uses
  br i1 %.not, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %folio_mk_pte.exit.i
  %i.mq = load i64, ptr %i.o, align 32
  %i.mr = and i64 %i.mq, 2
  %.not.i184 = icmp eq i64 %i.mr, 0
  br i1 %.not.i184, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ms = xor i64 %.0.i.i.i.i.i, -1
  %i.mt = lshr i64 %i.ms, 1
  %i.mu = and i64 %i.mt, 1                        ; 2 uses
  %i.mv = shl nuw nsw i64 %i.mu, 58
  %i.mw = or i64 %i.mp, %i.mv
  %i.mx = or i64 %i.mw, 64
  %i.my = shl nuw nsw i64 %i.mu, 6
  %i.mz = xor i64 %i.my, -1
  %i.na = and i64 %i.mx, %i.mz
  %i.nb = or i64 %i.na, 2
  br label %make_huge_pte.exit

bb.ba:                                            ; preds = %bb.ay, %folio_mk_pte.exit.i
  %i.nc = and i64 %i.mp, -67
  %i.nd = shl i64 %.0.i.i.i.i.i, 52
  %i.ne = and i64 %i.nd, 288230376151711744
  %i.nf = or i64 %i.ne, %i.nc
  br label %make_huge_pte.exit

make_huge_pte.exit:                               ; preds = %bb.az, %bb.ba
  %.sroa.010.0.i = phi i64 [ %i.nb, %bb.az ], [ %i.nf, %bb.ba ]
  %i.ng = or i64 %.sroa.010.0.i, 160
  %i.nh = load i64, ptr %i.g, align 8
  %i.ni = load ptr, ptr %i.h, align 8
  %i.nj = call i64 @ptep_clear_flush(ptr noundef %i.a, i64 noundef %i.nh, ptr noundef %i.ni) #27 ; 0 uses
  %i.nk = getelementptr i8, ptr %i.at, i64 88     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nk, ptr elementtype(i32) %i.nk) #28, !srcloc !61
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ay, ptr elementtype(i32) %i.ay) #28, !srcloc !61
  %i.nl = load i64, ptr %i.g, align 8
  call void @hugetlb_add_new_anon_rmap(ptr noundef %i.di, ptr noundef %i.a, i64 noundef %i.nl) #27
  %i.nm = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i185)
  store i64 %i.ng, ptr %.sroa.0.i.i.i185, align 8
  %.sroa.0.i.i.i185.0..sroa.0.i.i.i185.0..sroa.0.i.i.i185.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i185, align 8
  store volatile i64 %.sroa.0.i.i.i185.0..sroa.0.i.i.i185.0..sroa.0.i.i.i185.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i, ptr %i.nm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i185)
  %i.nn = getelementptr i8, ptr %i.di, i64 40     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.nn, i32 2, ptr elementtype(i8) %i.nn) #28, !srcloc !17
  br label %.critedge135

.critedge135:                                     ; preds = %hugetlb_walk.exit180.thread, %hugetlb_walk.exit180, %make_huge_pte.exit, %bb.av
  %.0120 = phi ptr [ %i.at, %make_huge_pte.exit ], [ %i.di, %bb.av ], [ %i.di, %hugetlb_walk.exit180 ], [ %i.di, %hugetlb_walk.exit180.thread ] ; 2 uses
  %i.no = load ptr, ptr %i.bd, align 8
  call void @_raw_spin_unlock(ptr noundef %i.no) #27
  %.val3.i = load i32, ptr %i.kh, align 8
  %i.np = trunc i32 %.val3.i to i1
  br i1 %i.np, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge135
  %i.nq = call i32 @__SCT__might_resched() #27    ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge135
  %i.nr = load ptr, ptr %1, align 8
  %i.ns = getelementptr i8, ptr %i.nr, i64 1584
  %.val.i186 = load ptr, ptr %i.ns, align 16
  %.not4.i = icmp eq ptr %.val.i186, null
  br i1 %.not4.i, label %mmu_notifier_invalidate_range_end.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %1) #27
  br label %mmu_notifier_invalidate_range_end.exit

mmu_notifier_invalidate_range_end.exit:           ; preds = %bb.bd, %bb.bc, %bb.am, %bb.ao
  %.1121 = phi ptr [ %i.di, %bb.am ], [ %i.di, %bb.ao ], [ %.0120, %bb.bc ], [ %.0120, %bb.bd ] ; 4 uses
  %.0116 = phi i32 [ %i.jq, %bb.am ], [ %i.jz, %bb.ao ], [ 0, %bb.bc ], [ 0, %bb.bd ] ; 2 uses
  %.not131 = icmp eq ptr %.1121, %i.at
  br i1 %.not131, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %mmu_notifier_invalidate_range_end.exit
  %i.nt = load i64, ptr %i.g, align 8
  call void @restore_reserve_on_error(ptr noundef %.val145.val.val.val.val, ptr noundef %i.a, i64 noundef %i.nt, ptr noundef %.1121) #26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %mmu_notifier_invalidate_range_end.exit
  %i.nu = getelementptr i8, ptr %.1121, i64 52    ; 2 uses
  %i.nv = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.nu, ptr elementtype(i32) %i.nu) #28, !srcloc !52 ; 2 uses
  %i.nw = icmp ult i8 %i.nv, 2
  call void @llvm.assume(i1 %i.nw)
  %.not.i187 = icmp eq i8 %i.nv, 0
  br i1 %.not.i187, label %folio_put.exit188, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @__folio_put(ptr noundef %.1121) #27
  br label %folio_put.exit188

folio_put.exit188:                                ; preds = %bb.bg, %bb.bf, %bb.al
  %.1117 = phi i32 [ %switch.select5.i, %bb.al ], [ %.0116, %bb.bf ], [ %.0116, %bb.bg ] ; 3 uses
  %i.nx = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bc, ptr elementtype(i32) %i.bc) #28, !srcloc !52 ; 2 uses
  %i.ny = icmp ult i8 %i.nx, 2
  call void @llvm.assume(i1 %i.ny)
  %.not.i189 = icmp eq i8 %i.nx, 0
  br i1 %.not.i189, label %folio_put.exit190, label %bb.bh

bb.bh:                                            ; preds = %folio_put.exit188
  call void @__folio_put(ptr noundef %i.at) #27
  br label %folio_put.exit190

folio_put.exit190:                                ; preds = %folio_put.exit188, %bb.bh
  %i.nz = load ptr, ptr %i.bd, align 8
  call void @_raw_spin_lock(ptr noundef %i.nz) #27
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @delayacct_key, i1 false) #28
          to label %delayacct_wpcopy_end.exit [label %bb.bi], !srcloc !35

bb.bi:                                            ; preds = %folio_put.exit190
  %i.oa = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #29, !srcloc !14
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = getelementptr i8, ptr %i.ob, i64 2816
  %i.od = load ptr, ptr %i.oc, align 64
  %.not.i191 = icmp eq ptr %i.od, null
  br i1 %.not.i191, label %delayacct_wpcopy_end.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @__delayacct_wpcopy_end() #27
  br label %delayacct_wpcopy_end.exit

delayacct_wpcopy_end.exit:                        ; preds = %bb.bj, %bb.bi, %folio_put.exit190, %bb.ak, %bb.aj, %.critedge137, %bb.p, %bb.o, %set_huge_ptep_maybe_writable.exit, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.ak ], [ 0, %bb.p ], [ 0, %set_huge_ptep_maybe_writable.exit ], [ 0, %bb.o ], [ 0, %.critedge137 ], [ 0, %bb.aj ], [ %.1117, %folio_put.exit190 ], [ %.1117, %bb.bi ], [ %.1117, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @vma_end_read(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.d = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 -1, ptr elementtype(i32) %i.c) #28, !srcloc !28 ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %__vma_refcount_put_return.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.d, 1
  br i1 %i.f, label %.thread.i, label %bb.c, !prof !21

.thread.i:                                        ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.c, i32 noundef 3) #27
  br label %vma_refcount_put.exit

__vma_refcount_put_return.exit.i:                 ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !29
  br label %vma_refcount_put.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.d, -1073741825
  %i.h = icmp ult i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %vma_refcount_put.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 512
  %i.j = tail call i32 @rcuwait_wake_up(ptr noundef %i.i) #27 ; 0 uses
  br label %vma_refcount_put.exit

vma_refcount_put.exit:                            ; preds = %.thread.i, %__vma_refcount_put_return.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @hugetlb_change_protection(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i.i.i = alloca i64, align 8          ; 4 uses
  %.sroa.0.i.i.i178 = alloca i64, align 8         ; 4 uses
  %.sroa.0.i.i.i173 = alloca i64, align 8         ; 4 uses
  %.sroa.0.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 3 uses
  %5 = alloca %struct.mmu_notifier_range, align 8 ; 12 uses
  %6 = alloca %struct.mmu_gather, align 8         ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %.val160 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val160, i64 32
  %.val160.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val160.val, i64 40
  %.val160.val.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val160.val.val, i64 864
  %.val160.val.val.val = load ptr, ptr %i.f, align 32
  %i.g = getelementptr i8, ptr %.val160.val.val.val, i64 24
  %.val160.val.val.val.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val160.val.val.val.val, i64 32 ; 5 uses
  %.val158 = load i32, ptr %i.h, align 8          ; 2 uses
  %i.i = zext nneg i32 %.val158 to i64
  %i.j = shl i64 4096, %i.i                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = and i64 %4, 4
  %.not156 = icmp eq i64 %i.l, 0                  ; 3 uses
  %i.m = and i64 %4, 8
  %i.n = icmp ne i64 %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 2, ptr %i.o, align 4
  store ptr %i.b, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store i32 0, ptr %i.r, align 8
  %i.s = load i64, ptr %0, align 64
  %i.t = add i64 %i.s, 1073741823
  %i.u = and i64 %i.t, -1073741824                ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, -1073741824                ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.z = load i64, ptr %i.y, align 32
  %i.aa = and i64 %i.z, 128
  %.not.i = icmp ne i64 %i.aa, 0
  %i.ab = icmp ugt i64 %i.x, %i.u
  %.not19.i = icmp ugt i64 %2, %i.u
  %i.ac = and i1 %i.ab, %.not19.i
  %.not20.i = icmp ult i64 %1, %i.x
  %i.ad = and i1 %.not20.i, %i.ac
  %or.cond208 = select i1 %.not.i, i1 %i.ad, i1 false
  br i1 %or.cond208, label %bb.b, label %adjust_range_if_pmd_sharing_possible.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = icmp ugt i64 %1, %i.u
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = and i64 %1, -1073741824
  store i64 %i.af, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = icmp ult i64 %2, %i.x
  br i1 %i.ag, label %bb.e, label %adjust_range_if_pmd_sharing_possible.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = add nuw i64 %2, 1073741823
  %i.ai = and i64 %i.ah, -1073741824
  store i64 %i.ai, ptr %i.q, align 8
  br label %adjust_range_if_pmd_sharing_possible.exit

adjust_range_if_pmd_sharing_possible.exit:        ; preds = %bb.a, %bb.d, %bb.e
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.g, label %bb.f, !prof !25

bb.f:                                             ; preds = %adjust_range_if_pmd_sharing_possible.exit
  tail call void asm sideeffect "719: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 719b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 719) #28, !srcloc !200
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 6413, i32 0, i64 16) #28, !srcloc !201
  unreachable

bb.g:                                             ; preds = %adjust_range_if_pmd_sharing_possible.exit
  store i64 0, ptr %i.k, align 8, !annotation !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false), !annotation !37
  call void @tlb_gather_mmu_vma(ptr noundef nonnull %6, ptr noundef %0) #27
  %i.aj = call i32 @__SCT__might_resched() #27    ; 0 uses
  %i.ak = load ptr, ptr %5, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 1584
  %.val.i = load ptr, ptr %i.al, align 16
  %.not3.i = icmp eq ptr %.val.i, null
  br i1 %.not3.i, label %mmu_notifier_invalidate_range_start.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.r, align 8
  %i.an = or i32 %i.am, 1
  store i32 %i.an, ptr %i.r, align 8
  %i.ao = call i32 @__mmu_notifier_invalidate_range_start(ptr noundef nonnull %5) #27 ; 0 uses
  br label %mmu_notifier_invalidate_range_start.exit

mmu_notifier_invalidate_range_start.exit:         ; preds = %bb.g, %bb.h
  %i.ap = load i64, ptr %i.y, align 32
  %i.aq = and i64 %i.ap, 128
  %.not.i.i = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val.i.i = load ptr, ptr %i.ar, align 32       ; 4 uses
  br i1 %.not.i.i, label %bb.j, label %__vma_shareable_lock.exit.i

__vma_shareable_lock.exit.i:                      ; preds = %mmu_notifier_invalidate_range_start.exit
  %.not.i164 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i164, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %__vma_shareable_lock.exit.i
  %i.as = getelementptr i8, ptr %.val.i.i, i64 8
  br label %__vma_private_lock.exit.thread.sink.split.i

bb.j:                                             ; preds = %mmu_notifier_invalidate_range_start.exit
  %.not3.i.i = icmp uge ptr %.val.i.i, inttoptr (i64 4 to ptr)
  %i.at = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.au = trunc i64 %i.at to i1
  %or.cond.i165 = and i1 %.not3.i.i, %i.au
  br i1 %or.cond.i165, label %vma_resv_map.exit.i, label %.lr.ph

vma_resv_map.exit.i:                              ; preds = %bb.j
  %i.av = and i64 %i.at, -4
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 56
  br label %__vma_private_lock.exit.thread.sink.split.i

__vma_private_lock.exit.thread.sink.split.i:      ; preds = %vma_resv_map.exit.i, %bb.i
  %.sink.i = phi ptr [ %i.ax, %vma_resv_map.exit.i ], [ %i.as, %bb.i ]
  call void @down_write(ptr noundef %.sink.i) #27
  br label %.lr.ph

.lr.ph:                                           ; preds = %__vma_private_lock.exit.thread.sink.split.i, %bb.j, %__vma_shareable_lock.exit.i
  %i.ay = load ptr, ptr %i.c, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 120
  call void @down_write(ptr noundef %i.bb) #27
  %.val.i166 = load i32, ptr %i.h, align 8        ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %.val.i166, 9
  %switch.select.i = select i1 %switch.selectcmp.i, i64 1071644672, i64 0
  %switch.selectcmp4.i = icmp eq i32 %.val.i166, 18
  %switch.select5.i = select i1 %switch.selectcmp4.i, i64 548682072064, i64 %switch.select.i ; 2 uses
  %i.bc = icmp eq i32 %.val158, 18
  %i.bd = getelementptr i8, ptr %i.b, i64 460
  %i.be = and i64 %4, 12
  %.not155 = icmp eq i64 %i.be, 0
  %i.bf = and i64 %3, 1
  %.not.i.i.i.i = icmp eq i64 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.an
  %.0211 = phi i64 [ %1, %.lr.ph ], [ %i.hr, %bb.an ] ; 15 uses
  %.0141210 = phi i64 [ 0, %.lr.ph ], [ %.3.ph, %bb.an ] ; 9 uses
  %.val161 = load ptr, ptr %i.a, align 16
  %i.bj = getelementptr i8, ptr %.val161, i64 120
  %.val161.val = load ptr, ptr %i.bj, align 8
  %i.bk = load i32, ptr @pgdir_shift, align 4
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 %.0211, %i.bl
  %i.bn = and i64 %i.bm, 511
  %i.bo = getelementptr [8 x i8], ptr %.val161.val, i64 %i.bn ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #28
          to label %pgd_present.exit.i.i [label %pgd_present.exit.i.i, label %pgd_present.exit.thread.i.i], !srcloc !47

pgd_present.exit.i.i:                             ; preds = %bb.k, %bb.k
  %i.bq = and i64 %i.bp, 1
  %.not.i.i167 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i167, label %hugetlb_walk.exit.thread, label %pgd_present.exit.thread.i.i

pgd_present.exit.thread.i.i:                      ; preds = %pgd_present.exit.i.i, %bb.k
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #28
          to label %bb.l [label %bb.l, label %p4d_offset.exit.i.i], !srcloc !47

bb.l:                                             ; preds = %pgd_present.exit.thread.i.i, %pgd_present.exit.thread.i.i
  %i.br = load i64, ptr %i.bo, align 8
  %i.bs = and i64 %i.br, 4503599627366400
  %i.bt = load i64, ptr @page_offset_base, align 8
end_hunk_0

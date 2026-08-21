Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/badblocks?download=true
inline.NumInlined: 69
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@badblocks_clear:bb.a
  br i1 %.not.i127.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = sub nsw i64 %i.bg, %.085.i
  %i.dd = shl nuw nsw i64 %i.bd, 9
  %i.de = xor i64 %i.bd, -1
  %i.df = add nsw i64 %.085.i, %i.de
  %.lobit.i128.i = and i64 %i.bb, -9223372036854775808
  %i.dg = or i64 %i.df, %.lobit.i128.i
  %i.dh = or i64 %i.dg, %i.dd
  store i64 %i.dh, ptr %i.ba, align 8
  br label %front_clear.exit.i

bb.y:                                             ; preds = %bb.w
  tail call void asm sideeffect "463: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 463b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 463) #8, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1019, i32 0, i64 16) #8, !srcloc !32
  unreachable

front_clear.exit.i:                               ; preds = %bb.x, %bb.v, %bb.u, %bb.t
  %.0147.neg.i = phi i32 [ -1, %bb.u ], [ 0, %bb.t ], [ 0, %bb.x ], [ -1, %bb.v ]
  %.0.i126.i = phi i64 [ %i.bf, %bb.u ], [ %.1.i, %bb.t ], [ %i.dc, %bb.x ], [ %i.bf, %bb.v ]
  %i.di = load i32, ptr %i.k, align 8
  %i.dj = add i32 %i.di, %.0147.neg.i             ; 3 uses
  store i32 %i.dj, ptr %i.k, align 8
  %i.dk = add i32 %.089.i, 1
  br label %bb.ac

overlap_front.exit125.i:                          ; preds = %bb.m, %overlap_front.exit.thread._crit_edge.i
  br i1 %.not103.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %overlap_front.exit125.i
  %i.dl = sext i32 %i.ae to i64                   ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %.val108.i, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = lshr i64 %i.dn, 9
  %i.dp = and i64 %i.do, 18014398509481983        ; 2 uses
  %i.dq = icmp ult i64 %.085.i, %i.dp
  %i.dr = add i64 %.085.i, %.1.i
  %i.ds = icmp ugt i64 %i.dr, %i.dp
  %or.cond.i129.i = and i1 %i.dq, %i.ds
  br i1 %or.cond.i129.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr [8 x i8], ptr %i.j, i64 %i.dl
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = lshr i64 %i.du, 9
  %i.dw = sub nsw i64 %i.dv, %.085.i
  %i.dx = add i32 %.089.i, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %overlap_front.exit125.i
  %i.dy = add i32 %.089.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %front_clear.exit.i, %bb.q, %bb.p, %bb.l, %overlap_front.exit.i, %bb.g, %bb.c
  %i.dz = phi i32 [ %i.q, %bb.c ], [ %i.q, %bb.g ], [ %i.q, %overlap_front.exit.i ], [ %i.co, %bb.q ], [ %i.q, %bb.l ], [ %i.dj, %front_clear.exit.i ], [ %i.q, %bb.aa ], [ %i.q, %bb.ab ], [ %i.q, %bb.p ] ; 2 uses
  %.val155.i = phi i32 [ 0, %bb.c ], [ %.val.i, %bb.g ], [ %.val.i, %overlap_front.exit.i ], [ %i.co, %bb.q ], [ %.val.i, %bb.l ], [ %i.dj, %front_clear.exit.i ], [ %.val.i, %bb.aa ], [ %.val.i, %bb.ab ], [ %.val.i, %bb.p ]
  %.192.i = phi i64 [ %.1.i, %bb.c ], [ %.091.in.i, %bb.g ], [ %.1.i, %overlap_front.exit.i ], [ %.1.i, %bb.q ], [ %.1.i, %bb.l ], [ %.0.i126.i, %front_clear.exit.i ], [ %i.dw, %bb.aa ], [ %.1.i, %bb.ab ], [ %.1.i, %bb.p ]
  %.190.i = phi i32 [ %i.r, %bb.c ], [ %i.ad, %bb.g ], [ %i.ao, %overlap_front.exit.i ], [ %i.cp, %bb.q ], [ %.089.i, %bb.l ], [ %i.dk, %front_clear.exit.i ], [ %i.dx, %bb.aa ], [ %i.dy, %bb.ab ], [ %.089.i, %bb.p ] ; 2 uses
  %.2.i = phi i32 [ %.087.i, %bb.c ], [ %.188.i, %bb.g ], [ %.087.i, %overlap_front.exit.i ], [ %.087.i, %bb.q ], [ %.087.i, %bb.l ], [ %i.s, %front_clear.exit.i ], [ %i.ae, %bb.aa ], [ %.087.i, %bb.ab ], [ %.087.i, %bb.p ]
  %sext.i = shl i64 %.192.i, 32
  %i.ea = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eb = add i64 %i.ea, %.085.i
  %i.ec = sub i64 %.1.i, %i.ea                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ec, 0
  br i1 %.not105.i, label %.split152.us.i, label %.split.i, !llvm.loop !33

.split152.us.i:                                   ; preds = %bb.ac, %.split.us.i
  %i.ed = phi i32 [ 0, %.split.us.i ], [ %i.dz, %bb.ac ] ; 2 uses
  %.us-phi.i = phi i32 [ %i.n, %.split.us.i ], [ %.190.i, %bb.ac ]
  %.not106.i = icmp ne i32 %.us-phi.i, 0          ; 2 uses
  br i1 %.not106.i, label %bb.ad, label %set_changed.exit.i

bb.ad:                                            ; preds = %.split152.us.i
  %i.ee = load ptr, ptr %i.i, align 8
  %i.ef = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %.not.i130.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i130.i, label %badblocks_update_acked.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ad
  %i.eh = icmp sgt i32 %i.ed, 0
  br i1 %i.eh, label %.lr.ph.preheader.i.i, label %.critedge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ed to i64
  br label %.lr.ph.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !29

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.ej = load i64, ptr %i.ei, align 8
  %.not9.i.i = icmp sgt i64 %i.ej, -1
  br i1 %.not9.i.i, label %badblocks_update_acked.exit.i, label %bb.ae

.critedge.i.i:                                    ; preds = %bb.ae, %.preheader.i.i
  store i32 0, ptr %i.ef, align 4
  br label %badblocks_update_acked.exit.i

badblocks_update_acked.exit.i:                    ; preds = %.lr.ph.i.i, %.critedge.i.i, %bb.ad
  %i.ek = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %.not.i131.i = icmp eq i32 %i.el, 1
  br i1 %.not.i131.i, label %set_changed.exit.i, label %bb.af

bb.af:                                            ; preds = %badblocks_update_acked.exit.i
  store i32 1, ptr %i.ek, align 8
  br label %set_changed.exit.i

set_changed.exit.i:                               ; preds = %bb.af, %badblocks_update_acked.exit.i, %.split152.us.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %i.em = load i32, ptr %i.e, align 4
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.e, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.f) #9
  br label %_badblocks_clear.exit

_badblocks_clear.exit:                            ; preds = %bb.a, %set_changed.exit.i
  %.0.i = phi i1 [ %.not106.i, %set_changed.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ack_all_badblocks(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 36         ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 40         ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.g) #9
  %i.h = load i32, ptr %i.f, align 4
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !25
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge34

.preheader28:                                     ; preds = %bb.g
  %i.r = icmp sgt i32 %i.w, 0
  br i1 %i.r, label %.preheader, label %._crit_edge34

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.s = phi i32 [ %i.w, %bb.g ], [ %i.p, %bb.e ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.not26 = icmp sgt i64 %i.u, -1
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = or disjoint i64 %i.u, -9223372036854775808
  store i64 %i.v, ptr %i.t, align 8
  %.pre = load i32, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.s, %.lr.ph ], [ %.pre, %bb.f ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %.preheader28, !llvm.loop !35

.preheader:                                       ; preds = %.preheader28, %._crit_edge
  %i.z = phi i32 [ %i.cd, %._crit_edge ], [ %i.w, %.preheader28 ] ; 3 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %._crit_edge ], [ 0, %.preheader28 ] ; 4 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 6 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next37, %i.aa
  br i1 %i.ab, label %.lr.ph30, label %._crit_edge34

.lr.ph30:                                         ; preds = %.preheader
  %1 = trunc i64 %indvars.iv36 to i32
  %2 = add i32 %1, 2                              ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv36 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = lshr i64 %i.ae, 9
  %i.ag = and i64 %i.af, 18014398509481983        ; 2 uses
  %i.ah = and i64 %i.ae, 511
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = add nuw nsw i64 %i.ag, %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next37
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = lshr i64 %i.al, 9
  %i.an = and i64 %i.am, 18014398509481983
  %i.ao = icmp eq i64 %i.aj, %i.an
  br i1 %i.ao, label %.lr.ph47, label %._crit_edge

bb.h:                                             ; preds = %try_adjacent_combine.exit
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv36 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = lshr i64 %i.ar, 9
  %i.at = and i64 %i.as, 18014398509481983        ; 2 uses
  %i.au = and i64 %i.ar, 511
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %i.aw = add nuw nsw i64 %i.at, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv.next37
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = lshr i64 %i.ay, 9
  %i.ba = and i64 %i.az, 18014398509481983
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %.lr.ph47, label %._crit_edge, !llvm.loop !36

.lr.ph47:                                         ; preds = %.lr.ph30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %i.al, %.lr.ph30 ] ; 2 uses
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.ai, %.lr.ph30 ] ; 2 uses
  %i.be = phi i64 [ %i.at, %bb.h ], [ %i.ag, %.lr.ph30 ]
  %i.bf = phi i64 [ %i.ar, %bb.h ], [ %i.ae, %.lr.ph30 ] ; 2 uses
  %i.bg = phi ptr [ %i.aq, %bb.h ], [ %i.ad, %.lr.ph30 ] ; 3 uses
  %i.bh = phi i32 [ %i.ca, %bb.h ], [ %i.z, %.lr.ph30 ]
  %i.bi = and i64 %i.bc, 511                      ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  %i.bl = icmp samesign ult i64 %i.bk, 513
  %.unshifted.i = xor i64 %i.bc, %i.bf
  %i.bm = icmp sgt i64 %.unshifted.i, -1
  %or.cond.i = and i1 %i.bm, %i.bl
  br i1 %or.cond.i, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph47
  %i.bn = shl nuw nsw i64 %i.be, 9
  %i.bo = add nuw nsw i64 %i.bd, %i.bi
  %i.bp = and i64 %i.bf, -9223372036854775808
  %i.bq = or disjoint i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.bg, align 8
  %i.bs = load i32, ptr %i.o, align 8             ; 3 uses
  %i.bt = icmp slt i32 %2, %i.bs
  br i1 %i.bt, label %bb.j, label %try_adjacent_combine.exit

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr i8, ptr %i.bg, i64 8
  %i.bv = getelementptr i8, ptr %i.bg, i64 16
  %i.bw = sub i32 %i.bs, %2
  %i.bx = shl i32 %i.bw, 3
  %i.by = sext i32 %i.bx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bu, ptr align 8 %i.bv, i64 %i.by, i1 false)
  %.pre.i = load i32, ptr %i.o, align 8
  br label %try_adjacent_combine.exit

try_adjacent_combine.exit:                        ; preds = %bb.i, %bb.j
  %i.bz = phi i32 [ %.pre.i, %bb.j ], [ %i.bs, %bb.i ]
  %i.ca = add i32 %i.bz, -1                       ; 5 uses
  store i32 %i.ca, ptr %i.o, align 8
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next37, %i.cb
  br i1 %i.cc, label %bb.h, label %try_adjacent_combine.exit.._crit_edge_crit_edge, !llvm.loop !36

try_adjacent_combine.exit.._crit_edge_crit_edge:  ; preds = %try_adjacent_combine.exit
  br label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph47, %bb.h, %try_adjacent_combine.exit.._crit_edge_crit_edge, %.lr.ph30
  %i.cd = phi i32 [ %i.ca, %try_adjacent_combine.exit.._crit_edge_crit_edge ], [ %i.z, %.lr.ph30 ], [ %i.bh, %.lr.ph47 ], [ %i.ca, %bb.h ] ; 2 uses
  %.pre39 = sext i32 %i.cd to i64
  %i.ce = icmp slt i64 %indvars.iv.next37, %.pre39
  br i1 %i.ce, label %.preheader, label %._crit_edge34, !llvm.loop !37

._crit_edge34:                                    ; preds = %.preheader, %._crit_edge, %bb.e, %.preheader28
  store i32 0, ptr %i.l, align 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge34, %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %i.cf = load i32, ptr %i.f, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.f, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147487743) i64 @badblocks_show(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 36         ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.not = icmp eq i32 %2, 0
  %i.h = getelementptr i8, ptr %0, i64 12
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.critedge.thread.us
  %i.i = load volatile i32, ptr %i.f, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.j = and i32 %i.i, 1
  %.not3.i.us = icmp eq i32 %i.j, 0
  br i1 %.not3.i.us, label %read_seqbegin.exit.us, label %.lr.ph.i.us, !prof !15

.lr.ph.i.us:                                      ; preds = %.preheader.split.us, %.lr.ph.i.us
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  %i.k = load volatile i32, ptr %i.f, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.l = and i32 %i.k, 1
  %.not.i.us = icmp eq i32 %i.l, 0
  br i1 %.not.i.us, label %read_seqbegin.exit.us, label %.lr.ph.i.us, !prof !17, !llvm.loop !18

read_seqbegin.exit.us:                            ; preds = %.lr.ph.i.us, %.preheader.split.us
  %.lcssa.i.us = phi i32 [ %i.i, %.preheader.split.us ], [ %i.k, %.lr.ph.i.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %read_seqbegin.exit.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.c ], [ 0, %read_seqbegin.exit.us ] ; 3 uses
  %.03238.us = phi i64 [ %i.ae, %bb.c ], [ 0, %read_seqbegin.exit.us ] ; 4 uses
  %i.m = load i32, ptr %i.g, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv44, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %i.p = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv44
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 511
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = lshr i64 %i.q, 9
  %i.v = and i64 %i.u, 18014398509481983
  %i.w = getelementptr i8, ptr %1, i64 %.03238.us
  %i.x = sub nuw nsw i64 4096, %.03238.us
  %i.y = load i32, ptr %i.c, align 8              ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %i.v, %i.z
  %i.ab = shl i32 %i.t, %i.y
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.2, i64 noundef %i.aa, i32 noundef %i.ab) #9
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add nsw i64 %.03238.us, %i.ad           ; 3 uses
  %i.af = icmp ult i64 %i.ae, 4096
  br i1 %i.af, label %bb.b, label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %bb.c, %bb.b
  %.03237.us = phi i64 [ %.03238.us, %bb.b ], [ %i.ae, %bb.c ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !24
  %i.ag = load volatile i32, ptr %i.f, align 4
  %.not35.us = icmp eq i32 %i.ag, %.lcssa.i.us
  br i1 %.not35.us, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %.critedge.thread
  %i.ah = load volatile i32, ptr %i.f, align 4    ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.ai = and i32 %i.ah, 1
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !15

.lr.ph.i:                                         ; preds = %.preheader.split, %.lr.ph.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  %i.aj = load volatile i32, ptr %i.f, align 4    ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  %i.ak = and i32 %i.aj, 1
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %read_seqbegin.exit, label %.lr.ph.i, !prof !17, !llvm.loop !18

read_seqbegin.exit:                               ; preds = %.lr.ph.i, %.preheader.split
  %.lcssa.i = phi i32 [ %i.ah, %.preheader.split ], [ %i.aj, %.lr.ph.i ]
  br label %bb.d

bb.d:                                             ; preds = %read_seqbegin.exit, %bb.g
  %indvars.iv = phi i64 [ 0, %read_seqbegin.exit ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.03238 = phi i64 [ 0, %read_seqbegin.exit ], [ %.1, %bb.g ] ; 6 uses
  %i.al = load i32, ptr %i.g, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv, %i.am
  br i1 %i.an, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.aq, label %bb.g, label %bb.f, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  %i.ar = trunc i64 %i.ap to i32
  %i.as = and i32 %i.ar, 511
  %i.at = add nuw nsw i32 %i.as, 1
  %i.au = lshr i64 %i.ap, 9
  %i.av = getelementptr i8, ptr %1, i64 %.03238
  %i.aw = sub nuw nsw i64 4096, %.03238
  %i.ax = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.au, %i.ay
  %i.ba = shl i32 %i.at, %i.ax
  %i.bb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.2, i64 noundef %i.az, i32 noundef %i.ba) #9
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add nsw i64 %.03238, %i.bc
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i64 [ %i.bd, %bb.f ], [ %.03238, %bb.e ] ; 3 uses
  %i.be = icmp ult i64 %.1, 4096
  br i1 %i.be, label %bb.d, label %.critedge.thread

.critedge:                                        ; preds = %bb.d
  %i.bf = icmp eq i64 %.03238, 0
  br i1 %i.bf, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.critedge
  store i32 0, ptr %i.h, align 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %bb.h, %.critedge
  %.03237 = phi i64 [ %.03238, %.critedge ], [ 0, %bb.h ], [ %.1, %bb.g ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !24
  %i.bg = load volatile i32, ptr %i.f, align 4
  %.not35 = icmp eq i32 %i.bg, %.lcssa.i
  br i1 %.not35, label %.loopexit, label %.preheader.split

.loopexit:                                        ; preds = %.critedge.thread, %.critedge.thread.us, %bb.a
  %.033 = phi i64 [ 0, %bb.a ], [ %.03237.us, %.critedge.thread.us ], [ %.03237, %.critedge.thread ]
  ret i64 %.033
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i64 @badblocks_store(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
end_hunk_0

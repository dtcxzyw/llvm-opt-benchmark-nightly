inline.NumInlined: 69
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@badblocks_clear:bb.a
  %i.cz = shl i32 %i.cy, 3
  %i.da = sext i32 %i.cz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.cw, i64 %i.da, i1 false)
  br label %front_clear.exit.i

bb.w:                                             ; preds = %bb.r
  %i.db = add i64 %.085.i, %.1.i
  %.not.i127.i = icmp ugt i64 %i.bg, %i.db
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
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.k

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
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge36

.preheader28:                                     ; preds = %bb.g
  %i.r = icmp sgt i32 %i.w, 0
  br i1 %i.r, label %.lr.ph30.a, label %._crit_edge36

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

.lr.ph30.a:                                       ; preds = %.preheader28, %._crit_edge
  %i.z = phi i32 [ %1, %._crit_edge ], [ %i.w, %.preheader28 ] ; 4 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ 0, %.preheader28 ] ; 4 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 6 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next39, %i.aa
  br i1 %i.ab, label %.lr.ph34.preheader, label %._crit_edge

.lr.ph34.preheader:                               ; preds = %.lr.ph30.a
  %i.ac = trunc i64 %indvars.iv38 to i32
  %i.ad = add i32 %i.ac, 2                        ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv38 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = lshr i64 %i.ag, 9
  %i.ai = and i64 %i.ah, 18014398509481983        ; 2 uses
  %i.aj = and i64 %i.ag, 511
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.al = add nuw nsw i64 %i.ai, %i.ak
  %i.am = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv.next39
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = lshr i64 %i.an, 9
  %i.ap = and i64 %i.ao, 18014398509481983
  %i.aq = icmp eq i64 %i.al, %i.ap
  br i1 %i.aq, label %.lr.ph46, label %._crit_edge

.lr.ph34:                                         ; preds = %try_adjacent_combine.exit.us
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv38 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = lshr i64 %i.at, 9
  %i.av = and i64 %i.au, 18014398509481983        ; 2 uses
  %i.aw = and i64 %i.at, 511
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.ay = add nuw nsw i64 %i.av, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv.next39
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = lshr i64 %i.ba, 9
  %i.bc = and i64 %i.bb, 18014398509481983
  %i.bd = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bd, label %.lr.ph46, label %._crit_edge

.lr.ph46:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %i.be = phi i64 [ %i.ba, %.lr.ph34 ], [ %i.an, %.lr.ph34.preheader ] ; 2 uses
  %i.bf = phi i64 [ %i.ax, %.lr.ph34 ], [ %i.ak, %.lr.ph34.preheader ] ; 2 uses
  %i.bg = phi i64 [ %i.av, %.lr.ph34 ], [ %i.ai, %.lr.ph34.preheader ]
  %i.bh = phi i64 [ %i.at, %.lr.ph34 ], [ %i.ag, %.lr.ph34.preheader ] ; 2 uses
  %i.bi = phi ptr [ %i.as, %.lr.ph34 ], [ %i.af, %.lr.ph34.preheader ] ; 3 uses
  %i.bj = phi i32 [ %i.cc, %.lr.ph34 ], [ %i.z, %.lr.ph34.preheader ]
  %i.bk = and i64 %i.be, 511                      ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1
  %i.bm = add nuw nsw i64 %i.bl, %i.bf
  %i.bn = icmp samesign ult i64 %i.bm, 513
  %.unshifted.i.us = xor i64 %i.be, %i.bh
  %i.bo = icmp sgt i64 %.unshifted.i.us, -1
  %or.cond.i.us = and i1 %i.bo, %i.bn
  br i1 %or.cond.i.us, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph46
  %i.bp = shl nuw nsw i64 %i.bg, 9
  %i.bq = add nuw nsw i64 %i.bf, %i.bk
  %i.br = and i64 %i.bh, -9223372036854775808
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %i.bp
  store i64 %i.bt, ptr %i.bi, align 8
  %i.bu = load i32, ptr %i.o, align 8             ; 3 uses
  %i.bv = icmp slt i32 %i.ad, %i.bu
  br i1 %i.bv, label %bb.i, label %try_adjacent_combine.exit.us

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr i8, ptr %i.bi, i64 8
  %i.bx = getelementptr i8, ptr %i.bi, i64 16
  %i.by = sub i32 %i.bu, %i.ad
  %i.bz = shl i32 %i.by, 3
  %i.ca = sext i32 %i.bz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %i.bx, i64 %i.ca, i1 false)
  %.pre.i.us = load i32, ptr %i.o, align 8
  br label %try_adjacent_combine.exit.us

try_adjacent_combine.exit.us:                     ; preds = %bb.i, %bb.h
  %i.cb = phi i32 [ %.pre.i.us, %bb.i ], [ %i.bu, %bb.h ]
  %i.cc = add i32 %i.cb, -1                       ; 5 uses
  store i32 %i.cc, ptr %i.o, align 8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next39, %i.cd
  br i1 %i.ce, label %.lr.ph34, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph46, %.lr.ph34, %try_adjacent_combine.exit.us, %.lr.ph34.preheader, %.lr.ph30.a
  %1 = phi i32 [ %i.z, %.lr.ph30.a ], [ %i.z, %.lr.ph34.preheader ], [ %i.cc, %try_adjacent_combine.exit.us ], [ %i.cc, %.lr.ph34 ], [ %i.bj, %.lr.ph46 ] ; 2 uses
  %i.cf = sext i32 %1 to i64
  %i.cg = icmp slt i64 %indvars.iv.next39, %i.cf
  br i1 %i.cg, label %.lr.ph30.a, label %._crit_edge36, !llvm.loop !36

._crit_edge36:                                    ; preds = %._crit_edge, %bb.e, %.preheader28
  store i32 0, ptr %i.l, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge36, %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %i.ch = load i32, ptr %i.f, align 4
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.f, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.g) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.j
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
  br i1 %i.aq, label %bb.g, label %bb.f, !llvm.loop !37

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
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i8 0, ptr %i.c, align 1, !annotation !38
  %i.d = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10
  switch i32 %i.d, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.e, 10
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr %i.b, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8
  %i.i = zext nneg i32 %i.f to i64
  %.not5 = icmp eq i32 %3, 0
  %i.j = zext i1 %.not5 to i32
  %i.k = call zeroext i1 @badblocks_set(ptr noundef %0, i64 noundef %i.h, i64 noundef %i.i, i32 noundef %i.j) #10
  %. = select i1 %i.k, i64 %2, i64 -28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ -22, %bb.c ], [ %., %bb.d ], [ -22, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @badblocks_init(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 20), (24, 32)) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %.not.i = icmp eq i32 %1, 0
  %spec.select.i = sext i1 %.not.i to i32
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  store i32 %spec.select.i, ptr %i.b, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef 4096) #11 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8
  %.not22.i = icmp eq ptr %i.d, null
  br i1 %.not22.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.b, align 8
  br label %__badblocks_init.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 36
  %i.g = getelementptr i8, ptr %0, i64 40
  store i32 0, ptr %i.g, align 8
  store i32 0, ptr %i.f, align 4
  br label %__badblocks_init.exit

__badblocks_init.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -12, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @devm_init_badblocks(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %__badblocks_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  store i32 0, ptr %i.b, align 8
  %.not21.i = icmp eq ptr %0, null
  br i1 %.not21.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias noundef dereferenceable_or_null(4096) ptr @devm_kmalloc(ptr noundef nonnull %0, i64 noundef 4096, i32 noundef 3520) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 4096) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink23.i = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 24
  store ptr %.sink23.i, ptr %i.f, align 8
  %.not22.i = icmp eq ptr %.sink23.i, null
  br i1 %.not22.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.b, align 8
  br label %__badblocks_init.exit

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %1, i64 36
  %i.h = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.h, align 8
  store i32 0, ptr %i.g, align 4
  br label %__badblocks_init.exit

__badblocks_init.exit:                            ; preds = %bb.g, %bb.f, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.g ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @badblocks_exit(ptr nofree noundef captures(address_is_null) %0) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @devm_kfree(ptr noundef nonnull %i.a, ptr noundef %i.c) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef %i.c) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @prev_badblocks(ptr nofree noundef readonly captures(none) %0, i64 %.0.val, i32 noundef %1) unnamed_addr #4 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %prev_by_hint.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, -1
  br i1 %i.c, label %bb.c, label %.prev_by_hint.exit.thread_crit_edge

.prev_by_hint.exit.thread_crit_edge:              ; preds = %bb.b
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %prev_by_hint.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %1, 2
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 11 uses
  %i.g = zext nneg i32 %1 to i64                  ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, -2147483648) %1, i32 %i.d)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %i.h = sext i32 %i.b to i64
  %i.i = zext i32 %i.b to i64                     ; 2 uses
  %i.j = add i32 %i.b, -1                         ; 2 uses
  %exitcond.not.i31.not = icmp slt i32 %1, 2147483646
  br i1 %exitcond.not.i31.not, label %.lr.ph34, label %prev_by_hint.exit.thread

bb.d:                                             ; preds = %bb.j
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %prev_by_hint.exit.thread, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %bb.d
  %indvars.iv.next.i.1 = add nuw nsw i64 %i.g, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i, %i.h
  br i1 %exitcond.not.1, label %prev_by_hint.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph34.1
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 9
  %i.n = and i64 %i.m, 18014398509481983
  %.not.i.1 = icmp ugt i64 %i.n, %.0.val
  br i1 %.not.i.1, label %prev_by_hint.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %indvars.iv.next.i.1, %i.i
  br i1 %i.o, label %prev_by_hint.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 9
  %i.s = and i64 %i.r, 18014398509481983
  %i.t = icmp ugt i64 %i.s, %.0.val
  br i1 %i.t, label %.critedge.split.loop.exit22.i, label %prev_by_hint.exit.thread, !llvm.loop !20

.lr.ph34:                                         ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %i.g, 1    ; 6 uses
  %exitcond.not.not = icmp slt i32 %1, %i.b
  br i1 %exitcond.not.not, label %bb.h, label %prev_by_hint.exit.thread

bb.h:                                             ; preds = %.lr.ph34
  %i.u = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 9
  %i.x = and i64 %i.w, 18014398509481983
  %.not.i = icmp ugt i64 %i.x, %.0.val
  br i1 %.not.i, label %prev_by_hint.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %i.y, label %prev_by_hint.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = lshr i64 %i.aa, 9
  %i.ac = and i64 %i.ab, 18014398509481983
  %i.ad = icmp ugt i64 %i.ac, %.0.val
  br i1 %i.ad, label %.critedge.split.loop.exit22.i, label %bb.d, !llvm.loop !20

.critedge.split.loop.exit22.i:                    ; preds = %bb.g, %bb.j
  %indvars.iv.i32.lcssa40 = phi i64 [ %i.g, %bb.j ], [ %indvars.iv.next.i, %bb.g ]
  %i.ae = trunc nuw nsw i64 %indvars.iv.i32.lcssa40 to i32
  br label %prev_by_hint.exit

prev_by_hint.exit.thread:                         ; preds = %bb.d, %.lr.ph34, %bb.h, %.lr.ph34.1, %bb.e, %bb.g, %bb.c, %.prev_by_hint.exit.thread_crit_edge
  %i.af = phi ptr [ %.pre, %.prev_by_hint.exit.thread_crit_edge ], [ %i.f, %bb.c ], [ %i.f, %bb.g ], [ %i.f, %bb.e ], [ %i.f, %.lr.ph34.1 ], [ %i.f, %bb.h ], [ %i.f, %.lr.ph34 ], [ %i.f, %bb.d ] ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = lshr i64 %i.ag, 9
  %i.ai = and i64 %i.ah, 18014398509481983        ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %.0.val
  br i1 %i.aj, label %prev_by_hint.exit, label %bb.k

bb.k:                                             ; preds = %prev_by_hint.exit.thread
  %i.ak = add i32 %i.b, -1                        ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.af, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i64 %i.an, 9
  %i.ap = and i64 %i.ao, 18014398509481983
  %.not48 = icmp ugt i64 %i.ap, %.0.val
  br i1 %.not48, label %.preheader, label %prev_by_hint.exit

.preheader:                                       ; preds = %bb.k
  %i.aq = icmp sgt i32 %i.b, 1
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.03510 = phi i32 [ %.035., %bb.l ], [ %i.b, %.preheader ] ; 2 uses
  %.0369 = phi i32 [ %..036, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.ar = add i32 %.03510, %.0369
  %i.as = sdiv i32 %i.ar, 2                       ; 4 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.af, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = lshr i64 %i.av, 9
  %i.ax = and i64 %i.aw, 18014398509481983        ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %.0.val
  br i1 %i.ay, label %prev_by_hint.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.az = icmp ult i64 %i.ax, %.0.val             ; 2 uses
  %..036 = select i1 %i.az, i32 %i.as, i32 %.0369 ; 4 uses
  %.035. = select i1 %i.az, i32 %.03510, i32 %i.as ; 2 uses
  %i.ba = sub i32 %.035., %..036
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.l
  %.phi.trans.insert14 = sext i32 %..036 to i64
  %.phi.trans.insert15 = getelementptr [8 x i8], ptr %i.af, i64 %.phi.trans.insert14
  %.pre16 = load i64, ptr %.phi.trans.insert15, align 8
  %.pre17 = lshr i64 %.pre16, 9
  %.pre18 = and i64 %.pre17, 18014398509481983
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %.pre-phi19 = phi i64 [ %.pre18, %._crit_edge.loopexit ], [ %i.ai, %.preheader ]
  %.036.lcssa = phi i32 [ %..036, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %.not49 = icmp ugt i64 %.pre-phi19, %.0.val
  %spec.select = select i1 %.not49, i32 -1, i32 %.036.lcssa
  br label %prev_by_hint.exit

prev_by_hint.exit:                                ; preds = %bb.i, %bb.f, %.lr.ph, %.critedge.split.loop.exit22.i, %._crit_edge, %bb.a, %bb.k, %prev_by_hint.exit.thread
  %.042 = phi i32 [ -1, %prev_by_hint.exit.thread ], [ %i.ak, %bb.k ], [ %spec.select, %._crit_edge ], [ %i.as, %.lr.ph ], [ -1, %bb.a ], [ %i.ae, %.critedge.split.loop.exit22.i ], [ %i.j, %bb.f ], [ %i.j, %bb.i ]
  ret i32 %.042
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }

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
!11 = !{i64 2155545533, i64 2155545408}
!12 = !{i64 2155546056, i64 2155547123, i64 2155547156, i64 2155547191, i64 2155547207, i64 2155548134, i64 2155548192, i64 2155548241, i64 2155548051, i64 2155547266, i64 2155547298, i64 2155547381}
!13 = !{i64 2155548539, i64 2155548415}
!14 = !{i64 2150465528}
!15 = !{!"branch_weights", i32 1999, i32 1}
!16 = !{i64 2494588}
!17 = !{!"branch_weights", i32 1, i32 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{i64 2155541228, i64 2155541103}
!22 = !{i64 2155541751, i64 2155542802, i64 2155542835, i64 2155542870, i64 2155542886, i64 2155543813, i64 2155543871, i64 2155543920, i64 2155543730, i64 2155542945, i64 2155542977, i64 2155543060}
!23 = !{i64 2155544218, i64 2155544094}
!24 = !{i64 2150507001}
!25 = !{i64 2150507274}
!26 = !{i64 2155505681, i64 2155505556}
!27 = !{i64 2155506204, i64 2155507261, i64 2155507294, i64 2155507329, i64 2155507345, i64 2155508272, i64 2155508330, i64 2155508379, i64 2155508189, i64 2155507404, i64 2155507436, i64 2155507519}
!28 = !{i64 2155508676, i64 2155508552}
!29 = distinct !{!29, !19}
!30 = !{i64 2150507547}
!31 = !{i64 2155536330, i64 2155536205}
!32 = !{i64 2155536853, i64 2155537329, i64 2155537362, i64 2155537397, i64 2155537413, i64 2155538254, i64 2155538312, i64 2155538361, i64 2155538171, i64 2155537472, i64 2155537504}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unswitch.partial.disable"}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = !{!"auto-init"}
end_hunk_0

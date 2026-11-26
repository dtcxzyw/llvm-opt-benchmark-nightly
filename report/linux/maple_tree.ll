Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/maple_tree?download=true
inline.NumInlined: 537
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@cp_is_new_root:bb.a
  %i.al = load ptr, ptr %0, align 8               ; 5 uses
  %i.am = load i8, ptr %i.ab, align 8             ; 2 uses
  %i.an = add i8 %i.am, 1                         ; 5 uses
  %i.ao = zext nneg i32 %spec.select to i64
  %i.ap = getelementptr i8, ptr @mt_slots, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1             ; 3 uses
  %i.ar = getelementptr i8, ptr %i.al, i64 160
  %spec.select41 = select i1 %i.k, ptr %i.ar, ptr null ; 8 uses
  %i.as = zext i8 %i.an to i32                    ; 2 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = add nsw i32 %i.at, -1
  %i.av = icmp sgt i32 %i.au, %i.as
  br i1 %i.av, label %ma_slots.exit.i, label %bb.f

ma_slots.exit.i:                                  ; preds = %ma_gaps.exit.i
  %i.aw = sub i8 %i.aq, %i.an                     ; 2 uses
  %.0.i57.i.v = select i1 %i.k, i64 80, i64 128
  %.0.i57.i = getelementptr i8, ptr %i.al, i64 %.0.i57.i.v
  %i.ax = zext i8 %i.an to i64                    ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %.0.i57.i, i64 %i.ax
  %i.az = zext i8 %i.aw to i64
  %i.ba = shl nuw nsw i64 %i.az, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.ba, i1 false)
  %.not.i = icmp eq ptr %spec.select41, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ma_slots.exit.i
  %i.bb = getelementptr [8 x i8], ptr %spec.select41, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.ba, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ma_slots.exit.i
  %i.bc = add i8 %i.aw, -1                        ; 2 uses
  %.not52.i = icmp eq i8 %i.bc, 0
  br i1 %.not52.i, label %bb.f, label %ma_pivots.exit.i

ma_pivots.exit.i:                                 ; preds = %bb.e
  %i.bd = getelementptr i8, ptr %i.al, i64 8
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.ax
  %i.bf = zext i8 %i.bc to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bg, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %ma_pivots.exit.i, %bb.e, %ma_gaps.exit.i
  %.not53.i = icmp eq ptr %spec.select41, null
  br i1 %.not53.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = add nuw nsw i32 %i.as, 1
  %wide.trip.count.i = zext nneg i32 %i.bh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bi = icmp ult i8 %i.an, 3
  br i1 %i.bi, label %.preheader.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %wide.trip.count.i, 508
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %.preheader.i ] ; 6 uses
  %.04163.i = phi i64 [ 0, %.new ], [ %spec.select56.i.3, %.preheader.i ] ; 2 uses
  %.04262.i = phi i8 [ 0, %.new ], [ %spec.select.i.3, %.preheader.i ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.preheader.i ]
  %i.bj = getelementptr [8 x i8], ptr %spec.select41, i64 %indvars.iv.i
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, %.04163.i
  %i.bm = trunc i64 %indvars.iv.i to i8
  %spec.select.i = select i1 %i.bl, i8 %i.bm, i8 %.04262.i
  %spec.select56.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %.04163.i) ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %spec.select41, i64 %indvars.iv.next.i
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %spec.select56.i
  %i.bq = trunc i64 %indvars.iv.next.i to i8
  %spec.select.i.1 = select i1 %i.bp, i8 %i.bq, i8 %spec.select.i
  %spec.select56.i.1 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %spec.select56.i) ; 2 uses
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %spec.select41, i64 %indvars.iv.next.i.1
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, %spec.select56.i.1
  %i.bu = trunc i64 %indvars.iv.next.i.1 to i8
  %spec.select.i.2 = select i1 %i.bt, i8 %i.bu, i8 %spec.select.i.1
  %spec.select56.i.2 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %spec.select56.i.1) ; 2 uses
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %spec.select41, i64 %indvars.iv.next.i.2
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %spec.select56.i.2
  %i.by = trunc i64 %indvars.iv.next.i.2 to i8
  %spec.select.i.3 = select i1 %i.bx, i8 %i.by, i8 %spec.select.i.2 ; 3 uses
  %spec.select56.i.3 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %spec.select56.i.2) ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !6

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.g
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %.04163.i.epil.init = phi i64 [ 0, %bb.g ], [ %spec.select56.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %.04262.i.epil.init = phi i8 [ 0, %bb.g ], [ %spec.select.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 3 uses
  %.04163.i.epil = phi i64 [ %.04163.i.epil.init, %.preheader.i.epil.preheader ], [ %spec.select56.i.epil, %.preheader.i.epil ] ; 2 uses
  %.04262.i.epil = phi i8 [ %.04262.i.epil.init, %.preheader.i.epil.preheader ], [ %spec.select.i.epil, %.preheader.i.epil ]
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.bz = getelementptr [8 x i8], ptr %spec.select41, i64 %indvars.iv.i.epil
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, %.04163.i.epil
  %i.cc = trunc i64 %indvars.iv.i.epil to i8
  %spec.select.i.epil = select i1 %i.cb, i8 %i.cc, i8 %.04262.i.epil ; 2 uses
  %spec.select56.i.epil = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %.04163.i.epil)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.preheader.i.epil, !llvm.loop !284

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.f
  %.2.i = phi i8 [ 0, %bb.f ], [ %spec.select.i.3, %.loopexit.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.preheader.i.epil ]
  br i1 %i.k, label %.sink.split.i, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i
  %.not55.not.i = icmp ugt i8 %i.aq, %i.an
  br i1 %.not55.not.i, label %.sink.split.i, label %node_finalise.exit

.sink.split.i:                                    ; preds = %.thread.i, %.loopexit.i
  %.sink68.i = phi i64 [ 240, %.loopexit.i ], [ 248, %.thread.i ]
  %.sink67.i = phi i64 [ 241, %.loopexit.i ], [ 249, %.thread.i ]
  %.0.i.i59.i = getelementptr i8, ptr %i.al, i64 %.sink68.i
  %i.cd = getelementptr i8, ptr %i.al, i64 %.sink67.i
  store i8 %.2.i, ptr %i.cd, align 1
  store i8 %i.am, ptr %.0.i.i59.i, align 1
  br label %node_finalise.exit

node_finalise.exit:                               ; preds = %.thread.i, %.sink.split.i
  %i.ce = getelementptr i8, ptr %0, i64 168
  %i.cf = load ptr, ptr %0, align 8               ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = shl nuw nsw i32 %spec.select, 3
  %i.ci = or disjoint i32 %i.ch, 4
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = or i64 %i.cj, %i.cg                     ; 2 uses
  %i.cl = inttoptr i64 %i.ck to ptr
  store volatile ptr %i.cl, ptr %i.ce, align 8
  %i.cm = getelementptr i8, ptr %0, i64 253       ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = add i8 %i.cn, 1
  store i8 %i.co, ptr %i.cm, align 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %node_finalise.exit
  %i.cp = phi i64 [ %i.g, %._crit_edge ], [ %i.ck, %node_finalise.exit ]
  %i.cq = phi ptr [ %.pre, %._crit_edge ], [ %i.cf, %node_finalise.exit ] ; 2 uses
  %i.cr = and i64 %i.cp, -256
  %i.cs = inttoptr i64 %i.cr to ptr
  %.not40 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not40, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "704: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 704b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 704) #17, !srcloc !286
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 2618, i32 2307, i64 16) #17, !srcloc !287
  tail call void asm sideeffect "705: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 705b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 705) #17, !srcloc !288
  %.pre43 = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ct = phi ptr [ %.pre43, %bb.i ], [ %i.cq, %bb.h ]
  %i.cu = load ptr, ptr %1, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = or i64 %i.cv, 1
  %i.cx = inttoptr i64 %i.cw to ptr
  store ptr %i.cx, ptr %i.ct, align 8
  %i.cy = getelementptr i8, ptr %1, i64 32
  store i64 0, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %1, i64 40
  store i64 -1, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %1, i64 76
  store i8 0, ptr %i.da, align 4
  %.val = load ptr, ptr %1, align 8
  %i.db = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %1, i64 24
  store ptr %.val.val, ptr %i.dc, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.j
  %.0 = phi i1 [ true, %bb.j ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @mt_destroy_walk(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 align 16 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 15                         ; 2 uses
  %i.e = icmp samesign ult i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %.preheader36

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, -256
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  store ptr %i.g, ptr %i.g, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.h = getelementptr i8, ptr %i.g, i64 36
  store i32 %i.d, ptr %i.h, align 4
  br label %.loopexit35

.preheader36:                                     ; preds = %bb.a, %bb.h
  %.027.i = phi ptr [ %.024.i, %bb.h ], [ %0, %bb.a ]
  %.026.i = phi i8 [ %.1.i, %bb.h ], [ 0, %bb.a ]
  %.024.i = phi ptr [ %.125.i, %bb.h ], [ %0, %bb.a ] ; 3 uses
  %i.i = ptrtoint ptr %.024.i to i64              ; 2 uses
  %i.j = and i64 %i.i, -256
  %i.k = inttoptr i64 %i.j to ptr                 ; 10 uses
  %i.l = trunc i64 %i.i to i32
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 15                         ; 2 uses
  switch i32 %i.n, label %ma_slots.exit.i [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.d
    i32 4, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %.preheader36
  %i.o = getelementptr i8, ptr %i.k, i64 80
  br label %ma_slots.exit.i

bb.d:                                             ; preds = %.preheader36, %.preheader36
  %i.p = getelementptr i8, ptr %i.k, i64 128
  br label %ma_slots.exit.i

bb.e:                                             ; preds = %.preheader36
  %i.q = getelementptr i8, ptr %i.k, i64 168
  br label %ma_slots.exit.i

bb.f:                                             ; preds = %.preheader36
  %i.r = getelementptr i8, ptr %i.k, i64 8
  br label %ma_slots.exit.i

ma_slots.exit.i:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.preheader36
  %.0.i.i = phi ptr [ %i.r, %bb.f ], [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ null, %.preheader36 ] ; 3 uses
  %i.s = load ptr, ptr %.0.i.i, align 8           ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, -256                       ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !31
  %i.w = load ptr, ptr %i.v, align 256
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -256
  %i.z = icmp eq i64 %i.u, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ma_slots.exit.i
  %i.aa = getelementptr i8, ptr %.0.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.pre.i = ptrtoint ptr %i.ab to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ma_slots.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.t, %ma_slots.exit.i ]
  %.125.i = phi ptr [ %i.ab, %bb.g ], [ %i.s, %ma_slots.exit.i ]
  %.1.i = phi i8 [ 1, %bb.g ], [ 0, %ma_slots.exit.i ]
  store ptr %i.k, ptr %i.k, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.ac = getelementptr i8, ptr %i.k, i64 36
  store i32 %i.n, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.k, i64 24
  store ptr %.027.i, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.k, i64 32
  store i8 %.026.i, ptr %i.ae, align 32
  %i.af = and i64 %.pre-phi.i, 112
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %mte_destroy_descend.exit, label %.preheader36, !llvm.loop !289

mte_destroy_descend.exit:                         ; preds = %bb.h, %.loopexit
  %.018 = phi ptr [ %.119, %.loopexit ], [ %.024.i, %bb.h ]
  %.037 = phi ptr [ %.138, %.loopexit ], [ %.0.i.i, %bb.h ] ; 3 uses
  %.036 = phi ptr [ %.pre-phi44, %.loopexit ], [ %i.k, %bb.h ] ; 5 uses
  %i.ah = ptrtoint ptr %.018 to i64
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 15
  %i.ak = getelementptr i8, ptr @mt_slots, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.umax.i8(i8 %i.al, i8 1) ; 2 uses
  %wide.trip.count.i = zext i8 %i.am to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %mte_destroy_descend.exit
  %indvars.iv.i = phi i64 [ 0, %mte_destroy_descend.exit ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %i.an = and i64 %indvars.iv.i, 255
  %i.ao = getelementptr [8 x i8], ptr %.037, i64 %i.an
  %i.ap = load volatile ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = lshr i32 %i.ar, 3
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %i.au = and i64 %i.aq, -256                     ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp ne i32 %i.at, 0
  %or.cond.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i, label %bb.i, label %._crit_edge.split.loop.exit6.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ax = inttoptr i64 %i.au to ptr               ; 4 uses
  store ptr %i.ax, ptr %i.ax, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.ay = getelementptr i8, ptr %i.ax, i64 36
  store i32 %i.at, ptr %i.ay, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !292
  %i.az = getelementptr [8 x i8], ptr %.037, i64 %indvars.iv.i
  store volatile ptr %i.ax, ptr %i.az, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mte_dead_leaves.exit, label %.lr.ph.i, !llvm.loop !290

._crit_edge.split.loop.exit6.i:                   ; preds = %.lr.ph.i
  %i.ba = trunc i64 %indvars.iv.i to i8
  br label %mte_dead_leaves.exit

mte_dead_leaves.exit:                             ; preds = %bb.i, %._crit_edge.split.loop.exit6.i
  %.0.lcssa.ph.i = phi i8 [ %i.ba, %._crit_edge.split.loop.exit6.i ], [ %i.am, %bb.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.036, i64 40
  store i8 %.0.lcssa.ph.i, ptr %i.bb, align 8
  br i1 %1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %mte_dead_leaves.exit
  %i.bc = zext i8 %.0.lcssa.ph.i to i64
  %i.bd = load ptr, ptr @maple_node_cache, align 8
  tail call void @kmem_cache_free_bulk(ptr noundef %i.bd, i64 noundef range(i64 0, 256) %i.bc, ptr noundef %.037) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %mte_dead_leaves.exit
  %i.be = getelementptr i8, ptr %.036, i64 32
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = add i8 %i.bf, 1                         ; 3 uses
  %i.bh = getelementptr i8, ptr %.036, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 4 uses
  %i.bk = and i64 %i.bj, -256
  %i.bl = inttoptr i64 %i.bk to ptr               ; 7 uses
  %i.bm = icmp eq ptr %.036, %i.bl
  br i1 %i.bm, label %.loopexit35, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = trunc i64 %i.bj to i32
  %i.bo = lshr i32 %i.bn, 3
  %i.bp = and i32 %i.bo, 15                       ; 2 uses
  switch i32 %i.bp, label %ma_slots.exit [
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 1, label %bb.n
    i32 4, label %bb.o
    i32 0, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr i8, ptr %i.bl, i64 80
  br label %ma_slots.exit

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.br = getelementptr i8, ptr %i.bl, i64 128
  br label %ma_slots.exit

bb.o:                                             ; preds = %bb.l
  %i.bs = getelementptr i8, ptr %i.bl, i64 168
  br label %ma_slots.exit

bb.p:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.bl, i64 8
  br label %ma_slots.exit

ma_slots.exit:                                    ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi ptr [ %i.bt, %bb.p ], [ %i.bq, %bb.m ], [ %i.br, %bb.n ], [ %i.bs, %bb.o ], [ null, %bb.l ] ; 3 uses
  %i.bu = zext nneg i32 %i.bp to i64
  %i.bv = getelementptr i8, ptr @mt_slots, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %.not = icmp ult i8 %i.bg, %i.bw
  br i1 %.not, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %ma_slots.exit
  %i.bx = zext i8 %i.bg to i64
  %i.by = getelementptr [8 x i8], ptr %.0.i, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, 120
  %.not41 = icmp eq i64 %i.cb, 0
  %.not42 = icmp ult ptr %i.bz, inttoptr (i64 256 to ptr)
  %or.cond = or i1 %.not42, %.not41
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.w
  %.027.i44 = phi ptr [ %.024.i46, %bb.w ], [ %i.bi, %bb.q ]
  %.026.i45 = phi i8 [ %.1.i51, %bb.w ], [ %i.bg, %bb.q ]
  %.024.i46 = phi ptr [ %.125.i50, %bb.w ], [ %i.bz, %bb.q ] ; 3 uses
  %i.cc = ptrtoint ptr %.024.i46 to i64           ; 3 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = inttoptr i64 %i.cd to ptr               ; 10 uses
  %i.cf = trunc i64 %i.cc to i32
  %i.cg = lshr i32 %i.cf, 3
  %i.ch = and i32 %i.cg, 15                       ; 2 uses
  switch i32 %i.ch, label %ma_slots.exit.i47 [
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.s
    i32 4, label %bb.t
    i32 0, label %bb.u
  ]

bb.r:                                             ; preds = %.preheader
  %i.ci = getelementptr i8, ptr %i.ce, i64 80
  br label %ma_slots.exit.i47

bb.s:                                             ; preds = %.preheader, %.preheader
  %i.cj = getelementptr i8, ptr %i.ce, i64 128
  br label %ma_slots.exit.i47

bb.t:                                             ; preds = %.preheader
  %i.ck = getelementptr i8, ptr %i.ce, i64 168
  br label %ma_slots.exit.i47

bb.u:                                             ; preds = %.preheader
  %i.cl = getelementptr i8, ptr %i.ce, i64 8
  br label %ma_slots.exit.i47

ma_slots.exit.i47:                                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %.preheader
  %.0.i.i48 = phi ptr [ %i.cl, %bb.u ], [ %i.ci, %bb.r ], [ %i.cj, %bb.s ], [ %i.ck, %bb.t ], [ null, %.preheader ] ; 3 uses
  %i.cm = load ptr, ptr %.0.i.i48, align 8        ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, -256                     ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !31
  %i.cq = load ptr, ptr %i.cp, align 256
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = and i64 %i.cr, -256
  %i.ct = icmp eq i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %ma_slots.exit.i47
  %i.cu = getelementptr i8, ptr %.0.i.i48, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.pre.i52 = ptrtoint ptr %i.cv to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %ma_slots.exit.i47
  %.pre-phi.i49 = phi i64 [ %.pre.i52, %bb.v ], [ %i.cn, %ma_slots.exit.i47 ]
  %.125.i50 = phi ptr [ %i.cv, %bb.v ], [ %i.cm, %ma_slots.exit.i47 ]
  %.1.i51 = phi i8 [ 1, %bb.v ], [ 0, %ma_slots.exit.i47 ]
  store ptr %i.ce, ptr %i.ce, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.cw = getelementptr i8, ptr %i.ce, i64 36
  store i32 %i.ch, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %i.ce, i64 24
  store ptr %.027.i44, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.ce, i64 32
  store i8 %.026.i45, ptr %i.cy, align 32
  %i.cz = and i64 %.pre-phi.i49, 112
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.loopexit, label %.preheader, !llvm.loop !289

.loopexit:                                        ; preds = %bb.w, %ma_slots.exit, %bb.q
  %.pre-phi44 = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %ma_slots.exit ], [ %i.ce, %bb.w ] ; 4 uses
  %.pre-phi = phi i64 [ %i.bj, %bb.q ], [ %i.bj, %ma_slots.exit ], [ %i.cc, %bb.w ]
  %.119 = phi ptr [ %i.bi, %bb.q ], [ %i.bi, %ma_slots.exit ], [ %.024.i46, %bb.w ] ; 2 uses
  %.138 = phi ptr [ %.0.i, %bb.q ], [ %.0.i, %ma_slots.exit ], [ %.0.i.i48, %bb.w ] ; 4 uses
  %.not43 = icmp eq ptr %0, %.119
  br i1 %.not43, label %bb.x, label %mte_destroy_descend.exit, !llvm.loop !291

bb.x:                                             ; preds = %.loopexit
  %i.db = lshr i64 %.pre-phi, 3
  %i.dc = and i64 %i.db, 15
  %i.dd = getelementptr i8, ptr @mt_slots, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = tail call i8 @llvm.umax.i8(i8 %i.de, i8 1) ; 2 uses
  %wide.trip.count.i54 = zext i8 %i.df to i64
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.y, %bb.x
  %indvars.iv.i56 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i60, %bb.y ] ; 4 uses
  %i.dg = and i64 %indvars.iv.i56, 255
  %i.dh = getelementptr [8 x i8], ptr %.138, i64 %i.dg
  %i.di = load volatile ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = lshr i32 %i.dk, 3
  %i.dm = and i32 %i.dl, 15                       ; 2 uses
  %i.dn = and i64 %i.dj, -256                     ; 2 uses
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = icmp ne i32 %i.dm, 0
  %or.cond.i57 = and i1 %i.do, %i.dp
  br i1 %or.cond.i57, label %bb.y, label %._crit_edge.split.loop.exit6.i58

bb.y:                                             ; preds = %.lr.ph.i55
  %i.dq = inttoptr i64 %i.dn to ptr               ; 4 uses
  store ptr %i.dq, ptr %i.dq, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.dr = getelementptr i8, ptr %i.dq, i64 36
  store i32 %i.dm, ptr %i.dr, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !292
  %i.ds = getelementptr [8 x i8], ptr %.138, i64 %indvars.iv.i56
  store volatile ptr %i.dq, ptr %i.ds, align 8
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i54
  br i1 %exitcond.not.i61, label %mte_dead_leaves.exit62, label %.lr.ph.i55, !llvm.loop !290

._crit_edge.split.loop.exit6.i58:                 ; preds = %.lr.ph.i55
  %i.dt = trunc i64 %indvars.iv.i56 to i8
  br label %mte_dead_leaves.exit62

mte_dead_leaves.exit62:                           ; preds = %bb.y, %._crit_edge.split.loop.exit6.i58
  %.0.lcssa.ph.i59 = phi i8 [ %i.dt, %._crit_edge.split.loop.exit6.i58 ], [ %i.df, %bb.y ] ; 2 uses
  %i.du = getelementptr i8, ptr %.pre-phi44, i64 40
  store i8 %.0.lcssa.ph.i59, ptr %i.du, align 8
  br i1 %1, label %.thread28, label %.thread31

.thread28:                                        ; preds = %mte_dead_leaves.exit62
  %i.dv = zext i8 %.0.lcssa.ph.i59 to i64
  %i.dw = load ptr, ptr @maple_node_cache, align 8
  tail call void @kmem_cache_free_bulk(ptr noundef %i.dw, i64 noundef range(i64 0, 256) %i.dv, ptr noundef %.138) #16
  br label %bb.z

.loopexit35:                                      ; preds = %bb.k, %bb.b
  %.2 = phi ptr [ %i.g, %bb.b ], [ %.036, %bb.k ] ; 2 uses
  br i1 %1, label %bb.z, label %.thread31

bb.z:                                             ; preds = %.thread28, %.loopexit35
  %.230 = phi ptr [ %.pre-phi44, %.thread28 ], [ %.2, %.loopexit35 ]
  tail call void @kfree(ptr noundef %.230) #16
  br label %mt_clear_meta.exit

.thread31:                                        ; preds = %mte_dead_leaves.exit62, %.loopexit35
  %.233 = phi ptr [ %.2, %.loopexit35 ], [ %.pre-phi44, %mte_dead_leaves.exit62 ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.233, i64 36
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  switch i32 %i.dy, label %mt_clear_meta.exit [
    i32 2, label %bb.aa
    i32 3, label %.critedge.i
  ]

bb.aa:                                            ; preds = %.thread31
  %i.dz = getelementptr i8, ptr %.233, i64 120
  %i.ea = load i64, ptr %i.dz, align 8
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %.critedge.i, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr i8, ptr %.233, i64 248
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not11.i = icmp ult ptr %i.ec, inttoptr (i64 256 to ptr)
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 120
  %.not1.i = icmp eq i64 %i.ee, 0
  %or.cond.i64 = or i1 %.not11.i, %.not1.i
  br i1 %or.cond.i64, label %.critedge.i, label %mt_clear_meta.exit, !prof !293

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %.thread31
  %cond.i.i = icmp eq i32 %i.dy, 3
  %.0.v.i.i = select i1 %cond.i.i, i64 240, i64 248
  %.0.i.i63 = getelementptr i8, ptr %.233, i64 %.0.v.i.i ; 2 uses
  %i.ef = getelementptr i8, ptr %.0.i.i63, i64 1
  store i8 0, ptr %i.ef, align 1
  store i8 0, ptr %.0.i.i63, align 1
  br label %mt_clear_meta.exit

mt_clear_meta.exit:                               ; preds = %.critedge.i, %bb.ab, %.thread31, %bb.z
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mt_free_walk(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = shl i32 %i.c, 3
  %i.g = zext i32 %i.f to i64
  %i.h = or i64 %i.g, %i.e
  %i.i = and i64 %i.h, -256                       ; 3 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %ma_slots.exit.peel.i [
    i32 3, label %bb.f
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 4, label %bb.d
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 8
  br label %ma_slots.exit.peel.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.j, i64 168
  br label %ma_slots.exit.peel.i

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 128
  br label %ma_slots.exit.peel.i

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.j, i64 80
  br label %ma_slots.exit.peel.i

ma_slots.exit.peel.i:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.peel.i = phi ptr [ %i.m, %bb.c ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ null, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %.0.i.peel.i, align 8      ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ult i32 %i.s, 2
  br i1 %i.t, label %ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge, label %.peel.next.i

ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge: ; preds = %ma_slots.exit.peel.i
  %.pre57 = inttoptr i64 %i.i to ptr
  br label %mte_dead_walk.exit

.peel.next.i:                                     ; preds = %ma_slots.exit.peel.i, %ma_slots.exit.i
  %.010.i = phi ptr [ %i.ad, %ma_slots.exit.i ], [ %i.q, %ma_slots.exit.peel.i ]
  %i.u = ptrtoint ptr %.010.i to i64
  %i.v = and i64 %i.u, -256                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %ma_slots.exit.i [
    i32 3, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.h
    i32 4, label %bb.i
    i32 0, label %bb.j
  ]

bb.g:                                             ; preds = %.peel.next.i
  %i.z = getelementptr i8, ptr %i.w, i64 80
  br label %ma_slots.exit.i

bb.h:                                             ; preds = %.peel.next.i, %.peel.next.i
  %i.aa = getelementptr i8, ptr %i.w, i64 128
  br label %ma_slots.exit.i

bb.i:                                             ; preds = %.peel.next.i
  %i.ab = getelementptr i8, ptr %i.w, i64 168
  br label %ma_slots.exit.i

bb.j:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  br label %ma_slots.exit.i

ma_slots.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.peel.next.i
  %.0.i.i = phi ptr [ %i.ac, %bb.j ], [ %i.z, %bb.g ], [ %i.aa, %bb.h ], [ %i.ab, %bb.i ], [ null, %.peel.next.i ] ; 2 uses
  %i.ad = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 36
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, 2
  br i1 %i.ag, label %mte_dead_walk.exit, label %.peel.next.i, !llvm.loop !294

mte_dead_walk.exit:                               ; preds = %ma_slots.exit.i, %ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge
  %.pre-phi58 = phi ptr [ %.pre57, %ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge ], [ %i.w, %ma_slots.exit.i ] ; 4 uses
  %.pre-phi56 = phi i64 [ %i.i, %ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge ], [ %i.v, %ma_slots.exit.i ]
  %.0.i.lcssa.i = phi ptr [ %.0.i.peel.i, %ma_slots.exit.peel.i.mte_dead_walk.exit_crit_edge ], [ %.0.i.i, %ma_slots.exit.i ]
  %i.ah = getelementptr i8, ptr %.pre-phi58, i64 40
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = load ptr, ptr @maple_node_cache, align 8
  tail call void @kmem_cache_free_bulk(ptr noundef %i.ak, i64 noundef range(i64 0, 256) %i.aj, ptr noundef %.0.i.lcssa.i) #16
  %i.al = getelementptr i8, ptr %.pre-phi58, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, -256                     ; 2 uses
  %i.ap = icmp eq i64 %.pre-phi56, %i.ao
  br i1 %i.ap, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %mte_dead_walk.exit, %.critedge.backedge
  %.in51 = phi i64 [ %i.cr, %.critedge.backedge ], [ %i.ao, %mte_dead_walk.exit ]
  %i.aq = phi i64 [ %i.cq, %.critedge.backedge ], [ %i.an, %mte_dead_walk.exit ]
  %i.ar = phi ptr [ %i.cp, %.critedge.backedge ], [ %i.am, %mte_dead_walk.exit ] ; 2 uses
  %.pn = phi ptr [ %i.ci, %.critedge.backedge ], [ %.pre-phi58, %mte_dead_walk.exit ]
  %i.as = inttoptr i64 %.in51 to ptr              ; 10 uses
  %.in.in = getelementptr i8, ptr %.pn, i64 32
  %.in = load i8, ptr %.in.in, align 8
  %i.at = add i8 %.in, 1                          ; 3 uses
  %i.au = trunc i64 %i.aq to i32
  %i.av = lshr i32 %i.au, 3
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  switch i32 %i.aw, label %ma_slots.exit [
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.l
    i32 4, label %bb.m
    i32 0, label %bb.n
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr i8, ptr %i.as, i64 80
  br label %ma_slots.exit

bb.l:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ay = getelementptr i8, ptr %i.as, i64 128
  br label %ma_slots.exit

bb.m:                                             ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %i.as, i64 168
  br label %ma_slots.exit

bb.n:                                             ; preds = %.lr.ph
  %i.ba = getelementptr i8, ptr %i.as, i64 8
  br label %ma_slots.exit

ma_slots.exit:                                    ; preds = %.lr.ph, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.ba, %bb.n ], [ %i.ax, %bb.k ], [ %i.ay, %bb.l ], [ %i.az, %bb.m ], [ null, %.lr.ph ] ; 3 uses
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = getelementptr i8, ptr @mt_slots, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp ult i8 %i.at, %i.bd
  br i1 %i.be, label %bb.o, label %mte_dead_walk.exit39

bb.o:                                             ; preds = %ma_slots.exit
  %i.bf = zext i8 %i.at to i64                    ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %mte_dead_walk.exit39, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0

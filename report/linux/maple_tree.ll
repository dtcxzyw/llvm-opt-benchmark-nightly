Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/maple_tree?download=true
inline.NumInlined: 537
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mas_wmb_replace:bb.a
  %i.mr = icmp eq i32 %i.mq, 3
  br i1 %i.mr, label %mas_topiary_node.exit123.2.i, label %bb.bn

bb.bn:                                            ; preds = %mas_topiary_node.exit123.1.i
  %i.ms = load ptr, ptr %i.hj, align 8
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = and i64 %i.mt, -256                     ; 2 uses
  %i.mv = inttoptr i64 %i.mu to ptr               ; 6 uses
  store ptr %i.mv, ptr %i.mv, align 256
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !54
  %i.mw = load ptr, ptr %i.mv, align 256
  %.not.i.i121.2.i = icmp eq ptr %i.mw, %i.mv
  br i1 %.not.i.i121.2.i, label %bb.bp, label %bb.bo, !prof !21

bb.bo:                                            ; preds = %bb.bn
  tail call void asm sideeffect "669: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 669b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 669) #17, !srcloc !55
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 172, i32 2305, i64 16) #17, !srcloc !56
  tail call void asm sideeffect "670: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 670b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 670) #17, !srcloc !57
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.not8.i.i122.2.i = icmp eq i64 %i.mu, 0
  br i1 %.not8.i.i122.2.i, label %mas_topiary_node.exit123.2.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mx = getelementptr i8, ptr %i.mv, i64 8
  tail call void @kvfree_call_rcu(ptr noundef %i.mx, ptr noundef nonnull %i.mv) #16
  br label %mas_topiary_node.exit123.2.i

mas_topiary_node.exit123.2.i:                     ; preds = %bb.bq, %bb.bp, %mas_topiary_node.exit123.1.i
  %.not2.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not2.i.i, label %mas_topiary_replace.exit, label %.lr.ph.i124.i

.lr.ph.i124.i:                                    ; preds = %mas_topiary_node.exit123.2.i
  %.val72.i = load ptr, ptr %0, align 8
  %i.my = getelementptr i8, ptr %.val72.i, i64 4
  %.val72.val.i = load i32, ptr %i.my, align 4
  %.0.val.4.val.fr.i.i = freeze i32 %.val72.val.i
  %i.mz = and i32 %.0.val.4.val.fr.i.i, 2
  %.not1.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not1.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i124.i, %.lr.ph.split.us.i.i
  %i.na = phi ptr [ %i.nf, %.lr.ph.split.us.i.i ], [ %.sroa.0.4.i, %.lr.ph.i124.i ] ; 2 uses
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = and i64 %i.nb, -256
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8            ; 2 uses
  tail call fastcc void @mt_destroy_walk(ptr noundef nonnull %i.na, i1 noundef zeroext true) #19
  %.not.us.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.us.i.i, label %mas_topiary_replace.exit, label %.lr.ph.split.us.i.i, !llvm.loop !266

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i124.i, %.lr.ph.split.i.i
  %i.ng = phi ptr [ %i.nl, %.lr.ph.split.i.i ], [ %.sroa.0.4.i, %.lr.ph.i124.i ] ; 2 uses
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = and i64 %i.nh, -256
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = getelementptr i8, ptr %i.nj, i64 8      ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 2 uses
  tail call fastcc void @mt_destroy_walk(ptr noundef nonnull %i.ng, i1 noundef zeroext false) #19
  tail call void @call_rcu(ptr noundef %i.nk, ptr noundef @mt_free_walk) #16
  %.not.i125.i = icmp eq ptr %i.nl, null
  br i1 %.not.i125.i, label %mas_topiary_replace.exit, label %.lr.ph.split.i.i, !llvm.loop !266

mas_topiary_replace.exit:                         ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %bb.x, %bb.y, %mas_topiary_node.exit123.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.nm = load ptr, ptr %i.a, align 8
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = and i64 %i.nn, 112
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %mas_topiary_replace.exit
  tail call fastcc void @mas_update_gap(ptr noundef %0) #19, !srcloc !277
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %mas_topiary_replace.exit
  %i.nq = tail call fastcc ptr @mtree_range_walk(ptr noundef %0) #19, !srcloc !278 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @node_copy(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7) unnamed_addr #4 align 16 {
bb.a:
  switch i32 %7, label %ma_slots.exit [
    i32 3, label %ma_slots.exit.thread75
    i32 2, label %bb.b
    i32 1, label %bb.b
    i32 4, label %ma_slots.exit.thread77
    i32 0, label %ma_slots.exit.thread
  ]

ma_slots.exit.thread75:                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %5, i64 80
  %i.b = zext i8 %6 to i64                        ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr i8, ptr %5, i64 8
  br label %ma_pivots.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr i8, ptr %5, i64 128
  br label %ma_slots.exit

ma_slots.exit.thread77:                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %5, i64 168
  %i.g = zext i8 %6 to i64                        ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %5, i64 224
  br label %ma_pivots.exit

ma_slots.exit.thread:                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %5, i64 8
  %i.k = zext i8 %6 to i64                        ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  br label %ma_pivots.exit

ma_slots.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  %i.m = zext i8 %6 to i64                        ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %.0.i, i64 %i.m
  %.off = add i32 %7, -1
  %switch = icmp ult i32 %.off, 2
  %i.o = getelementptr i8, ptr %5, i64 8
  %spec.select = select i1 %switch, ptr %i.o, ptr null
  br label %ma_pivots.exit

ma_pivots.exit:                                   ; preds = %ma_slots.exit, %ma_slots.exit.thread, %ma_slots.exit.thread75, %ma_slots.exit.thread77
  %i.p = phi ptr [ %i.h, %ma_slots.exit.thread77 ], [ %i.c, %ma_slots.exit.thread75 ], [ %i.l, %ma_slots.exit.thread ], [ %i.n, %ma_slots.exit ] ; 7 uses
  %i.q = phi i64 [ %i.g, %ma_slots.exit.thread77 ], [ %i.b, %ma_slots.exit.thread75 ], [ %i.k, %ma_slots.exit.thread ], [ %i.m, %ma_slots.exit ] ; 2 uses
  %.0.i65 = phi ptr [ %i.i, %ma_slots.exit.thread77 ], [ %i.d, %ma_slots.exit.thread75 ], [ null, %ma_slots.exit.thread ], [ %spec.select, %ma_slots.exit ]
  %i.r = zext i8 %6 to i32
  %i.s = getelementptr [8 x i8], ptr %.0.i65, i64 %i.q ; 2 uses
  switch i32 %4, label %ma_slots.exit67 [
    i32 3, label %ma_slots.exit67.thread80
    i32 2, label %bb.c
    i32 1, label %bb.c
    i32 4, label %ma_slots.exit67.thread82
    i32 0, label %ma_slots.exit67.thread
  ]

ma_slots.exit67.thread80:                         ; preds = %ma_pivots.exit
  %i.t = getelementptr i8, ptr %0, i64 80
  %i.u = zext i8 %1 to i64                        ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %0, i64 8
  br label %ma_pivots.exit69

bb.c:                                             ; preds = %ma_pivots.exit, %ma_pivots.exit
  %i.x = getelementptr i8, ptr %0, i64 128
  br label %ma_slots.exit67

ma_slots.exit67.thread82:                         ; preds = %ma_pivots.exit
  %i.y = getelementptr i8, ptr %0, i64 168
  %i.z = zext i8 %1 to i64                        ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %0, i64 224
  br label %ma_pivots.exit69

ma_slots.exit67.thread:                           ; preds = %ma_pivots.exit
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = zext i8 %1 to i64                       ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad
  br label %ma_pivots.exit69

ma_slots.exit67:                                  ; preds = %ma_pivots.exit, %bb.c
  %.0.i66 = phi ptr [ null, %ma_pivots.exit ], [ %i.x, %bb.c ]
  %i.af = zext i8 %1 to i64                       ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %.0.i66, i64 %i.af
  %.off86 = add i32 %4, -1
  %switch87 = icmp ult i32 %.off86, 2
  %i.ah = getelementptr i8, ptr %0, i64 8
  %spec.select88 = select i1 %switch87, ptr %i.ah, ptr null
  br label %ma_pivots.exit69

ma_pivots.exit69:                                 ; preds = %ma_slots.exit67, %ma_slots.exit67.thread, %ma_slots.exit67.thread80, %ma_slots.exit67.thread82
  %i.ai = phi ptr [ %i.aa, %ma_slots.exit67.thread82 ], [ %i.v, %ma_slots.exit67.thread80 ], [ %i.ae, %ma_slots.exit67.thread ], [ %i.ag, %ma_slots.exit67 ]
  %i.aj = phi i64 [ %i.z, %ma_slots.exit67.thread82 ], [ %i.u, %ma_slots.exit67.thread80 ], [ %i.ad, %ma_slots.exit67.thread ], [ %i.af, %ma_slots.exit67 ] ; 2 uses
  %.0.i68 = phi ptr [ %i.ab, %ma_slots.exit67.thread82 ], [ %i.w, %ma_slots.exit67.thread80 ], [ null, %ma_slots.exit67.thread ], [ %spec.select88, %ma_slots.exit67 ]
  %i.ak = zext i8 %1 to i32
  %i.al = getelementptr [8 x i8], ptr %.0.i68, i64 %i.aj ; 2 uses
  %i.am = zext i8 %2 to i64                       ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.ai, i64 %i.an, i1 false)
  %i.ao = icmp ult i32 %7, 2
  %i.ap = icmp ne i32 %4, 4
  %or.cond.not = or i1 %i.ap, %i.ao
  %.not90 = icmp eq i8 %2, 0
  %or.cond = or i1 %or.cond.not, %.not90
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %ma_pivots.exit69
  %i.aq = shl i32 %7, 3
  %i.ar = zext i32 %i.aq to i64
  %i.as = ptrtoint ptr %5 to i64
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = lshr i32 %i.au, 3
  %i.aw = and i32 %i.av, 15
  %i.ax = and i64 %i.at, -256                     ; 4 uses
  switch i32 %i.aw, label %mas_set_parent.exit.preheader [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %.lr.ph.split.split.us
    i32 3, label %.lr.ph.split.split.us
  ], !prof !280

mas_set_parent.exit.preheader:                    ; preds = %.lr.ph
  %wide.trip.count98 = zext i8 %2 to i64          ; 2 uses
  %xtraiter4 = and i64 %wide.trip.count98, 1
  %i.ay = icmp eq i8 %2, 1
  br i1 %i.ay, label %mas_set_parent.exit.epil.preheader, label %mas_set_parent.exit.preheader.new

mas_set_parent.exit.preheader.new:                ; preds = %mas_set_parent.exit.preheader
  %unroll_iter7 = and i64 %wide.trip.count98, 254
  br label %mas_set_parent.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %.lr.ph
  %wide.trip.count = zext i8 %2 to i64            ; 2 uses
  %invariant.op = or disjoint i64 %i.ax, 6        ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.az = icmp eq i8 %2, 1
  br i1 %i.az, label %mas_set_parent.exit.us.epil.preheader, label %.lr.ph.split.split.us.new

.lr.ph.split.split.us.new:                        ; preds = %.lr.ph.split.split.us
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %mas_set_parent.exit.us

mas_set_parent.exit.us:                           ; preds = %mas_set_parent.exit.us, %.lr.ph.split.split.us.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.us.new ], [ %indvars.iv.next.1, %mas_set_parent.exit.us ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.new ], [ %niter.next.1, %mas_set_parent.exit.us ]
  %i.ba = trunc i64 %indvars.iv to i8
  %i.bb = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = add i8 %6, %i.ba
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %.reass = or i64 %i.bf, %invariant.op
  %i.bg = inttoptr i64 %.reass to ptr
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = and i64 %i.bh, -256
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bg, ptr %i.bj, align 256
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bk = trunc i64 %indvars.iv.next to i8
  %i.bl = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = add i8 %6, %i.bk
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %.reass.1 = or i64 %i.bp, %invariant.op
  %i.bq = inttoptr i64 %.reass.1 to ptr
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = and i64 %i.br, -256
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bq, ptr %i.bt, align 256
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit2.unr-lcssa, label %mas_set_parent.exit.us, !llvm.loop !279

mas_set_parent.exit:                              ; preds = %mas_set_parent.exit, %mas_set_parent.exit.preheader.new
  %indvars.iv94 = phi i64 [ 0, %mas_set_parent.exit.preheader.new ], [ %indvars.iv.next95.1, %mas_set_parent.exit ] ; 4 uses
  %niter8 = phi i64 [ 0, %mas_set_parent.exit.preheader.new ], [ %niter8.next.1, %mas_set_parent.exit ]
  %i.bu = trunc i64 %indvars.iv94 to i8
  %i.bv = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv94
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = add i8 %6, %i.bu
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.ax, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = and i64 %i.cb, -256
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.ca, ptr %i.cd, align 256
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.ce = trunc i64 %indvars.iv.next95 to i8
  %i.cf = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.next95
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = add i8 %6, %i.ce
  %i.ci = zext i8 %i.ch to i64
  %i.cj = or disjoint i64 %i.ax, %i.ci
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = and i64 %i.cl, -256
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr %i.ck, ptr %i.cn, align 256
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter8.next.1 = add i64 %niter8, 2             ; 2 uses
  %niter8.ncmp.1 = icmp eq i64 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %mas_set_parent.exit, !llvm.loop !279

bb.d:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "676: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 676b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 676) #17, !srcloc !74
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 477, i32 0, i64 16) #17, !srcloc !75
  unreachable

bb.e:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "677: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 677b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 677) #17, !srcloc !76
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 478, i32 0, i64 16) #17, !srcloc !77
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %mas_set_parent.exit
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.loopexit, label %mas_set_parent.exit.epil.preheader

mas_set_parent.exit.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %mas_set_parent.exit.preheader
  %indvars.iv94.epil.init = phi i64 [ 0, %mas_set_parent.exit.preheader ], [ %indvars.iv.next95.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i8 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.co = trunc i64 %indvars.iv94.epil.init to i8
  %i.cp = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv94.epil.init
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = add i8 %6, %i.co
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.ax, %i.cs
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = ptrtoint ptr %i.cq to i64
  %i.cw = and i64 %i.cv, -256
  %i.cx = inttoptr i64 %i.cw to ptr
  store ptr %i.cu, ptr %i.cx, align 256
  br label %.loopexit

.loopexit.loopexit2.unr-lcssa:                    ; preds = %mas_set_parent.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %mas_set_parent.exit.us.epil.preheader

mas_set_parent.exit.us.epil.preheader:            ; preds = %.loopexit.loopexit2.unr-lcssa, %.lr.ph.split.split.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.us ], [ %indvars.iv.next.1, %.loopexit.loopexit2.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i8 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.cy = trunc i64 %indvars.iv.epil.init to i8
  %i.cz = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = add i8 %6, %i.cy
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %.reass.epil = or i64 %i.dd, %invariant.op
  %i.de = inttoptr i64 %.reass.epil to ptr
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = and i64 %i.df, -256
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.de, ptr %i.dh, align 256
  br label %.loopexit

.loopexit:                                        ; preds = %mas_set_parent.exit.us.epil.preheader, %.loopexit.loopexit2.unr-lcssa, %mas_set_parent.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %ma_pivots.exit69
  switch i32 %7, label %ma_gaps.exit.thread [
    i32 3, label %ma_gaps.exit
    i32 4, label %bb.f
  ]

bb.f:                                             ; preds = %.loopexit
  br label %ma_gaps.exit

ma_gaps.exit:                                     ; preds = %.loopexit, %bb.f
  %.sink = phi i64 [ 192, %bb.f ], [ 160, %.loopexit ]
  %i.di = getelementptr i8, ptr %5, i64 %.sink    ; 2 uses
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %ma_gaps.exit.thread, label %bb.g

bb.g:                                             ; preds = %ma_gaps.exit
  switch i32 %4, label %ma_gaps.exit73 [
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr i8, ptr %0, i64 160
  br label %ma_gaps.exit73

bb.i:                                             ; preds = %bb.g
  %i.dk = getelementptr i8, ptr %0, i64 192
  br label %ma_gaps.exit73

ma_gaps.exit73:                                   ; preds = %bb.g, %bb.h, %bb.i
  %.0.i72 = phi ptr [ %i.dk, %bb.i ], [ %i.dj, %bb.h ], [ null, %bb.g ]
  %i.dl = getelementptr [8 x i8], ptr %.0.i72, i64 %i.aj
  %i.dm = getelementptr [8 x i8], ptr %i.di, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %i.dl, i64 %i.an, i1 false)
  br label %ma_gaps.exit.thread

ma_gaps.exit.thread:                              ; preds = %.loopexit, %ma_gaps.exit73, %ma_gaps.exit
  %i.dn = zext i8 %2 to i32                       ; 2 uses
  %i.do = add nuw nsw i32 %i.dn, %i.ak
  %i.dp = zext i32 %4 to i64
  %i.dq = getelementptr i8, ptr @mt_pivots, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %.not62 = icmp samesign ugt i32 %i.do, %i.ds
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ma_gaps.exit.thread
  %i.dt = getelementptr [8 x i8], ptr %i.al, i64 %i.am
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  %i.dv = load i64, ptr %i.du, align 8
  br label %bb.k

bb.k:                                             ; preds = %ma_gaps.exit.thread, %bb.j
  %.058 = phi i64 [ %i.dv, %bb.j ], [ %3, %ma_gaps.exit.thread ] ; 2 uses
  %i.dw = add nuw nsw i32 %i.r, %i.dn
  %i.dx = zext i32 %7 to i64
  %i.dy = getelementptr i8, ptr @mt_pivots, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i32
  %.not63 = icmp samesign ugt i32 %i.dw, %i.ea
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr [8 x i8], ptr %i.s, i64 %i.am
  %i.ec = getelementptr i8, ptr %i.eb, i64 -8
  store i64 %.058, ptr %i.ec, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ed = add i8 %2, -1                           ; 2 uses
  %.not64 = icmp eq i8 %i.ed, 0
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = zext i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.al, i64 %i.ef, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret i64 %.058
}

; Function Attrs: fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none)
define internal fastcc void @cp_dst_to_slots(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 250        ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %.not65 = icmp eq i8 %i.b, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 168
  %i.d = getelementptr i8, ptr %0, i64 224
  %i.e = getelementptr i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ma_gaps.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ma_gaps.exit.thread ] ; 5 uses
  %.04363 = phi i64 [ %1, %.lr.ph ], [ %i.ev, %ma_gaps.exit.thread ] ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 37 uses
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = shl i32 %i.i, 3
  %i.o = zext i32 %i.n to i64
  %i.p = or i64 %i.m, %i.o
  %i.q = or i64 %i.p, 4
  %i.r = inttoptr i64 %i.q to ptr
  store volatile ptr %i.r, ptr %i.l, align 8
  %i.s = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.k, ptr %i.s, align 8
  %i.t = load ptr, ptr %3, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %bb.c, label %ma_gaps.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ult i32 %i.i, 2
  br i1 %i.x, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %cond = icmp eq i32 %i.i, 1
  %i.y = getelementptr i8, ptr %i.g, i64 8        ; 5 uses
  br i1 %cond, label %bb.e, label %ma_slots.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.g, i64 128      ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !21

ma_slots.exit:                                    ; preds = %bb.d
  %i.ab = load ptr, ptr %i.y, align 8
  %.not62.i = icmp eq ptr %i.ab, null             ; 2 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not62.i.1 = icmp ne ptr %i.ad, null           ; 2 uses
  %i.ae = select i1 %.not62.i, i64 2, i64 1
  %.154.i.1 = select i1 %.not62.i.1, i64 0, i64 %i.ae ; 2 uses
  %narrow = select i1 %.not62.i.1, i1 %.not62.i, i1 false
  %.251.i.1 = zext i1 %narrow to i64              ; 2 uses
  %i.af = getelementptr i8, ptr %i.g, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %.not62.i.2 = icmp eq ptr %i.ag, null           ; 2 uses
  %spec.select.i.2 = tail call i64 @llvm.umax.i64(i64 %.154.i.1, i64 %.251.i.1)
  %i.ah = add nuw nsw i64 %.154.i.1, 1
  %.154.i.2 = select i1 %.not62.i.2, i64 %i.ah, i64 0 ; 2 uses
  %.251.i.2 = select i1 %.not62.i.2, i64 %.251.i.1, i64 %spec.select.i.2 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.g, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not62.i.3 = icmp eq ptr %i.aj, null           ; 2 uses
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %.154.i.2, i64 %.251.i.2)
  %i.ak = add nuw nsw i64 %.154.i.2, 1
  %.154.i.3 = select i1 %.not62.i.3, i64 %i.ak, i64 0 ; 2 uses
  %.251.i.3 = select i1 %.not62.i.3, i64 %.251.i.2, i64 %spec.select.i.3 ; 2 uses
  %i.al = getelementptr i8, ptr %i.g, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %.not62.i.4 = icmp eq ptr %i.am, null           ; 2 uses
  %spec.select.i.4 = tail call i64 @llvm.umax.i64(i64 %.154.i.3, i64 %.251.i.3)
  %i.an = add nuw nsw i64 %.154.i.3, 1
  %.154.i.4 = select i1 %.not62.i.4, i64 %i.an, i64 0 ; 2 uses
  %.251.i.4 = select i1 %.not62.i.4, i64 %.251.i.3, i64 %spec.select.i.4 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.g, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not62.i.5 = icmp eq ptr %i.ap, null           ; 2 uses
  %spec.select.i.5 = tail call i64 @llvm.umax.i64(i64 %.154.i.4, i64 %.251.i.4)
  %i.aq = add nuw nsw i64 %.154.i.4, 1
  %.154.i.5 = select i1 %.not62.i.5, i64 %i.aq, i64 0 ; 2 uses
  %.251.i.5 = select i1 %.not62.i.5, i64 %.251.i.4, i64 %spec.select.i.5 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.g, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %.not62.i.6 = icmp eq ptr %i.as, null           ; 2 uses
  %spec.select.i.6 = tail call i64 @llvm.umax.i64(i64 %.154.i.5, i64 %.251.i.5)
  %i.at = add nuw nsw i64 %.154.i.5, 1
  %.154.i.6 = select i1 %.not62.i.6, i64 %i.at, i64 0 ; 2 uses
  %.251.i.6 = select i1 %.not62.i.6, i64 %.251.i.5, i64 %spec.select.i.6 ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  %.not62.i.7 = icmp eq ptr %i.av, null           ; 2 uses
  %spec.select.i.7 = tail call i64 @llvm.umax.i64(i64 %.154.i.6, i64 %.251.i.6)
  %i.aw = add nuw nsw i64 %.154.i.6, 1
  %.154.i.7 = select i1 %.not62.i.7, i64 %i.aw, i64 0 ; 2 uses
  %.251.i.7 = select i1 %.not62.i.7, i64 %.251.i.6, i64 %spec.select.i.7 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.g, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not62.i.8 = icmp eq ptr %i.ay, null           ; 2 uses
  %spec.select.i.8 = tail call i64 @llvm.umax.i64(i64 %.154.i.7, i64 %.251.i.7)
end_hunk_0

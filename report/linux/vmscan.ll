Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmscan?download=true
inline.NumInlined: 1147
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@shrink_node:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i = phi i64 [ %i.cw, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.cx = load volatile i64, ptr %i.t, align 16
  %.not64.1.i = icmp eq i64 %i.cx, 0
  br i1 %.not64.1.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.val.1.i = load i64, ptr %i.u, align 16
  %.0.val60.1.i = load i64, ptr %i.v, align 32
  %i.cy = add i64 %.0.val.1.i, %.1.i
  %i.cz = add i64 %i.cy, %.0.val60.1.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.1.i = phi i64 [ %i.cz, %bb.q ], [ %.1.i, %bb.p ] ; 2 uses
  %i.da = load volatile i64, ptr %i.w, align 16
  %.not64.2.i = icmp eq i64 %i.da, 0
  br i1 %.not64.2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.0.val.2.i = load i64, ptr %i.x, align 16
  %.0.val60.2.i = load i64, ptr %i.y, align 32
  %i.db = add i64 %.0.val.2.i, %.1.1.i
  %i.dc = add i64 %i.db, %.0.val60.2.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.2.i = phi i64 [ %i.dc, %bb.s ], [ %.1.1.i, %bb.r ] ; 2 uses
  %i.dd = load volatile i64, ptr %i.z, align 16
  %.not64.3.i = icmp eq i64 %i.dd, 0
  br i1 %.not64.3.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0.val.3.i = load i64, ptr %i.aa, align 16
  %.0.val60.3.i = load i64, ptr %i.ab, align 32
  %i.de = add i64 %.0.val.3.i, %.1.2.i
  %i.df = add i64 %i.de, %.0.val60.3.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.3.i = phi i64 [ %i.df, %bb.u ], [ %.1.2.i, %bb.t ]
  %i.dg = call i64 @node_page_state(ptr noundef %0, i32 noundef 0) #14
  %i.dh = add i64 %i.ct, %i.cs
  %i.di = add i64 %i.dh, %i.cu
  %.not58.i = icmp ugt i64 %i.di, %.1.3.i
  br i1 %.not58.i, label %prepare_scan_control.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = load i16, ptr %i.l, align 8
  %i.dk = and i16 %i.dj, 1
  %.not59.i = icmp eq i16 %i.dk, 0
  br i1 %.not59.i, label %bb.x, label %prepare_scan_control.exit

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %i.o, align 4
  %i.dm = sext i8 %i.dl to i64
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = lshr i64 %i.dg, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i8
  br label %prepare_scan_control.exit

prepare_scan_control.exit:                        ; preds = %bb.v, %bb.w, %bb.x
  %i.dr = phi i8 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.dq, %bb.x ]
  %i.ds = load i8, ptr %i.ac, align 2
  %i.dt = and i8 %i.ds, -2
  %i.du = or disjoint i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.ac, align 2
  %i.dv = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !62
  %i.dw = inttoptr i64 %i.dv to ptr               ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 44     ; 10 uses
  %i.dy = call i32 @__SCT__cond_resched() #14     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dz = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !annotation !35
  %i.ea = load volatile i32, ptr @vm_swappiness, align 4 ; 4 uses
  %i.eb = load i16, ptr %i.l, align 8
  %i.ec = and i16 %i.eb, 64
  %.not.i.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not.i.i.i, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %prepare_scan_control.exit
  %i.ed = load i32, ptr %i.p, align 64
  %i.ee = load volatile i64, ptr @nr_swap_pages, align 8
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %can_reclaim_anon_pages.exit.thread.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.y
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr [8 x i8], ptr @node_data, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ej = icmp ne ptr %i.ei, null
  %i.ek = load i8, ptr @numa_demotion_enabled, align 1, !range !60
  %i.el = trunc nuw i8 %i.ek to i1
  %or.cond.i.i.i.i.i = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.z, label %can_reclaim_anon_pages.exit.thread74.i.i.i

bb.z:                                             ; preds = %.split.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %can_reclaim_anon_pages.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = load i8, ptr %i.ac, align 2
  %i.en = and i8 %i.em, 2
  %.not9.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not9.i.i.i.i.i, label %can_reclaim_anon_pages.exit.i.i.i, label %can_reclaim_anon_pages.exit.thread74.i.i.i

can_reclaim_anon_pages.exit.thread74.i.i.i:       ; preds = %bb.aa, %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ai

can_reclaim_anon_pages.exit.i.i.i:                ; preds = %bb.aa, %bb.z
  store i64 0, ptr %6, align 8, !annotation !35
  call void @node_get_allowed_targets(ptr noundef nonnull %i.ei, ptr noundef nonnull %6) #14
  %i.eo = load i64, ptr %6, align 8
  %.not.i.i.i.not.i.i.i = icmp eq i64 %i.eo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %.not.i.i.i.not.i.i.i, label %bb.ai, label %can_reclaim_anon_pages.exit.thread.i.i.i

can_reclaim_anon_pages.exit.thread.i.i.i:         ; preds = %can_reclaim_anon_pages.exit.i.i.i, %bb.y
  %i.ep = icmp eq i32 %i.ea, 201
  br i1 %i.ep, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %can_reclaim_anon_pages.exit.thread.i.i.i
  %i.eq = load i16, ptr %i.l, align 8
  %i.er = and i16 %i.eq, 512
  %.not67.i.i.i = icmp eq i16 %i.er, 0
  br i1 %.not67.i.i.i, label %bb.ac, label %bb.ai, !prof !34

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect "990: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 990b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 990) #15, !srcloc !169
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.50, i32 2524, i32 2307, i64 16) #15, !srcloc !170
  call void asm sideeffect "991: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 991b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 991) #15, !srcloc !171
  br label %bb.ai

bb.ad:                                            ; preds = %can_reclaim_anon_pages.exit.thread.i.i.i
  %i.es = icmp ne i32 %i.ea, 0
  %i.et = load i8, ptr %i.o, align 4
  %i.eu = icmp eq i8 %i.et, 0
  %or.cond3.i.i.i = select i1 %i.eu, i1 %i.es, i1 false
  br i1 %or.cond3.i.i.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load i8, ptr %i.ac, align 2
  %i.ew = and i8 %i.ev, 1
  %.not65.i.i.i = icmp eq i8 %i.ew, 0
  br i1 %.not65.i.i.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ex = load i16, ptr %i.l, align 8
  %.not66.i.i.i = icmp sgt i16 %i.ex, -1
  br i1 %.not66.i.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i = load i64, ptr %i.i, align 8       ; 2 uses
  %.val70.i.i.i = load i64, ptr %i.k, align 8     ; 2 uses
  %i.ey = add i64 %.val70.i.i.i, %.val.i.i.i      ; 2 uses
  %i.ez = add i64 %i.ey, %.val.i.i.i              ; 2 uses
  %i.fa = sext i32 %i.ea to i64
  %i.fb = add i64 %.val70.i.i.i, 1
  %i.fc = add i64 %i.fb, %i.ey                    ; 2 uses
  %i.fd = add i64 %i.fc, %i.ez                    ; 2 uses
  %i.fe = mul i64 %i.fd, %i.fa
  %i.ff = add i64 %i.ez, 1
  %i.fg = udiv i64 %i.fe, %i.ff                   ; 2 uses
  %i.fh = sub i32 200, %i.ea
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul i64 %i.fd, %i.fi
  %i.fk = udiv i64 %i.fj, %i.fc                   ; 3 uses
  %i.fl = add i64 %i.fk, %i.fg                    ; 2 uses
  %i.fm = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not16.i.i.i.i.jt1 = icmp slt i8 %i.fm, 0
  br i1 %.not16.i.i.i.i.jt1, label %.split186.thread, label %.lr.ph.i.preheader.i.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.fn = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not16.i.i.i.i.jt0 = icmp slt i8 %i.fn, 0
  br i1 %.not16.i.i.i.i.jt0, label %.thread, label %.lr.ph.i.preheader.i.i.i

bb.ai:                                            ; preds = %can_reclaim_anon_pages.exit.thread74.i.i.i, %can_reclaim_anon_pages.exit.i.i.i, %bb.ae, %bb.af, %bb.ab, %bb.ac, %prepare_scan_control.exit
  %.not69.i.i.i.jt3 = phi i1 [ false, %prepare_scan_control.exit ], [ true, %bb.ac ], [ true, %bb.ab ], [ false, %can_reclaim_anon_pages.exit.i.i.i ], [ false, %can_reclaim_anon_pages.exit.thread74.i.i.i ], [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %.not69.2.i.i.i.jt3 = phi i1 [ true, %prepare_scan_control.exit ], [ false, %bb.ac ], [ false, %bb.ab ], [ true, %can_reclaim_anon_pages.exit.i.i.i ], [ true, %can_reclaim_anon_pages.exit.thread74.i.i.i ], [ true, %bb.af ], [ false, %bb.ae ] ; 2 uses
  %.0.i.i.i.jt3 = phi i32 [ 3, %prepare_scan_control.exit ], [ 2, %bb.ac ], [ 2, %bb.ab ], [ 3, %can_reclaim_anon_pages.exit.i.i.i ], [ 3, %can_reclaim_anon_pages.exit.thread74.i.i.i ], [ 3, %bb.af ], [ 2, %bb.ae ] ; 2 uses
  %i.fo = load i8, ptr %i.ae, align 1
  %i.fp = freeze i8 %i.fo                         ; 3 uses
  %.not16.i.i.i.i.jt3 = icmp slt i8 %i.fp, 0
  br i1 %.not16.i.i.i.i.jt3, label %.split.thread, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.fq = phi i8 [ %i.fm, %bb.ag ], [ %i.fn, %bb.ah ], [ %i.fp, %bb.ai ]
  %.0.i.i.i154 = phi i32 [ 1, %bb.ag ], [ 0, %bb.ah ], [ %.0.i.i.i.jt3, %bb.ai ] ; 3 uses
  %.not69.2.i.i.i150 = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ %.not69.2.i.i.i.jt3, %bb.ai ] ; 3 uses
  %.not69.i.i.i146 = phi i1 [ true, %bb.ag ], [ true, %bb.ah ], [ %.not69.i.i.i.jt3, %bb.ai ] ; 4 uses
  %.072.i.i.i142 = phi i64 [ %i.fl, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 4 uses
  %.sroa.5.0.i.i.i138 = phi i64 [ %i.fk, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 3 uses
  %.sroa.0.0.i.i.i134 = phi i64 [ %i.fg, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 4 uses
  %.fr396 = freeze i8 %i.fq                       ; 6 uses
  %i.fr = zext nneg i8 %.fr396 to i32             ; 4 uses
  %8 = add nuw nsw i32 %i.fr, 1                   ; 2 uses
  %i.fs = icmp eq i8 %.fr396, 0
  br i1 %i.fs, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter = and i32 %8, 254
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %.lr.ph.i.preheader.i.i.i.new
  %.019.i.i.i.i = phi ptr [ %0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.gd, %bb.al ] ; 5 uses
  %.01417.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %.1.i.i.i.i.1, %bb.al ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter.next.1, %bb.al ]
  %i.ft = getelementptr i8, ptr %.019.i.i.i.i, i64 144
  %i.fu = load volatile i64, ptr %i.ft, align 8
  %.not15.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not15.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fv = getelementptr i8, ptr %.019.i.i.i.i, i64 1104
  %i.fw = load volatile i64, ptr %i.fv, align 8
  %spec.store.select.i.i.i.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.fw, i64 0)
  %i.fx = add i64 %spec.store.select.i.i.i.i.i, %.01417.i.i.i.i
  br label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.aj, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.fx, %bb.aj ], [ %.01417.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.fy = getelementptr i8, ptr %.019.i.i.i.i, i64 1488
  %i.fz = load volatile i64, ptr %i.fy, align 8
  %.not15.i.i.i.i.1 = icmp eq i64 %i.fz, 0
  br i1 %.not15.i.i.i.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.1
  %i.ga = getelementptr i8, ptr %.019.i.i.i.i, i64 2448
  %i.gb = load volatile i64, ptr %i.ga, align 8
  %spec.store.select.i.i.i.i.i.1 = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.gb, i64 0)
  %i.gc = add i64 %spec.store.select.i.i.i.i.i.1, %.1.i.i.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.1
  %.1.i.i.i.i.1 = phi i64 [ %i.gc, %bb.ak ], [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.1 ] ; 3 uses
  %i.gd = getelementptr i8, ptr %.019.i.i.i.i, i64 2688 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %lruvec_lru_size.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !61

lruvec_lru_size.exit.i.i.i.unr-lcssa:             ; preds = %bb.al
  %9 = and i32 %i.fr, 1
  %lcmp.mod.not.not = icmp eq i32 %9, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.epil.preheader, label %lruvec_lru_size.exit.i.i.i

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %lruvec_lru_size.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.019.i.i.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader.i.i.i ], [ %i.gd, %lruvec_lru_size.exit.i.i.i.unr-lcssa ] ; 2 uses
  %.01417.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %.1.i.i.i.i.1, %lruvec_lru_size.exit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod377 = trunc i32 %8 to i1
  call void @llvm.assume(i1 %lcmp.mod377)
  %i.ge = getelementptr i8, ptr %.019.i.i.i.i.epil.init, i64 144
  %i.gf = load volatile i64, ptr %i.ge, align 8
  %.not15.i.i.i.i.epil = icmp eq i64 %i.gf, 0
  br i1 %.not15.i.i.i.i.epil, label %lruvec_lru_size.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.gg = getelementptr i8, ptr %.019.i.i.i.i.epil.init, i64 1104
  %i.gh = load volatile i64, ptr %i.gg, align 8
  %spec.store.select.i.i.i.i.i.epil = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.gh, i64 0)
  %i.gi = add i64 %spec.store.select.i.i.i.i.i.epil, %.01417.i.i.i.i.epil.init
  br label %lruvec_lru_size.exit.i.i.i

lruvec_lru_size.exit.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.epil.preheader, %bb.am, %lruvec_lru_size.exit.i.i.i.unr-lcssa
  %.1.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.1, %lruvec_lru_size.exit.i.i.i.unr-lcssa ], [ %i.gi, %bb.am ], [ %.01417.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.gj = load i8, ptr %i.o, align 4              ; 4 uses
  %i.gk = sext i8 %i.gj to i64
  %i.gl = and i64 %i.gk, 4294967295               ; 4 uses
  %i.gm = lshr i64 %.1.i.i.i.i.lcssa, %i.gl       ; 3 uses
  switch i32 %.0.i.i.i154, label %default.unreachable [
    i32 0, label %.lr.ph.i.preheader.1.i.i.i
    i32 1, label %.split186
    i32 3, label %.split
    i32 2, label %.split
  ]

.split186.thread:                                 ; preds = %bb.ag
  %i.gn = load i8, ptr %i.o, align 4
  store i64 0, ptr %i.b, align 16
  store i64 0, ptr %i.af, align 8
  br label %.split283.thread

.thread:                                          ; preds = %bb.ah
  %i.go = load i8, ptr %i.o, align 4
  store i64 0, ptr %i.b, align 16
  store i64 0, ptr %i.af, align 8
  br label %.thread273

.split.thread:                                    ; preds = %bb.ai
  %i.gp = load i8, ptr %i.o, align 4              ; 2 uses
  %i.gq = sext i8 %i.gp to i64
  %i.gr = and i64 %i.gq, 4294967295
  store i64 0, ptr %i.b, align 16
  br label %lruvec_lru_size.exit.1.i.i.i

.split186:                                        ; preds = %lruvec_lru_size.exit.i.i.i
  %i.gs = mul i64 %i.gm, %.sroa.0.0.i.i.i134
  %i.gt = udiv i64 %i.gs, %.072.i.i.i142
  br label %.lr.ph.i.preheader.1.i.i.i

.split:                                           ; preds = %lruvec_lru_size.exit.i.i.i, %lruvec_lru_size.exit.i.i.i
  %spec.select.i.i.i = select i1 %.not69.i.i.i146, i64 %i.gm, i64 0
  br label %.lr.ph.i.preheader.1.i.i.i

default.unreachable:                              ; preds = %lruvec_lru_size.exit.3.i.i.i, %lruvec_lru_size.exit.2.i.i.i, %lruvec_lru_size.exit.1.i.i.i, %lruvec_lru_size.exit.i.i.i
  unreachable

.lr.ph.i.preheader.1.i.i.i:                       ; preds = %lruvec_lru_size.exit.i.i.i, %.split186, %.split
  %.sink = phi i64 [ %spec.select.i.i.i, %.split ], [ %i.gt, %.split186 ], [ %i.gm, %lruvec_lru_size.exit.i.i.i ] ; 4 uses
  %.0.i.i.i156180 = phi i32 [ %.0.i.i.i154, %.split ], [ 1, %.split186 ], [ %.0.i.i.i154, %lruvec_lru_size.exit.i.i.i ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 16
  %10 = add nuw nsw i32 %i.fr, 1                  ; 2 uses
  %i.gu = icmp eq i8 %.fr396, 0
  br i1 %i.gu, label %.lr.ph.i.1.i.i.i.epil.preheader, label %.lr.ph.i.preheader.1.i.i.i.new

.lr.ph.i.preheader.1.i.i.i.new:                   ; preds = %.lr.ph.i.preheader.1.i.i.i
  %unroll_iter382 = and i32 %10, 254
  br label %.lr.ph.i.1.i.i.i

.lr.ph.i.1.i.i.i:                                 ; preds = %bb.ap, %.lr.ph.i.preheader.1.i.i.i.new
  %.019.i.1.i.i.i = phi ptr [ %0, %.lr.ph.i.preheader.1.i.i.i.new ], [ %i.hf, %bb.ap ] ; 5 uses
  %.01417.i.1.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.1.i.i.i.new ], [ %.1.i.1.i.i.i.1, %bb.ap ] ; 2 uses
  %niter383 = phi i32 [ 0, %.lr.ph.i.preheader.1.i.i.i.new ], [ %niter383.next.1, %bb.ap ]
  %i.gv = getelementptr i8, ptr %.019.i.1.i.i.i, i64 144
  %i.gw = load volatile i64, ptr %i.gv, align 8
  %.not15.i.1.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not15.i.1.i.i.i, label %.lr.ph.i.1.i.i.i.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.1.i.i.i
  %i.gx = getelementptr i8, ptr %.019.i.1.i.i.i, i64 1112
  %i.gy = load volatile i64, ptr %i.gx, align 8
  %spec.store.select.i.i.1.i.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.gy, i64 0)
  %i.gz = add i64 %spec.store.select.i.i.1.i.i.i, %.01417.i.1.i.i.i
  br label %.lr.ph.i.1.i.i.i.1

.lr.ph.i.1.i.i.i.1:                               ; preds = %bb.an, %.lr.ph.i.1.i.i.i
  %.1.i.1.i.i.i = phi i64 [ %i.gz, %bb.an ], [ %.01417.i.1.i.i.i, %.lr.ph.i.1.i.i.i ] ; 2 uses
  %i.ha = getelementptr i8, ptr %.019.i.1.i.i.i, i64 1488
  %i.hb = load volatile i64, ptr %i.ha, align 8
  %.not15.i.1.i.i.i.1 = icmp eq i64 %i.hb, 0
  br i1 %.not15.i.1.i.i.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.1.i.i.i.1
  %i.hc = getelementptr i8, ptr %.019.i.1.i.i.i, i64 2456
  %i.hd = load volatile i64, ptr %i.hc, align 8
  %spec.store.select.i.i.1.i.i.i.1 = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.hd, i64 0)
  %i.he = add i64 %spec.store.select.i.i.1.i.i.i.1, %.1.i.1.i.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.1.i.i.i.1
  %.1.i.1.i.i.i.1 = phi i64 [ %i.he, %bb.ao ], [ %.1.i.1.i.i.i, %.lr.ph.i.1.i.i.i.1 ] ; 3 uses
  %i.hf = getelementptr i8, ptr %.019.i.1.i.i.i, i64 2688 ; 2 uses
  %niter383.next.1 = add i32 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i32 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.1.i.i.i, !llvm.loop !61

lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa:  ; preds = %bb.ap
  %11 = and i32 %i.fr, 1
  %lcmp.mod379.not.not = icmp eq i32 %11, 0
  br i1 %lcmp.mod379.not.not, label %.lr.ph.i.1.i.i.i.epil.preheader, label %lruvec_lru_size.exit.1.i.i.i

.lr.ph.i.1.i.i.i.epil.preheader:                  ; preds = %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.1.i.i.i
  %.019.i.1.i.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader.1.i.i.i ], [ %i.hf, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.01417.i.1.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.1.i.i.i ], [ %.1.i.1.i.i.i.1, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod381 = trunc i32 %10 to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.hg = getelementptr i8, ptr %.019.i.1.i.i.i.epil.init, i64 144
  %i.hh = load volatile i64, ptr %i.hg, align 8
  %.not15.i.1.i.i.i.epil = icmp eq i64 %i.hh, 0
  br i1 %.not15.i.1.i.i.i.epil, label %lruvec_lru_size.exit.1.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.1.i.i.i.epil.preheader
  %i.hi = getelementptr i8, ptr %.019.i.1.i.i.i.epil.init, i64 1112
  %i.hj = load volatile i64, ptr %i.hi, align 8
  %spec.store.select.i.i.1.i.i.i.epil = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.hj, i64 0)
  %i.hk = add i64 %spec.store.select.i.i.1.i.i.i.epil, %.01417.i.1.i.i.i.epil.init
  br label %lruvec_lru_size.exit.1.i.i.i

lruvec_lru_size.exit.1.i.i.i:                     ; preds = %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa, %bb.aq, %.lr.ph.i.1.i.i.i.epil.preheader, %.split.thread
  %i.hl = phi i64 [ 0, %.split.thread ], [ %.sink, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.sink, %bb.aq ], [ %.sink, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 7 uses
  %.sroa.0.0.i.i.i136175 = phi i64 [ 0, %.split.thread ], [ %.sroa.0.0.i.i.i134, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.sroa.0.0.i.i.i134, %bb.aq ], [ %.sroa.0.0.i.i.i134, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.i140174 = phi i64 [ 0, %.split.thread ], [ %.sroa.5.0.i.i.i138, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.sroa.5.0.i.i.i138, %bb.aq ], [ %.sroa.5.0.i.i.i138, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.072.i.i.i144173 = phi i64 [ 0, %.split.thread ], [ %.072.i.i.i142, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.072.i.i.i142, %bb.aq ], [ %.072.i.i.i142, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.not69.i.i.i148172 = phi i1 [ %.not69.i.i.i.jt3, %.split.thread ], [ %.not69.i.i.i146, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.not69.i.i.i146, %bb.aq ], [ %.not69.i.i.i146, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ]
  %.not69.2.i.i.i152171 = phi i1 [ %.not69.2.i.i.i.jt3, %.split.thread ], [ %.not69.2.i.i.i150, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.not69.2.i.i.i150, %bb.aq ], [ %.not69.2.i.i.i150, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0.i.i.i156170 = phi i32 [ %.0.i.i.i.jt3, %.split.thread ], [ %.0.i.i.i156180, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.0.i.i.i156180, %bb.aq ], [ %.0.i.i.i156180, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.fr397 = phi i8 [ %i.fp, %.split.thread ], [ %.fr396, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %.fr396, %bb.aq ], [ %.fr396, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.not16.i.i.i.i160169 = phi i1 [ true, %.split.thread ], [ false, %.lr.ph.i.1.i.i.i.epil.preheader ], [ false, %bb.aq ], [ false, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.hm = phi i8 [ %i.gp, %.split.thread ], [ %i.gj, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %i.gj, %bb.aq ], [ %i.gj, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 7 uses
  %i.hn = phi i64 [ %i.gr, %.split.thread ], [ %i.gl, %.lr.ph.i.1.i.i.i.epil.preheader ], [ %i.gl, %bb.aq ], [ %i.gl, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.014.lcssa.i.1.i.i.i = phi i64 [ 0, %.split.thread ], [ %.1.i.1.i.i.i.1, %lruvec_lru_size.exit.1.i.i.i.loopexit.unr-lcssa ], [ %i.hk, %bb.aq ], [ %.01417.i.1.i.i.i.epil.init, %.lr.ph.i.1.i.i.i.epil.preheader ]
  %i.ho = lshr i64 %.014.lcssa.i.1.i.i.i, %i.hn   ; 3 uses
  switch i32 %.0.i.i.i156170, label %default.unreachable [
    i32 0, label %bb.ar
    i32 1, label %.split233
    i32 3, label %.split242
    i32 2, label %.split242
  ]

.split242:                                        ; preds = %lruvec_lru_size.exit.1.i.i.i, %lruvec_lru_size.exit.1.i.i.i
  %spec.select.1.i.i.i = select i1 %.not69.i.i.i148172, i64 %i.ho, i64 0
  store i64 %spec.select.1.i.i.i, ptr %i.af, align 8
  br i1 %.not16.i.i.i.i160169, label %lruvec_lru_size.exit.2.i.i.i, label %.lr.ph.i.preheader.2.i.i.i

.split233:                                        ; preds = %lruvec_lru_size.exit.1.i.i.i
  %i.hp = mul i64 %i.ho, %.sroa.0.0.i.i.i136175
  %i.hq = udiv i64 %i.hp, %.072.i.i.i144173
  store i64 %i.hq, ptr %i.af, align 8
  br i1 %.not16.i.i.i.i160169, label %.split283.thread, label %.lr.ph.i.preheader.2.i.i.i

bb.ar:                                            ; preds = %lruvec_lru_size.exit.1.i.i.i
  store i64 %i.ho, ptr %i.af, align 8
  br i1 %.not16.i.i.i.i160169, label %.thread273, label %.lr.ph.i.preheader.2.i.i.i

.lr.ph.i.preheader.2.i.i.i:                       ; preds = %.split242, %.split233, %bb.ar
  %.0.i.i.i156170204238 = phi i32 [ 1, %.split233 ], [ 0, %bb.ar ], [ %.0.i.i.i156170, %.split242 ] ; 3 uses
  %i.hr = zext i8 %.fr397 to i32                  ; 2 uses
  %i.hs = add nuw nsw i32 %i.hr, 1                ; 2 uses
  %i.ht = icmp eq i8 %.fr397, 0
  br i1 %i.ht, label %.lr.ph.i.2.i.i.i.epil.preheader, label %.lr.ph.i.preheader.2.i.i.i.new

.lr.ph.i.preheader.2.i.i.i.new:                   ; preds = %.lr.ph.i.preheader.2.i.i.i
  %unroll_iter388 = and i32 %i.hs, 510
  br label %.lr.ph.i.2.i.i.i

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.au, %.lr.ph.i.preheader.2.i.i.i.new
  %.019.i.2.i.i.i = phi ptr [ %0, %.lr.ph.i.preheader.2.i.i.i.new ], [ %i.ie, %bb.au ] ; 5 uses
  %.01417.i.2.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.2.i.i.i.new ], [ %.1.i.2.i.i.i.1, %bb.au ] ; 2 uses
  %niter389 = phi i32 [ 0, %.lr.ph.i.preheader.2.i.i.i.new ], [ %niter389.next.1, %bb.au ]
  %i.hu = getelementptr i8, ptr %.019.i.2.i.i.i, i64 144
  %i.hv = load volatile i64, ptr %i.hu, align 8
  %.not15.i.2.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not15.i.2.i.i.i, label %.lr.ph.i.2.i.i.i.1, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.2.i.i.i
  %i.hw = getelementptr i8, ptr %.019.i.2.i.i.i, i64 1120
  %i.hx = load volatile i64, ptr %i.hw, align 8
  %spec.store.select.i.i.2.i.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.hx, i64 0)
  %i.hy = add i64 %spec.store.select.i.i.2.i.i.i, %.01417.i.2.i.i.i
  br label %.lr.ph.i.2.i.i.i.1

.lr.ph.i.2.i.i.i.1:                               ; preds = %bb.as, %.lr.ph.i.2.i.i.i
  %.1.i.2.i.i.i = phi i64 [ %i.hy, %bb.as ], [ %.01417.i.2.i.i.i, %.lr.ph.i.2.i.i.i ] ; 2 uses
  %i.hz = getelementptr i8, ptr %.019.i.2.i.i.i, i64 1488
  %i.ia = load volatile i64, ptr %i.hz, align 8
  %.not15.i.2.i.i.i.1 = icmp eq i64 %i.ia, 0
  br i1 %.not15.i.2.i.i.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.2.i.i.i.1
  %i.ib = getelementptr i8, ptr %.019.i.2.i.i.i, i64 2464
  %i.ic = load volatile i64, ptr %i.ib, align 8
  %spec.store.select.i.i.2.i.i.i.1 = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ic, i64 0)
  %i.id = add i64 %spec.store.select.i.i.2.i.i.i.1, %.1.i.2.i.i.i
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.2.i.i.i.1
  %.1.i.2.i.i.i.1 = phi i64 [ %i.id, %bb.at ], [ %.1.i.2.i.i.i, %.lr.ph.i.2.i.i.i.1 ] ; 3 uses
  %i.ie = getelementptr i8, ptr %.019.i.2.i.i.i, i64 2688 ; 2 uses
  %niter389.next.1 = add i32 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i32 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.2.i.i.i, !llvm.loop !61

.thread273:                                       ; preds = %.thread, %bb.ar
  %.ph246 = phi i64 [ 0, %.thread ], [ %i.hl, %bb.ar ]
  %.ph248 = phi i8 [ %i.go, %.thread ], [ %i.hm, %bb.ar ]
  store i64 0, ptr %i.ag, align 16, !annotation !35
  store i64 0, ptr %i.ad, align 16
  br label %get_scan_count.exit.i.i

lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa:  ; preds = %bb.au
  %i.if = and i32 %i.hr, 1
  %lcmp.mod385.not.not = icmp eq i32 %i.if, 0
  br i1 %lcmp.mod385.not.not, label %.lr.ph.i.2.i.i.i.epil.preheader, label %lruvec_lru_size.exit.2.i.i.i

.lr.ph.i.2.i.i.i.epil.preheader:                  ; preds = %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.2.i.i.i
  %.019.i.2.i.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader.2.i.i.i ], [ %i.ie, %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.01417.i.2.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.2.i.i.i ], [ %.1.i.2.i.i.i.1, %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i32 %i.hs to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %i.ig = getelementptr i8, ptr %.019.i.2.i.i.i.epil.init, i64 144
  %i.ih = load volatile i64, ptr %i.ig, align 8
  %.not15.i.2.i.i.i.epil = icmp eq i64 %i.ih, 0
  br i1 %.not15.i.2.i.i.i.epil, label %lruvec_lru_size.exit.2.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.2.i.i.i.epil.preheader
  %i.ii = getelementptr i8, ptr %.019.i.2.i.i.i.epil.init, i64 1120
  %i.ij = load volatile i64, ptr %i.ii, align 8
  %spec.store.select.i.i.2.i.i.i.epil = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ij, i64 0)
  %i.ik = add i64 %spec.store.select.i.i.2.i.i.i.epil, %.01417.i.2.i.i.i.epil.init
  br label %lruvec_lru_size.exit.2.i.i.i

lruvec_lru_size.exit.2.i.i.i:                     ; preds = %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa, %bb.av, %.lr.ph.i.2.i.i.i.epil.preheader, %.split242
  %.0.i.i.i156170204229 = phi i32 [ %.0.i.i.i156170, %.split242 ], [ %.0.i.i.i156170204238, %.lr.ph.i.2.i.i.i.epil.preheader ], [ %.0.i.i.i156170204238, %bb.av ], [ %.0.i.i.i156170204238, %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.not16.i.i.i.i160169205228 = phi i1 [ true, %.split242 ], [ false, %.lr.ph.i.2.i.i.i.epil.preheader ], [ false, %bb.av ], [ false, %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.014.lcssa.i.2.i.i.i = phi i64 [ 0, %.split242 ], [ %.1.i.2.i.i.i.1, %lruvec_lru_size.exit.2.i.i.i.loopexit.unr-lcssa ], [ %i.ik, %bb.av ], [ %.01417.i.2.i.i.i.epil.init, %.lr.ph.i.2.i.i.i.epil.preheader ]
  %i.il = lshr i64 %.014.lcssa.i.2.i.i.i, %i.hn   ; 5 uses
  switch i32 %.0.i.i.i156170204229, label %default.unreachable [
    i32 0, label %bb.aw
    i32 1, label %.split283
    i32 3, label %.split292
    i32 2, label %.split292
  ]

.split292:                                        ; preds = %lruvec_lru_size.exit.2.i.i.i, %lruvec_lru_size.exit.2.i.i.i
  %spec.select.2.i.i.i = select i1 %.not69.2.i.i.i152171, i64 %i.il, i64 0 ; 3 uses
  store i64 0, ptr %i.ag, align 16, !annotation !35
  store i64 %spec.select.2.i.i.i, ptr %i.ad, align 16
  br i1 %.not16.i.i.i.i160169205228, label %lruvec_lru_size.exit.3.i.i.i, label %.lr.ph.i.preheader.3.i.i.i

.split283.thread:                                 ; preds = %.split186.thread, %.split233
  %.ph351 = phi i8 [ %i.hm, %.split233 ], [ %i.gn, %.split186.thread ]
  %.072.i.i.i144173202231269.ph = phi i64 [ %.072.i.i.i144173, %.split233 ], [ %i.fl, %.split186.thread ]
  %.sroa.5.0.i.i.i140174201232268.ph = phi i64 [ %.sroa.5.0.i.i.i140174, %.split233 ], [ %i.fk, %.split186.thread ]
  %.ph353 = phi i64 [ %i.hl, %.split233 ], [ 0, %.split186.thread ]
  store i64 0, ptr %i.ag, align 16, !annotation !35
  store i64 0, ptr %i.ad, align 16
  br label %lruvec_lru_size.exit.3.i.i.i.thread306

.split283:                                        ; preds = %lruvec_lru_size.exit.2.i.i.i
  %i.im = mul i64 %i.il, %.sroa.5.0.i.i.i140174
  %i.in = udiv i64 %i.im, %.072.i.i.i144173       ; 3 uses
  store i64 0, ptr %i.ag, align 16, !annotation !35
  store i64 %i.in, ptr %i.ad, align 16
  br i1 %.not16.i.i.i.i160169205228, label %lruvec_lru_size.exit.3.i.i.i.thread306, label %.lr.ph.i.preheader.3.i.i.i

bb.aw:                                            ; preds = %lruvec_lru_size.exit.2.i.i.i
  store i64 0, ptr %i.ag, align 16, !annotation !35
  store i64 %i.il, ptr %i.ad, align 16
  br i1 %.not16.i.i.i.i160169205228, label %get_scan_count.exit.i.i, label %.lr.ph.i.preheader.3.i.i.i

.lr.ph.i.preheader.3.i.i.i:                       ; preds = %.split292, %.split283, %bb.aw
  %i.io = phi i64 [ %i.in, %.split283 ], [ %i.il, %bb.aw ], [ %spec.select.2.i.i.i, %.split292 ] ; 3 uses
  %.0.i.i.i156170204229259288 = phi i32 [ 1, %.split283 ], [ 0, %bb.aw ], [ %.0.i.i.i156170204229, %.split292 ] ; 3 uses
  %i.ip = zext i8 %.fr397 to i32                  ; 2 uses
  %i.iq = add nuw nsw i32 %i.ip, 1                ; 2 uses
  %i.ir = icmp eq i8 %.fr397, 0
  br i1 %i.ir, label %.lr.ph.i.3.i.i.i.epil.preheader, label %.lr.ph.i.preheader.3.i.i.i.new

.lr.ph.i.preheader.3.i.i.i.new:                   ; preds = %.lr.ph.i.preheader.3.i.i.i
  %unroll_iter394 = and i32 %i.iq, 510
  br label %.lr.ph.i.3.i.i.i

.lr.ph.i.3.i.i.i:                                 ; preds = %bb.az, %.lr.ph.i.preheader.3.i.i.i.new
  %.019.i.3.i.i.i = phi ptr [ %0, %.lr.ph.i.preheader.3.i.i.i.new ], [ %i.jc, %bb.az ] ; 5 uses
  %.01417.i.3.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.3.i.i.i.new ], [ %.1.i.3.i.i.i.1, %bb.az ] ; 2 uses
  %niter395 = phi i32 [ 0, %.lr.ph.i.preheader.3.i.i.i.new ], [ %niter395.next.1, %bb.az ]
  %i.is = getelementptr i8, ptr %.019.i.3.i.i.i, i64 144
  %i.it = load volatile i64, ptr %i.is, align 8
  %.not15.i.3.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not15.i.3.i.i.i, label %.lr.ph.i.3.i.i.i.1, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.3.i.i.i
  %i.iu = getelementptr i8, ptr %.019.i.3.i.i.i, i64 1128
  %i.iv = load volatile i64, ptr %i.iu, align 8
  %spec.store.select.i.i.3.i.i.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.iv, i64 0)
  %i.iw = add i64 %spec.store.select.i.i.3.i.i.i, %.01417.i.3.i.i.i
  br label %.lr.ph.i.3.i.i.i.1

.lr.ph.i.3.i.i.i.1:                               ; preds = %bb.ax, %.lr.ph.i.3.i.i.i
  %.1.i.3.i.i.i = phi i64 [ %i.iw, %bb.ax ], [ %.01417.i.3.i.i.i, %.lr.ph.i.3.i.i.i ] ; 2 uses
  %i.ix = getelementptr i8, ptr %.019.i.3.i.i.i, i64 1488
  %i.iy = load volatile i64, ptr %i.ix, align 8
  %.not15.i.3.i.i.i.1 = icmp eq i64 %i.iy, 0
  br i1 %.not15.i.3.i.i.i.1, label %bb.az, label %bb.ay

end_hunk_0

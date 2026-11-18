Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dm-raid1?download=true
inline.NumInlined: 171
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@do_mirror:bb.a
  store i64 0, ptr %i.cx, align 8
  %indvars.iv.next.i16.i.3 = add nuw nsw i64 %indvars.iv.i15.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %do_recovery.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !34

do_recovery.exit.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do_recovery.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %do_recovery.exit.loopexit.unr-lcssa, %.lr.ph.i14.i
  %indvars.iv.i15.i.epil.init = phi i64 [ 0, %.lr.ph.i14.i ], [ %indvars.iv.next.i16.i.3, %do_recovery.exit.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i15.i.epil = phi i64 [ %indvars.iv.i15.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i16.i.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cy = getelementptr [40 x i8], ptr %i.ck, i64 %indvars.iv.i15.i.epil ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  store volatile i32 0, ptr %i.cz, align 4
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  store i64 0, ptr %i.da, align 8
  %indvars.iv.next.i16.i.epil = add nuw nsw i64 %indvars.iv.i15.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %do_recovery.exit, label %bb.j, !llvm.loop !35

do_recovery.exit:                                 ; preds = %do_recovery.exit.loopexit.unr-lcssa, %bb.j, %._crit_edge.i, %bb.g, %bb.h
  %.not.i28.i = icmp eq ptr %.sroa.041.0.copyload, null
  br i1 %.not.i28.i, label %do_reads.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %do_recovery.exit
  %i.db = getelementptr i8, ptr %0, i64 120       ; 4 uses
  %i.dc = getelementptr i8, ptr %0, i64 -16       ; 3 uses
  %i.dd = getelementptr i8, ptr %0, i64 112
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.u, %.lr.ph.i17
  %i.dm = phi ptr [ %.sroa.041.0.copyload, %.lr.ph.i17 ], [ %i.dn, %bb.u ] ; 10 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.dn, null
  store ptr null, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.g, align 8
  %i.dp = call i64 @dm_rh_bio_to_region(ptr noundef %i.do, ptr noundef nonnull %i.dm) #13
  %i.dq = load volatile i32, ptr %i.dc, align 8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [40 x i8], ptr %i.db, i64 %i.dr ; 3 uses
  %.val.i = load ptr, ptr %i.g, align 8
  %i.dt = call i32 @dm_rh_get_state(ptr noundef %.val.i, i64 noundef %i.dp, i32 noundef 1) #13
  %i.du = add i32 %i.dt, -3
  %i.dv = icmp ult i32 %i.du, -2
  br i1 %i.dv, label %bb.q, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.dw = load volatile i32, ptr %i.dc, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [40 x i8], ptr %i.db, i64 %i.dx
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.0.i.i = phi ptr [ %i.dy, %bb.l ], [ %.1.i.i18, %bb.p ] ; 5 uses
  %i.dz = getelementptr i8, ptr %.0.i.i, i64 8
  %i.ea = load volatile i32, ptr %i.dz, align 4
  %.not.i19.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i19.i, label %choose_mirror.exit.i, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr i8, ptr %.0.i.i, i64 -40  ; 2 uses
  %i.ec = icmp eq ptr %.0.i.i, %i.db
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = load i32, ptr %i.dd, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr [40 x i8], ptr %i.eb, i64 %i.ee
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.i18 = phi ptr [ %i.ef, %bb.o ], [ %i.eb, %bb.n ] ; 2 uses
  %i.eg = load volatile i32, ptr %i.dc, align 8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [40 x i8], ptr %i.db, i64 %i.eh
  %.not11.i.i = icmp eq ptr %.1.i.i18, %i.ei
  br i1 %.not11.i.i, label %choose_mirror.exit.thread.i, label %bb.m, !llvm.loop !1

bb.q:                                             ; preds = %bb.k
  %.not16.i = icmp eq ptr %i.ds, null
  br i1 %.not16.i, label %choose_mirror.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr i8, ptr %i.ds, i64 8
  %i.ek = load volatile i32, ptr %i.ej, align 4
  %.not17.i21 = icmp eq i32 %i.ek, 0
  br i1 %.not17.i21, label %choose_mirror.exit.thread23.i, label %choose_mirror.exit.thread.i

choose_mirror.exit.i:                             ; preds = %bb.m
  %.not18.i = icmp eq ptr %.0.i.i, null
  br i1 %.not18.i, label %choose_mirror.exit.thread.i, label %choose_mirror.exit.thread23.i, !prof !46

choose_mirror.exit.thread23.i:                    ; preds = %choose_mirror.exit.i, %bb.r
  %.026.i = phi ptr [ %.0.i.i, %choose_mirror.exit.i ], [ %i.ds, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i64 0, ptr %7, align 8
  store i32 1, ptr %i.de, align 8
  store i32 0, ptr %i.df, align 4
  store ptr %i.dm, ptr %i.dg, align 8
  store ptr @read_callback, ptr %i.dh, align 8
  store ptr %i.dm, ptr %i.di, align 8
  %i.el = load ptr, ptr %.026.i, align 8          ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 120
  %i.en = load ptr, ptr %i.em, align 8
  store ptr %i.en, ptr %i.dj, align 8
  %i.eo = getelementptr i8, ptr %.026.i, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %6, align 8
  %i.er = getelementptr i8, ptr %i.dm, i64 48
  %i.es = load i32, ptr %i.er, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i, label %map_region.exit.i.i, label %bb.s, !prof !16

bb.s:                                             ; preds = %choose_mirror.exit.thread23.i
  %i.et = getelementptr i8, ptr %i.dm, i64 40
  %i.eu = getelementptr i8, ptr %.026.i, i64 32
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = load i64, ptr %i.et, align 8
  %i.ex = load ptr, ptr %i.el, align 8
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = add i64 %i.ew, %i.ev
  %i.fb = sub i64 %i.fa, %i.ez
  br label %map_region.exit.i.i

map_region.exit.i.i:                              ; preds = %bb.s, %choose_mirror.exit.thread23.i
  %.0.i.i.i.i = phi i64 [ %i.fb, %bb.s ], [ 0, %choose_mirror.exit.thread23.i ]
  store i64 %.0.i.i.i.i, ptr %i.dk, align 8
  %i.fc = lshr i32 %i.es, 9
  %i.fd = zext nneg i32 %i.fc to i64
  store i64 %i.fd, ptr %i.dl, align 8
  store ptr %.026.i, ptr %i.dm, align 8
  %i.fe = call i32 @dm_io(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %6, ptr noundef null, i16 noundef zeroext 0) #13
  %.not.i20.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i20.i, label %read_async_bio.exit.i, label %bb.t, !prof !15

bb.t:                                             ; preds = %map_region.exit.i.i
  call void asm sideeffect "612: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 612b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 612) #15, !srcloc !47
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, ptr @.str.26, i32 556, i32 0, i64 16) #15, !srcloc !48
  unreachable

read_async_bio.exit.i:                            ; preds = %map_region.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.u

choose_mirror.exit.thread.i:                      ; preds = %bb.p, %choose_mirror.exit.i, %bb.r, %bb.q
  %i.ff = getelementptr i8, ptr %i.dm, i64 26
  store i8 10, ptr %i.ff, align 2
  call void @bio_endio(ptr noundef nonnull %i.dm) #13
  br label %bb.u

bb.u:                                             ; preds = %choose_mirror.exit.thread.i, %read_async_bio.exit.i
  br i1 %.not8.i.i, label %do_reads.exit, label %bb.k, !llvm.loop !36

do_reads.exit:                                    ; preds = %bb.u, %do_recovery.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.fg = load ptr, ptr %i.g, align 8
  %i.fh = call ptr @dm_rh_dirty_log(ptr noundef %i.fg) #13 ; 2 uses
  %.not.i22 = icmp eq ptr %.sroa.037.0.copyload, null
  br i1 %.not.i22, label %do_writes.exit, label %.lr.ph.lr.ph.lr.ph.i

.lr.ph.lr.ph.lr.ph.i:                             ; preds = %do_reads.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %.cont.i, %.lr.ph.lr.ph.lr.ph.i
  %i.fj = phi ptr [ %.sroa.037.0.copyload, %.lr.ph.lr.ph.lr.ph.i ], [ %i.fm, %.cont.i ]
  %.0.ph113.i = phi ptr [ null, %.lr.ph.lr.ph.lr.ph.i ], [ %.0.ph97105.i, %.cont.i ]
  %.sroa.7.0.ph112.i = phi ptr [ null, %.lr.ph.lr.ph.lr.ph.i ], [ %i.fl, %.cont.i ] ; 4 uses
  %.sroa.0.0.ph111.i = phi ptr [ null, %.lr.ph.lr.ph.lr.ph.i ], [ %.sroa.0.1.i, %.cont.i ] ; 3 uses
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.outer96.i, %.lr.ph.lr.ph.i
  %i.fk = phi ptr [ %i.fj, %.lr.ph.lr.ph.i ], [ %i.fm, %.outer96.i ]
  %.0.ph97105.i = phi ptr [ %.0.ph113.i, %.lr.ph.lr.ph.i ], [ %.1.i, %.outer96.i ] ; 3 uses
  %.promoted.i = load ptr, ptr %i.fi, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i23
  %10 = phi ptr [ %.promoted.i, %.lr.ph.i23 ], [ %i.fl, %bb.w ] ; 2 uses
  %i.fl = phi ptr [ %i.fk, %.lr.ph.i23 ], [ %i.fm, %bb.w ] ; 15 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 4 uses
  %.not8.i.i24 = icmp eq ptr %i.fm, null          ; 3 uses
  store ptr null, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 8            ; 2 uses
  %i.fp = and i32 %i.fo, 262144
  %.not63.i = icmp ne i32 %i.fp, 0
  %i.fq = and i32 %i.fo, 255
  %i.fr = icmp eq i32 %i.fq, 3
  %or.cond93.i = or i1 %.not63.i, %i.fr
  br i1 %or.cond93.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not.i66.i = icmp eq ptr %10, null
  %..i.i = select i1 %.not.i66.i, ptr %3, ptr %10
  store ptr %i.fl, ptr %..i.i, align 8
  store ptr %i.fl, ptr %i.fi, align 8
  br i1 %.not8.i.i24, label %.outer96._crit_edge.i, label %bb.v, !llvm.loop !37

bb.x:                                             ; preds = %bb.v
  %i.fs = load ptr, ptr %i.g, align 8
  %i.ft = call i64 @dm_rh_bio_to_region(ptr noundef %i.fs, ptr noundef nonnull %i.fl) #13 ; 2 uses
  %i.fu = load ptr, ptr %i.fh, align 8
  %i.fv = getelementptr i8, ptr %i.fu, i64 152
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not64.i = icmp eq ptr %i.fw, null
  br i1 %.not64.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = call i32 %i.fw(ptr noundef %i.fh, i64 noundef %i.ft) #13, !inline_history !38
  %.not65.i = icmp eq i32 %i.fx, 0
  br i1 %.not65.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.fl, align 8
  %.not.i67.i = icmp eq ptr %.sroa.7.0.ph112.i, null
  br i1 %.not.i67.i, label %.cont.i, label %.else.i

.else.i:                                          ; preds = %bb.z
  store ptr %i.fl, ptr %.sroa.7.0.ph112.i, align 8
  br label %.cont.i

.cont.i:                                          ; preds = %.else.i, %bb.z
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.ph111.i, %.else.i ], [ %i.fl, %bb.z ] ; 2 uses
  br i1 %.not8.i.i24, label %.outer96._crit_edge.i, label %.lr.ph.lr.ph.i, !llvm.loop !37

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.fy = load ptr, ptr %i.g, align 8
  %i.fz = call i32 @dm_rh_get_state(ptr noundef %i.fy, i64 noundef %i.ft, i32 noundef 1) #13 ; 2 uses
  %i.ga = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fz)
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %.split.i, label %.outer96.i

.split.i:                                         ; preds = %bb.aa
  %i.gc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fz, i1 true)
  switch i32 %i.gc, label %.outer96.i [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %.split.i, %.split.i
  br label %.outer96.i

bb.ac:                                            ; preds = %.split.i
  br label %.outer96.i

bb.ad:                                            ; preds = %.split.i
  br label %.outer96.i

.outer96.i:                                       ; preds = %bb.ad, %bb.ac, %bb.ab, %.split.i, %bb.aa
  %.1.i = phi ptr [ %.0.ph97105.i, %.split.i ], [ %3, %bb.ab ], [ %4, %bb.ac ], [ %5, %bb.ad ], [ %.0.ph97105.i, %bb.aa ] ; 3 uses
  store ptr null, ptr %i.fl, align 8
  %i.gd = getelementptr i8, ptr %.1.i, i64 8      ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %.not.i69.i = icmp eq ptr %i.ge, null
  %..i70.i = select i1 %.not.i69.i, ptr %.1.i, ptr %i.ge
  store ptr %i.fl, ptr %..i70.i, align 8
  store ptr %i.fl, ptr %i.gd, align 8
  br i1 %.not8.i.i24, label %.outer96._crit_edge.i, label %.lr.ph.i23, !llvm.loop !37

.outer96._crit_edge.i:                            ; preds = %.cont.i, %.outer96.i, %bb.w
  %.sroa.0.0.ph.lcssa.i = phi ptr [ %.sroa.0.0.ph111.i, %.outer96.i ], [ %.sroa.0.0.ph111.i, %bb.w ], [ %.sroa.0.1.i, %.cont.i ] ; 2 uses
  %.sroa.7.0.ph.lcssa.i = phi ptr [ %.sroa.7.0.ph112.i, %.outer96.i ], [ %.sroa.7.0.ph112.i, %bb.w ], [ %i.fl, %.cont.i ]
  %.not53.i = icmp eq ptr %.sroa.0.0.ph.lcssa.i, null
  br i1 %.not53.i, label %delayed_wake.exit.i, label %bio_list_merge.exit.i, !prof !15

bio_list_merge.exit.i:                            ; preds = %.outer96._crit_edge.i
  call void @_raw_spin_lock_irq(ptr noundef %i.b) #13
  %i.gf = getelementptr i8, ptr %0, i64 -104      ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not9.i.i = icmp eq ptr %i.gg, null
  %..i72.i = select i1 %.not9.i.i, ptr %i.e, ptr %i.gg
  store ptr %.sroa.0.0.ph.lcssa.i, ptr %..i72.i, align 8
  store ptr %.sroa.7.0.ph.lcssa.i, ptr %i.gf, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.b) #13
  %i.gh = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.gi = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gh, i64 0, ptr elementtype(i64) %i.gh) #15, !srcloc !17 ; 2 uses
  %i.gj = icmp ult i8 %i.gi, 2
  call void @llvm.assume(i1 %i.gj)
  %i.gk = trunc nuw i8 %i.gi to i1
  br i1 %i.gk, label %delayed_wake.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bio_list_merge.exit.i
  %i.gl = load volatile i64, ptr @jiffies, align 64
  %i.gm = add i64 %i.gl, 200
  %i.gn = getelementptr i8, ptr %0, i64 32
  %i.go = getelementptr i8, ptr %0, i64 48
  store i64 %i.gm, ptr %i.go, align 8
  call void @add_timer(ptr noundef %i.gn) #13
  br label %delayed_wake.exit.i

delayed_wake.exit.i:                              ; preds = %bb.ae, %bio_list_merge.exit.i, %.outer96._crit_edge.i
  %i.gp = load ptr, ptr %i.g, align 8
  call void @dm_rh_inc_pending(ptr noundef %i.gp, ptr noundef nonnull %3) #13
  %i.gq = load ptr, ptr %i.g, align 8
  call void @dm_rh_inc_pending(ptr noundef %i.gq, ptr noundef nonnull %4) #13
  %i.gr = load ptr, ptr %i.g, align 8
  %i.gs = call i32 @dm_rh_flush(ptr noundef %i.gr) #13
  %.not54.i = icmp eq i32 %i.gs, 0
  %i.gt = getelementptr i8, ptr %0, i64 -28       ; 2 uses
  br i1 %.not54.i, label %bb.af, label %.thread.i

.thread.i:                                        ; preds = %delayed_wake.exit.i
  store i32 1, ptr %i.gt, align 4
  br label %bb.ag

bb.af:                                            ; preds = %delayed_wake.exit.i
  %i.gu = load i32, ptr %i.gt, align 4
  %.not55.i = icmp eq i32 %i.gu, 0
  br i1 %.not55.i, label %bb.aj, label %bb.ag, !prof !49

bb.ag:                                            ; preds = %bb.af, %.thread.i
  %i.gv = load i64, ptr %i.i, align 8
  %i.gw = and i64 %i.gv, 1
  %.not56.i = icmp eq i64 %i.gw, 0
  br i1 %.not56.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_raw_spin_lock_irq(ptr noundef %i.b) #13
  %i.gx = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i73.i = icmp eq ptr %i.gx, null
  br i1 %.not.i73.i, label %bio_list_merge.exit76.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = getelementptr i8, ptr %0, i64 -88       ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not9.i74.i = icmp eq ptr %i.gz, null
  %..i75.i = select i1 %.not9.i74.i, ptr %i.f, ptr %i.gz
  store ptr %i.gx, ptr %..i75.i, align 8
  %i.ha = load ptr, ptr %i.fi, align 8
  store ptr %i.ha, ptr %i.gy, align 8
  br label %bio_list_merge.exit76.i

bio_list_merge.exit76.i:                          ; preds = %bb.ai, %bb.ah
  call void @_raw_spin_unlock_irq(ptr noundef %i.b) #13
  %i.hb = getelementptr i8, ptr %0, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.hc, ptr noundef %0) #13 ; 0 uses
  br label %bio_list_pop.exit79.thread.i

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.he = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i77116.i = icmp eq ptr %i.he, null
  br i1 %.not.i77116.i, label %bio_list_pop.exit79.thread.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hm = getelementptr i8, ptr %0, i64 -48
  %i.hn = getelementptr i8, ptr %0, i64 120       ; 5 uses
  %i.ho = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.hp = getelementptr i8, ptr %0, i64 -16
  br label %bb.ak

bb.ak:                                            ; preds = %do_write.exit.i, %.lr.ph118.i
  %i.hq = phi ptr [ %i.he, %.lr.ph118.i ], [ %i.ll, %do_write.exit.i ] ; 8 uses
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  store ptr %i.hr, ptr %3, align 8
  %.not8.i78.i = icmp eq ptr %i.hr, null
  br i1 %.not8.i78.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.fi, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store ptr null, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.hs = getelementptr i8, ptr %i.hq, i64 16
  %i.ht = load i32, ptr %i.hs, align 8            ; 2 uses
  %i.hu = and i32 %i.ht, 134610944                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.hv = or disjoint i32 %i.hu, 1
  store i32 %i.hv, ptr %2, align 8
  store i32 0, ptr %i.hf, align 4
  store i32 1, ptr %i.hg, align 8
  store i32 0, ptr %i.hh, align 4
  store ptr %i.hq, ptr %i.hi, align 8
  store ptr @write_callback, ptr %i.hj, align 8
  store ptr %i.hq, ptr %i.hk, align 8
  %i.hw = load ptr, ptr %i.hm, align 8
  store ptr %i.hw, ptr %i.hl, align 8
  %i.hx = and i32 %i.ht, 255
  %i.hy = icmp eq i32 %i.hx, 3
  br i1 %i.hy, label %bb.an, label %bb.ao

end_hunk_0

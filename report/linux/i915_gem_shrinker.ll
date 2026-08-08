inline.NumInlined: 140
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@i915_gem_shrink:bb.a
  %i.am = getelementptr i8, ptr %0, i64 40
  %i.an = lshr i64 %i.y, 2
  %.lobit.i = and i64 %i.an, 1
  %i.ao = shl nuw nsw i64 %i.y, 1
  %i.ap = and i64 %i.ao, 4
  %i.aq = or disjoint i64 %i.ap, %.lobit.i
  %.1.i = xor i64 %i.aq, 4                        ; 2 uses
  %i.ar = or disjoint i64 %.1.i, 8
  %.2.i = select i1 %i.i, i64 %i.ar, i64 %.1.i
  %i.as = lshr i32 %.076, 1
  %i.at = and i32 %i.as, 2
  %i.au = lshr i32 %.076, 4
  %i.av = and i32 %i.au, 1
  %i.aw = or disjoint i32 %i.at, %i.av
  %.1.i127 = xor i32 %i.aw, 2
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph170, %select.unfold
  %.077169 = phi ptr [ %5, %.lr.ph170 ], [ %i.en, %select.unfold ] ; 5 uses
  %.079168 = phi i64 [ 0, %.lr.ph170 ], [ %.5.ph, %select.unfold ] ; 2 uses
  %.080167 = phi i64 [ 0, %.lr.ph170 ], [ %.484.ph, %select.unfold ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ax = getelementptr i8, ptr %.077169, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, %.076
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  store volatile ptr %6, ptr %6, align 8
  store volatile ptr %6, ptr %i.ag, align 8
  %i.bb = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ah) #10
  br label %i915_gem_object_is_framebuffer.exit.outer

i915_gem_object_is_framebuffer.exit.outer:        ; preds = %i915_gem_object_put.exit, %bb.m
  %.094.ph = phi i64 [ %i.eh, %i915_gem_object_put.exit ], [ %i.bb, %bb.m ] ; 4 uses
  %.181.ph = phi i64 [ %.282, %i915_gem_object_put.exit ], [ %.080167, %bb.m ] ; 7 uses
  %.1.ph = phi i64 [ %.3, %i915_gem_object_put.exit ], [ %.079168, %bb.m ] ; 11 uses
  %i.bc = icmp ult i64 %.1.ph, %2
  br i1 %i.bc, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %i915_gem_object_is_framebuffer.exit.outer
  %i.bd = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.be = load volatile ptr, ptr %i.bd, align 8   ; 3 uses
  %.not110212 = icmp eq ptr %i.be, %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -896   ; 2 uses
  %.not111142213 = icmp eq ptr %i.bf, null
  %.not111214 = or i1 %.not110212, %.not111142213
  br i1 %.not111214, label %.critedge, label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph.preheader, %i915_gem_object_is_framebuffer.exit.backedge
  %i.bg = phi ptr [ %i.bs, %i915_gem_object_is_framebuffer.exit.backedge ], [ %i.bf, %.lr.ph.preheader ] ; 19 uses
  %i.bh = phi ptr [ %i.br, %i915_gem_object_is_framebuffer.exit.backedge ], [ %i.be, %.lr.ph.preheader ] ; 18 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  store volatile ptr %i.bk, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.bh, ptr %i.ag, align 8
  store ptr %6, ptr %i.bh, align 8
  store ptr %i.bm, ptr %i.bi, align 8
  store volatile ptr %i.bh, ptr %i.bm, align 8
  br i1 %.not112, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph215
  %i.bn = getelementptr i8, ptr %i.bh, i64 -128
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call zeroext i1 @is_vmalloc_addr(ptr noundef %i.bo) #10
  br i1 %i.bp, label %bb.o, label %i915_gem_object_is_framebuffer.exit.backedge

i915_gem_object_is_framebuffer.exit.backedge:     ; preds = %bb.n, %kref_get_unless_zero.exit, %.split, %.split131, %bb.p, %bb.q
  %i.bq = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.br = load volatile ptr, ptr %i.bq, align 8   ; 3 uses
  %.not110 = icmp eq ptr %i.br, %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -896   ; 2 uses
  %.not111142 = icmp eq ptr %i.bs, null
  %.not111 = or i1 %.not110, %.not111142
  br i1 %.not111, label %.critedge, label %.lr.ph215

bb.o:                                             ; preds = %bb.n, %.lr.ph215
  br i1 %.not108, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %i.bh, i64 -224
  %i.bu = load volatile ptr, ptr %i.bt, align 8
  %.not.i = icmp eq ptr %i.bu, null
  br i1 %.not.i, label %.split, label %i915_gem_object_is_framebuffer.exit.backedge

.split:                                           ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bh, i64 -236
  %i.bw = load i16, ptr %i.bv, align 4
  %i.bx = and i16 %i.bw, 1024
  %.not143 = icmp eq i16 %i.bx, 0
  br i1 %.not143, label %bb.q, label %i915_gem_object_is_framebuffer.exit.backedge

bb.q:                                             ; preds = %.split, %bb.o
  %i.by = getelementptr i8, ptr %i.bh, i64 -416
  %.val.i = load ptr, ptr %i.by, align 8
  %.val.val.i = load i32, ptr %.val.i, align 8
  %i.bz = and i32 %.val.val.i, 2
  %.not.i125 = icmp eq i32 %i.bz, 0
  br i1 %.not.i125, label %i915_gem_object_is_framebuffer.exit.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load volatile i64, ptr @nr_swap_pages, align 8
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %can_release_pages.exit.thread, label %.split131

.split131:                                        ; preds = %bb.r
  %i.cc = getelementptr i8, ptr %i.bh, i64 16
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = and i8 %i.cd, 3
  %i.cf = icmp eq i8 %i.ce, 1
  br i1 %i.cf, label %can_release_pages.exit.thread, label %i915_gem_object_is_framebuffer.exit.backedge

can_release_pages.exit.thread:                    ; preds = %bb.r, %.split131
  %i.cg = load volatile i32, ptr %i.bg, align 4   ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %can_release_pages.exit.thread, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.cm, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.cg, %can_release_pages.exit.thread ] ; 3 uses
  %i.ch = add i32 %.0.i.i.i.i, 1
  %i.ci = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bg, i32 %i.ch, ptr nonnull elementtype(i32) %i.bg, i32 %.0.i.i.i.i) #9, !srcloc !17 ; 2 uses
  %i.cj = extractvalue { i8, i32 } %i.ci, 0       ; 2 uses
  %i.ck = icmp ult i8 %i.cj, 2
  call void @llvm.assume(i1 %i.ck)
  %i.cl = trunc nuw i8 %i.cj to i1
  br i1 %i.cl, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.cm = extractvalue { i8, i32 } %i.ci, 1       ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !19

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %can_release_pages.exit.thread
  %.2.i.i.i.i = phi i32 [ 0, %can_release_pages.exit.thread ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.co = add i32 %.2.i.i.i.i, 1
  %i.cp = or i32 %i.co, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i.i.i, label %kref_get_unless_zero.exit, label %bb.s, !prof !18

bb.s:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bg, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, %bb.s
  %.not144 = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not144, label %i915_gem_object_is_framebuffer.exit.backedge, label %bb.t

bb.t:                                             ; preds = %kref_get_unless_zero.exit
  %i.cq = getelementptr i8, ptr %i.bh, i64 -416   ; 2 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %.094.ph) #10
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %i.bh, i64 -648
  %spec.select124.val = load ptr, ptr %i.cr, align 8
  %i.cs = call i32 @ww_mutex_trylock(ptr noundef %spec.select124.val, ptr noundef null) #10
  %.not145 = icmp eq i32 %i.cs, 0
  br i1 %.not145, label %bb.al, label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.ct = load i8, ptr %i.aj, align 8, !range !21, !noundef !22
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr i8, ptr %i.bh, i64 -648
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cx = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.cw, ptr noundef nonnull %0) #10
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cy = call i32 @ww_mutex_lock(ptr noundef %i.cw, ptr noundef nonnull %0) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi i32 [ %i.cx, %bb.w ], [ %i.cy, %bb.x ] ; 4 uses
  %i.cz = icmp eq i32 %.0.i.i, 0
  br i1 %i.cz, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.da = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bg, i32 1, ptr nonnull elementtype(i32) %i.bg) #9, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.aa, !prof !24

bb.aa:                                            ; preds = %bb.z
  %i.db = add i32 %i.da, 1
  %i.dc = or i32 %i.db, %i.da
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !18

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.aa, %bb.z
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.z ], [ 1, %bb.aa ]
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bg, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.aa, %.sink.split.i.i.i.i.i.i.i.i
  %i.dd = getelementptr i8, ptr %i.bh, i64 -352   ; 3 uses
  %i.de = load ptr, ptr %i.al, align 8            ; 2 uses
  store ptr %i.dd, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.dd, align 8
  %i.df = getelementptr i8, ptr %i.bh, i64 -344
  store ptr %i.de, ptr %i.df, align 8
  store volatile ptr %i.dd, ptr %i.de, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.dg = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i.i = select i1 %i.dg, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %bb.al [
    i32 -35, label %bb.ac
    i32 -114, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bg, i32 1, ptr nonnull elementtype(i32) %i.bg) #9, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.ad, !prof !24

bb.ad:                                            ; preds = %bb.ac
  %i.di = add i32 %i.dh, 1
  %i.dj = or i32 %i.di, %i.dh
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.dj, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !18

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.ad, %bb.ac
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.ac ], [ 1, %bb.ad ]
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bg, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock.exit.thread

i915_gem_object_lock.exit.thread:                 ; preds = %bb.ad, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %i.bg, ptr %i.am, align 8
  br label %bb.al

bb.ae:                                            ; preds = %bb.ab, %i915_gem_object_get.exit.i.i, %bb.u
  %i.dk = call i32 @i915_gem_object_unbind(ptr noundef nonnull %i.bg, i64 noundef %.2.i) #10
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dm = call i32 @__i915_gem_object_put_pages(ptr noundef nonnull %i.bg) #10
  %.not115 = icmp eq i32 %i.dm, 0
  br i1 %.not115, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dn = load ptr, ptr %i.cq, align 8
  %i.do = getelementptr i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.dp, null
  br i1 %.not.i126, label %try_to_writeback.exit.thread, label %try_to_writeback.exit

try_to_writeback.exit:                            ; preds = %bb.ag
  %i.dq = call i32 %i.dp(ptr noundef nonnull %i.bg, i32 noundef %.1.i127) #10, !inline_history !25
  %.not116 = icmp eq i32 %i.dq, 0
  br i1 %.not116, label %try_to_writeback.exit.thread, label %bb.ah

try_to_writeback.exit.thread:                     ; preds = %bb.ag, %try_to_writeback.exit
  %i.dr = getelementptr i8, ptr %i.bh, i64 -680
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = lshr i64 %i.ds, 12
  %i.du = add i64 %i.dt, %.1.ph
  br label %bb.ah

bb.ah:                                            ; preds = %try_to_writeback.exit.thread, %try_to_writeback.exit, %bb.af, %bb.ae
  %.2 = phi i64 [ %.1.ph, %bb.af ], [ %.1.ph, %try_to_writeback.exit ], [ %i.du, %try_to_writeback.exit.thread ], [ %.1.ph, %bb.ae ]
  br i1 %.not, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load ptr, ptr %i.cq, align 8
  %i.dw = getelementptr i8, ptr %i.dv, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not.i128 = icmp eq ptr %i.dx, null
  br i1 %.not.i128, label %i915_gem_object_unlock.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void %i.dx(ptr noundef nonnull %i.bg) #10, !inline_history !26
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.ai, %bb.aj
  %i.dy = getelementptr i8, ptr %i.bh, i64 -648
  %i.dz = load ptr, ptr %i.dy, align 8
  call void @ww_mutex_unlock(ptr noundef %i.dz) #10
  br label %bb.ak

bb.ak:                                            ; preds = %i915_gem_object_unlock.exit, %bb.ah
  %i.ea = getelementptr i8, ptr %i.bh, i64 -680
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = add i64 %i.ec, %.181.ph
  br label %bb.al

bb.al:                                            ; preds = %bb.ab, %i915_gem_object_lock.exit.thread, %bb.u, %bb.ak
  %.389 = phi i32 [ %spec.store.select.i.i, %bb.ab ], [ 0, %bb.ak ], [ 0, %bb.u ], [ -35, %i915_gem_object_lock.exit.thread ] ; 2 uses
  %.282 = phi i64 [ %.181.ph, %bb.ab ], [ %i.ed, %bb.ak ], [ %.181.ph, %bb.u ], [ %.181.ph, %i915_gem_object_lock.exit.thread ] ; 2 uses
  %.3 = phi i64 [ %.1.ph, %bb.ab ], [ %.2, %bb.ak ], [ %.1.ph, %bb.u ], [ %.1.ph, %i915_gem_object_lock.exit.thread ] ; 2 uses
  %i.ee = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bg, i32 -1, ptr nonnull elementtype(i32) %i.bg) #9, !srcloc !23 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = icmp slt i32 %i.ee, 1
  br i1 %i.eg, label %bb.an, label %i915_gem_object_put.exit, !prof !24

bb.an:                                            ; preds = %bb.am
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bg, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.ao:                                            ; preds = %bb.al
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !27
  call void @drm_gem_object_free(ptr noundef nonnull %i.bg) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.am, %bb.an, %bb.ao
  %i.eh = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ah) #10 ; 2 uses
  %.not117 = icmp eq i32 %.389, 0
  br i1 %.not117, label %i915_gem_object_is_framebuffer.exit.outer, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %i915_gem_object_put.exit, %i915_gem_object_is_framebuffer.exit.outer, %.lr.ph.preheader, %i915_gem_object_is_framebuffer.exit.backedge
  %.195 = phi i64 [ %.094.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.094.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %i.eh, %i915_gem_object_put.exit ], [ %.094.ph, %.lr.ph.preheader ]
  %.490 = phi i32 [ 0, %i915_gem_object_is_framebuffer.exit.backedge ], [ 0, %i915_gem_object_is_framebuffer.exit.outer ], [ %.389, %i915_gem_object_put.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.383 = phi i64 [ %.181.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.181.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %.282, %i915_gem_object_put.exit ], [ %.181.ph, %.lr.ph.preheader ] ; 2 uses
  %.4 = phi i64 [ %.1.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.1.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %.3, %i915_gem_object_put.exit ], [ %.1.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ei = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.ej = load volatile ptr, ptr %6, align 8      ; 3 uses
  %.not.i129 = icmp eq ptr %i.ej, %6
  br i1 %.not.i129, label %list_splice_tail.exit, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.ek = getelementptr i8, ptr %i.ei, i64 8      ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.val4.i = load ptr, ptr %i.ag, align 8         ; 2 uses
  %i.em = getelementptr i8, ptr %i.ej, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store ptr %i.ej, ptr %i.el, align 8
  store ptr %i.ei, ptr %.val4.i, align 8
  store ptr %.val4.i, ptr %i.ek, align 8
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %.critedge, %bb.ap
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ah, i64 noundef %.195) #10
  %.not118 = icmp eq i32 %.490, 0
  br i1 %.not118, label %select.unfold, label %bb.aq

bb.aq:                                            ; preds = %list_splice_tail.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.loopexit

select.unfold:                                    ; preds = %list_splice_tail.exit, %bb.l
  %.484.ph = phi i64 [ %.080167, %bb.l ], [ %.383, %list_splice_tail.exit ] ; 2 uses
  %.5.ph = phi i64 [ %.079168, %bb.l ], [ %.4, %list_splice_tail.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.en = getelementptr i8, ptr %.077169, i64 16  ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8
  %.not109 = icmp eq ptr %i.eo, null
  br i1 %.not109, label %.loopexit, label %bb.l, !llvm.loop !29

.loopexit:                                        ; preds = %select.unfold, %.loopexit147, %bb.aq
  %.692 = phi i32 [ %.490, %bb.aq ], [ 0, %.loopexit147 ], [ 0, %select.unfold ] ; 2 uses
  %.585 = phi i64 [ %.383, %bb.aq ], [ 0, %.loopexit147 ], [ %.484.ph, %select.unfold ]
  %.6 = phi i64 [ %.4, %bb.aq ], [ 0, %.loopexit147 ], [ %.5.ph, %select.unfold ] ; 2 uses
  %i.ep = and i64 %i.y, 2
  %.not119 = icmp eq i64 %i.ep, 0
  br i1 %.not119, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.eq = getelementptr i8, ptr %1, i64 3176
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.eq) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit
  %.not120 = icmp eq i32 %.692, 0
  br i1 %.not120, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = sext i32 %.692 to i64
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %.not121 = icmp eq ptr %3, null
  br i1 %.not121, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.es = load i64, ptr %3, align 8
  %i.et = add i64 %i.es, %.585
  store i64 %i.et, ptr %3, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %.0 = phi i64 [ %i.er, %bb.at ], [ %.6, %bb.av ], [ %.6, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_vm_no_concurrent_access_wa(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get_if_in_use(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_gem_object_put_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @i915_gem_shrink_all(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3176       ; 2 uses
  %i.b = tail call ptr @intel_runtime_pm_get(ptr noundef %i.a) #10
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call i64 @i915_gem_shrink(ptr noundef null, ptr noundef %0, i64 noundef -1, ptr noundef null, i32 noundef 3) #11
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  ret i64 %.0.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_gem_driver_register__shrinker(ptr noundef initializes((3032, 3040)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr (i32, ptr, ...) @shrinker_alloc(i32 noundef 0, ptr noundef nonnull @.str) #10 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 3032       ; 5 uses
  store ptr %i.a, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit47.thread, label %bb.c

__drm_to_dev.exit47.thread:                       ; preds = %bb.b
  %i.c = tail call ptr @dev_driver_string(ptr noundef null) #10 ; 0 uses
  %i.d = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 434, i32 2321, i64 16) #9, !srcloc !30
  %i.e = tail call ptr @dev_driver_string(ptr noundef null) #10
  br label %__drm_to_dev.exit49

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @dev_driver_string(ptr noundef %i.g) #10 ; 0 uses
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 434, i32 2321, i64 16) #9, !srcloc !30
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #10
  %i.m = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit49

__drm_to_dev.exit49:                              ; preds = %__drm_to_dev.exit47.thread, %bb.c
  %i.n = phi ptr [ %i.i, %bb.c ], [ %i.d, %__drm_to_dev.exit47.thread ]
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.e, %__drm_to_dev.exit47.thread ]
  %i.p = phi ptr [ %i.m, %bb.c ], [ null, %__drm_to_dev.exit47.thread ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i50 = icmp eq ptr %i.r, null
  br i1 %.not.i50, label %bb.d, label %dev_name.exit53

bb.d:                                             ; preds = %__drm_to_dev.exit49
  %.val.i52 = load ptr, ptr %i.p, align 8
  br label %dev_name.exit53

dev_name.exit53:                                  ; preds = %__drm_to_dev.exit49, %bb.d
  %.0.i51 = phi ptr [ %.val.i52, %bb.d ], [ %i.r, %__drm_to_dev.exit49 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %.0.i51, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !31
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.a, i64 8
  store ptr @i915_gem_shrinker_scan, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.b, align 8
  store ptr @i915_gem_shrinker_count, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.b, align 8
end_hunk_0

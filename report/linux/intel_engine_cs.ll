inline.NumInlined: 384
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@intel_engines_init:bb.a
  br i1 %.not95.i.i, label %bb.q, label %.critedge105.i.i

bb.q:                                             ; preds = %.critedge.i.i
  %i.bu = zext i8 %i.y to i64
  %i.bv = getelementptr [4 x i8], ptr %.088.i.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4            ; 3 uses
  %.not96.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not96.i.i, label %.critedge105.i.i, label %.critedge99.i.i, !prof !31

.critedge105.i.i:                                 ; preds = %bb.q, %.critedge.i.i
  %i.bx = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i117.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i117.i.i, label %__drm_to_dev.exit118.i.i, label %bb.r

bb.r:                                             ; preds = %.critedge105.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  br label %__drm_to_dev.exit118.i.i

__drm_to_dev.exit118.i.i:                         ; preds = %bb.r, %.critedge105.i.i
  %i.ca = phi ptr [ %i.bz, %bb.r ], [ null, %.critedge105.i.i ]
  %i.cb = call ptr @dev_driver_string(ptr noundef %i.ca) #19 ; 0 uses
  %i.cc = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.41, ptr nonnull @.str.2, i32 1206, i32 2323, i64 16) #18, !srcloc !61
  %i.cd = load ptr, ptr %i.aa, align 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i125.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i125.i.i, label %__drm_to_dev.exit126.i.i, label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit118.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %__drm_to_dev.exit126.i.i

__drm_to_dev.exit126.i.i:                         ; preds = %bb.s, %__drm_to_dev.exit118.i.i
  %i.ch = phi ptr [ %i.cg, %bb.s ], [ null, %__drm_to_dev.exit118.i.i ]
  %i.ci = call ptr @dev_driver_string(ptr noundef %i.ch) #19
  %i.cj = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.i127.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i127.i.i, label %__drm_to_dev.exit128.i.i, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit126.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  br label %__drm_to_dev.exit128.i.i

__drm_to_dev.exit128.i.i:                         ; preds = %bb.t, %__drm_to_dev.exit126.i.i
  %i.cn = phi ptr [ %i.cm, %bb.t ], [ null, %__drm_to_dev.exit126.i.i ] ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i129.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i129.i.i, label %bb.u, label %dev_name.exit132.i.i

bb.u:                                             ; preds = %__drm_to_dev.exit128.i.i
  %.val.i131.i.i = load ptr, ptr %i.cn, align 8
  br label %dev_name.exit132.i.i

dev_name.exit132.i.i:                             ; preds = %bb.u, %__drm_to_dev.exit128.i.i
  %.0.i130.i.i = phi ptr [ %.val.i131.i.i, %bb.u ], [ %i.cp, %__drm_to_dev.exit128.i.i ]
  %i.cq = getelementptr i8, ptr %i.cj, i64 4936
  %i.cr = load i32, ptr %i.cq, align 8
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cc, ptr noundef %i.ci, ptr noundef %.0.i130.i.i, i32 noundef %i.cr, ptr noundef nonnull @.str.42) #19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !62
  br label %engine_setup_common.exit.thread

.critedge99.i.i:                                  ; preds = %bb.q
  %i.cs = icmp eq i8 %i.y, 4
  %or.cond.i.i = select i1 %i.ae, i1 %i.cs, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge99.i.i
  %i.ct = icmp eq i8 %i.y, 1
  %or.cond3.i.i = select i1 %i.bs, i1 %i.ct, i1 false
  %i.cu = icmp eq i8 %i.w, 1
  %or.cond5.i.i = select i1 %or.cond3.i.i, i1 %i.cu, i1 false ; 2 uses
  %i.cv = zext i8 %i.w to i64
  %spec.select100.i.i = select i1 %or.cond5.i.i, i64 0, i64 %i.cv
  %spec.select101.i.i = select i1 %or.cond5.i.i, i32 17000, i32 %i.bw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge99.i.i
  %.090.i.i = phi i64 [ %spec.select100.i.i, %bb.v ], [ 1, %.critedge99.i.i ]
  %.sroa.027.0.i.i = phi i32 [ %spec.select101.i.i, %bb.v ], [ %i.bw, %.critedge99.i.i ]
  %i.cw = shl nuw i64 1, %.090.i.i
  %i.cx = trunc i64 %i.cw to i32                  ; 5 uses
  %i.cy = getelementptr i8, ptr %i.s, i64 76
  store i8 %i.bt, ptr %i.cy, align 4
  %i.cz = getelementptr i8, ptr %i.s, i64 80
  store i32 %.sroa.027.0.i.i, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %i.s, i64 88
  store i32 %i.cx, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %i.u, i64 1656
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = icmp ugt i8 %i.dc, 11
  br i1 %i.dd, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  switch i8 %i.y, label %.sink.split.i [
    i8 1, label %bb.y
    i8 2, label %bb.y
    i8 5, label %bb.y
    i8 4, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %i.de = shl i32 %i.cx, 16
  %i.df = or i32 %i.de, %i.cx
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.y, %bb.x, %bb.w
  %.sink.i = phi i32 [ %i.df, %bb.y ], [ %i.cx, %bb.x ], [ %i.cx, %bb.w ]
  %i.dg = getelementptr i8, ptr %i.s, i64 84
  store i32 %.sink.i, ptr %i.dg, align 4
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !30
  %i.dh = getelementptr i8, ptr %i.s, i64 576     ; 3 uses
  store volatile ptr %i.dh, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %i.s, i64 584
  store volatile ptr %i.dh, ptr %i.di, align 8
  %i.dj = call ptr @i915_gem_object_create_internal(ptr noundef %i.u, i64 noundef 4096) #19 ; 19 uses
  %i.dk = icmp ugt ptr %i.dj, inttoptr (i64 -4096 to ptr)
  br i1 %i.dk, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not.i.i39.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39.i, label %init_status_page.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  br label %init_status_page.exit.i

bb.ac:                                            ; preds = %bb.z
  call void @i915_gem_object_set_cache_coherency(ptr noundef %i.dj, i32 noundef 1) #19
  %i.dp = load ptr, ptr %i.aa, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call ptr @i915_vma_instance(ptr noundef %i.dj, ptr noundef %i.dr, ptr noundef null) #19 ; 5 uses
  %i.dt = icmp ugt ptr %i.ds, inttoptr (i64 -4096 to ptr)
  br i1 %i.dt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = trunc i64 %i.du to i32
  br label %bb.aw

bb.ae:                                            ; preds = %bb.ac
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #19
  %i.dw = getelementptr i8, ptr %i.dj, i64 248
  %i.dx = getelementptr i8, ptr %i.dj, i64 544    ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dj, i64 552
  %i.dz = getelementptr i8, ptr %i.ds, i64 268    ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.av, %bb.ae
  %i.ea = load i8, ptr %i.n, align 8, !range !18, !noundef !19
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = load ptr, ptr %i.dw, align 8            ; 2 uses
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.ec, ptr noundef nonnull %1) #19
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ee = call i32 @ww_mutex_lock(ptr noundef %i.ec, ptr noundef nonnull %1) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi i32 [ %i.ed, %bb.ag ], [ %i.ee, %bb.ah ] ; 4 uses
  %i.ef = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %i.ef, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.eg = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 1, ptr elementtype(i32) %i.dj) #18, !srcloc !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.ak, !prof !31

bb.ak:                                            ; preds = %bb.aj
  %i.eh = add i32 %i.eg, 1
  %i.ei = or i32 %i.eh, %i.eg
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ei, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !44

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ak, %bb.aj
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.aj ], [ 1, %bb.ak ]
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i) #19
  br label %i915_gem_object_get.exit.i.i.i.i

i915_gem_object_get.exit.i.i.i.i:                 ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ak
  %i.ej = load ptr, ptr %i.p, align 8             ; 2 uses
  store ptr %i.dx, ptr %i.p, align 8
  store ptr %i.o, ptr %i.dx, align 8
  store ptr %i.ej, ptr %i.dy, align 8
  store volatile ptr %i.dx, ptr %i.ej, align 8
  br label %bb.ao

bb.al:                                            ; preds = %bb.ai
  %i.ek = icmp eq i32 %.0.i.i.i.i, -114
  %spec.store.select.i6.i.i.i = select i1 %i.ek, i32 0, i32 %.0.i.i.i.i
  switch i32 %.0.i.i.i.i, label %bb.as [
    i32 -35, label %bb.am
    i32 -114, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.el = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 1, ptr elementtype(i32) %i.dj) #18, !srcloc !49 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, label %bb.an, !prof !31

bb.an:                                            ; preds = %bb.am
  %i.em = add i32 %i.el, 1
  %i.en = or i32 %i.em, %i.el
  %.not10.i.i.i.i.i.i20.i8.i.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i, label %.thread54.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, !prof !44

.sink.split.i.i.i.i.i.i21.i9.i.i.i:               ; preds = %bb.an, %bb.am
  %.sink.i.i.i.i.i.i22.i10.i.i.i = phi i32 [ 2, %bb.am ], [ 1, %bb.an ]
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i) #19
  br label %.thread54.i.i

.thread54.i.i:                                    ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i, %bb.an
  store ptr %i.dj, ptr %i.q, align 8
  br label %bb.av

bb.ao:                                            ; preds = %bb.al, %i915_gem_object_get.exit.i.i.i.i
  %i.eo = load ptr, ptr %i.s, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 1648
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr i8, ptr %i.eq, i64 28
  %i.es = load i64, ptr %i.er, align 4            ; 2 uses
  %i.et = and i64 %i.es, 68719476736
  %.not35.i.i = icmp eq i64 %i.et, 0
  br i1 %.not35.i.i, label %bb.ap, label %.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.eu = and i64 %i.es, 262144
  %.not.i41.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i41.i.i, label %bb.aq, label %2

bb.aq:                                            ; preds = %bb.ap
  %i.ev = load ptr, ptr %i.aa, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr i8, ptr %i.ex, i64 776
  %.val.i.i.i = load i64, ptr %i.ey, align 8
  %.not4.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not4.i.i.i, label %2, label %bb.ar

2:                                                ; preds = %bb.aq, %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %2, %bb.aq
  %.0.i.i.i = phi i32 [ 32, %2 ], [ 8, %bb.aq ]
  %3 = call i32 @i915_ggtt_pin(ptr noundef %i.ds, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.0.i.i.i) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al
  %.0.i.i.i.a = phi i32 [ %spec.store.select.i6.i.i.i, %bb.al ], [ %3, %bb.ar ] ; 2 uses
  %.not36.i.i = icmp eq i32 %.0.i.i.i.a, 0
  br i1 %.not36.i.i, label %.thread.i.i, label %.thread67.i.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ao
  %i.ez = call ptr @i915_gem_object_pin_map(ptr noundef %i.dj, i32 noundef 0) #19 ; 4 uses
  %i.fa = icmp ugt ptr %i.ez, inttoptr (i64 -4096 to ptr)
  br i1 %i.fa, label %bb.at, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %i.ez, i8 0, i64 4096, i1 false)
  %i.fb = getelementptr i8, ptr %i.s, i64 600
  store ptr %i.ez, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.s, i64 592
  store ptr %i.ds, ptr %i.fc, align 8
  br label %.thread52.i.i

bb.at:                                            ; preds = %.thread.i.i
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %.not37.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not37.i.i, label %.thread52.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dz, ptr elementtype(i32) %i.dz) #18, !srcloc !63
  br label %.thread67.i.i

.thread67.i.i:                                    ; preds = %bb.au, %bb.as
  %.2.i.i = phi i32 [ %.0.i.i.i.a, %bb.as ], [ %i.fe, %bb.au ] ; 2 uses
  %i.ff = icmp eq i32 %.2.i.i, -35
  br i1 %i.ff, label %bb.av, label %.thread52.i.i

bb.av:                                            ; preds = %.thread67.i.i, %.thread54.i.i
  %i.fg = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #19 ; 2 uses
  %.not38.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not38.i.i, label %bb.af, label %.thread52.i.i

.thread52.i.i:                                    ; preds = %bb.av, %.thread67.i.i, %bb.at, %.thread49.i.i
  %.3.i.i = phi i32 [ 0, %.thread49.i.i ], [ 0, %bb.at ], [ %.2.i.i, %.thread67.i.i ], [ %i.fg, %bb.av ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #19
  br label %bb.aw

bb.aw:                                            ; preds = %.thread52.i.i, %bb.ad
  %.4.i.i = phi i32 [ %i.dv, %bb.ad ], [ %.3.i.i, %.thread52.i.i ] ; 2 uses
  %.not39.i.i = icmp eq i32 %.4.i.i, 0
  br i1 %.not39.i.i, label %init_status_page.exit.thread45.i, label %bb.ax

init_status_page.exit.thread45.i:                 ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.fh = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 -1, ptr elementtype(i32) %i.dj) #18, !srcloc !49 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fj = icmp slt i32 %i.fh, 1
  br i1 %i.fj, label %bb.az, label %init_status_page.exit.thread.i, !prof !31

bb.az:                                            ; preds = %bb.ay
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef 3) #19
  br label %init_status_page.exit.thread.i

bb.ba:                                            ; preds = %bb.ax
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !50
  call void @drm_gem_object_free(ptr noundef %i.dj) #19, !inline_history !51
  br label %init_status_page.exit.thread.i

init_status_page.exit.thread.i:                   ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %engine_setup_common.exit.thread

init_status_page.exit.i:                          ; preds = %bb.ab, %bb.aa
  %i.fk = phi ptr [ %i.do, %bb.ab ], [ null, %bb.aa ]
  %i.fl = getelementptr i8, ptr %i.dl, i64 4936
  %i.fm = load i32, ptr %i.fl, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.fk, ptr noundef nonnull @.str.43, i32 noundef %i.fm) #21
  %i.fn = ptrtoint ptr %i.dj to i64
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not35.i = icmp eq i32 %i.fo, 0
  br i1 %.not35.i, label %bb.bb, label %engine_setup_common.exit.thread

bb.bb:                                            ; preds = %init_status_page.exit.i, %init_status_page.exit.thread45.i
  %i.fp = call ptr @intel_breadcrumbs_create(ptr noundef nonnull %i.s) #19 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.s, i64 528
  store ptr %i.fp, ptr %i.fq, align 8
  %.not36.i = icmp eq ptr %i.fp, null
  br i1 %.not36.i, label %intel_breadcrumbs_put.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fr = call ptr @i915_sched_engine_create(i32 noundef 0) #19 ; 3 uses
  %i.fs = getelementptr i8, ptr %i.s, i64 144
  store ptr %i.fr, ptr %i.fs, align 8
  %.not37.i = icmp eq ptr %i.fr, null
  br i1 %.not37.i, label %i915_sched_engine_put.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = getelementptr i8, ptr %i.fr, i64 160
  store ptr %i.s, ptr %i.ft, align 8
  %i.fu = call i32 @intel_engine_init_cmd_parser(ptr noundef nonnull %i.s) #19 ; 4 uses
  %.not38.i = icmp eq i32 %i.fu, 0
  br i1 %.not38.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.fv = getelementptr i8, ptr %i.s, i64 1136
  store i32 1, ptr %i.fv, align 8
  %i.fw = getelementptr i8, ptr %i.s, i64 1088    ; 2 uses
  %i.fx = getelementptr i8, ptr %i.s, i64 1080
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %i.fw, i8 0, i64 48, i1 false)
  store ptr %i.fw, ptr %i.fx, align 8
  call void @intel_engine_init__pm(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_retire(ptr noundef nonnull %i.s) #19
  %i.fy = getelementptr i8, ptr %i.s, i64 136
  %i.fz = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4952
  %i.gb = load i8, ptr %i.ga, align 8
  %i.gc = getelementptr i8, ptr %i.fz, i64 4960
  %i.gd = load i8, ptr %i.gc, align 8
  %i.ge = getelementptr i8, ptr %i.fz, i64 5122
  %i.gf = load i8, ptr %i.ge, align 2
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.gf to i32 ; 2 uses
  %.sroa.5.0.insert.shift.i.i = shl nuw i32 %.sroa.5.0.insert.ext.i.i, 24
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.ext.i.i = zext i8 %i.gd to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.gb to i32
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.fy, align 8
  call void @intel_engine_init_workarounds(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_whitelist(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_ctx_wa(ptr noundef nonnull %i.s) #19
  %i.gg = load ptr, ptr %i.s, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 1656
  %i.gi = load i8, ptr %i.gh, align 8
  %i.gj = icmp ugt i8 %i.gi, 11
  br i1 %i.gj, label %bb.bf, label %engine_setup_common.exit

bb.bf:                                            ; preds = %bb.be
  %i.gk = getelementptr i8, ptr %i.s, i64 1240    ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = or i32 %i.gl, 64
  store i32 %i.gm, ptr %i.gk, align 8
  br label %engine_setup_common.exit

bb.bg:                                            ; preds = %bb.bd
  %i.gn = getelementptr i8, ptr %i.s, i64 144
  %i.go = load ptr, ptr %i.gn, align 8            ; 5 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 168
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.go, i32 -1, ptr elementtype(i32) %i.go) #18, !srcloc !49 ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gt = icmp slt i32 %i.gr, 1
  br i1 %i.gt, label %bb.bi, label %i915_sched_engine_put.exit.i, !prof !31

bb.bi:                                            ; preds = %bb.bh
  call void @refcount_warn_saturate(ptr noundef %i.go, i32 noundef 3) #19
  br label %i915_sched_engine_put.exit.i

bb.bj:                                            ; preds = %bb.bg
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !50
  call void %i.gq(ptr noundef %i.go) #19, !inline_history !64
  br label %i915_sched_engine_put.exit.i

i915_sched_engine_put.exit.i:                     ; preds = %bb.bc, %bb.bj, %bb.bi, %bb.bh
  %.030.i = phi i32 [ %i.fu, %bb.bj ], [ %i.fu, %bb.bh ], [ %i.fu, %bb.bi ], [ -12, %bb.bc ] ; 3 uses
  %i.gu = getelementptr i8, ptr %i.s, i64 528
  %i.gv = load ptr, ptr %i.gu, align 8            ; 4 uses
  %i.gw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gv, i32 -1, ptr elementtype(i32) %i.gv) #18, !srcloc !49 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %i915_sched_engine_put.exit.i
  %i.gy = icmp slt i32 %i.gw, 1
  br i1 %i.gy, label %bb.bl, label %intel_breadcrumbs_put.exit.i, !prof !31

bb.bl:                                            ; preds = %bb.bk
  call void @refcount_warn_saturate(ptr noundef %i.gv, i32 noundef 3) #19
  br label %intel_breadcrumbs_put.exit.i

bb.bm:                                            ; preds = %i915_sched_engine_put.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !50
  call void @intel_breadcrumbs_free(ptr noundef %i.gv) #19, !inline_history !51
  br label %intel_breadcrumbs_put.exit.i

intel_breadcrumbs_put.exit.i:                     ; preds = %bb.bb, %bb.bm, %bb.bl, %bb.bk
  %.1.i = phi i32 [ %.030.i, %bb.bm ], [ %.030.i, %bb.bk ], [ %.030.i, %bb.bl ], [ -12, %bb.bb ]
  call fastcc void @cleanup_status_page(ptr noundef nonnull %i.s) #23, !srcloc !65
  br label %engine_setup_common.exit.thread

engine_setup_common.exit:                         ; preds = %bb.bf, %bb.be
  %i.gz = call i32 %.021(ptr noundef nonnull %i.s) #19, !callees !66 ; 2 uses
  %.not29 = icmp eq i32 %i.gz, 0
  br i1 %.not29, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %engine_setup_common.exit
  call void @intel_engine_cleanup_common(ptr noundef nonnull %i.s) #23
  br label %engine_setup_common.exit.thread

bb.bo:                                            ; preds = %engine_setup_common.exit
  %i.ha = getelementptr i8, ptr %i.s, i64 856
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull %i.s) #19, !inline_history !67
  %i.hc = load ptr, ptr %i.aa, align 8
  %i.hd = getelementptr i8, ptr %i.hc, i64 4680
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call ptr @intel_engine_create_pinned_context(ptr noundef nonnull %i.s, ptr noundef %i.he, i32 noundef 4096, i32 noundef 256, ptr nonnull poison, ptr nonnull poison) #23 ; 7 uses
  %i.hg = icmp ugt ptr %i.hf, inttoptr (i64 -4096 to ptr)
  br i1 %i.hg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = trunc i64 %i.hh to i32
  br label %engine_init_common.exit

bb.bq:                                            ; preds = %bb.bo
  %i.hj = load ptr, ptr %i.s, align 8
  %i.hk = call zeroext i1 @i915_ggtt_require_binder(ptr noundef %i.hj) #19
  br i1 %i.hk, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.hl = getelementptr i8, ptr %i.s, i64 32
  %i.hm = load i32, ptr %i.hl, align 8
end_hunk_0

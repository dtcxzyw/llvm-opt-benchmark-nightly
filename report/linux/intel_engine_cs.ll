Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_engine_cs?download=true
inline.NumInlined: 384
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@intel_engines_init:bb.a

__drm_to_dev.exit112.i.i:                         ; preds = %bb.o, %__drm_to_dev.exit110.i.i
  %i.bn = phi ptr [ %i.bm, %bb.o ], [ null, %__drm_to_dev.exit110.i.i ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i113.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i113.i.i, label %bb.p, label %dev_name.exit116.i.i

bb.p:                                             ; preds = %__drm_to_dev.exit112.i.i
  %.val.i115.i.i = load ptr, ptr %i.bn, align 8
  br label %dev_name.exit116.i.i

dev_name.exit116.i.i:                             ; preds = %bb.p, %__drm_to_dev.exit112.i.i
  %.0.i114.i.i = phi ptr [ %.val.i115.i.i, %bb.p ], [ %i.bp, %__drm_to_dev.exit112.i.i ]
  %i.bq = getelementptr i8, ptr %i.bj, i64 4936
  %i.br = load i32, ptr %i.bq, align 8
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bc, ptr noundef %i.bi, ptr noundef %.0.i114.i.i, i32 noundef %i.br) #19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !74
  br label %engine_setup_common.exit.thread

.critedge.i.i:                                    ; preds = %bb.k, %bb.j, %bb.i, %bb.i, %bb.i, %bb.i, %bb.h
  %.089.i.i = phi i32 [ 6, %bb.i ], [ 6, %bb.i ], [ 4, %bb.k ], [ 6, %bb.j ], [ 6, %bb.i ], [ 6, %bb.i ], [ 5, %bb.h ]
  %i.bs = phi i1 [ false, %bb.i ], [ false, %bb.i ], [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.i ], [ false, %bb.h ]
  %i.bt = phi i8 [ 1, %bb.i ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.i ], [ 1, %bb.i ], [ 0, %bb.h ]
  %.088.i.i = phi ptr [ @intel_engine_init_tlb_invalidation.xehp_regs, %bb.i ], [ @intel_engine_init_tlb_invalidation.xehp_regs, %bb.i ], [ @intel_engine_init_tlb_invalidation.gen8_regs, %bb.k ], [ @intel_engine_init_tlb_invalidation.gen12_regs, %bb.j ], [ @intel_engine_init_tlb_invalidation.xehp_regs, %bb.i ], [ @intel_engine_init_tlb_invalidation.xehp_regs, %bb.i ], [ @intel_engine_init_tlb_invalidation.xelpmp_regs, %bb.h ]
  %.not95.i.i = icmp samesign ugt i32 %.089.i.i, %i.z
  br i1 %.not95.i.i, label %bb.q, label %.critedge105.i.i

bb.q:                                             ; preds = %.critedge.i.i
  %i.bu = zext i8 %i.y to i64
  %i.bv = getelementptr [4 x i8], ptr %.088.i.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4            ; 3 uses
  %.not96.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not96.i.i, label %.critedge105.i.i, label %.critedge99.i.i, !prof !21

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
  %i.cc = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.41, ptr nonnull @.str.2, i32 1206, i32 2323, i64 16) #18, !srcloc !75
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !76
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !20
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
  br label %bb.av

bb.ae:                                            ; preds = %bb.ac
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #19
  %i.dw = getelementptr i8, ptr %i.dj, i64 248
  %i.dx = getelementptr i8, ptr %i.dj, i64 544    ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dj, i64 552
  %i.dz = getelementptr i8, ptr %i.ds, i64 268    ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.au, %bb.ae
  %i.ea = load i8, ptr %i.n, align 8, !range !17, !noundef !18
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
  %2 = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %2, label %bb.aj, label %3

bb.aj:                                            ; preds = %bb.ai
  %i.ef = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 1, ptr elementtype(i32) %i.dj) #18, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %i.eg = add i32 %i.ef, 1
  %i.eh = or i32 %i.eg, %i.ef
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.eh, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !22

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ak, %bb.aj
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.aj ], [ 1, %bb.ak ]
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i) #19
  br label %i915_gem_object_get.exit.i.i.i.i

i915_gem_object_get.exit.i.i.i.i:                 ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ak
  %i.ei = load ptr, ptr %i.p, align 8             ; 2 uses
  store ptr %i.dx, ptr %i.p, align 8
  store ptr %i.o, ptr %i.dx, align 8
  store ptr %i.ei, ptr %i.dy, align 8
  store volatile ptr %i.dx, ptr %i.ei, align 8
  br label %3

3:                                                ; preds = %i915_gem_object_get.exit.i.i.i.i, %bb.ai
  %4 = icmp eq i32 %.0.i.i.i.i, -114
  %spec.store.select.i6.i.i.i = select i1 %4, i32 0, i32 %.0.i.i.i.i
  switch i32 %spec.store.select.i6.i.i.i, label %.thread67.i.i [
    i32 -35, label %bb.al
    i32 0, label %bb.an
  ]

bb.al:                                            ; preds = %3
  %i.ej = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 1, ptr elementtype(i32) %i.dj) #18, !srcloc !23 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  %i.ek = add i32 %i.ej, 1
  %i.el = or i32 %i.ek, %i.ej
  %.not10.i.i.i.i.i.i20.i8.i.i.i = icmp sgt i32 %i.el, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i, label %.thread54.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, !prof !22

.sink.split.i.i.i.i.i.i21.i9.i.i.i:               ; preds = %bb.am, %bb.al
  %.sink.i.i.i.i.i.i22.i10.i.i.i = phi i32 [ 2, %bb.al ], [ 1, %bb.am ]
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i) #19
  br label %.thread54.i.i

.thread54.i.i:                                    ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i, %bb.am
  store ptr %i.dj, ptr %i.q, align 8
  br label %bb.au

bb.an:                                            ; preds = %3
  %i.em = load ptr, ptr %i.s, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 1648
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 28
  %i.eq = load i64, ptr %i.ep, align 4            ; 2 uses
  %i.er = and i64 %i.eq, 68719476736
  %.not35.i.i = icmp eq i64 %i.er, 0
  br i1 %.not35.i.i, label %bb.ao, label %.thread.i.i

bb.ao:                                            ; preds = %bb.an
  %i.es = and i64 %i.eq, 262144
  %.not.i41.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i41.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.et = load ptr, ptr %i.aa, align 8
  %i.eu = getelementptr i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 776
  %.val.i.i.i = load i64, ptr %i.ew, align 8
  %.not4.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not4.i.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i.i.i = phi i32 [ 32, %bb.aq ], [ 8, %bb.ap ]
  %i.ex = call i32 @i915_ggtt_pin(ptr noundef %i.ds, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %.0.i.i.i) #19 ; 2 uses
  %.not36.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not36.i.i, label %.thread.i.i, label %.thread67.i.i

.thread.i.i:                                      ; preds = %bb.ar, %bb.an
  %i.ey = call ptr @i915_gem_object_pin_map(ptr noundef %i.dj, i32 noundef 0) #19 ; 4 uses
  %i.ez = icmp ugt ptr %i.ey, inttoptr (i64 -4096 to ptr)
  br i1 %i.ez, label %bb.as, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %i.ey, i8 0, i64 4096, i1 false)
  %i.fa = getelementptr i8, ptr %i.s, i64 600
  store ptr %i.ey, ptr %i.fa, align 8
  %i.fb = getelementptr i8, ptr %i.s, i64 592
  store ptr %i.ds, ptr %i.fb, align 8
  br label %.thread52.i.i

bb.as:                                            ; preds = %.thread.i.i
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %.not37.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not37.i.i, label %.thread52.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dz, ptr elementtype(i32) %i.dz) #18, !srcloc !28
  br label %.thread67.i.i

.thread67.i.i:                                    ; preds = %bb.at, %bb.ar, %3
  %.2.i.i = phi i32 [ %i.ex, %bb.ar ], [ %i.fd, %bb.at ], [ %.0.i.i.i.i, %3 ] ; 2 uses
  %i.fe = icmp eq i32 %.2.i.i, -35
  br i1 %i.fe, label %bb.au, label %.thread52.i.i

bb.au:                                            ; preds = %.thread67.i.i, %.thread54.i.i
  %i.ff = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #19 ; 2 uses
  %.not38.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not38.i.i, label %bb.af, label %.thread52.i.i

.thread52.i.i:                                    ; preds = %bb.au, %.thread67.i.i, %bb.as, %.thread49.i.i
  %.3.i.i = phi i32 [ 0, %.thread49.i.i ], [ 0, %bb.as ], [ %.2.i.i, %.thread67.i.i ], [ %i.ff, %bb.au ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #19
  br label %bb.av

bb.av:                                            ; preds = %.thread52.i.i, %bb.ad
  %.4.i.i = phi i32 [ %i.dv, %bb.ad ], [ %.3.i.i, %.thread52.i.i ] ; 2 uses
  %.not39.i.i = icmp eq i32 %.4.i.i, 0
  br i1 %.not39.i.i, label %init_status_page.exit.thread45.i, label %bb.aw

init_status_page.exit.thread45.i:                 ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.fg = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj, i32 -1, ptr elementtype(i32) %i.dj) #18, !srcloc !23 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = icmp slt i32 %i.fg, 1
  br i1 %i.fi, label %bb.ay, label %init_status_page.exit.thread.i, !prof !21

bb.ay:                                            ; preds = %bb.ax
  call void @refcount_warn_saturate(ptr noundef %i.dj, i32 noundef 3) #19
  br label %init_status_page.exit.thread.i

bb.az:                                            ; preds = %bb.aw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  call void @drm_gem_object_free(ptr noundef %i.dj) #19, !inline_history !3
  br label %init_status_page.exit.thread.i

init_status_page.exit.thread.i:                   ; preds = %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %engine_setup_common.exit.thread

init_status_page.exit.i:                          ; preds = %bb.ab, %bb.aa
  %i.fj = phi ptr [ %i.do, %bb.ab ], [ null, %bb.aa ]
  %i.fk = getelementptr i8, ptr %i.dl, i64 4936
  %i.fl = load i32, ptr %i.fk, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.fj, ptr noundef nonnull @.str.43, i32 noundef %i.fl) #21
  %i.fm = ptrtoint ptr %i.dj to i64
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not35.i = icmp eq i32 %i.fn, 0
  br i1 %.not35.i, label %bb.ba, label %engine_setup_common.exit.thread

bb.ba:                                            ; preds = %init_status_page.exit.i, %init_status_page.exit.thread45.i
  %i.fo = call ptr @intel_breadcrumbs_create(ptr noundef nonnull %i.s) #19 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.s, i64 528
  store ptr %i.fo, ptr %i.fp, align 8
  %.not36.i = icmp eq ptr %i.fo, null
  br i1 %.not36.i, label %intel_breadcrumbs_put.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = call ptr @i915_sched_engine_create(i32 noundef 0) #19 ; 3 uses
  %i.fr = getelementptr i8, ptr %i.s, i64 144
  store ptr %i.fq, ptr %i.fr, align 8
  %.not37.i = icmp eq ptr %i.fq, null
  br i1 %.not37.i, label %i915_sched_engine_put.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = getelementptr i8, ptr %i.fq, i64 160
  store ptr %i.s, ptr %i.fs, align 8
  %i.ft = call i32 @intel_engine_init_cmd_parser(ptr noundef nonnull %i.s) #19 ; 4 uses
  %.not38.i = icmp eq i32 %i.ft, 0
  br i1 %.not38.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fu = getelementptr i8, ptr %i.s, i64 1136
  store i32 1, ptr %i.fu, align 8
  %i.fv = getelementptr i8, ptr %i.s, i64 1088    ; 2 uses
  %i.fw = getelementptr i8, ptr %i.s, i64 1080
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %i.fv, i8 0, i64 48, i1 false)
  store ptr %i.fv, ptr %i.fw, align 8
  call void @intel_engine_init__pm(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_retire(ptr noundef nonnull %i.s) #19
  %i.fx = getelementptr i8, ptr %i.s, i64 136
  %i.fy = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4952
  %i.ga = load i8, ptr %i.fz, align 8
  %i.gb = getelementptr i8, ptr %i.fy, i64 4960
  %i.gc = load i8, ptr %i.gb, align 8
  %i.gd = getelementptr i8, ptr %i.fy, i64 5122
  %i.ge = load i8, ptr %i.gd, align 2
  %.sroa.5.0.insert.ext.i.i = zext i8 %i.ge to i32 ; 2 uses
  %.sroa.5.0.insert.shift.i.i = shl nuw i32 %.sroa.5.0.insert.ext.i.i, 24
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.ext.i.i = zext i8 %i.gc to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.ga to i32
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.fx, align 8
  call void @intel_engine_init_workarounds(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_whitelist(ptr noundef nonnull %i.s) #19
  call void @intel_engine_init_ctx_wa(ptr noundef nonnull %i.s) #19
  %i.gf = load ptr, ptr %i.s, align 8
  %i.gg = getelementptr i8, ptr %i.gf, i64 1656
  %i.gh = load i8, ptr %i.gg, align 8
  %i.gi = icmp ugt i8 %i.gh, 11
  br i1 %i.gi, label %bb.be, label %engine_setup_common.exit

bb.be:                                            ; preds = %bb.bd
  %i.gj = getelementptr i8, ptr %i.s, i64 1240    ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = or i32 %i.gk, 64
  store i32 %i.gl, ptr %i.gj, align 8
  br label %engine_setup_common.exit

bb.bf:                                            ; preds = %bb.bc
  %i.gm = getelementptr i8, ptr %i.s, i64 144
  %i.gn = load ptr, ptr %i.gm, align 8            ; 5 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 168
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gn, i32 -1, ptr elementtype(i32) %i.gn) #18, !srcloc !23 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 1
  br i1 %i.gr, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gs = icmp slt i32 %i.gq, 1
  br i1 %i.gs, label %bb.bh, label %i915_sched_engine_put.exit.i, !prof !21

bb.bh:                                            ; preds = %bb.bg
  call void @refcount_warn_saturate(ptr noundef %i.gn, i32 noundef 3) #19
  br label %i915_sched_engine_put.exit.i

bb.bi:                                            ; preds = %bb.bf
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  call void %i.gp(ptr noundef %i.gn) #19, !inline_history !69
  br label %i915_sched_engine_put.exit.i

i915_sched_engine_put.exit.i:                     ; preds = %bb.bb, %bb.bi, %bb.bh, %bb.bg
  %.030.i = phi i32 [ %i.ft, %bb.bi ], [ %i.ft, %bb.bg ], [ %i.ft, %bb.bh ], [ -12, %bb.bb ] ; 3 uses
  %i.gt = getelementptr i8, ptr %i.s, i64 528
  %i.gu = load ptr, ptr %i.gt, align 8            ; 4 uses
  %i.gv = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gu, i32 -1, ptr elementtype(i32) %i.gu) #18, !srcloc !23 ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %i915_sched_engine_put.exit.i
  %i.gx = icmp slt i32 %i.gv, 1
  br i1 %i.gx, label %bb.bk, label %intel_breadcrumbs_put.exit.i, !prof !21

bb.bk:                                            ; preds = %bb.bj
  call void @refcount_warn_saturate(ptr noundef %i.gu, i32 noundef 3) #19
  br label %intel_breadcrumbs_put.exit.i

bb.bl:                                            ; preds = %i915_sched_engine_put.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  call void @intel_breadcrumbs_free(ptr noundef %i.gu) #19, !inline_history !3
  br label %intel_breadcrumbs_put.exit.i

intel_breadcrumbs_put.exit.i:                     ; preds = %bb.ba, %bb.bl, %bb.bk, %bb.bj
  %.1.i = phi i32 [ %.030.i, %bb.bl ], [ %.030.i, %bb.bj ], [ %.030.i, %bb.bk ], [ -12, %bb.ba ]
  call fastcc void @cleanup_status_page(ptr noundef nonnull %i.s) #23, !srcloc !77
  br label %engine_setup_common.exit.thread

engine_setup_common.exit:                         ; preds = %bb.be, %bb.bd
  %i.gy = call i32 %.021(ptr noundef nonnull %i.s) #19, !callees !78 ; 2 uses
  %.not29 = icmp eq i32 %i.gy, 0
  br i1 %.not29, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %engine_setup_common.exit
  call void @intel_engine_cleanup_common(ptr noundef nonnull %i.s) #23
  br label %engine_setup_common.exit.thread

bb.bn:                                            ; preds = %engine_setup_common.exit
  %i.gz = getelementptr i8, ptr %i.s, i64 856
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull %i.s) #19, !inline_history !70
  %i.hb = load ptr, ptr %i.aa, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 4680
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call ptr @intel_engine_create_pinned_context(ptr noundef nonnull %i.s, ptr noundef %i.hd, i32 noundef 4096, i32 noundef 256, ptr nonnull poison, ptr nonnull poison) #23 ; 7 uses
  %i.hf = icmp ugt ptr %i.he, inttoptr (i64 -4096 to ptr)
  br i1 %i.hf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = trunc i64 %i.hg to i32
  br label %engine_init_common.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hi = load ptr, ptr %i.s, align 8
  %i.hj = call zeroext i1 @i915_ggtt_require_binder(ptr noundef %i.hi) #19
  br i1 %i.hj, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.hk = getelementptr i8, ptr %i.s, i64 32
  %i.hl = load i32, ptr %i.hk, align 8
end_hunk_0

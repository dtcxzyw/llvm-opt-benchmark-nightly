inline.NumInlined: 161
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lrc_check_regs:bb.a
  %i.ax = getelementptr [4 x i8], ptr %i.d, i64 %.0.i.ph
  %i.ay = getelementptr i8, ptr %i.ax, i64 4      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = and i32 %i.az, 256
  %i.bc = and i32 %i.bb, %i.ba
  %.not41 = icmp eq i32 %i.bc, 0
  br i1 %.not41, label %lrc_ring_mi_mode.exit, label %.critedge

.critedge:                                        ; preds = %select.unfold
  %i.bd = getelementptr i8, ptr %1, i64 24
  %i.be = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %i.bd, i32 noundef %i.az) #15 ; 0 uses
  %i.bf = load i32, ptr %i.ay, align 4
  %i.bg = and i32 %i.bf, -16777473
  %i.bh = or disjoint i32 %i.bg, 16777216
  store i32 %i.bh, ptr %i.ay, align 4
  br label %bb.i

lrc_ring_mi_mode.exit:                            ; preds = %bb.h, %select.unfold
  br i1 %.1, label %bb.j, label %bb.i, !prof !24

bb.i:                                             ; preds = %.critedge, %lrc_ring_mi_mode.exit
  %i.bi = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1619, i32 2323, i64 16) #14, !srcloc !34
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bi, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %lrc_ring_mi_mode.exit
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_fini_wa_ctx(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 624
  tail call void @i915_vma_unpin_and_release(ptr noundef %i.a, i32 noundef 0) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_unpin_and_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_init_wa_ctx(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.i915_gem_ww_ctx, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 608        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !36
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1656
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = icmp ugt i8 %i.e, 10
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 1240
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 512
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.e, label %bb.f [
    i8 9, label %bb.d
    i8 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.not56 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ]
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ @gen9_init_indirectctx_bb, %bb.d ], [ @gen8_init_indirectctx_bb, %bb.e ]
  %i.j = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.c, i64 noundef 4096) #13 ; 7 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %lrc_create_wa_ctx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @i915_vma_instance(ptr noundef %i.j, ptr noundef %i.o, ptr noundef null) #13 ; 6 uses
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.h, label %lrc_create_wa_ctx.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 -1, ptr elementtype(i32) %i.j) #14, !srcloc !19 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %bb.j, label %lrc_create_wa_ctx.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  tail call void @refcount_warn_saturate(ptr noundef %i.j, i32 noundef 3) #13
  br label %lrc_create_wa_ctx.exit

bb.k:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %i.j) #13, !callees !22, !inline_history !23
  br label %lrc_create_wa_ctx.exit

lrc_create_wa_ctx.exit.thread:                    ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 624
  store ptr %i.p, ptr %i.u, align 8
  br label %bb.n

lrc_create_wa_ctx.exit:                           ; preds = %bb.f, %bb.i, %bb.j, %bb.k
  %.0.i.in.in = phi ptr [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.i ], [ %i.j, %bb.f ]
  %.0.i.in = ptrtoint ptr %.0.i.in.in to i64
  %.0.i = trunc i64 %.0.i.in to i32               ; 2 uses
  %.not52 = icmp eq i32 %.0.i, 0
  br i1 %.not52, label %lrc_create_wa_ctx.exit._crit_edge, label %bb.l

lrc_create_wa_ctx.exit._crit_edge:                ; preds = %lrc_create_wa_ctx.exit
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 624
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.l:                                             ; preds = %lrc_create_wa_ctx.exit
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.l, %bb.m
  %i.y = phi ptr [ %i.x, %bb.m ], [ null, %bb.l ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.y, ptr noundef nonnull @.str.5, i32 noundef %.0.i) #15
  br label %bb.ai

bb.n:                                             ; preds = %lrc_create_wa_ctx.exit._crit_edge, %lrc_create_wa_ctx.exit.thread
  %i.z = phi ptr [ %.pre, %lrc_create_wa_ctx.exit._crit_edge ], [ %i.p, %lrc_create_wa_ctx.exit.thread ]
  %i.aa = getelementptr i8, ptr %0, i64 624       ; 7 uses
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %1, i1 noundef zeroext true) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %bb.ad, %bb.o
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.ai = load i8, ptr %i.ab, align 8, !range !15, !noundef !16
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr i8, ptr %i.ah, i64 248
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.al, ptr noundef nonnull %1) #13
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.an = call i32 @ww_mutex_lock(ptr noundef %i.al, ptr noundef nonnull %1) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi i32 [ %i.am, %bb.q ], [ %i.an, %bb.r ] ; 4 uses
  %i.ao = icmp eq i32 %.0.i.i, 0
  br i1 %i.ao, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ap = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 1, ptr elementtype(i32) %i.ah) #14, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.aq = add i32 %i.ap, 1
  %i.ar = or i32 %i.aq, %i.ap
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !24

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.u, %bb.t
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.t ], [ 1, %bb.u ]
  call void @refcount_warn_saturate(ptr noundef %i.ah, i32 noundef %.sink.i.i.i.i.i.i.i.i) #13
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.u
  %i.as = getelementptr i8, ptr %i.ah, i64 544    ; 3 uses
  %i.at = load ptr, ptr %i.ad, align 8            ; 2 uses
  store ptr %i.as, ptr %i.ad, align 8
  store ptr %i.ac, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.ah, i64 552
  store ptr %i.at, ptr %i.au, align 8
  store volatile ptr %i.as, ptr %i.at, align 8
  br label %bb.v

bb.v:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.s
  %i.av = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.av, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread [
    i32 -35, label %bb.w
    i32 0, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.aw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 1, ptr elementtype(i32) %i.ah) #14, !srcloc !19 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.ax = add i32 %i.aw, 1
  %i.ay = or i32 %i.ax, %i.aw
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ay, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread72, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !24

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.w ], [ 1, %bb.x ]
  call void @refcount_warn_saturate(ptr noundef %i.ah, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #13
  br label %.thread72

.thread72:                                        ; preds = %bb.x, %.sink.split.i.i.i.i.i.i21.i9.i
  store ptr %i.ah, ptr %i.ae, align 8
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
  %2 = load ptr, ptr %i.aa, align 8
  %3 = call i32 @i915_ggtt_pin(ptr noundef %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 32) #13 ; 2 uses
  %.not55 = icmp eq i32 %3, 0
  br i1 %.not55, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.az = load ptr, ptr %i.aa, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call ptr @i915_gem_object_pin_map(ptr noundef %i.bb, i32 noundef 0) #13 ; 5 uses
  %i.bd = icmp ugt ptr %i.bc, inttoptr (i64 -4096 to ptr)
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  br i1 %i.bd, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.z
  store i32 0, ptr %i.a, align 8
  br i1 %.not56, label %.thread67, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.bf = call ptr %.sroa.0.0(ptr noundef %0, ptr noundef %i.bc) #13
  %.pre87 = load i32, ptr %i.a, align 8
  %.pre89 = ptrtoint ptr %i.bf to i64
  %i.bg = zext i32 %.pre87 to i64
  br label %.thread67

.thread67:                                        ; preds = %bb.aa, %.preheader
  %.pre-phi = phi i64 [ %.pre89, %bb.aa ], [ %i.be, %.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.bg, %bb.aa ], [ 0, %.preheader ]
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %.pre-phi, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr i8, ptr %0, i64 612
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = sub i64 %.pre-phi, %i.be                ; 3 uses
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.b, align 8
  %.pre88 = load ptr, ptr %i.aa, align 8
  %i.bp = and i64 %i.bn, 4294967295
  %i.bq = getelementptr i8, ptr %i.bc, i64 %i.bp
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %.pre-phi, %i.br
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr i8, ptr %0, i64 620
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr i8, ptr %.pre88, i64 184
  %i.bw = load ptr, ptr %i.bv, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.bw, i64 noundef 0, i64 noundef %i.bn) #13
  %i.bx = load ptr, ptr %i.aa, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 184
  %i.bz = load ptr, ptr %i.by, align 8
  call void @__i915_gem_object_release_map(ptr noundef %i.bz) #13
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.ca = trunc i64 %i.be to i32                  ; 2 uses
  %.not57 = icmp eq i32 %i.ca, 0
  br i1 %.not57, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %i.aa, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cc, ptr elementtype(i32) %i.cc) #14, !srcloc !29
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.ac, %bb.y
  %.2 = phi i32 [ %3, %bb.y ], [ %i.ca, %bb.ac ], [ %.0.i.i, %bb.v ]
  %i.cd = icmp eq i32 %.2, -35
  br i1 %i.cd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread72, %.thread
  %i.ce = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #13
  %.not58 = icmp eq i32 %i.ce, 0
  br i1 %.not58, label %bb.p, label %bb.ae

.loopexit:                                        ; preds = %bb.ab, %.thread67
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #13
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %.thread
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #13
  %i.cf = load ptr, ptr %i.aa, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 184
  %.val = load ptr, ptr %i.cg, align 8            ; 4 uses
  %i.ch = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #14, !srcloc !19 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp slt i32 %i.ch, 1
  br i1 %i.cj, label %bb.ag, label %i915_vma_put.exit, !prof !20

bb.ag:                                            ; preds = %bb.af
  call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #13
  br label %i915_vma_put.exit

bb.ah:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  call void @drm_gem_object_free(ptr noundef %.val) #13, !callees !22, !inline_history !23
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %i915_vma_put.exit, %bb.n, %bb.a, %bb.b, %__drm_to_dev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal ptr @gen9_init_indirectctx_bb(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 128)) %1) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 67108864, ptr %1, align 4
  %i.b = getelementptr i8, ptr %1, i64 8
  store i32 306184194, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 12
  store i32 45336, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4848
  %.val17.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.g = getelementptr i8, ptr %.val17.i, i64 8
  %.val17.val.i = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.val17.i, i64 248
  %.val17.val18.i = load i32, ptr %i.h, align 8
  %i.i = trunc i64 %.val17.val.i to i32
  %i.j = add i32 %i.i, 256
  %i.k = add i32 %i.j, %.val17.val18.i
  %i.l = getelementptr i8, ptr %1, i64 16
  store i32 %i.k, ptr %i.c, align 4
  %i.m = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %1, i64 24
  store i32 285212673, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %1, i64 28
  store i32 45336, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %1, i64 32
  store i32 1080033280, ptr %i.o, align 4
  %i.q = getelementptr i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %1, i64 36
  store i32 1048608, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %1, i64 56
  %i.u = getelementptr i8, ptr %1, i64 60
  store i32 348127234, ptr %i.t, align 4
  %i.v = getelementptr i8, ptr %1, i64 64
  store i32 45336, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4848
  %.val.i = load ptr, ptr %i.x, align 8           ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i64, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 248
  %.val.val19.i = load i32, ptr %i.z, align 8
  %i.aa = trunc i64 %.val.val.i to i32
  %i.ab = add i32 %i.aa, 256
  %i.ac = add i32 %i.ab, %.val.val19.i
  %i.ad = getelementptr i8, ptr %1, i64 68
  store i32 %i.ac, ptr %i.v, align 4
  %i.ae = getelementptr i8, ptr %1, i64 72
  store i32 0, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %1, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i8 0, i64 12, i1 false)
  store i32 2046820356, ptr %i.ae, align 4
  %i.ag = getelementptr i8, ptr %1, i64 76
  store i32 137379840, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %1, i64 80
  store i32 208, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %1, i64 96
  %i.aj = getelementptr i8, ptr %1, i64 100
  store i32 285212677, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %1, i64 104
  store i32 28692, ptr %i.aj, align 4
  %i.al = getelementptr i8, ptr %1, i64 108
  store i32 268435456, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %1, i64 112
  store i32 8328, ptr %i.al, align 4
  %i.an = getelementptr i8, ptr %1, i64 116
  store i32 131074, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %1, i64 120
  store i32 8336, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %1, i64 124
  store i32 268439552, ptr %i.ao, align 4
  %i.aq = getelementptr i8, ptr %1, i64 128       ; 2 uses
  store i32 0, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 1688
  %i.at = load i8, ptr %i.as, align 8, !range !15, !noundef !16
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr i8, ptr %1, i64 132
  store i32 1879375876, ptr %i.aq, align 4
  %i.aw = getelementptr i8, ptr %1, i64 136
  store i32 -2147483648, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %1, i64 140
  store i32 7827456, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %1, i64 144
  store i32 0, ptr %i.ax, align 4
  %i.az = getelementptr i8, ptr %1, i64 148
  store i32 0, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %1, i64 152
  store i32 0, ptr %i.az, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.ba, %bb.b ], [ %i.aq, %bb.a ] ; 4 uses
  store i32 67108865, ptr %.0, align 4
  %.116 = getelementptr i8, ptr %.0, i64 4        ; 3 uses
  %i.bb = ptrtoint ptr %.116 to i64
  %i.bc = and i64 %i.bb, 63
  %.not17 = icmp eq i64 %i.bc, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %.020 = ptrtoaddr ptr %.0 to i64
  %i.bd = sub i64 56, %.020
  %i.be = and i64 %i.bd, 60                       ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 %.116, i8 0, i64 %i.bf, i1 false)
  %i.bg = getelementptr i8, ptr %.0, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bg, i64 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.1.lcssa = phi ptr [ %.116, %bb.c ], [ %scevgep, %.lr.ph.preheader ]
  ret ptr %.1.lcssa
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal ptr @gen8_init_indirectctx_bb(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 4)) %1) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  store i32 67108864, ptr %1, align 4
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1664
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16777216
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  store i32 306184194, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %1, i64 12
  store i32 45336, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 4848
  %.val17.i = load ptr, ptr %i.j, align 8         ; 2 uses
  %i.k = getelementptr i8, ptr %.val17.i, i64 8
  %.val17.val.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val17.i, i64 248
  %.val17.val18.i = load i32, ptr %i.l, align 8
  %i.m = trunc i64 %.val17.val.i to i32
  %i.n = add i32 %i.m, 256
  %i.o = add i32 %i.n, %.val17.val18.i
  %i.p = getelementptr i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.g, align 4
  %i.q = getelementptr i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4
end_hunk_0

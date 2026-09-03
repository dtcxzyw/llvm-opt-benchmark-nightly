Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_workarounds?download=true
inline.NumInlined: 566
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_engine_init_workarounds:bb.a
  %i.ajg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -1, ptr %i.ajg, align 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ajh, align 4
  call fastcc void @_wa_add(ptr noundef %i.a, ptr noundef nonnull %2) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.critedge.i52.i

.critedge.i52.i:                                  ; preds = %bb.fm, %bb.fl, %bb.fg
  %i.aji = load ptr, ptr %i.b, align 8
  %i.ajj = tail call zeroext i1 @intel_gt_needs_wa_16018031267(ptr noundef %i.aji) #10
  br i1 %i.ajj, label %bb.fn, label %engine_init_workarounds.exit

bb.fn:                                            ; preds = %.critedge.i52.i
  %i.ajk = load i8, ptr %i.qq, align 8
  %i.ajl = icmp eq i8 %i.ajk, 3
  br i1 %i.ajl, label %bb.fo, label %engine_init_workarounds.exit

bb.fo:                                            ; preds = %bb.fn
  %i.ajm = getelementptr i8, ptr %0, i64 57
  %i.ajn = load i8, ptr %i.ajm, align 1
  %i.ajo = icmp eq i8 %i.ajn, 0
  br i1 %i.ajo, label %bb.fp, label %engine_init_workarounds.exit

bb.fp:                                            ; preds = %bb.fo
  %i.ajp = getelementptr i8, ptr %0, i64 72
  %i.ajq = load i32, ptr %i.ajp, align 8
  %i.ajr = add i32 %i.ajq, 464
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 %i.ajr, ptr %1, align 4
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ajs, align 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 402655232, ptr %i.ajt, align 4
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6144, ptr %i.aju, align 4
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ajv, align 4
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ajw, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %i.a, ptr noundef nonnull %1) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %engine_init_workarounds.exit

engine_init_workarounds.exit:                     ; preds = %bb.a, %ccs_engine_wa_mode.exit.i, %.thread.i25.i, %bb.fe, %bb.ff, %.critedge.i52.i, %bb.fn, %bb.fo, %bb.fp
  %i.ajx = getelementptr i8, ptr %0, i64 704      ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 8          ; 3 uses
  %i.ajz = and i32 %i.ajy, 15
  %i.aka = icmp eq i32 %i.ajz, 0
  br i1 %i.aka, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %engine_init_workarounds.exit
  %i.akb = getelementptr i8, ptr %0, i64 696      ; 3 uses
  %i.akc = load ptr, ptr %i.akb, align 8
  %i.akd = zext i32 %i.ajy to i64
  %i.ake = tail call ptr @kmemdup_array(ptr noundef %i.akc, i64 noundef %i.akd, i64 noundef 20, i32 noundef 3264) #11 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ake, null
  br i1 %.not.i7, label %thread-pre-split.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.akf = load ptr, ptr %i.akb, align 8
  tail call void @kfree(ptr noundef %i.akf) #10
  store ptr %i.ake, ptr %i.akb, align 8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.fr, %bb.fq
  %.pr.i = load i32, ptr %i.ajx, align 8
  br label %bb.fs

bb.fs:                                            ; preds = %thread-pre-split.i, %engine_init_workarounds.exit
  %i.akg = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ajy, %engine_init_workarounds.exit ]
  %.not13.i = icmp eq i32 %i.akg, 0
  br i1 %.not13.i, label %wa_init_finish.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.akh = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8          ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.aki, null
  br i1 %.not.i.i8, label %__drm_to_dev.exit.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.akj = getelementptr i8, ptr %i.aki, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.fu, %bb.ft
  %i.akl = phi ptr [ %i.akk, %bb.fu ], [ null, %bb.ft ]
  %i.akm = getelementptr i8, ptr %i.akh, i64 4936
  %i.akn = load i32, ptr %i.akm, align 8
  %i.ako = getelementptr i8, ptr %0, i64 708
  %i.akp = load i32, ptr %i.ako, align 4
  %i.akq = load ptr, ptr %i.e, align 8
  %i.akr = load ptr, ptr %i.f, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.akl, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %i.akn, i32 noundef %i.akp, ptr noundef %i.akq, ptr noundef %i.akr) #10
  br label %wa_init_finish.exit

wa_init_finish.exit:                              ; preds = %bb.fs, %__drm_to_dev.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_engine_apply_workarounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 672
  tail call fastcc void @wa_list_apply(ptr noundef %i.a) #9, !srcloc !111
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_engine_verify_workarounds(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.i915_gem_ww_ctx, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 672
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.d = getelementptr i8, ptr %0, i64 704        ; 6 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %engine_wa_list_verify.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !15
  %i.f = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext i32 %i.e to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call ptr @__vm_create_scratch_for_read(ptr noundef %i.k, i64 noundef %i.m) #10 ; 8 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = trunc i64 %i.p to i32
  br label %engine_wa_list_verify.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 352      ; 4 uses
  %i.t = tail call i32 @__SCT__might_resched() #10 ; 0 uses
  %i.u = load volatile i32, ptr %i.s, align 4     ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !119

.lr.ph.i.i.i:                                     ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.047.i.i.i = phi i32 [ %i.ab, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = add i32 %.047.i.i.i, 1
  %i.x = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 %i.w, ptr elementtype(i32) %i.s, i32 %.047.i.i.i) #8, !srcloc !120 ; 2 uses
  %i.y = extractvalue { i8, i32 } %i.x, 0         ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %intel_engine_pm_get.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.ab = extractvalue { i8, i32 } %i.x, 1        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !121

raw_atomic_fetch_add_unless.exit.i.i.i:           ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %bb.d
  %i.ad = tail call i32 @__intel_wakeref_get_first(ptr noundef %i.s) #10 ; 0 uses
  br label %intel_engine_pm_get.exit.i

intel_engine_pm_get.exit.i:                       ; preds = %.lr.ph.i.i.i, %raw_atomic_fetch_add_unless.exit.i.i.i
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %2, i1 noundef zeroext false) #10
  %i.ae = getelementptr i8, ptr %i.n, i64 184     ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.b, i64 212     ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = getelementptr i8, ptr %i.n, i64 268     ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 696       ; 3 uses
  %i.am = getelementptr i8, ptr %i.n, i64 8
  %i.an = getelementptr i8, ptr %i.n, i64 248
  %i.ao = getelementptr i8, ptr %0, i64 680
  %i.ap = getelementptr i8, ptr %i.b, i64 392     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.bj, %intel_engine_pm_get.exit.i
  %i.aq = load ptr, ptr %i.ae, align 8            ; 10 uses
  %i.ar = load i8, ptr %i.af, align 8, !range !122, !noundef !123
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr i8, ptr %i.aq, i64 248
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.au, ptr noundef nonnull %2) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aw = call i32 @ww_mutex_lock(ptr noundef %i.au, ptr noundef nonnull %2) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  switch i32 %.0.i.i.i, label %intel_context_unpin.exit.i [
    i32 0, label %bb.i
    i32 -35, label %bb.k
    i32 -114, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ax = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aq, i32 1, ptr elementtype(i32) %i.aq) #8, !srcloc !124 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.ay = add i32 %i.ax, 1
  %i.az = or i32 %i.ay, %i.ax
  %.not10.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.az, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.aq, i32 noundef %.sink.i.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i.i

i915_gem_object_get.exit.i.i.i:                   ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.j
  %i.ba = getelementptr i8, ptr %i.aq, i64 544    ; 3 uses
  %i.bb = load ptr, ptr %i.ah, align 8            ; 2 uses
  store ptr %i.ba, ptr %i.ah, align 8
  store ptr %i.ag, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.aq, i64 552
  store ptr %i.bb, ptr %i.bc, align 8
  store volatile ptr %i.ba, ptr %i.bb, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.bd = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aq, i32 1, ptr elementtype(i32) %i.aq) #8, !srcloc !124 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.be = add i32 %i.bd, 1
  %i.bf = or i32 %i.be, %i.bd
  %.not10.i.i.i.i.i.i20.i8.i.i = icmp sgt i32 %i.bf, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i, label %intel_context_unpin.exit.thread.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, !prof !20

.sink.split.i.i.i.i.i.i21.i9.i.i:                 ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i.i.i22.i10.i.i = phi i32 [ 2, %bb.k ], [ 1, %bb.l ]
  call void @refcount_warn_saturate(ptr noundef %i.aq, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i) #10
  br label %intel_context_unpin.exit.thread.i

intel_context_unpin.exit.thread.i:                ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i, %bb.l
  store ptr %i.aq, ptr %i.aj, align 8
  br label %bb.bj

bb.m:                                             ; preds = %i915_gem_object_get.exit.i.i.i, %bb.h
  %i.bg = load volatile i32, ptr %i.ai, align 4   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i, label %intel_context_pin_ww.exit.i, label %.lr.ph.i.i68.i, !prof !119

.lr.ph.i.i68.i:                                   ; preds = %bb.m, %arch_atomic_try_cmpxchg.exit.i.i69.i
  %.04.i.i.i = phi i32 [ %i.bm, %arch_atomic_try_cmpxchg.exit.i.i69.i ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bh = add i32 %.04.i.i.i, 1
  %i.bi = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 %i.bh, ptr elementtype(i32) %i.ai, i32 %.04.i.i.i) #8, !srcloc !120 ; 2 uses
  %i.bj = extractvalue { i8, i32 } %i.bi, 0       ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 2
  call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc nuw i8 %i.bj to i1
  br i1 %i.bl, label %intel_context_pin_ww.exit.thread.i, label %arch_atomic_try_cmpxchg.exit.i.i69.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i69.i:             ; preds = %.lr.ph.i.i68.i
  %i.bm = extractvalue { i8, i32 } %i.bi, 1       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not7.i.i.i, label %intel_context_pin_ww.exit.i, label %.lr.ph.i.i68.i, !prof !121

intel_context_pin_ww.exit.i:                      ; preds = %arch_atomic_try_cmpxchg.exit.i.i69.i, %bb.m
  %i.bn = call i32 @__intel_context_do_pin_ww(ptr noundef %i.b, ptr noundef nonnull %2) #10 ; 2 uses
  %.not62.i = icmp eq i32 %i.bn, 0
  br i1 %.not62.i, label %intel_context_pin_ww.exit.thread.i, label %intel_context_unpin.exit.i

intel_context_pin_ww.exit.thread.i:               ; preds = %.lr.ph.i.i68.i, %intel_context_pin_ww.exit.i
  %i.bo = load volatile i64, ptr %i.ak, align 8
  %.in.in.i.i = and i64 %i.bo, 8192
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  %i.bp = select i1 %.in.i.not.i, i64 2048, i64 1024
  %i.bq = call i32 @i915_vma_pin_ww(ptr noundef %i.n, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %i.bp) #10 ; 2 uses
  %.not63.i = icmp eq i32 %i.bq, 0
  br i1 %.not63.i, label %bb.n, label %bb.bg

bb.n:                                             ; preds = %intel_context_pin_ww.exit.thread.i
  %i.br = call ptr @i915_request_create(ptr noundef %i.b) #10 ; 14 uses
  %i.bs = icmp ugt ptr %i.br, inttoptr (i64 -4096 to ptr)
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = trunc i64 %i.bt to i32
  br label %i915_request_put.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bv = call i32 @_i915_vma_move_to_active(ptr noundef %i.n, ptr noundef %i.br, ptr noundef %i.br, i32 noundef 4) #10 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %wa_list_srm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr i8, ptr %i.br, i64 72
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 1656   ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8             ; 3 uses
  %i.cb = icmp ult i8 %i.ca, 8                    ; 2 uses
  %spec.select.i.i = select i1 %i.cb, i32 306184193, i32 306184194
  %i.cc = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8             ; 4 uses
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.ce = getelementptr i8, ptr %i.by, i64 1657
  %.val44.i.i = load i8, ptr %i.ce, align 1
  %i.cf = zext i8 %i.ca to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = zext i8 %.val44.i.i to i32
  %i.ci = or disjoint i32 %i.cg, %i.ch
  %i.cj = icmp samesign ugt i32 %i.ci, 3126
  %i.ck = icmp ugt i8 %i.ca, 11
  %mcr_ranges_gen12.mux.i.i = select i1 %i.ck, ptr @mcr_ranges_gen12, ptr @mcr_ranges_gen8 ; 3 uses
  br i1 %i.cj, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %.loopexit59.us.i.i
  %.03462.us.i.i = phi ptr [ %i.cq, %.loopexit59.us.i.i ], [ %i.cc, %.lr.ph.i.i ] ; 2 uses
  %.03661.us.i.i = phi i32 [ %i.co, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ] ; 13 uses
  %.03860.us.i.i = phi i32 [ %i.cp, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ]
  %i.cl = load i32, ptr %.03462.us.i.i, align 4   ; 25 uses
  %.not18.i.us.i.i = icmp ult i32 %i.cl, 16384
  br i1 %.not18.i.us.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.preheader.us.i.i
  %.not19.i.us.i.i = icmp ugt i32 %i.cl, 19199
  br i1 %.not19.i.us.i.i, label %.lr.ph.i.us.1.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.1.i.i:                                ; preds = %bb.r
  %.not18.i.us.1.i.i = icmp ult i32 %i.cl, 20992
  br i1 %.not18.i.us.1.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.us.1.i.i
  %.not19.i.us.1.i.i = icmp ugt i32 %i.cl, 21247
  br i1 %.not19.i.us.1.i.i, label %.lr.ph.i.us.2.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.2.i.i:                                ; preds = %bb.s
  %.not18.i.us.2.i.i = icmp ult i32 %i.cl, 21504
  br i1 %.not18.i.us.2.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.us.2.i.i
  %.not19.i.us.2.i.i = icmp ugt i32 %i.cl, 32767
  br i1 %.not19.i.us.2.i.i, label %.lr.ph.i.us.3.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.3.i.i:                                ; preds = %bb.t
  %.not18.i.us.3.i.i = icmp ult i32 %i.cl, 33088
  br i1 %.not18.i.us.3.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.us.3.i.i
  %.not19.i.us.3.i.i = icmp ugt i32 %i.cl, 33119
  br i1 %.not19.i.us.3.i.i, label %.lr.ph.i.us.4.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.4.i.i:                                ; preds = %bb.u
  %.not18.i.us.4.i.i = icmp ult i32 %i.cl, 35968
  br i1 %.not18.i.us.4.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.us.4.i.i
  %.not19.i.us.4.i.i = icmp ugt i32 %i.cl, 36351
  br i1 %.not19.i.us.4.i.i, label %.lr.ph.i.us.5.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.5.i.i:                                ; preds = %bb.v
  %.not18.i.us.5.i.i = icmp ult i32 %i.cl, 38096
  br i1 %.not18.i.us.5.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.us.5.i.i
  %.not19.i.us.5.i.i = icmp ugt i32 %i.cl, 38239
  br i1 %.not19.i.us.5.i.i, label %.lr.ph.i.us.6.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.6.i.i:                                ; preds = %bb.w
  %.not18.i.us.6.i.i = icmp ult i32 %i.cl, 38528
  br i1 %.not18.i.us.6.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us.6.i.i
  %.not19.i.us.6.i.i = icmp ugt i32 %i.cl, 38655
  br i1 %.not19.i.us.6.i.i, label %.lr.ph.i.us.7.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.7.i.i:                                ; preds = %bb.x
  %.not18.i.us.7.i.i = icmp ult i32 %i.cl, 45056
  br i1 %.not18.i.us.7.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.us.7.i.i
  %.not19.i.us.7.i.i = icmp ugt i32 %i.cl, 46079
  br i1 %.not19.i.us.7.i.i, label %.lr.ph.i.us.8.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.8.i.i:                                ; preds = %bb.y
  %.not18.i.us.8.i.i = icmp ult i32 %i.cl, 51200
  br i1 %.not18.i.us.8.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us.8.i.i
  %.not19.i.us.8.i.i = icmp ugt i32 %i.cl, 53247
  br i1 %.not19.i.us.8.i.i, label %.lr.ph.i.us.9.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.9.i.i:                                ; preds = %bb.z
  %.not18.i.us.9.i.i = icmp ult i32 %i.cl, 55296
  br i1 %.not18.i.us.9.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us.9.i.i
  %.not19.i.us.9.i.i = icmp ugt i32 %i.cl, 55551
  br i1 %.not19.i.us.9.i.i, label %.lr.ph.i.us.10.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.10.i.i:                               ; preds = %bb.aa
  %.not18.i.us.10.i.i = icmp ult i32 %i.cl, 56320
  br i1 %.not18.i.us.10.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.us.10.i.i
  %.not19.i.us.10.i.i = icmp ugt i32 %i.cl, 65535
  br i1 %.not19.i.us.10.i.i, label %.lr.ph.i.us.11.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.11.i.i:                               ; preds = %bb.ab
  %.not18.i.us.11.i.i = icmp ult i32 %i.cl, 94208
  br i1 %.not18.i.us.11.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.us.11.i.i
  %.not19.i.us.11.i.i = icmp ugt i32 %i.cl, 98303
  %i.cm = add i32 %i.cl, -150144
  %or.cond.i71.i = icmp ult i32 %i.cm, -128
  %or.cond.i = and i1 %.not19.i.us.11.i.i, %or.cond.i71.i
  br i1 %or.cond.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %.loopexit59.us.i.i

mcr_range.exit.thread.loopexit.us.i.i:            ; preds = %bb.ac, %.lr.ph.i.us.11.i.i, %.lr.ph.i.us.10.i.i, %.lr.ph.i.us.9.i.i, %.lr.ph.i.us.8.i.i, %.lr.ph.i.us.7.i.i, %.lr.ph.i.us.6.i.i, %.lr.ph.i.us.5.i.i, %.lr.ph.i.us.4.i.i, %.lr.ph.i.us.3.i.i, %.lr.ph.i.us.2.i.i, %.lr.ph.i.us.1.i.i, %.lr.ph.i.preheader.us.i.i
  %i.cn = add i32 %.03661.us.i.i, 1
  br label %.loopexit59.us.i.i

.loopexit59.us.i.i:                               ; preds = %mcr_range.exit.thread.loopexit.us.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.co = phi i32 [ %i.cn, %mcr_range.exit.thread.loopexit.us.i.i ], [ %.03661.us.i.i, %bb.r ], [ %.03661.us.i.i, %bb.ac ], [ %.03661.us.i.i, %bb.ab ], [ %.03661.us.i.i, %bb.aa ], [ %.03661.us.i.i, %bb.z ], [ %.03661.us.i.i, %bb.y ], [ %.03661.us.i.i, %bb.x ], [ %.03661.us.i.i, %bb.w ], [ %.03661.us.i.i, %bb.v ], [ %.03661.us.i.i, %bb.u ], [ %.03661.us.i.i, %bb.t ], [ %.03661.us.i.i, %bb.s ] ; 2 uses
  %i.cp = add nuw i32 %.03860.us.i.i, 1           ; 2 uses
  %i.cq = getelementptr i8, ptr %.03462.us.i.i, i64 20
  %exitcond91.not.i.i = icmp eq i32 %i.cp, %i.cd
  br i1 %exitcond91.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !112

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cr = load i32, ptr %mcr_ranges_gen12.mux.i.i, align 16 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %i.cr, 0
  %or.cond122.i.i = select i1 %i.cb, i1 true, i1 %.not1.i.i.i
  br i1 %or.cond122.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us72.i.i

.lr.ph.i.preheader.us72.i.i:                      ; preds = %.lr.ph.split.i.i, %.loopexit59.us73.i.i
  %.03462.us63.i.i = phi ptr [ %i.dd, %.loopexit59.us73.i.i ], [ %i.cc, %.lr.ph.split.i.i ] ; 2 uses
  %.03661.us64.i.i = phi i32 [ %i.db, %.loopexit59.us73.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.03860.us65.i.i = phi i32 [ %i.dc, %.loopexit59.us73.i.i ], [ 0, %.lr.ph.split.i.i ]
  %i.cs = load i32, ptr %.03462.us63.i.i, align 4 ; 2 uses
  br label %.lr.ph.i.us66.i.i

.lr.ph.i.us66.i.i:                                ; preds = %bb.ae, %.lr.ph.i.preheader.us72.i.i
end_hunk_0
begin_hunk_1_@intel_engine_verify_workarounds:bb.a
  %i.ew = call i64 @i915_request_wait(ptr noundef %i.br, i32 noundef 0, i64 noundef 200) #10
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i
  %i.ey = load ptr, ptr %i.ae, align 8
  %i.ez = call ptr @i915_gem_object_pin_map(ptr noundef %i.ey, i32 noundef 0) #10 ; 3 uses
  %i.fa = icmp ugt ptr %i.ez, inttoptr (i64 -4096 to ptr)
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = trunc i64 %i.fb to i32
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  %i.fd = load i32, ptr %i.d, align 8             ; 2 uses
  %.not96.i = icmp eq i32 %i.fd, 0
  br i1 %.not96.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.fe = load ptr, ptr %i.al, align 8
  %i.ff = getelementptr i8, ptr %i.br, i64 72
  br label %bb.at

bb.at:                                            ; preds = %mcr_range.exit.i, %.lr.ph.i
  %i.fg = phi i32 [ %i.fd, %.lr.ph.i ], [ %i.gt, %mcr_range.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %mcr_range.exit.i ] ; 2 uses
  %.295.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %mcr_range.exit.i ] ; 2 uses
  %.05593.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %i.gu, %mcr_range.exit.i ] ; 4 uses
  %i.fh = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fi = load i32, ptr %.05593.i, align 4        ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fh, i64 1656
  %.val.i = load i8, ptr %i.fj, align 8           ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fh, i64 1657
  %.val66.i = load i8, ptr %i.fk, align 1
  %i.fl = zext i8 %.val.i to i32
  %i.fm = shl nuw nsw i32 %i.fl, 8
  %i.fn = zext i8 %.val66.i to i32
  %i.fo = or disjoint i32 %i.fm, %i.fn
  %i.fp = icmp samesign ugt i32 %i.fo, 3126
  br i1 %i.fp, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = icmp ugt i8 %.val.i, 11
  br i1 %i.fq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = icmp samesign ugt i8 %.val.i, 7
  br i1 %i.fr, label %bb.aw, label %.loopexit.i

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.013.i.i = phi ptr [ @mcr_ranges_gen12, %bb.au ], [ @mcr_ranges_xehp, %bb.at ], [ @mcr_ranges_gen8, %bb.av ] ; 3 uses
  %i.fs = load i32, ptr %.013.i.i, align 16       ; 2 uses
  %.not1.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not1.i.i, label %.loopexit.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %bb.aw, %bb.ay
  %i.ft = phi i32 [ %i.ga, %bb.ay ], [ %i.fs, %bb.aw ]
  %i.fu = phi ptr [ %i.fz, %bb.ay ], [ %.013.i.i, %bb.aw ]
  %.02.i.i = phi i32 [ %i.fx, %bb.ay ], [ 0, %bb.aw ]
  %.not18.i.i = icmp ult i32 %i.fi, %i.ft
  br i1 %.not18.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i74.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4
  %.not19.i.i = icmp ugt i32 %i.fi, %i.fw
  br i1 %.not19.i.i, label %bb.ay, label %mcr_range.exit.i

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i74.i
  %i.fx = add i32 %.02.i.i, 1                     ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %.013.i.i, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8            ; 2 uses
  %.not.i75.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i75.i, label %.loopexit.i, label %.lr.ph.i74.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %bb.ay, %bb.aw, %bb.av
  %i.gb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.ez, i64 %indvars.iv.i
  %i.gd = load i32, ptr %i.gc, align 4            ; 3 uses
  %i.ge = load ptr, ptr %i.ao, align 8
  %i.gf = getelementptr i8, ptr %.05593.i, i64 8
  %i.gg = load i32, ptr %i.gf, align 4            ; 2 uses
  %i.gh = xor i32 %i.gg, %i.gd
  %i.gi = getelementptr i8, ptr %.05593.i, i64 12
  %i.gj = load i32, ptr %i.gi, align 4            ; 3 uses
  %i.gk = and i32 %i.gh, %i.gj
  %.not.i76.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i76.i, label %mcr_range.exit.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i
  %i.gl = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not.i.i77.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i77.i, label %__drm_to_dev.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.ba, %bb.az
  %i.go = phi ptr [ %i.gn, %bb.ba ], [ null, %bb.az ]
  %i.gp = getelementptr i8, ptr %i.gb, i64 4936
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = and i32 %i.gj, %i.gd
  %i.gs = and i32 %i.gj, %i.gg
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.go, ptr noundef nonnull @.str.20, i32 noundef %i.gq, ptr noundef %i.ge, ptr noundef %1, i32 noundef %i.fi, i32 noundef %i.gd, i32 noundef %i.gr, i32 noundef %i.gs) #13
  %.pre.i = load i32, ptr %i.d, align 8
  br label %mcr_range.exit.i

mcr_range.exit.i:                                 ; preds = %bb.ax, %__drm_to_dev.exit.i.i, %.loopexit.i
  %i.gt = phi i32 [ %.pre.i, %__drm_to_dev.exit.i.i ], [ %i.fg, %.loopexit.i ], [ %i.fg, %bb.ax ] ; 2 uses
  %.3.i = phi i32 [ -6, %__drm_to_dev.exit.i.i ], [ %.295.i, %.loopexit.i ], [ %.295.i, %bb.ax ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gu = getelementptr i8, ptr %.05593.i, i64 20
  %i.gv = zext i32 %i.gt to i64
  %i.gw = icmp samesign ult i64 %indvars.iv.next.i, %i.gv
  br i1 %i.gw, label %bb.at, label %._crit_edge.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %mcr_range.exit.i, %bb.as
  %.2.lcssa.i = phi i32 [ 0, %bb.as ], [ %.3.i, %mcr_range.exit.i ]
  %i.gx = load ptr, ptr %i.ae, align 8
  %i.gy = getelementptr i8, ptr %i.gx, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gy, ptr elementtype(i32) %i.gy) #8, !srcloc !125
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i, %bb.ar, %.critedge.i, %bb.ap
  %.4.i = phi i32 [ %.1.i, %bb.ap ], [ %.2.lcssa.i, %._crit_edge.i ], [ %i.fc, %bb.ar ], [ -62, %.critedge.i ] ; 4 uses
  br i1 %.not.i.i72.i, label %i915_request_put.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gz = getelementptr i8, ptr %i.br, i64 56     ; 4 uses
  %i.ha = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gz, i32 -1, ptr elementtype(i32) %i.gz) #8, !srcloc !124 ; 2 uses
  %i.hb = icmp eq i32 %i.ha, 1
  br i1 %i.hb, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hc = icmp slt i32 %i.ha, 1
  br i1 %i.hc, label %bb.be, label %i915_request_put.exit.i, !prof !14

bb.be:                                            ; preds = %bb.bd
  call void @refcount_warn_saturate(ptr noundef %i.gz, i32 noundef 3) #10
  br label %i915_request_put.exit.i

bb.bf:                                            ; preds = %bb.bc
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !126
  call void @dma_fence_release(ptr noundef %i.gz) #10, !callees !127, !inline_history !116
  br label %i915_request_put.exit.i

i915_request_put.exit.i:                          ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.o
  %.5.i = phi i32 [ %i.bu, %bb.o ], [ %.4.i, %bb.bb ], [ %.4.i, %bb.bd ], [ %.4.i, %bb.be ], [ %.4.i, %bb.bf ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, ptr elementtype(i32) %i.ak) #8, !srcloc !125
  br label %bb.bg

bb.bg:                                            ; preds = %i915_request_put.exit.i, %intel_context_pin_ww.exit.thread.i
  %.6.i = phi i32 [ %i.bq, %intel_context_pin_ww.exit.thread.i ], [ %.5.i, %i915_request_put.exit.i ] ; 3 uses
  %i.hd = load ptr, ptr %i.ap, align 8
  %i.he = getelementptr i8, ptr %i.hd, i64 88
  %i.hf = load ptr, ptr %i.he, align 8
  %.not.i79.i = icmp eq ptr %i.hf, null
  br i1 %.not.i79.i, label %bb.bh, label %.preheader.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @__intel_context_do_unpin(ptr noundef %i.b, i32 noundef 1) #10
  br label %intel_context_unpin.exit.i

.preheader.i.i:                                   ; preds = %bb.bg, %atomic_add_unless.exit.i.i
  %i.hg = load volatile i32, ptr %i.ai, align 4   ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %atomic_add_unless.exit.i.i, label %.lr.ph.i80.i, !prof !119

.lr.ph.i80.i:                                     ; preds = %.preheader.i.i, %arch_atomic_try_cmpxchg.exit.i.i81.i
  %.010.i.i = phi i32 [ %i.hn, %arch_atomic_try_cmpxchg.exit.i.i81.i ], [ %i.hg, %.preheader.i.i ] ; 2 uses
  %i.hi = add i32 %.010.i.i, -1
  %i.hj = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 %i.hi, ptr elementtype(i32) %i.ai, i32 %.010.i.i) #8, !srcloc !120 ; 2 uses
  %i.hk = extractvalue { i8, i32 } %i.hj, 0       ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 2
  call void @llvm.assume(i1 %i.hl)
  %i.hm = trunc nuw i8 %i.hk to i1
  br i1 %i.hm, label %intel_context_unpin.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i81.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i81.i:             ; preds = %.lr.ph.i80.i
  %i.hn = extractvalue { i8, i32 } %i.hj, 1       ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %atomic_add_unless.exit.i.i, label %.lr.ph.i80.i, !prof !121

atomic_add_unless.exit.i.i:                       ; preds = %arch_atomic_try_cmpxchg.exit.i.i81.i, %.preheader.i.i
  %i.hp = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 2, i32 1, ptr elementtype(i32) %i.ai) #8, !srcloc !128
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.bi, label %.preheader.i.i, !llvm.loop !117

bb.bi:                                            ; preds = %atomic_add_unless.exit.i.i
  %i.hr = load ptr, ptr %i.ap, align 8
  %i.hs = getelementptr i8, ptr %i.hr, i64 88
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef %i.b) #10, !inline_history !118
  br label %intel_context_unpin.exit.i

intel_context_unpin.exit.i:                       ; preds = %.lr.ph.i80.i, %bb.bi, %bb.bh, %intel_context_pin_ww.exit.i, %bb.h
  %.7.i = phi i32 [ %i.bn, %intel_context_pin_ww.exit.i ], [ %.6.i, %bb.bi ], [ %.6.i, %bb.bh ], [ %.0.i.i.i, %bb.h ], [ %.6.i, %.lr.ph.i80.i ] ; 2 uses
  %i.hu = icmp eq i32 %.7.i, -35
  br i1 %i.hu, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %intel_context_unpin.exit.i, %intel_context_unpin.exit.thread.i
  %i.hv = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #10 ; 2 uses
  %.not65.i = icmp eq i32 %i.hv, 0
  br i1 %.not65.i, label %bb.e, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %intel_context_unpin.exit.i
  %.8.i = phi i32 [ %i.hv, %bb.bj ], [ %.7.i, %intel_context_unpin.exit.i ] ; 3 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #10
  %i.hw = load ptr, ptr %i.f, align 8
  %i.hx = getelementptr i8, ptr %i.hw, i64 352    ; 4 uses
  %i.hy = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.hz = load volatile i32, ptr %i.hx, align 4   ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !119

.lr.ph.i.i.i.i:                                   ; preds = %bb.bk, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.ig, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.hz, %bb.bk ] ; 2 uses
  %i.ib = add i32 %.06.i.i.i.i, -1
  %i.ic = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hx, i32 %i.ib, ptr elementtype(i32) %i.hx, i32 %.06.i.i.i.i) #8, !srcloc !120 ; 2 uses
  %i.id = extractvalue { i8, i32 } %i.ic, 0       ; 2 uses
  %i.ie = icmp ult i8 %i.id, 2
  call void @llvm.assume(i1 %i.ie)
  %i.if = trunc nuw i8 %i.id to i1
  br i1 %i.if, label %intel_engine_pm_put.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i
  %i.ig = extractvalue { i8, i32 } %i.ic, 1       ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 1
  br i1 %i.ih, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !121

atomic_add_unless.exit.i.i.i.i:                   ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %bb.bk
  call void @__intel_wakeref_put_last(ptr noundef %i.hx, i64 noundef 0) #10
  br label %intel_engine_pm_put.exit.i

intel_engine_pm_put.exit.i:                       ; preds = %.lr.ph.i.i.i.i, %atomic_add_unless.exit.i.i.i.i
  %.val67.i = load ptr, ptr %i.ae, align 8        ; 4 uses
  %i.ii = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val67.i, i32 -1, ptr elementtype(i32) %.val67.i) #8, !srcloc !124 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %intel_engine_pm_put.exit.i
  %i.ik = icmp slt i32 %i.ii, 1
  br i1 %i.ik, label %bb.bm, label %engine_wa_list_verify.exit, !prof !14

bb.bm:                                            ; preds = %bb.bl
  call void @refcount_warn_saturate(ptr noundef %.val67.i, i32 noundef 3) #10
  br label %engine_wa_list_verify.exit

bb.bn:                                            ; preds = %intel_engine_pm_put.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !126
  call void @drm_gem_object_free(ptr noundef %.val67.i) #10, !callees !127, !inline_history !116
  br label %engine_wa_list_verify.exit

engine_wa_list_verify.exit:                       ; preds = %bb.a, %bb.c, %bb.bl, %bb.bm, %bb.bn
  %.056.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.a ], [ %.8.i, %bb.bl ], [ %.8.i, %bb.bm ], [ %.8.i, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.056.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @gen12_ctx_workarounds_init(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef captures(none) %0) unnamed_addr #0 align 16 {
bb.a:
  %1 = alloca %struct.i915_wa, align 4            ; 9 uses
  %2 = alloca %struct.i915_wa, align 4            ; 9 uses
  %3 = alloca %struct.i915_wa, align 4            ; 9 uses
  %4 = alloca %struct.i915_wa, align 4            ; 7 uses
  %5 = alloca %struct.i915_wa, align 4            ; 9 uses
  %6 = alloca %struct.i915_wa, align 4            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 29444, ptr %6, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 33554944, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 512, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %6) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 9600, ptr %5, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 393218, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %5) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 26116, ptr %4, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -536608768, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.m, align 4
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %4) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.n = getelementptr i8, ptr %.0.val, i64 1668
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 512
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 28696, ptr %3, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 536879104, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8192, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %3) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 29440, ptr %2, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4194368, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 64, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.z, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %2) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 21892, ptr %1, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 32, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 32, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 32, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 2, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %1) #9, !srcloc !13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cfl_ctx_workarounds_init(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef captures(none) %0) unnamed_addr #0 align 16 {
bb.a:
  %1 = alloca %struct.i915_wa, align 4            ; 9 uses
  %2 = alloca %struct.i915_wa, align 4            ; 9 uses
  tail call fastcc void @gen9_ctx_workarounds_init(ptr %.0.val, ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 28692, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 16777472, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 256, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %2) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 57600, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1048592, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 16, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 3, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, i8 0, i64 3, i1 false)
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %1) #9, !srcloc !13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}
end_hunk_1

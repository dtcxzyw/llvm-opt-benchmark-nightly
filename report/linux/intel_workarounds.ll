inline.NumInlined: 566
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_engine_init_workarounds:bb.a
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
  call fastcc void @_wa_add(ptr noundef %i.a, ptr noundef nonnull %1) #9, !srcloc !10
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
  tail call fastcc void @wa_list_apply(ptr noundef %i.a) #9, !srcloc !110
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !24
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
  br i1 %i.v, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !111

.lr.ph.i.i.i:                                     ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.047.i.i.i = phi i32 [ %i.ab, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = add i32 %.047.i.i.i, 1
  %i.x = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 %i.w, ptr elementtype(i32) %i.s, i32 %.047.i.i.i) #8, !srcloc !112 ; 2 uses
  %i.y = extractvalue { i8, i32 } %i.x, 0         ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %intel_engine_pm_get.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !46

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.ab = extractvalue { i8, i32 } %i.x, 1        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %raw_atomic_fetch_add_unless.exit.i.i.i, label %.lr.ph.i.i.i, !prof !113

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

bb.e:                                             ; preds = %bb.bk, %intel_engine_pm_get.exit.i
  %i.aq = load ptr, ptr %i.ae, align 8            ; 10 uses
  %i.ar = load i8, ptr %i.af, align 8, !range !114, !noundef !115
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
  %.0.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %i.ax = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aq, i32 1, ptr elementtype(i32) %i.aq) #8, !srcloc !116 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.az = add i32 %i.ay, 1
  %i.ba = or i32 %i.az, %i.ay
  %.not10.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ba, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, !prof !46

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.aq, i32 noundef %.sink.i.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i.i

i915_gem_object_get.exit.i.i.i:                   ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.j
  %i.bb = getelementptr i8, ptr %i.aq, i64 544    ; 3 uses
  %i.bc = load ptr, ptr %i.ah, align 8            ; 2 uses
  store ptr %i.bb, ptr %i.ah, align 8
  store ptr %i.ag, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.aq, i64 552
  store ptr %i.bc, ptr %i.bd, align 8
  store volatile ptr %i.bb, ptr %i.bc, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.be = icmp eq i32 %.0.i.i.i, -114
  %spec.store.select.i6.i.i = select i1 %i.be, i32 0, i32 %.0.i.i.i
  switch i32 %.0.i.i.i, label %intel_context_pin_ww.exit.i [
    i32 -35, label %bb.l
    i32 -114, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aq, i32 1, ptr elementtype(i32) %i.aq) #8, !srcloc !116 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bg = add i32 %i.bf, 1
  %i.bh = or i32 %i.bg, %i.bf
  %.not10.i.i.i.i.i.i20.i8.i.i = icmp sgt i32 %i.bh, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i, label %intel_context_unpin.exit.thread.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, !prof !46

.sink.split.i.i.i.i.i.i21.i9.i.i:                 ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.i.i22.i10.i.i = phi i32 [ 2, %bb.l ], [ 1, %bb.m ]
  call void @refcount_warn_saturate(ptr noundef %i.aq, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i) #10
  br label %intel_context_unpin.exit.thread.i

intel_context_unpin.exit.thread.i:                ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i, %bb.m
  store ptr %i.aq, ptr %i.aj, align 8
  br label %bb.bk

bb.n:                                             ; preds = %bb.k, %i915_gem_object_get.exit.i.i.i
  %i.bi = load volatile i32, ptr %i.ai, align 4   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i68.i, !prof !111

.lr.ph.i.i68.i:                                   ; preds = %bb.n, %arch_atomic_try_cmpxchg.exit.i.i69.i
  %.04.i.i.i = phi i32 [ %i.bo, %arch_atomic_try_cmpxchg.exit.i.i69.i ], [ %i.bi, %bb.n ] ; 2 uses
  %i.bj = add i32 %.04.i.i.i, 1
  %i.bk = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 %i.bj, ptr elementtype(i32) %i.ai, i32 %.04.i.i.i) #8, !srcloc !112 ; 2 uses
  %i.bl = extractvalue { i8, i32 } %i.bk, 0       ; 2 uses
  %i.bm = icmp ult i8 %i.bl, 2
  call void @llvm.assume(i1 %i.bm)
  %i.bn = trunc nuw i8 %i.bl to i1
  br i1 %i.bn, label %intel_context_pin_ww.exit.thread.i, label %arch_atomic_try_cmpxchg.exit.i.i69.i, !prof !46

arch_atomic_try_cmpxchg.exit.i.i69.i:             ; preds = %.lr.ph.i.i68.i
  %i.bo = extractvalue { i8, i32 } %i.bk, 1       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not7.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i68.i, !prof !113

.loopexit.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i69.i, %bb.n
  %3 = call i32 @__intel_context_do_pin_ww(ptr noundef %i.b, ptr noundef nonnull %2) #10
  br label %intel_context_pin_ww.exit.i

intel_context_pin_ww.exit.i:                      ; preds = %.loopexit.i.i, %bb.k
  %.0.i = phi i32 [ %3, %.loopexit.i.i ], [ %spec.store.select.i6.i.i, %bb.k ] ; 2 uses
  %.not62.i = icmp eq i32 %.0.i, 0
  br i1 %.not62.i, label %intel_context_pin_ww.exit.thread.i, label %intel_context_unpin.exit.i

intel_context_pin_ww.exit.thread.i:               ; preds = %.lr.ph.i.i68.i, %intel_context_pin_ww.exit.i
  %i.bp = load volatile i64, ptr %i.ak, align 8
  %.in.in.i.i = and i64 %i.bp, 8192
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  %i.bq = select i1 %.in.i.not.i, i64 2048, i64 1024
  %i.br = call i32 @i915_vma_pin_ww(ptr noundef %i.n, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %i.bq) #10 ; 2 uses
  %.not63.i = icmp eq i32 %i.br, 0
  br i1 %.not63.i, label %bb.o, label %bb.bh

bb.o:                                             ; preds = %intel_context_pin_ww.exit.thread.i
  %i.bs = call ptr @i915_request_create(ptr noundef %i.b) #10 ; 14 uses
  %i.bt = icmp ugt ptr %i.bs, inttoptr (i64 -4096 to ptr)
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = trunc i64 %i.bu to i32
  br label %i915_request_put.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bw = call i32 @_i915_vma_move_to_active(ptr noundef %i.n, ptr noundef %i.bs, ptr noundef %i.bs, i32 noundef 4) #10 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %wa_list_srm.exit.i

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr i8, ptr %i.bs, i64 72
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 1656   ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8             ; 3 uses
  %i.cc = icmp ult i8 %i.cb, 8                    ; 2 uses
  %spec.select.i.i = select i1 %i.cc, i32 306184193, i32 306184194
  %i.cd = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ce = load i32, ptr %i.d, align 8             ; 4 uses
  %.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %i.bz, i64 1657
  %.val44.i.i = load i8, ptr %i.cf, align 1
  %i.cg = zext i8 %i.cb to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = zext i8 %.val44.i.i to i32
  %i.cj = or disjoint i32 %i.ch, %i.ci
  %i.ck = icmp samesign ugt i32 %i.cj, 3126
  %i.cl = icmp ugt i8 %i.cb, 11
  %mcr_ranges_gen12.mux.i.i = select i1 %i.cl, ptr @mcr_ranges_gen12, ptr @mcr_ranges_gen8 ; 3 uses
  br i1 %i.ck, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %.loopexit59.us.i.i
  %.03562.us.i.i = phi ptr [ %i.cr, %.loopexit59.us.i.i ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %.03761.us.i.i = phi i32 [ %i.cp, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ] ; 13 uses
  %.03960.us.i.i = phi i32 [ %i.cq, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ]
  %i.cm = load i32, ptr %.03562.us.i.i, align 4   ; 25 uses
  %.not18.i.us.i.i = icmp ult i32 %i.cm, 16384
  br i1 %.not18.i.us.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.preheader.us.i.i
  %.not19.i.us.i.i = icmp ugt i32 %i.cm, 19199
  br i1 %.not19.i.us.i.i, label %.lr.ph.i.us.1.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.1.i.i:                                ; preds = %bb.s
  %.not18.i.us.1.i.i = icmp ult i32 %i.cm, 20992
  br i1 %.not18.i.us.1.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.us.1.i.i
  %.not19.i.us.1.i.i = icmp ugt i32 %i.cm, 21247
  br i1 %.not19.i.us.1.i.i, label %.lr.ph.i.us.2.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.2.i.i:                                ; preds = %bb.t
  %.not18.i.us.2.i.i = icmp ult i32 %i.cm, 21504
  br i1 %.not18.i.us.2.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.us.2.i.i
  %.not19.i.us.2.i.i = icmp ugt i32 %i.cm, 32767
  br i1 %.not19.i.us.2.i.i, label %.lr.ph.i.us.3.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.3.i.i:                                ; preds = %bb.u
  %.not18.i.us.3.i.i = icmp ult i32 %i.cm, 33088
  br i1 %.not18.i.us.3.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.us.3.i.i
  %.not19.i.us.3.i.i = icmp ugt i32 %i.cm, 33119
  br i1 %.not19.i.us.3.i.i, label %.lr.ph.i.us.4.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.4.i.i:                                ; preds = %bb.v
  %.not18.i.us.4.i.i = icmp ult i32 %i.cm, 35968
  br i1 %.not18.i.us.4.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.us.4.i.i
  %.not19.i.us.4.i.i = icmp ugt i32 %i.cm, 36351
  br i1 %.not19.i.us.4.i.i, label %.lr.ph.i.us.5.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.5.i.i:                                ; preds = %bb.w
  %.not18.i.us.5.i.i = icmp ult i32 %i.cm, 38096
  br i1 %.not18.i.us.5.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us.5.i.i
  %.not19.i.us.5.i.i = icmp ugt i32 %i.cm, 38239
  br i1 %.not19.i.us.5.i.i, label %.lr.ph.i.us.6.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.6.i.i:                                ; preds = %bb.x
  %.not18.i.us.6.i.i = icmp ult i32 %i.cm, 38528
  br i1 %.not18.i.us.6.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.us.6.i.i
  %.not19.i.us.6.i.i = icmp ugt i32 %i.cm, 38655
  br i1 %.not19.i.us.6.i.i, label %.lr.ph.i.us.7.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.7.i.i:                                ; preds = %bb.y
  %.not18.i.us.7.i.i = icmp ult i32 %i.cm, 45056
  br i1 %.not18.i.us.7.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us.7.i.i
  %.not19.i.us.7.i.i = icmp ugt i32 %i.cm, 46079
  br i1 %.not19.i.us.7.i.i, label %.lr.ph.i.us.8.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.8.i.i:                                ; preds = %bb.z
  %.not18.i.us.8.i.i = icmp ult i32 %i.cm, 51200
  br i1 %.not18.i.us.8.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us.8.i.i
  %.not19.i.us.8.i.i = icmp ugt i32 %i.cm, 53247
  br i1 %.not19.i.us.8.i.i, label %.lr.ph.i.us.9.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.9.i.i:                                ; preds = %bb.aa
  %.not18.i.us.9.i.i = icmp ult i32 %i.cm, 55296
  br i1 %.not18.i.us.9.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.us.9.i.i
  %.not19.i.us.9.i.i = icmp ugt i32 %i.cm, 55551
  br i1 %.not19.i.us.9.i.i, label %.lr.ph.i.us.10.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.10.i.i:                               ; preds = %bb.ab
  %.not18.i.us.10.i.i = icmp ult i32 %i.cm, 56320
  br i1 %.not18.i.us.10.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.us.10.i.i
  %.not19.i.us.10.i.i = icmp ugt i32 %i.cm, 65535
  br i1 %.not19.i.us.10.i.i, label %.lr.ph.i.us.11.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.11.i.i:                               ; preds = %bb.ac
  %.not18.i.us.11.i.i = icmp ult i32 %i.cm, 94208
  br i1 %.not18.i.us.11.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us.11.i.i
  %.not19.i.us.11.i.i = icmp ugt i32 %i.cm, 98303
  %i.cn = add i32 %i.cm, -150144
  %or.cond.i72.i = icmp ult i32 %i.cn, -128
  %or.cond.i = and i1 %.not19.i.us.11.i.i, %or.cond.i72.i
  br i1 %or.cond.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %.loopexit59.us.i.i

mcr_range.exit.thread.loopexit.us.i.i:            ; preds = %bb.ad, %.lr.ph.i.us.11.i.i, %.lr.ph.i.us.10.i.i, %.lr.ph.i.us.9.i.i, %.lr.ph.i.us.8.i.i, %.lr.ph.i.us.7.i.i, %.lr.ph.i.us.6.i.i, %.lr.ph.i.us.5.i.i, %.lr.ph.i.us.4.i.i, %.lr.ph.i.us.3.i.i, %.lr.ph.i.us.2.i.i, %.lr.ph.i.us.1.i.i, %.lr.ph.i.preheader.us.i.i
  %i.co = add i32 %.03761.us.i.i, 1
  br label %.loopexit59.us.i.i

.loopexit59.us.i.i:                               ; preds = %mcr_range.exit.thread.loopexit.us.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.cp = phi i32 [ %i.co, %mcr_range.exit.thread.loopexit.us.i.i ], [ %.03761.us.i.i, %bb.s ], [ %.03761.us.i.i, %bb.ad ], [ %.03761.us.i.i, %bb.ac ], [ %.03761.us.i.i, %bb.ab ], [ %.03761.us.i.i, %bb.aa ], [ %.03761.us.i.i, %bb.z ], [ %.03761.us.i.i, %bb.y ], [ %.03761.us.i.i, %bb.x ], [ %.03761.us.i.i, %bb.w ], [ %.03761.us.i.i, %bb.v ], [ %.03761.us.i.i, %bb.u ], [ %.03761.us.i.i, %bb.t ] ; 2 uses
  %i.cq = add nuw i32 %.03960.us.i.i, 1           ; 2 uses
  %i.cr = getelementptr i8, ptr %.03562.us.i.i, i64 20
  %exitcond91.not.i.i = icmp eq i32 %i.cq, %i.ce
  br i1 %exitcond91.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !117

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.cs = load i32, ptr %mcr_ranges_gen12.mux.i.i, align 16 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %i.cs, 0
  %or.cond123.i.i = select i1 %i.cc, i1 true, i1 %.not1.i.i.i
  br i1 %or.cond123.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us72.i.i

.lr.ph.i.preheader.us72.i.i:                      ; preds = %.lr.ph.split.i.i, %.loopexit59.us73.i.i
  %.03562.us63.i.i = phi ptr [ %i.de, %.loopexit59.us73.i.i ], [ %i.cd, %.lr.ph.split.i.i ] ; 2 uses
  %.03761.us64.i.i = phi i32 [ %i.dc, %.loopexit59.us73.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.03960.us65.i.i = phi i32 [ %i.dd, %.loopexit59.us73.i.i ], [ 0, %.lr.ph.split.i.i ]
  %i.ct = load i32, ptr %.03562.us63.i.i, align 4 ; 2 uses
  br label %.lr.ph.i.us66.i.i

.lr.ph.i.us66.i.i:                                ; preds = %bb.af, %.lr.ph.i.preheader.us72.i.i
  %i.cu = phi i32 [ %i.db, %bb.af ], [ %i.cs, %.lr.ph.i.preheader.us72.i.i ]
  %i.cv = phi ptr [ %i.da, %bb.af ], [ %mcr_ranges_gen12.mux.i.i, %.lr.ph.i.preheader.us72.i.i ]
  %.02.i.us67.i.i = phi i32 [ %i.cy, %bb.af ], [ 0, %.lr.ph.i.preheader.us72.i.i ]
  %.not18.i.us68.i.i = icmp ult i32 %i.ct, %i.cu
  br i1 %.not18.i.us68.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.us66.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4
  %.not19.i.us69.i.i = icmp ugt i32 %i.ct, %i.cx
  br i1 %.not19.i.us69.i.i, label %bb.af, label %.loopexit59.us73.i.i

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.us66.i.i
  %i.cy = add i32 %.02.i.us67.i.i, 1              ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %mcr_ranges_gen12.mux.i.i, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %.not.i.us70.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.us70.i.i, label %mcr_range.exit.thread.loopexit.us74.i.i, label %.lr.ph.i.us66.i.i, !llvm.loop !118

.loopexit59.us73.i.i:                             ; preds = %bb.ae, %mcr_range.exit.thread.loopexit.us74.i.i
  %i.dc = phi i32 [ %i.df, %mcr_range.exit.thread.loopexit.us74.i.i ], [ %.03761.us64.i.i, %bb.ae ] ; 2 uses
end_hunk_0
begin_hunk_1_@intel_engine_verify_workarounds:bb.a
  %i.ex = call i64 @i915_request_wait(ptr noundef %i.bs, i32 noundef 0, i64 noundef 200) #10
  %i.ey = icmp slt i64 %i.ex, 0
  br i1 %i.ey, label %bb.bc, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i
  %i.ez = load ptr, ptr %i.ae, align 8
  %i.fa = call ptr @i915_gem_object_pin_map(ptr noundef %i.ez, i32 noundef 0) #10 ; 3 uses
  %i.fb = icmp ugt ptr %i.fa, inttoptr (i64 -4096 to ptr)
  br i1 %i.fb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = trunc i64 %i.fc to i32
  br label %bb.bc

bb.at:                                            ; preds = %bb.ar
  %i.fe = load i32, ptr %i.d, align 8             ; 2 uses
  %.not97.i = icmp eq i32 %i.fe, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at
  %i.ff = load ptr, ptr %i.al, align 8
  %i.fg = getelementptr i8, ptr %i.bs, i64 72
  br label %bb.au

bb.au:                                            ; preds = %mcr_range.exit.i, %.lr.ph.i
  %i.fh = phi i32 [ %i.fe, %.lr.ph.i ], [ %i.gu, %mcr_range.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %mcr_range.exit.i ] ; 2 uses
  %.296.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %mcr_range.exit.i ] ; 2 uses
  %.05594.i = phi ptr [ %i.ff, %.lr.ph.i ], [ %i.gv, %mcr_range.exit.i ] ; 4 uses
  %i.fi = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fj = load i32, ptr %.05594.i, align 4        ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fi, i64 1656
  %.val.i = load i8, ptr %i.fk, align 8           ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fi, i64 1657
  %.val66.i = load i8, ptr %i.fl, align 1
  %i.fm = zext i8 %.val.i to i32
  %i.fn = shl nuw nsw i32 %i.fm, 8
  %i.fo = zext i8 %.val66.i to i32
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i32 %i.fp, 3126
  br i1 %i.fq, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = icmp ugt i8 %.val.i, 11
  br i1 %i.fr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = icmp samesign ugt i8 %.val.i, 7
  br i1 %i.fs, label %bb.ax, label %.loopexit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.013.i.i = phi ptr [ @mcr_ranges_gen12, %bb.av ], [ @mcr_ranges_xehp, %bb.au ], [ @mcr_ranges_gen8, %bb.aw ] ; 3 uses
  %i.ft = load i32, ptr %.013.i.i, align 16       ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not1.i.i, label %.loopexit.i, label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %bb.ax, %bb.az
  %i.fu = phi i32 [ %i.gb, %bb.az ], [ %i.ft, %bb.ax ]
  %i.fv = phi ptr [ %i.ga, %bb.az ], [ %.013.i.i, %bb.ax ]
  %.02.i.i = phi i32 [ %i.fy, %bb.az ], [ 0, %bb.ax ]
  %.not18.i.i = icmp ult i32 %i.fj, %i.fu
  br i1 %.not18.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i75.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4
  %.not19.i.i = icmp ugt i32 %i.fj, %i.fx
  br i1 %.not19.i.i, label %bb.az, label %mcr_range.exit.i

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i75.i
  %i.fy = add i32 %.02.i.i, 1                     ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %.013.i.i, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8            ; 2 uses
  %.not.i76.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i76.i, label %.loopexit.i, label %.lr.ph.i75.i, !llvm.loop !118

.loopexit.i:                                      ; preds = %bb.az, %bb.ax, %bb.aw
  %i.gc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gd = getelementptr [4 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.ge = load i32, ptr %i.gd, align 4            ; 3 uses
  %i.gf = load ptr, ptr %i.ao, align 8
  %i.gg = getelementptr i8, ptr %.05594.i, i64 8
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %i.gi = xor i32 %i.gh, %i.ge
  %i.gj = getelementptr i8, ptr %.05594.i, i64 12
  %i.gk = load i32, ptr %i.gj, align 4            ; 3 uses
  %i.gl = and i32 %i.gi, %i.gk
  %.not.i77.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i77.i, label %mcr_range.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i
  %i.gm = load ptr, ptr %i.gc, align 8            ; 2 uses
  %.not.i.i78.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i78.i, label %__drm_to_dev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.bb, %bb.ba
  %i.gp = phi ptr [ %i.go, %bb.bb ], [ null, %bb.ba ]
  %i.gq = getelementptr i8, ptr %i.gc, i64 4936
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = and i32 %i.gk, %i.ge
  %i.gt = and i32 %i.gk, %i.gh
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gp, ptr noundef nonnull @.str.20, i32 noundef %i.gr, ptr noundef %i.gf, ptr noundef %1, i32 noundef %i.fj, i32 noundef %i.ge, i32 noundef %i.gs, i32 noundef %i.gt) #13
  %.pre.i = load i32, ptr %i.d, align 8
  br label %mcr_range.exit.i

mcr_range.exit.i:                                 ; preds = %bb.ay, %__drm_to_dev.exit.i.i, %.loopexit.i
  %i.gu = phi i32 [ %.pre.i, %__drm_to_dev.exit.i.i ], [ %i.fh, %.loopexit.i ], [ %i.fh, %bb.ay ] ; 2 uses
  %.3.i = phi i32 [ -6, %__drm_to_dev.exit.i.i ], [ %.296.i, %.loopexit.i ], [ %.296.i, %bb.ay ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = getelementptr i8, ptr %.05594.i, i64 20
  %i.gw = zext i32 %i.gu to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next.i, %i.gw
  br i1 %i.gx, label %bb.au, label %._crit_edge.i, !llvm.loop !120

._crit_edge.i:                                    ; preds = %mcr_range.exit.i, %bb.at
  %.2.lcssa.i = phi i32 [ 0, %bb.at ], [ %.3.i, %mcr_range.exit.i ]
  %i.gy = load ptr, ptr %i.ae, align 8
  %i.gz = getelementptr i8, ptr %i.gy, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gz, ptr elementtype(i32) %i.gz) #8, !srcloc !121
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i, %bb.as, %.critedge.i, %bb.aq
  %.4.i = phi i32 [ %.1.i, %bb.aq ], [ %.2.lcssa.i, %._crit_edge.i ], [ %i.fd, %bb.as ], [ -62, %.critedge.i ] ; 4 uses
  br i1 %.not.i.i73.i, label %i915_request_put.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr i8, ptr %i.bs, i64 56     ; 4 uses
  %i.hb = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ha, i32 -1, ptr elementtype(i32) %i.ha) #8, !srcloc !116 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hd = icmp slt i32 %i.hb, 1
  br i1 %i.hd, label %bb.bf, label %i915_request_put.exit.i, !prof !12

bb.bf:                                            ; preds = %bb.be
  call void @refcount_warn_saturate(ptr noundef %i.ha, i32 noundef 3) #10
  br label %i915_request_put.exit.i

bb.bg:                                            ; preds = %bb.bd
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !122
  call void @dma_fence_release(ptr noundef %i.ha) #10, !callees !123, !inline_history !124
  br label %i915_request_put.exit.i

i915_request_put.exit.i:                          ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.p
  %.5.i = phi i32 [ %i.bv, %bb.p ], [ %.4.i, %bb.bc ], [ %.4.i, %bb.be ], [ %.4.i, %bb.bf ], [ %.4.i, %bb.bg ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, ptr elementtype(i32) %i.ak) #8, !srcloc !121
  br label %bb.bh

bb.bh:                                            ; preds = %i915_request_put.exit.i, %intel_context_pin_ww.exit.thread.i
  %.6.i = phi i32 [ %i.br, %intel_context_pin_ww.exit.thread.i ], [ %.5.i, %i915_request_put.exit.i ] ; 3 uses
  %i.he = load ptr, ptr %i.ap, align 8
  %i.hf = getelementptr i8, ptr %i.he, i64 88
  %i.hg = load ptr, ptr %i.hf, align 8
  %.not.i80.i = icmp eq ptr %i.hg, null
  br i1 %.not.i80.i, label %bb.bi, label %.preheader.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @__intel_context_do_unpin(ptr noundef %i.b, i32 noundef 1) #10
  br label %intel_context_unpin.exit.i

.preheader.i.i:                                   ; preds = %bb.bh, %atomic_add_unless.exit.i.i
  %i.hh = load volatile i32, ptr %i.ai, align 4   ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %atomic_add_unless.exit.i.i, label %.lr.ph.i81.i, !prof !111

.lr.ph.i81.i:                                     ; preds = %.preheader.i.i, %arch_atomic_try_cmpxchg.exit.i.i82.i
  %.010.i.i = phi i32 [ %i.ho, %arch_atomic_try_cmpxchg.exit.i.i82.i ], [ %i.hh, %.preheader.i.i ] ; 2 uses
  %i.hj = add i32 %.010.i.i, -1
  %i.hk = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 %i.hj, ptr elementtype(i32) %i.ai, i32 %.010.i.i) #8, !srcloc !112 ; 2 uses
  %i.hl = extractvalue { i8, i32 } %i.hk, 0       ; 2 uses
  %i.hm = icmp ult i8 %i.hl, 2
  call void @llvm.assume(i1 %i.hm)
  %i.hn = trunc nuw i8 %i.hl to i1
  br i1 %i.hn, label %intel_context_unpin.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i82.i, !prof !46

arch_atomic_try_cmpxchg.exit.i.i82.i:             ; preds = %.lr.ph.i81.i
  %i.ho = extractvalue { i8, i32 } %i.hk, 1       ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %atomic_add_unless.exit.i.i, label %.lr.ph.i81.i, !prof !113

atomic_add_unless.exit.i.i:                       ; preds = %arch_atomic_try_cmpxchg.exit.i.i82.i, %.preheader.i.i
  %i.hq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ai, i32 2, i32 1, ptr elementtype(i32) %i.ai) #8, !srcloc !125
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.bj, label %.preheader.i.i, !llvm.loop !126

bb.bj:                                            ; preds = %atomic_add_unless.exit.i.i
  %i.hs = load ptr, ptr %i.ap, align 8
  %i.ht = getelementptr i8, ptr %i.hs, i64 88
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef %i.b) #10, !inline_history !127
  br label %intel_context_unpin.exit.i

intel_context_unpin.exit.i:                       ; preds = %.lr.ph.i81.i, %bb.bj, %bb.bi, %intel_context_pin_ww.exit.i
  %.7.i = phi i32 [ %.0.i, %intel_context_pin_ww.exit.i ], [ %.6.i, %bb.bj ], [ %.6.i, %bb.bi ], [ %.6.i, %.lr.ph.i81.i ] ; 2 uses
  %i.hv = icmp eq i32 %.7.i, -35
  br i1 %i.hv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %intel_context_unpin.exit.i, %intel_context_unpin.exit.thread.i
  %i.hw = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #10 ; 2 uses
  %.not65.i = icmp eq i32 %i.hw, 0
  br i1 %.not65.i, label %bb.e, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %intel_context_unpin.exit.i
  %.8.i = phi i32 [ %i.hw, %bb.bk ], [ %.7.i, %intel_context_unpin.exit.i ] ; 3 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #10
  %i.hx = load ptr, ptr %i.f, align 8
  %i.hy = getelementptr i8, ptr %i.hx, i64 352    ; 4 uses
  %i.hz = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.ia = load volatile i32, ptr %i.hy, align 4   ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !111

.lr.ph.i.i.i.i:                                   ; preds = %bb.bl, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.06.i.i.i.i = phi i32 [ %i.ih, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.ia, %bb.bl ] ; 2 uses
  %i.ic = add i32 %.06.i.i.i.i, -1
  %i.id = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hy, i32 %i.ic, ptr elementtype(i32) %i.hy, i32 %.06.i.i.i.i) #8, !srcloc !112 ; 2 uses
  %i.ie = extractvalue { i8, i32 } %i.id, 0       ; 2 uses
  %i.if = icmp ult i8 %i.ie, 2
  call void @llvm.assume(i1 %i.if)
  %i.ig = trunc nuw i8 %i.ie to i1
  br i1 %i.ig, label %intel_engine_pm_put.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !46

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i
  %i.ih = extractvalue { i8, i32 } %i.id, 1       ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %atomic_add_unless.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !113

atomic_add_unless.exit.i.i.i.i:                   ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %bb.bl
  call void @__intel_wakeref_put_last(ptr noundef %i.hy, i64 noundef 0) #10
  br label %intel_engine_pm_put.exit.i

intel_engine_pm_put.exit.i:                       ; preds = %.lr.ph.i.i.i.i, %atomic_add_unless.exit.i.i.i.i
  %.val67.i = load ptr, ptr %i.ae, align 8        ; 4 uses
  %i.ij = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val67.i, i32 -1, ptr elementtype(i32) %.val67.i) #8, !srcloc !116 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 1
  br i1 %i.ik, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %intel_engine_pm_put.exit.i
  %i.il = icmp slt i32 %i.ij, 1
  br i1 %i.il, label %bb.bn, label %engine_wa_list_verify.exit, !prof !12

bb.bn:                                            ; preds = %bb.bm
  call void @refcount_warn_saturate(ptr noundef %.val67.i, i32 noundef 3) #10
  br label %engine_wa_list_verify.exit

bb.bo:                                            ; preds = %intel_engine_pm_put.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !122
  call void @drm_gem_object_free(ptr noundef %.val67.i) #10, !callees !123, !inline_history !124
  br label %engine_wa_list_verify.exit

engine_wa_list_verify.exit:                       ; preds = %bb.a, %bb.c, %bb.bm, %bb.bn, %bb.bo
  %.056.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.a ], [ %.8.i, %bb.bm ], [ %.8.i, %bb.bn ], [ %.8.i, %bb.bo ]
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %6) #9, !srcloc !10
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %5) #9, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 26116, ptr %4, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -536608768, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.m, align 4
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %4) #9, !srcloc !10
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %3) #9, !srcloc !10
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %2) #9, !srcloc !10
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %1) #9, !srcloc !11
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %2) #9, !srcloc !10
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
  call fastcc void @_wa_add(ptr noundef %0, ptr noundef nonnull %1) #9, !srcloc !11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}
end_hunk_1

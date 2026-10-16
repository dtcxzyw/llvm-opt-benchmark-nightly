Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_workarounds?download=true
inline.NumInlined: 566
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_engine_apply_workarounds:bb.a

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
  %3 = icmp ult i8 %i.ca, 8                       ; 2 uses
  %spec.select.i.i = select i1 %3, i32 306184193, i32 306184194
  %i.cb = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.cc = load i32, ptr %i.d, align 8             ; 4 uses
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.cd = getelementptr i8, ptr %i.by, i64 1657
  %.val44.i.i = load i8, ptr %i.cd, align 1
  %i.ce = zext i8 %i.ca to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = zext i8 %.val44.i.i to i32
  %i.ch = or disjoint i32 %i.cf, %i.cg
  %i.ci = icmp samesign ugt i32 %i.ch, 3126
  %i.cj = icmp ugt i8 %i.ca, 11
  %mcr_ranges_gen12.mux.i.i = select i1 %i.cj, ptr @mcr_ranges_gen12, ptr @mcr_ranges_gen8 ; 3 uses
  br i1 %i.ci, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %.loopexit59.us.i.i
  %.03462.us.i.i = phi ptr [ %i.cp, %.loopexit59.us.i.i ], [ %i.cb, %.lr.ph.i.i ] ; 2 uses
  %.03661.us.i.i = phi i32 [ %i.cn, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ] ; 13 uses
  %.03860.us.i.i = phi i32 [ %i.co, %.loopexit59.us.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ck = load i32, ptr %.03462.us.i.i, align 4   ; 25 uses
  %.not18.i.us.i.i = icmp ult i32 %i.ck, 16384
  br i1 %.not18.i.us.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.preheader.us.i.i
  %.not19.i.us.i.i = icmp ugt i32 %i.ck, 19199
  br i1 %.not19.i.us.i.i, label %.lr.ph.i.us.1.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.1.i.i:                                ; preds = %bb.r
  %.not18.i.us.1.i.i = icmp ult i32 %i.ck, 20992
  br i1 %.not18.i.us.1.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.us.1.i.i
  %.not19.i.us.1.i.i = icmp ugt i32 %i.ck, 21247
  br i1 %.not19.i.us.1.i.i, label %.lr.ph.i.us.2.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.2.i.i:                                ; preds = %bb.s
  %.not18.i.us.2.i.i = icmp ult i32 %i.ck, 21504
  br i1 %.not18.i.us.2.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.us.2.i.i
  %.not19.i.us.2.i.i = icmp ugt i32 %i.ck, 32767
  br i1 %.not19.i.us.2.i.i, label %.lr.ph.i.us.3.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.3.i.i:                                ; preds = %bb.t
  %.not18.i.us.3.i.i = icmp ult i32 %i.ck, 33088
  br i1 %.not18.i.us.3.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.us.3.i.i
  %.not19.i.us.3.i.i = icmp ugt i32 %i.ck, 33119
  br i1 %.not19.i.us.3.i.i, label %.lr.ph.i.us.4.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.4.i.i:                                ; preds = %bb.u
  %.not18.i.us.4.i.i = icmp ult i32 %i.ck, 35968
  br i1 %.not18.i.us.4.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.us.4.i.i
  %.not19.i.us.4.i.i = icmp ugt i32 %i.ck, 36351
  br i1 %.not19.i.us.4.i.i, label %.lr.ph.i.us.5.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.5.i.i:                                ; preds = %bb.v
  %.not18.i.us.5.i.i = icmp ult i32 %i.ck, 38096
  br i1 %.not18.i.us.5.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.us.5.i.i
  %.not19.i.us.5.i.i = icmp ugt i32 %i.ck, 38239
  br i1 %.not19.i.us.5.i.i, label %.lr.ph.i.us.6.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.6.i.i:                                ; preds = %bb.w
  %.not18.i.us.6.i.i = icmp ult i32 %i.ck, 38528
  br i1 %.not18.i.us.6.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us.6.i.i
  %.not19.i.us.6.i.i = icmp ugt i32 %i.ck, 38655
  br i1 %.not19.i.us.6.i.i, label %.lr.ph.i.us.7.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.7.i.i:                                ; preds = %bb.x
  %.not18.i.us.7.i.i = icmp ult i32 %i.ck, 45056
  br i1 %.not18.i.us.7.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.us.7.i.i
  %.not19.i.us.7.i.i = icmp ugt i32 %i.ck, 46079
  br i1 %.not19.i.us.7.i.i, label %.lr.ph.i.us.8.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.8.i.i:                                ; preds = %bb.y
  %.not18.i.us.8.i.i = icmp ult i32 %i.ck, 51200
  br i1 %.not18.i.us.8.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us.8.i.i
  %.not19.i.us.8.i.i = icmp ugt i32 %i.ck, 53247
  br i1 %.not19.i.us.8.i.i, label %.lr.ph.i.us.9.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.9.i.i:                                ; preds = %bb.z
  %.not18.i.us.9.i.i = icmp ult i32 %i.ck, 55296
  br i1 %.not18.i.us.9.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us.9.i.i
  %.not19.i.us.9.i.i = icmp ugt i32 %i.ck, 55551
  br i1 %.not19.i.us.9.i.i, label %.lr.ph.i.us.10.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.10.i.i:                               ; preds = %bb.aa
  %.not18.i.us.10.i.i = icmp ult i32 %i.ck, 56320
  br i1 %.not18.i.us.10.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.us.10.i.i
  %.not19.i.us.10.i.i = icmp ugt i32 %i.ck, 65535
  br i1 %.not19.i.us.10.i.i, label %.lr.ph.i.us.11.i.i, label %.loopexit59.us.i.i

.lr.ph.i.us.11.i.i:                               ; preds = %bb.ab
  %.not18.i.us.11.i.i = icmp ult i32 %i.ck, 94208
  br i1 %.not18.i.us.11.i.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.us.11.i.i
  %.not19.i.us.11.i.i = icmp ugt i32 %i.ck, 98303
  %i.cl = add i32 %i.ck, -150144
  %or.cond.i71.i = icmp ult i32 %i.cl, -128
  %or.cond.i = and i1 %.not19.i.us.11.i.i, %or.cond.i71.i
  br i1 %or.cond.i, label %mcr_range.exit.thread.loopexit.us.i.i, label %.loopexit59.us.i.i

mcr_range.exit.thread.loopexit.us.i.i:            ; preds = %bb.ac, %.lr.ph.i.us.11.i.i, %.lr.ph.i.us.10.i.i, %.lr.ph.i.us.9.i.i, %.lr.ph.i.us.8.i.i, %.lr.ph.i.us.7.i.i, %.lr.ph.i.us.6.i.i, %.lr.ph.i.us.5.i.i, %.lr.ph.i.us.4.i.i, %.lr.ph.i.us.3.i.i, %.lr.ph.i.us.2.i.i, %.lr.ph.i.us.1.i.i, %.lr.ph.i.preheader.us.i.i
  %i.cm = add i32 %.03661.us.i.i, 1
  br label %.loopexit59.us.i.i

.loopexit59.us.i.i:                               ; preds = %mcr_range.exit.thread.loopexit.us.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.cn = phi i32 [ %i.cm, %mcr_range.exit.thread.loopexit.us.i.i ], [ %.03661.us.i.i, %bb.r ], [ %.03661.us.i.i, %bb.ac ], [ %.03661.us.i.i, %bb.ab ], [ %.03661.us.i.i, %bb.aa ], [ %.03661.us.i.i, %bb.z ], [ %.03661.us.i.i, %bb.y ], [ %.03661.us.i.i, %bb.x ], [ %.03661.us.i.i, %bb.w ], [ %.03661.us.i.i, %bb.v ], [ %.03661.us.i.i, %bb.u ], [ %.03661.us.i.i, %bb.t ], [ %.03661.us.i.i, %bb.s ] ; 2 uses
  %i.co = add nuw i32 %.03860.us.i.i, 1           ; 2 uses
  %i.cp = getelementptr i8, ptr %.03462.us.i.i, i64 20
  %exitcond91.not.i.i = icmp eq i32 %i.co, %i.cc
  br i1 %exitcond91.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !112

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %4 = load i32, ptr %mcr_ranges_gen12.mux.i.i, align 16 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %4, 0
  %or.cond122.i.i = select i1 %3, i1 true, i1 %.not1.i.i.i
  br i1 %or.cond122.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us66.i.i

.lr.ph.i.preheader.us66.i.i:                      ; preds = %.lr.ph.split.i.i, %.loopexit59.us72.i.i
  %.03462.us63.i.i = phi ptr [ %i.dc, %.loopexit59.us72.i.i ], [ %i.cb, %.lr.ph.split.i.i ] ; 2 uses
  %.03661.us64.i.i = phi i32 [ %i.da, %.loopexit59.us72.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.03860.us65.i.i = phi i32 [ %i.db, %.loopexit59.us72.i.i ], [ 0, %.lr.ph.split.i.i ]
  %i.cq = load i32, ptr %.03462.us63.i.i, align 4 ; 2 uses
  br label %.lr.ph.i.us67.i.i

.lr.ph.i.us67.i.i:                                ; preds = %bb.ae, %.lr.ph.i.preheader.us66.i.i
  %i.cr = phi i32 [ %i.cy, %bb.ae ], [ %4, %.lr.ph.i.preheader.us66.i.i ]
  %i.cs = phi ptr [ %i.cx, %bb.ae ], [ %mcr_ranges_gen12.mux.i.i, %.lr.ph.i.preheader.us66.i.i ]
  %.02.i.us68.i.i = phi i32 [ %i.cv, %bb.ae ], [ 0, %.lr.ph.i.preheader.us66.i.i ]
  %.not18.i.us69.i.i = icmp ult i32 %i.cq, %i.cr
  br i1 %.not18.i.us69.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us67.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %.not19.i.us70.i.i = icmp ugt i32 %i.cq, %i.cu
  br i1 %.not19.i.us70.i.i, label %bb.ae, label %.loopexit59.us72.i.i

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.us67.i.i
  %i.cv = add i32 %.02.i.us68.i.i, 1              ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %mcr_ranges_gen12.mux.i.i, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not.i.us71.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.us71.i.i, label %mcr_range.exit.thread.loopexit.us73.i.i, label %.lr.ph.i.us67.i.i, !llvm.loop !113

mcr_range.exit.thread.loopexit.us73.i.i:          ; preds = %bb.ae
  %i.cz = add i32 %.03661.us64.i.i, 1
  br label %.loopexit59.us72.i.i

.loopexit59.us72.i.i:                             ; preds = %bb.ad, %mcr_range.exit.thread.loopexit.us73.i.i
  %i.da = phi i32 [ %i.cz, %mcr_range.exit.thread.loopexit.us73.i.i ], [ %.03661.us64.i.i, %bb.ad ] ; 2 uses
  %i.db = add nuw i32 %.03860.us65.i.i, 1         ; 2 uses
  %i.dc = getelementptr i8, ptr %.03462.us63.i.i, i64 20
  %exitcond.not.i.i = icmp eq i32 %i.db, %i.cc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us66.i.i, !llvm.loop !112

._crit_edge.i.i:                                  ; preds = %.loopexit59.us72.i.i, %.loopexit59.us.i.i, %.lr.ph.split.i.i, %bb.q
  %.036.lcssa.i.i = phi i32 [ 0, %bb.q ], [ %i.cn, %.loopexit59.us.i.i ], [ %i.cc, %.lr.ph.split.i.i ], [ %i.da, %.loopexit59.us72.i.i ]
  %i.dd = shl i32 %.036.lcssa.i.i, 2
  %i.de = call ptr @intel_ring_begin(ptr noundef %i.br, i32 noundef %i.dd) #10 ; 3 uses
  %i.df = icmp ugt ptr %i.de, inttoptr (i64 -4096 to ptr)
  br i1 %i.df, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = trunc i64 %i.dg to i32
  br label %wa_list_srm.exit.i

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.di = load i32, ptr %i.d, align 8             ; 2 uses
  %.not83.i.i = icmp eq i32 %i.di, 0
  br i1 %.not83.i.i, label %wa_list_srm.exit.i, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %bb.ag
  %i.dj = load ptr, ptr %i.al, align 8
  %i.dk = getelementptr i8, ptr %i.by, i64 1657
  br label %bb.ah

bb.ah:                                            ; preds = %mcr_range.exit55.i.i, %.lr.ph82.i.i
  %i.dl = phi i32 [ %i.di, %.lr.ph82.i.i ], [ %i.el, %mcr_range.exit55.i.i ]
  %.080.i.i = phi ptr [ %i.de, %.lr.ph82.i.i ], [ %.1.i.i, %mcr_range.exit55.i.i ] ; 6 uses
  %.13579.i.i = phi ptr [ %i.dj, %.lr.ph82.i.i ], [ %i.en, %mcr_range.exit55.i.i ] ; 2 uses
  %.13978.i.i = phi i32 [ 0, %.lr.ph82.i.i ], [ %i.em, %mcr_range.exit55.i.i ] ; 2 uses
  %i.dm = load i32, ptr %.13579.i.i, align 4      ; 3 uses
  %.val.i.i = load i8, ptr %i.bz, align 8         ; 3 uses
  %.val42.i.i = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %.val.i.i to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val42.i.i to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp samesign ugt i32 %i.dq, 3126
  br i1 %i.dr, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = icmp ugt i8 %.val.i.i, 11
  br i1 %i.ds, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = icmp samesign ugt i8 %.val.i.i, 7
  br i1 %i.dt, label %bb.ak, label %.loopexit.i70.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.013.i48.i.i = phi ptr [ @mcr_ranges_gen12, %bb.ai ], [ @mcr_ranges_xehp, %bb.ah ], [ @mcr_ranges_gen8, %bb.aj ] ; 3 uses
  %i.du = load i32, ptr %.013.i48.i.i, align 16   ; 2 uses
  %.not1.i49.i.i = icmp eq i32 %i.du, 0
  br i1 %.not1.i49.i.i, label %.loopexit.i70.i, label %.lr.ph.i50.i.i

.lr.ph.i50.i.i:                                   ; preds = %bb.ak, %bb.am
  %i.dv = phi i32 [ %i.ec, %bb.am ], [ %i.du, %bb.ak ]
  %i.dw = phi ptr [ %i.eb, %bb.am ], [ %.013.i48.i.i, %bb.ak ]
  %.02.i51.i.i = phi i32 [ %i.dz, %bb.am ], [ 0, %bb.ak ]
  %.not18.i52.i.i = icmp ult i32 %i.dm, %i.dv
  br i1 %.not18.i52.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i50.i.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4
  %.not19.i53.i.i = icmp ugt i32 %i.dm, %i.dy
  br i1 %.not19.i53.i.i, label %bb.am, label %mcr_range.exit55.i.i

bb.am:                                            ; preds = %bb.al, %.lr.ph.i50.i.i
  %i.dz = add i32 %.02.i51.i.i, 1                 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr [8 x i8], ptr %.013.i48.i.i, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %.not.i54.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i54.i.i, label %.loopexit.i70.i, label %.lr.ph.i50.i.i, !llvm.loop !113

.loopexit.i70.i:                                  ; preds = %bb.am, %bb.ak, %bb.aj
  %i.ed = getelementptr i8, ptr %.080.i.i, i64 4
  store i32 %spec.select.i.i, ptr %.080.i.i, align 4
  %i.ee = getelementptr i8, ptr %.080.i.i, i64 8
  store i32 %i.dm, ptr %i.ed, align 4
  %.val45.i.i = load i64, ptr %i.am, align 8
  %.val46.i.i = load i32, ptr %i.an, align 8
  %i.ef = trunc i64 %.val45.i.i to i32
  %i.eg = shl i32 %.13978.i.i, 2
  %i.eh = add i32 %i.eg, %i.ef
  %i.ei = add i32 %i.eh, %.val46.i.i
  %i.ej = getelementptr i8, ptr %.080.i.i, i64 12
  store i32 %i.ei, ptr %i.ee, align 4
  %i.ek = getelementptr i8, ptr %.080.i.i, i64 16
  store i32 0, ptr %i.ej, align 4
  %.pre.i.i = load i32, ptr %i.d, align 8
  br label %mcr_range.exit55.i.i

mcr_range.exit55.i.i:                             ; preds = %bb.al, %.loopexit.i70.i
  %i.el = phi i32 [ %.pre.i.i, %.loopexit.i70.i ], [ %i.dl, %bb.al ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ek, %.loopexit.i70.i ], [ %.080.i.i, %bb.al ]
  %i.em = add nuw i32 %.13978.i.i, 1              ; 2 uses
  %i.en = getelementptr i8, ptr %.13579.i.i, i64 20
  %i.eo = icmp ult i32 %i.em, %i.el
  br i1 %i.eo, label %bb.ah, label %wa_list_srm.exit.i, !llvm.loop !114

wa_list_srm.exit.i:                               ; preds = %mcr_range.exit55.i.i, %bb.ag, %bb.af, %bb.p
  %.1.i = phi i32 [ %i.bv, %bb.p ], [ %i.dh, %bb.af ], [ 0, %bb.ag ], [ 0, %mcr_range.exit55.i.i ] ; 3 uses
  %.not.i.i72.i = icmp eq ptr %i.br, null         ; 2 uses
  br i1 %.not.i.i72.i, label %i915_request_get.exit.i, label %bb.an

bb.an:                                            ; preds = %wa_list_srm.exit.i
  %i.ep = getelementptr i8, ptr %i.br, i64 56     ; 3 uses
  %i.eq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ep, i32 1, ptr elementtype(i32) %i.ep) #8, !srcloc !124 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.er = add i32 %i.eq, 1
  %i.es = or i32 %i.er, %i.eq
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.es, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %i915_request_get.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ao, %bb.an
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.an ], [ 1, %bb.ao ]
  call void @refcount_warn_saturate(ptr noundef %i.ep, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %i915_request_get.exit.i

i915_request_get.exit.i:                          ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.ao, %wa_list_srm.exit.i
  %.not64.i = icmp eq i32 %.1.i, 0
  br i1 %.not64.i, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %i915_request_get.exit.i
  %i.et = call zeroext i1 @i915_request_set_error_once(ptr noundef %i.br, i32 noundef %.1.i) #10 ; 0 uses
  call void @i915_request_add(ptr noundef %i.br) #10
  br label %bb.bb

.critedge.i:                                      ; preds = %i915_request_get.exit.i
  call void @i915_request_add(ptr noundef %i.br) #10
  %i.eu = call i64 @i915_request_wait(ptr noundef %i.br, i32 noundef 0, i64 noundef 200) #10
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i
  %i.ew = load ptr, ptr %i.ae, align 8
  %i.ex = call ptr @i915_gem_object_pin_map(ptr noundef %i.ew, i32 noundef 0) #10 ; 3 uses
  %i.ey = icmp ugt ptr %i.ex, inttoptr (i64 -4096 to ptr)
  br i1 %i.ey, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = trunc i64 %i.ez to i32
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  %i.fb = load i32, ptr %i.d, align 8             ; 2 uses
  %.not96.i = icmp eq i32 %i.fb, 0
  br i1 %.not96.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.fc = load ptr, ptr %i.al, align 8
  %i.fd = getelementptr i8, ptr %i.br, i64 72
  br label %bb.at

bb.at:                                            ; preds = %mcr_range.exit.i, %.lr.ph.i
  %i.fe = phi i32 [ %i.fb, %.lr.ph.i ], [ %i.gr, %mcr_range.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %mcr_range.exit.i ] ; 2 uses
  %.295.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %mcr_range.exit.i ] ; 2 uses
end_hunk_0

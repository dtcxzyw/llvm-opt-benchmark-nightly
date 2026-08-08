inline.NumInlined: 73
inline.NumDeleted: 46
begin_hunk_0_@intel_gsc_uc_heci_cmd_submit_packet:bb.a
  %.in.i8.not.i = icmp eq i64 %.in.in.i7.i, 0
  br i1 %.in.i8.not.i, label %i915_request_started.exit, label %i915_request_started.exit.thread72, !prof !12

i915_request_started.exit.thread72:               ; preds = %i915_request_signaled.exit9.i
  tail call void @__rcu_read_unlock() #7
  br label %.thread84

i915_request_started.exit:                        ; preds = %i915_request_signaled.exit9.i
  %i.an = load volatile ptr, ptr %i.ah, align 8
  %i.ao = load volatile i32, ptr %i.an, align 4
  %i.ap = load i64, ptr %i.ai, align 8
  %i.aq = trunc i64 %i.ap to i32
  %.neg2.i.i = add i32 %i.ao, 1
  %i.ar = sub i32 %.neg2.i.i, %i.aq
  %.fr = freeze i32 %i.ar
  %i.as = icmp sgt i32 %.fr, -1
  tail call void @__rcu_read_unlock() #7
  br i1 %i.as, label %.thread84, label %bb.l

bb.l:                                             ; preds = %i915_request_started.exit
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = shl i64 %.041, 1                        ; 2 uses
  tail call void @usleep_range_state(i64 noundef %.041, i64 noundef %i.at, i32 noundef 2) #7
  %i.au = icmp slt i64 %.041, 1000
  %spec.select = select i1 %i.au, i64 %i.at, i64 %.041
  br label %i915_request_signaled.exit.i

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %0, i64 -48
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.n, %bb.o
  %i.az = phi ptr [ %i.ay, %bb.o ], [ null, %bb.n ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.az, i32 noundef 1, ptr noundef nonnull @.str) #7
  br label %.thread84

.thread84:                                        ; preds = %i915_request_started.exit, %i915_request_signaled.exit.i, %i915_request_started.exit.thread72, %__drm_to_dev.exit
  %i.ba = tail call i64 @i915_request_wait(ptr noundef %i.c, i32 noundef 0, i64 noundef 500) #7
  %i.bb = icmp slt i64 %i.ba, 0
  %spec.select56 = select i1 %i.bb, i32 -62, i32 0
  br label %bb.p

bb.p:                                             ; preds = %.thread84, %bb.k
  %.144 = phi i32 [ %.043, %bb.k ], [ %spec.select56, %.thread84 ] ; 3 uses
  br i1 %.not.i.i, label %i915_request_put.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %i.c, i64 56      ; 4 uses
  %i.bd = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bc, i32 -1, ptr elementtype(i32) %i.bc) #8, !srcloc !10 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp slt i32 %i.bd, 1
  br i1 %i.bf, label %bb.s, label %i915_request_put.exit, !prof !11

bb.s:                                             ; preds = %bb.r
  tail call void @refcount_warn_saturate(ptr noundef %i.bc, i32 noundef 3) #7
  br label %i915_request_put.exit

bb.t:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %i.bc) #7
  br label %i915_request_put.exit

i915_request_put.exit:                            ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %.not55 = icmp eq i32 %.144, 0
  br i1 %.not55, label %bb.w, label %bb.u

bb.u:                                             ; preds = %i915_request_put.exit
  %i.bg = getelementptr i8, ptr %0, i64 -48
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.bh, null
  br i1 %.not.i59, label %__drm_to_dev.exit60, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit60

__drm_to_dev.exit60:                              ; preds = %bb.u, %bb.v
  %i.bk = phi ptr [ %i.bj, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bk, ptr noundef nonnull @.str.1, i32 noundef %.144) #9
  br label %bb.w

bb.w:                                             ; preds = %i915_request_put.exit, %__drm_to_dev.exit60, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ -19, %bb.a ], [ %.144, %__drm_to_dev.exit60 ], [ 0, %i915_request_put.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_request_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_request_set_error_once(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_request_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @i915_request_wait(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @intel_gsc_uc_heci_cmd_emit_mtl_header(ptr nofree noundef writeonly captures(none) initializes((0, 5), (6, 16), (24, 28)) %0, i8 noundef zeroext %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %3, 1152921504606846975          ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp eq i8 %1, 17
  %or.cond = and i1 %i.c, %i.b
  %i.d = or disjoint i64 %i.a, 1152921504606846976
  %spec.select = select i1 %or.cond, i64 %i.d, i64 %i.a
  store i32 -1518827686, ptr %0, align 1
  %i.e = getelementptr i8, ptr %0, i64 4
  store i8 %1, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 6
  store i16 1, ptr %i.g, align 1
  %i.h = getelementptr i8, ptr %0, i64 24
  store i32 %2, ptr %i.h, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_gsc_uc_heci_cmd_submit_nonpriv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !15
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext false) #7
  %i.a = getelementptr i8, ptr %2, i64 40         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.e = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 212        ; 8 uses
  %i.g = getelementptr i8, ptr %3, i64 4
  %i.h = getelementptr i8, ptr %3, i64 8
  %i.i = getelementptr i8, ptr %3, i64 12
  %i.j = getelementptr i8, ptr %2, i64 8
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.m = getelementptr i8, ptr %3, i64 20
  %i.n = getelementptr i8, ptr %3, i64 24
  %i.o = getelementptr i8, ptr %2, i64 24
  %i.p = getelementptr i8, ptr %3, i64 28
  %i.q = getelementptr i8, ptr %3, i64 32
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = getelementptr i8, ptr %0, i64 -48        ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 392        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.aq, %bb.a
  %.061 = phi i32 [ 0, %bb.a ], [ %i.ff, %bb.aq ]
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 184
  %i.x = load ptr, ptr %i.w, align 8              ; 11 uses
  %i.y = load i8, ptr %i.b, align 8, !range !16, !noundef !17
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr i8, ptr %i.x, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.ab, ptr noundef nonnull %5) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = call i32 @ww_mutex_lock(ptr noundef %i.ab, ptr noundef nonnull %5) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.ad, %bb.d ] ; 4 uses
  %6 = icmp eq i32 %.0.i.i, 0
  br i1 %6, label %bb.f, label %7

bb.f:                                             ; preds = %bb.e
  %i.ae = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, i32 1, ptr elementtype(i32) %i.x) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.af = add i32 %i.ae, 1
  %i.ag = or i32 %i.af, %i.ae
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %i.x, i32 noundef %.sink.i.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.ah = getelementptr i8, ptr %i.x, i64 544     ; 3 uses
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  store ptr %i.ah, ptr %i.d, align 8
  store ptr %i.c, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.x, i64 552
  store ptr %i.ai, ptr %i.aj, align 8
  store volatile ptr %i.ah, ptr %i.ai, align 8
  br label %7

7:                                                ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %8 = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %8, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %intel_context_unpin.exit.thread137 [
    i32 -35, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %7
  %i.ak = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, i32 1, ptr elementtype(i32) %i.x) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.al = add i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.am, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %intel_context_unpin.exit.thread.sink.split, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %i.x, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #7
  br label %intel_context_unpin.exit.thread.sink.split

bb.j:                                             ; preds = %7
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8            ; 11 uses
  %i.aq = load i8, ptr %i.b, align 8, !range !16, !noundef !17
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr i8, ptr %i.ap, i64 248
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.at, ptr noundef nonnull %5) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = call i32 @ww_mutex_lock(ptr noundef %i.at, ptr noundef nonnull %5) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i87 = phi i32 [ %i.au, %bb.k ], [ %i.av, %bb.l ] ; 4 uses
  %9 = icmp eq i32 %.0.i.i87, 0
  br i1 %9, label %bb.n, label %10

bb.n:                                             ; preds = %bb.m
  %i.aw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ap, i32 1, ptr elementtype(i32) %i.ap) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i95 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i95, label %.sink.split.i.i.i.i.i.i.i.i97, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.ax = add i32 %i.aw, 1
  %i.ay = or i32 %i.ax, %i.aw
  %.not10.i.i.i.i.i.i.i.i96 = icmp sgt i32 %i.ay, -1
  br i1 %.not10.i.i.i.i.i.i.i.i96, label %i915_gem_object_get.exit.i.i99, label %.sink.split.i.i.i.i.i.i.i.i97, !prof !12

.sink.split.i.i.i.i.i.i.i.i97:                    ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i.i.i.i.i98 = phi i32 [ 2, %bb.n ], [ 1, %bb.o ]
  call void @refcount_warn_saturate(ptr noundef %i.ap, i32 noundef %.sink.i.i.i.i.i.i.i.i98) #7
  br label %i915_gem_object_get.exit.i.i99

i915_gem_object_get.exit.i.i99:                   ; preds = %.sink.split.i.i.i.i.i.i.i.i97, %bb.o
  %i.az = getelementptr i8, ptr %i.ap, i64 544    ; 3 uses
  %i.ba = load ptr, ptr %i.d, align 8             ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  store ptr %i.c, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ap, i64 552
  store ptr %i.ba, ptr %i.bb, align 8
  store volatile ptr %i.az, ptr %i.ba, align 8
  br label %10

10:                                               ; preds = %i915_gem_object_get.exit.i.i99, %bb.m
  %11 = icmp eq i32 %.0.i.i87, -114
  %spec.store.select.i6.i88 = select i1 %11, i32 0, i32 %.0.i.i87
  switch i32 %spec.store.select.i6.i88, label %intel_context_unpin.exit.thread137 [
    i32 -35, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %10
  %i.bc = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ap, i32 1, ptr elementtype(i32) %i.ap) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i90 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i90, label %.sink.split.i.i.i.i.i.i21.i9.i92, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bd = add i32 %i.bc, 1
  %i.be = or i32 %i.bd, %i.bc
  %.not10.i.i.i.i.i.i20.i8.i91 = icmp sgt i32 %i.be, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i91, label %intel_context_unpin.exit.thread.sink.split, label %.sink.split.i.i.i.i.i.i21.i9.i92, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i92:                 ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i22.i10.i93 = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  call void @refcount_warn_saturate(ptr noundef %i.ap, i32 noundef %.sink.i.i.i.i.i.i22.i10.i93) #7
  br label %intel_context_unpin.exit.thread.sink.split

bb.r:                                             ; preds = %10
  %i.bf = load volatile i32, ptr %i.f, align 4    ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %intel_context_pin_ww.exit, label %.lr.ph.i.i, !prof !18

.lr.ph.i.i:                                       ; preds = %bb.r, %arch_atomic_try_cmpxchg.exit.i.i
  %.04.i.i = phi i32 [ %i.bl, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.bf, %bb.r ] ; 2 uses
  %i.bg = add i32 %.04.i.i, 1
  %i.bh = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.bg, ptr elementtype(i32) %i.f, i32 %.04.i.i) #8, !srcloc !19 ; 2 uses
  %i.bi = extractvalue { i8, i32 } %i.bh, 0       ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 2
  call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc nuw i8 %i.bi to i1
  br i1 %i.bk, label %intel_context_pin_ww.exit.thread, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !12

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.bl = extractvalue { i8, i32 } %i.bh, 1       ; 2 uses
  %.not7.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not7.i.i, label %intel_context_pin_ww.exit, label %.lr.ph.i.i, !prof !20

intel_context_pin_ww.exit:                        ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %bb.r
  %i.bm = call i32 @__intel_context_do_pin_ww(ptr noundef %1, ptr noundef nonnull %5) #7 ; 2 uses
  %.not75 = icmp eq i32 %i.bm, 0
  br i1 %.not75, label %intel_context_pin_ww.exit.thread, label %intel_context_unpin.exit

intel_context_pin_ww.exit.thread:                 ; preds = %.lr.ph.i.i, %intel_context_pin_ww.exit
  %i.bn = call ptr @i915_request_create(ptr noundef %1) #7 ; 20 uses
  %i.bo = icmp ugt ptr %i.bn, inttoptr (i64 -4096 to ptr)
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %intel_context_pin_ww.exit.thread
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = trunc i64 %i.bp to i32
  br label %i915_request_put.exit

bb.t:                                             ; preds = %intel_context_pin_ww.exit.thread
  store i32 1073741830, ptr %3, align 4
  %i.br = load i64, ptr %2, align 8
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.g, align 4
  %i.bt = load i64, ptr %2, align 8
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  store i32 %i.bv, ptr %i.h, align 4
  %i.bw = load i32, ptr %i.j, align 8
  store i32 %i.bw, ptr %i.i, align 4
  %i.bx = load i64, ptr %i.l, align 8
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.k, align 4
  %i.bz = load i64, ptr %i.l, align 8
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  store i32 %i.cb, ptr %i.m, align 4
  %i.cc = load i32, ptr %i.o, align 8
  store i32 %i.cc, ptr %i.n, align 4
  store i32 0, ptr %i.p, align 4
  store i32 83886080, ptr %i.q, align 4
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = call i32 @_i915_vma_move_to_active(ptr noundef %i.cd, ptr noundef %i.bn, ptr noundef %i.bn, i32 noundef 0) #7 ; 2 uses
  %.not76 = icmp eq i32 %i.ce, 0
  br i1 %.not76, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.e, align 8
  %i.cg = call i32 @_i915_vma_move_to_active(ptr noundef %i.cf, ptr noundef %i.bn, ptr noundef %i.bn, i32 noundef 4) #7 ; 2 uses
  %.not77 = icmp eq i32 %i.cg, 0
  br i1 %.not77, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %i.bn, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 896
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.cm, null
  br i1 %.not78, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = call i32 %i.cm(ptr noundef %i.bn) #7    ; 2 uses
  %.not79 = icmp eq i32 %i.cn, 0
  br i1 %.not79, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.co = getelementptr i8, ptr %i.ck, i64 888
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %.val = load i64, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 248
  %.val86 = load i32, ptr %i.cs, align 8
  %i.ct = zext i32 %.val86 to i64
  %i.cu = add i64 %.val, %i.ct
  %i.cv = call i32 %i.cp(ptr noundef %i.bn, i64 noundef %i.cu, i32 noundef 4096, i32 noundef 0) #7 ; 2 uses
  %.not80 = icmp eq i32 %i.cv, 0
  br i1 %.not80, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cw = load ptr, ptr %i.r, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 880
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call i32 %i.cy(ptr noundef %i.bn, i32 noundef 0) #7 ; 3 uses
  %.not81 = icmp eq i32 %i.cz, 0
  br i1 %.not81, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.z, %bb.aa
  %i.dd = phi ptr [ %i.dc, %bb.aa ], [ null, %bb.z ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.dd, ptr noundef nonnull @.str.2, i32 noundef %i.cz) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %__drm_to_dev.exit, %bb.x, %bb.w, %bb.u, %bb.t
  %.058 = phi i32 [ %i.ce, %bb.t ], [ %i.cg, %bb.u ], [ %i.cn, %bb.w ], [ %i.cv, %bb.x ], [ %i.cz, %__drm_to_dev.exit ], [ 0, %bb.y ] ; 3 uses
  %.not.i.i102 = icmp eq ptr %i.bn, null          ; 2 uses
  br i1 %.not.i.i102, label %i915_request_get.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr i8, ptr %i.bn, i64 56     ; 3 uses
  %i.df = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.de, i32 1, ptr elementtype(i32) %i.de) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.dg = add i32 %i.df, 1
  %i.dh = or i32 %i.dg, %i.df
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.dh, -1
  br i1 %.not10.i.i.i.i.i.i, label %i915_request_get.exit, label %.sink.split.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ad, %bb.ac
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.ac ], [ 1, %bb.ad ]
  call void @refcount_warn_saturate(ptr noundef %i.de, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %i915_request_get.exit

i915_request_get.exit:                            ; preds = %bb.ab, %bb.ad, %.sink.split.i.i.i.i.i.i
  %.not82 = icmp eq i32 %.058, 0
  br i1 %.not82, label %.critedge, label %bb.ae, !prof !12

bb.ae:                                            ; preds = %i915_request_get.exit
  %i.di = call zeroext i1 @i915_request_set_error_once(ptr noundef %i.bn, i32 noundef %.058) #7 ; 0 uses
  call void @i915_request_add(ptr noundef %i.bn) #7
  br label %bb.aj

.critedge:                                        ; preds = %i915_request_get.exit
  call void @i915_request_add(ptr noundef %i.bn) #7
  %i.dj = call i64 @ktime_get_raw() #7
  %i.dk = add i64 %i.dj, 500000000
  %i.dl = call i32 @__SCT__might_resched() #7     ; 0 uses
  %i.dm = getelementptr i8, ptr %i.bn, i64 48     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.bn, i64 448
  %i.do = getelementptr i8, ptr %i.bn, i64 40
  br label %i915_request_signaled.exit.i

i915_request_signaled.exit.i:                     ; preds = %bb.ag, %.critedge
  %.056 = phi i64 [ 10, %.critedge ], [ %spec.select, %bb.ag ] ; 4 uses
  %i.dp = call i64 @ktime_get_raw() #7
  %i.dq = icmp sgt i64 %i.dp, %i.dk
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.dr = load volatile i64, ptr %i.dm, align 8
  %.in.in.i.i = and i64 %i.dr, 8
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %i915_request_signaled.exit9.i, label %.thread132

i915_request_signaled.exit9.i:                    ; preds = %i915_request_signaled.exit.i
  call void @__rcu_read_lock() #7
  %i.ds = load volatile i64, ptr %i.dm, align 8
  %.in.in.i7.i = and i64 %i.ds, 8
  %.in.i8.not.i = icmp eq i64 %.in.in.i7.i, 0
  br i1 %.in.i8.not.i, label %i915_request_started.exit, label %i915_request_started.exit.thread120, !prof !12

i915_request_started.exit.thread120:              ; preds = %i915_request_signaled.exit9.i
  call void @__rcu_read_unlock() #7
  br label %.thread132

i915_request_started.exit:                        ; preds = %i915_request_signaled.exit9.i
  %i.dt = load volatile ptr, ptr %i.dn, align 8
  %i.du = load volatile i32, ptr %i.dt, align 4
  %i.dv = load i64, ptr %i.do, align 8
  %i.dw = trunc i64 %i.dv to i32
  %.neg2.i.i = add i32 %i.du, 1
  %i.dx = sub i32 %.neg2.i.i, %i.dw
  %.fr = freeze i32 %i.dx
  %i.dy = icmp sgt i32 %.fr, -1
  call void @__rcu_read_unlock() #7
  br i1 %i.dy, label %.thread132, label %bb.af

bb.af:                                            ; preds = %i915_request_started.exit
  br i1 %i.dq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = shl i64 %.056, 1                        ; 2 uses
  call void @usleep_range_state(i64 noundef %.056, i64 noundef %i.dz, i32 noundef 2) #7
  %i.ea = icmp slt i64 %.056, 1000
  %spec.select = select i1 %i.ea, i64 %i.dz, i64 %.056
  br label %i915_request_signaled.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i104 = icmp eq ptr %i.eb, null
  br i1 %.not.i104, label %__drm_to_dev.exit105, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %__drm_to_dev.exit105

__drm_to_dev.exit105:                             ; preds = %bb.ah, %bb.ai
  %i.ee = phi ptr [ %i.ed, %bb.ai ], [ null, %bb.ah ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ee, i32 noundef 1, ptr noundef nonnull @.str.3) #7
  br label %.thread132

.thread132:                                       ; preds = %i915_request_signaled.exit.i, %i915_request_started.exit, %__drm_to_dev.exit105, %i915_request_started.exit.thread120
  %i.ef = call i64 @__msecs_to_jiffies(i32 noundef %4) #7
  %i.eg = call i64 @i915_request_wait(ptr noundef %i.bn, i32 noundef 1, i64 noundef %i.ef) #7
  %i.eh = icmp slt i64 %i.eg, 0
  %spec.select85 = select i1 %i.eh, i32 -62, i32 0
  br label %bb.aj

bb.aj:                                            ; preds = %.thread132, %bb.ae
  %.159 = phi i32 [ %.058, %bb.ae ], [ %spec.select85, %.thread132 ] ; 4 uses
  br i1 %.not.i.i102, label %i915_request_put.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr i8, ptr %i.bn, i64 56     ; 4 uses
  %i.ej = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ei, i32 -1, ptr elementtype(i32) %i.ei) #8, !srcloc !10 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = icmp slt i32 %i.ej, 1
  br i1 %i.el, label %bb.am, label %i915_request_put.exit, !prof !11

bb.am:                                            ; preds = %bb.al
  call void @refcount_warn_saturate(ptr noundef %i.ei, i32 noundef 3) #7
  br label %i915_request_put.exit

bb.an:                                            ; preds = %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !14
  call void @dma_fence_release(ptr noundef %i.ei) #7
  br label %i915_request_put.exit

i915_request_put.exit:                            ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %bb.s
  %.260 = phi i32 [ %i.bq, %bb.s ], [ %.159, %bb.aj ], [ %.159, %bb.al ], [ %.159, %bb.am ], [ %.159, %bb.an ] ; 3 uses
  %i.em = load ptr, ptr %i.t, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 88
  %i.eo = load ptr, ptr %i.en, align 8
  %.not.i107 = icmp eq ptr %i.eo, null
  br i1 %.not.i107, label %bb.ao, label %.preheader.i

bb.ao:                                            ; preds = %i915_request_put.exit
  call void @__intel_context_do_unpin(ptr noundef %1, i32 noundef 1) #7
  br label %intel_context_unpin.exit

.preheader.i:                                     ; preds = %i915_request_put.exit, %atomic_add_unless.exit.i
  %i.ep = load volatile i32, ptr %i.f, align 4    ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %atomic_add_unless.exit.i, label %.lr.ph.i, !prof !18

.lr.ph.i:                                         ; preds = %.preheader.i, %arch_atomic_try_cmpxchg.exit.i.i108
  %.010.i = phi i32 [ %i.ew, %arch_atomic_try_cmpxchg.exit.i.i108 ], [ %i.ep, %.preheader.i ] ; 2 uses
  %i.er = add i32 %.010.i, -1
  %i.es = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.er, ptr elementtype(i32) %i.f, i32 %.010.i) #8, !srcloc !19 ; 2 uses
  %i.et = extractvalue { i8, i32 } %i.es, 0       ; 2 uses
  %i.eu = icmp ult i8 %i.et, 2
  call void @llvm.assume(i1 %i.eu)
  %i.ev = trunc nuw i8 %i.et to i1
  br i1 %i.ev, label %intel_context_unpin.exit, label %arch_atomic_try_cmpxchg.exit.i.i108, !prof !12

arch_atomic_try_cmpxchg.exit.i.i108:              ; preds = %.lr.ph.i
  %i.ew = extractvalue { i8, i32 } %i.es, 1       ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %atomic_add_unless.exit.i, label %.lr.ph.i, !prof !20

atomic_add_unless.exit.i:                         ; preds = %arch_atomic_try_cmpxchg.exit.i.i108, %.preheader.i
  %i.ey = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 2, i32 1, ptr elementtype(i32) %i.f) #8, !srcloc !22
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.ap, label %.preheader.i, !llvm.loop !23

bb.ap:                                            ; preds = %atomic_add_unless.exit.i
  %i.fa = load ptr, ptr %i.t, align 8
  %i.fb = getelementptr i8, ptr %i.fa, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef %1) #7, !inline_history !25
  br label %intel_context_unpin.exit

intel_context_unpin.exit:                         ; preds = %.lr.ph.i, %bb.ap, %bb.ao, %intel_context_pin_ww.exit
  %.3 = phi i32 [ %.260, %bb.ap ], [ %.260, %bb.ao ], [ %i.bm, %intel_context_pin_ww.exit ], [ %.260, %.lr.ph.i ] ; 2 uses
  %i.fd = icmp eq i32 %.3, -35
  br i1 %i.fd, label %intel_context_unpin.exit.thread, label %intel_context_unpin.exit.thread137

intel_context_unpin.exit.thread.sink.split:       ; preds = %.sink.split.i.i.i.i.i.i21.i9.i92, %bb.q, %.sink.split.i.i.i.i.i.i21.i9.i, %bb.i
  %.sink = phi ptr [ %i.x, %.sink.split.i.i.i.i.i.i21.i9.i ], [ %i.x, %bb.i ], [ %i.ap, %bb.q ], [ %i.ap, %.sink.split.i.i.i.i.i.i21.i9.i92 ]
  store ptr %.sink, ptr %i.u, align 8
  br label %intel_context_unpin.exit.thread

intel_context_unpin.exit.thread:                  ; preds = %intel_context_unpin.exit.thread.sink.split, %intel_context_unpin.exit
  %i.fe = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #7 ; 2 uses
  %.not84 = icmp eq i32 %i.fe, 0
  br i1 %.not84, label %bb.aq, label %intel_context_unpin.exit.thread137

bb.aq:                                            ; preds = %intel_context_unpin.exit.thread
  %i.ff = add nuw nsw i32 %.061, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, 10
  br i1 %exitcond.not, label %intel_context_unpin.exit.thread137, label %bb.b

intel_context_unpin.exit.thread137:               ; preds = %10, %7, %bb.aq, %intel_context_unpin.exit.thread, %intel_context_unpin.exit
  %.4 = phi i32 [ %i.fe, %intel_context_unpin.exit.thread ], [ %.3, %intel_context_unpin.exit ], [ -11, %bb.aq ], [ %.0.i.i87, %10 ], [ %.0.i.i, %7 ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_ring_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_context_do_pin_ww(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_i915_vma_move_to_active(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_context_do_unpin(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2148888249, i64 2148888288, i64 2148888309, i64 2148888346, i64 2148888369, i64 2148888378}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 2161721231}
!14 = !{i64 2151330297}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"branch_weights", i32 1, i32 127}
!19 = !{i64 2148893998, i64 2148894037, i64 2148894058, i64 2148894095, i64 2148894118, i64 2148894127}
!20 = !{!"branch_weights", i32 127, i32 255873}
!21 = !{i64 2161727604}
!22 = !{i64 2148890936, i64 2148890975, i64 2148890996, i64 2148891033, i64 2148891056, i64 2148891065}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{null}
end_hunk_0

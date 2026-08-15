inline.NumInlined: 411
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@i915_vma_resource_alloc
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_active_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_vma_insert(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.b) ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.e to i64
  %i.g = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.f) ; 2 uses
  %i.h = and i64 %4, 8
  %.not = icmp eq i64 %i.h, 0                     ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 252
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.k)
  %i.m = getelementptr i8, ptr %0, i64 256
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0144 = phi i64 [ %i.p, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %.0142 = phi i64 [ %i.l, %bb.b ], [ %i.c, %bb.a ] ; 6 uses
  %i.q = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %4, 256
  %.not157 = icmp eq i64 %i.s, 0
  %i.t = trunc i64 %4 to i32                      ; 3 uses
  %i.u = and i32 %i.t, -4096
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %i.u)
  %.0147.in = select i1 %.not157, i32 %i.r, i32 %i.v
  %.0147 = zext i32 %.0147.in to i64
  %i.w = add i64 %.0144, -1
  %i.x = add i64 %i.w, %.0147
  %i.y = sub i64 0, %.0144
  %i.z = and i64 %i.x, %i.y                       ; 5 uses
  %i.aa = and i64 %4, 64
  %.not158 = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %4, -4096                       ; 7 uses
  %i.ac = select i1 %.not158, i64 0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 8 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 328
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %i.ae, i64 776
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0148 = phi i64 [ %i.aj, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ak = and i64 %4, 16
  %.not159 = icmp eq i64 %i.ak, 0
  %i.al = tail call i64 @llvm.umin.i64(i64 %.0148, i64 4294963200)
  %.1149 = select i1 %.not159, i64 %.0148, i64 %i.al ; 7 uses
  %i.am = getelementptr i8, ptr %0, i64 184
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 720
  %i.ap = load volatile ptr, ptr %i.ao, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %i915_vm_obj_min_alignment.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %i.ap, i64 192
  %i.ar = load i16, ptr %i.aq, align 8
  %.fr.i = freeze i16 %i.ar                       ; 2 uses
  %i.as = icmp ugt i16 %.fr.i, 3
  %narrow.i = select i1 %i.as, i16 0, i16 %.fr.i
  %i.at = zext nneg i16 %narrow.i to i64
  br label %i915_vm_obj_min_alignment.exit

i915_vm_obj_min_alignment.exit:                   ; preds = %bb.e, %bb.f
  %i.au = phi i64 [ 0, %bb.e ], [ %i.at, %bb.f ]
  %i.av = getelementptr i8, ptr %i.ae, i64 344
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = tail call i64 @llvm.umax.i64(i64 %.0144, i64 %i.ax) ; 5 uses
  %i.az = shl i64 %i.z, 1                         ; 3 uses
  %i.ba = sub i64 %.1149, %i.az
  %i.bb = icmp ugt i64 %.0142, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %i915_vm_obj_min_alignment.exit
  %i.bc = getelementptr i8, ptr %i.an, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i168 = icmp eq ptr %i.bd, null
  br i1 %.not.i168, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.bg = phi ptr [ %i.bf, %bb.h ], [ null, %bb.g ]
  %i.bh = select i1 %.not, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bg, i32 noundef 1, ptr noundef nonnull @.str.10, i64 noundef %.0142, ptr noundef nonnull %i.bh, i64 noundef %.1149) #14
  br label %.thread

bb.i:                                             ; preds = %i915_vm_obj_min_alignment.exit
  %i.bi = getelementptr i8, ptr %i.ae, i64 520
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = trunc i8 %i.bj to i1
  br i1 %i.bk, label %i915_vm_has_cache_coloring.exit, label %i915_vm_has_cache_coloring.exit.thread

i915_vm_has_cache_coloring.exit:                  ; preds = %bb.i
  %i.bl = getelementptr i8, ptr %i.ae, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not171 = icmp eq ptr %i.bm, null
  br i1 %.not171, label %i915_vm_has_cache_coloring.exit.thread, label %bb.j

bb.j:                                             ; preds = %i915_vm_has_cache_coloring.exit
  %i.bn = getelementptr i8, ptr %i.an, i64 660
  %i.bo = load i16, ptr %i.bn, align 4
  %i.bp = and i16 %i.bo, 63
  %i.bq = zext nneg i16 %i.bp to i64
  br label %i915_vm_has_cache_coloring.exit.thread

i915_vm_has_cache_coloring.exit.thread:           ; preds = %bb.i, %bb.j, %i915_vm_has_cache_coloring.exit
  %.0146 = phi i64 [ %i.bq, %bb.j ], [ 0, %i915_vm_has_cache_coloring.exit ], [ 0, %bb.i ] ; 2 uses
  %i.br = and i64 %4, 128
  %.not160 = icmp eq i64 %i.br, 0
  br i1 %.not160, label %bb.p, label %bb.k

bb.k:                                             ; preds = %i915_vm_has_cache_coloring.exit.thread
  %i.bs = add i64 %i.ay, -1
  %i.bt = and i64 %i.bs, %i.ab
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not165 = icmp uge i64 %i.ab, %.1149
  %i.bv = sub nuw i64 %.1149, %i.ab
  %i.bw = icmp ugt i64 %.0142, %i.bv
  %i.bx = select i1 %.not165, i1 true, i1 %i.bw
  br i1 %i.bx, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = icmp ult i64 %i.ab, %i.z
  br i1 %i.by, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = add i64 %.0142, %i.ab
  %i.ca = sub i64 %.1149, %i.z
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = add i64 %i.az, %.0142
  %i.cd = sub i64 %i.ab, %i.z
  %i.ce = tail call i32 @i915_gem_gtt_reserve(ptr noundef %i.ae, ptr noundef %1, ptr noundef %0, i64 noundef %i.cc, i64 noundef %i.cd, i64 noundef %.0146, i32 noundef %i.t) #14 ; 2 uses
  %.not166 = icmp eq i32 %i.ce, 0
  br i1 %.not166, label %bb.t, label %.thread

bb.p:                                             ; preds = %i915_vm_has_cache_coloring.exit.thread
  %i.cf = add i64 %i.az, %.0142                   ; 5 uses
  %i.cg = add i64 %.1149, -1
  %.not161 = icmp ult i64 %i.cg, 4294967296
  br i1 %.not161, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr i8, ptr %0, i64 236
  %i.ci = load i32, ptr %i.ch, align 4            ; 3 uses
  %i.cj = icmp ugt i32 %i.ci, 4096
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %i.ae, i64 304
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 1648
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 28
  %i.cp = load i64, ptr %i.co, align 4
  %i.cq = and i64 %i.cp, 16
  %.not162 = icmp eq i64 %i.cq, 0
  br i1 %.not162, label %fls64.exit, label %bb.s

fls64.exit:                                       ; preds = %bb.r
  %i.cr = or i32 %i.ci, 2097152
  %i.cs = zext i32 %i.cr to i64
  %i.ct = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 2097152, 4294967296) %i.cs, i32 -1) #19, !srcloc !50
  %.pn = zext nneg i32 %i.ct to i64
  %i.cu = shl nuw i64 1, %.pn
  %i.cv = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.cu)
  %i.cw = and i32 %i.ci, 65536
  %.not163 = icmp eq i32 %i.cw, 0
  %i.cx = add i64 %i.cf, 2097151
  %5 = and i64 %i.cx, -2097152
  %.1143 = select i1 %.not163, i64 %i.cf, i64 %5
  br label %bb.s

bb.s:                                             ; preds = %fls64.exit, %bb.r, %bb.q, %bb.p
  %.1145 = phi i64 [ %i.ay, %bb.r ], [ %i.cv, %fls64.exit ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ]
  %.2 = phi i64 [ %i.cf, %bb.r ], [ %.1143, %fls64.exit ], [ %i.cf, %bb.q ], [ %i.cf, %bb.p ]
  %i.cy = tail call i32 @i915_gem_gtt_insert(ptr noundef %i.ae, ptr noundef %1, ptr noundef %0, i64 noundef %.2, i64 noundef %.1145, i64 noundef %.0146, i64 noundef %i.ac, i64 noundef %.1149, i32 noundef %i.t) #14 ; 2 uses
  %.not164 = icmp eq i32 %i.cy, 0
  br i1 %.not164, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.o
  %i.cz = getelementptr i8, ptr %0, i64 488       ; 4 uses
  %i.da = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 488
  %i.dc = getelementptr i8, ptr %0, i64 496       ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  store volatile ptr %i.de, ptr %i.dd, align 8
  %i.dg = getelementptr i8, ptr %i.da, i64 496    ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  store ptr %i.cz, ptr %i.dg, align 8
  store ptr %i.db, ptr %i.cz, align 8
  store ptr %i.dh, ptr %i.dc, align 8
  store volatile ptr %i.cz, ptr %i.dh, align 8
  %i.di = trunc i64 %i.z to i32
  store i32 %i.di, ptr %i.q, align 8
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.s, %bb.o, %bb.t, %__drm_to_dev.exit
  %.1 = phi i32 [ -28, %__drm_to_dev.exit ], [ 0, %bb.t ], [ %i.ce, %bb.o ], [ %i.cy, %bb.s ], [ -28, %bb.n ], [ -22, %bb.l ], [ -22, %bb.k ], [ -28, %bb.m ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_active_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_vm_no_concurrent_access_wa(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_vma_pin(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !51
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %4, i1 noundef zeroext true) #14
  %i.a = getelementptr i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.g = load i8, ptr %i.b, align 8, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr i8, ptr %i.f, i64 248
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.j, ptr noundef nonnull %4) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = call i32 @ww_mutex_lock(ptr noundef %i.j, ptr noundef nonnull %4) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %i.m = icmp eq i32 %.0.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !15

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i.i.i) #14
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.q = getelementptr i8, ptr %i.f, i64 544      ; 3 uses
  %i.r = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.q, ptr %i.d, align 8
  store ptr %i.c, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.f, i64 552
  store ptr %i.r, ptr %i.s, align 8
  store volatile ptr %i.q, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %i.t = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.t, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread14 [
    i32 -35, label %bb.i
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.v = add i32 %i.u, 1
  %i.w = or i32 %i.v, %i.u
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.w, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !15

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #14
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.j
  store ptr %i.f, ptr %i.e, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.x = call i32 @i915_vma_pin_ww(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 ; 2 uses
  %i.y = icmp eq i32 %i.x, -35
  br i1 %i.y, label %bb.l, label %.thread14

bb.l:                                             ; preds = %.thread, %bb.k
  %i.z = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %4) #14 ; 2 uses
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %bb.b, label %.thread14

.thread14:                                        ; preds = %bb.h, %bb.l, %bb.k
  %.1 = phi i32 [ %i.z, %bb.l ], [ %i.x, %bb.k ], [ %.0.i.i, %bb.h ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_ggtt_pin(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @__i915_ggtt_pin(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #15, !srcloc !54
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !51
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %4, i1 noundef zeroext true) #14
  %i.b = getelementptr i8, ptr %0, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %__i915_gem_ww_fini.exit
  %i.g = load ptr, ptr %i.b, align 8              ; 10 uses
  %i.h = load i8, ptr %i.c, align 8, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr i8, ptr %i.g, i64 248
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.k, ptr noundef nonnull %4) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = call i32 @ww_mutex_lock(ptr noundef %i.k, ptr noundef nonnull %4) #14
end_hunk_0

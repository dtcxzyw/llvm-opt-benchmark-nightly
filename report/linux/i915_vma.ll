inline.NumInlined: 411
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@i915_vma_insert:bb.a
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
  %i.cx = add i64 %i.cf, -1
  %i.cy = or i64 %i.cx, 2097151
  %i.cz = add i64 %i.cy, 1
  %.1143 = select i1 %.not163, i64 %i.cf, i64 %i.cz
  br label %bb.s

bb.s:                                             ; preds = %fls64.exit, %bb.r, %bb.q, %bb.p
  %.1145 = phi i64 [ %i.ay, %bb.r ], [ %i.cv, %fls64.exit ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ]
  %.2 = phi i64 [ %i.cf, %bb.r ], [ %.1143, %fls64.exit ], [ %i.cf, %bb.q ], [ %i.cf, %bb.p ]
  %i.da = tail call i32 @i915_gem_gtt_insert(ptr noundef %i.ae, ptr noundef %1, ptr noundef %0, i64 noundef %.2, i64 noundef %.1145, i64 noundef %.0146, i64 noundef %i.ac, i64 noundef %.1149, i32 noundef %i.t) #14 ; 2 uses
  %.not164 = icmp eq i32 %i.da, 0
  br i1 %.not164, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s, %bb.o
  %i.db = getelementptr i8, ptr %0, i64 488       ; 4 uses
  %i.dc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 488
  %i.de = getelementptr i8, ptr %0, i64 496       ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  store ptr %i.df, ptr %i.dh, align 8
  store volatile ptr %i.dg, ptr %i.df, align 8
  %i.di = getelementptr i8, ptr %i.dc, i64 496    ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  store ptr %i.db, ptr %i.di, align 8
  store ptr %i.dd, ptr %i.db, align 8
  store ptr %i.dj, ptr %i.de, align 8
  store volatile ptr %i.db, ptr %i.dj, align 8
  %i.dk = trunc i64 %i.z to i32
  store i32 %i.dk, ptr %i.q, align 8
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l, %bb.k, %bb.m, %bb.s, %bb.o, %bb.t, %__drm_to_dev.exit
  %.1 = phi i32 [ -28, %__drm_to_dev.exit ], [ 0, %bb.t ], [ %i.ce, %bb.o ], [ %i.da, %bb.s ], [ -28, %bb.n ], [ -22, %bb.l ], [ -22, %bb.k ], [ -28, %bb.m ]
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

bb.b:                                             ; preds = %bb.k, %bb.a
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
  %5 = icmp eq i32 %.0.i.i, 0
  br i1 %5, label %bb.f, label %6

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.n = add i32 %i.m, 1
  %i.o = or i32 %i.n, %i.m
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !15

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i.i.i) #14
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.p = getelementptr i8, ptr %i.f, i64 544      ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.c, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.f, i64 552
  store ptr %i.q, ptr %i.r, align 8
  store volatile ptr %i.p, ptr %i.q, align 8
  br label %6

6:                                                ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %7 = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %7, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread14 [
    i32 -35, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %6
  %i.s = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 1, ptr elementtype(i32) %i.f) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.t = add i32 %i.s, 1
  %i.u = or i32 %i.t, %i.s
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.u, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !15

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #14
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.i
  store ptr %i.f, ptr %i.e, align 8
  br label %bb.k

bb.j:                                             ; preds = %6
  %i.v = call i32 @i915_vma_pin_ww(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 ; 2 uses
  %i.w = icmp eq i32 %i.v, -35
  br i1 %i.w, label %bb.k, label %.thread14

bb.k:                                             ; preds = %.thread, %bb.j
  %i.x = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %4) #14 ; 2 uses
  %.not10 = icmp eq i32 %i.x, 0
  br i1 %.not10, label %bb.b, label %.thread14

.thread14:                                        ; preds = %6, %bb.k, %bb.j
  %.1 = phi i32 [ %i.x, %bb.k ], [ %i.v, %bb.j ], [ %.0.i.i, %6 ]
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
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 4 uses
  %i.n = icmp eq i32 %.0.i.i, 0
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, i32 1, ptr elementtype(i32) %i.g) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.p = add i32 %i.o, 1
  %i.q = or i32 %i.p, %i.o
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !15

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef %i.g, i32 noundef %.sink.i.i.i.i.i.i.i.i) #14
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.i
  %i.r = getelementptr i8, ptr %i.g, i64 544      ; 3 uses
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.r, ptr %i.e, align 8
  store ptr %i.d, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.g, i64 552
  store ptr %i.s, ptr %i.t, align 8
  store volatile ptr %i.r, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.g
  %i.u = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.u, i32 0, i32 %.0.i.i
  switch i32 %spec.store.select.i6.i, label %.thread10.i [
    i32 -35, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, i32 1, ptr elementtype(i32) %i.g) #16, !srcloc !18 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.w = add i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.x, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !15

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.l, %bb.k
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.k ], [ 1, %bb.l ]
  call void @refcount_warn_saturate(ptr noundef %i.g, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #14
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.l
  store ptr %i.g, ptr %i.f, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.y = call fastcc i32 @__i915_ggtt_pin(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %3) #15, !srcloc !55 ; 2 uses
  %i.z = icmp eq i32 %i.y, -35
  br i1 %i.z, label %bb.n, label %.thread10.i

bb.n:                                             ; preds = %.thread, %bb.m
  %i.aa = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %4) #14 ; 2 uses
  switch i32 %i.aa, label %.thread10.i [
    i32 0, label %__i915_gem_ww_fini.exit
    i32 -35, label %__i915_gem_ww_fini.exit
  ]

.thread10.i:                                      ; preds = %bb.j, %bb.n, %bb.m
  %.013.i = phi i32 [ %i.aa, %bb.n ], [ %i.y, %bb.m ], [ %.0.i.i, %bb.j ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #14
  br label %__i915_gem_ww_fini.exit

__i915_gem_ww_fini.exit:                          ; preds = %bb.n, %bb.n, %.thread10.i
  %.09.i = phi i32 [ -35, %bb.n ], [ %.013.i, %.thread10.i ], [ -35, %bb.n ] ; 2 uses
  %i.ab = icmp eq i32 %.09.i, -35
  br i1 %i.ab, label %bb.d, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %__i915_gem_ww_fini.exit, %bb.b
  %.013 = phi i32 [ %i.a, %bb.b ], [ %.09.i, %__i915_gem_ww_fini.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__i915_ggtt_pin(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = zext i32 %2 to i64
  %i.d = or i32 %3, 1024
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 1232     ; 3 uses
  %i.g = getelementptr i8, ptr %i.b, i64 384      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.h = tail call i32 @i915_vma_pin_ww(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef %i.c, i64 noundef %i.e) #15 ; 2 uses
  switch i32 %i.h, label %.loopexit [
    i32 -28, label %bb.e
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @i915_vma_wait_for_bind(ptr noundef %0) #15 ; 2 uses
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 268        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, ptr elementtype(i32) %i.j) #16, !srcloc !36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d
  %.024 = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i32 %.024

bb.e:                                             ; preds = %bb.b
  %.pn31 = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not32 = icmp eq ptr %.pn31, %i.f
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %flush_idle_contexts.exit
  %.pn33 = phi ptr [ %.pn, %flush_idle_contexts.exit ], [ %.pn31, %bb.e ] ; 29 uses
  %.0 = getelementptr i8, ptr %.pn33, i64 -5320
  %i.k = getelementptr i8, ptr %.pn33, i64 -1296
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.m = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.l) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.n = getelementptr i8, ptr %.pn33, i64 -1288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.1.i = icmp eq ptr %i.o, null
  br i1 %.not.1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.o) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr i8, ptr %.pn33, i64 -1280
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.2.i = icmp eq ptr %i.r, null
  br i1 %.not.2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.r) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr i8, ptr %.pn33, i64 -1272
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.3.i = icmp eq ptr %i.u, null
  br i1 %.not.3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.u) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr i8, ptr %.pn33, i64 -1264
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.4.i = icmp eq ptr %i.x, null
  br i1 %.not.4.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.x) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = getelementptr i8, ptr %.pn33, i64 -1256
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.5.i = icmp eq ptr %i.aa, null
  br i1 %.not.5.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.aa) #14 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ac = getelementptr i8, ptr %.pn33, i64 -1248
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.6.i = icmp eq ptr %i.ad, null
  br i1 %.not.6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.ad) #14 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = getelementptr i8, ptr %.pn33, i64 -1240
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.7.i = icmp eq ptr %i.ag, null
  br i1 %.not.7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.ag) #14 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ai = getelementptr i8, ptr %.pn33, i64 -1232
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.8.i = icmp eq ptr %i.aj, null
  br i1 %.not.8.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.aj) #14 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.al = getelementptr i8, ptr %.pn33, i64 -1224
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.9.i = icmp eq ptr %i.am, null
  br i1 %.not.9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.am) #14 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ao = getelementptr i8, ptr %.pn33, i64 -1216
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.10.i = icmp eq ptr %i.ap, null
  br i1 %.not.10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.ap) #14 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ar = getelementptr i8, ptr %.pn33, i64 -1208
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.11.i = icmp eq ptr %i.as, null
  br i1 %.not.11.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.as) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.au = getelementptr i8, ptr %.pn33, i64 -1200
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.12.i = icmp eq ptr %i.av, null
  br i1 %.not.12.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.av) #14 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ax = getelementptr i8, ptr %.pn33, i64 -1192
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.13.i = icmp eq ptr %i.ay, null
  br i1 %.not.13.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.az = tail call i32 @intel_engine_flush_barriers(ptr noundef nonnull %i.ay) #14 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ba = getelementptr i8, ptr %.pn33, i64 -1184
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.14.i = icmp eq ptr %i.bb, null
  br i1 %.not.14.i, label %bb.ai, label %bb.ah

end_hunk_0

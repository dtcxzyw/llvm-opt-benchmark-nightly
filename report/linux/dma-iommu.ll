Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dma-iommu?download=true
inline.NumInlined: 308
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@iommu_dma_init_fq:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %iommu_dma_init_one_fq.exit.i, %iommu_dma_init_fq_single.exit
  %.0 = phi i32 [ 0, %iommu_dma_init_one_fq.exit.i ], [ -12, %iommu_dma_init_fq_single.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fq_flush_timeout(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -168       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  store volatile i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr elementtype(i64) %i.c) #18, !srcloc !18
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef %i.e) #14, !inline_history !35
  %i.j = getelementptr i8, ptr %0, i64 -8         ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, ptr elementtype(i64) %i.j) #18, !srcloc !18
  %i.k = getelementptr i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 1
  %i.n = getelementptr i8, ptr %0, i64 -24        ; 2 uses
  br i1 %i.m, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8
  tail call fastcc void @fq_ring_free(ptr noundef %i.a, ptr noundef %i.o) #19, !srcloc !37
  br label %find_next_bit.exit.thread

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.p = phi i64 [ %i.ae, %bb.c ], [ 0, %bb.a ]
  %i.q = load i64, ptr @__cpu_possible_mask, align 8
  %i.r = shl nsw i64 -1, %i.p
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %.preheader
  %i.t = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.s) #17, !srcloc !16 ; 3 uses
  %i.u = and i64 %i.t, 4294967232
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.t, 63
  %i.z = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = inttoptr i64 %i.ab to ptr
  tail call fastcc void @fq_ring_free(ptr noundef %i.a, ptr noundef %i.ac) #19, !srcloc !38
  %i.ad = add nuw nsw i64 %i.t, 1
  %i.ae = and i64 %i.ad, 127                      ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ae, 63
  br i1 %i.af, label %find_next_bit.exit.thread, label %.preheader, !prof !17, !llvm.loop !36

find_next_bit.exit.thread:                        ; preds = %.preheader, %bb.c, %find_next_bit.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -17, 1) i32 @iommu_get_dma_cookie(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_kzalloc_noprof.exit, label %bb.c

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.d = tail call noalias align 8 dereferenceable_or_null(248) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef 248) #20 ; 4 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.e = getelementptr i8, ptr %i.d, i64 128      ; 3 uses
  store volatile ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 136
  store volatile ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %bb.b
  %.0 = phi i32 [ -17, %bb.a ], [ 0, %bb.b ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @iommu_get_msi_cookie(ptr nofree noundef captures(none) %0, i64 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %_kzalloc_noprof.exit, label %bb.d

_kzalloc_noprof.exit:                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.e = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 24) #20 ; 5 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  store volatile ptr %i.f, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 16
  store volatile ptr %i.f, ptr %i.g, align 8
  store i32 2, ptr %i.b, align 4
  %i.h = getelementptr i8, ptr %0, i64 80
  store ptr %i.e, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -17, %bb.b ], [ -22, %bb.a ], [ 0, %bb.c ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_put_dma_cookie(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %iommu_dma_free_fq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 168
  %i.h = tail call i32 @timer_delete_sync(ptr noundef %i.g) #14 ; 0 uses
  %i.i = getelementptr i8, ptr %i.b, i64 224
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 1
  %i.l = getelementptr i8, ptr %i.b, i64 144
  %i.m = load ptr, ptr %i.l, align 8              ; 7 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not7.i.i = icmp eq i32 %i.o, %i.q
  br i1 %.not7.i.i, label %iommu_dma_free_fq_single.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.m, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.s = sext i32 %.08.i.i to i64
  %i.t = getelementptr [40 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 32
  tail call void @iommu_put_pages_list(ptr noundef %i.u) #14
  %i.v = add i32 %.08.i.i, 1
  %i.w = load i32, ptr %i.r, align 4
  %i.x = and i32 %i.w, %i.v                       ; 2 uses
  %i.y = load i32, ptr %i.p, align 8
  %.not.i.i = icmp eq i32 %i.x, %i.y
  br i1 %.not.i.i, label %iommu_dma_free_fq_single.exit.i, label %bb.e, !llvm.loop !39

iommu_dma_free_fq_single.exit.i:                  ; preds = %bb.e, %bb.d
  tail call void @vfree(ptr noundef %i.m) #14
  br label %iommu_dma_free_fq.exit

bb.f:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.m to i64
  %.pre18.i.i = load i64, ptr @__cpu_possible_mask, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %bb.f
  %i.aa = phi i64 [ %.pre18.i.i, %bb.f ], [ %2, %._crit_edge.i.i ] ; 2 uses
  %1 = phi i64 [ 0, %bb.f ], [ %i.ay, %._crit_edge.i.i ]
  %i.ab = shl nsw i64 -1, %1
  %i.ac = and i64 %i.ab, %i.aa                    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %iommu_dma_free_fq_percpu.exit.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.g
  %i.ad = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ac) #17, !srcloc !16 ; 3 uses
  %i.ae = and i64 %i.ad, 4294967232
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %iommu_dma_free_fq_percpu.exit.i

bb.h:                                             ; preds = %find_next_bit.exit.i.i
  %i.ag = and i64 %i.ad, 63
  %i.ah = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.z
  %i.ak = inttoptr i64 %i.aj to ptr               ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %.not16.i.i = icmp eq i32 %i.am, %i.ao
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.ak, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i5.i
  %.01317.i.i = phi i32 [ %i.am, %.lr.ph.i5.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.aq = sext i32 %.01317.i.i to i64
  %i.ar = getelementptr [40 x i8], ptr %i.ak, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  tail call void @iommu_put_pages_list(ptr noundef %i.as) #14
  %i.at = add i32 %.01317.i.i, 1
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, %i.at                    ; 2 uses
  %i.aw = load i32, ptr %i.an, align 8
  %.not.i6.i = icmp eq i32 %i.av, %i.aw
  br i1 %.not.i6.i, label %._crit_edge.loopexit.i.i, label %bb.i, !llvm.loop !40

._crit_edge.loopexit.i.i:                         ; preds = %bb.i
  %.pre.i.i = load i64, ptr @__cpu_possible_mask, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %2 = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.aa, %bb.h ]
  %i.ax = add nuw nsw i64 %i.ad, 1
  %i.ay = and i64 %i.ax, 127                      ; 2 uses
  %i.az = icmp samesign ugt i64 %i.ay, 63
  br i1 %i.az, label %iommu_dma_free_fq_percpu.exit.i, label %bb.g, !prof !17, !llvm.loop !41

iommu_dma_free_fq_percpu.exit.i:                  ; preds = %._crit_edge.i.i, %find_next_bit.exit.i.i, %bb.g
  tail call void @free_percpu(ptr noundef %i.m) #14
  br label %iommu_dma_free_fq.exit

iommu_dma_free_fq.exit:                           ; preds = %bb.b, %iommu_dma_free_fq_single.exit.i, %iommu_dma_free_fq_percpu.exit.i
  tail call void @put_iova_domain(ptr noundef %i.b) #14
  br label %bb.j

bb.j:                                             ; preds = %iommu_dma_free_fq.exit, %bb.a
  %i.ba = getelementptr i8, ptr %i.b, i64 128     ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not2021 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not2021, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.022 = phi ptr [ %.018, %.lr.ph ], [ %i.bb, %bb.j ] ; 2 uses
  %.018 = load ptr, ptr %.022, align 8            ; 2 uses
  tail call void @kfree(ptr noundef %.022) #14
  %.not20 = icmp eq ptr %.018, %i.ba
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  tail call void @kfree(ptr noundef %i.b) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_put_msi_cookie(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.d, %i.c
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi ptr [ %.015, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %.015 = load ptr, ptr %.017, align 8            ; 2 uses
  tail call void @kfree(ptr noundef %.017) #14
  %.not = icmp eq ptr %.015, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @kfree(ptr noundef %i.b) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local void @iommu_dma_get_resv_regions(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @iommu_dma_alloc_noncontiguous(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
__kmalloc_index.exit:
  %i.a = and i32 %3, 17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_kmalloc_noprof.exit, label %bb.a, !prof !19

bb.a:                                             ; preds = %__kmalloc_index.exit
  %i.c = and i32 %3, 1
  %..i = add nuw nsw i32 %i.c, 1
  %i.d = zext nneg i32 %..i to i64
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.a, %__kmalloc_index.exit
  %.0.i21 = phi i64 [ 0, %__kmalloc_index.exit ], [ %i.d, %bb.a ]
  %i.e = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i21
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.g, i32 noundef %3, i64 noundef 24) #20 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_kmalloc_noprof.exit
  %i.i = tail call fastcc ptr @__iommu_dma_alloc_noncontiguous(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.h, i32 noundef %3, i64 noundef %4) #19, !srcloc !44 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.h) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_kmalloc_noprof.exit, %bb.c
  %.0 = phi ptr [ null, %_kmalloc_noprof.exit ], [ null, %bb.c ], [ %i.h, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__iommu_dma_alloc_noncontiguous(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = and i64 %4, 1024
  %.not.i = icmp eq i64 %i.e, 0
  %..i = select i1 %.not.i, i32 4, i32 16
  %i.f = trunc i64 %4 to i32
  %i.g = lshr i32 %i.f, 4
  %i.h = and i32 %i.g, 32
  %.1.i = or disjoint i32 %i.h, %..i
  %i.i = or disjoint i32 %.1.i, 3
  %i.j = getelementptr i8, ptr %i.b, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @iommu_deferred_attach_enabled, i1 false) #18
          to label %arch_static_branch.exit [label %bb.b], !srcloc !20

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @iommu_deferred_attach(ptr noundef %0, ptr noundef %i.b) #14
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %arch_static_branch.exit, label %__iommu_dma_alloc_pages.exit.thread

arch_static_branch.exit:                          ; preds = %bb.a, %bb.b
  %i.n = sub i32 0, %i.l
  %i.o = and i32 %i.l, %i.n                       ; 3 uses
  %i.p = icmp ult i32 %i.o, 4096
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %arch_static_branch.exit
  %i.q = or i32 %i.l, 4096
  br label %bb.e

bb.d:                                             ; preds = %arch_static_branch.exit
  %i.r = zext i32 %i.o to i64                     ; 2 uses
  %i.s = add i64 %1, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = sub nsw i64 0, %i.r
  %i.v = and i64 %i.t, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.071 = phi i32 [ 4096, %bb.c ], [ %i.o, %bb.d ]
  %.070 = phi i32 [ %i.q, %bb.c ], [ %i.l, %bb.d ]
  %.069 = phi i64 [ %1, %bb.c ], [ %i.v, %bb.d ]  ; 2 uses
  %i.w = and i64 %4, 128
  %.not77 = icmp eq i64 %i.w, 0
  %spec.select = select i1 %.not77, i32 %.070, i32 %.071
  %i.x = add i64 %.069, 4095
  %i.y = lshr i64 %i.x, 12                        ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = lshr i32 %spec.select, 12
  %i.ab = getelementptr i8, ptr %0, i64 664
  %.val = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ac = and i32 %i.aa, 2047                     ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %.not.i85 = icmp eq i32 %i.ac, 0
  br i1 %.not.i85, label %__iommu_dma_alloc_pages.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw nsw i64 %i.y, 3
  %i.af = and i64 %i.ae, 34359738360
  %i.ag = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.af, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #16 ; 12 uses
  %.not69.i = icmp eq ptr %i.ag, null
  br i1 %.not69.i, label %__iommu_dma_alloc_pages.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not7023.i = icmp eq i32 %i.z, 0               ; 2 uses
  br i1 %.not7023.i, label %__iommu_dma_alloc_pages.exit.thread92, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.preheader.i
  %i.ah = icmp eq i32 %.val, -1
  br label %__fls.exit78.i

.loopexit.i:                                      ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa161 = phi i32 [ %.lcssa161.unr, %.prol.loopexit ], [ %i.cc, %.preheader.new ]
  %i.ai = sub i32 %.04926.i, %i.aq                ; 2 uses
  %.not70.i = icmp eq i32 %i.ai, 0
  br i1 %.not70.i, label %__iommu_dma_alloc_pages.exit.thread92, label %__fls.exit78.i, !llvm.loop !45

__fls.exit78.i:                                   ; preds = %.lr.ph27.i, %.loopexit.i
  %.04926.i = phi i32 [ %i.z, %.lr.ph27.i ], [ %i.ai, %.loopexit.i ] ; 2 uses
  %.05225.i = phi i64 [ %i.ad, %.lr.ph27.i ], [ %.15318.i, %.loopexit.i ]
  %.06224.i = phi i32 [ 0, %.lr.ph27.i ], [ %.lcssa161, %.loopexit.i ] ; 4 uses
  %i.aj = zext i32 %.04926.i to i64
  %i.ak = call i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.aj) #17, !srcloc !49
  %i.al = sub i64 63, %i.ak
  %i.am = lshr i64 -1, %i.al
  %i.an = and i64 %i.am, %.05225.i                ; 2 uses
  %.not7117.i = icmp eq i64 %i.an, 0
  br i1 %.not7117.i, label %__fls.exit78._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %__fls.exit78.i, %bb.l
  %.15318.i = phi i64 [ %i.bj, %bb.l ], [ %i.an, %__fls.exit78.i ] ; 4 uses
end_hunk_0

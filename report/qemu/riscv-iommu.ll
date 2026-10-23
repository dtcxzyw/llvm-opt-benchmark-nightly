Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv-iommu?download=true
inline.NumInlined: 228
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@riscv_iommu_memory_region_translate:bb.a
  %i.aa = load ptr, ptr %i.b, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = and i32 %i.t, 255
  %i.ae = lshr i32 %i.p, 3
  %i.af = and i32 %i.p, 7
  %i.ag = and i32 %3, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @IOMMU_FLAG_STR, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.f, align 8
  %i.al = load i64, ptr %i.g, align 8
  %i.am = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %trace_riscv_iommu_dma.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.an = load i16, ptr @_TRACE_RISCV_IOMMU_DMA_DSTATE, align 2
  %.not7.i = icmp eq i16 %i.an, 0
  br i1 %.not7.i, label %trace_riscv_iommu_dma.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 32768
  %.not8.i = icmp eq i32 %i.ap, 0
  br i1 %.not8.i, label %trace_riscv_iommu_dma.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, ptr noundef %i.ac, i32 noundef range(i32 0, 256) %i.ad, i32 noundef range(i32 0, 32) %i.ae, i32 noundef range(i32 0, 8) %i.af, i32 noundef %4, ptr noundef %i.aj, i64 noundef %i.ak, i64 noundef %i.al) #17
  br label %trace_riscv_iommu_dma.exit

trace_riscv_iommu_dma.exit:                       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.aq = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i21, label %riscv_iommu_ctx_put.exit, label %bb.g

bb.g:                                             ; preds = %trace_riscv_iommu_dma.exit
  %i.ar = load ptr, ptr %i.b, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 15
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @g_free(ptr noundef nonnull %i.aq) #17
  br label %riscv_iommu_ctx_put.exit

bb.i:                                             ; preds = %bb.g
  tail call void @g_hash_table_unref(ptr noundef nonnull %i.aq) #17
  br label %riscv_iommu_ctx_put.exit

riscv_iommu_ctx_put.exit:                         ; preds = %trace_riscv_iommu_dma.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @riscv_iommu_memory_region_notify(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 465
  store i8 1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_riscv_iommu_notifier_add.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr @_TRACE_RISCV_IOMMU_NOTIFIER_ADD_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_riscv_iommu_notifier_add.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_riscv_iommu_notifier_add.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, ptr noundef %i.d) #17
  br label %trace_riscv_iommu_notifier_add.exit

bb.f:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.g, label %trace_riscv_iommu_notifier_add.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 465
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i8 = icmp eq i32 %i.m, 0
  br i1 %.not.i8, label %trace_riscv_iommu_notifier_add.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.n = load i16, ptr @_TRACE_RISCV_IOMMU_NOTIFIER_DEL_DSTATE, align 2
  %.not1.i9 = icmp eq i16 %i.n, 0
  br i1 %.not1.i9, label %trace_riscv_iommu_notifier_add.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not2.i10 = icmp eq i32 %i.p, 0
  br i1 %.not2.i10, label %trace_riscv_iommu_notifier_add.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, ptr noundef %i.l) #17
  br label %trace_riscv_iommu_notifier_add.exit

trace_riscv_iommu_notifier_add.exit:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 256) i32 @riscv_iommu_memory_region_index(ptr nofree readnone captures(none) %0, i64 %1) #8 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  %i.b = lshr i32 %.sroa.0.0.extract.trunc, 22
  %i.c = and i32 %i.b, 255
  %i.d = select i1 %.not, i32 %i.c, i32 0
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 1, -2147483647) i32 @riscv_iommu_memory_region_index_len(ptr nofree noundef readonly captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i32, ptr %i.c, align 4
  %i.e = shl nuw i32 1, %i.d
  ret i32 %i.e
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @riscv_iommu_ctx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.riscv_iommu_fq_record, align 8 ; 7 uses
  %7 = alloca %struct.riscv_iommu_dc, align 8     ; 12 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %struct.RISCVIOMMUContext, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.b = and i32 %1, 16777215                     ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = and i32 %2, 1048575
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = or disjoint i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
  store i64 %i.g, ptr %8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 16
  %i.o = tail call ptr @g_hash_table_ref(ptr noundef %i.n) #17 ; 7 uses
  %.not = icmp eq i32 %i.l, 1
  %or.cond = icmp samesign ugt i32 %i.l, 1
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef nonnull %8) #17 ; 3 uses
  %.not65 = icmp eq ptr %i.p, null
  br i1 %.not65, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 1
  %.not66 = icmp eq i64 %i.s, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %5, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.t = call noalias dereferenceable_or_null(64) ptr @g_malloc0(i64 noundef 64) #18 ; 29 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, -17592186044416
  %i.w = or disjoint i64 %i.v, %i.c
  %i.x = or disjoint i64 %i.w, %i.f
  store i64 %i.x, ptr %i.t, align 8
  %i.y = load i64, ptr %i.i, align 8              ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.ac = load i8, ptr %i.ab, align 1, !range !10, !noundef !11
  %9 = trunc nuw i8 %i.ac to i1                   ; 5 uses
  %10 = xor i1 %9, true
  %i.ad = zext i1 %10 to i64
  %i.ae = lshr exact i64 64, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %i.aa, label %bb.g [
    i32 0, label %select.unfold70
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 3, label %.split.i
    i32 4, label %.thread169.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.ai = load i8, ptr %i.ah, align 2, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  %spec.store.select.i = select i1 %i.aj, i64 3, i64 1
  store i64 %spec.store.select.i, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 0, ptr %i.al, align 8
  br label %select.unfold

.split.i:                                         ; preds = %bb.e
  br i1 %9, label %.thread169.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %select.unfold70

bb.h:                                             ; preds = %bb.e
  br i1 %9, label %.thread169.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.i
  %i.am = phi i32 [ 9, %.split.i ], [ 0, %bb.h ]
  %.0130174.i = phi i32 [ 1, %.split.i ], [ 0, %bb.h ]
  br label %.thread169.i

.thread169.i:                                     ; preds = %bb.e, %bb.i, %bb.h, %.split.i
  %i.an = phi i32 [ %i.am, %bb.i ], [ 0, %bb.h ], [ 9, %.split.i ], [ 18, %bb.e ]
  %.0130172.i = phi i32 [ %.0130174.i, %bb.i ], [ 0, %bb.h ], [ 1, %.split.i ], [ 2, %bb.e ] ; 2 uses
  %i.ao = phi i32 [ 7, %bb.i ], [ 6, %bb.h ], [ 6, %.split.i ], [ 6, %bb.e ]
  %i.ap = add nuw nsw i32 %i.ao, %i.an
  %.highbits.i = lshr i32 %i.b, %i.ap
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %.preheader.i, label %select.unfold70

.preheader.i:                                     ; preds = %.thread169.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !annotation !13
  store i64 0, ptr %i.a, align 8, !annotation !13
  %11 = select i1 %9, i32 6, i32 7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.0126.in.i89 = shl i64 %i.y, 2
  %.0126.i90 = and i64 %.0126.in.i89, 72057594037923840 ; 2 uses
  %i.ar = icmp sgt i32 %.0130172.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.l
  %.0126.in.i = shl nuw nsw i64 %i.bg, 2
  %.0126.i = and i64 %.0126.in.i, 72057594037923840 ; 2 uses
  %i.as = icmp sgt i32 %.in, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader.i, %bb.j
  %.in = phi i32 [ %i.at, %bb.j ], [ %.0130172.i, %.preheader.i ] ; 2 uses
  %.0126.i91 = phi i64 [ %.0126.i, %bb.j ], [ %.0126.i90, %.preheader.i ]
  %i.at = add nsw i32 %.in, -1                    ; 2 uses
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 5) #17
  %i.au = mul nuw nsw i32 %i.at, 9
  %i.av = add nuw i32 %i.au, %11
  %i.aw = load i64, ptr %i.t, align 8
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 16777215
  %i.az = lshr i32 %i.ay, %i.av
  %i.ba = shl nuw nsw i32 %i.az, 3
  %i.bb = and i32 %i.ba, 4088
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = or disjoint i64 %.0126.i91, %i.bc
  %i.be = load ptr, ptr %i.aq, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bf = call i32 @address_space_rw(ptr noundef %i.be, i64 noundef %i.bd, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) 8, i1 noundef zeroext false) #17
  %.not145.i = icmp eq i32 %i.bf, 0
  br i1 %.not145.i, label %bb.k, label %select.unfold70

bb.k:                                             ; preds = %.lr.ph
  %i.bg = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bh = and i64 %i.bg, 1
  %.not146.i = icmp eq i64 %i.bh, 0
  br i1 %.not146.i, label %select.unfold70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = and i64 %i.bg, -18014398509480962
  %.not147.i = icmp eq i64 %i.bi, 0
  br i1 %.not147.i, label %bb.j, label %select.unfold70, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.j, %.preheader.i
  %.0126.i.lcssa = phi i64 [ %.0126.i90, %.preheader.i ], [ %.0126.i, %bb.j ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 5) #17
  %i.bj = load i64, ptr %i.t, align 8
  %12 = select i1 %9, i64 6, i64 5
  %i.bk = shl i64 %i.bj, %12
  %i.bl = and i64 %i.bk, 4080
  %i.bm = or disjoint i64 %i.bl, %.0126.i.lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef 0, i64 noundef 64, i1 noundef false) #17
  %i.bn = load ptr, ptr %i.aq, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bo = call i32 @address_space_rw(ptr noundef %i.bn, i64 noundef %i.bm, i64 4294967296, ptr noundef nonnull %7, i64 noundef range(i64 4, 65) %i.ae, i1 noundef zeroext false) #17
  %.not136.i = icmp eq i32 %i.bo, 0
  br i1 %.not136.i, label %bb.m, label %select.unfold70

bb.m:                                             ; preds = %._crit_edge
  %i.bp = load i64, ptr %7, align 8               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bu, align 8            ; 4 uses
  %i.bz = load <2 x i64>, ptr %i.bw, align 8
  store <2 x i64> %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cf = load <2 x i64>, ptr %i.cd, align 8
  store <2 x i64> %i.cf, ptr %i.ce, align 8
  %i.cg = and i64 %i.bp, 1
  %.not137.i = icmp eq i64 %i.cg, 0
  br i1 %.not137.i, label %select.unfold70, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = call fastcc zeroext i1 @riscv_iommu_validate_device_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.ch, label %bb.o, label %select.unfold70

bb.o:                                             ; preds = %bb.n
  %i.ci = lshr i64 %i.by, 60                      ; 3 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl i64 %i.by, 12
  %i.cl = and i64 %i.bp, 32
  %.not138.i = icmp eq i64 %i.cl, 0
  %i.cm = load i64, ptr %i.t, align 8
  %i.cn = and i64 %i.cm, 17592169267200           ; 2 uses
  br i1 %.not138.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not139.i = icmp eq i64 %i.cn, 0
  br i1 %.not139.i, label %bb.q, label %select.unfold70

bb.q:                                             ; preds = %bb.p
  %i.co = icmp ugt i64 %i.by, -5764607523034234881
  br i1 %i.co, label %select.unfold70, label %select.unfold

bb.r:                                             ; preds = %bb.o
  %i.cp = and i64 %i.bp, 512
  %i.cq = or disjoint i64 %i.cn, %i.cp
  %or.cond.i = icmp eq i64 %i.cq, 0
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.bv, align 8
  br label %select.unfold

bb.t:                                             ; preds = %bb.r
  %i.cr = icmp eq i64 %i.ci, 0
  br i1 %i.cr, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = icmp ugt i64 %i.by, 4611686018427387903
  br i1 %i.cs, label %select.unfold70, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.2128162.i = and i64 %i.ck, 72057594037923840  ; 2 uses
  %.not164.i = icmp eq i64 %i.ci, 1
  br i1 %.not164.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ct = add nsw i32 %i.cj, -2
  br label %.lr.ph.i

bb.w:                                             ; preds = %bb.x
  %i.cu = shl i64 %i.dk, 2
  %.2128.i = and i64 %i.cu, 72057594037923840     ; 2 uses
  %i.cv = add nsw i32 %i.cx, -1
  %i.cw = icmp sgt i32 %i.cx, 0
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %i.cx = phi i32 [ %i.cv, %bb.w ], [ %i.ct, %.lr.ph.preheader.i ] ; 3 uses
  %.2128163.i = phi i64 [ %.2128.i, %bb.w ], [ %.2128162.i, %.lr.ph.preheader.i ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.cy = mul nsw i32 %i.cx, 9
  %i.cz = add nuw nsw i32 %i.cy, 8
  %i.da = load i64, ptr %i.t, align 8
  %i.db = lshr i64 %i.da, 24
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 1048575
  %i.de = lshr i32 %i.dd, %i.cz
  %i.df = shl nuw nsw i32 %i.de, 3
  %i.dg = and i32 %i.df, 4088
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = or disjoint i64 %.2128163.i, %i.dh
  %.val149.i = load i64, ptr %i.bt, align 8
  %i.dj = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val149.i, i64 noundef %i.di, ptr noundef %i.a, i64 noundef 8)
  %.not143.i = icmp eq i32 %i.dj, 0
  br i1 %.not143.i, label %bb.x, label %select.unfold70

bb.x:                                             ; preds = %.lr.ph.i
  %i.dk = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %.not144.i = icmp eq i64 %i.dl, 0
  br i1 %.not144.i, label %select.unfold70, label %bb.w

._crit_edge.i:                                    ; preds = %bb.w, %bb.v
  %.2128.lcssa.i = phi i64 [ %.2128162.i, %bb.v ], [ %.2128.i, %bb.w ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.dm = load i64, ptr %i.t, align 8
  %sh.diff.i = lshr i64 %i.dm, 20
  %i.dn = and i64 %sh.diff.i, 4080
  %i.do = or disjoint i64 %i.dn, %.2128.lcssa.i
  %.val.i = load i64, ptr %i.bt, align 8
  %i.dp = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val.i, i64 noundef %i.do, ptr noundef %i.bw, i64 noundef 16)
  %.not141.i = icmp eq i32 %i.dp, 0
  br i1 %.not141.i, label %bb.y, label %select.unfold70

bb.y:                                             ; preds = %._crit_edge.i
  %i.dq = load <2 x i64>, ptr %i.bw, align 8
  %i.dr = load i64, ptr %i.bw, align 8
  store <2 x i64> %i.dq, ptr %i.bx, align 8
  %i.ds = and i64 %i.dr, 1
  %.not142.i = icmp eq i64 %i.ds, 0
  br i1 %.not142.i, label %select.unfold70, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = call fastcc zeroext i1 @riscv_iommu_validate_process_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.dt, label %select.unfold, label %select.unfold70

select.unfold:                                    ; preds = %bb.z, %bb.t, %bb.s, %bb.f, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %select.unfold
  %i.du = call i32 @g_hash_table_size(ptr noundef %i.o) #17
  %i.dv = icmp ugt i32 %i.du, 127
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  %i.dw = call ptr @g_hash_table_new_full(ptr noundef nonnull @riscv_iommu_ctx_hash, ptr noundef nonnull @riscv_iommu_ctx_equal, ptr noundef nonnull @g_free, ptr noundef null) #17 ; 3 uses
  %i.dx = call ptr @g_hash_table_ref(ptr noundef %i.dw) #17 ; 0 uses
  %i.dy = atomicrmw xchg ptr %i.m, ptr %i.dw seq_cst, align 16
  call void @g_hash_table_unref(ptr noundef %i.dy) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.060 = phi ptr [ %i.dw, %bb.ab ], [ %i.o, %bb.aa ] ; 2 uses
  %i.dz = call i32 @g_hash_table_add(ptr noundef %.060, ptr noundef nonnull %i.t) #17 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %select.unfold
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge = phi ptr [ %i.t, %bb.ad ], [ %.060, %bb.ac ]
  store ptr %storemerge, ptr %5, align 8
  br label %bb.ag

select.unfold70:                                  ; preds = %bb.k, %bb.l, %.lr.ph, %bb.x, %.lr.ph.i, %bb.q, %bb.g, %._crit_edge, %bb.e, %bb.p, %.thread169.i, %bb.m, %bb.u, %bb.y, %bb.z, %._crit_edge.i, %bb.n
  %switch = phi i1 [ true, %bb.g ], [ false, %bb.p ], [ true, %bb.e ], [ false, %bb.x ], [ true, %._crit_edge ], [ true, %bb.n ], [ false, %._crit_edge.i ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.u ], [ true, %bb.q ], [ true, %bb.m ], [ false, %.thread169.i ], [ false, %.lr.ph.i ], [ true, %.lr.ph ], [ true, %bb.l ], [ true, %bb.k ]
  %.4.i.ph = phi i64 [ 259, %bb.g ], [ 260, %bb.p ], [ 256, %bb.e ], [ 266, %bb.x ], [ 257, %._crit_edge ], [ 259, %bb.n ], [ 265, %._crit_edge.i ], [ 267, %bb.z ], [ 266, %bb.y ], [ 267, %bb.u ], [ 258, %bb.q ], [ 258, %bb.m ], [ 260, %.thread169.i ], [ 265, %.lr.ph.i ], [ 257, %.lr.ph ], [ 258, %bb.k ], [ 259, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, 16
  %.not.i69 = icmp eq i64 %i.ed, 0
  %or.cond74 = or i1 %switch, %.not.i69
  br i1 %or.cond74, label %bb.af, label %riscv_iommu_report_fault.exit

bb.af:                                            ; preds = %select.unfold70
  %.not75 = icmp eq i32 %2, 0                     ; 2 uses
  %i.ee = and i32 %3, 1
  %. = xor i32 %i.ee, 3
  %i.ef = zext nneg i32 %. to i64
  %i.eg = shl nuw nsw i64 %i.ef, 34
  %i.eh = or disjoint i64 %.4.i.ph, %i.eg
  %i.ei = load i64, ptr %i.t, align 8             ; 2 uses
end_hunk_0

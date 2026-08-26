Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dma-iommu?download=true
inline.NumInlined: 308
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__iommu_dma_alloc_noncontiguous:bb.a
  %.16220.i.prol = phi i32 [ %i.bd, %.prol.preheader ], [ %.06124.i, %.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.bb = add i32 %.25722.i.prol, -1              ; 2 uses
  %i.bc = getelementptr i8, ptr %.26021.i.prol, i64 64 ; 2 uses
  %i.bd = add i32 %.16220.i.prol, 1               ; 3 uses
  %i.be = zext i32 %.16220.i.prol to i64
  %i.bf = getelementptr [8 x i8], ptr %i.ag, i64 %i.be
  store ptr %.26021.i.prol, ptr %i.bf, align 8
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.lcssa161.unr = phi i32 [ poison, %.preheader ], [ %i.bd, %.prol.preheader ]
  %.25722.i.unr = phi i32 [ %i.aq, %.preheader ], [ %i.bb, %.prol.preheader ]
  %.26021.i.unr = phi ptr [ %i.ba, %.preheader ], [ %i.bc, %.prol.preheader ]
  %.16220.i.unr = phi i32 [ %.06124.i, %.preheader ], [ %i.bd, %.prol.preheader ]
  %i.bg = icmp ult i32 %i.ap, 2
  br i1 %i.bg, label %.loopexit.i, label %.preheader.new

bb.k:                                             ; preds = %bb.j
  call void @split_page(ptr noundef nonnull %i.ba, i32 noundef %i.ap) #14
  br label %.preheader

bb.l:                                             ; preds = %alloc_pages_node_noprof.exit.i
  %i.bh = xor i32 %i.aq, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = and i64 %.15318.i, %i.bi                ; 2 uses
  %.not71.i = icmp eq i64 %i.bj, 0
  br i1 %.not71.i, label %__fls.exit78._crit_edge.i, label %.lr.ph.i, !llvm.loop !36

__fls.exit78._crit_edge.i:                        ; preds = %__fls.exit78.i, %bb.l
  %.not3.i.i = icmp eq i32 %.06124.i, 0
  br i1 %.not3.i.i, label %.thread8.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %__fls.exit78._crit_edge.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ %i.bk, %.lr.ph.i.i ], [ %.06124.i, %__fls.exit78._crit_edge.i ]
  %i.bk = add i32 %.04.i.i, -1                    ; 3 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %i.ag, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  call void @__free_pages(ptr noundef %i.bn, i32 noundef 0) #14
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %.thread8.i, label %.lr.ph.i.i, !llvm.loop !37

.thread8.i:                                       ; preds = %.lr.ph.i.i, %__fls.exit78._crit_edge.i
  call void @kvfree(ptr noundef nonnull %i.ag) #14
  br label %__iommu_dma_alloc_pages.exit.thread

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.25722.i = phi i32 [ %i.ca, %.preheader.new ], [ %.25722.i.unr, %.prol.loopexit ]
  %.26021.i = phi ptr [ %i.cb, %.preheader.new ], [ %.26021.i.unr, %.prol.loopexit ] ; 5 uses
  %.16220.i = phi i32 [ %i.cc, %.preheader.new ], [ %.16220.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bo = getelementptr i8, ptr %.26021.i, i64 64
  %i.bp = add i32 %.16220.i, 1
  %i.bq = zext i32 %.16220.i to i64
  %i.br = getelementptr [8 x i8], ptr %i.ag, i64 %i.bq
  store ptr %.26021.i, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %.26021.i, i64 128
  %i.bt = add i32 %.16220.i, 2
  %i.bu = zext i32 %i.bp to i64
  %i.bv = getelementptr [8 x i8], ptr %i.ag, i64 %i.bu
  store ptr %i.bo, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.26021.i, i64 192
  %i.bx = add i32 %.16220.i, 3
  %i.by = zext i32 %i.bt to i64
  %i.bz = getelementptr [8 x i8], ptr %i.ag, i64 %i.by
  store ptr %i.bs, ptr %i.bz, align 8
  %i.ca = add i32 %.25722.i, -4                   ; 2 uses
  %i.cb = getelementptr i8, ptr %.26021.i, i64 256
  %i.cc = add i32 %.16220.i, 4                    ; 2 uses
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr [8 x i8], ptr %i.ag, i64 %i.cd
  store ptr %i.bw, ptr %i.ce, align 8
  %.not75.i.3 = icmp eq i32 %i.ca, 0
  br i1 %.not75.i.3, label %.loopexit.i, label %.preheader.new, !llvm.loop !38

__iommu_dma_alloc_pages.exit.thread92:            ; preds = %.loopexit.i, %.preheader.i
  %i.cf = getelementptr i8, ptr %i.d, i64 32
  %.val82 = load i64, ptr %i.cf, align 8          ; 2 uses
  %i.cg = add i64 %.069, -1
  %i.ch = add i64 %i.cg, %.val82
  %i.ci = sub i64 0, %.val82
  %i.cj = and i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = getelementptr i8, ptr %0, i64 592
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = call fastcc i64 @iommu_dma_alloc_iova(ptr noundef %i.b, i64 noundef %i.cj, i64 noundef %i.cl, ptr noundef %0) #19, !srcloc !39 ; 4 uses
  %.not79 = icmp eq i64 %i.cm, 0
  br i1 %.not79, label %iommu_dma_free_iova.exit, label %bb.m

bb.m:                                             ; preds = %__iommu_dma_alloc_pages.exit.thread92
  %i.cn = and i32 %3, -262152                     ; 2 uses
  %i.co = call i32 @sg_alloc_table_from_pages_segment(ptr noundef %2, ptr noundef nonnull %i.ag, i32 noundef %i.z, i32 noundef 0, i64 noundef %i.cj, i32 noundef -1, i32 noundef range(i32 0, -262151) %i.cn) #14
  %.not80 = icmp eq i32 %i.co, 0
  br i1 %.not80, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.m
  %i.cp = getelementptr i8, ptr %2, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = call i64 @iommu_map_sg(ptr noundef %i.b, i64 noundef %i.cm, ptr noundef %i.cr, i32 noundef %i.cq, i32 noundef %i.i, i32 noundef %i.cn) #14 ; 2 uses
  %i.ct = icmp slt i64 %i.cs, 0
  %i.cu = icmp ult i64 %i.cs, %i.cj
  %or.cond = or i1 %i.ct, %i.cu
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cv = load ptr, ptr %2, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store i64 %i.cm, ptr %i.cw, align 8
  %i.cx = trunc i64 %i.cj to i32
  %i.cy = load ptr, ptr %2, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  store i32 %i.cx, ptr %i.cz, align 8
  br label %__iommu_dma_alloc_pages.exit.thread

bb.o:                                             ; preds = %.loopexit
  call void @sg_free_table(ptr noundef %2) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %i.da = getelementptr i8, ptr %i.b, i64 4
  %.val83 = load i32, ptr %i.da, align 4
  %.val84 = load ptr, ptr %i.c, align 8           ; 4 uses
  %i.db = icmp eq i32 %.val83, 2
  br i1 %i.db, label %bb.q, label %iova_pfn.exit19.i

bb.q:                                             ; preds = %bb.p
  %i.dc = load i64, ptr %.val84, align 8
  %i.dd = sub i64 %i.dc, %i.cj
  store i64 %i.dd, ptr %.val84, align 8
  br label %iommu_dma_free_iova.exit

iova_pfn.exit19.i:                                ; preds = %bb.p
  %i.de = getelementptr i8, ptr %.val84, i64 32
  %.val17.i = load i64, ptr %i.de, align 8        ; 2 uses
  %i.df = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.val17.i) #17, !srcloc !13
  %i.dg = lshr i64 %i.cm, %i.df
  %i.dh = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.val17.i) #17, !srcloc !13
  %i.di = lshr i64 %i.cj, %i.dh
  call void @free_iova_fast(ptr noundef %.val84, i64 noundef %i.dg, i64 noundef %i.di) #14
  br label %iommu_dma_free_iova.exit

iommu_dma_free_iova.exit:                         ; preds = %iova_pfn.exit19.i, %bb.q, %__iommu_dma_alloc_pages.exit.thread92
  br i1 %.not7023.i, label %__iommu_dma_free_pages.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %iommu_dma_free_iova.exit, %.lr.ph.i87
  %.04.i = phi i32 [ %i.dj, %.lr.ph.i87 ], [ %i.z, %iommu_dma_free_iova.exit ]
  %i.dj = add i32 %.04.i, -1                      ; 3 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.ag, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8
  call void @__free_pages(ptr noundef %i.dm, i32 noundef 0) #14
  %.not.i88 = icmp eq i32 %i.dj, 0
  br i1 %.not.i88, label %__iommu_dma_free_pages.exit, label %.lr.ph.i87, !llvm.loop !37

__iommu_dma_free_pages.exit:                      ; preds = %.lr.ph.i87, %iommu_dma_free_iova.exit
  call void @kvfree(ptr noundef nonnull %i.ag) #14
  br label %__iommu_dma_alloc_pages.exit.thread

__iommu_dma_alloc_pages.exit.thread:              ; preds = %bb.e, %bb.f, %.thread8.i, %bb.b, %__iommu_dma_free_pages.exit, %bb.n
  %.068 = phi ptr [ null, %bb.b ], [ null, %__iommu_dma_free_pages.exit ], [ %i.ag, %bb.n ], [ null, %bb.e ], [ null, %.thread8.i ], [ null, %bb.f ]
  ret ptr %.068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_dma_free_noncontiguous(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8
  tail call fastcc void @__iommu_dma_unmap(ptr noundef %0, i64 noundef %i.c, i64 noundef %1) #19, !srcloc !40
  %i.d = getelementptr i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %1, 4095
  %i.g = lshr i64 %i.f, 12
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %__iommu_dma_free_pages.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.04.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.i = add i32 %.04.i, -1                       ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @__free_pages(ptr noundef %i.l, i32 noundef 0) #14
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %__iommu_dma_free_pages.exit, label %.lr.ph.i, !llvm.loop !37

__iommu_dma_free_pages.exit:                      ; preds = %.lr.ph.i, %bb.a
  tail call void @kvfree(ptr noundef %i.e) #14
  tail call void @sg_free_table(ptr noundef %2) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__iommu_dma_unmap(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.iommu_iotlb_gather, align 8 ; 12 uses
  %i.a = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %.val25 = load i64, ptr %i.d, align 8           ; 3 uses
  %i.e = add i64 %.val25, -1
  %i.f = and i64 %i.e, %1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.g = sub i64 %1, %i.f                         ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = add i64 %i.h, %i.f
  %i.j = add i64 %i.i, %.val25
  %i.k = sub i64 0, %.val25
  %i.l = and i64 %i.j, %i.k                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i64 -1, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.a, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.a, align 8
  %i.n = getelementptr i8, ptr %i.c, i64 216
  %i.o = load volatile ptr, ptr %i.n, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %.sroa.6.0..sroa_idx.i.a, align 8
  %i.r = call i64 @iommu_unmap_fast(ptr noundef %i.a, i64 noundef %i.g, i64 noundef %i.l, ptr noundef nonnull %3) #14
  %.not = icmp eq i64 %i.r, %i.l
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "594: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 594b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 594) #18, !srcloc !41
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 839, i32 2305, i64 16) #18, !srcloc !42
  call void asm sideeffect "595: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 595b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 595) #18, !srcloc !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i8, ptr %.sroa.6.0..sroa_idx.i.a, align 8, !range !10, !noundef !44
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.a, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %iommu_iotlb_sync.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %3, align 8
  %i.z = load i64, ptr %.sroa.2.0..sroa_idx.i.a, align 8
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %iommu_iotlb_sync.exit, !prof !27

bb.f:                                             ; preds = %bb.e
  call void %i.x(ptr noundef %i.a, ptr noundef nonnull %3) #14, !inline_history !45
  br label %iommu_iotlb_sync.exit

iommu_iotlb_sync.exit:                            ; preds = %bb.d, %bb.e, %bb.f
  store i64 -1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.a, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.m, align 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i.a, align 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %iommu_iotlb_sync.exit, %bb.c
  %i.ab = getelementptr i8, ptr %i.a, i64 4
  %.val23 = load i32, ptr %i.ab, align 4
  %.val24 = load ptr, ptr %i.b, align 8
  call fastcc void @iommu_dma_free_iova(i32 %.val23, ptr %.val24, i64 noundef %i.g, i64 noundef %i.l, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @iommu_dma_vmap_noncontiguous(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, 4095
  %i.b = lshr i64 %i.a, 12
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.g = and i64 %i.f, -9223372036854775453
  %i.h = tail call ptr @vmap(ptr noundef %i.d, i32 noundef %i.e, i64 noundef 4, i64 %i.g) #14
  ret ptr %i.h
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i64 noundef, i64) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @iommu_dma_mmap_noncontiguous(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %2, 4095
  %i.b = lshr i64 %i.a, 12                        ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  %.not = icmp ult i64 %i.d, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 64
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val12 = load i64, ptr %i.e, align 8
  %i.f = sub i64 %.val12, %.val
  %i.g = lshr i64 %i.f, 12
  %i.h = sub nuw nsw i64 %i.b, %i.d
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @vm_map_pages(ptr noundef %1, ptr noundef %i.k, i64 noundef %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ -6, %bb.b ], [ -6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_dma_sync_single_for_cpu(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @pci_bus_type
  br i1 %i.c, label %dev_use_swiotlb.exit, label %swiotlb_sync_single_for_cpu.exit

dev_use_swiotlb.exit:                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1536
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1073741824
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %swiotlb_sync_single_for_cpu.exit, label %bb.b

bb.b:                                             ; preds = %dev_use_swiotlb.exit
  %i.g = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.h = tail call i64 @iommu_iova_to_phys(ptr noundef %i.g, i64 noundef %1) #14 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 640
  %.val.i = load ptr, ptr %i.i, align 8           ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %swiotlb_sync_single_for_cpu.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.val.i, align 8
  %.not9.i.i = icmp ult i64 %i.h, %i.j
  br i1 %.not9.i.i, label %swiotlb_sync_single_for_cpu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %swiotlb_find_pool.exit.i, label %swiotlb_sync_single_for_cpu.exit

swiotlb_find_pool.exit.i:                         ; preds = %bb.d
  tail call void @__swiotlb_sync_single_for_cpu(ptr noundef %0, i64 noundef %i.h, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %.val.i) #14
  br label %swiotlb_sync_single_for_cpu.exit

swiotlb_sync_single_for_cpu.exit:                 ; preds = %bb.a, %swiotlb_find_pool.exit.i, %bb.d, %bb.c, %bb.b, %dev_use_swiotlb.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @iommu_iova_to_phys(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @iommu_get_dma_domain(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_dma_sync_single_for_device(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @pci_bus_type
  br i1 %i.c, label %dev_use_swiotlb.exit, label %swiotlb_sync_single_for_device.exit

dev_use_swiotlb.exit:                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1536
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 1073741824
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %swiotlb_sync_single_for_device.exit, label %bb.b

bb.b:                                             ; preds = %dev_use_swiotlb.exit
  %i.g = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.h = tail call i64 @iommu_iova_to_phys(ptr noundef %i.g, i64 noundef %1) #14 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 640
  %.val.i = load ptr, ptr %i.i, align 8           ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %swiotlb_sync_single_for_device.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.val.i, align 8
  %.not9.i.i = icmp ult i64 %i.h, %i.j
  br i1 %.not9.i.i, label %swiotlb_sync_single_for_device.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %swiotlb_find_pool.exit.i, label %swiotlb_sync_single_for_device.exit

swiotlb_find_pool.exit.i:                         ; preds = %bb.d
  tail call void @__swiotlb_sync_single_for_device(ptr noundef %0, i64 noundef %i.h, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %.val.i) #14
  br label %swiotlb_sync_single_for_device.exit

swiotlb_sync_single_for_device.exit:              ; preds = %bb.a, %swiotlb_find_pool.exit.i, %bb.d, %bb.c, %bb.b, %dev_use_swiotlb.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_dma_sync_sg_for_cpu(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %.val = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val, 2
  %.not = icmp ne i32 %i.b, 0
  %i.c = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 1536
  %i.f = getelementptr i8, ptr %0, i64 640
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = icmp eq ptr %i.g, @pci_bus_type
  br i1 %i.h, label %.lr.ph.split, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %sg_next.exit
  %.022 = phi i32 [ %i.x, %sg_next.exit ], [ 0, %.lr.ph ]
  %.01821 = phi ptr [ %.06.i, %sg_next.exit ], [ %1, %.lr.ph ] ; 4 uses
  %i.i = getelementptr i8, ptr %.01821, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %.01821, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = icmp eq ptr %i.n, @pci_bus_type
  br i1 %i.o, label %dev_use_swiotlb.exit.i, label %iommu_dma_sync_single_for_cpu.exit

dev_use_swiotlb.exit.i:                           ; preds = %.lr.ph.split
  %i.p = load i32, ptr %i.e, align 8
  %i.q = and i32 %i.p, 1073741824
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %iommu_dma_sync_single_for_cpu.exit, label %bb.b

bb.b:                                             ; preds = %dev_use_swiotlb.exit.i
  %i.r = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.s = tail call i64 @iommu_iova_to_phys(ptr noundef %i.r, i64 noundef %i.j) #14 ; 3 uses
  %.val.i.i = load ptr, ptr %i.f, align 8         ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %iommu_dma_sync_single_for_cpu.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@dma_iova_link:bb.a
  %i.r = icmp eq ptr %i.q, @pci_bus_type
  br i1 %i.r, label %dev_use_swiotlb.exit, label %dev_use_swiotlb.exit.thread

dev_use_swiotlb.exit:                             ; preds = %.critedge46
  %i.s = getelementptr i8, ptr %0, i64 1536
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 1073741824
  %.not49 = icmp eq i32 %i.u, 0
  br i1 %.not49, label %dev_use_swiotlb.exit.thread, label %bb.d

bb.d:                                             ; preds = %dev_use_swiotlb.exit
  %i.v = or i64 %4, %2
  %i.w = and i64 %i.e, %i.v
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %dev_use_swiotlb.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %6, 5120
  %.not44 = icmp eq i64 %i.x, 0
  br i1 %.not44, label %bb.f, label %iommu_dma_iova_link_swiotlb.exit

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %.val91.i = load i64, ptr %i.ab, align 8        ; 2 uses
  %i.ac = add i64 %.val91.i, -1                   ; 2 uses
  %i.ad = and i64 %i.ac, %2                       ; 3 uses
  %i.ae = add i64 %4, %2
  %i.af = and i64 %i.ac, %i.ae                    ; 4 uses
  %i.ag = load i64, ptr %1, align 8
  %i.ah = add i64 %i.ag, %3                       ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = sub i64 %.val91.i, %i.ad
  %i.aj = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.ai) ; 3 uses
  %i.ak = tail call fastcc i32 @iommu_dma_iova_bounce_and_link(ptr noundef %0, i64 noundef %i.ah, i64 noundef %2, i64 noundef %i.aj, i32 noundef %5, i64 noundef %6, i64 noundef %i.ad) #19, !srcloc !108 ; 2 uses
  %.not82.i = icmp eq i32 %i.ak, 0
  br i1 %.not82.i, label %bb.h, label %iommu_dma_iova_link_swiotlb.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.j, align 8
  %i.am = or i64 %i.al, -9223372036854775808
  store i64 %i.am, ptr %i.j, align 8
  %i.an = sub i64 %4, %i.aj                       ; 2 uses
  %.not83.not.i = icmp eq i64 %i.an, 0
  br i1 %.not83.not.i, label %iommu_dma_iova_link_swiotlb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.172.i = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ] ; 5 uses
  %.170.i = phi i64 [ %i.an, %bb.h ], [ %4, %bb.f ] ; 2 uses
  %i.ao = sub i64 %.170.i, %i.af                  ; 2 uses
  %.not84.i = icmp eq i64 %.170.i, %i.af
  br i1 %.not84.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.172.i, %i.ah
  %i.aq = add i64 %.172.i, %2
  %i.ar = trunc i64 %6 to i32
  %i.as = lshr i32 %i.ar, 4
  %i.at = and i32 %i.as, 32                       ; 3 uses
  switch i32 %5, label %__dma_iova_link.exit.i [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = or disjoint i32 %i.at, 7
  br label %__dma_iova_link.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = or disjoint i32 %i.at, 5
  br label %__dma_iova_link.exit.i

bb.m:                                             ; preds = %bb.j
  %i.aw = or disjoint i32 %i.at, 6
  br label %__dma_iova_link.exit.i

__dma_iova_link.exit.i:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.09.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.au, %bb.k ], [ %i.av, %bb.l ], [ 0, %bb.j ]
  %i.ax = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.ay = tail call i32 @iommu_map_nosync(ptr noundef %i.ax, i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef %i.ao, i32 noundef %.09.i.i.i, i32 noundef 2080) #14 ; 2 uses
  %.not85.i = icmp eq i32 %i.ay, 0
  br i1 %.not85.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %__dma_iova_link.exit.i
  %i.az = add i64 %i.ao, %.172.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.2.i = phi i64 [ %i.az, %bb.n ], [ %.172.i, %bb.i ] ; 3 uses
  %.not86.i = icmp eq i64 %i.af, 0
  br i1 %.not86.i, label %iommu_dma_iova_link_swiotlb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = add i64 %.2.i, %i.ah
  %i.bb = add i64 %.2.i, %2
  %i.bc = tail call fastcc i32 @iommu_dma_iova_bounce_and_link(ptr noundef %0, i64 noundef %i.ba, i64 noundef %i.bb, i64 noundef %i.af, i32 noundef %5, i64 noundef %6, i64 noundef 0) #19, !srcloc !109 ; 2 uses
  %.not87.i = icmp eq i32 %i.bc, 0
  br i1 %.not87.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.j, align 8
  %i.be = or i64 %i.bd, -9223372036854775808
  store i64 %i.be, ptr %i.j, align 8
  br label %iommu_dma_iova_link_swiotlb.exit

bb.r:                                             ; preds = %bb.p, %__dma_iova_link.exit.i
  %.073.i = phi i32 [ %i.ay, %__dma_iova_link.exit.i ], [ %i.bc, %bb.p ] ; 2 uses
  %.3.i = phi i64 [ %.172.i, %__dma_iova_link.exit.i ], [ %.2.i, %bb.p ] ; 2 uses
  %.not88.i = icmp eq i64 %.3.i, 0
  br i1 %.not88.i, label %iommu_dma_iova_link_swiotlb.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @__iommu_dma_iova_unlink(ptr noundef %0, ptr noundef readonly %1, i64 noundef %3, i64 noundef %.3.i, i32 noundef %5, i64 noundef %6, i1 noundef zeroext false) #19, !srcloc !110
  br label %iommu_dma_iova_link_swiotlb.exit

dev_use_swiotlb.exit.thread:                      ; preds = %.critedge46, %bb.d, %dev_use_swiotlb.exit
  %i.bf = load i64, ptr %1, align 8
  %i.bg = sub i64 %3, %i.f
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = sub i64 %2, %i.f
  %i.bj = add i64 %i.e, %4
  %i.bk = add i64 %i.bj, %i.f
  %i.bl = sub i64 0, %.val47
  %i.bm = and i64 %i.bk, %i.bl
  %i.bn = and i64 %6, 1024
  %.not.i.i = icmp eq i64 %i.bn, 0
  %..i.i = select i1 %.not.i.i, i32 4, i32 16
  %i.bo = trunc i64 %6 to i32
  %i.bp = lshr i32 %i.bo, 4
  %i.bq = and i32 %i.bp, 32
  %.1.i.i = or disjoint i32 %..i.i, %i.bq         ; 3 uses
  switch i32 %5, label %__dma_iova_link.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.t:                                             ; preds = %dev_use_swiotlb.exit.thread
  %i.br = or disjoint i32 %.1.i.i, 3
  br label %__dma_iova_link.exit

bb.u:                                             ; preds = %dev_use_swiotlb.exit.thread
  %i.bs = or disjoint i32 %.1.i.i, 1
  br label %__dma_iova_link.exit

bb.v:                                             ; preds = %dev_use_swiotlb.exit.thread
  %i.bt = or disjoint i32 %.1.i.i, 2
  br label %__dma_iova_link.exit

__dma_iova_link.exit:                             ; preds = %dev_use_swiotlb.exit.thread, %bb.t, %bb.u, %bb.v
  %.09.i.i = phi i32 [ %i.bt, %bb.v ], [ %i.br, %bb.t ], [ %i.bs, %bb.u ], [ 0, %dev_use_swiotlb.exit.thread ]
  %i.bu = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14
  %i.bv = tail call i32 @iommu_map_nosync(ptr noundef %i.bu, i64 noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bm, i32 noundef %.09.i.i, i32 noundef 2080) #14
  br label %iommu_dma_iova_link_swiotlb.exit

iommu_dma_iova_link_swiotlb.exit:                 ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.h, %bb.g, %bb.c, %bb.b, %bb.e, %__dma_iova_link.exit
  %.0 = phi i32 [ %i.bv, %__dma_iova_link.exit ], [ -5, %bb.b ], [ -95, %bb.c ], [ -1, %bb.e ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.q ], [ %.073.i, %bb.s ], [ %.073.i, %bb.r ], [ %i.ak, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dma_iova_sync(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %1, align 8
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 32
  %.val13 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.g = add i64 %.val13, -1                      ; 2 uses
  %i.h = and i64 %i.g, %i.e                       ; 2 uses
  %i.i = sub i64 %i.e, %i.h
  %i.j = add i64 %i.g, %3
  %i.k = add i64 %i.j, %i.h
  %i.l = sub i64 0, %.val13
  %i.m = and i64 %i.k, %i.l
  %i.n = tail call i32 @iommu_sync_map(ptr noundef %i.a, i64 noundef %i.i, i64 noundef %i.m) #14
  ret i32 %i.n
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @iommu_sync_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_iova_unlink(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @__iommu_dma_iova_unlink(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, i1 noundef zeroext false) #19, !srcloc !110
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__iommu_dma_iova_unlink(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.iommu_iotlb_gather, align 8 ; 12 uses
  %i.a = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i64, ptr %1, align 8
  %i.e = add i64 %i.d, %2                         ; 6 uses
  %i.f = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %.val38 = load i64, ptr %i.f, align 8
  %i.g = add i64 %.val38, -1
  %i.h = and i64 %i.g, %i.e                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.not = icmp sgt i64 %i.j, -1
  br i1 %.not, label %iommu_dma_iova_unlink_range_slow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 32       ; 3 uses
  %.val.i = load i64, ptr %i.n, align 8
  %i.o = add i64 %i.e, %3                         ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %i.q = tail call i64 @iommu_iova_to_phys(ptr noundef %i.k, i64 noundef %i.e) #14 ; 4 uses
  %.not.not.peel.i = icmp eq i64 %i.q, 0
  br i1 %.not.not.peel.i, label %.loopexit.i, label %.critedge.peel.i, !prof !46

.critedge.peel.i:                                 ; preds = %bb.b
  %i.r = add i64 %.val.i, -1
  %i.s = and i64 %i.r, %i.e
  %i.t = load i64, ptr %i.n, align 8
  %i.u = sub i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.u) ; 2 uses
  %.val.i.peel.i = load ptr, ptr %i.p, align 8    ; 4 uses
  %.not.i.i.peel.i = icmp eq ptr %.val.i.peel.i, null
  br i1 %.not.i.i.peel.i, label %swiotlb_tbl_unmap_single.exit.peel.i, label %bb.c

bb.c:                                             ; preds = %.critedge.peel.i
  %i.w = load i64, ptr %.val.i.peel.i, align 8
  %.not9.i.i.peel.i = icmp ult i64 %i.q, %i.w
  br i1 %.not9.i.i.peel.i, label %swiotlb_tbl_unmap_single.exit.peel.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %.val.i.peel.i, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ult i64 %i.q, %i.y
  br i1 %i.z, label %swiotlb_find_pool.exit.i.peel.i, label %swiotlb_tbl_unmap_single.exit.peel.i

swiotlb_find_pool.exit.i.peel.i:                  ; preds = %bb.d
  tail call void @__swiotlb_tbl_unmap_single(ptr noundef %0, i64 noundef %i.q, i64 noundef %i.v, i32 noundef %4, i64 noundef %5, ptr noundef nonnull %.val.i.peel.i) #14
  br label %swiotlb_tbl_unmap_single.exit.peel.i

swiotlb_tbl_unmap_single.exit.peel.i:             ; preds = %swiotlb_find_pool.exit.i.peel.i, %bb.d, %bb.c, %.critedge.peel.i
  %i.aa = add i64 %i.v, %i.e                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.o
  br i1 %i.ab, label %.peel.next.i, label %iommu_dma_iova_unlink_range_slow.exit

.peel.next.i:                                     ; preds = %swiotlb_tbl_unmap_single.exit.peel.i, %swiotlb_tbl_unmap_single.exit.i
  %.0.i = phi i64 [ %i.ak, %swiotlb_tbl_unmap_single.exit.i ], [ %i.aa, %swiotlb_tbl_unmap_single.exit.peel.i ] ; 3 uses
  %i.ac = tail call i64 @iommu_iova_to_phys(ptr noundef %i.k, i64 noundef %.0.i) #14 ; 4 uses
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %.loopexit.i, label %.critedge.i, !prof !46

.loopexit.i:                                      ; preds = %.peel.next.i, %bb.b
  tail call void asm sideeffect "614: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 614b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 614) #18, !srcloc !111
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 2050, i32 2305, i64 16) #18, !srcloc !112
  tail call void asm sideeffect "615: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 615b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 615) #18, !srcloc !113
  br label %iommu_dma_iova_unlink_range_slow.exit

.critedge.i:                                      ; preds = %.peel.next.i
  %i.ad = load i64, ptr %i.n, align 8
  %i.ae = sub i64 %i.o, %.0.i
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ad) ; 2 uses
  %.val.i.i = load ptr, ptr %i.p, align 8         ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %swiotlb_tbl_unmap_single.exit.i, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.ag = load i64, ptr %.val.i.i, align 8
  %.not9.i.i.i = icmp ult i64 %i.ac, %i.ag
  br i1 %.not9.i.i.i, label %swiotlb_tbl_unmap_single.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %.val.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %swiotlb_find_pool.exit.i.i, label %swiotlb_tbl_unmap_single.exit.i

swiotlb_find_pool.exit.i.i:                       ; preds = %bb.f
  tail call void @__swiotlb_tbl_unmap_single(ptr noundef %0, i64 noundef %i.ac, i64 noundef %i.af, i32 noundef %4, i64 noundef %5, ptr noundef nonnull %.val.i.i) #14
  br label %swiotlb_tbl_unmap_single.exit.i

swiotlb_tbl_unmap_single.exit.i:                  ; preds = %swiotlb_find_pool.exit.i.i, %bb.f, %bb.e, %.critedge.i
  %i.ak = add i64 %i.af, %.0.i                    ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.o
  br i1 %i.al, label %.peel.next.i, label %iommu_dma_iova_unlink_range_slow.exit, !llvm.loop !114

iommu_dma_iova_unlink_range_slow.exit:            ; preds = %swiotlb_tbl_unmap_single.exit.i, %.loopexit.i, %swiotlb_tbl_unmap_single.exit.peel.i, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  store i64 -1, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %iommu_dma_iova_unlink_range_slow.exit
  %i.an = getelementptr i8, ptr %i.c, i64 216
  %i.ao = load volatile ptr, ptr %i.an, align 8
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = zext i1 %i.ap to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %iommu_dma_iova_unlink_range_slow.exit
  %i.ar = phi i8 [ 0, %iommu_dma_iova_unlink_range_slow.exit ], [ %i.aq, %bb.g ]
  store i8 %i.ar, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.as = add i64 %3, -1
  %i.at = add i64 %i.as, %i.h
  %i.au = add i64 %i.at, %.val
  %i.av = sub i64 0, %.val
  %i.aw = and i64 %i.au, %i.av                    ; 3 uses
  %i.ax = sub i64 %i.e, %i.h                      ; 2 uses
  %i.ay = call i64 @iommu_unmap_fast(ptr noundef %i.a, i64 noundef %i.ax, i64 noundef %i.aw, ptr noundef nonnull %7) #14
  %.not35 = icmp eq i64 %i.ay, %i.aw
  br i1 %.not35, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "619: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 619b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 619) #18, !srcloc !115
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 2095, i32 2305, i64 16) #18, !srcloc !116
  call void asm sideeffect "620: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 620b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 620) #18, !srcloc !117
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = load i8, ptr %.sroa.6.0..sroa_idx.i, align 8, !range !10, !noundef !44
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.a, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %iommu_iotlb_sync.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %7, align 8
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %iommu_iotlb_sync.exit, !prof !27

bb.m:                                             ; preds = %bb.l
  call void %i.be(ptr noundef %i.a, ptr noundef nonnull %7) #14, !inline_history !45
  br label %iommu_iotlb_sync.exit

iommu_iotlb_sync.exit:                            ; preds = %bb.k, %bb.l, %bb.m
  store i64 -1, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.am, align 8
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %iommu_iotlb_sync.exit, %bb.j
  br i1 %6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %i.a, i64 4
  %.val36 = load i32, ptr %i.bi, align 4
  %.val37 = load ptr, ptr %i.b, align 8
  call fastcc void @iommu_dma_free_iova(i32 %.val36, ptr %.val37, i64 noundef %i.ax, i64 noundef %i.aw, ptr noundef nonnull %7) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dma_iova_destroy(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__iommu_dma_iova_unlink(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef %2, i32 noundef %3, i64 noundef %4, i1 noundef zeroext true) #19, !srcloc !118
  br label %dma_iova_free.exit

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @iommu_get_dma_domain(ptr noundef %0) #14 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 32
  %.val13.i = load i64, ptr %i.e, align 8         ; 4 uses
  %i.f = add i64 %.val13.i, -1                    ; 2 uses
  %i.g = and i64 %i.f, %i.d                       ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val14.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val14.i, 9223372036854775807
  %i.j = add i64 %i.g, %i.f
  %i.k = add i64 %i.j, %i.i
  %i.l = sub i64 0, %.val13.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr i8, ptr %i.a, i64 4
  %.val11.i = load i32, ptr %i.n, align 4
  %i.o = icmp eq i32 %.val11.i, 2
  br i1 %i.o, label %bb.d, label %iova_pfn.exit19.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8
  %i.q = sub i64 %i.p, %i.m
  store i64 %i.q, ptr %i.c, align 8
  br label %dma_iova_free.exit

iova_pfn.exit19.i.i:                              ; preds = %bb.c
  %i.r = sub i64 %i.d, %i.g
  %i.s = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.val13.i) #17, !srcloc !13
  %i.t = lshr i64 %i.r, %i.s
  %i.u = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.val13.i) #17, !srcloc !13
  %i.v = lshr i64 %i.m, %i.u
  tail call void @free_iova_fast(ptr noundef %i.c, i64 noundef %i.t, i64 noundef %i.v) #14
  br label %dma_iova_free.exit

dma_iova_free.exit:                               ; preds = %iova_pfn.exit19.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_setup_dma_ops(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.list_head, align 8          ; 14 uses
  %i.c = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, @pci_bus_type
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @iommu_dma_forcedac, align 1, !range !10, !noundef !44
  %i.g = getelementptr i8, ptr %0, i64 728
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 60       ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = shl nuw nsw i8 %i.f, 1
  %i.l = and i8 %i.j, -3
  %i.m = or disjoint i8 %i.l, %i.k
  %i.n = xor i8 %i.m, 2
  store i8 %i.n, ptr %i.i, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val = load i32, ptr %1, align 8
  %i.o = and i32 %.val, 2
  %.not = icmp eq i32 %i.o, 0
  %i.p = getelementptr i8, ptr %0, i64 752        ; 6 uses
  br i1 %.not, label %dev_assign_dma_iommu.exit, label %bb.d

dev_assign_dma_iommu.exit:                        ; preds = %bb.c
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.p, i32 -5, ptr elementtype(i8) %i.p) #18, !srcloc !119
  br label %iommu_dma_init_domain.exit.thread14

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.p, i32 4, ptr elementtype(i8) %i.p) #18, !srcloc !120
  %i.q = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 8 uses
  %i.s = getelementptr i8, ptr %0, i64 608
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %iommu_dma_init_domain.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %.not45.i = icmp eq i32 %i.v, 1
  br i1 %.not45.i, label %bb.f, label %iommu_dma_init_domain.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.x) #17, !srcloc !13 ; 2 uses
  %.not46.i = icmp eq ptr %i.t, null
  br i1 %.not46.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 48
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not10.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not10.i.i, label %dma_range_map_min.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.t, %bb.g ] ; 3 uses
  %.0911.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ -1, %bb.g ]
  %i.ab = getelementptr i8, ptr %.012.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @llvm.umin.i64(i64 %.0911.i.i, i64 %i.ac) ; 2 uses
  %i.ae = getelementptr i8, ptr %.012.i.i, i64 24
  %i.af = getelementptr i8, ptr %.012.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %dma_range_map_min.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !121

dma_range_map_min.exit.i:                         ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8
  %.not86.i = icmp eq i64 %i.ai, -1
  br i1 %.not86.i, label %dma_range_map_max.exit.i, label %bb.h

dma_range_map_min.exit.thread.i:                  ; preds = %.lr.ph.i.i
  %i.aj = getelementptr i8, ptr %1, i64 56
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ugt i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.h, label %.lr.ph.i53.i

.lr.ph.i53.i:                                     ; preds = %dma_range_map_min.exit.thread.i, %.lr.ph.i53.i
  %i.am = phi i64 [ %i.au, %.lr.ph.i53.i ], [ %i.aa, %dma_range_map_min.exit.thread.i ]
  %.014.i.i = phi ptr [ %i.as, %.lr.ph.i53.i ], [ %i.t, %dma_range_map_min.exit.thread.i ] ; 3 uses
  %.01013.i.i = phi i64 [ %i.ar, %.lr.ph.i53.i ], [ 0, %dma_range_map_min.exit.thread.i ]
  %i.an = getelementptr i8, ptr %.014.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.am, -1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.01013.i.i, i64 %i.aq) ; 2 uses
  %i.as = getelementptr i8, ptr %.014.i.i, i64 24
  %i.at = getelementptr i8, ptr %.014.i.i, i64 40
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.not.i54.i = icmp eq i64 %i.au, 0
  br i1 %.not.i54.i, label %dma_range_map_max.exit.i, label %.lr.ph.i53.i, !llvm.loop !122

dma_range_map_max.exit.i:                         ; preds = %.lr.ph.i53.i, %dma_range_map_min.exit.i
  %.010.lcssa.i.i = phi i64 [ 0, %dma_range_map_min.exit.i ], [ %i.ar, %.lr.ph.i53.i ]
  %i.av = getelementptr i8, ptr %1, i64 48
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp ult i64 %.010.lcssa.i.i, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %dma_range_map_max.exit.i, %dma_range_map_min.exit.thread.i, %dma_range_map_min.exit.i
  %i.ay = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %iommu_dma_init_domain.exit.thread

bb.i:                                             ; preds = %dma_range_map_max.exit.i, %._crit_edge.i
  %i.az = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.aw, %dma_range_map_max.exit.i ]
  %i.ba = lshr i64 %i.az, %i.y
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1) ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 40
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %.not47.i = icmp eq i64 %i.bd, 0
  %i.be = shl nuw i64 1, %i.y                     ; 2 uses
  br i1 %.not47.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.r, i64 32
  %i.bg = load i64, ptr %i.bf, align 8
  %.not50.i = icmp eq i64 %i.be, %i.bg
  %.not51.i = icmp eq i64 %i.bb, %i.bd
end_hunk_1

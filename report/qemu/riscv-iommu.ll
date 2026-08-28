Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv-iommu?download=true
inline.NumInlined: 228
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@riscv_iommu_memory_region_notify:bb.a
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
  %i.ad = trunc nuw i8 %i.ac to i1                ; 5 uses
  %i.ae = xor i1 %i.ad, true
  %i.af = zext i1 %i.ae to i64
  %i.ag = lshr exact i64 64, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %i.aa, label %bb.g [
    i32 0, label %select.unfold70
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 3, label %.split.i
    i32 4, label %.thread169.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.ak = load i8, ptr %i.aj, align 2, !range !10, !noundef !11
  %i.al = trunc nuw i8 %i.ak to i1
  %spec.store.select.i = select i1 %i.al, i64 3, i64 1
  store i64 %spec.store.select.i, ptr %i.ai, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 0, ptr %i.an, align 8
  br label %select.unfold

.split.i:                                         ; preds = %bb.e
  br i1 %i.ad, label %.thread169.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %select.unfold70

bb.h:                                             ; preds = %bb.e
  br i1 %i.ad, label %.thread169.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.i
  %i.ao = phi i32 [ 9, %.split.i ], [ 0, %bb.h ]
  %.0130174.i = phi i32 [ 1, %.split.i ], [ 0, %bb.h ]
  br label %.thread169.i

.thread169.i:                                     ; preds = %bb.e, %bb.i, %bb.h, %.split.i
  %i.ap = phi i32 [ %i.ao, %bb.i ], [ 0, %bb.h ], [ 9, %.split.i ], [ 18, %bb.e ]
  %.0130172.i = phi i32 [ %.0130174.i, %bb.i ], [ 0, %bb.h ], [ 1, %.split.i ], [ 2, %bb.e ] ; 2 uses
  %i.aq = phi i32 [ 7, %bb.i ], [ 6, %bb.h ], [ 6, %.split.i ], [ 6, %bb.e ]
  %i.ar = add nuw nsw i32 %i.aq, %i.ap
  %.highbits.i = lshr i32 %i.b, %i.ar
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %.preheader.i, label %select.unfold70

.preheader.i:                                     ; preds = %.thread169.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !annotation !15
  store i64 0, ptr %i.a, align 8, !annotation !15
  %i.as = select i1 %i.ad, i32 6, i32 7
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.0126.in.i89 = shl i64 %i.y, 2
  %.0126.i90 = and i64 %.0126.in.i89, 72057594037923840 ; 2 uses
  %i.au = icmp sgt i32 %.0130172.i, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.l
  %.0126.in.i = shl nuw nsw i64 %i.bj, 2
  %.0126.i = and i64 %.0126.in.i, 72057594037923840 ; 2 uses
  %i.av = icmp sgt i32 %.in, 1
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader.i, %bb.j
  %.in = phi i32 [ %i.aw, %bb.j ], [ %.0130172.i, %.preheader.i ] ; 2 uses
  %.0126.i91 = phi i64 [ %.0126.i, %bb.j ], [ %.0126.i90, %.preheader.i ]
  %i.aw = add nsw i32 %.in, -1                    ; 2 uses
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 5) #17
  %i.ax = mul nuw nsw i32 %i.aw, 9
  %i.ay = add nuw i32 %i.ax, %i.as
  %i.az = load i64, ptr %i.t, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 16777215
  %i.bc = lshr i32 %i.bb, %i.ay
  %i.bd = shl nuw nsw i32 %i.bc, 3
  %i.be = and i32 %i.bd, 4088
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = or disjoint i64 %.0126.i91, %i.bf
  %i.bh = load ptr, ptr %i.at, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bi = call i32 @address_space_rw(ptr noundef %i.bh, i64 noundef %i.bg, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) 8, i1 noundef zeroext false) #17
  %.not145.i = icmp eq i32 %i.bi, 0
  br i1 %.not145.i, label %bb.k, label %select.unfold70

bb.k:                                             ; preds = %.lr.ph
  %i.bj = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bk = and i64 %i.bj, 1
  %.not146.i = icmp eq i64 %i.bk, 0
  br i1 %.not146.i, label %select.unfold70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = and i64 %i.bj, -18014398509480962
  %.not147.i = icmp eq i64 %i.bl, 0
  br i1 %.not147.i, label %bb.j, label %select.unfold70, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.j, %.preheader.i
  %.0126.i.lcssa = phi i64 [ %.0126.i90, %.preheader.i ], [ %.0126.i, %bb.j ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 5) #17
  %i.bm = load i64, ptr %i.t, align 8
  %i.bn = select i1 %i.ad, i64 6, i64 5
  %i.bo = shl i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, 4080
  %i.bq = or disjoint i64 %i.bp, %.0126.i.lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef 0, i64 noundef 64, i1 noundef false) #17
  %i.br = load ptr, ptr %i.at, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bs = call i32 @address_space_rw(ptr noundef %i.br, i64 noundef %i.bq, i64 4294967296, ptr noundef nonnull %7, i64 noundef range(i64 4, 65) %i.ag, i1 noundef zeroext false) #17
  %.not136.i = icmp eq i32 %i.bs, 0
  br i1 %.not136.i, label %bb.m, label %select.unfold70

bb.m:                                             ; preds = %._crit_edge
  %i.bt = load i64, ptr %7, align 8               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.by, align 8            ; 4 uses
  %i.cd = load <2 x i64>, ptr %i.ca, align 8
  store <2 x i64> %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cj = load <2 x i64>, ptr %i.ch, align 8
  store <2 x i64> %i.cj, ptr %i.ci, align 8
  %i.ck = and i64 %i.bt, 1
  %.not137.i = icmp eq i64 %i.ck, 0
  br i1 %.not137.i, label %select.unfold70, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = call fastcc zeroext i1 @riscv_iommu_validate_device_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.cl, label %bb.o, label %select.unfold70

bb.o:                                             ; preds = %bb.n
  %i.cm = lshr i64 %i.cc, 60                      ; 3 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl i64 %i.cc, 12
  %i.cp = and i64 %i.bt, 32
  %.not138.i = icmp eq i64 %i.cp, 0
  %i.cq = load i64, ptr %i.t, align 8
  %i.cr = and i64 %i.cq, 17592169267200           ; 2 uses
  br i1 %.not138.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not139.i = icmp eq i64 %i.cr, 0
  br i1 %.not139.i, label %bb.q, label %select.unfold70

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ugt i64 %i.cc, -5764607523034234881
  br i1 %i.cs, label %select.unfold70, label %select.unfold

bb.r:                                             ; preds = %bb.o
  %i.ct = and i64 %i.bt, 512
  %i.cu = or disjoint i64 %i.cr, %i.ct
  %or.cond.i = icmp eq i64 %i.cu, 0
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.bz, align 8
  br label %select.unfold

bb.t:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %i.cm, 0
  br i1 %i.cv, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = icmp ugt i64 %i.cc, 4611686018427387903
  br i1 %i.cw, label %select.unfold70, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.2128162.i = and i64 %i.co, 72057594037923840  ; 2 uses
  %.not164.i = icmp eq i64 %i.cm, 1
  br i1 %.not164.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.cx = add nsw i32 %i.cn, -2
  br label %.lr.ph.i

bb.w:                                             ; preds = %bb.x
  %i.cy = shl i64 %i.do, 2
  %.2128.i = and i64 %i.cy, 72057594037923840     ; 2 uses
  %i.cz = add nsw i32 %i.db, -1
  %i.da = icmp sgt i32 %i.db, 0
  br i1 %i.da, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %i.db = phi i32 [ %i.cz, %bb.w ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.2128163.i = phi i64 [ %.2128.i, %bb.w ], [ %.2128162.i, %.lr.ph.preheader.i ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.dc = mul nsw i32 %i.db, 9
  %i.dd = add nuw nsw i32 %i.dc, 8
  %i.de = load i64, ptr %i.t, align 8
  %i.df = lshr i64 %i.de, 24
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 1048575
  %i.di = lshr i32 %i.dh, %i.dd
  %i.dj = shl nuw nsw i32 %i.di, 3
  %i.dk = and i32 %i.dj, 4088
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = or disjoint i64 %.2128163.i, %i.dl
  %.val149.i = load i64, ptr %i.bx, align 8
  %i.dn = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val149.i, i64 noundef %i.dm, ptr noundef %i.a, i64 noundef 8)
  %.not143.i = icmp eq i32 %i.dn, 0
  br i1 %.not143.i, label %bb.x, label %select.unfold70

bb.x:                                             ; preds = %.lr.ph.i
  %i.do = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not144.i = icmp eq i64 %i.dp, 0
  br i1 %.not144.i, label %select.unfold70, label %bb.w

._crit_edge.i:                                    ; preds = %bb.w, %bb.v
  %.2128.lcssa.i = phi i64 [ %.2128162.i, %bb.v ], [ %.2128.i, %bb.w ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.dq = load i64, ptr %i.t, align 8
  %sh.diff.i = lshr i64 %i.dq, 20
  %i.dr = and i64 %sh.diff.i, 4080
  %i.ds = or disjoint i64 %i.dr, %.2128.lcssa.i
  %.val.i = load i64, ptr %i.bx, align 8
  %i.dt = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val.i, i64 noundef %i.ds, ptr noundef %i.ca, i64 noundef 16)
  %.not141.i = icmp eq i32 %i.dt, 0
  br i1 %.not141.i, label %bb.y, label %select.unfold70

bb.y:                                             ; preds = %._crit_edge.i
  %i.du = load <2 x i64>, ptr %i.ca, align 8
  %i.dv = load i64, ptr %i.ca, align 8
  store <2 x i64> %i.du, ptr %i.cb, align 8
  %i.dw = and i64 %i.dv, 1
  %.not142.i = icmp eq i64 %i.dw, 0
  br i1 %.not142.i, label %select.unfold70, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = call fastcc zeroext i1 @riscv_iommu_validate_process_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.dx, label %select.unfold, label %select.unfold70

select.unfold:                                    ; preds = %bb.z, %bb.t, %bb.s, %bb.f, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %select.unfold
  %i.dy = call i32 @g_hash_table_size(ptr noundef %i.o) #17
  %i.dz = icmp ugt i32 %i.dy, 127
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  %i.ea = call ptr @g_hash_table_new_full(ptr noundef nonnull @riscv_iommu_ctx_hash, ptr noundef nonnull @riscv_iommu_ctx_equal, ptr noundef nonnull @g_free, ptr noundef null) #17 ; 3 uses
  %i.eb = call ptr @g_hash_table_ref(ptr noundef %i.ea) #17 ; 0 uses
  %i.ec = atomicrmw xchg ptr %i.m, ptr %i.ea seq_cst, align 16
  call void @g_hash_table_unref(ptr noundef %i.ec) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.060 = phi ptr [ %i.ea, %bb.ab ], [ %i.o, %bb.aa ] ; 2 uses
  %i.ed = call i32 @g_hash_table_add(ptr noundef %.060, ptr noundef nonnull %i.t) #17 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %select.unfold
  call void @g_hash_table_unref(ptr noundef %i.o) #17
end_hunk_0

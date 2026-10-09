Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cputlb?download=true
inline.NumInlined: 904
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@tlb_flush_page_bits_by_mmuidx:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %3, ptr %i.k, align 4
  tail call fastcc void @tlb_flush_range_by_mmuidx_async_0(ptr noundef %0, ptr noundef nonnull byval(%struct.TLBFlushRangeData) align 8 %4)
  br label %tlb_flush_range_by_mmuidx.exit

tlb_flush_range_by_mmuidx.exit:                   ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tlb_flush_range_by_mmuidx_all_cpus_synced(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.TLBFlushRangeData, align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.b = icmp ult i32 %4, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.insert.ext.i = zext i32 %3 to i64   ; 2 uses
  %i.c = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !90
  %.not11.i.i = icmp eq ptr %i.c, null
  br i1 %.not11.i.i, label %tlb_flush_by_mmuidx_all_cpus_synced.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.012.i.i = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.b ] ; 3 uses
  %.not10.i.i = icmp eq ptr %.012.i.i, %0
  br i1 %.not10.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @async_run_on_cpu(ptr noundef nonnull %.012.i.i, ptr noundef nonnull @tlb_flush_by_mmuidx_async_work, i64 %.sroa.01.0.insert.ext.i) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 552
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !91
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %tlb_flush_by_mmuidx_all_cpus_synced.exit, label %.lr.ph.i.i, !llvm.loop !2

tlb_flush_by_mmuidx_all_cpus_synced.exit:         ; preds = %bb.d, %bb.b
  tail call void @async_safe_run_on_cpu(ptr noundef %0, ptr noundef nonnull @tlb_flush_by_mmuidx_async_work, i64 %.sroa.01.0.insert.ext.i) #25
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8 ; 2 uses
  %.neg = mul i64 %i.f, -4294967296
  %i.g = ashr exact i64 %.neg, 32
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @target_long_bits() #25
  %.not25 = icmp ult i32 %4, %i.h
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @tlb_flush_page_by_mmuidx_all_cpus_synced(ptr noundef %0, i64 noundef %1, i32 noundef %3)
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.i = shl i64 %i.f, 32
  %i.j = ashr exact i64 %i.i, 32
  %i.k = and i64 %i.j, %1
  store i64 %i.k, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %4, ptr %i.n, align 4
  %i.o = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !175
  %.not2628 = icmp eq ptr %i.o, null
  br i1 %.not2628, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.029 = phi ptr [ %i.s, %bb.j ], [ %i.o, %bb.h ] ; 3 uses
  %.not27 = icmp eq ptr %.029, %0
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.p = call dereferenceable_or_null(24) ptr @g_memdup(ptr noundef nonnull %5, i32 noundef 24) #27
  %i.q = ptrtoint ptr %i.p to i64
  call void @async_run_on_cpu(ptr noundef nonnull %.029, ptr noundef nonnull @tlb_flush_range_by_mmuidx_async_1, i64 %i.q) #25
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.029, i64 552
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !176
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.t = call dereferenceable_or_null(24) ptr @g_memdup(ptr noundef nonnull %5, i32 noundef 24) #27
  %i.u = ptrtoint ptr %i.t to i64
  call void @async_safe_run_on_cpu(ptr noundef %0, ptr noundef nonnull @tlb_flush_range_by_mmuidx_async_1, i64 %i.u) #25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.g, %tlb_flush_by_mmuidx_all_cpus_synced.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @g_memdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @tlb_flush_range_by_mmuidx_async_1(ptr noundef %0, i64 %1) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  tail call fastcc void @tlb_flush_range_by_mmuidx_async_0(ptr noundef %0, ptr noundef byval(%struct.TLBFlushRangeData) align 8 %i.a)
  tail call void @g_free(ptr noundef %i.a) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tlb_flush_page_bits_by_mmuidx_all_cpus_synced(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %.neg = mul i64 %i.a, -4294967296
  %i.b = ashr exact i64 %.neg, 32
  tail call void @tlb_flush_range_by_mmuidx_all_cpus_synced(ptr noundef %0, i64 noundef %1, i64 noundef %i.b, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tlb_protect_code(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8 ; 2 uses
  %sext = shl i64 %i.a, 32
  %i.b = ashr exact i64 %sext, 32
  %i.c = and i64 %i.b, %0
  %.neg = mul i64 %i.a, -4294967296
  %i.d = ashr exact i64 %.neg, 32
  %i.e = tail call i64 @physical_memory_test_and_clear_dirty(i64 noundef %i.c, i64 noundef %i.d, i32 noundef 1, ptr noundef null) #25 ; 0 uses
  ret void
}

declare i64 @physical_memory_test_and_clear_dirty(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tlb_unprotect_code(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @physical_memory_set_dirty_flag(i64 noundef %0, i32 noundef 1) #25
  ret void
}

declare void @physical_memory_set_dirty_flag(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tlb_reset_dirty(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  %i.b = atomicrmw xchg ptr %i.a, i32 1 seq_cst, align 4
  %.not9.i = icmp eq i32 %i.b, 0
  br i1 %.not9.i, label %qemu_spin_lock.exit, label %.preheader.i, !prof !87

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.c = atomicrmw xchg ptr %i.a, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %qemu_spin_lock.exit, label %.preheader.i, !prof !88, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.d = load atomic i32, ptr %i.a monotonic, align 4
  %.not78.i = icmp eq i32 %i.d, 0
  br i1 %.not78.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !89
  %i.e = load atomic i32, ptr %i.a monotonic, align 4
  %.not7.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1

qemu_spin_lock.exit:                              ; preds = %.loopexit.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16096
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %i.i, 32                  ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %qemu_spin_lock.exit, %tlb_reset_dirty_range_locked.exit28.7
  %indvars.iv37 = phi i64 [ 0, %qemu_spin_lock.exit ], [ %indvars.iv.next38, %tlb_reset_dirty_range_locked.exit28.7 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [696 x i8], ptr %i.f, i64 %indvars.iv37 ; 25 uses
  %i.l = sub nuw nsw i64 21, %indvars.iv37
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.val = load i64, ptr %i.m, align 16
  %i.n = lshr i64 %.val, 5
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.trip.count = zext i32 %i.p to i64
  br label %bb.c

.preheader:                                       ; preds = %tlb_reset_dirty_range_locked.exit, %bb.b
  %i.s = getelementptr i8, ptr %i.k, i64 340
  %.val26 = load i8, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = zext i8 %.val26 to i64
  %i.w = or i64 %i.u, %i.v
  %i.x = and i64 %i.w, 216
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %tlb_reset_dirty_range_locked.exit28

bb.c:                                             ; preds = %.lr.ph, %tlb_reset_dirty_range_locked.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %tlb_reset_dirty_range_locked.exit ] ; 3 uses
  %3 = load ptr, ptr %i.q, align 8
  %4 = getelementptr inbounds nuw [48 x i8], ptr %3, i64 %indvars.iv
  %5 = load ptr, ptr %i.r, align 8
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr i8, ptr %4, i64 36
  %.val27 = load i8, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = zext i8 %.val27 to i64
  %i.ae = or i64 %i.ac, %i.ad
  %i.af = and i64 %i.ae, 216
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %tlb_reset_dirty_range_locked.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = and i64 %i.j, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %i.aj, %1
  %i.al = add i64 %i.ak, %i.ah
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.e, label %tlb_reset_dirty_range_locked.exit

bb.e:                                             ; preds = %bb.d
  %i.an = or i64 %i.ac, 128
  store atomic i64 %i.an, ptr %i.ab monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit

tlb_reset_dirty_range_locked.exit:                ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !177

bb.f:                                             ; preds = %.preheader
  %i.ao = and i64 %i.j, %i.u
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = sub i64 %i.aq, %1
  %i.as = add i64 %i.ar, %i.ao
  %i.at = icmp ult i64 %i.as, %2
  br i1 %i.at, label %bb.g, label %tlb_reset_dirty_range_locked.exit28

bb.g:                                             ; preds = %bb.f
  %i.au = or i64 %i.u, 128
  store atomic i64 %i.au, ptr %i.t monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28

tlb_reset_dirty_range_locked.exit28:              ; preds = %.preheader, %bb.f, %bb.g
  %i.av = getelementptr i8, ptr %i.k, i64 388
  %.val26.1 = load i8, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = zext i8 %.val26.1 to i64
  %i.az = or i64 %i.ax, %i.ay
  %i.ba = and i64 %i.az, 216
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %tlb_reset_dirty_range_locked.exit28.1

bb.h:                                             ; preds = %tlb_reset_dirty_range_locked.exit28
  %i.bc = and i64 %i.j, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = sub i64 %i.be, %1
  %i.bg = add i64 %i.bf, %i.bc
  %i.bh = icmp ult i64 %i.bg, %2
  br i1 %i.bh, label %bb.i, label %tlb_reset_dirty_range_locked.exit28.1

bb.i:                                             ; preds = %bb.h
  %i.bi = or i64 %i.ax, 128
  store atomic i64 %i.bi, ptr %i.aw monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.1

tlb_reset_dirty_range_locked.exit28.1:            ; preds = %bb.i, %bb.h, %tlb_reset_dirty_range_locked.exit28
  %i.bj = getelementptr i8, ptr %i.k, i64 436
  %.val26.2 = load i8, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = zext i8 %.val26.2 to i64
  %i.bn = or i64 %i.bl, %i.bm
  %i.bo = and i64 %i.bn, 216
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %tlb_reset_dirty_range_locked.exit28.2

bb.j:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.1
  %i.bq = and i64 %i.j, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = sub i64 %i.bs, %1
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.k, label %tlb_reset_dirty_range_locked.exit28.2

bb.k:                                             ; preds = %bb.j
  %i.bw = or i64 %i.bl, 128
  store atomic i64 %i.bw, ptr %i.bk monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.2

tlb_reset_dirty_range_locked.exit28.2:            ; preds = %bb.k, %bb.j, %tlb_reset_dirty_range_locked.exit28.1
  %i.bx = getelementptr i8, ptr %i.k, i64 484
  %.val26.3 = load i8, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = zext i8 %.val26.3 to i64
  %i.cb = or i64 %i.bz, %i.ca
  %i.cc = and i64 %i.cb, 216
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.l, label %tlb_reset_dirty_range_locked.exit28.3

bb.l:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.2
  %i.ce = and i64 %i.j, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = sub i64 %i.cg, %1
  %i.ci = add i64 %i.ch, %i.ce
  %i.cj = icmp ult i64 %i.ci, %2
  br i1 %i.cj, label %bb.m, label %tlb_reset_dirty_range_locked.exit28.3

bb.m:                                             ; preds = %bb.l
  %i.ck = or i64 %i.bz, 128
  store atomic i64 %i.ck, ptr %i.by monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.3

tlb_reset_dirty_range_locked.exit28.3:            ; preds = %bb.m, %bb.l, %tlb_reset_dirty_range_locked.exit28.2
  %i.cl = getelementptr i8, ptr %i.k, i64 532
  %.val26.4 = load i8, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 184 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = zext i8 %.val26.4 to i64
  %i.cp = or i64 %i.cn, %i.co
  %i.cq = and i64 %i.cp, 216
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %tlb_reset_dirty_range_locked.exit28.4

bb.n:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.3
  %i.cs = and i64 %i.j, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = sub i64 %i.cu, %1
  %i.cw = add i64 %i.cv, %i.cs
  %i.cx = icmp ult i64 %i.cw, %2
  br i1 %i.cx, label %bb.o, label %tlb_reset_dirty_range_locked.exit28.4

bb.o:                                             ; preds = %bb.n
  %i.cy = or i64 %i.cn, 128
  store atomic i64 %i.cy, ptr %i.cm monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.4

tlb_reset_dirty_range_locked.exit28.4:            ; preds = %bb.o, %bb.n, %tlb_reset_dirty_range_locked.exit28.3
  %i.cz = getelementptr i8, ptr %i.k, i64 580
  %.val26.5 = load i8, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 216 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = zext i8 %.val26.5 to i64
  %i.dd = or i64 %i.db, %i.dc
  %i.de = and i64 %i.dd, 216
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.p, label %tlb_reset_dirty_range_locked.exit28.5

bb.p:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.4
  %i.dg = and i64 %i.j, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = sub i64 %i.di, %1
  %i.dk = add i64 %i.dj, %i.dg
  %i.dl = icmp ult i64 %i.dk, %2
  br i1 %i.dl, label %bb.q, label %tlb_reset_dirty_range_locked.exit28.5

bb.q:                                             ; preds = %bb.p
  %i.dm = or i64 %i.db, 128
  store atomic i64 %i.dm, ptr %i.da monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.5

tlb_reset_dirty_range_locked.exit28.5:            ; preds = %bb.q, %bb.p, %tlb_reset_dirty_range_locked.exit28.4
  %i.dn = getelementptr i8, ptr %i.k, i64 628
  %.val26.6 = load i8, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 248 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = zext i8 %.val26.6 to i64
  %i.dr = or i64 %i.dp, %i.dq
  %i.ds = and i64 %i.dr, 216
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.r, label %tlb_reset_dirty_range_locked.exit28.6

bb.r:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.5
  %i.du = and i64 %i.j, %i.dp
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = sub i64 %i.dw, %1
  %i.dy = add i64 %i.dx, %i.du
  %i.dz = icmp ult i64 %i.dy, %2
  br i1 %i.dz, label %bb.s, label %tlb_reset_dirty_range_locked.exit28.6

bb.s:                                             ; preds = %bb.r
  %i.ea = or i64 %i.dp, 128
  store atomic i64 %i.ea, ptr %i.do monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.6

tlb_reset_dirty_range_locked.exit28.6:            ; preds = %bb.s, %bb.r, %tlb_reset_dirty_range_locked.exit28.5
  %i.eb = getelementptr i8, ptr %i.k, i64 676
  %.val26.7 = load i8, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = zext i8 %.val26.7 to i64
  %i.ef = or i64 %i.ed, %i.ee
  %i.eg = and i64 %i.ef, 216
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.t, label %tlb_reset_dirty_range_locked.exit28.7

bb.t:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.6
  %i.ei = and i64 %i.j, %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = sub i64 %i.ek, %1
  %i.em = add i64 %i.el, %i.ei
  %i.en = icmp ult i64 %i.em, %2
  br i1 %i.en, label %bb.u, label %tlb_reset_dirty_range_locked.exit28.7

bb.u:                                             ; preds = %bb.t
  %i.eo = or i64 %i.ed, 128
  store atomic i64 %i.eo, ptr %i.ec monotonic, align 8
  br label %tlb_reset_dirty_range_locked.exit28.7

tlb_reset_dirty_range_locked.exit28.7:            ; preds = %bb.u, %bb.t, %tlb_reset_dirty_range_locked.exit28.6
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 22
  br i1 %exitcond40.not, label %bb.v, label %bb.b, !llvm.loop !178

bb.v:                                             ; preds = %tlb_reset_dirty_range_locked.exit28.7
  store atomic i32 0, ptr %i.a release, align 4
end_hunk_0
begin_hunk_1_@probe_access_full_mmu:bb.a
  %.not = icmp eq ptr %5, null
  %i.c = select i1 %.not, ptr %i.a, ptr %5
  %.not19 = icmp eq ptr %6, null
  %i.d = select i1 %.not19, ptr %i.b, ptr %6      ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  %i.f = call fastcc i32 @probe_access_internal(ptr noundef nonnull %i.e, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 0, i1 noundef zeroext false) ; 3 uses
  %.not20 = icmp samesign ult i32 %i.f, 128
  br i1 %.not20, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %i.h = load ptr, ptr %i.d, align 8
  %.val = load i64, ptr %i.h, align 8
  tail call fastcc void @notdirty_write(ptr noundef nonnull %i.e, i64 noundef %1, i32 noundef %i.g, i64 %.val, i64 noundef 0)
  %i.i = and i32 %i.f, 127
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 128) i32 @probe_access_flags(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32
  %i.e = or i64 %i.d, %1
  %i.f = sub i64 0, %i.e
  %i.g = sext i32 %2 to i64
  %.not = icmp ult i64 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !92

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1465, ptr noundef nonnull @__func__.probe_access_flags, ptr noundef nonnull @.str.4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !85
  %i.h = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  %i.i = call fastcc i32 @probe_access_internal(ptr noundef nonnull %i.h, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef nonnull %i.a, i64 noundef %7, i1 noundef zeroext true) ; 3 uses
  %.not22 = icmp samesign ult i32 %i.i, 128
  br i1 %.not22, label %bb.e, label %bb.d, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %i.k = load ptr, ptr %i.a, align 8
  %.val = load i64, ptr %i.k, align 8
  tail call fastcc void @notdirty_write(ptr noundef nonnull %i.h, i64 noundef %1, i32 noundef %i.j, i64 %.val, i64 noundef %7)
  %i.l = and i32 %i.i, 127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @probe_access(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.d = shl i64 %i.c, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = or i64 %i.e, %1
  %i.g = sub i64 0, %i.f
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %.not = icmp ult i64 %i.g, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !92

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1488, ptr noundef nonnull @__func__.probe_access, ptr noundef nonnull @.str.4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !annotation !85
  store ptr null, ptr %i.b, align 8, !annotation !85
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16496 ; 3 uses
  %i.j = call fastcc i32 @probe_access_internal(ptr noundef nonnull %i.i, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef %5, i1 noundef zeroext true) ; 3 uses
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.j, 130
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.i, label %bb.e, !prof !95

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.j, 2
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %3, 1
  %i.o = select i1 %i.n, i32 2, i32 1
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8
  tail call void @cpu_check_watchpoint(ptr noundef nonnull %i.i, i64 noundef %1, i64 noundef %i.h, i64 %i.r, i32 noundef %i.o, i64 noundef %5) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not29 = icmp samesign ult i32 %i.j, 128
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8
  %.val = load i64, ptr %i.s, align 8
  tail call fastcc void @notdirty_write(ptr noundef nonnull %i.i, i64 noundef %1, i32 noundef %2, i64 %.val, i64 noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.t = load ptr, ptr %i.b, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.0 = phi ptr [ %i.t, %bb.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0
}

declare void @cpu_check_watchpoint(ptr noundef, i64 noundef, i64 noundef, i64, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @tlb_vaddr_to_host(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !annotation !85
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.d = call fastcc i32 @probe_access_internal(ptr noundef nonnull %i.c, i64 noundef %1, i32 noundef 0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 0, i1 noundef zeroext false)
  %.not = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = select i1 %.not, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @get_page_addr_code_hostp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !annotation !85
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.b, i1 noundef zeroext true) #25, !inline_history !184 ; 2 uses
  %or.cond.i = icmp ult i32 %i.i, 22
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.j = call fastcc i32 @probe_access_internal(ptr noundef nonnull %i.b, i64 noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 33
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.r = icmp sgt i32 %i.q, %i.p
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i64 @qemu_ram_addr_from_host_nofail(ptr noundef nonnull %i.k) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i64 [ %i.s, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.0
}

declare i64 @qemu_ram_addr_from_host_nofail(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @tlb_plugin_lookup(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16096
  %i.c = shl nsw i64 %i.a, 32
  %sext.i = sub i64 90194313216, %i.c
  %i.d = ashr exact i64 %sext.i, 28
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i64, ptr %i.e, align 16
  %i.i = lshr i64 %i.h, 5
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 %1, %i.k
  %i.m = and i64 %i.l, %i.i                       ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.m
  %i.o = zext i1 %3 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load atomic i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8 ; 2 uses
  %i.s = shl i64 %i.r, 32
  %i.t = ashr exact i64 %i.s, 32                  ; 2 uses
  %i.u = and i64 %i.t, %1
  %i.v = or i64 %i.t, 64
  %i.w = and i64 %i.v, %i.q
  %i.x = icmp eq i64 %i.u, %i.w                   ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.e, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr [696 x i8], ptr %0, i64 %i.a
  %i.z = getelementptr i8, ptr %i.y, i64 1472
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.m ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = xor i64 %i.r, -1
  %sext = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext, 32
  %i.ag = and i64 %i.af, %1
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = and i64 %i.q, 16
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  store i8 1, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 16
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %4, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.an, %bb.c ], [ null, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sink, ptr %i.ao, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret i1 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 256) i64 @helper_ldub_mmu(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.MMULookupLocals, align 8    ; 9 uses
  %i.a = and i32 %2, 224
  %i.b = icmp eq i32 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16496 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16344
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 2
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !96
  fence seq_cst
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !annotation !85
  %i.k = call fastcc zeroext i1 @mmu_lookup(ptr noundef nonnull %i.c, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 16
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load ptr, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call fastcc i64 @do_ld_mmio_beN(ptr noundef nonnull %i.c, ptr noundef %i.q, i64 noundef 0, i64 noundef %i.s, i32 noundef 1, i32 noundef %i.p, i32 noundef range(i32 0, 3) 0, i64 noundef %3)
  %i.u = trunc i64 %i.t to i8
  br label %do_ld1_mmu.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i8, ptr %i.w, align 1
  br label %do_ld1_mmu.exit

do_ld1_mmu.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i.i = phi i8 [ %i.u, %bb.d ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.y = zext i8 %.0.i.i to i64
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 65536) i64 @helper_lduw_mmu(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 224
  %i.b = icmp eq i32 %i.a, 32
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.d = tail call fastcc zeroext i16 @do_ld2_mmu(ptr noundef nonnull %i.c, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef 0)
  %i.e = zext i16 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @do_ld2_mmu(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.MMULookupLocals, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !185
  fence seq_cst
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false), !annotation !85
  %i.h = call fastcc zeroext i1 @mmu_lookup(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 16
  %.not.i22 = icmp eq i32 %i.k, 0                 ; 2 uses
  br i1 %i.h, label %bb.t, label %bb.d, !prof !92

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  br i1 %.not.i22, label %bb.f, label %bb.e, !prof !95

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.o = load i32, ptr %i.n, align 4
  %i.p = load ptr, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call fastcc i64 @do_ld_mmio_beN(ptr noundef nonnull %0, ptr noundef %i.p, i64 noundef 0, i64 noundef %i.r, i32 noundef 2, i32 noundef %i.o, i32 noundef range(i32 0, 3) %4, i64 noundef %3)
  %i.t = trunc i64 %i.s to i16                    ; 2 uses
  %i.u = and i32 %i.m, 16
  %i.v = icmp eq i32 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %spec.select.i = select i1 %i.v, i16 %i.w, i16 %i.t
  br label %do_ld_2.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 10 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !95

bb.g:                                             ; preds = %bb.f
  %i.ac = load atomic i16, ptr %i.y monotonic, align 2
  br label %load_atom_2.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = load i32, ptr @cpuinfo, align 4         ; 2 uses
  %i.ae = and i32 %i.ad, 65536
end_hunk_1
begin_hunk_2_@cpu_ldl_code_mmu:bb.a
  %i.b = tail call fastcc i32 @do_ld4_mmu(ptr noundef nonnull %i.a, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef 2)
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @cpu_ldq_code_mmu(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.b = tail call fastcc i64 @do_ld8_mmu(ptr noundef nonnull %i.a, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef 2)
  ret i64 %i.b
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local noundef i64 @cpu_pointer_wrap_notreached(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #13 {
bb.a:
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2895, ptr noundef nonnull @__func__.cpu_pointer_wrap_notreached, ptr noundef null) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @cpu_pointer_wrap_uint32(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = and i64 %2, 4294967295
  ret i64 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tlb_flush_one_mmuidx_locked(ptr noundef %0, i32 noundef range(i32 -2147483648, 33) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [696 x i8], ptr %i.a, i64 %i.b ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16096
  %i.e = sub i32 21, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.f ; 6 uses
  %.val.i = load i64, ptr %i.g, align 16
  %i.h = lshr i64 %.val.i, 5
  %i.i = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, 100000000
  %i.m = icmp sgt i64 %2, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.p, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = mul i64 %i.s, 100                        ; 2 uses
  %i.u = udiv i64 %i.t, %i.i                      ; 2 uses
  %i.v = icmp ugt i64 %i.u, 70
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = shl nuw nsw i64 %i.i, 1
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.y = sub i32 32, %i.x
  %i.z = shl nuw i32 1, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.aa)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp samesign ult i64 %i.u, 30
  %or.cond.i = select i1 %i.ac, i1 %i.m, i1 false
  br i1 %or.cond.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %i.s, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 false) ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = lshr exact i64 -9223372036854775808, %i.af
  %.not6.i.i = icmp eq i64 %i.s, 0
  %i.ah = zext i1 %.not6.i.i to i64
  %.0.i.i = select i1 %.not.i.i, i64 %i.ah, i64 %i.ag ; 2 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i, i1 true)
  %i.aj = lshr i64 %i.t, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 70
  %i.al = zext i1 %i.ak to i64
  %spec.select.i = shl i64 %.0.i.i, %i.al
  %i.am = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 64)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0114.i = phi i64 [ %i.ab, %bb.d ], [ %i.am, %bb.f ] ; 5 uses
  %i.an = icmp eq i64 %.0114.i, %i.i
  br i1 %i.an, label %.thread.i, label %bb.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  br i1 %i.m, label %bb.h, label %tlb_mmu_resize_locked.exit

bb.h:                                             ; preds = %.thread.i
  store i64 %2, ptr %i.j, align 8
  store i64 %i.o, ptr %i.p, align 8
  br label %tlb_mmu_resize_locked.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @g_free(ptr noundef %i.ap) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 688 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void @g_free(ptr noundef %i.ar) #25
  store i64 %2, ptr %i.j, align 8
  store i64 0, ptr %i.p, align 8
  %i.as = shl i64 %.0114.i, 5
  %i.at = add i64 %i.as, -32
  store i64 %i.at, ptr %i.g, align 16
  %i.au = tail call noalias ptr @g_try_malloc_n(i64 noundef %.0114.i, i64 noundef 32) #30
  store ptr %i.au, ptr %i.ao, align 8
  %i.av = tail call noalias ptr @g_try_malloc_n(i64 noundef %.0114.i, i64 noundef 48) #30 ; 2 uses
  store ptr %i.av, ptr %i.aq, align 8
  %i.aw = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq ptr %i.av, null
  %or.cond126127.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond126127.i, label %.critedge.i, label %tlb_mmu_resize_locked.exit

.critedge.i:                                      ; preds = %bb.i, %bb.k
  %i.az = phi ptr [ %i.bl, %bb.k ], [ %i.aw, %bb.i ]
  %.1128.i = phi i64 [ %i.bf, %bb.k ], [ %.0114.i, %bb.i ] ; 2 uses
  %i.ba = icmp eq i64 %.1128.i, 64
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i
  %i.bb = tail call ptr @__errno_location() #31
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call ptr @strerror(i32 noundef %i.bc) #25
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tlb_mmu_resize_locked, ptr noundef %i.bd) #25
  tail call void @abort() #28
  unreachable

bb.k:                                             ; preds = %.critedge.i
  %i.be = lshr i64 %.1128.i, 1
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.be, i64 64) ; 4 uses
  %i.bg = shl i64 %i.bf, 5
  %i.bh = add i64 %i.bg, -32
  store i64 %i.bh, ptr %i.g, align 16
  tail call void @g_free(ptr noundef %i.az) #25
  %i.bi = load ptr, ptr %i.aq, align 8
  tail call void @g_free(ptr noundef %i.bi) #25
  %i.bj = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.bf, i64 noundef 32) #30
  store ptr %i.bj, ptr %i.ao, align 8
  %i.bk = tail call noalias ptr @g_try_malloc_n(i64 noundef %i.bf, i64 noundef 48) #30 ; 2 uses
  store ptr %i.bk, ptr %i.aq, align 8
  %i.bl = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = icmp eq ptr %i.bk, null
  %or.cond126.i = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond126.i, label %.critedge.i, label %tlb_mmu_resize_locked.exit, !llvm.loop !194

tlb_mmu_resize_locked.exit:                       ; preds = %bb.k, %.thread.i, %bb.h, %bb.i
  store i64 0, ptr %i.n, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %.val.i8 = load i64, ptr %i.g, align 16
  %i.br = add i64 %.val.i8, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bq, i8 noundef -1, i64 noundef %i.br, i1 noundef false) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bs, i8 noundef -1, i64 noundef 256, i1 noundef false) #25
  ret void
}

declare void @tcg_flush_jmp_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_try_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #17

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: norecurse nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc void @tlb_flush_vtlb_page_mask_locked(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #21 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr [696 x i8], ptr %0, i64 %i.a ; 25 uses
  %i.c = getelementptr i8, ptr %i.b, i64 832      ; 2 uses
  %i.d = and i64 %3, %2                           ; 24 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.f = shl i64 %i.e, 32
  %sext.i.i = ashr exact i64 %i.f, 32
  %i.g = or i64 %sext.i.i, 64
  %i.h = and i64 %i.g, %3                         ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 16 uses
  %i.j = load i64, ptr %i.c, align 8
  %i.k = and i64 %i.h, %i.j
  %i.l = icmp eq i64 %i.d, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 840
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = and i64 %i.n, %i.h
  %i.p = icmp eq i64 %i.d, %i.o
  br i1 %i.p, label %bb.c, label %tlb_hit_page_mask_anyprot.exit.i

tlb_hit_page_mask_anyprot.exit.i:                 ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.b, i64 848
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, %i.h
  %i.t = icmp eq i64 %i.d, %i.s
  br i1 %i.t, label %bb.c, label %tlb_flush_entry_mask_locked.exit

bb.c:                                             ; preds = %bb.a, %bb.b, %tlb_hit_page_mask_anyprot.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.u = load i64, ptr %i.i, align 8
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit

tlb_flush_entry_mask_locked.exit:                 ; preds = %tlb_hit_page_mask_anyprot.exit.i, %bb.c
  %i.w = getelementptr i8, ptr %i.b, i64 864      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.h, %i.x
  %i.z = icmp eq i64 %i.d, %i.y
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tlb_flush_entry_mask_locked.exit
  %i.aa = getelementptr i8, ptr %i.b, i64 872
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = and i64 %i.ab, %i.h
  %i.ad = icmp eq i64 %i.d, %i.ac
  br i1 %i.ad, label %bb.e, label %tlb_hit_page_mask_anyprot.exit.i.1

tlb_hit_page_mask_anyprot.exit.i.1:               ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.b, i64 880
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, %i.h
  %i.ah = icmp eq i64 %i.d, %i.ag
  br i1 %i.ah, label %bb.e, label %tlb_flush_entry_mask_locked.exit.1

bb.e:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.1, %bb.d, %tlb_flush_entry_mask_locked.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.ai = load i64, ptr %i.i, align 8
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit.1

tlb_flush_entry_mask_locked.exit.1:               ; preds = %bb.e, %tlb_hit_page_mask_anyprot.exit.i.1
  %i.ak = getelementptr i8, ptr %i.b, i64 896     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.h, %i.al
  %i.an = icmp eq i64 %i.d, %i.am
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %tlb_flush_entry_mask_locked.exit.1
  %i.ao = getelementptr i8, ptr %i.b, i64 904
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8
  %i.aq = and i64 %i.ap, %i.h
  %i.ar = icmp eq i64 %i.d, %i.aq
  br i1 %i.ar, label %bb.g, label %tlb_hit_page_mask_anyprot.exit.i.2

tlb_hit_page_mask_anyprot.exit.i.2:               ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.b, i64 912
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, %i.h
  %i.av = icmp eq i64 %i.d, %i.au
  br i1 %i.av, label %bb.g, label %tlb_flush_entry_mask_locked.exit.2

bb.g:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.2, %bb.f, %tlb_flush_entry_mask_locked.exit.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.aw = load i64, ptr %i.i, align 8
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit.2

tlb_flush_entry_mask_locked.exit.2:               ; preds = %bb.g, %tlb_hit_page_mask_anyprot.exit.i.2
  %i.ay = getelementptr i8, ptr %i.b, i64 928     ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.h, %i.az
  %i.bb = icmp eq i64 %i.d, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %tlb_flush_entry_mask_locked.exit.2
  %i.bc = getelementptr i8, ptr %i.b, i64 936
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = and i64 %i.bd, %i.h
  %i.bf = icmp eq i64 %i.d, %i.be
  br i1 %i.bf, label %bb.i, label %tlb_hit_page_mask_anyprot.exit.i.3

tlb_hit_page_mask_anyprot.exit.i.3:               ; preds = %bb.h
  %i.bg = getelementptr i8, ptr %i.b, i64 944
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, %i.h
  %i.bj = icmp eq i64 %i.d, %i.bi
  br i1 %i.bj, label %bb.i, label %tlb_flush_entry_mask_locked.exit.3

bb.i:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.3, %bb.h, %tlb_flush_entry_mask_locked.exit.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.bk = load i64, ptr %i.i, align 8
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit.3

tlb_flush_entry_mask_locked.exit.3:               ; preds = %bb.i, %tlb_hit_page_mask_anyprot.exit.i.3
  %i.bm = getelementptr i8, ptr %i.b, i64 960     ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.h, %i.bn
  %i.bp = icmp eq i64 %i.d, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %tlb_flush_entry_mask_locked.exit.3
  %i.bq = getelementptr i8, ptr %i.b, i64 968
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8
  %i.bs = and i64 %i.br, %i.h
  %i.bt = icmp eq i64 %i.d, %i.bs
  br i1 %i.bt, label %bb.k, label %tlb_hit_page_mask_anyprot.exit.i.4

tlb_hit_page_mask_anyprot.exit.i.4:               ; preds = %bb.j
  %i.bu = getelementptr i8, ptr %i.b, i64 976
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, %i.h
  %i.bx = icmp eq i64 %i.d, %i.bw
  br i1 %i.bx, label %bb.k, label %tlb_flush_entry_mask_locked.exit.4

bb.k:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.4, %bb.j, %tlb_flush_entry_mask_locked.exit.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.by = load i64, ptr %i.i, align 8
  %i.bz = add i64 %i.by, -1
  store i64 %i.bz, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit.4

tlb_flush_entry_mask_locked.exit.4:               ; preds = %bb.k, %tlb_hit_page_mask_anyprot.exit.i.4
  %i.ca = getelementptr i8, ptr %i.b, i64 992     ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.h, %i.cb
  %i.cd = icmp eq i64 %i.d, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %tlb_flush_entry_mask_locked.exit.4
  %i.ce = getelementptr i8, ptr %i.b, i64 1000
  %i.cf = load atomic i64, ptr %i.ce monotonic, align 8
  %i.cg = and i64 %i.cf, %i.h
  %i.ch = icmp eq i64 %i.d, %i.cg
  br i1 %i.ch, label %bb.m, label %tlb_hit_page_mask_anyprot.exit.i.5

tlb_hit_page_mask_anyprot.exit.i.5:               ; preds = %bb.l
  %i.ci = getelementptr i8, ptr %i.b, i64 1008
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = and i64 %i.cj, %i.h
  %i.cl = icmp eq i64 %i.d, %i.ck
  br i1 %i.cl, label %bb.m, label %tlb_flush_entry_mask_locked.exit.5

bb.m:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.5, %bb.l, %tlb_flush_entry_mask_locked.exit.4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 noundef -1, i64 noundef 32, i1 noundef false) #25
  %i.cm = load i64, ptr %i.i, align 8
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %i.i, align 8
  br label %tlb_flush_entry_mask_locked.exit.5

tlb_flush_entry_mask_locked.exit.5:               ; preds = %bb.m, %tlb_hit_page_mask_anyprot.exit.i.5
  %i.co = getelementptr i8, ptr %i.b, i64 1024    ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = and i64 %i.h, %i.cp
  %i.cr = icmp eq i64 %i.d, %i.cq
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %tlb_flush_entry_mask_locked.exit.5
  %i.cs = getelementptr i8, ptr %i.b, i64 1032
  %i.ct = load atomic i64, ptr %i.cs monotonic, align 8
  %i.cu = and i64 %i.ct, %i.h
  %i.cv = icmp eq i64 %i.d, %i.cu
  br i1 %i.cv, label %bb.o, label %tlb_hit_page_mask_anyprot.exit.i.6

tlb_hit_page_mask_anyprot.exit.i.6:               ; preds = %bb.n
  %i.cw = getelementptr i8, ptr %i.b, i64 1040
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, %i.h
  %i.cz = icmp eq i64 %i.d, %i.cy
  br i1 %i.cz, label %bb.o, label %tlb_flush_entry_mask_locked.exit.6

bb.o:                                             ; preds = %tlb_hit_page_mask_anyprot.exit.i.6, %bb.n, %tlb_flush_entry_mask_locked.exit.5
end_hunk_2
begin_hunk_3_@do_st_leN:bb.a
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %2, %i.n
  br label %store_parts_leN.exit

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %4, 3584                         ; 2 uses
  %i.q = lshr exact i32 %i.p, 9
  switch i32 %i.q, label %bb.s [
    i32 4, label %bb.f
    i32 1, label %bb.m
    i32 3, label %bb.m
    i32 0, label %bb.r
    i32 2, label %bb.r
    i32 5, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.ae, %bb.l ] ; 7 uses
  %.017.i = phi i32 [ %i.u, %bb.f ], [ %i.af, %bb.l ] ; 2 uses
  %.016.i = phi i64 [ %2, %bb.f ], [ %i.ac, %bb.l ] ; 4 uses
  %i.v = ptrtoint ptr %.018.i to i64
  %i.w = zext i32 %.017.i to i64
  %i.x = or i64 %i.w, %i.v
  %i.y = and i64 %i.x, 7
  switch i64 %i.y, label %bb.j [
    i64 4, label %bb.h
    i64 2, label %bb.i
    i64 6, label %bb.i
    i64 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = trunc i64 %.016.i to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %.018.i, i64 4) ]
  store atomic i32 %i.z, ptr %.018.i monotonic, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.aa = trunc i64 %.016.i to i16
  call void @llvm.assume(i1 true) [ "align"(ptr %.018.i, i64 2) ]
  store atomic i16 %i.aa, ptr %.018.i monotonic, align 2
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ab = trunc i64 %.016.i to i8
  store i8 %i.ab, ptr %.018.i, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 653, ptr noundef nonnull @__func__.store_parts_leN, ptr noundef null) #28
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink.i = phi i64 [ 8, %bb.j ], [ 16, %bb.i ], [ 32, %bb.h ]
  %.0.i = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ] ; 2 uses
  %i.ac = lshr i64 %.016.i, %.sink.i              ; 2 uses
  %i.ad = zext nneg i32 %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.ad
  %i.af = sub i32 %.017.i, %.0.i                  ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %store_parts_leN.exit, label %bb.g, !llvm.loop !77

bb.m:                                             ; preds = %bb.e, %bb.e
  %i.ag = and i32 %4, 7
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 1)
  %i.ai = shl nuw nsw i32 1, %i.ah                ; 3 uses
  %i.aj = icmp eq i32 %i.p, 512
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = load i32, ptr %i.ak, align 4            ; 3 uses
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq i32 %i.al, %i.ai
  br i1 %i.am, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.m
  %.not33 = icmp ult i32 %i.al, %i.ai
  br i1 %.not33, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = phi i32 [ %i.al, %bb.o ], [ %i.ai, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = shl i32 %i.an, 3                        ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = shl i64 %i.ar, 3
  %i.at = and i64 %i.as, 56                       ; 2 uses
  %i.au = sub i32 64, %i.aq
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr i64 -1, %i.av
  %i.ax = shl i64 %2, %i.at
  %i.ay = shl i64 %i.aw, %i.at
  %i.az = and i64 %i.ar, 7
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ba ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 8) ]
  %i.bc = load atomic i64, ptr %i.bb monotonic, align 8
  %i.bd = xor i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i.i = phi i64 [ %i.bc, %bb.p ], [ %i.bi, %bb.q ] ; 2 uses
  %i.be = and i64 %.0.i.i, %i.bd
  %i.bf = or i64 %i.be, %i.ax
  %i.bg = cmpxchg weak ptr %i.bb, i64 %.0.i.i, i64 %i.bf monotonic monotonic, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  br i1 %i.bh, label %store_whole_le8.exit, label %bb.q, !llvm.loop !4

store_whole_le8.exit:                             ; preds = %bb.q
  %i.bj = zext nneg i32 %i.aq to i64
  %i.bk = lshr i64 %2, %i.bj
  br label %store_parts_leN.exit

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.e, %bb.e, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i32, ptr %i.bn, align 4            ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %store_parts_leN.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %wide.trip.count.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bq = icmp ult i32 %i.bo, 4
  br i1 %i.bq, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ %2, %.lr.ph.preheader.i.new ], [ %i.cf, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.br = trunc i64 %.089.i to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = lshr i64 %.089.i, 8
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bu, ptr %i.bw, align 1
  %i.bx = lshr i64 %.089.i, 16
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1
  %i.cb = lshr i64 %.089.i, 24
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cc, ptr %i.ce, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.cf = lshr i64 %.089.i, 32                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %store_parts_leN.exit.loopexit46.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

bb.s:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2567, ptr noundef nonnull @__func__.do_st_leN, ptr noundef null) #28
  unreachable

store_parts_leN.exit.loopexit46.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %store_parts_leN.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %store_parts_leN.exit.loopexit46.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %store_parts_leN.exit.loopexit46.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.cf, %store_parts_leN.exit.loopexit46.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.089.i.epil = phi i64 [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ci, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.cg = trunc i64 %.089.i.epil to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.epil
  store i8 %i.cg, ptr %i.ch, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.ci = lshr i64 %.089.i.epil, 8                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %store_parts_leN.exit, label %.lr.ph.i.epil, !llvm.loop !197

store_parts_leN.exit:                             ; preds = %store_parts_leN.exit.loopexit46.unr-lcssa, %.lr.ph.i.epil, %bb.l, %bb.r, %store_whole_le8.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.o, %bb.d ], [ %i.ac, %bb.l ], [ %i.bk, %store_whole_le8.exit ], [ %2, %bb.r ], [ %i.cf, %store_parts_leN.exit.loopexit46.unr-lcssa ], [ %i.ci, %.lr.ph.i.epil ]
  ret i64 %.0
}

; Function Attrs: norecurse nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @store_whole_le16(ptr noundef %0, i32 noundef %1, i128 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = shl i32 %1, 3                            ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = shl i32 %i.c, 3
  %i.e = and i32 %i.d, 120
  %i.f = icmp slt i32 %i.a, 65                    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub i32 64, %i.a
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = zext i64 %i.i to i128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sub nsw i32 128, %i.a
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = shl nuw i128 %i.n, 64
  %i.p = or disjoint i128 %i.o, 18446744073709551615
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i128 [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  %i.q = zext nneg i32 %i.e to i128               ; 2 uses
  %i.r = shl i128 %2, %i.q
  %i.s = shl i128 %.0, %i.q
  %i.t = and i64 %i.b, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 16) ]
  %i.w = load i128, ptr %i.v, align 16
  %i.x = xor i128 %i.s, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.0.i = phi i128 [ %i.w, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.y = and i128 %.sroa.03.0.i, %i.x
  %i.z = or i128 %i.y, %i.r
  %i.aa = cmpxchg weak ptr %i.v, i128 %.sroa.03.0.i, i128 %i.z monotonic monotonic, align 16 ; 2 uses
  %i.ab = extractvalue { i128, i1 } %i.aa, 1
  %i.ac = extractvalue { i128, i1 } %i.aa, 0
  br i1 %i.ab, label %store_atom_insert_al16.exit, label %bb.e, !llvm.loop !5

store_atom_insert_al16.exit:                      ; preds = %bb.e
  %i.ad = lshr i128 %2, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = add nsw i32 %i.a, -64
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = ashr i64 %i.ae, %i.ag
  %.017 = select i1 %i.f, i64 0, i64 %i.ah
  ret i64 %.017
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_st_8(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %4, 16
  %.not18 = icmp eq i32 %i.d, 0
  %i.e = tail call i64 @llvm.bswap.i64(i64 %2)
  %spec.select = select i1 %.not18, i64 %2, i64 %i.e
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call fastcc i64 @do_st_mmio_leN(ptr noundef %0, ptr noundef %i.f, i64 noundef %spec.select, i64 noundef %i.h, i32 noundef 8, i32 noundef %3, i64 noundef %5) ; 0 uses
  br label %store_atom_8.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.b, 8
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.d, label %store_atom_8.exit, !prof !95

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %4, 16
  %.not17 = icmp eq i32 %i.k, 0
  %i.l = tail call i64 @llvm.bswap.i64(i64 %2)
  %spec.select19 = select i1 %.not17, i64 %2, i64 %i.l ; 19 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 23 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 7 uses
  %i.p = and i64 %i.o, 7                          ; 12 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f, !prof !95

bb.e:                                             ; preds = %bb.d
  store atomic i64 %spec.select19, ptr %i.n monotonic, align 8
  br label %store_atom_8.exit

bb.f:                                             ; preds = %bb.d
  %i.r = tail call fastcc i32 @required_atomicity(ptr noundef %0, i64 noundef %i.o, i32 noundef %4)
  switch i32 %i.r, label %bb.q [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 -2, label %bb.j
    i32 3, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  store i64 %spec.select19, ptr %i.n, align 1
  br label %store_atom_8.exit

bb.h:                                             ; preds = %bb.f
  %i.s = trunc i64 %spec.select19 to i16
  store atomic i16 %i.s, ptr %i.n monotonic, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.u = lshr i64 %spec.select19, 16
  %i.v = trunc i64 %i.u to i16
  store atomic i16 %i.v, ptr %i.t monotonic, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.x = lshr i64 %spec.select19, 32
  %i.y = trunc i64 %i.x to i16
  store atomic i16 %i.y, ptr %i.w monotonic, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %sum.shift.i.i = lshr i64 %spec.select19, 48
  %i.aa = trunc nuw i64 %sum.shift.i.i to i16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 2) ]
  store atomic i16 %i.aa, ptr %i.z monotonic, align 2
  br label %store_atom_8.exit

bb.i:                                             ; preds = %bb.f
  %i.ab = trunc i64 %spec.select19 to i32
  store atomic i32 %i.ab, ptr %i.n monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ad = lshr i64 %spec.select19, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  call void @llvm.assume(i1 true) [ "align"(ptr %i.n, i64 4) ]
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %store_atom_8.exit

bb.j:                                             ; preds = %bb.f
  %i.af = trunc nuw nsw i64 %i.p to i32           ; 2 uses
  %i.ag = sub nuw nsw i32 8, %i.af                ; 3 uses
  switch i32 %i.af, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 5, label %.lr.ph.i35.i
    i32 6, label %.lr.ph.i35.i
    i32 7, label %.lr.ph.i35.i
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.ah = shl nuw nsw i32 %i.ag, 3                ; 2 uses
  %i.ai = shl i64 %i.o, 3
  %i.aj = and i64 %i.ai, 56                       ; 2 uses
  %i.ak = sub nuw nsw i32 64, %i.ah
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr i64 -1, %i.al
  %i.an = shl i64 %spec.select19, %i.aj
  %i.ao = shl i64 %i.am, %i.aj
  %i.ap = sub nsw i64 0, %i.p
  %i.aq = getelementptr inbounds i8, ptr %i.n, i64 %i.ap ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 8) ]
  %i.ar = load atomic i64, ptr %i.aq monotonic, align 8
  %i.as = xor i64 %i.ao, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.ar, %bb.k ], [ %i.ax, %bb.l ] ; 2 uses
  %i.at = and i64 %.0.i.i.i, %i.as
  %i.au = or i64 %i.at, %i.an
  %i.av = cmpxchg weak ptr %i.aq, i64 %.0.i.i.i, i64 %i.au monotonic monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i, label %bb.l, !llvm.loop !4

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ay = zext nneg i32 %i.ah to i64
  %i.az = lshr i64 %spec.select19, %i.ay          ; 2 uses
  %i.ba = zext nneg i32 %i.ag to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba ; 5 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.bc = icmp samesign ult i64 %i.p, 4
  br i1 %i.bc, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.o, 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.089.i.i = phi i64 [ %i.az, %.lr.ph.preheader.i.i.new ], [ %i.br, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bd = trunc i64 %.089.i.i to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = lshr i64 %.089.i.i, 8
  %i.bg = trunc i64 %i.bf to i8
end_hunk_3
begin_hunk_4_@do_st16_leN:bb.a
  %i.bi = zext i64 %i.bh to i128
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bj = sub nsw i32 128, %i.az
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk
  %i.bm = zext i64 %i.bl to i128
  %i.bn = shl nuw i128 %i.bm, 64
  %i.bo = or disjoint i128 %i.bn, 18446744073709551615
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i35 = phi i128 [ %i.bi, %bb.t ], [ %i.bo, %bb.u ]
  %i.bp = zext nneg i32 %i.bd to i128             ; 2 uses
  %i.bq = shl i128 %2, %i.bp
  %i.br = shl i128 %.0.i35, %i.bp
  %i.bs = and i64 %i.ba, 15
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.ay, i64 %i.bt ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bu, i64 16) ]
  %i.bv = load i128, ptr %i.bu, align 16
  %i.bw = xor i128 %i.br, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.sroa.03.0.i.i = phi i128 [ %i.bv, %bb.v ], [ %i.cb, %bb.w ] ; 2 uses
  %i.bx = and i128 %.sroa.03.0.i.i, %i.bw
  %i.by = or i128 %i.bx, %i.bq
  %i.bz = cmpxchg weak ptr %i.bu, i128 %.sroa.03.0.i.i, i128 %i.by monotonic monotonic, align 16 ; 2 uses
  %i.ca = extractvalue { i128, i1 } %i.bz, 1
  %i.cb = extractvalue { i128, i1 } %i.bz, 0
  br i1 %i.ca, label %store_whole_le16.exit, label %bb.w, !llvm.loop !5

store_whole_le16.exit:                            ; preds = %bb.w
  %i.cc = lshr i128 %2, 64
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = add nsw i32 %i.az, -64
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = ashr i64 %i.cd, %i.cf
  %.017.i36 = select i1 %i.be, i64 0, i64 %i.cg
  br label %store_parts_leN.exit34

bb.x:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = trunc i128 %2 to i64
  store i64 %i.cj, ptr %i.ci, align 1
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 5 uses
  %i.cm = load i32, ptr %i.a, align 4
  %i.cn = add i32 %i.cm, -8                       ; 3 uses
  %i.co = lshr i128 %2, 64
  %i.cp = trunc nuw i128 %i.co to i64             ; 3 uses
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph.preheader.i, label %store_parts_leN.exit34

.lr.ph.preheader.i:                               ; preds = %bb.x
  %wide.trip.count.i = zext nneg i32 %i.cn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cr = icmp ult i32 %i.cn, 4
  br i1 %i.cr, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.089.i = phi i64 [ %i.cp, %.lr.ph.preheader.i.new ], [ %i.dg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cs = trunc i64 %.089.i to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = lshr i64 %.089.i, 8
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.cv, ptr %i.cx, align 1
  %i.cy = lshr i64 %.089.i, 16
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cz, ptr %i.db, align 1
  %i.dc = lshr i64 %.089.i, 24
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.dd, ptr %i.df, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.dg = lshr i64 %.089.i, 32                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %store_parts_leN.exit34.loopexit49.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

bb.y:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 2619, ptr noundef nonnull @__func__.do_st16_leN, ptr noundef null) #28
  unreachable

store_parts_leN.exit34.loopexit49.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %store_parts_leN.exit34, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %store_parts_leN.exit34.loopexit49.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %store_parts_leN.exit34.loopexit49.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ %i.cp, %.lr.ph.preheader.i ], [ %i.dg, %store_parts_leN.exit34.loopexit49.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.089.i.epil = phi i64 [ %.089.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.dj, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dh = trunc i64 %.089.i.epil to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i.epil
  store i8 %i.dh, ptr %i.di, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.dj = lshr i64 %.089.i.epil, 8                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %store_parts_leN.exit34, label %.lr.ph.i.epil, !llvm.loop !199

store_parts_leN.exit34:                           ; preds = %store_parts_leN.exit34.loopexit49.unr-lcssa, %.lr.ph.i.epil, %bb.r, %bb.x, %store_whole_le16.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ %i.at, %bb.r ], [ %.017.i36, %store_whole_le16.exit ], [ %i.cp, %bb.x ], [ %i.dg, %store_parts_leN.exit34.loopexit49.unr-lcssa ], [ %i.dj, %.lr.ph.i.epil ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_store_atom16_fallback(i32 noundef %0, i64 noundef %1) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_STORE_ATOM16_FALLBACK_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef %0, i64 noundef %1) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @qemu_plugin_vcpu_mem_cb(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress norecurse nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nounwind sspstrong uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { norecurse nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { norecurse nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #24 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind memory(read) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !{!0, !86}
!1 = distinct !{!1, !86}
!2 = distinct !{!2, !86}
!3 = distinct !{!3, !86}
!4 = distinct !{!4, !86}
!5 = distinct !{!5, !86}
!6 = distinct !{!6, !86}
!7 = distinct !{!7, !86}
!8 = distinct !{!8, !86}
!9 = distinct !{!9, !86}
!10 = distinct !{!10, !86}
!11 = distinct !{!11, !86}
!12 = distinct !{!12, !86}
!13 = distinct !{!13, !86}
!14 = distinct !{!14, !86}
!15 = distinct !{!15, !86}
!16 = distinct !{!16, !86}
!17 = distinct !{!17, !86}
!18 = distinct !{!18, !86}
!19 = distinct !{!19, !86}
!20 = distinct !{!20, !86}
!21 = distinct !{!21, !86}
!22 = distinct !{!22, !86}
!23 = distinct !{!23, !86}
!24 = distinct !{!24, !86}
!25 = distinct !{!25, !86}
!26 = distinct !{!26, !86}
!27 = distinct !{!27, !86}
!28 = distinct !{!28, !86}
!29 = distinct !{!29, !86}
!30 = distinct !{!30, !86}
!31 = distinct !{!31, !86}
!32 = distinct !{!32, !86}
!33 = distinct !{!33, !86}
!34 = distinct !{!34, !86}
!35 = distinct !{!35, !86}
!36 = distinct !{!36, !86}
!37 = distinct !{!37, !86}
!38 = distinct !{!38, !86}
!39 = distinct !{!39, !86}
!40 = distinct !{!40, !86}
!41 = distinct !{!41, !86}
!42 = distinct !{!42, !86}
!43 = distinct !{!43, !86}
!44 = distinct !{!44, !86}
!45 = distinct !{!45, !86}
!46 = distinct !{!46, !86}
!47 = distinct !{!47, !86}
!48 = distinct !{!48, !86}
!49 = distinct !{!49, !86}
!50 = distinct !{!50, !86}
!51 = distinct !{!51, !86}
!52 = distinct !{!52, !86}
!53 = distinct !{!53, !86}
!54 = distinct !{!54, !86}
!55 = distinct !{!55, !86}
!56 = distinct !{!56, !86}
!57 = distinct !{!57, !86}
!58 = distinct !{!58, !86}
!59 = distinct !{!59, !86}
!60 = distinct !{!60, !86}
!61 = distinct !{!61, !86}
!62 = distinct !{!62, !86}
!63 = distinct !{!63, !86}
!64 = distinct !{!64, !86}
!65 = distinct !{!65, !86}
!66 = distinct !{!66, !86}
!67 = distinct !{!67, !86}
!68 = distinct !{!68, !86}
!69 = distinct !{!69, !86}
!70 = distinct !{!70, !86}
!71 = distinct !{!71, !86}
!72 = distinct !{null}
!73 = distinct !{!73, !86}
!74 = distinct !{!74, !86}
!75 = distinct !{!75, !86}
!76 = distinct !{!76, !86}
!77 = distinct !{!77, !86}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!84 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!85 = !{!"auto-init"}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"branch_weights", i32 1999, i32 1}
!88 = !{!"branch_weights", i32 1, i32 0}
!89 = !{i64 2150423470}
!90 = !{i64 2156065222}
!91 = !{i64 2156069473}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{i64 2156174819}
!97 = !{i64 8676281}
!98 = !{i64 8676357}
!99 = !{i64 4255268}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{i64 2156542977}
!102 = !{i64 2156694480}
!103 = !{i64 2156846099}
!104 = !{i64 2156358301}
!105 = !{i64 2156497371}
!106 = !{i64 2156434345}
!107 = !{i64 2156648602}
!108 = !{i64 2156589283}
!109 = !{i64 2156800221}
!110 = !{i64 2156740804}
!111 = !{i64 2156363866}
!112 = !{i64 2156503074}
!113 = !{i64 2156444020}
!114 = !{i64 2156654339}
!115 = !{i64 2156594917}
!116 = !{i64 2156805958}
!117 = !{i64 2156746452}
!118 = !{i64 2156369429}
!119 = !{i64 2156508775}
!120 = !{i64 2156449632}
!121 = !{i64 2156660074}
!122 = !{i64 2156600549}
!123 = !{i64 2156811693}
!124 = !{i64 2156752098}
!125 = !{i64 2156374994}
!126 = !{i64 2156514478}
!127 = !{i64 2156455246}
!128 = !{i64 2156665811}
!129 = !{i64 2156606183}
!130 = !{i64 2156817430}
!131 = !{i64 2156757746}
!132 = !{i64 2156548240}
!133 = !{i64 2156699763}
!134 = !{i64 2156851382}
!135 = !{i64 2156380557}
!136 = !{i64 2156520179}
!137 = !{i64 2156460858}
!138 = !{i64 2156671546}
!139 = !{i64 2156611815}
!140 = !{i64 2156823165}
!141 = !{i64 2156763392}
!142 = !{i64 2156386122}
!143 = !{i64 2156525882}
!144 = !{i64 2156466472}
!145 = !{i64 2156677283}
!146 = !{i64 2156617449}
!147 = !{i64 2156828902}
!148 = !{i64 2156769040}
!149 = !{i64 2156391685}
!150 = !{i64 2156531583}
!151 = !{i64 2156472084}
!152 = !{i64 2156683018}
!153 = !{i64 2156623081}
!154 = !{i64 2156834637}
!155 = !{i64 2156774686}
!156 = !{i64 2156397250}
!157 = !{i64 2156537286}
!158 = !{i64 2156477698}
!159 = !{i64 2156688755}
!160 = !{i64 2156628715}
!161 = !{i64 2156840374}
!162 = !{i64 2156780334}
!163 = distinct !{!163, !86}
!164 = distinct !{!164, !86}
!165 = distinct !{!165, !86}
!166 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!167 = distinct !{!167, !86}
!168 = !{i64 2156092402}
!169 = !{i64 2156096761}
!170 = distinct !{!170, !86}
!171 = distinct !{!171, !86}
!172 = distinct !{!172, !86, !173}
!173 = !{!"llvm.loop.unswitch.partial.disable"}
!174 = distinct !{!174, !86}
!175 = !{i64 2156110992}
!176 = !{i64 2156115351}
!177 = distinct !{!177, !86}
!178 = distinct !{!178, !86}
!179 = distinct !{!179, !86}
!180 = distinct !{null}
!181 = !{!"branch_weights", i32 2002, i32 2000}
!182 = distinct !{!182, !86}
!183 = distinct !{!183, !86}
!184 = distinct !{null}
!185 = !{i64 2156175378}
!186 = !{i64 2156175908}
!187 = !{i64 2156176464}
end_hunk_4

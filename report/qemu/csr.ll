Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/csr?download=true
inline.NumInlined: 447
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_mcountinhibit:.peel.begin
  br i1 %.not.peel, label %.peel.next, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.n = tail call zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr noundef nonnull %0, i32 noundef 0) #16
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr noundef nonnull %0, i32 noundef 0) #16
  br i1 %i.o, label %bb.c, label %.peel.next

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.d, align 8
  %i.q = and i32 %i.p, 1
  %.not37.peel = icmp eq i32 %i.q, 0
  %i.r = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  br i1 %.not37.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.l, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11896
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, %i.r
  %i.w = sub i64 %i.v, %i.u
  store i64 %i.w, ptr %i.l, align 16
  br label %.peel.next

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11896
  store i64 %i.r, ptr %i.x, align 8
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %bb.b, %bb.d, %bb.e
  %i.y = and i64 %i.i, 2
  %.not.peel41 = icmp eq i64 %i.y, 0
  br i1 %.not.peel41, label %.peel.next40, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.z = tail call zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr noundef nonnull %0, i32 noundef 1) #16
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr noundef nonnull %0, i32 noundef 1) #16
  br i1 %i.aa, label %bb.h, label %.peel.next40

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = load i32, ptr %i.d, align 8
  %i.ac = and i32 %i.ab, 2
  %.not37.peel42 = icmp eq i32 %i.ac, 0
  br i1 %.not37.peel42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 11912 ; 2 uses
  %i.ae = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef 1)
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 11920
  %i.ah = load i64, ptr %i.ag, align 16
  %i.ai = add i64 %i.af, %i.ae
  %i.aj = sub i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ad, align 8
  br label %.peel.next40

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef 1)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11920
  store i64 %i.ak, ptr %i.al, align 16
  br label %.peel.next40

.peel.next40:                                     ; preds = %.peel.next, %bb.g, %bb.i, %bb.j
  %i.am = and i64 %i.g, 4
  %.not.peel46 = icmp eq i64 %i.am, 0
  br i1 %.not.peel46, label %.peel.next45.preheader, label %bb.k

bb.k:                                             ; preds = %.peel.next40
  %i.an = tail call zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr noundef nonnull %0, i32 noundef 2) #16
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr noundef nonnull %0, i32 noundef 2) #16
  br i1 %i.ao, label %bb.m, label %.peel.next45.preheader

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = load i32, ptr %i.d, align 8
  %i.aq = and i32 %i.ap, 4
  %.not37.peel47 = icmp eq i32 %i.aq, 0
  br i1 %.not37.peel47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 2 uses
  %i.as = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef 2)
  %i.at = load i64, ptr %i.ar, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 11944
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = add i64 %i.at, %i.as
  %i.ax = sub i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.ar, align 16
  br label %.peel.next45.preheader

bb.o:                                             ; preds = %bb.m
  %i.ay = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef 2)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 11944
  store i64 %i.ay, ptr %i.az, align 8
  br label %.peel.next45.preheader

.peel.next45.preheader:                           ; preds = %.peel.next40, %bb.l, %bb.n, %bb.o
  br label %.peel.next45

.peel.next45:                                     ; preds = %.peel.next45.preheader, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 3, %.peel.next45.preheader ] ; 4 uses
  %i.ba = shl nuw nsw i64 1, %indvars.iv          ; 2 uses
  %i.bb = and i64 %i.i, %i.ba
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.peel.next45
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.bd = tail call zeroext i1 @riscv_pmu_ctr_monitor_cycles(ptr noundef %0, i32 noundef %i.bc) #16
  br i1 %i.bd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = tail call zeroext i1 @riscv_pmu_ctr_monitor_instructions(ptr noundef %0, i32 noundef %i.bc) #16
  br i1 %i.be, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 5 uses
  %i.bg = load i32, ptr %i.d, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = and i64 %i.ba, %i.bh
  %.not37 = icmp eq i64 %i.bi, 0
  %i.bj = tail call fastcc i64 @riscv_pmu_ctr_get_fixed_counters_val(ptr noundef nonnull %0, i32 noundef %i.bc) ; 2 uses
  br i1 %.not37, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = tail call i32 @riscv_pmu_setup_timer(ptr noundef nonnull %0, i64 noundef %i.bl, i32 noundef %i.bc) #16 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.bf, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bn, %i.bj
  %i.br = sub i64 %i.bq, %i.bp
  store i64 %i.br, ptr %i.bf, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.peel.next45, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.loopexit, label %.peel.next45, !llvm.loop !32

.loopexit:                                        ; preds = %bb.u
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @smcntrpmf(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15693
  %i.b = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i32 -1, i32 2
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mcyclecfg(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = icmp eq i32 %.val, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11872
  %i.d = load i64, ptr %i.c, align 16
  %i.e = select i1 %i.b, i64 4294967295, i64 -1
  %i.f = and i64 %i.e, %i.d
  store i64 %i.f, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_mcyclecfg(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = icmp eq i32 %.val, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11872 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, -4294967296
  %i.f = and i64 %2, 4294967295
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.c, align 16
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 4964
  %.val26 = load i32, ptr %i.h, align 4           ; 3 uses
  %4 = lshr i32 %.val26, 20
  %i.i = and i32 %4, 1
  %5 = zext nneg i32 %i.i to i64                  ; 2 uses
  %6 = shl nuw nsw i64 %5, 60
  %7 = lshr i32 %.val26, 18
  %i.j = and i32 %7, 1
  %8 = zext nneg i32 %i.j to i64                  ; 2 uses
  %9 = shl nuw nsw i64 %8, 61
  %i.k = or disjoint i64 %6, %9
  %i.l = and i32 %.val26, 128
  %.not17 = icmp eq i32 %i.l, 0
  %10 = shl nuw nsw i64 %5, 58
  %11 = shl nuw nsw i64 %8, 59
  %i.m = or disjoint i64 %10, %11
  %i.n = select i1 %.not17, i64 0, i64 %i.m
  %12 = or disjoint i64 %i.n, %i.k
  %i.o = or disjoint i64 %12, -4323455642275676161
  %i.p = and i64 %i.o, %2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11872
  store i64 %i.p, ptr %i.q, align 16
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_minstretcfg(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = icmp eq i32 %.val, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11880
  %i.d = load i64, ptr %i.c, align 8
  %i.e = select i1 %i.b, i64 4294967295, i64 -1
  %i.f = and i64 %i.e, %i.d
  store i64 %i.f, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_minstretcfg(ptr nofree noundef captures(none) initializes((11880, 11888)) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = icmp eq i32 %.val, 1
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4964
  %.val25 = load i32, ptr %i.c, align 4           ; 3 uses
  %4 = lshr i32 %.val25, 20
  %i.d = and i32 %4, 1
  %5 = zext nneg i32 %i.d to i64                  ; 2 uses
  %6 = shl nuw nsw i64 %5, 60
  %7 = lshr i32 %.val25, 18
  %i.e = and i32 %7, 1
  %8 = zext nneg i32 %i.e to i64                  ; 2 uses
  %9 = shl nuw nsw i64 %8, 61
  %i.f = or disjoint i64 %6, %9
  %i.g = and i32 %.val25, 128
  %.not16 = icmp eq i32 %i.g, 0
  %10 = shl nuw nsw i64 %5, 58
  %11 = shl nuw nsw i64 %8, 59
  %i.h = or disjoint i64 %10, %11
  %i.i = select i1 %.not16, i64 0, i64 %i.h
  %12 = or disjoint i64 %i.i, %i.f
  %i.j = or disjoint i64 %12, -4323455642275676161
  %i.k = and i64 %i.j, %2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.sink = phi i64 [ %i.k, %.thread ], [ %2, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11880
  store i64 %.sink, ptr %i.l, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mhpmevent(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = add i32 %1, -800
  %i.b = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.b, align 16
  %i.c = icmp eq i32 %.val, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.e = sext i32 %i.a to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = select i1 %i.c, i64 4294967295, i64 -1
  %i.i = and i64 %i.h, %i.g
  store i64 %i.i, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_mhpmevent(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = add i32 %1, -800                         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.b, align 16
  %i.c = icmp eq i32 %.val, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.e = sext i32 %i.a to i64                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, -4294967296
  %i.i = and i64 %2, 4294967295
  %i.j = or disjoint i64 %i.h, %i.i
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 4964
  %.val32 = load i32, ptr %i.k, align 4           ; 3 uses
  %4 = lshr i32 %.val32, 20
  %i.l = and i32 %4, 1
  %5 = zext nneg i32 %i.l to i64                  ; 2 uses
  %6 = shl nuw nsw i64 %5, 60
  %7 = lshr i32 %.val32, 18
  %i.m = and i32 %7, 1
  %8 = zext nneg i32 %i.m to i64                  ; 2 uses
  %9 = shl nuw nsw i64 %8, 61
  %i.n = or disjoint i64 %6, %9
  %i.o = and i32 %.val32, 128
  %.not23 = icmp eq i32 %i.o, 0
  %10 = shl nuw nsw i64 %5, 58
  %11 = shl nuw nsw i64 %8, 59
  %i.p = or disjoint i64 %10, %11
  %i.q = select i1 %.not23, i64 0, i64 %i.p
  %12 = or disjoint i64 %i.q, %i.n
  %i.r = or disjoint i64 %12, -4323455642275676161
  %i.s = and i64 %i.r, %2
  %.pre = sext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.thread ], [ %i.e, %bb.b ]
  %.0 = phi i64 [ %i.s, %.thread ], [ %i.j, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi
  store i64 %.0, ptr %i.u, align 8
  %i.v = tail call i32 @riscv_pmu_update_event_map(ptr noundef nonnull %0, i64 noundef %.0, i32 noundef %i.a) #16 ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mscratch(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13112
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mscratch(ptr nofree noundef writeonly captures(none) initializes((13112, 13120)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13112
  store i64 %2, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mscratch_i128(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11696
  %i.d = load i64, ptr %i.c, align 16
  %i.e = zext i64 %i.d to i128
  %i.f = shl nuw i128 %i.e, 64
  %i.g = zext i64 %i.b to i128
  %i.h = or disjoint i128 %i.f, %i.g
  store i128 %i.h, ptr %2, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mscratch_i128(ptr nofree noundef writeonly captures(none) initializes((11696, 11704), (13112, 13120)) %0, i32 %1, i128 noundef %2) #8 {
bb.a:
  %i.a = trunc i128 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13112
  store i64 %i.a, ptr %i.b, align 8
  %i.c = lshr i128 %2, 64
  %i.d = trunc nuw i128 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11696
  store i64 %i.d, ptr %i.e, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mepc(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.b = load i64, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %0, i64 4964
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val.i, 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %get_xepc_mask.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 15655
  %i.f = load i8, ptr %i.e, align 1, !range !12, !noundef !13
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %get_xepc_mask.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15656
  %i.i = load i8, ptr %i.h, align 8, !range !12, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %get_xepc_mask.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 15657
  %i.l = load i8, ptr %i.k, align 1, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %get_xepc_mask.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15658
  %i.o = load i8, ptr %i.n, align 2, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %get_xepc_mask.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 15659
  %i.r = load i8, ptr %i.q, align 1, !range !12, !noundef !13
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %get_xepc_mask.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15660
  %i.u = load i8, ptr %i.t, align 4, !range !12, !noundef !13
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %get_xepc_mask.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15661
  %i.x = load i8, ptr %i.w, align 1, !range !12, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i = select i1 %i.y, i64 -2, i64 -4
  br label %get_xepc_mask.exit

get_xepc_mask.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ -2, %bb.a ], [ %spec.select.i, %bb.h ], [ -2, %bb.g ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ]
  %i.z = and i64 %.0.i, %i.b
  store i64 %i.z, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_mepc(ptr nofree noundef captures(none) initializes((5184, 5192)) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val.i = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val.i, 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %get_xepc_mask.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 15655
  %i.d = load i8, ptr %i.c, align 1, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %get_xepc_mask.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 15656
  %i.g = load i8, ptr %i.f, align 8, !range !12, !noundef !13
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %get_xepc_mask.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 15657
  %i.j = load i8, ptr %i.i, align 1, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %get_xepc_mask.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 15658
  %i.m = load i8, ptr %i.l, align 2, !range !12, !noundef !13
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %get_xepc_mask.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 15659
  %i.p = load i8, ptr %i.o, align 1, !range !12, !noundef !13
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %get_xepc_mask.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 15660
  %i.s = load i8, ptr %i.r, align 4, !range !12, !noundef !13
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %get_xepc_mask.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 15661
  %i.v = load i8, ptr %i.u, align 1, !range !12, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select.i = select i1 %i.w, i64 -2, i64 -4
  br label %get_xepc_mask.exit

get_xepc_mask.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ -2, %bb.a ], [ %spec.select.i, %bb.h ], [ -2, %bb.g ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ], [ -2, %bb.b ]
  %i.x = and i64 %.0.i, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store i64 %i.x, ptr %i.y, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mcause(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5192
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mcause(ptr nofree noundef writeonly captures(none) initializes((5192, 5200)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store i64 %2, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mtval(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
end_hunk_0
begin_hunk_1_@write_hviprio2h:bb.a
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 22, i32 2
  br label %write_hvipriox.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = add i32 %i.q, 12
  %i.s = call i32 @riscv_cpu_hviprio_index2irq(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not14.i = icmp eq i32 %i.s, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.c

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.t = load i32, ptr %i.b, align 4
  %.not15.i = icmp eq i32 %i.t, 0
  %i.u = shl i64 %indvars.iv.i, 3
  %i.v = and i64 %i.u, 4294967288
  %i.w = lshr i64 %2, %i.v
  %i.x = trunc i64 %i.w to i8
  %.sink.i = select i1 %.not15.i, i8 %i.x, i8 0
  %i.y = load i32, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 %i.z
  store i8 %.sink.i, ptr %i.aa, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %write_hvipriox.exit, label %.lr.ph.i, !llvm.loop !4

write_hvipriox.exit:                              ; preds = %bb.c, %.preheader.i, %bb.b
  %.013.i = phi i32 [ %i.p, %bb.b ], [ -1, %.preheader.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.013.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @hgatp(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5017
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.e = load i8, ptr %i.d, align 16, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1048576
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 4964
  %.val.i = load i32, ptr %i.j, align 4
  %i.k = and i32 %.val.i, 128
  %.not.i = icmp eq i32 %i.k, 0
  %..i = select i1 %.not.i, i32 2, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %..i, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_hgatp(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11576
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_hgatp(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11576 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 4960
  %.val.i = load i32, ptr %i.c, align 16
  %i.d = icmp eq i32 %.val.i, 1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 31
  %i.f = and i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 15836
  %.val20.i = load i8, ptr %i.g, align 4          ; 2 uses
  %i.h = icmp sgt i8 %.val20.i, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.437, ptr noundef nonnull @.str, i32 noundef 1955, ptr noundef nonnull @__PRETTY_FUNCTION__.validate_vm) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i8 %.val20.i to i64
  %.not.i.i = icmp samesign ugt i64 %i.f, %i.i
  br i1 %.not.i.i, label %validate_vm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr @valid_vm_1_10_32, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br label %validate_vm.exit.i

validate_vm.exit.i:                               ; preds = %bb.e, %bb.d
  %i.m = phi i1 [ false, %bb.d ], [ %i.l, %bb.e ]
  %i.n = xor i64 %i.b, %2
  %i.o = and i64 %i.n, 4294967295
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.p = lshr i64 %2, 60                          ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 15836
  %.val18.i = load i8, ptr %i.q, align 4          ; 2 uses
  %i.r = icmp sgt i8 %.val18.i, -1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.437, ptr noundef nonnull @.str, i32 noundef 1955, ptr noundef nonnull @__PRETTY_FUNCTION__.validate_vm) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %.val18.i to i64
  %.not.i21.i = icmp samesign ugt i64 %i.p, %i.s
  br i1 %.not.i21.i, label %validate_vm.exit22.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr @valid_vm_1_10_64, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !range !12, !noundef !13
  %i.v = trunc nuw i8 %i.u to i1
  br label %validate_vm.exit22.i

validate_vm.exit22.i:                             ; preds = %bb.i, %bb.h
  %i.w = phi i1 [ false, %bb.h ], [ %i.v, %bb.i ]
  %i.x = xor i64 %i.b, %2
  br label %bb.j

bb.j:                                             ; preds = %validate_vm.exit22.i, %validate_vm.exit.i
  %.015.i = phi i64 [ %i.o, %validate_vm.exit.i ], [ %i.x, %validate_vm.exit22.i ]
  %.0.in.i = phi i1 [ %i.m, %validate_vm.exit.i ], [ %i.w, %validate_vm.exit22.i ]
  %i.y = icmp ne i64 %.015.i, 0
  %or.cond.i = and i1 %.0.in.i, %i.y
  br i1 %or.cond.i, label %bb.k, label %legalize_xatp.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.z) #16
  br label %legalize_xatp.exit

legalize_xatp.exit:                               ; preds = %bb.j, %bb.k
  %.016.i = phi i64 [ %2, %bb.k ], [ %i.b, %bb.j ]
  store i64 %.016.i, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @smcntrpmf_32(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %.val, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15693
  %i.c = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 -1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %..i, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mcyclecfgh(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11872
  %i.b = load i64, ptr %i.a, align 16
  %i.c = lshr i64 %i.b, 32
  store i64 %i.c, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_mcyclecfgh(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
.thread:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val22 = load i32, ptr %i.a, align 4           ; 3 uses
  %4 = lshr i32 %.val22, 20
  %i.b = and i32 %4, 1                            ; 2 uses
  %5 = shl nuw nsw i32 %i.b, 28
  %6 = lshr i32 %.val22, 18
  %i.c = and i32 %6, 1                            ; 2 uses
  %7 = shl nuw nsw i32 %i.c, 29
  %8 = or disjoint i32 %5, %7
  %9 = and i32 %.val22, 128
  %.not = icmp eq i32 %9, 0
  %10 = shl nuw nsw i32 %i.b, 26
  %11 = shl nuw nsw i32 %i.c, 27
  %12 = or disjoint i32 %10, %11
  %narrow = select i1 %.not, i32 0, i32 %12
  %13 = or disjoint i32 %narrow, %8
  %14 = or disjoint i32 %13, -1006632961
  %15 = zext i32 %14 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11872 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16
  %i.f = and i64 %2, %15
  %i.g = and i64 %i.e, 4294967295
  %i.h = shl nuw i64 %i.f, 32
  %i.i = or disjoint i64 %i.h, %i.g
  store i64 %i.i, ptr %i.d, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_minstretcfgh(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11880
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 32
  store i64 %i.c, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @write_minstretcfgh(ptr nofree noundef captures(none) %0, i32 %1, i64 noundef %2, i64 %3) #7 {
.thread:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val22 = load i32, ptr %i.a, align 4           ; 3 uses
  %4 = lshr i32 %.val22, 20
  %i.b = and i32 %4, 1                            ; 2 uses
  %5 = shl nuw nsw i32 %i.b, 28
  %6 = lshr i32 %.val22, 18
  %i.c = and i32 %6, 1                            ; 2 uses
  %7 = shl nuw nsw i32 %i.c, 29
  %8 = or disjoint i32 %5, %7
  %9 = and i32 %.val22, 128
  %.not = icmp eq i32 %9, 0
  %10 = shl nuw nsw i32 %i.b, 26
  %11 = shl nuw nsw i32 %i.c, 27
  %12 = or disjoint i32 %10, %11
  %narrow = select i1 %.not, i32 0, i32 %12
  %13 = or disjoint i32 %narrow, %8
  %14 = or disjoint i32 %13, -1006632961
  %15 = zext i32 %14 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11880 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %2, %15
  %i.g = and i64 %i.e, 4294967295
  %i.h = shl nuw i64 %i.f, 32
  %i.i = or disjoint i64 %i.h, %i.g
  store i64 %i.i, ptr %i.d, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @sscofpmf_32(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %.val, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15752
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 -1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %..i, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mhpmeventh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = add i32 %1, -1824
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 32
  store i64 %i.f, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_mhpmeventh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 %3) #3 {
.thread:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val29 = load i32, ptr %i.a, align 4           ; 3 uses
  %4 = lshr i32 %.val29, 20
  %i.b = and i32 %4, 1                            ; 2 uses
  %5 = shl nuw nsw i32 %i.b, 28
  %6 = lshr i32 %.val29, 18
  %i.c = and i32 %6, 1                            ; 2 uses
  %7 = shl nuw nsw i32 %i.c, 29
  %8 = or disjoint i32 %5, %7
  %9 = and i32 %.val29, 128
  %.not = icmp eq i32 %9, 0
  %10 = shl nuw nsw i32 %i.b, 26
  %11 = shl nuw nsw i32 %i.c, 27
  %12 = or disjoint i32 %10, %11
  %narrow = select i1 %.not, i32 0, i32 %12
  %13 = or disjoint i32 %narrow, %8
  %14 = or disjoint i32 %13, -1006632961
  %15 = zext i32 %14 to i64
  %i.d = add i32 %1, -1824                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %2, %15
  %i.j = and i64 %i.h, 4294967295
  %i.k = shl nuw i64 %i.i, 32
  %i.l = or disjoint i64 %i.k, %i.j               ; 2 uses
  store i64 %i.l, ptr %i.g, align 8
  %i.m = tail call i32 @riscv_pmu_update_event_map(ptr noundef nonnull %0, i64 noundef %i.l, i32 noundef %i.d) #16 ; 0 uses
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @rnmi(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15754
  %i.b = load i8, ptr %i.a, align 2, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i32 -1, i32 2
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mnscratch(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15464
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mnscratch(ptr nofree noundef writeonly captures(none) initializes((15464, 15472)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15464
  store i64 %2, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mnepc(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15472
  %i.b = load i64, ptr %i.a, align 16
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mnepc(ptr nofree noundef writeonly captures(none) initializes((15472, 15480)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15472
  store i64 %2, ptr %i.a, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mncause(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15480
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @write_mncause(ptr nofree noundef writeonly captures(none) initializes((15480, 15488)) %0, i32 %1, i64 noundef %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15480
  store i64 %2, ptr %i.a, align 8
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @read_mnstatus(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15488
  %i.b = load i64, ptr %i.a, align 16
  store i64 %i.b, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_mnstatus(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4964
  %.val = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val, 128
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 15488
  %i.d = load i64, ptr %i.c, align 16
  %i.e = xor i64 %i.d, %2
  %i.f = and i64 %i.e, 128
  %.not8 = icmp eq i64 %i.f, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.g) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 6152, %bb.a ], [ 6280, %bb.c ], [ 6280, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15488 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16
  %i.j = and i64 %i.i, 8
  %i.k = and i64 %.0, %2
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.h, align 16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @have_mseccfg(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15753
  %i.b = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15668
  %i.e = load i8, ptr %i.d, align 4, !range !12, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15757
  %i.h = load i8, ptr %i.g, align 1, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 15679
  %i.k = load i8, ptr %i.j, align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  %. = select i1 %i.l, i32 -1, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_mseccfg(ptr noundef %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #3 {
bb.a:
  %i.a = tail call i64 @mseccfg_csr_read(ptr noundef %0) #16
  store i64 %i.a, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_mseccfg(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  tail call void @mseccfg_csr_write(ptr noundef %0, i64 noundef %2) #16
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 3) i32 @debug(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15791
  %i.b = load i8, ptr %i.a, align 1, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i32 -1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @read_tselect(ptr noundef %0, i32 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #3 {
bb.a:
  %i.a = tail call i64 @tselect_csr_read(ptr noundef %0) #16
  store i64 %i.a, ptr %2, align 8
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @write_tselect(ptr noundef %0, i32 %1, i64 noundef %2, i64 %3) #3 {
bb.a:
  tail call void @tselect_csr_write(ptr noundef %0, i64 noundef %2) #16
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 3) i32 @read_tdata(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15202
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15204
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ule i32 %i.e, %i.c
  %i.g = icmp eq i32 %1, 1953
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %1, -1953                        ; 2 uses
  %i.i = tail call zeroext i1 @tdata_available(ptr noundef nonnull %0, i32 noundef %i.h) #16
  br i1 %i.i, label %bb.c, label %bb.d
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arm_gicv3_cpuif?download=true
inline.NumInlined: 497
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@icc_pmr_read:bb.a
  %.val20.val21 = load i64, ptr %i.ai, align 8
  %i.aj = lshr i64 %.val20.val21, 24
  %i.ak = and i64 %i.aj, 255                      ; 5 uses
  %i.al = lshr i64 %.val20.val, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i22, label %icv_pmr_read.exit, label %bb.k, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ao = load i16, ptr @_TRACE_GICV3_ICV_PMR_READ_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not2.i.i, label %icv_pmr_read.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not3.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not3.i.i, label %icv_pmr_read.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, i32 noundef %i.am, i64 noundef range(i64 0, 4294967296) %i.ak) #11
  br label %icv_pmr_read.exit

icv_access.exit.thread:                           ; preds = %bb.i, %bb.g, %bb.g, %bb.g, %bb.a, %arm_current_el.exit.i, %icv_access.exit
  %i.ar = getelementptr i8, ptr %0, i64 78928
  %.val18 = load i64, ptr %i.ar, align 16
  %i.as = and i64 %.val18, 536870912
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %icv_access.exit.thread
  %i.at = tail call i32 @arm_security_space(ptr noundef nonnull %0) #11
  %i.au = and i32 %i.at, -3
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, 4
  %.not16 = icmp eq i64 %i.ay, 0
  br i1 %.not16, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = and i32 %i.d, 128
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not17 = icmp eq i32 %i.d, 255
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = shl i64 %i.c, 1
  %i.bc = and i64 %i.bb, 254
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.o, %bb.n, %icv_access.exit.thread
  %.0 = phi i64 [ %i.c, %bb.n ], [ %i.c, %icv_access.exit.thread ], [ %i.bc, %bb.r ], [ 255, %bb.q ], [ %i.c, %bb.o ], [ 0, %bb.p ]
  %i.bd = getelementptr i8, ptr %.val19, i64 72
  %.val = load i64, ptr %i.bd, align 8
  %i.be = lshr i64 %.val, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i64 %.0, 4294967295                 ; 5 uses
  %i.bh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i23 = icmp eq i32 %i.bh, 0
  br i1 %.not.i23, label %icv_pmr_read.exit, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.bi = load i16, ptr @_TRACE_GICV3_ICC_PMR_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.bi, 0
  br i1 %.not2.i, label %icv_pmr_read.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load i32, ptr @qemu_loglevel, align 4
  %i.bk = and i32 %i.bj, 32768
  %.not3.i = icmp eq i32 %i.bk, 0
  br i1 %.not3.i, label %icv_pmr_read.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef %i.bf, i64 noundef range(i64 0, 4294967296) %i.bg) #11
  br label %icv_pmr_read.exit

icv_pmr_read.exit:                                ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.m, %bb.l, %bb.k, %bb.j
  %.014 = phi i64 [ %i.ak, %bb.m ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ], [ %i.bg, %bb.u ], [ %i.bg, %bb.v ]
  ret i64 %.014
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @icc_pmr_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79080      ; 2 uses
  %.val19 = load ptr, ptr %i.a, align 8           ; 5 uses
  %i.b = tail call i64 @arm_hcr_el2_eff(ptr noundef %0) #11
  %i.c = and i64 %i.b, 24
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %icv_access.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 78928      ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 16
  %i.e = and i64 %.val.i.i, 128
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i = load i32, ptr %i.f, align 16
  %.not13.i.i = icmp eq i32 %.val10.i.i, 0
  br i1 %.not13.i.i, label %bb.d, label %icv_access.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %i.n = xor i32 %i.m, 1
  br label %arm_current_el.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 336
  %.val11.i.i = load i8, ptr %i.o, align 16, !range !12, !noundef !13
  %i.p = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 2
  %i.u = and i32 %i.t, 3
  br label %arm_current_el.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 31
  switch i32 %i.x, label %bb.h [
    i32 16, label %icv_access.exit.thread
    i32 26, label %icv_access.exit.thread
    i32 22, label %icv_access.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 @arm_security_space(ptr noundef nonnull %0) #11
  %i.z = and i32 %i.y, -3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %icv_access.exit

bb.i:                                             ; preds = %bb.h
  %.val12.i.i = load i64, ptr %i.d, align 16
  %i.ab = and i64 %.val12.i.i, 33554432
  %.not14.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.i.i, label %icv_access.exit.thread, label %icv_access.exit

arm_current_el.exit.i:                            ; preds = %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.n, %bb.d ], [ %i.u, %bb.f ]
  %i.ac = icmp eq i32 %.0.i.i, 1
  br i1 %i.ac, label %icv_access.exit, label %icv_access.exit.thread

icv_access.exit:                                  ; preds = %bb.c, %bb.h, %bb.i, %arm_current_el.exit.i
  %i.ad = tail call i32 @arm_security_space_below_el3(ptr noundef nonnull %0) #11
  %.not24 = icmp eq i32 %i.ad, 0
  br i1 %.not24, label %icv_access.exit.thread, label %bb.j

bb.j:                                             ; preds = %icv_access.exit
  %.val20 = load ptr, ptr %i.a, align 8           ; 4 uses
  %i.ae = getelementptr i8, ptr %.val20, i64 72
  %.val.i = load i64, ptr %i.ae, align 8
  %i.af = lshr i64 %.val.i, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i22, label %icv_pmr_write.exit, label %bb.k, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ai = load i16, ptr @_TRACE_GICV3_ICV_PMR_WRITE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not2.i.i, label %icv_pmr_write.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not3.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not3.i.i, label %icv_pmr_write.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.58, i32 noundef %i.ag, i64 noundef %2) #11
  br label %icv_pmr_write.exit

icv_pmr_write.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.al = getelementptr i8, ptr %.val20, i64 628
  %.val9.i = load i32, ptr %i.al, align 4
  %i.am = sub i32 8, %.val9.i
  %i.an = shl nsw i32 -1, %i.am
  %i.ao = zext i32 %i.an to i64
  %3 = and i64 %2, %i.ao
  %4 = getelementptr inbounds nuw i8, ptr %.val20, i64 616 ; 2 uses
  %5 = load i64, ptr %4, align 8
  %i.ap = and i64 %5, -4278190081
  %6 = shl nuw nsw i64 %3, 24
  %7 = and i64 %6, 4278190080
  %8 = or disjoint i64 %7, %i.ap
  store i64 %8, ptr %4, align 8
  tail call void @gicv3_cpuif_virt_irq_fiq_update(ptr noundef nonnull %.val20)
  br label %bb.v

icv_access.exit.thread:                           ; preds = %bb.i, %bb.g, %bb.g, %bb.g, %bb.a, %arm_current_el.exit.i, %icv_access.exit
  %i.aq = getelementptr i8, ptr %.val19, i64 72
  %.val = load i64, ptr %i.aq, align 8
  %i.ar = lshr i64 %.val, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i23 = icmp eq i32 %i.at, 0
  br i1 %.not.i23, label %trace_gicv3_icc_pmr_write.exit, label %bb.n, !prof !10

bb.n:                                             ; preds = %icv_access.exit.thread
  %i.au = load i16, ptr @_TRACE_GICV3_ICC_PMR_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.au, 0
  br i1 %.not2.i, label %trace_gicv3_icc_pmr_write.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not3.i = icmp eq i32 %i.aw, 0
  br i1 %.not3.i, label %trace_gicv3_icc_pmr_write.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, i32 noundef %i.as, i64 noundef %2) #11
  br label %trace_gicv3_icc_pmr_write.exit

trace_gicv3_icc_pmr_write.exit:                   ; preds = %icv_access.exit.thread, %bb.n, %bb.o, %bb.p
  %i.ax = getelementptr i8, ptr %0, i64 78928
  %.val18 = load i64, ptr %i.ax, align 16
  %i.ay = and i64 %.val18, 536870912
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %trace_gicv3_icc_pmr_write.exit
  %i.az = tail call i32 @arm_security_space(ptr noundef nonnull %0) #11
  %i.ba = and i32 %i.az, -3
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 4
  %.not16 = icmp eq i64 %i.be, 0
  br i1 %.not16, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.val19, i64 216
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 128
  %.not17 = icmp eq i64 %i.bh, 0
  br i1 %.not17, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = lshr i64 %2, 1
  %i.bj = or i64 %i.bi, 128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q, %trace_gicv3_icc_pmr_write.exit
  %.0 = phi i64 [ %2, %bb.q ], [ %i.bj, %bb.t ], [ %2, %bb.r ], [ %2, %trace_gicv3_icc_pmr_write.exit ]
  %i.bk = getelementptr i8, ptr %.val19, i64 636
  %.val21 = load i32, ptr %i.bk, align 4
  %i.bl = sub i32 8, %.val21
  %i.bm = shl nsw i32 -1, %i.bl
  %i.bn = and i32 %i.bm, 255
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = and i64 %.0, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.val19, i64 216
  store i64 %i.bp, ptr %i.bq, align 8
  tail call void @gicv3_cpuif_update(ptr noundef nonnull %.val19)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %icv_pmr_write.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @icc_reset(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79080
  %.val25 = load ptr, ptr %i.a, align 8           ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val25, i64 636
  %i.c = load i32, ptr %i.b, align 4
  %i.d = shl i32 %i.c, 8
  %i.e = add i32 %i.d, -256                       ; 2 uses
  %i.f = or i32 %i.e, 34816
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val25, i64 200
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val25, i64 208
  store i64 %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val25, i64 216
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val25, i64 640
  %.val24 = load i32, ptr %i.k, align 8           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val25, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %.val25, i64 232
  %i.n = insertelement <2 x i32> poison, i32 %.val24, i64 0
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.p = sub <2 x i32> <i32 7, i32 8>, %i.o
  %i.q = sub i32 7, %.val24
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %i.l, align 8
  %i.s = sext <2 x i32> %i.p to <2 x i64>
  store <2 x i64> %i.s, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val25, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, i8 noundef 0, i64 noundef 96, i1 noundef false) #11
  %i.u = getelementptr inbounds nuw i8, ptr %.val25, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 noundef 0, i64 noundef 24, i1 noundef false) #11
  %i.v = or i32 %i.e, 165888
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.val25, i64 368
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.val25, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i8 noundef 0, i64 noundef 96, i1 noundef false) #11
  %i.z = getelementptr inbounds nuw i8, ptr %.val25, i64 480
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val25, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, i8 noundef 0, i64 noundef 128, i1 noundef false) #11
  %i.ab = getelementptr i8, ptr %.val25, i64 632
  %.val22 = load i32, ptr %i.ab, align 8
  %i.ac = sub i32 7, %.val22                      ; 2 uses
  %i.ad = shl i32 %i.ac, 18
  %i.ae = add i32 %i.ad, 262152
  %i.af = shl i32 %i.ac, 21
  %i.ag = or i32 %i.ae, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val25, i64 616
  store i64 %i.ah, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 8) i32 @gicv3_fiq_access(ptr noundef %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79080
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 78928      ; 3 uses
  %.val.i = load i64, ptr %i.b, align 16
  %i.c = and i64 %.val.i, 128
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.d, align 16
  %.not13.i = icmp eq i32 %.val10.i, 0
  br i1 %.not13.i, label %bb.c, label %arm_current_el.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 1
  %i.l = xor i32 %i.k, 1
  br label %arm_current_el.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.m, align 16, !range !12, !noundef !13
  %i.n = trunc nuw i8 %.val11.i to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i32 %i.q, 2
  %i.s = and i32 %i.r, 3
  br label %arm_current_el.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 31
  switch i32 %i.v, label %bb.i [
    i32 16, label %arm_current_el.exit.thread
    i32 26, label %bb.g
    i32 22, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %arm_current_el.exit.thread

bb.h:                                             ; preds = %bb.f
  br label %arm_current_el.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.w = tail call i32 @arm_security_space(ptr noundef nonnull %0) #11
  %i.x = and i32 %i.w, -3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %arm_current_el.exit

bb.j:                                             ; preds = %bb.i
  %.val12.i = load i64, ptr %i.b, align 16
  %i.z = and i64 %.val12.i, 33554432
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aspeed_smc?download=true
inline.NumInlined: 160
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@aspeed_smc_flash_write:bb.a

bb.h:                                             ; preds = %.lr.ph42, %bb.h
  %indvars.iv46 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next47, %bb.h ] ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = shl i64 %indvars.iv46, 3
  %i.ar = and i64 %i.aq, 4294967288
  %i.as = lshr i64 %2, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 255
  %i.av = tail call i32 @ssi_transfer(ptr noundef %i.ap, i32 noundef %i.au) #8 ; 0 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %.loopexit, label %bb.h, !llvm.loop !25

bb.i:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %aspeed_smc_flash_select.exit, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ax = load i16, ptr @_TRACE_ASPEED_SMC_FLASH_SELECT_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not1.i.i.i, label %aspeed_smc_flash_select.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load i32, ptr @qemu_loglevel, align 4
  %i.az = and i32 %i.ay, 32768
  %.not2.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not2.i.i.i, label %aspeed_smc_flash_select.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.41, i32 noundef range(i32 0, 256) %.pre-phi, ptr noundef nonnull @.str.40) #8
  br label %aspeed_smc_flash_select.exit

aspeed_smc_flash_select.exit:                     ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.val33, i64 7792
  store i8 0, ptr %i.ba, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.val33, i64 1640
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i8, ptr %i.c, align 8
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bg, i32 noundef 0) #8
  %i.bh = trunc i64 %1 to i32
  tail call fastcc void @aspeed_smc_flash_setup(ptr noundef nonnull %0, i32 noundef %i.bh)
  %.not43 = icmp eq i32 %3, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %aspeed_smc_flash_select.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = shl i64 %indvars.iv, 3
  %i.bl = and i64 %i.bk, 4294967288
  %i.bm = lshr i64 %2, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 255
  %i.bp = tail call i32 @ssi_transfer(ptr noundef %i.bj, i32 noundef %i.bo) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.m, %aspeed_smc_flash_select.exit
  %i.bq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.br = load i8, ptr %i.c, align 8
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i35 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i35, label %aspeed_smc_flash_unselect.exit, label %bb.n, !prof !15

bb.n:                                             ; preds = %._crit_edge
  %i.bu = load i16, ptr @_TRACE_ASPEED_SMC_FLASH_SELECT_DSTATE, align 2
  %.not1.i.i.i36 = icmp eq i16 %i.bu, 0
  br i1 %.not1.i.i.i36, label %aspeed_smc_flash_unselect.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr @qemu_loglevel, align 4
  %i.bw = and i32 %i.bv, 32768
  %.not2.i.i.i37 = icmp eq i32 %i.bw, 0
  br i1 %.not2.i.i.i37, label %aspeed_smc_flash_unselect.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.41, i32 noundef range(i32 0, 256) %i.bs, ptr noundef nonnull @.str.39) #8
  br label %aspeed_smc_flash_unselect.exit

aspeed_smc_flash_unselect.exit:                   ; preds = %._crit_edge, %bb.n, %bb.o, %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 7792
  store i8 1, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 1640
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load i8, ptr %i.c, align 8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void @qemu_set_irq(ptr noundef %i.cd, i32 noundef 1) #8
  br label %.loopexit

bb.q:                                             ; preds = %bb.g
  %i.ce = load i32, ptr @qemu_loglevel, align 4
  %i.cf = and i32 %i.ce, 2048
  %.not39 = icmp eq i32 %i.cf, 0
  br i1 %.not39, label %.loopexit, label %bb.r, !prof !15

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.aspeed_smc_flash_write, i32 noundef %i.an) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.preheader, %aspeed_smc_flash_unselect.exit, %bb.q, %bb.r, %bb.e, %bb.f
  %.027 = phi i32 [ 1, %bb.e ], [ 1, %bb.q ], [ 1, %bb.f ], [ 1, %bb.r ], [ 0, %aspeed_smc_flash_unselect.exit ], [ 0, %.preheader ], [ 0, %bb.h ]
  ret i32 %.027
}

declare i32 @ssi_transfer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aspeed_smc_flash_setup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.AspeedSegments, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 824        ; 6 uses
  %.val21 = load i8, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1664
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1922
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i64
  %i.h = zext i8 %.val21 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = and i32 %i.l, 255
  %i.n = and i32 %i.k, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %i.o, i32 3, i32 %i.m ; 2 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i, label %bb.b, label %aspeed_smc_flash_cmd.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 2048
  %.not1.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i, label %aspeed_smc_flash_cmd.exit, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.aspeed_smc_flash_cmd, i32 noundef %i.n) #8
  %.pre = load ptr, ptr %i.a, align 8
  br label %aspeed_smc_flash_cmd.exit

aspeed_smc_flash_cmd.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %i.r = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.v, null
  br i1 %.not.i24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %aspeed_smc_flash_cmd.exit
  %i.w = tail call i32 %i.v(ptr noundef %i.r) #8, !inline_history !27
  %.pre31 = load ptr, ptr %i.a, align 8
  %.pre32 = load ptr, ptr %i.s, align 16
  %.pre33 = load i8, ptr %i.c, align 8
  br label %aspeed_smc_flash_addr_width.exit

bb.e:                                             ; preds = %aspeed_smc_flash_cmd.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1664
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1921
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = load i8, ptr %i.c, align 8              ; 2 uses
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = and i32 %i.af, %i.ac
  %.not9.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not9.i, i32 3, i32 4
  br label %aspeed_smc_flash_addr_width.exit

aspeed_smc_flash_addr_width.exit:                 ; preds = %bb.d, %bb.e
  %i.ai = phi i8 [ %.pre33, %bb.d ], [ %i.ad, %bb.e ]
  %i.aj = phi ptr [ %.pre32, %bb.d ], [ %i.t, %bb.e ]
  %i.ak = phi ptr [ %.pre31, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.0.i = phi i32 [ %i.w, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 272
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = zext i8 %i.ai to i64
  %i.ao = getelementptr i8, ptr %i.ak, i64 1712
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4
  call void %i.am(ptr noundef %i.ak, i32 noundef %i.aq, ptr noundef nonnull %2) #8, !inline_history !28
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 3 uses
  %.not.i25 = icmp ult i32 %1, %i.as
  br i1 %.not.i25, label %aspeed_smc_check_segment_addr.exit, label %bb.f

bb.f:                                             ; preds = %aspeed_smc_flash_addr_width.exit
  %i.at = load i32, ptr @qemu_loglevel, align 4
  %i.au = and i32 %i.at, 2048
  %.not12.i = icmp eq i32 %i.au, 0
  br i1 %.not12.i, label %3, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.c, align 8
  %i.aw = zext i8 %i.av to i32
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = zext i32 %i.as to i64
  %i.az = add i64 %i.ax, %i.ay
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.aspeed_smc_check_segment_addr, i32 noundef %1, i32 noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.az) #8
  %.pre.i = load i32, ptr %i.ar, align 8
  br label %3

3:                                                ; preds = %bb.g, %bb.f
  %4 = phi i32 [ %.pre.i, %bb.g ], [ %i.as, %bb.f ]
  %5 = urem i32 %1, %4
  br label %aspeed_smc_check_segment_addr.exit

aspeed_smc_check_segment_addr.exit:               ; preds = %aspeed_smc_flash_addr_width.exit, %3
  %.0.i26 = phi i32 [ %5, %3 ], [ %1, %aspeed_smc_flash_addr_width.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 1656 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 @ssi_transfer(ptr noundef %i.bb, i32 noundef %spec.select.i) #8 ; 0 uses
  %.not29 = icmp eq i32 %.0.i, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %aspeed_smc_check_segment_addr.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 1676
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.030 = phi i32 [ %.0.i, %.lr.ph ], [ %i.be, %bb.j ] ; 2 uses
  %i.be = add i32 %.030, -1                       ; 3 uses
  %i.bf = load i32, ptr %i.bd, align 4
  %i.bg = add i32 %.030, 3
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bf, %i.bh
  %.not18 = icmp eq i32 %i.bi, 0
  br i1 %.not18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = shl i32 %i.be, 3
  %i.bl = lshr i32 %.0.i26, %i.bk
  %i.bm = and i32 %i.bl, 255
  %i.bn = call i32 @ssi_transfer(ptr noundef %i.bj, i32 noundef %i.bm) #8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.j, %aspeed_smc_check_segment_addr.exit
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.val19 = load i8, ptr %i.c, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 1664
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 1922
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = zext i8 %i.bq to i64
  %i.bs = zext i8 %.val19 to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i32 %i.bv, 3
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 1748
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.n
  %i.bz = phi i32 [ %.pre42, %bb.n ], [ %i.bv, %.preheader ] ; 6 uses
  %.val22 = phi ptr [ %.val22.pre, %bb.n ], [ %.val, %.preheader ]
  %.1 = phi i32 [ %i.co, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %.not.i27 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i27, label %bb.l, label %aspeed_smc_flash_dummy_bytes.exit

bb.l:                                             ; preds = %bb.k
  %.not15.i = icmp samesign ult i32 %i.bz, 1073741824
  %i.ca = and i32 %i.bz, 268435456
  %.not16.i = icmp eq i32 %i.ca, 0
  %or.cond.i = or i1 %.not15.i, %.not16.i
  br i1 %or.cond.i, label %bb.m, label %aspeed_smc_flash_dummy_bytes.exit

bb.m:                                             ; preds = %bb.l
  %i.cb = and i32 %i.bz, 805306368
  %or.cond19.not.i = icmp eq i32 %i.cb, 805306368
  %i.cc = zext i1 %or.cond19.not.i to i32
  br label %aspeed_smc_flash_dummy_bytes.exit

aspeed_smc_flash_dummy_bytes.exit:                ; preds = %bb.k, %bb.l, %bb.m
  %.sink.i = phi i32 [ %i.cc, %bb.m ], [ 2, %bb.l ], [ 2, %bb.k ]
  %i.cd = lshr i32 %i.bz, 12
  %i.ce = and i32 %i.cd, 4
  %i.cf = lshr i32 %i.bz, 6
  %i.cg = and i32 %i.cf, 3
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %spec.select.i28 = shl nuw nsw i32 %i.ch, %.sink.i
  %i.ci = icmp samesign ult i32 %.1, %spec.select.i28
  br i1 %i.ci, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %aspeed_smc_flash_dummy_bytes.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.val22, i64 1656
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i32, ptr %i.by, align 4
  %i.cm = and i32 %i.cl, 255
  %i.cn = call i32 @ssi_transfer(ptr noundef %i.ck, i32 noundef %i.cm) #8 ; 0 uses
  %i.co = add nuw nsw i32 %.1, 1
  %.val22.pre = load ptr, ptr %i.a, align 8       ; 3 uses
  %.val23.pre = load i8, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val22.pre, i64 1922
  %.pre36 = load i8, ptr %.phi.trans.insert, align 2
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %.val22.pre, i64 1664
  %.phi.trans.insert38 = zext i8 %.pre36 to i64
  %.phi.trans.insert39 = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert37, i64 %.phi.trans.insert38
  %.phi.trans.insert40 = zext i8 %.val23.pre to i64
  %.phi.trans.insert41 = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert39, i64 %.phi.trans.insert40
  %.pre42 = load i32, ptr %.phi.trans.insert41, align 4
  br label %bb.k, !llvm.loop !30

.loopexit:                                        ; preds = %aspeed_smc_flash_dummy_bytes.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 267390976) i32 @aspeed_2600_smc_segment_to_reg(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = lshr i64 %i.c, 16
  %i.e = and i64 %i.d, 4080
  %i.f = zext i32 %i.b to i64
  %i.g = add nuw nsw i64 %i.f, 268435455
  %i.h = add i64 %i.g, %i.c
  %i.i = and i64 %i.h, 267386880
  %i.j = or disjoint i64 %i.e, %i.i
  %i.k = trunc nuw nsw i64 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_2600_smc_reg_to_segment(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #8
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26, i32 noundef 48, ptr noundef nonnull @__func__.ASPEED_SMC_GET_CLASS) #8 ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 267386880
  %i.d = shl i32 %1, 16
  %i.e = and i32 %i.d, 267386880                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.g = load i64, ptr %i.f, align 8
  %i.h = zext nneg i32 %i.e to i64
  %i.i = add i64 %i.g, %i.h
  %narrow = add nuw nsw i32 %i.c, 1048576
  %i.j = sub nsw i32 %narrow, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink12 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  %.sink = phi i32 [ 0, %bb.c ], [ %i.j, %bb.b ]
  store i64 %.sink12, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @aspeed_smc_segment_to_reg(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = lshr i64 %i.a, 7
  %i.c = and i64 %i.b, 16711680
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = add i64 %i.a, %i.f
  %i.h = shl i64 %i.g, 1
  %i.i = and i64 %i.h, 4278190080
  %i.j = or disjoint i64 %i.i, %i.c
  %i.k = trunc nuw i64 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal void @aspeed_smc_reg_to_segment(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) #7 {
bb.a:
  %i.a = shl i32 %1, 7
  %i.b = and i32 %i.a, 2139095040                 ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  store i64 %i.c, ptr %2, align 8
  %i.d = lshr i32 %1, 1
  %i.e = and i32 %i.d, 2139095040
  %i.f = sub nsw i32 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 3, 5) i32 @aspeed_2400_spi1_addr_width(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
end_hunk_0

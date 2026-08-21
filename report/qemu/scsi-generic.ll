inline.NumInlined: 127
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@scsi_generic_emulate_block_limits:bb.a
  %i.d = tail call i64 @blk_get_max_hw_transfer(ptr noundef %i.c) #12
  %i.e = freeze i64 %i.d                          ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = tail call i32 @blk_get_max_hw_iov(ptr noundef %i.f) #12
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %calculate_max_transfer.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 153, ptr noundef nonnull @__PRETTY_FUNCTION__.calculate_max_transfer) #15
  unreachable

calculate_max_transfer.exit:                      ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = zext i32 %i.g to i64
  %i.j = tail call i32 @getpagesize() #13
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.i                   ; 2 uses
  %i.m = add nsw i64 %i.l, -1
  %or.cond.not.i = icmp ult i64 %i.m, %i.e
  %i.n = select i1 %or.cond.not.i, i64 %i.l, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.p = load i32, ptr %i.o, align 8
  %i.q = sext i32 %i.p to i64
  %i.r = udiv i64 %i.n, %i.q
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.h, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = sext i32 %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.u, i8 noundef 0, i64 noundef range(i64 -2147483648, 4294967304) %i.x, i1 noundef false) #12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.a, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 -80, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ad = call i32 @scsi_emulate_block_limits(ptr noundef nonnull %i.ac, ptr noundef nonnull %2) #12 ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 61
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %calculate_max_transfer.exit
  call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_generic_emulate_block_limits) #15
  unreachable

bb.d:                                             ; preds = %calculate_max_transfer.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ag = trunc nuw nsw i32 %i.ad to i16
  %i.ah = shl nuw nsw i16 %i.ag, 8
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = load i32, ptr %i.v, align 8
  %i.ak = add nuw nsw i32 %i.ad, 4
  %i.al = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ak)
  %i.am = sext i32 %i.al to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull align 16 %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.am, i1 noundef false) #12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 499
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 502
  store i16 0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i8 0, ptr %i.ap, align 8
  %i.aq = load i32, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.aq
}

declare zeroext i1 @blk_is_writable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @scsi_handle_inquiry_reply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 1
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 7                           ; 2 uses
  %i.m = zext nneg i8 %i.l to i32
  store i32 %i.m, ptr %i.b, align 8
  %i.n = icmp samesign ugt i8 %i.l, 2
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.t = load i32, ptr %i.s, align 4
  switch i32 %i.t, label %.thread [
    i32 0, label %bb.f
    i32 20, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not72 = icmp eq i8 %i.w, 0
  br i1 %.not72, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.y = load i8, ptr %i.x, align 2               ; 2 uses
  %i.z = icmp eq i8 %i.y, -80
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 7
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 @blk_get_max_hw_transfer(ptr noundef %i.ae) #12
  %i.ag = freeze i64 %i.af                        ; 3 uses
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = tail call i32 @blk_get_max_hw_iov(ptr noundef %i.ah) #12
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.j, label %calculate_max_transfer.exit

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 153, ptr noundef nonnull @__PRETTY_FUNCTION__.calculate_max_transfer) #15
  unreachable

calculate_max_transfer.exit:                      ; preds = %bb.i
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 16) ; 2 uses
  %i.ak = zext i32 %i.ai to i64
  %i.al = tail call i32 @getpagesize() #13
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.ak                ; 2 uses
  %i.ao = add nsw i64 %i.an, -1
  %or.cond.not.i = icmp ult i64 %i.ao, %i.ag
  %i.ap = select i1 %or.cond.not.i, i64 %i.an, i64 %i.ag ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = udiv i64 %i.ap, %i.as                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = zext nneg i32 %i.aj to i64
  %i.ax = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.av, i64 noundef range(i64 -2147483648, 2147483648) %i.aw, i64 noundef 16) #12, !alias.scope !20 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.az = trunc i64 %i.at to i32
  %i.ba = call i32 @llvm.bswap.i32(i32 %i.az)     ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %.val = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bc = call i32 @llvm.bswap.i32(i32 %.val)
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp ult i64 %i.ap, %i.as
  %i.bf = icmp ne i32 %.val, 0
  %i.bg = icmp uge i64 %i.at, %i.bd
  %or.cond73.not = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = select i1 %i.be, i1 true, i1 %or.cond73.not
  %i.bi = select i1 %i.bh, i32 %.val, i32 %i.ba
  store i32 %i.bi, ptr %i.bb, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bk = add nsw i32 %i.aj, -8
  %i.bl = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bj, ptr noundef nonnull align 8 %i.ay, i64 noundef range(i64 -2147483648, 2147483648) %i.bl, i1 noundef false) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 644
  %i.bn = load i8, ptr %i.bm, align 4, !range !18, !noundef !19
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = icmp eq i8 %i.y, 0
  %or.cond = and i1 %i.bp, %i.bo
  br i1 %or.cond, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 8            ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 3
  br i1 %i.bs, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %.val76 = load i16, ptr %i.bv, align 1
  %i.bw = lshr i16 %.val76, 8                     ; 2 uses
  %narrow = add nuw nsw i16 %i.bw, 4
  %i.bx = and i16 %narrow, 255
  %i.by = zext nneg i16 %i.bx to i32
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.br) ; 4 uses
  %3 = zext nneg i32 %i.bz to i64
  %i.ca = icmp samesign ugt i32 %i.bz, 4
  br i1 %i.ca, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.m
  %4 = zext nneg i32 %i.br to i64
  %narrow97 = add nuw nsw i16 %i.bw, 4
  %5 = and i16 %narrow97, 255
  %6 = zext nneg i16 %5 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %4, i64 %6)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %umin, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %7 = phi i32 [ %i.bz, %.lr.ph.preheader ], [ %i.ci, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = icmp ugt i8 %i.ce, -81
  %8 = trunc nuw i64 %indvars.iv to i8
  %.pre.pre87 = load i32, ptr %i.bq, align 8      ; 2 uses
  br i1 %i.cf, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.lr.ph
  %i.cg = icmp sgt i32 %.pre.pre87, %7
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 %i.ce, ptr %i.cc, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = add i8 %8, -1                           ; 2 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp ugt i8 %i.ch, 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.cj, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !24

..critedge.loopexit_crit_edge:                    ; preds = %bb.p
  %.pre.pre = load i32, ptr %i.bq, align 8
  %.pre86.pre.pre = load ptr, ptr %i.bt, align 8
  br label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %.lr.ph, %..critedge.loopexit_crit_edge, %bb.m
  %.pre86 = phi ptr [ %i.bu, %bb.m ], [ %.pre86.pre.pre, %..critedge.loopexit_crit_edge ], [ %i.cb, %.lr.ph ] ; 2 uses
  %i.ck = phi i32 [ %i.br, %bb.m ], [ %.pre.pre, %..critedge.loopexit_crit_edge ], [ %.pre.pre87, %.lr.ph ]
  %.066.lcssa = phi i64 [ %3, %bb.m ], [ 4, %..critedge.loopexit_crit_edge ], [ %indvars.iv, %.lr.ph ]
  %.lcssa = phi i32 [ %i.bz, %bb.m ], [ %i.ci, %..critedge.loopexit_crit_edge ], [ %7, %.lr.ph ]
  %i.cl = icmp sgt i32 %i.ck, %.lcssa
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge
  %9 = and i64 %.066.lcssa, 255
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre86, i64 %9
  store i8 -80, ptr %i.cm, align 1
  %.pre85 = load ptr, ptr %i.bt, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge
  %i.cn = phi ptr [ %.pre85, %bb.q ], [ %.pre86, %.critedge ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2 ; 2 uses
  %.val75 = load i16, ptr %i.co, align 1
  %i.cp = tail call i16 @llvm.bswap.i16(i16 %.val75)
  %i.cq = add i16 %i.cp, 1
  %i.cr = tail call i16 @llvm.bswap.i16(i16 %i.cq)
  store i16 %i.cr, ptr %i.co, align 1
  %i.cs = load i32, ptr %i.bq, align 8
  %i.ct = icmp slt i32 %2, %i.cs
  %i.cu = zext i1 %i.ct to i32
  %spec.select = add i32 %2, %i.cu
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.r, %bb.e, %calculate_max_transfer.exit, %bb.l, %bb.k, %bb.f
  %.0 = phi i32 [ %2, %calculate_max_transfer.exit ], [ %2, %bb.e ], [ %spec.select, %bb.r ], [ %2, %bb.l ], [ %2, %bb.k ], [ %2, %bb.f ], [ %2, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scsi_handle_persistent_reserve_in_reply(ptr nofree noundef readonly captures(none) %0, i8 %.646.val) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i8 %.646.val to i1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 31
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_handle_persistent_reserve_in_reply) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -13
  store i8 %i.m, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  ret void
}

declare void @scsi_req_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @scsi_emulate_block_limits(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @blk_get_max_hw_transfer(ptr noundef) local_unnamed_addr #2

declare i32 @blk_get_max_hw_iov(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_write_complete(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = alloca [24 x i8], align 16               ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 15 uses
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %trace_scsi_generic_write_complete.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @_TRACE_SCSI_GENERIC_WRITE_COMPLETE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.g, 0
  br i1 %.not1.i, label %trace_scsi_generic_write_complete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not2.i = icmp eq i32 %i.i, 0
  br i1 %.not2.i, label %trace_scsi_generic_write_complete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %1) #12
  br label %trace_scsi_generic_write_complete.exit

trace_scsi_generic_write_complete.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %trace_scsi_generic_write_complete.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 776, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_write_complete) #15
  unreachable

bb.f:                                             ; preds = %trace_scsi_generic_write_complete.exit
  store ptr null, ptr %i.j, align 8
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %bb.g, label %.split

.split:                                           ; preds = %bb.f
  tail call fastcc void @scsi_command_complete_noio(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 377
  %i.m = load i8, ptr %i.l, align 1, !range !18, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split21, label %bb.h

.split21:                                         ; preds = %bb.g
  tail call fastcc void @scsi_command_complete_noio(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8               ; 2 uses
  %i.q = icmp eq i8 %i.p, 21
  br i1 %i.q, label %bb.i, label %trace_scsi_generic_write_complete_blocksize.exit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i8, ptr %i.r, align 4
  %i.t = icmp eq i8 %i.s, 12
  br i1 %i.t, label %bb.j, label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 604
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store i32 %i.al, ptr %i.am, align 8
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i23 = icmp eq i32 %i.an, 0
  br i1 %.not.i23, label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ao = load i16, ptr @_TRACE_SCSI_GENERIC_WRITE_COMPLETE_BLOCKSIZE_DSTATE, align 2
  %.not1.i24 = icmp eq i16 %i.ao, 0
  br i1 %.not1.i24, label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not2.i25 = icmp eq i32 %i.aq, 0
  br i1 %.not2.i25, label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, i32 noundef range(i32 0, 16777216) %i.al) #12
  br label %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split

trace_scsi_generic_write_complete_blocksize.exitthread-pre-split: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.pr = load i8, ptr %i.o, align 8
  br label %trace_scsi_generic_write_complete_blocksize.exit

trace_scsi_generic_write_complete_blocksize.exit: ; preds = %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split, %bb.h
  %i.ar = phi i8 [ %.pr, %trace_scsi_generic_write_complete_blocksize.exitthread-pre-split ], [ %i.p, %bb.h ]
  %i.as = icmp eq i8 %i.ar, 95
  br i1 %i.as, label %bb.o, label %scsi_handle_persistent_reserve_out_reply.exit

bb.o:                                             ; preds = %trace_scsi_generic_write_complete_blocksize.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 648 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.av = load i8, ptr %i.au, align 2
  %i.aw = and i8 %i.av, 15                        ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp sgt i32 %i.ay, 15
  br i1 %i.az, label %bb.q, label %bb.p

end_hunk_0
begin_hunk_1_@scsi_generic_realize:bb.a
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = call zeroext i1 @blk_supports_write_perm(ptr noundef %i.q) #12
  %i.s = xor i1 %i.r, true
  %i.t = call zeroext i1 @blkconf_apply_backend_options(ptr noundef nonnull %i.b, i1 noundef zeroext %i.s, i1 noundef zeroext true, ptr noundef %1) #12
  br i1 %i.t, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4
  call fastcc void @trace_scsi_generic_realize_type(i32 noundef %i.v)
  %i.x = load i32, ptr %i.w, align 4
  switch i32 %i.x, label %bb.s [
    i32 1, label %bb.q
    i32 5, label %bb.r
    i32 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = call fastcc i32 @get_stream_blocksize(ptr noundef %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ab = icmp eq i32 %i.z, -1
  %spec.store.select = select i1 %i.ab, i32 0, i32 %i.z ; 2 uses
  store i32 %spec.store.select, ptr %i.aa, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 2048, ptr %i.ac, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 512, ptr %i.ad, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %i.ae = phi i32 [ %spec.store.select, %bb.q ], [ 512, %bb.s ], [ 2048, %bb.r ]
  call fastcc void @trace_scsi_generic_realize_blocksize(i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 -1, ptr %i.af, align 4
  call void @scsi_generic_read_device_inquiry(ptr noundef nonnull %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.i, %bb.j, %bb.t, %bb.n, %bb.l, %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @scsi_new_request(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call ptr @scsi_req_alloc(ptr noundef nonnull @scsi_generic_req_ops, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4) #12
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @scsi_generic_parse_cdb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @scsi_bus_parse_cdb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #12
  ret i32 %i.a
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_generic_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40, i32 noundef 68, ptr noundef nonnull @__func__.SCSI_DEVICE) #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store i32 %i.c, ptr %i.d, align 8
  %.0.copyload = load i24, ptr @sense_code_RESET, align 1
  tail call void @scsi_device_purge_requests(ptr noundef %i.a, i24 %.0.copyload) #12
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @blk_get_on_error(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @error_append_hint(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @blkconf_apply_backend_options(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @blk_supports_write_perm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_scsi_generic_realize_type(i32 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_SCSI_GENERIC_REALIZE_TYPE_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.48, i32 noundef %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 16777216) i32 @get_stream_blocksize(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 6 uses
  %i.b = alloca [12 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.c, i8 noundef 0, i64 noundef 5, i1 noundef false) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 noundef 0, i64 noundef 12, i1 noundef false) #12
  store i8 26, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 12, ptr %i.d, align 1
  %i.e = call i32 @scsi_SG_IO(ptr noundef %0, i32 noundef -3, ptr noundef nonnull %i.a, i8 noundef zeroext 6, ptr noundef nonnull %i.b, i32 noundef 12, i32 noundef 6, ptr noundef null)
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_scsi_generic_realize_blocksize(i32 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_SCSI_GENERIC_REALIZE_BLOCKSIZE_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, i32 noundef %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare ptr @scsi_req_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scsi_bus_parse_cdb(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @scsi_device_purge_requests(ptr noundef, i24) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{null, null, null}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !14, !13}
!16 = distinct !{!16, !10}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"memcpy.inline: argument 0"}
!22 = distinct !{!22, !"memcpy.inline"}
!23 = distinct !{!23, !22, !"memcpy.inline: argument 1"}
!24 = distinct !{!24, !10}
!25 = distinct !{null, null, null, null}
end_hunk_1

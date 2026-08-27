Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xilinx_spips?download=true
inline.NumInlined: 123
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@xilinx_spips_read:bb.a
  store i32 0, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.h = load i8, ptr %i.g, align 16              ; 3 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %rx_data_bytes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext i8 %i.h to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.j = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.f) #12
  br i1 %i.j, label %.critedge.loopexit.split.loop.exit12.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.k = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.f) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.k, ptr %i.l, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rx_data_bytes.exit, label %.lr.ph.i, !llvm.loop !14

.critedge.loopexit.split.loop.exit12.i:           ; preds = %.lr.ph.i
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %rx_data_bytes.exit

rx_data_bytes.exit:                               ; preds = %bb.j, %bb.i, %.critedge.loopexit.split.loop.exit12.i
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.m, %.critedge.loopexit.split.loop.exit12.i ], [ %i.i, %bb.j ]
  %i.n = sub nsw i32 %i.i, %.0.lcssa.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 67108864
  %.not = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = shl i32 %i.n, 3
  %i.u = shl i32 %i.r, %i.t
  %.0 = select i1 %.not, i32 %i.u, i32 %i.s
  tail call fastcc void @xilinx_spips_check_flush(ptr noundef nonnull %0)
  tail call fastcc void @xilinx_spips_update_ixr(ptr noundef nonnull %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.021 = phi i32 [ -1, %bb.a ], [ -2079653889, %bb.b ], [ 8191, %bb.d ], [ 1, %bb.e ], [ 255, %bb.f ], [ 33554431, %bb.g ], [ 0, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.b
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, %.021
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rx_data_bytes.exit, %bb.c
  %.022.in = phi i32 [ %i.y, %bb.k ], [ %i.e, %bb.c ], [ %.0, %rx_data_bytes.exit ]
  %.022 = zext i32 %.022.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.022
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_spips_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 3 uses
  %i.b = icmp ult i64 %1, 256
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.6, i32 noundef 1025, ptr noundef nonnull @__PRETTY_FUNCTION__.xilinx_spips_write) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %.critedge44 [
    i64 0, label %bb.d
    i64 1, label %bb.g
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 5, label %bb.j
    i64 9, label %bb.k
    i64 8, label %bb.l
    i64 4, label %bb.l
    i64 63, label %bb.l
    i64 7, label %bb.m
    i64 32, label %bb.p
    i64 33, label %bb.s
    i64 34, label %bb.v
    i64 12, label %bb.y
    i64 14, label %bb.y
    i64 15, label %bb.y
    i64 50, label %bb.y
    i64 62, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = and i64 %2, 65536
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 32768
  %.not42 = icmp eq i32 %i.f, 0
  br i1 %.not42, label %.critedge44, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store i8 1, ptr %i.g, align 8
  br label %.critedge44

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1468 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i64 %2 to i32
  %i.k = and i32 %i.j, 8191
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.i, %i.l
  store i32 %i.m, ptr %i.h, align 4
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = trunc i64 %2 to i32
  %i.q = and i32 %i.p, 8191
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %i.o, %i.r
  store i32 %i.s, ptr %i.n, align 8
  br label %.critedge

bb.i:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = trunc i64 %2 to i32
  %i.w = and i32 %i.v, 8191
  %i.x = or i32 %i.u, %i.w
  store i32 %i.x, ptr %i.t, align 8
  br label %.critedge

bb.j:                                             ; preds = %bb.c
  br label %.critedge44

bb.k:                                             ; preds = %bb.c
  br label %.critedge44

bb.l:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %.critedge44

bb.m:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.aa = load i8, ptr %i.z, align 16             ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 67108864
  %.not78 = icmp eq i32 %i.ae, 0
  %i.af = trunc i64 %2 to i32                     ; 2 uses
  br i1 %.not78, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.n
  %.012.us.i = phi i32 [ %i.ak, %bb.n ], [ 0, %.lr.ph.i ]
  %.01011.us.i = phi i32 [ %i.aj, %bb.n ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %i.ag = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.y) #12
  br i1 %i.ag, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i
  %i.ah = lshr i32 %.01011.us.i, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.y, i8 noundef zeroext %i.ai) #12
  %i.aj = shl i32 %.01011.us.i, 8
  %i.ak = add nuw nsw i32 %.012.us.i, 1           ; 2 uses
  %exitcond15.not.i = icmp eq i32 %i.ak, %i.ab
  br i1 %exitcond15.not.i, label %.critedge, label %.lr.ph.split.us.i, !llvm.loop !15

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.o
  %.012.i = phi i32 [ %i.ao, %bb.o ], [ 0, %.lr.ph.i ]
  %.01011.i = phi i32 [ %i.an, %bb.o ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %i.al = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.y) #12
  br i1 %i.al, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.am = trunc i32 %.01011.i to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.y, i8 noundef zeroext %i.am) #12
  %i.an = lshr i32 %.01011.i, 8
  %i.ao = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %i.ab
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.split.i, !llvm.loop !15

bb.p:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 67108864
  %.not77 = icmp eq i32 %i.as, 0
  %i.at = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.ap) #12 ; 2 uses
  br i1 %.not77, label %.lr.ph.split.i46.preheader, label %.lr.ph.split.us.i50.preheader

.lr.ph.split.us.i50.preheader:                    ; preds = %bb.p
  br i1 %i.at, label %.critedge, label %bb.q

.lr.ph.split.i46.preheader:                       ; preds = %bb.p
  br i1 %i.at, label %.critedge, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.us.i50.preheader
  %i.au = lshr i64 %2, 24
  %i.av = trunc i64 %i.au to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ap, i8 noundef zeroext %i.av) #12
  br label %.critedge

bb.r:                                             ; preds = %.lr.ph.split.i46.preheader
  %i.aw = trunc i64 %2 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ap, i8 noundef zeroext %i.aw) #12
  br label %.critedge

bb.s:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 67108864
  %.not76 = icmp eq i32 %i.ba, 0
  %i.bb = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.ax) #12 ; 2 uses
  br i1 %.not76, label %.lr.ph.split.i56.preheader, label %.lr.ph.split.us.i60.preheader

.lr.ph.split.us.i60.preheader:                    ; preds = %bb.s
  br i1 %i.bb, label %.critedge, label %.lr.ph.split.us.i60.1

.lr.ph.split.i56.preheader:                       ; preds = %bb.s
  br i1 %i.bb, label %.critedge, label %.lr.ph.split.i56.1

.lr.ph.split.us.i60.1:                            ; preds = %.lr.ph.split.us.i60.preheader
  %i.bc = lshr i64 %2, 24
  %i.bd = trunc i64 %i.bc to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ax, i8 noundef zeroext %i.bd) #12
  %i.be = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.ax) #12
  br i1 %i.be, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i60.1
  %i.bf = lshr i64 %2, 16
  %i.bg = trunc i64 %i.bf to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ax, i8 noundef zeroext %i.bg) #12
  br label %.critedge

.lr.ph.split.i56.1:                               ; preds = %.lr.ph.split.i56.preheader
  %i.bh = trunc i64 %2 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ax, i8 noundef zeroext %i.bh) #12
  %i.bi = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.ax) #12
  br i1 %i.bi, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.i56.1
  %i.bj = lshr i64 %2, 8
  %i.bk = trunc i64 %i.bj to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.ax, i8 noundef zeroext %i.bk) #12
  br label %.critedge

bb.v:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 11 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 67108864
  %.not75 = icmp eq i32 %i.bo, 0
  %i.bp = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.bl) #12 ; 2 uses
  br i1 %.not75, label %.lr.ph.split.i66.preheader, label %.lr.ph.split.us.i70.preheader

.lr.ph.split.us.i70.preheader:                    ; preds = %bb.v
  br i1 %i.bp, label %.critedge, label %.lr.ph.split.us.i70.1

.lr.ph.split.i66.preheader:                       ; preds = %bb.v
  br i1 %i.bp, label %.critedge, label %.lr.ph.split.i66.1

.lr.ph.split.us.i70.1:                            ; preds = %.lr.ph.split.us.i70.preheader
  %i.bq = lshr i64 %2, 24
  %i.br = trunc i64 %i.bq to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.br) #12
  %i.bs = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.bl) #12
  br i1 %i.bs, label %.critedge, label %.lr.ph.split.us.i70.2

.lr.ph.split.us.i70.2:                            ; preds = %.lr.ph.split.us.i70.1
  %i.bt = lshr i64 %2, 16
  %i.bu = trunc i64 %i.bt to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.bu) #12
  %i.bv = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.bl) #12
  br i1 %i.bv, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us.i70.2
  %i.bw = lshr i64 %2, 8
  %i.bx = trunc i64 %i.bw to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.bx) #12
  br label %.critedge

.lr.ph.split.i66.1:                               ; preds = %.lr.ph.split.i66.preheader
  %i.by = trunc i64 %2 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.by) #12
  %i.bz = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.bl) #12
  br i1 %i.bz, label %.critedge, label %.lr.ph.split.i66.2

.lr.ph.split.i66.2:                               ; preds = %.lr.ph.split.i66.1
  %i.ca = lshr i64 %2, 8
  %i.cb = trunc i64 %i.ca to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.cb) #12
  %i.cc = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.bl) #12
  br i1 %i.cc, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.i66.2
  %i.cd = lshr i64 %2, 16
  %i.ce = trunc i64 %i.cd to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.bl, i8 noundef zeroext %i.ce) #12
  br label %.critedge

bb.y:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.a
  %i.ch = trunc i64 %2 to i32
  store i32 %i.ch, ptr %i.cg, align 4
  br label %bb.z

.critedge44:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.d, %bb.e, %bb.f, %bb.c
  %.040.ph = phi i32 [ 0, %bb.l ], [ 255, %bb.k ], [ 1, %bb.j ], [ -2079653889, %bb.d ], [ -2079653889, %bb.e ], [ -2079653889, %bb.f ], [ -1, %bb.c ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.a ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = xor i32 %.040.ph, -1
  %i.cm = and i32 %i.ck, %i.cl
  %i.cn = trunc i64 %2 to i32
  %i.co = and i32 %.040.ph, %i.cn
  %i.cp = or disjoint i32 %i.cm, %i.co
  store i32 %i.cp, ptr %i.cj, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.lr.ph.split.us.i, %bb.o, %.lr.ph.split.i, %.lr.ph.split.us.i70.preheader, %.lr.ph.split.us.i70.1, %.lr.ph.split.us.i70.2, %bb.w, %.lr.ph.split.i66.preheader, %.lr.ph.split.i66.1, %.lr.ph.split.i66.2, %bb.x, %.lr.ph.split.us.i60.preheader, %.lr.ph.split.us.i60.1, %bb.t, %.lr.ph.split.i56.preheader, %.lr.ph.split.i56.1, %bb.u, %.lr.ph.split.us.i50.preheader, %bb.q, %.lr.ph.split.i46.preheader, %bb.r, %bb.m, %bb.g, %bb.h, %bb.i, %.critedge44
  tail call fastcc void @xilinx_spips_update_cs_lines(ptr noundef nonnull %0)
  tail call fastcc void @xilinx_spips_check_flush(ptr noundef nonnull %0)
  tail call fastcc void @xilinx_spips_update_cs_lines(ptr noundef nonnull %0)
  tail call fastcc void @xilinx_spips_update_ixr(ptr noundef nonnull %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.critedge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xilinx_spips_check_flush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.e = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.d) #12
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 32768
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %xilinx_spips_check_zero_pump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 9 uses
  %i.l = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.k) #12
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 1
  %.not9.i = icmp eq i32 %i.o, 0
  br i1 %.not9.i, label %bb.g, label %xilinx_spips_check_zero_pump.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pr.i = load i32, ptr %i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %.not1011.i = icmp eq i32 %.pr.i, 0
  br i1 %.not1011.i, label %xilinx_spips_check_zero_pump.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1448
  br label %bb.h

bb.h:                                             ; preds = %tx_data_bytes.exit.i, %.lr.ph.i
  %i.r = load i32, ptr %i.p, align 16
  %i.s = load i32, ptr %i.q, align 8
  %i.t = add i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, 253
  br i1 %i.u, label %.lr.ph.split.i.preheader.i, label %xilinx_spips_check_zero_pump.exit

.lr.ph.split.i.preheader.i:                       ; preds = %bb.h
  %i.v = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.k) #12
  br i1 %i.v, label %tx_data_bytes.exit.i, label %.lr.ph.split.i.1.i

.lr.ph.split.i.1.i:                               ; preds = %.lr.ph.split.i.preheader.i
  tail call void @fifo8_push(ptr noundef nonnull %i.k, i8 noundef zeroext 0) #12
  %i.w = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.k) #12
  br i1 %i.w, label %tx_data_bytes.exit.i, label %.lr.ph.split.i.2.i

.lr.ph.split.i.2.i:                               ; preds = %.lr.ph.split.i.1.i
  tail call void @fifo8_push(ptr noundef nonnull %i.k, i8 noundef zeroext 0) #12
  %i.x = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.k) #12
  br i1 %i.x, label %tx_data_bytes.exit.i, label %.lr.ph.split.i.3.i

.lr.ph.split.i.3.i:                               ; preds = %.lr.ph.split.i.2.i
  tail call void @fifo8_push(ptr noundef nonnull %i.k, i8 noundef zeroext 0) #12
  %i.y = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.k) #12
  br i1 %i.y, label %tx_data_bytes.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.3.i
  tail call void @fifo8_push(ptr noundef nonnull %i.k, i8 noundef zeroext 0) #12
  br label %tx_data_bytes.exit.i

tx_data_bytes.exit.i:                             ; preds = %bb.i, %.lr.ph.split.i.3.i, %.lr.ph.split.i.2.i, %.lr.ph.split.i.1.i, %.lr.ph.split.i.preheader.i
  %i.z = load i32, ptr %i.i, align 4
  %i.aa = and i32 %i.z, -4
  %i.ab = add i32 %i.aa, -4                       ; 2 uses
  store i32 %i.ab, ptr %i.i, align 4
  %.not10.i = icmp eq i32 %i.ab, 0
  br i1 %.not10.i, label %xilinx_spips_check_zero_pump.exit, label %bb.h, !llvm.loop !16

xilinx_spips_check_zero_pump.exit:                ; preds = %bb.h, %tx_data_bytes.exit.i, %bb.d, %bb.f, %bb.g
  tail call fastcc void @xilinx_spips_flush_txfifo(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %xilinx_spips_check_zero_pump.exit, %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ad = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.ac) #12
  br i1 %i.ad, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.af = load i32, ptr %i.ae, align 4
  %.not9 = icmp eq i32 %i.af, 0
  br i1 %.not9, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call fastcc void @xilinx_spips_update_ixr(ptr noundef nonnull %0)
  ret void
}

declare zeroext i8 @fifo8_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xilinx_spips_flush_txfifo(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 19 uses
  %i.b = tail call ptr @object_dynamic_cast(ptr noundef %0, ptr noundef nonnull @.str.25) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i16 0, ptr %i.a, align 2
  %i.d = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.c) #12
  br i1 %i.d, label %.thread121, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1374 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1373 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1468 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1382 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1381 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br label %bb.b

.thread121:                                       ; preds = %bb.an, %bb.a
  call fastcc void @xilinx_spips_update_ixr(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

bb.b:                                             ; preds = %.lr.ph132, %bb.an
  %i.q = load i8, ptr %i.e, align 2               ; 2 uses
  switch i8 %i.q, label %bb.g [
    i8 0, label %.peel.begin
    i8 -18, label %.peel.begin
  ]

.peel.begin:                                      ; preds = %bb.b, %bb.b
  %i.r = load i32, ptr %i.f, align 8
  %i.s = and i32 %i.r, 1610612736
  %or.cond.not.i.peel = icmp eq i32 %i.s, 1610612736
  br i1 %or.cond.not.i.peel, label %num_effective_busses.exit.peel, label %num_effective_busses.exit.thread.peel

num_effective_busses.exit.peel:                   ; preds = %.peel.begin
  %i.t = load i8, ptr %i.g, align 1
  %.not159 = icmp eq i8 %i.t, 0
  br i1 %.not159, label %num_effective_busses.exit105, label %num_effective_busses.exit.thread.peel

num_effective_busses.exit.thread.peel:            ; preds = %.peel.begin, %num_effective_busses.exit.peel
  %i.u = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.c) #12
  br i1 %i.u, label %.peel.next, label %bb.c

bb.c:                                             ; preds = %num_effective_busses.exit.thread.peel
  %i.v = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.c) #12
  store i8 %i.v, ptr %i.a, align 2
  br label %.peel.next

.peel.next:                                       ; preds = %bb.c, %num_effective_busses.exit.thread.peel
  %i.w = load i32, ptr %i.f, align 8
  %i.x = and i32 %i.w, 1610612736
  %or.cond.not.i161 = icmp eq i32 %i.x, 1610612736
  br i1 %or.cond.not.i161, label %num_effective_busses.exit, label %num_effective_busses.exit105

num_effective_busses.exit:                        ; preds = %.peel.next, %bb.f
  %indvars.iv162 = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %.peel.next ] ; 3 uses
  %i.y = load i8, ptr %i.g, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv162, %i.z
  br i1 %i.aa, label %bb.d, label %.loopexit138.loopexit

bb.d:                                             ; preds = %num_effective_busses.exit
  %i.ab = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.c) #12
  br i1 %i.ab, label %bb.f, label %bb.e
end_hunk_0
begin_hunk_1_@xilinx_qspips_realize
define internal void @xilinx_qspips_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS) #12 ; 6 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1373
  store i8 2, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1372
  store i8 2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  store i8 4, ptr %i.f, align 16
  tail call void @xilinx_spips_realize(ptr noundef %0, ptr noundef %1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.g, ptr noundef %i.a, ptr noundef nonnull @lqspi_ops, ptr noundef %i.a, ptr noundef nonnull @.str.38, i64 noundef 33554432) #12
  tail call void @sysbus_init_mmio(ptr noundef %i.c, ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2752
  store i64 -1, ptr %i.h, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @lqspi_read(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 %3, i64 %4) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2752
  %i.c = load i64, ptr %i.b, align 16             ; 3 uses
  %.not25 = icmp ult i64 %1, %i.c
  %i.d = add i64 %i.c, 1020
  %.not1826 = icmp ugt i64 %1, %i.d
  %or.cond27 = or i1 %.not25, %.not1826
  br i1 %or.cond27, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = and i64 %1, -1024
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1373 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1628 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1728
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %lqspi_load_cache.exit, %bb.a
  %.lcssa24 = phi ptr [ %i.a, %bb.a ], [ %i.br, %lqspi_load_cache.exit ]
  %.lcssa = phi i64 [ %i.c, %bb.a ], [ %i.bt, %lqspi_load_cache.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa24, i64 1728
  %i.n = sub nuw i64 %1, %.lcssa
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  store i64 %i.q, ptr %2, align 8
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %lqspi_load_cache.exit
  %i.r = load i32, ptr %i.f, align 8
  %i.s = and i32 %i.r, 1610612736
  %or.cond.not.i.i = icmp eq i32 %i.s, 1610612736
  br i1 %or.cond.not.i.i, label %bb.c, label %num_effective_busses.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.g, align 1
  %i.u = zext i8 %i.t to i64
  br label %num_effective_busses.exit.i

num_effective_busses.exit.i:                      ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %i.u, %bb.c ], [ 1, %bb.b ]
  %i.w = udiv i64 %i.e, %i.v                      ; 6 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = ashr i32 %i.x, 24                        ; 2 uses
  %i.z = load i32, ptr %i.h, align 4              ; 2 uses
  %i.aa = load i64, ptr %i.i, align 16            ; 2 uses
  %i.ab = icmp ult i64 %1, %i.aa
  %i.ac = add i64 %i.aa, 1020
  %i.ad = icmp ugt i64 %1, %i.ac
  %or.cond.i = or i1 %i.ab, %i.ad
  br i1 %or.cond.i, label %bb.d, label %lqspi_load_cache.exit

bb.d:                                             ; preds = %num_effective_busses.exit.i
  store i64 -1, ptr %i.i, align 16
  %i.ae = and i32 %i.z, -268435457
  %.not.i = icmp eq i32 %i.y, 0
  %i.af = select i1 %.not.i, i32 0, i32 268435456
  %i.ag = or disjoint i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.h, align 4
  tail call void @fifo8_reset(ptr noundef nonnull %i.j) #12
  tail call void @fifo8_reset(ptr noundef nonnull %i.k) #12
  %i.ah = load i32, ptr %i.f, align 8
  %i.ai = trunc i32 %i.ah to i8                   ; 2 uses
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.ai) #12
  %i.aj = load i32, ptr %i.f, align 8
  %i.ak = and i32 %i.aj, 134217728
  %.not68.i = icmp eq i32 %i.ak, 0
  br i1 %.not68.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = trunc nsw i32 %i.y to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.al) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = lshr i64 %i.w, 16
  %i.an = trunc i64 %i.am to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.an) #12
  %i.ao = lshr i64 %i.w, 8
  %i.ap = trunc i64 %i.ao to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.ap) #12
  %i.aq = trunc i64 %i.w to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.aq) #12
  switch i8 %i.ai, label %bb.j [
    i8 3, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 2, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 -94, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 50, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 19, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 18, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 52, label %xilinx_spips_num_dummy_bytes.exit.i
    i8 11, label %bb.g
    i8 12, label %bb.g
    i8 59, label %bb.g
    i8 60, label %bb.g
    i8 107, label %bb.g
    i8 108, label %bb.g
    i8 -69, label %bb.h
    i8 -68, label %bb.h
    i8 -21, label %bb.i
    i8 -20, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  br label %xilinx_spips_num_dummy_bytes.exit.i

bb.h:                                             ; preds = %bb.f, %bb.f
  br label %xilinx_spips_num_dummy_bytes.exit.i

bb.i:                                             ; preds = %bb.f, %bb.f
  br label %xilinx_spips_num_dummy_bytes.exit.i

bb.j:                                             ; preds = %bb.f
  br label %xilinx_spips_num_dummy_bytes.exit.i

xilinx_spips_num_dummy_bytes.exit.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ar = phi i32 [ 0, %bb.j ], [ 0, %bb.f ], [ -1, %bb.g ], [ 0, %bb.f ], [ -1, %bb.h ], [ -1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ]
  %.0.i.i = phi i32 [ -1, %bb.j ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.f ], [ 2, %bb.h ], [ 4, %bb.i ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ] ; 2 uses
  %i.as = load i32, ptr %i.f, align 8             ; 2 uses
  %i.at = and i32 %i.as, 33554432
  %.not69.i = icmp eq i32 %i.at, 0
  br i1 %.not69.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %xilinx_spips_num_dummy_bytes.exit.i
  %i.au = lshr i32 %i.as, 16
  %i.av = trunc i32 %i.au to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext %i.av) #12
  %spec.select.i = add nsw i32 %.0.i.i, %i.ar
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %xilinx_spips_num_dummy_bytes.exit.i
  %.060.i = phi i32 [ %.0.i.i, %xilinx_spips_num_dummy_bytes.exit.i ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.aw = icmp slt i32 %.060.i, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.f, align 8
  %i.ay = lshr i32 %i.ax, 8
  %i.az = and i32 %i.ay, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.161.i = phi i32 [ %i.az, %bb.m ], [ %.060.i, %bb.l ] ; 2 uses
  %.not79.i = icmp eq i32 %.161.i, 0
  br i1 %.not79.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.06274.i = phi i32 [ %i.ba, %.lr.ph.i ], [ 0, %bb.n ]
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext 0) #12
  %i.ba = add nuw nsw i32 %.06274.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %.161.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  tail call fastcc void @xilinx_spips_update_cs_lines(ptr noundef nonnull %0)
  tail call fastcc void @xilinx_spips_flush_txfifo(ptr noundef nonnull %0)
  tail call void @fifo8_reset(ptr noundef nonnull %i.k) #12
  br label %.preheader.i

.loopexit.i:                                      ; preds = %rx_data_bytes.exit.i
  %i.bb = icmp samesign ult i64 %indvars.iv, 960
  br i1 %i.bb, label %.preheader.i, label %bb.r, !llvm.loop !22

.preheader.i:                                     ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ 0, %._crit_edge.i ] ; 3 uses
  br label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %tx_data_bytes.exit.i, %.preheader.i
  %.16375.i = phi i32 [ 0, %.preheader.i ], [ %i.bd, %tx_data_bytes.exit.i ]
  %i.bc = tail call zeroext i1 @fifo8_is_full(ptr noundef nonnull %i.j) #12
  br i1 %i.bc, label %tx_data_bytes.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.preheader.i
  tail call void @fifo8_push(ptr noundef nonnull %i.j, i8 noundef zeroext 0) #12
  br label %tx_data_bytes.exit.i

tx_data_bytes.exit.i:                             ; preds = %bb.o, %.lr.ph.split.i.preheader.i
  %i.bd = add nuw nsw i32 %.16375.i, 1            ; 2 uses
  %exitcond80.not.i = icmp eq i32 %i.bd, 64
  br i1 %exitcond80.not.i, label %bb.p, label %.lr.ph.split.i.preheader.i, !llvm.loop !23

bb.p:                                             ; preds = %tx_data_bytes.exit.i
  tail call fastcc void @xilinx_spips_flush_txfifo(ptr noundef nonnull %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %rx_data_bytes.exit.i, %bb.p
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %rx_data_bytes.exit.i ], [ %indvars.iv, %bb.p ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.be = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.k) #12
  br i1 %i.be, label %rx_data_bytes.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv35
  %i.bg = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.k) #12
  store i8 %i.bg, ptr %i.bf, align 1
  br label %rx_data_bytes.exit.i

rx_data_bytes.exit.i:                             ; preds = %bb.q, %.lr.ph.i.i
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next36, %indvars.iv.next
  br i1 %exitcond81.not.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !24

bb.r:                                             ; preds = %.loopexit.i
  %i.bh = load i32, ptr %i.h, align 4
  %i.bi = or i32 %i.bh, %i.z
  %i.bj = and i32 %i.bi, -268435457
  store i32 %i.bj, ptr %i.h, align 4
  tail call fastcc void @xilinx_spips_update_cs_lines(ptr noundef nonnull %0)
  %i.bk = load i32, ptr %i.f, align 8
  %i.bl = and i32 %i.bk, 1610612736
  %or.cond.not.i72.i = icmp eq i32 %i.bl, 1610612736
  br i1 %or.cond.not.i72.i, label %bb.s, label %num_effective_busses.exit73.i

bb.s:                                             ; preds = %bb.r
  %i.bm = load i8, ptr %i.g, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = mul i64 %i.w, %i.bn
  br label %num_effective_busses.exit73.i

num_effective_busses.exit73.i:                    ; preds = %bb.s, %bb.r
  %i.bp = phi i64 [ %i.bo, %bb.s ], [ %i.w, %bb.r ]
  %sext.i = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i, 32
  store i64 %i.bq, ptr %i.i, align 16
  br label %lqspi_load_cache.exit

lqspi_load_cache.exit:                            ; preds = %num_effective_busses.exit.i, %num_effective_busses.exit73.i
  %i.br = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2752
  %i.bt = load i64, ptr %i.bs, align 16           ; 3 uses
  %.not = icmp ult i64 %1, %i.bt
  %i.bu = add i64 %i.bt, 1020
  %.not18 = icmp ugt i64 %1, %i.bu
  %or.cond = or i1 %.not, %.not18
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @lqspi_write(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 %4) #0 {
bb.a:
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 2048
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %3, 3
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.lqspi_write, i32 noundef %i.c, i64 noundef %1, i64 noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 1
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xilinx_qspips_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS) #12 ; 2 uses
  tail call void @xilinx_spips_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 poison)
  %.mask = and i64 %1, -4
  %i.c = icmp eq i64 %.mask, 160
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2752
  store i64 -1, ptr %i.d, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1656
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 524288
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  tail call void @fifo8_reset(ptr noundef nonnull %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_qspips_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef 144, ptr noundef nonnull @__func__.XLNX_ZYNQMP_QSPIPS) #12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2784
  %i.c = tail call ptr @object_property_add_link(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.b, ptr noundef nonnull @object_property_allow_set_link, i32 noundef 1) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_qspips_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #12 ; 4 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS_CLASS) #12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @xlnx_zynqmp_qspips_realize, ptr %i.c, align 8
  tail call void @device_class_set_legacy_reset(ptr noundef %i.a, ptr noundef nonnull @xlnx_zynqmp_qspips_reset) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @vmstate_xlnx_zynqmp_qspips, ptr %i.d, align 8
  tail call void @device_class_set_props_n(ptr noundef %i.a, ptr noundef nonnull @xilinx_zynqmp_qspips_properties, i64 noundef 1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr @xlnx_zynqmp_qspips_ops, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 512, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 256, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 256, ptr %i.h, align 4
  ret void
}

declare ptr @object_property_add_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @object_property_allow_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_qspips_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef 144, ptr noundef nonnull @__func__.XLNX_ZYNQMP_QSPIPS) #12 ; 5 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #12
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS_GET_CLASS) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 2048
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 1400, ptr noundef nonnull @__func__.xlnx_zynqmp_qspips_realize, ptr noundef nonnull @.str.46, i32 noundef %i.e, i32 noundef 2048) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS) #12 ; 6 uses
  %i.h = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 142, ptr noundef nonnull @__func__.XILINX_QSPIPS) #12
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1373
  store i8 2, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1372
  store i8 2, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1456
  store i8 4, ptr %i.l, align 16
  tail call void @xilinx_spips_realize(ptr noundef %0, ptr noundef %1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1088 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.m, ptr noundef %i.g, ptr noundef nonnull @lqspi_ops, ptr noundef %i.g, ptr noundef nonnull @.str.38, i64 noundef 33554432) #12
  tail call void @sysbus_init_mmio(ptr noundef %i.i, ptr noundef nonnull %i.m) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2752
  store i64 -1, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3312
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.q = load i32, ptr %i.p, align 8
  tail call void @fifo8_create(ptr noundef nonnull %i.o, i32 noundef %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3336
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %i.t = load i32, ptr %i.s, align 4
  tail call void @fifo8_create(ptr noundef nonnull %i.r, i32 noundef %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  tail call void @fifo8_create(ptr noundef nonnull %i.u, i32 noundef 128) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @xlnx_zynqmp_qspips_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef 144, ptr noundef nonnull @__func__.XLNX_ZYNQMP_QSPIPS) #12 ; 18 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 140, ptr noundef nonnull @__func__.XILINX_SPIPS) #12 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1464 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, i8 noundef 0, i64 noundef 256, i1 noundef false) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  tail call void @fifo8_reset(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1432
  tail call void @fifo8_reset(ptr noundef nonnull %i.e) #12
  %i.f = load i32, ptr %i.c, align 8
  %i.g = or i32 %i.f, 131072
  store i32 %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1500
  store i32 255, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1508
  store i32 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1716
  store i32 17367302, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1624
  store i32 60818155, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1380
  store i8 1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1381
  store i8 1, ptr %i.n, align 1
end_hunk_1

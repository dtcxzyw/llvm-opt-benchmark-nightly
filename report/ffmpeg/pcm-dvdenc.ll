Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcm-dvdenc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pcm_dvd_encode_init:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !33
  %i.z = sdiv i32 2008, %i.x
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.m)
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.split, label %bb.h

.split:                                           ; preds = %bb.e
  %i.ac = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.m, i1 true) ; 2 uses
  switch i32 %i.ac, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %.split, %.split, %.split
  %.zext = lshr exact i32 %i.k, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.zext, ptr %i.ad, align 4, !tbaa !33
  %i.ae = lshr i32 4, %i.ac
  br label %bb.i

bb.g:                                             ; preds = %.split
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.k, ptr %i.af, align 4, !tbaa !33
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %.split
  %i.ag = shl nsw i32 %i.m, 2
  %i.ah = mul nsw i32 %i.ag, %i.k
  %i.ai = ashr exact i32 %i.ah, 3                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sink51 = phi i32 [ 4, %bb.h ], [ 1, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %.sink = phi i32 [ %i.m, %bb.h ], [ 2, %bb.g ], [ 1, %bb.f ]
  %i.ak = phi i32 [ %i.ai, %bb.h ], [ %i.k, %bb.g ], [ %.zext, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink51, ptr %i.al, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sink, ptr %i.am, align 4, !tbaa !34
  %i.an = sdiv i32 2008, %i.ak
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = add nsw i32 %i.ao, %.sink51
  %i.aq = sub nsw i32 0, %.sink51
  %i.ar = and i32 %i.ap, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.0 = phi i32 [ %i.z, %bb.d ], [ %i.ar, %bb.i ]
  store i8 12, ptr %i.b, align 4, !tbaa !35
  %i.as = shl nuw nsw i32 %spec.select, 6
  %i.at = or disjoint i32 %i.as, %.
  %i.au = load i32, ptr %i.l, align 4, !tbaa !30
  %i.av = add i32 %i.au, 255
  %i.aw = or i32 %i.av, %i.at
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 -128, ptr %i.az, align 2, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %.0, ptr %i.ba, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.049 = phi i32 [ -22, %bb.b ], [ 0, %bb.j ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @pcm_dvd_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = sdiv i32 %i.d, %i.h                      ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, %i.j
  %i.o = add nsw i64 %i.n, 3
  %i.p = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.o, i32 noundef 0) #8 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 4 dereferenceable(3) %i.b, i64 3, i1 false)
  %i.t = load ptr, ptr %2, align 8, !tbaa !52     ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 2
  br i1 %i.y, label %bytestream2_init_writer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 151) #8
  tail call void @abort() #9
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bb.b
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -3     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  switch i32 %i.ad, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %bb.g
  ]

.preheader:                                       ; preds = %bytestream2_init_writer.exit
  %i.ae = mul i32 %i.f, %i.d                      ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64               ; 3 uses
  %xtraiter = and i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i32 %i.ae, -2
  br label %bb.d

bb.d:                                             ; preds = %bytestream2_put_be16.exit67.1, %.preheader.new
  %.sroa.57.0 = phi i32 [ 0, %.preheader.new ], [ %.sroa.57.11.1, %bytestream2_put_be16.exit67.1 ]
  %.sroa.0.0 = phi ptr [ %i.v, %.preheader.new ], [ %.sroa.0.11.1, %bytestream2_put_be16.exit67.1 ] ; 4 uses
  %.044 = phi ptr [ %i.t, %.preheader.new ], [ %i.ao, %bytestream2_put_be16.exit67.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.new ], [ %niter.next.1, %bytestream2_put_be16.exit67.1 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.044, i64 2
  %.not.i66 = icmp eq i32 %.sroa.57.0, 0
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = icmp sgt i64 %i.aj, 1
  %or.cond = select i1 %.not.i66, i1 %i.ak, i1 false ; 2 uses
  br i1 %or.cond, label %bb.e, label %bytestream2_put_be16.exit67

bb.e:                                             ; preds = %bb.d
  %i.al = load i16, ptr %.044, align 2, !tbaa !55
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.al)
  store i16 %i.am, ptr %.sroa.0.0, align 1, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2
  br label %bytestream2_put_be16.exit67

bytestream2_put_be16.exit67:                      ; preds = %bb.d, %bb.e
  %.sroa.0.11 = phi ptr [ %i.an, %bb.e ], [ %.sroa.0.0, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.044, i64 4 ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.0.11 to i64
  %i.aq = sub i64 %i.af, %i.ap
  %i.ar = icmp sgt i64 %i.aq, 1
  %or.cond.1 = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %or.cond.1, label %bb.f, label %bytestream2_put_be16.exit67.1

bb.f:                                             ; preds = %bytestream2_put_be16.exit67
  %i.as = load i16, ptr %i.ah, align 2, !tbaa !55
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  store i16 %i.at, ptr %.sroa.0.11, align 1, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 2
  br label %bytestream2_put_be16.exit67.1

bytestream2_put_be16.exit67.1:                    ; preds = %bb.f, %bytestream2_put_be16.exit67
  %.sroa.57.11.1 = phi i32 [ 0, %bb.f ], [ 1, %bytestream2_put_be16.exit67 ] ; 2 uses
  %.sroa.0.11.1 = phi ptr [ %i.au, %bb.f ], [ %.sroa.0.11, %bytestream2_put_be16.exit67 ] ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !41

bb.g:                                             ; preds = %bytestream2_init_writer.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !30
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %.preheader190, label %.preheader192

.preheader192:                                    ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ay = ptrtoint ptr %i.ab to i64               ; 8 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !34 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader192.split

.preheader190:                                    ; preds = %bb.g
  %i.bb = ptrtoint ptr %i.ab to i64               ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader190, %bytestream2_put_byte.exit76.1
  %.sroa.57.1 = phi i32 [ %.sroa.57.16.1, %bytestream2_put_byte.exit76.1 ], [ 0, %.preheader190 ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.16.1, %bytestream2_put_byte.exit76.1 ], [ %i.v, %.preheader190 ] ; 11 uses
  %.045 = phi i32 [ %i.dd, %bytestream2_put_byte.exit76.1 ], [ %i.i, %.preheader190 ]
  %.043 = phi ptr [ %i.dc, %bytestream2_put_byte.exit76.1 ], [ %i.t, %.preheader190 ] ; 9 uses
  %.not.i64 = icmp eq i32 %.sroa.57.1, 0
  %i.bc = ptrtoint ptr %.sroa.0.1 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp sgt i64 %i.bd, 1
  %or.cond185 = select i1 %.not.i64, i1 %i.be, i1 false
  br i1 %or.cond185, label %bb.i, label %bytestream2_put_byte.exit76.1

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %.043, align 4, !tbaa !57
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = trunc nuw i32 %i.bg to i16
  %i.bi = tail call i16 @llvm.bswap.i16(i16 %i.bh)
  store i16 %i.bi, ptr %.sroa.0.1, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bb, %i.bl
  %i.bn = icmp sgt i64 %i.bm, 1
  br i1 %i.bn, label %bb.j, label %bytestream2_put_byte.exit76.1

bb.j:                                             ; preds = %bb.i
  %4 = getelementptr i8, ptr %.043, i64 6
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %5)
  store i16 %i.bo, ptr %i.bj, align 1, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 3 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bb, %i.bq
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bytestream2_put_byte.exit76.1

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %.043, align 4, !tbaa !57
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 3 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bb, %i.bx
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %bytestream2_put_byte.exit76, label %bytestream2_put_byte.exit76.1

bytestream2_put_byte.exit76:                      ; preds = %bb.k
  %i.ca = load i32, ptr %i.bk, align 4, !tbaa !57
  %i.cb = lshr i32 %i.ca, 8
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bw, align 1, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 6 ; 3 uses
  %.pre = ptrtoint ptr %i.cd to i64
  %.pre209 = sub i64 %i.bb, %.pre
  %i.ce = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %i.cf = icmp sgt i64 %.pre209, 1
  br i1 %i.cf, label %bb.l, label %bytestream2_put_byte.exit76.1

bb.l:                                             ; preds = %bytestream2_put_byte.exit76
  %6 = getelementptr i8, ptr %.043, i64 10
  %7 = load i16, ptr %6, align 2, !tbaa !57
  %i.cg = tail call i16 @llvm.bswap.i16(i16 %7)
  store i16 %i.cg, ptr %i.cd, align 1, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.043, i64 12
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.bb, %i.cj
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %bb.m, label %bytestream2_put_byte.exit76.1

bb.m:                                             ; preds = %bb.l
  %8 = getelementptr i8, ptr %.043, i64 14
  %9 = load i16, ptr %8, align 2, !tbaa !57
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %9)
  store i16 %i.cm, ptr %i.ch, align 1, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 10 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bb, %i.co
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %bb.n, label %bytestream2_put_byte.exit76.1

bb.n:                                             ; preds = %bb.m
  %i.cr = load i32, ptr %i.ce, align 4, !tbaa !57
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.cn, align 1, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 11 ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.bb, %i.cv
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %bb.o, label %bytestream2_put_byte.exit76.1

bb.o:                                             ; preds = %bb.n
  %i.cy = load i32, ptr %i.ci, align 4, !tbaa !57
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  store i8 %i.da, ptr %i.cu, align 1, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 12
  br label %bytestream2_put_byte.exit76.1

bytestream2_put_byte.exit76.1:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.o, %bb.n, %bb.m, %bb.l, %bytestream2_put_byte.exit76
  %.sroa.57.16.1 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bytestream2_put_byte.exit76 ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ]
  %.sroa.0.16.1 = phi ptr [ %i.db, %bb.o ], [ %i.cu, %bb.n ], [ %i.cn, %bb.m ], [ %i.ch, %bb.l ], [ %i.cd, %bytestream2_put_byte.exit76 ], [ %.sroa.0.1, %bb.h ], [ %i.bj, %bb.i ], [ %i.bp, %bb.j ], [ %i.bw, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.dd = add nsw i32 %.045, -1                   ; 2 uses
  %.not54 = icmp eq i32 %i.dd, 0
  br i1 %.not54, label %.loopexit, label %bb.h, !llvm.loop !42

.preheader192.splitthread-pre-split:              ; preds = %._crit_edge
  %.pr = load i32, ptr %i.ax, align 4, !tbaa !34
  br label %.preheader192.split

.preheader192.split:                              ; preds = %.preheader192, %.preheader192.splitthread-pre-split
  %i.de = phi i32 [ %.pr, %.preheader192.splitthread-pre-split ], [ %i.az, %.preheader192 ] ; 2 uses
  %.sroa.57.3 = phi i32 [ %.sroa.57.4.lcssa, %.preheader192.splitthread-pre-split ], [ 0, %.preheader192 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.4.lcssa, %.preheader192.splitthread-pre-split ], [ %i.v, %.preheader192 ] ; 2 uses
  %.146 = phi i32 [ %i.df, %.preheader192.splitthread-pre-split ], [ %i.i, %.preheader192 ]
  %.2 = phi ptr [ %.3.lcssa, %.preheader192.splitthread-pre-split ], [ %i.t, %.preheader192 ] ; 2 uses
  %.not194 = icmp eq i32 %i.de, 0
  br i1 %.not194, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bytestream2_put_byte.exit, %.preheader192.split
  %.sroa.57.4.lcssa = phi i32 [ %.sroa.57.3, %.preheader192.split ], [ %.sroa.57.12, %bytestream2_put_byte.exit ]
  %.sroa.0.4.lcssa = phi ptr [ %.sroa.0.3, %.preheader192.split ], [ %.sroa.0.12, %bytestream2_put_byte.exit ]
  %.3.lcssa = phi ptr [ %.2, %.preheader192.split ], [ %i.fi, %bytestream2_put_byte.exit ]
  %i.df = add nsw i32 %.146, -1                   ; 2 uses
  %.not52 = icmp eq i32 %i.df, 0
  br i1 %.not52, label %.loopexit, label %.preheader192.splitthread-pre-split, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader192.split, %bytestream2_put_byte.exit
  %.0198 = phi i32 [ %i.fj, %bytestream2_put_byte.exit ], [ %i.de, %.preheader192.split ]
  %.3197 = phi ptr [ %i.fi, %bytestream2_put_byte.exit ], [ %.2, %.preheader192.split ] ; 9 uses
  %.sroa.0.4196 = phi ptr [ %.sroa.0.12, %bytestream2_put_byte.exit ], [ %.sroa.0.3, %.preheader192.split ] ; 11 uses
  %.sroa.57.4195 = phi i32 [ %.sroa.57.12, %bytestream2_put_byte.exit ], [ %.sroa.57.3, %.preheader192.split ]
  %.not.i60 = icmp eq i32 %.sroa.57.4195, 0
  %i.dg = ptrtoint ptr %.sroa.0.4196 to i64
  %i.dh = sub i64 %i.ay, %i.dg
  %i.di = icmp sgt i64 %i.dh, 1
  %or.cond189 = select i1 %.not.i60, i1 %i.di, i1 false
  br i1 %or.cond189, label %bb.p, label %bytestream2_put_byte.exit

bb.p:                                             ; preds = %.lr.ph
  %i.dj = load i32, ptr %.3197, align 4, !tbaa !57
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc nuw i32 %i.dk to i16
  %i.dm = tail call i16 @llvm.bswap.i16(i16 %i.dl)
  store i16 %i.dm, ptr %.sroa.0.4196, align 1, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 2 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.3197, i64 4
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.ay, %i.dp
  %i.dr = icmp sgt i64 %i.dq, 1
  br i1 %i.dr, label %bb.q, label %bytestream2_put_byte.exit

bb.q:                                             ; preds = %bb.p
  %10 = getelementptr i8, ptr %.3197, i64 6
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %i.ds = tail call i16 @llvm.bswap.i16(i16 %11)
  store i16 %i.ds, ptr %i.dn, align 1, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.3197, i64 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.ay, %i.dv
  %i.dx = icmp sgt i64 %i.dw, 1
  br i1 %i.dx, label %bb.r, label %bytestream2_put_byte.exit

bb.r:                                             ; preds = %bb.q
  %12 = getelementptr i8, ptr %.3197, i64 10
  %13 = load i16, ptr %12, align 2, !tbaa !57
  %i.dy = tail call i16 @llvm.bswap.i16(i16 %13)
  store i16 %i.dy, ptr %i.dt, align 1, !tbaa !35
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 6 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.3197, i64 12
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ay, %i.eb
  %i.ed = icmp sgt i64 %i.ec, 1
  br i1 %i.ed, label %bb.s, label %bytestream2_put_byte.exit

bb.s:                                             ; preds = %bb.r
  %14 = getelementptr i8, ptr %.3197, i64 14
  %15 = load i16, ptr %14, align 2, !tbaa !57
  %i.ee = tail call i16 @llvm.bswap.i16(i16 %15)
  store i16 %i.ee, ptr %i.dz, align 1, !tbaa !35
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 8 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.ay, %i.eg
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %bb.t, label %bytestream2_put_byte.exit

bb.t:                                             ; preds = %bb.s
  %i.ej = load i32, ptr %.3197, align 4, !tbaa !57
  %i.ek = lshr i32 %i.ej, 8
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 9 ; 3 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.ay, %i.en
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %bb.u, label %bytestream2_put_byte.exit

bb.u:                                             ; preds = %bb.t
  %i.eq = load i32, ptr %i.do, align 4, !tbaa !57
  %i.er = lshr i32 %i.eq, 8
  %i.es = trunc i32 %i.er to i8
  store i8 %i.es, ptr %i.em, align 1, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 10 ; 3 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.ay, %i.eu
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %bb.v, label %bytestream2_put_byte.exit

bb.v:                                             ; preds = %bb.u
  %i.ex = load i32, ptr %i.du, align 4, !tbaa !57
  %i.ey = lshr i32 %i.ex, 8
  %i.ez = trunc i32 %i.ey to i8
  store i8 %i.ez, ptr %i.et, align 1, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 11 ; 3 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.ay, %i.fb
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %bb.w, label %bytestream2_put_byte.exit

bb.w:                                             ; preds = %bb.v
  %i.fe = load i32, ptr %i.ea, align 4, !tbaa !57
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = trunc i32 %i.ff to i8
  store i8 %i.fg, ptr %i.fa, align 1, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.4196, i64 12
  br label %bytestream2_put_byte.exit

bytestream2_put_byte.exit:                        ; preds = %.lr.ph, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.57.12 = phi i32 [ 0, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %.lr.ph ] ; 2 uses
  %.sroa.0.12 = phi ptr [ %i.fh, %bb.w ], [ %i.fa, %bb.v ], [ %i.et, %bb.u ], [ %i.em, %bb.t ], [ %i.ef, %bb.s ], [ %i.dz, %bb.r ], [ %i.dt, %bb.q ], [ %i.dn, %bb.p ], [ %.sroa.0.4196, %.lr.ph ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.3197, i64 16 ; 2 uses
  %i.fj = add nsw i32 %.0198, -1                  ; 2 uses
  %.not = icmp eq i32 %i.fj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

.loopexit.loopexit.unr-lcssa:                     ; preds = %bytestream2_put_be16.exit67.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %.sroa.57.0.epil.init = phi i32 [ 0, %.preheader ], [ %.sroa.57.11.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.0.0.epil.init = phi ptr [ %i.v, %.preheader ], [ %.sroa.0.11.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.044.epil.init = phi ptr [ %i.t, %.preheader ], [ %i.ao, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod230 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %.not.i66.epil = icmp eq i32 %.sroa.57.0.epil.init, 0
  %i.fk = ptrtoint ptr %.sroa.0.0.epil.init to i64
  %i.fl = sub i64 %i.af, %i.fk
  %i.fm = icmp sgt i64 %i.fl, 1
  %or.cond.epil = select i1 %.not.i66.epil, i1 %i.fm, i1 false
  br i1 %or.cond.epil, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.epil.preheader
  %i.fn = load i16, ptr %.044.epil.init, align 2, !tbaa !55
  %i.fo = tail call i16 @llvm.bswap.i16(i16 %i.fn)
  store i16 %i.fo, ptr %.sroa.0.0.epil.init, align 1, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bytestream2_put_byte.exit76.1, %.loopexit.loopexit.unr-lcssa, %bb.x, %.epil.preheader, %.preheader192, %bytestream2_init_writer.exit
  store i32 1, ptr %3, align 4, !tbaa !57
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.loopexit
  %.048 = phi i32 [ 0, %.loopexit ], [ %i.p, %bb.a ]
  ret i32 %.048
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 348}
!30 = !{!27, !6, i64 356}
!31 = !{!"PCMDVDContext", !5, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!32 = !{!31, !6, i64 8}
!33 = !{!31, !6, i64 4}
!34 = !{!31, !6, i64 12}
!35 = !{!5, !5, i64 0}
!36 = !{!27, !6, i64 344}
!37 = !{!27, !6, i64 648}
!38 = !{!27, !6, i64 380}
!39 = !{!27, !13, i64 56}
!40 = !{!27, !6, i64 376}
!41 = distinct !{!41, !56}
!42 = distinct !{!42, !56}
!43 = distinct !{!43, !56, !58}
!44 = distinct !{!44, !56}
!45 = !{!"p2 omnipotent char", !25, i64 0}
!46 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!47 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!48 = !{!"AVFrame", !5, i64 0, !5, i64 64, !45, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !46, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !47, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!49 = !{!48, !6, i64 112}
!50 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!51 = !{!50, !14, i64 24}
!52 = !{!14, !14, i64 0}
!53 = !{!50, !6, i64 32}
!54 = !{!"short", !5, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!6, !6, i64 0}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0

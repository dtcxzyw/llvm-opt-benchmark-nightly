Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avienc?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@avi_write_ix:bb.a
  tail call void @avio_wl64(ptr noundef %i.b, i64 noundef %i.bm) #9
  tail call void @avio_wl32(ptr noundef %i.b, i32 noundef 0) #9
  %i.bn = load i32, ptr %i.bb, align 8, !tbaa !50
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %avi_stream2fourcc.exit
  %i.bp = getelementptr i8, ptr %i.aq, i64 72
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph71, %bb.k
  %.06070 = phi i32 [ 0, %.lr.ph71 ], [ %i.cj, %bb.k ] ; 3 uses
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !82
  %i.bq = lshr i32 %.06070, 14
  %i.br = and i32 %.06070, 16383
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !84
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !87
  %i.bz = add i32 %i.by, 8
  tail call void @avio_wl32(ptr noundef %i.b, i32 noundef %i.bz) #9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !88
  %i.cc = and i32 %i.cb, 2147483647
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !86
  %i.cf = shl i32 %i.ce, 27
  %i.cg = and i32 %i.cf, -2147483648
  %i.ch = or disjoint i32 %i.cg, %i.cc
  %i.ci = xor i32 %i.ch, -2147483648
  tail call void @avio_wl32(ptr noundef %i.b, i32 noundef %i.ci) #9
  %i.cj = add nuw nsw i32 %.06070, 1              ; 2 uses
  %i.ck = load i32, ptr %i.bb, align 8, !tbaa !50
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.k, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.k, %avi_stream2fourcc.exit
  %i.cm = tail call i64 @avio_seek(ptr noundef %i.b, i64 noundef 0, i32 noundef 1) #9
  %i.cn = sub nsw i64 %i.cm, %i.ay
  %i.co = trunc i64 %i.cn to i32
  tail call fastcc void @update_odml_entry(ptr noundef nonnull %0, i32 noundef %i.au, i64 noundef %i.ay, i32 noundef %i.co)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.cp = load i32, ptr %i.h, align 4, !tbaa !29
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv.next79, %i.cq
  br i1 %i.cr, label %bb.h, label %._crit_edge74, !llvm.loop !132

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader67, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @avi_write_idx1(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @ff_start_tag(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 5 uses
  %.not66 = icmp eq i32 %i.j, 0
  br i1 %.not66, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 5 uses
  %wide.trip.count = zext i32 %i.j to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %i.j, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.d

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !137
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.c, !llvm.loop !133

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not671 = icmp eq i32 %i.j, 0
  br i1 %.not671, label %.critedge, label %.lr.ph63

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !137
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 0, ptr %i.ad, align 4, !tbaa !137
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 0, ptr %i.aj, align 4, !tbaa !137
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !137
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !134

.lr.ph63:                                         ; preds = %.preheader, %bb.o
  %.03 = phi i32 [ %.3, %bb.o ], [ -1, %.preheader ]
  %.0472 = phi ptr [ %.350, %bb.o ], [ null, %.preheader ]
  %i.aq = phi i32 [ %.pre, %bb.o ], [ %i.j, %.preheader ]
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !35
  %wide.trip.count72 = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph63, %bb.i
  %indvars.iv69 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next70, %bb.i ] ; 3 uses
  %.162 = phi i32 [ %.03, %.lr.ph63 ], [ %.3, %bb.i ] ; 2 uses
  %.04561 = phi i32 [ 1, %.lr.ph63 ], [ %.146, %bb.i ] ; 2 uses
  %.14860 = phi ptr [ %.0472, %.lr.ph63 ], [ %.350, %bb.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv69
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !137 ; 3 uses
  %.not56 = icmp sgt i32 %i.ax, %i.az
  br i1 %.not56, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr i8, ptr %i.av, i64 72
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !82
  %i.bb = sdiv i32 %i.az, 16384
  %i.bc = srem i32 %i.az, 16384
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !84
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.not57 = icmp eq i32 %.04561, 0
  br i1 %.not57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.bk = getelementptr inbounds nuw i8, ptr %.14860, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = trunc nuw nsw i64 %indvars.iv69 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.350 = phi ptr [ %.14860, %bb.e ], [ %i.bh, %bb.h ], [ %.14860, %bb.g ] ; 9 uses
  %.146 = phi i32 [ %.04561, %bb.e ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.3 = phi i32 [ %.162, %bb.e ], [ %i.bn, %bb.h ], [ %.162, %bb.g ] ; 5 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %bb.e, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.i
  %i.bo = icmp eq i32 %.146, 0
  br i1 %i.bo, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.bq = sext i32 %.3 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.bv = load i8, ptr %.350, align 4, !tbaa !78  ; 2 uses
  %.not55 = icmp eq i8 %i.bv, 0
  br i1 %.not55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.350, i64 1
  %1 = load i8, ptr %i.bx, align 1, !tbaa !78
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  %4 = or disjoint i32 %3, %i.bw
  %5 = getelementptr inbounds nuw i8, ptr %.350, i64 2
  %6 = load i8, ptr %5, align 2, !tbaa !78
  %i.by = zext i8 %6 to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %4, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.350, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !78
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw i32 %i.cd, 24
  %i.cf = or disjoint i32 %i.ca, %i.ce
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !56
  %i.cj = sdiv i32 %.3, 10
  %i.ck = add nsw i32 %i.cj, 48
  %i.cl = srem i32 %.3, 10
  switch i32 %i.ci, label %bb.n [
    i32 0, label %avi_stream2fourcc.exit
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %avi_stream2fourcc.exit

bb.n:                                             ; preds = %bb.l
  br label %avi_stream2fourcc.exit

avi_stream2fourcc.exit:                           ; preds = %bb.l, %bb.m, %bb.n
  %.sink13.i = phi i32 [ 7536640, %bb.m ], [ 7798784, %bb.n ], [ 6553600, %bb.l ]
  %.sink.i = phi i32 [ 1644167168, %bb.m ], [ 1644167168, %bb.n ], [ 1660944384, %bb.l ]
  %i.cm = and i32 %i.ck, 255
  %i.cn = shl nsw i32 %i.cl, 8
  %i.co = add nsw i32 %i.cn, 12288
  %i.cp = or disjoint i32 %i.co, %i.cm
  %i.cq = add nuw nsw i32 %.sink13.i, %i.cp
  %i.cr = add nuw nsw i32 %i.cq, %.sink.i
  br label %bb.o

bb.o:                                             ; preds = %avi_stream2fourcc.exit, %bb.k
  %.sink = phi i32 [ %i.cr, %avi_stream2fourcc.exit ], [ %i.cf, %bb.k ]
  tail call void @avio_wl32(ptr noundef nonnull %i.b, i32 noundef %.sink) #9
  %i.cs = getelementptr inbounds nuw i8, ptr %.350, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !86
  tail call void @avio_wl32(ptr noundef nonnull %i.b, i32 noundef %i.ct) #9
  %i.cu = getelementptr inbounds nuw i8, ptr %.350, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !87
  tail call void @avio_wl32(ptr noundef nonnull %i.b, i32 noundef %i.cv) #9
  %i.cw = getelementptr inbounds nuw i8, ptr %.350, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !88
  tail call void @avio_wl32(ptr noundef nonnull %i.b, i32 noundef %i.cx) #9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !137
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !137
  %.pre = load i32, ptr %i.i, align 4, !tbaa !29  ; 2 uses
  %.not67 = icmp eq i32 %.pre, 0
  br i1 %.not67, label %.critedge, label %.lr.ph63, !llvm.loop !136

.critedge:                                        ; preds = %._crit_edge, %bb.o, %.preheader
  tail call void @ff_end_tag(ptr noundef nonnull %i.b, i64 noundef %i.h) #9
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !33
  tail call fastcc void @avi_write_counters(ptr noundef nonnull %0, i32 noundef %i.dc)
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.a
  ret void
}

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_odml_entry(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = sext i32 %1 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.o = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !81
  %i.r = add nsw i64 %i.q, -8
  %i.s = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef %i.r, i32 noundef 0) #9 ; 0 uses
  tail call void @avio_wl32(ptr noundef %i.e, i32 noundef 2019847785) #9
  %i.t = tail call i64 @avio_skip(ptr noundef %i.e, i64 noundef 8) #9 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !89
  %i.y = sub nsw i32 %i.v, %i.x
  tail call void @avio_wl32(ptr noundef %i.e, i32 noundef %i.y) #9
  %i.z = load i32, ptr %i.u, align 8, !tbaa !33
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !89
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = shl nsw i32 %i.ab, 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call i64 @avio_skip(ptr noundef %i.e, i64 noundef %i.ad) #9 ; 0 uses
  tail call void @avio_wl64(ptr noundef %i.e, i64 noundef %2) #9
  tail call void @avio_wl32(ptr noundef %i.e, i32 noundef %3) #9
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  call void @ff_parse_specific_params(ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.j
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = load i32, ptr %i.am, align 8, !tbaa !56
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = load i32, ptr %i.b, align 4             ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %or.cond = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %i.av = sub nsw i64 %i.as, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = urem i32 %i.aw, %i.ap
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !138
  %.not35 = icmp eq i32 %i.az, 0
  br i1 %.not35, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #9
  store i32 1, ptr %i.ay, align 4, !tbaa !138
  %.pre = load i32, ptr %i.b, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ba = phi i32 [ %.pre, %bb.d ], [ %i.ap, %bb.c ], [ %i.ap, %bb.b ]
  %i.bb = udiv i32 %i.aw, %i.ba
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.bd, %bb.f ], [ %i.bb, %bb.e ]
  call void @avio_wl32(ptr noundef %i.e, i32 noundef %.sink) #9
  %i.be = call i64 @avio_seek(ptr noundef %i.e, i64 noundef %i.o, i32 noundef 0) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @avio_wl64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @avi_write_counters(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.h = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
end_hunk_0

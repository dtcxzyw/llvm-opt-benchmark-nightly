Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/format?download=true
inline.NumInlined: 114
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@fmt_analyze:bb.a
  store i32 0, ptr %2, align 1, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !40  ; 5 uses
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %is_regular_fmt.exit.thread56
  store <4 x i8> <i8 0, i8 3, i8 1, i8 2>, ptr %3, align 4
  br label %bb.u

bb.s:                                             ; preds = %is_regular_fmt.exit.thread56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 3, ptr %i.ay, align 4
  %.not35.i = icmp eq i8 %i.au, 0
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %wide.trip.count.i40 = zext i8 %i.au to i64     ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i40, 1
  %i.ba = icmp eq i8 %i.au, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter = and i64 %wide.trip.count.i40, 254
  br label %bb.t

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i42.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i8 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bb = getelementptr inbounds nuw [20 x i8], ptr %i.az, i64 %indvars.iv.i41.epil.init ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !136
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i41.epil.init ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !137
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !74
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.s
  %.pre-phi = phi i64 [ 0, %bb.s ], [ %wide.trip.count.i40, %._crit_edge.i.loopexit.unr-lcssa ], [ %wide.trip.count.i40, %.epil.preheader ]
  call void @qsort(ptr noundef nonnull %7, i64 noundef %.pre-phi, i64 noundef 12, ptr noundef nonnull @cmp_comp) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 50462976, ptr %8, align 4
  %i.bi = load i8, ptr %i.at, align 8, !tbaa !40  ; 3 uses
  %.not36.i = icmp eq i8 %i.bi, 0
  br i1 %.not36.i, label %._crit_edge34.i, label %.lr.ph33.preheader.i

.lr.ph33.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count41.i = zext i8 %i.bi to i64     ; 2 uses
  %xtraiter69 = and i64 %wide.trip.count41.i, 3   ; 3 uses
  %i.bj = icmp ult i8 %i.bi, 4
  br i1 %i.bj, label %.lr.ph33.i.epil.preheader, label %.lr.ph33.preheader.i.new

.lr.ph33.preheader.i.new:                         ; preds = %.lr.ph33.preheader.i
  %unroll_iter72 = and i64 %wide.trip.count41.i, 252
  br label %.lr.ph33.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i39.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i42.1, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter.next.1, %bb.t ]
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.az, i64 %indvars.iv.i41 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !136
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.i41 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !74
  %indvars.iv.next.i42 = or disjoint i64 %indvars.iv.i41, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.az, i64 %indvars.iv.next.i42 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !136
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.next.i42 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !137
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !74
  %indvars.iv.next.i42.1 = add nuw nsw i64 %indvars.iv.i41, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !131

._crit_edge34.loopexit.i.unr-lcssa:               ; preds = %.lr.ph33.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %._crit_edge34.loopexit.i, label %.lr.ph33.i.epil.preheader

.lr.ph33.i.epil.preheader:                        ; preds = %._crit_edge34.loopexit.i.unr-lcssa, %.lr.ph33.preheader.i
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.lr.ph33.preheader.i ], [ %indvars.iv.next39.i.3, %._crit_edge34.loopexit.i.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter69, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph33.i.epil

.lr.ph33.i.epil:                                  ; preds = %.lr.ph33.i.epil, %.lr.ph33.i.epil.preheader
  %indvars.iv38.i.epil = phi i64 [ %indvars.iv38.i.epil.init, %.lr.ph33.i.epil.preheader ], [ %indvars.iv.next39.i.epil, %.lr.ph33.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph33.i.epil ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv38.i.epil
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !138
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv38.i.epil
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !53
  %indvars.iv.next39.i.epil = add nuw nsw i64 %indvars.iv38.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter69
  br i1 %epil.iter.cmp.not, label %._crit_edge34.loopexit.i, label %.lr.ph33.i.epil, !llvm.loop !132

._crit_edge34.loopexit.i:                         ; preds = %.lr.ph33.i.epil, %._crit_edge34.loopexit.i.unr-lcssa
  %.pre.i44 = load i32, ptr %8, align 4, !tbaa !53
  br label %._crit_edge34.i

._crit_edge34.i:                                  ; preds = %._crit_edge34.loopexit.i, %._crit_edge.i
  %i.cc = phi i32 [ %.pre.i44, %._crit_edge34.loopexit.i ], [ 50462976, %._crit_edge.i ]
  store i32 %i.cc, ptr %3, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.u

.lr.ph33.i:                                       ; preds = %.lr.ph33.i, %.lr.ph33.preheader.i.new
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph33.preheader.i.new ], [ %indvars.iv.next39.i.3, %.lr.ph33.i ] ; 6 uses
  %niter73 = phi i64 [ 0, %.lr.ph33.preheader.i.new ], [ %niter73.next.3, %.lr.ph33.i ]
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv38.i
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !138
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv38.i
  store i8 %i.cf, ptr %i.cg, align 4, !tbaa !53
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.next39.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !138
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next39.i
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !53
  %indvars.iv.next39.i.1 = or disjoint i64 %indvars.iv38.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.next39.i.1
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !138
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next39.i.1
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !53
  %indvars.iv.next39.i.2 = or disjoint i64 %indvars.iv38.i, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %indvars.iv.next39.i.2
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !138
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 %indvars.iv.next39.i.2
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !53
  %indvars.iv.next39.i.3 = add nuw nsw i64 %indvars.iv38.i, 4 ; 2 uses
  %niter73.next.3 = add i64 %niter73, 4           ; 2 uses
  %niter73.ncmp.3 = icmp eq i64 %niter73.next.3, %unroll_iter72
  br i1 %niter73.ncmp.3, label %._crit_edge34.loopexit.i.unr-lcssa, label %.lr.ph33.i, !llvm.loop !133

bb.u:                                             ; preds = %._crit_edge34.i, %bb.r
  %i.ct = load i8, ptr %i.at, align 8, !tbaa !40
  %i.cu = icmp ugt i8 %i.ct, 1
  br i1 %i.cu, label %bb.v, label %fmt_analyze_regular.exit

bb.v:                                             ; preds = %bb.u
  %i.cv = load i64, ptr %i.f, align 8, !tbaa !38
  %i.cw = and i64 %i.cv, 16
  %.not.i45 = icmp eq i64 %i.cw, 0
  %spec.select.i46 = zext i1 %.not.i45 to i32
  br label %fmt_analyze_regular.exit

fmt_analyze_regular.exit:                         ; preds = %bb.u, %bb.v
  %.029.i = phi i32 [ %spec.select.i46, %bb.v ], [ 0, %bb.u ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !135
  %i.cz = trunc i32 %i.cy to i8
  store i8 %i.cz, ptr %4, align 1, !tbaa !53
  %i.da = load i8, ptr %i.at, align 8, !tbaa !40
  store i32 %.029.i, ptr %1, align 8, !tbaa !23
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.da, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.4.0..sroa_idx.i, i8 0, i64 27, i1 false)
  br label %bb.y

is_regular_fmt.exit.thread:                       ; preds = %bb.p, %.lr.ph.i, %bb.l, %is_regular_fmt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call fastcc void @fmt_info_irregular(ptr dead_on_unwind noalias writable align 8 %9, i32 noundef %0)
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !140
  %.not35 = icmp eq i8 %i.dc, 0
  br i1 %.not35, label %bb.x, label %bb.w

bb.w:                                             ; preds = %is_regular_fmt.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !65
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  store i32 %i.de, ptr %2, align 1, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !53
  store i32 %i.dg, ptr %3, align 4, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !78
  %i.dj = trunc i32 %i.di to i8
  store i8 %i.dj, ptr %4, align 1, !tbaa !53
  %i.dk = and i32 %i.de, 255
  %.not36 = icmp eq i32 %i.dk, 0
  br i1 %.not36, label %bb.x, label %.sink.split

.sink.split:                                      ; preds = %bb.w
  %10 = bitcast i32 %i.de to <4 x i8>
  %11 = zext <4 x i8> %10 to <4 x i32>
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11) ; 2 uses
  %i.dl = icmp samesign ugt i32 %12, 16
  %i.dm = icmp samesign ugt i32 %12, 8
  %. = select i1 %i.dm, i32 2, i32 1
  %.sink = select i1 %i.dl, i32 3, i32 %.
  store i32 %.sink, ptr %6, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %is_regular_fmt.exit.thread
  %.0 = phi i32 [ -95, %is_regular_fmt.exit.thread ], [ 0, %bb.w ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.y

bb.y:                                             ; preds = %fmt_pixel_type.exit.thread50, %fmt_pixel_type.exit, %bb.e, %bb.b, %bb.c, %bb.a, %bb.x, %fmt_analyze_regular.exit
  %.1 = phi i32 [ -22, %bb.a ], [ -95, %bb.b ], [ 0, %fmt_analyze_regular.exit ], [ %.0, %bb.x ], [ -95, %bb.e ], [ -95, %bb.c ], [ -95, %fmt_pixel_type.exit ], [ -95, %fmt_pixel_type.exit.thread50 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare zeroext i1 @ff_sws_pixel_type_is_int(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @ff_sws_pixel_type_size(i32 noundef) local_unnamed_addr #6

declare i32 @ff_sws_op_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_sws_encode_pixfmt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.SwsReadWriteOp, align 8     ; 6 uses
  %3 = alloca %struct.SwsSwizzleOp, align 4       ; 4 uses
  %4 = alloca %struct.SwsPackOp, align 4          ; 5 uses
  %5 = alloca %struct.SwsShiftOp, align 1         ; 4 uses
  %6 = alloca %struct.SwsOp, align 8              ; 5 uses
  %7 = alloca %struct.SwsOp, align 8              ; 6 uses
  %8 = alloca %struct.SwsOp, align 8              ; 5 uses
  %9 = alloca %struct.SwsOp, align 8              ; 5 uses
  %10 = alloca %struct.SwsOp, align 8             ; 5 uses
  %11 = alloca %struct.SwsOp, align 8             ; 4 uses
  %12 = alloca %struct.SwsOp, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @av_pix_fmt_desc_get(i32 noundef 28) #15
  br label %fmt_desc_decoded.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.d) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38
  %i.j = and i64 %i.i, 2
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %fmt_desc_decoded.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 690) #15
  tail call void @abort() #16
  unreachable

fmt_desc_decoded.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.k = load i32, ptr %i.c, align 8, !tbaa !31
  %i.l = call fastcc i32 @fmt_analyze(i32 noundef %i.k, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.r

bb.e:                                             ; preds = %fmt_desc_decoded.exit
  %i.n = load i32, ptr %2, align 8, !tbaa !50
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %5, align 1, !tbaa !56      ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !23 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.q, i8 0, i64 472, i1 false)
  store i32 7, ptr %6, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.pre.pre, ptr %i.r, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.p, ptr %i.s, align 8, !tbaa !53
  %i.t = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %6) #15 ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !40
  %i.z = icmp ugt i8 %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.aa, i8 0, i64 472, i1 false)
  store i32 9, ptr %7, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.pre.pre, ptr %i.ab, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 8, ptr %i.ac, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) @constinit, i64 64, i1 false), !tbaa.struct !79
  %i.ae = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %7) #15 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.ag, i8 0, i64 472, i1 false)
  store i32 4, ptr %8, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.pre.pre, ptr %i.ah, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load i32, ptr %3, align 4, !tbaa !53
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !53
  %i.ak = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %8) #15 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.am = load i8, ptr %4, align 4, !tbaa !53
  %.not57 = icmp eq i8 %i.am, 0
  %.pre59 = load i32, ptr %i.b, align 4, !tbaa !23 ; 5 uses
  br i1 %.not57, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.an, i8 0, i64 472, i1 false)
  store i32 10, ptr %9, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.pre.pre, ptr %i.ao, align 4, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.pre59, ptr %i.ap, align 8, !tbaa !68
  %i.aq = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %9) #15 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.as, i8 0, i64 472, i1 false)
  store i32 6, ptr %10, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.pre59, ptr %i.at, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = load i32, ptr %4, align 4, !tbaa !53
  store i32 %i.av, ptr %i.au, align 8, !tbaa !53
  %i.aw = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %10) #15 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ay = call i32 @ff_sws_pixel_type_size(i32 noundef %.pre59) #17
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !38
  %i.bc = and i64 %i.bb, 1
  %.not58 = icmp eq i64 %i.bc, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.bd, i8 0, i64 472, i1 false)
  store i32 3, ptr %11, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.pre59, ptr %i.be, align 4, !tbaa !63
  %i.bf = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %11) #15 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.bh, i8 0, i64 440, i1 false)
  store i32 2, ptr %12, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.pre59, ptr %i.bi, align 4, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !65
  %i.bk = call i32 @ff_sws_op_list_append(ptr noundef %0, ptr noundef nonnull %12) #15
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bk, i32 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.e, %bb.g, %bb.i, %bb.m, %bb.l, %bb.p, %bb.j, %fmt_desc_decoded.exit
  %.12 = phi i32 [ %i.l, %fmt_desc_decoded.exit ], [ -95, %bb.e ], [ %spec.select, %bb.q ], [ %i.bf, %bb.p ], [ %i.aw, %bb.m ], [ %i.aq, %bb.l ], [ %i.ak, %bb.j ], [ %i.ae, %bb.i ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
end_hunk_0
begin_hunk_1_@fmt_info_irregular:bb.a
  store <8 x i8> <i8 3, i8 2, i8 1, i8 0, i8 2, i8 10, i8 10, i8 10>, ptr %i.bk, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.bl, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.bm, align 4
  br label %bb.ab

bb.q:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.bn, align 4, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i8> <i8 3, i8 2, i8 0, i8 1, i8 2, i8 10, i8 10, i8 10>, ptr %i.bo, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.bp, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.bq, align 4
  br label %bb.ab

bb.r:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.br, align 4, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i8> <i8 2, i8 0, i8 1, i8 3, i8 10, i8 10, i8 10, i8 2>, ptr %i.bs, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.bu, align 4
  br label %bb.ab

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.bv, align 4, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 2, ptr %i.bx, align 2, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 3, ptr %i.by, align 1, !tbaa !53
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.bz, align 4, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.ca, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.cb, align 1, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 3, ptr %i.cc, align 1, !tbaa !53
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.cd, align 4, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.ce, align 8, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.cf, align 2, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 2, ptr %i.cg, align 1, !tbaa !53
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.ch, align 4, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.ci, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 2, ptr %i.cj, align 1, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.ck, align 2, !tbaa !53
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.cl, align 4, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.cm, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !53
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 3, ptr %i.co, align 1, !tbaa !53
  br label %bb.ab

bb.x:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.cp, align 4, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i8> <i8 1, i8 0, i8 2, i8 3>, ptr %i.cq, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.cs, align 8, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ct, align 4
  br label %bb.ab

bb.y:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.cu, align 4, !tbaa !54
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cv, align 8, !tbaa !53
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 2, ptr %i.cw, align 2, !tbaa !53
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 3, ptr %i.cx, align 1, !tbaa !53
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i32 2, ptr %0, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 4, ptr %i.cy, align 4, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.cz, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.da, align 1, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 3, ptr %i.db, align 1, !tbaa !53
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @cmp_comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 %i.b, %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !74
  %i.j = sub nsw i32 %i.g, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_mul_q64(i64, i64, i64, i64) local_unnamed_addr #6

declare i32 @ff_sws_linear_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_add_q64(i64, i64, i64, i64) local_unnamed_addr #6

declare i32 @av_cmp_q64(i64, i64, i64, i64) local_unnamed_addr #3

declare ptr @av_refstruct_alloc_ext_c(i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #3

declare i32 @ff_sws_filter_generate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(none) }

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
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 omnipotent char", !10, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p2 _ZTS11AVBufferRef", !10, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !10, i64 0}
!16 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"AVFrame", !5, i64 0, !5, i64 64, !11, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 124, !13, i64 136, !13, i64 144, !12, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !14, i64 248, !6, i64 256, !15, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !16, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!20 = !{!19, !6, i64 116}
!21 = !{!"p1 omnipotent char", !9, i64 0}
!22 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!"p1 _ZTS18AVPixFmtDescriptor", !9, i64 0}
!25 = !{!"AVCIExy", !12, i64 0, !12, i64 8}
!26 = !{!"AVPrimaryCoefficients", !25, i64 0, !25, i64 16, !25, i64 32}
!27 = !{!"SwsColor", !6, i64 0, !6, i64 4, !26, i64 8, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80}
!28 = !{!"SwsFormat", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !24, i64 40, !27, i64 48}
!29 = !{!28, !6, i64 8}
!30 = !{!28, !6, i64 12}
!31 = !{!28, !6, i64 16}
!32 = !{!28, !6, i64 20}
!33 = !{!28, !6, i64 24}
!34 = !{!28, !24, i64 40}
!35 = !{!27, !6, i64 0}
!36 = !{!27, !6, i64 4}
!37 = !{!"AVPixFmtDescriptor", !21, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !13, i64 16, !5, i64 24, !21, i64 104}
!38 = !{!37, !13, i64 16}
!39 = !{!28, !6, i64 28}
!40 = !{!37, !5, i64 8}
!41 = !{!28, !6, i64 48}
!42 = !{!37, !5, i64 9}
!43 = !{!37, !5, i64 10}
!44 = !{!28, !6, i64 32}
!45 = !{!28, !6, i64 4}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTS16SwsFilterWeights", !9, i64 0}
!48 = !{!"", !6, i64 0, !47, i64 8, !6, i64 16}
!49 = !{!"SwsReadWriteOp", !6, i64 0, !5, i64 4, !5, i64 5, !48, i64 8}
!50 = !{!49, !6, i64 0}
!51 = !{!28, !6, i64 0}
!52 = !{!28, !6, i64 52}
!53 = !{!5, !5, i64 0}
!54 = !{!49, !5, i64 4}
!55 = !{!"SwsShiftOp", !5, i64 0}
!56 = !{!55, !5, i64 0}
!57 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!58 = !{!57, !6, i64 16}
!59 = !{!13, !13, i64 0}
!60 = !{!"SwsComps", !5, i64 0, !5, i64 16, !5, i64 80}
!61 = !{!"SwsOp", !6, i64 0, !6, i64 4, !5, i64 8, !60, i64 336}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !6, i64 4}
!64 = !{!47, !47, i64 0}
!65 = !{i64 0, i64 4, !23, i64 4, i64 1, !53, i64 5, i64 1, !53, i64 8, i64 4, !23, i64 16, i64 8, !64, i64 24, i64 4, !23}
!66 = !{!"_Bool", !5, i64 0}
!67 = !{!"SwsConvertOp", !6, i64 0, !66, i64 4}
!68 = !{!67, !6, i64 0}
!69 = !{!"SwsClearOp", !5, i64 0, !5, i64 8}
!70 = !{!69, !5, i64 0}
!71 = !{i64 0, i64 8, !59, i64 8, i64 8, !59}
!72 = !{!"comp", !6, i64 0, !6, i64 4, !6, i64 8}
!73 = !{!72, !6, i64 4}
!74 = !{!72, !6, i64 8}
!75 = !{!"SwsSwizzleOp", !5, i64 0}
!76 = !{!"SwsPackOp", !5, i64 0}
!77 = !{!"FmtInfo", !49, i64 0, !75, i64 32, !76, i64 36, !6, i64 40}
!78 = !{!77, !6, i64 40}
!79 = !{i64 0, i64 64, !53}
!80 = !{!66, !66, i64 0}
!81 = !{!"SwsLinearOp", !5, i64 0, !6, i64 320}
!82 = !{!81, !6, i64 320}
!83 = !{!"AVRational64", !13, i64 0, !13, i64 8}
!84 = !{!83, !13, i64 0}
!85 = !{!83, !13, i64 8}
!86 = !{i64 0, i64 80, !53}
!87 = !{!"SwsContext", !22, i64 0, !9, i64 8, !6, i64 16, !5, i64 24, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!88 = !{!87, !6, i64 16}
!89 = distinct !{!89, !46}
!90 = !{!19, !17, i64 328}
!91 = !{!"p1 _ZTS8AVBuffer", !9, i64 0}
!92 = !{!"AVBufferRef", !91, i64 0, !21, i64 8, !13, i64 16}
!93 = !{!92, !21, i64 8}
!94 = !{!"p1 _ZTS17AVHWDeviceContext", !9, i64 0}
!95 = !{!"p1 _ZTS12AVBufferPool", !9, i64 0}
!96 = !{!"AVHWFramesContext", !22, i64 0, !17, i64 8, !94, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !95, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!97 = !{!96, !6, i64 64}
!98 = !{!19, !6, i64 108}
!99 = !{!19, !6, i64 280}
!100 = !{!19, !6, i64 292}
!101 = !{!19, !6, i64 284}
!102 = !{!19, !6, i64 288}
!103 = !{!19, !6, i64 276}
!104 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !23, i64 32, i64 4, !23, i64 36, i64 4, !23, i64 40, i64 4, !23, i64 44, i64 4, !23}
!105 = !{!"AVFrameSideData", !6, i64 0, !21, i64 8, !13, i64 16, !16, i64 24, !17, i64 32}
!106 = !{!105, !21, i64 8}
!107 = !{!"AVMasteringDisplayMetadata", !5, i64 0, !5, i64 48, !12, i64 64, !12, i64 72, !6, i64 80, !6, i64 84}
!108 = !{!107, !6, i64 84}
!109 = !{!107, !6, i64 80}
!110 = !{!"AVDynamicHDRPlus", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !12, i64 1288, !5, i64 1296, !5, i64 1297, !5, i64 1298, !5, i64 1300, !5, i64 6300, !5, i64 6301, !5, i64 6302, !5, i64 6304}
!111 = !{!110, !5, i64 2}
!112 = !{!110, !5, i64 1}
!113 = !{!"short", !5, i64 0}
!114 = !{!"AVHDRPlusColorTransformParams", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !113, i64 32, !113, i64 34, !5, i64 36, !113, i64 38, !113, i64 40, !113, i64 42, !6, i64 44, !5, i64 48, !12, i64 72, !5, i64 80, !5, i64 84, !12, i64 264, !5, i64 272, !12, i64 276, !12, i64 284, !5, i64 292, !5, i64 296, !5, i64 416, !12, i64 420}
!115 = !{!114, !5, i64 80}
!116 = distinct !{!116, !46}
!117 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!118 = !{!"SwsFrame", !5, i64 0, !5, i64 32, !6, i64 48, !6, i64 52, !6, i64 56, !117, i64 64}
!119 = !{!118, !6, i64 56}
!120 = !{!118, !117, i64 64}
!121 = !{!21, !21, i64 0}
!122 = distinct !{!122, !46, !127, !128}
!123 = distinct !{!123, !46, !128, !127}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !"fmt_clear"}
!126 = distinct !{!126, !125, !"fmt_clear: argument 0"}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = !{!126}
!130 = distinct !{!130, !46}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !139}
!133 = distinct !{!133, !46}
!134 = !{!57, !6, i64 4}
!135 = !{!57, !6, i64 12}
!136 = !{!57, !6, i64 0}
!137 = !{!57, !6, i64 8}
!138 = !{!72, !6, i64 0}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !{!77, !5, i64 4}
!141 = !{i8 0, i8 2}
!142 = !{}
!143 = distinct !{!143, !"fmt_decode_range"}
!144 = distinct !{!144, !143, !"fmt_decode_range: argument 0"}
!145 = distinct !{!145, !"linear_mat3"}
!146 = distinct !{!146, !145, !"linear_mat3: argument 0"}
!147 = !{!144}
!148 = !{!146}
!149 = distinct !{!149, !"linear_mat3"}
!150 = distinct !{!150, !149, !"linear_mat3: argument 0"}
!151 = distinct !{!151, !"linear_mat3"}
!152 = distinct !{!152, !151, !"linear_mat3: argument 0"}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = distinct !{!155, !46}
!156 = distinct !{!156, !46}
!157 = !{!150}
!158 = !{!152}
!159 = !{!87, !6, i64 44}
!160 = !{!"p1 _ZTS12AVRational64", !9, i64 0}
!161 = !{!"SwsDitherOp", !160, i64 0, !83, i64 8, !83, i64 24, !6, i64 40, !5, i64 44}
!162 = !{!161, !160, i64 0}
!163 = !{!160, !160, i64 0}
!164 = !{!87, !6, i64 108}
!165 = !{!"double", !5, i64 0}
!166 = !{!"SwsFilterParams", !6, i64 0, !5, i64 8, !6, i64 24, !6, i64 28, !165, i64 32, !165, i64 40}
!167 = !{!166, !6, i64 0}
!168 = !{!166, !6, i64 24}
!169 = !{!166, !6, i64 28}
!170 = !{!165, !165, i64 0}
!171 = !{!"SwsFilterOp", !47, i64 0, !6, i64 8}
!172 = !{!171, !47, i64 0}
!173 = !{!171, !6, i64 8}
end_hunk_1

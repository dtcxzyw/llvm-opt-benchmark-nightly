Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_curves?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@config_input:bb.a
  %i.y = add nsw i32 %i.x, 3
  %i.z = ashr i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !71
  %i.ad = and i64 %i.ac, 16
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not, ptr @filter_slice_packed, ptr @filter_slice_planar
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %interpolate_pchip.exit.thread
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %interpolate_pchip.exit.thread ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  %.not95 = icmp eq ptr %i.aj, null
  %.pre230 = load i32, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  br i1 %.not95, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = sext i32 %.pre230 to i64
  %i.al = call noalias ptr @av_calloc(i64 noundef %i.ak, i64 noundef 2) #13 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !73
  %.not96 = icmp eq ptr %i.al, null
  br i1 %.not96, label %.loopexit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.v, align 8, !tbaa !69
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.am = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre230, %bb.b ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !22
  %.not71.i = icmp eq ptr %i.ap, null
  br i1 %.not71.i, label %.critedge.ithread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.aq = add nsw i32 %i.am, -1
  %i.ar = sitofp nsz i32 %i.aq to double          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %.lr.ph.i
  %.03672.i = phi ptr [ null, %.lr.ph.i ], [ %i.au, %thread-pre-split.i ] ; 4 uses
  %i.as = phi ptr [ %i.ap, %.lr.ph.i ], [ %.pr.i, %thread-pre-split.i ]
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %.not46.i = icmp eq i8 %i.at, 0
  br i1 %.not46.i, label %.critedge.ithread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call noalias ptr @av_mallocz(i64 noundef 24) #13 ; 9 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %parse_points_str.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.aw = call nsz double @av_strtod(ptr noundef %i.av, ptr noundef nonnull %i.b) #13
  store double %i.aw, ptr %i.au, align 8, !tbaa !75
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %.not50.i = icmp eq ptr %i.ax, null
  br i1 %.not50.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %.not51.i = icmp eq i8 %i.ay, 0
  br i1 %.not51.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ba = phi ptr [ %i.az, %bb.h ], [ %i.ax, %bb.g ], [ null, %bb.f ]
  %i.bb = call nsz double @av_strtod(ptr noundef %i.ba, ptr noundef nonnull %i.b) #13 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.bb, ptr %i.bc, align 8, !tbaa !79
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %.not52.i = icmp eq ptr %i.bd, null
  br i1 %.not52.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29
  %.not53.i = icmp eq i8 %i.be, 0
  br i1 %.not53.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pr.i = phi ptr [ %i.bf, %bb.k ], [ %i.bd, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.bg = load double, ptr %i.au, align 8, !tbaa !75 ; 5 uses
  %i.bh = fcmp nsz olt double %i.bg, 0.000000e+00
  %i.bi = fcmp nsz ogt double %i.bg, 1.000000e+00
  %or.cond.i = or i1 %i.bh, %i.bi
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = fcmp nsz olt double %i.bb, 0.000000e+00
  %i.bk = fcmp nsz ogt double %i.bb, 1.000000e+00
  %or.cond57.i = or i1 %i.bj, %i.bk
  br i1 %or.cond57.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str.5, double noundef %i.bg, double noundef %i.bb) #13
  br label %parse_points_str.exit.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %.not54.i = icmp eq ptr %.03672.i, null
  br i1 %.not54.i, label %thread-pre-split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load double, ptr %.03672.i, align 8, !tbaa !75 ; 2 uses
  %i.bm = fmul nsz double %i.bl, %i.ar
  %i.bn = fptosi double %i.bm to i32
  %i.bo = fmul nsz double %i.bg, %i.ar
  %i.bp = fptosi double %i.bo to i32
  %.not55.i = icmp slt i32 %i.bn, %i.bp
  br i1 %.not55.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.03672.i, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str.6, double noundef %i.bl, double noundef %i.br, double noundef %i.bg, double noundef %i.bb) #13
  br label %parse_points_str.exit.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.03672.i, i64 16
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !80
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.r, %bb.o
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %.not56.i = icmp eq ptr %i.bt, null
  %spec.store.select = select i1 %.not56.i, ptr %i.au, ptr %i.bt ; 2 uses
  store ptr %spec.store.select, ptr %i.an, align 8
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

.critedge.ithread-pre-split:                      ; preds = %bb.d, %.thread
  %.pr = load ptr, ptr %i.an, align 8, !tbaa !81
  br label %.critedge.i

.critedge.i:                                      ; preds = %thread-pre-split.i, %.critedge.ithread-pre-split
  %i.bu = phi ptr [ %.pr, %.critedge.ithread-pre-split ], [ %spec.store.select, %thread-pre-split.i ] ; 18 uses
  %.not47.i = icmp eq ptr %i.bu, null
  br i1 %.not47.i, label %.thread284, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !80
  %.not48.i = icmp eq ptr %i.bw, null
  br i1 %.not48.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = load double, ptr %i.bu, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 24, ptr noundef nonnull @.str.7, double noundef %i.bx, double noundef %i.bz) #13
  br label %bb.u

parse_points_str.exit.thread.sink.split:          ; preds = %bb.q, %bb.n
  call void @av_free(ptr noundef nonnull %i.au) #13
  br label %parse_points_str.exit.thread

parse_points_str.exit.thread:                     ; preds = %bb.e, %parse_points_str.exit.thread.sink.split
  %.2.i.ph = phi i32 [ -22, %parse_points_str.exit.thread.sink.split ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !82
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 46 uses
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !68  ; 23 uses
  %i.ce = shl nuw i32 1, %i.cd                    ; 22 uses
  br i1 %i.cb, label %.lr.ph.i.i, label %bb.au

.thread284:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.cf = load i32, ptr %i.ah, align 8, !tbaa !82
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 14 uses
  %i.ci = load i32, ptr %i.t, align 8, !tbaa !68  ; 4 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 8 uses
  %.not301.i = icmp eq i32 %i.ci, 31              ; 2 uses
  br i1 %i.cg, label %.preheader262.i, label %.preheader270.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %.lr.ph.i.i ], [ 0, %bb.u ] ; 5 uses
  %.06.i.i = phi i32 [ %i.ck, %.lr.ph.i.i ], [ 0, %bb.u ] ; 9 uses
  %.035.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %i.bu, %bb.u ]
  %i.ck = add nuw nsw i32 %.06.i.i, 1             ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !80 ; 2 uses
  %.not.i255.i = icmp eq ptr %i.cm, null
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i255.i, label %get_nb_points.exit.i, label %.lr.ph.i.i, !llvm.loop !83

get_nb_points.exit.i:                             ; preds = %.lr.ph.i.i
  %i.cn = add nsw i32 %i.ce, -1                   ; 3 uses
  %cond.i = icmp eq i32 %.06.i.i, 0
  br i1 %cond.i, label %bb.v, label %bb.x

.preheader262.i:                                  ; preds = %.thread284
  br i1 %.not301.i, label %interpolate_pchip.exit.thread, label %iter.check

iter.check:                                       ; preds = %.preheader262.i
  %smax318.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count319.i = zext nneg i32 %smax318.i to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.cj, 4
  br i1 %min.iters.check, label %.lr.ph269.i, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check358 = icmp slt i32 %i.cj, 16
  br i1 %min.iters.check358, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count319.i, 2147483632
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <8 x i16> %vec.ind, ptr %i.co, align 2, !tbaa !84
  store <8 x i16> %step.add, ptr %i.cp, align 2, !tbaa !84
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %interpolate_pchip.exit.thread, label %vector.body, !llvm.loop !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec359 = and i64 %wide.trip.count319.i, 2147483644 ; 2 uses
  store <4 x i16> <i16 0, i16 1, i16 2, i16 3>, ptr %i.ch, align 2, !tbaa !84
  %i.cr = icmp eq i64 %n.vec359, 4
  br i1 %i.cr, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <4 x i16> <i16 4, i16 5, i16 6, i16 7>, ptr %i.cs, align 2, !tbaa !84
  %i.ct = icmp eq i64 %n.vec359, 8
  br i1 %i.ct, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i16> <i16 8, i16 9, i16 10, i16 11>, ptr %i.cu, align 2, !tbaa !84
  br label %interpolate_pchip.exit.thread

.lr.ph269.i:                                      ; preds = %iter.check
  store i16 0, ptr %i.ch, align 2, !tbaa !84
  %exitcond320.not.i = icmp slt i32 %i.cj, 2
  br i1 %exitcond320.not.i, label %interpolate_pchip.exit.thread, label %.lr.ph269.i.1

.lr.ph269.i.1:                                    ; preds = %.lr.ph269.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i16 1, ptr %i.cv, align 2, !tbaa !84
  %exitcond320.not.i.1 = icmp eq i32 %i.ci, 1
  br i1 %exitcond320.not.i.1, label %interpolate_pchip.exit.thread, label %.lr.ph269.i.2

.lr.ph269.i.2:                                    ; preds = %.lr.ph269.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i16 2, ptr %i.cw, align 2, !tbaa !84
  br label %interpolate_pchip.exit.thread

bb.v:                                             ; preds = %get_nb_points.exit.i
  %i.cx = icmp eq i32 %i.cd, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !79
  %i.da = uitofp nneg i32 %i.cn to double
  %i.db = fmul nsz double %i.cz, %i.da
  %i.dc = fptosi double %i.db to i32              ; 4 uses
  br i1 %i.cx, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  %i.dd = call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %i.de = call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  br label %iter.check409

bb.w:                                             ; preds = %bb.v
  %notmask.i251.i = shl nsw i32 -1, %i.cd         ; 2 uses
  %i.df = and i32 %notmask.i251.i, %i.dc
  %.not.i252.i = icmp eq i32 %i.df, 0
  %i.dg = xor i32 %notmask.i251.i, -1
  %isnotneg.inv.i253.i = icmp slt i32 %i.dc, 0
  %i.dh = select i1 %isnotneg.inv.i253.i, i32 0, i32 %i.dg
  %.0.i254.i = select i1 %.not.i252.i, i32 %i.dc, i32 %i.dh
  %.not300.i = icmp eq i32 %i.cd, 31
  br i1 %.not300.i, label %interpolate_pchip.exit.thread, label %iter.check409

iter.check409:                                    ; preds = %bb.w, %.thread.i
  %.in.i = phi i32 [ %i.de, %.thread.i ], [ %.0.i254.i, %bb.w ]
  %i.di = trunc i32 %.in.i to i16                 ; 5 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %min.iters.check396 = icmp slt i32 %i.ce, 4
  br i1 %min.iters.check396, label %.lr.ph.i99, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %iter.check409
  %min.iters.check398 = icmp slt i32 %i.ce, 16
  br i1 %min.iters.check398, label %vec.epilog.ph413, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check397
  %n.vec400 = and i64 %wide.trip.count.i, 2147483632
  %broadcast.splatinsert401 = insertelement <8 x i16> poison, i16 %i.di, i64 0
  %broadcast.splat402 = shufflevector <8 x i16> %broadcast.splatinsert401, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph399
  %index404 = phi i64 [ 0, %vector.ph399 ], [ %index.next405, %vector.body403 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index404 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <8 x i16> %broadcast.splat402, ptr %i.dj, align 2, !tbaa !84
  store <8 x i16> %broadcast.splat402, ptr %i.dk, align 2, !tbaa !84
  %index.next405 = add nuw i64 %index404, 16      ; 2 uses
  %i.dl = icmp eq i64 %index.next405, %n.vec400
  br i1 %i.dl, label %interpolate_pchip.exit.thread, label %vector.body403, !llvm.loop !89

vec.epilog.ph413:                                 ; preds = %vector.main.loop.iter.check397
  %n.vec414 = and i64 %wide.trip.count.i, 2147483644 ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i16> poison, i16 %i.di, i64 0
  %broadcast.splat416 = shufflevector <4 x i16> %broadcast.splatinsert415, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i16> %broadcast.splat416, ptr %i.cc, align 2, !tbaa !84
  %i.dm = icmp eq i64 %n.vec414, 4
  br i1 %i.dm, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body417.1

vec.epilog.vector.body417.1:                      ; preds = %vec.epilog.ph413
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <4 x i16> %broadcast.splat416, ptr %i.dn, align 2, !tbaa !84
  %i.do = icmp eq i64 %n.vec414, 8
  br i1 %i.do, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body417.2

vec.epilog.vector.body417.2:                      ; preds = %vec.epilog.vector.body417.1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i16> %broadcast.splat416, ptr %i.dp, align 2, !tbaa !84
  br label %interpolate_pchip.exit.thread

.lr.ph.i99:                                       ; preds = %iter.check409
  store i16 %i.di, ptr %i.cc, align 2, !tbaa !84
  %exitcond.not.i = icmp slt i32 %i.ce, 2
  br i1 %exitcond.not.i, label %interpolate_pchip.exit.thread, label %.lr.ph.i99.1

.lr.ph.i99.1:                                     ; preds = %.lr.ph.i99
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 %i.di, ptr %i.dq, align 2, !tbaa !84
  %exitcond.not.i.1 = icmp eq i32 %i.cd, 1
  br i1 %exitcond.not.i.1, label %interpolate_pchip.exit.thread, label %.lr.ph.i99.2

.lr.ph.i99.2:                                     ; preds = %.lr.ph.i99.1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 %i.di, ptr %i.dr, align 2, !tbaa !84
  br label %interpolate_pchip.exit.thread

bb.x:                                             ; preds = %get_nb_points.exit.i
  %i.ds = mul nuw nsw i32 %i.ck, 3
  %i.dt = shl nuw nsw i32 %.06.i.i, 1
  %i.du = add nuw nsw i32 %i.ds, %i.dt
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = call noalias ptr @av_calloc(i64 noundef %i.dv, i64 noundef 8) #13 ; 24 uses
  %.not.i97 = icmp eq ptr %i.dw, null
  br i1 %.not.i97, label %interpolate_pchip.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = zext nneg i32 %i.ck to i64              ; 6 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dx ; 13 uses
  %i.dz = uitofp nneg i32 %i.cn to double         ; 6 uses
  %xtraiter741 = and i64 %i.dx, 1
  %i.ea = icmp eq i64 %indvar, 0
  br i1 %i.ea, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.y
  %unroll_iter744 = and i64 %i.dx, 2147483646
  br label %bb.z

.lr.ph274.preheader.i.unr-lcssa:                  ; preds = %bb.z
  %lcmp.mod742.not = icmp eq i64 %xtraiter741, 0
  br i1 %lcmp.mod742.not, label %.lr.ph274.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph274.preheader.i.unr-lcssa, %bb.y
  %indvars.iv321.i.epil.init = phi i64 [ 0, %bb.y ], [ %indvars.iv.next322.i.1, %.lr.ph274.preheader.i.unr-lcssa ] ; 2 uses
  %.0206270.i.epil.init = phi ptr [ %i.bu, %bb.y ], [ %i.ga, %.lr.ph274.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod743 = trunc i32 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod743)
  %i.eb = load double, ptr %.0206270.i.epil.init, align 8, !tbaa !75
  %i.ec = fmul nsz double %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv321.i.epil.init
  store double %i.ec, ptr %i.ed, align 8, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %.0206270.i.epil.init, i64 8
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !79
  %i.eg = fmul nsz double %i.ef, %i.dz
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv321.i.epil.init
  store double %i.eg, ptr %i.eh, align 8, !tbaa !90
  br label %.lr.ph274.preheader.i

.lr.ph274.preheader.i:                            ; preds = %.lr.ph274.preheader.i.unr-lcssa, %.epil.preheader
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx ; 5 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dx ; 11 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.dx ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 10 uses
  %wide.trip.count329.i = zext nneg i32 %.06.i.i to i64 ; 12 uses
  %.pre.i = load double, ptr %i.dw, align 8, !tbaa !90 ; 4 uses
  %.pre349.i = load double, ptr %i.dy, align 8, !tbaa !90 ; 4 uses
  %min.iters.check477 = icmp samesign ult i32 %.06.i.i, 4
  br i1 %min.iters.check477, label %.lr.ph274.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph274.preheader.i
  %i.em = mul nuw nsw i64 %wide.trip.count329.i, 24
  %i.en = shl i64 %indvar, 4
  %diff.check470 = icmp ugt i64 %i.en, -24
  %diff.check474 = icmp ult i64 %i.em, 8
  %conflict.rdx475 = or i1 %diff.check470, %diff.check474
  br i1 %conflict.rdx475, label %.lr.ph274.i.preheader, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck
  %n.vec479 = and i64 %wide.trip.count329.i, 2147483646 ; 3 uses
  %vector.recur.init = insertelement <2 x double> poison, double %.pre349.i, i64 1
  %vector.recur.init482 = insertelement <2 x double> poison, double %.pre.i, i64 1
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next486, %vector.body480 ] ; 4 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph478 ], [ %wide.load485, %vector.body480 ]
  %vector.recur483 = phi <2 x double> [ %vector.recur.init482, %vector.ph478 ], [ %wide.load484, %vector.body480 ]
  %i.eo = or disjoint i64 %index481, 1            ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eo
  %wide.load484 = load <2 x double>, ptr %i.ep, align 8, !tbaa !90 ; 4 uses
  %i.eq = shufflevector <2 x double> %vector.recur483, <2 x double> %wide.load484, <2 x i32> <i32 1, i32 2>
  %i.er = fsub nsz <2 x double> %wide.load484, %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index481
  store <2 x double> %i.er, ptr %i.es, align 8, !tbaa !90
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eo
  %wide.load485 = load <2 x double>, ptr %i.et, align 8, !tbaa !90 ; 4 uses
  %i.eu = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load485, <2 x i32> <i32 1, i32 2>
  %i.ev = fsub nsz <2 x double> %wide.load485, %i.eu
  %i.ew = fdiv nsz <2 x double> %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %index481
  store <2 x double> %i.ew, ptr %i.ex, align 8, !tbaa !90
  %index.next486 = add nuw i64 %index481, 2       ; 2 uses
  %i.ey = icmp eq i64 %index.next486, %n.vec479
  br i1 %i.ey, label %middle.block487, label %vector.body480, !llvm.loop !91

middle.block487:                                  ; preds = %vector.body480
  %vector.recur.extract = extractelement <2 x double> %wide.load485, i64 1
  %vector.recur.extract488 = extractelement <2 x double> %wide.load484, i64 1
  %cmp.n489 = icmp eq i64 %n.vec479, %wide.trip.count329.i
  br i1 %cmp.n489, label %._crit_edge.i, label %.lr.ph274.i.preheader

.lr.ph274.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph274.preheader.i, %middle.block487
  %.ph = phi double [ %.pre349.i, %vector.memcheck ], [ %.pre349.i, %.lr.ph274.preheader.i ], [ %vector.recur.extract, %middle.block487 ] ; 2 uses
  %.ph703 = phi double [ %.pre.i, %vector.memcheck ], [ %.pre.i, %.lr.ph274.preheader.i ], [ %vector.recur.extract488, %middle.block487 ] ; 2 uses
  %indvars.iv326.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph274.preheader.i ], [ %n.vec479, %middle.block487 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv326.i.ph, 1
  %xtraiter746 = and i64 %indvar, 1
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod747.not, label %.lr.ph274.i.prol.loopexit, label %.lr.ph274.i.prol

.lr.ph274.i.prol:                                 ; preds = %.lr.ph274.i.preheader
  %indvars.iv.next327.i.prol = or disjoint i64 %indvars.iv326.i.ph, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next327.i.prol
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !90 ; 2 uses
  %i.fb = fsub nsz double %i.fa, %.ph703          ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv326.i.ph
  store double %i.fb, ptr %i.fc, align 8, !tbaa !90
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next327.i.prol
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !90 ; 2 uses
  %i.ff = fsub nsz double %i.fe, %.ph
  %i.fg = fdiv nsz double %i.ff, %i.fb
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv326.i.ph
  store double %i.fg, ptr %i.fh, align 8, !tbaa !90
  br label %.lr.ph274.i.prol.loopexit

.lr.ph274.i.prol.loopexit:                        ; preds = %.lr.ph274.i.prol, %.lr.ph274.i.preheader
  %.unr748 = phi double [ %.ph, %.lr.ph274.i.preheader ], [ %i.fe, %.lr.ph274.i.prol ]
  %.unr749 = phi double [ %.ph703, %.lr.ph274.i.preheader ], [ %i.fa, %.lr.ph274.i.prol ]
  %indvars.iv326.i.unr = phi i64 [ %indvars.iv326.i.ph, %.lr.ph274.i.preheader ], [ %indvars.iv.next327.i.prol, %.lr.ph274.i.prol ]
  %i.fi = icmp eq i64 %indvar, %.neg
  br i1 %i.fi, label %._crit_edge.i, label %.lr.ph274.i

bb.z:                                             ; preds = %bb.z, %.new
  %indvars.iv321.i = phi i64 [ 0, %.new ], [ %indvars.iv.next322.i.1, %bb.z ] ; 4 uses
  %.0206270.i = phi ptr [ %i.bu, %.new ], [ %i.ga, %bb.z ] ; 3 uses
  %niter745 = phi i64 [ 0, %.new ], [ %niter745.next.1, %bb.z ]
  %i.fj = load double, ptr %.0206270.i, align 8, !tbaa !75
  %i.fk = fmul nsz double %i.fj, %i.dz
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv321.i
  store double %i.fk, ptr %i.fl, align 8, !tbaa !90
  %i.fm = getelementptr inbounds nuw i8, ptr %.0206270.i, i64 8
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !79
  %i.fo = fmul nsz double %i.fn, %i.dz
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv321.i
  store double %i.fo, ptr %i.fp, align 8, !tbaa !90
  %i.fq = getelementptr inbounds nuw i8, ptr %.0206270.i, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !80 ; 3 uses
  %indvars.iv.next322.i = or disjoint i64 %indvars.iv321.i, 1 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !75
  %i.ft = fmul nsz double %i.fs, %i.dz
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next322.i
  store double %i.ft, ptr %i.fu, align 8, !tbaa !90
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !79
  %i.fx = fmul nsz double %i.fw, %i.dz
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next322.i
  store double %i.fx, ptr %i.fy, align 8, !tbaa !90
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !80 ; 2 uses
  %indvars.iv.next322.i.1 = add nuw nsw i64 %indvars.iv321.i, 2 ; 2 uses
  %niter745.next.1 = add i64 %niter745, 2         ; 2 uses
  %niter745.ncmp.1 = icmp eq i64 %niter745.next.1, %unroll_iter744
  br i1 %niter745.ncmp.1, label %.lr.ph274.preheader.i.unr-lcssa, label %bb.z, !llvm.loop !92

._crit_edge.i:                                    ; preds = %.lr.ph274.i.prol.loopexit, %.lr.ph274.i, %middle.block487
  %i.gb = icmp eq i32 %i.ck, 2
  br i1 %i.gb, label %bb.aa, label %._crit_edge.thread.i

.lr.ph274.i:                                      ; preds = %.lr.ph274.i.prol.loopexit, %.lr.ph274.i
  %i.gc = phi double [ %i.gs, %.lr.ph274.i ], [ %.unr748, %.lr.ph274.i.prol.loopexit ]
  %i.gd = phi double [ %i.go, %.lr.ph274.i ], [ %.unr749, %.lr.ph274.i.prol.loopexit ]
  %indvars.iv326.i = phi i64 [ %indvars.iv.next327.i.1, %.lr.ph274.i ], [ %indvars.iv326.i.unr, %.lr.ph274.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next327.i
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %i.gg = fsub nsz double %i.gf, %i.gd            ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv326.i
  store double %i.gg, ptr %i.gh, align 8, !tbaa !90
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next327.i
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !90 ; 2 uses
  %i.gk = fsub nsz double %i.gj, %i.gc
  %i.gl = fdiv nsz double %i.gk, %i.gg
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv326.i
  store double %i.gl, ptr %i.gm, align 8, !tbaa !90
  %indvars.iv.next327.i.1 = add nuw nsw i64 %indvars.iv326.i, 2 ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next327.i.1
  %i.go = load double, ptr %i.gn, align 8, !tbaa !90 ; 2 uses
  %i.gp = fsub nsz double %i.go, %i.gf            ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next327.i
  store double %i.gp, ptr %i.gq, align 8, !tbaa !90
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next327.i.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !90 ; 2 uses
  %i.gt = fsub nsz double %i.gs, %i.gj
  %i.gu = fdiv nsz double %i.gt, %i.gp
  %i.gv = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv326.i
  store double %i.gu, ptr %i.gv, align 8, !tbaa !90
  %exitcond330.not.i.1 = icmp eq i64 %indvars.iv.next327.i.1, %wide.trip.count329.i
  br i1 %exitcond330.not.i.1, label %._crit_edge.i, label %.lr.ph274.i, !llvm.loop !93

bb.aa:                                            ; preds = %._crit_edge.i
  %i.gw = load double, ptr %i.el, align 8, !tbaa !90 ; 10 uses
  %i.gx = fneg nsz double %.pre.i
  %i.gy = call nsz double @llvm.fmuladd.f64(double %i.gx, double %i.gw, double %.pre349.i) ; 9 uses
  %.not302.i = icmp eq i32 %i.cd, 31
  br i1 %.not302.i, label %interpolate_pchip.exit, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %bb.aa
  %i.gz = icmp eq i32 %i.cd, 8
  %notmask.i247.i = shl nsw i32 -1, %i.cd         ; 9 uses
  %i.ha = xor i32 %notmask.i247.i, -1             ; 8 uses
  br i1 %i.gz, label %.lr.ph299.split.us.preheader.i, label %.lr.ph299.split.preheader.i

.lr.ph299.split.preheader.i:                      ; preds = %.lr.ph299.i
  %min.iters.check439 = icmp slt i32 %i.ce, 8
  br i1 %min.iters.check439, label %.lr.ph299.split.i, label %vector.ph440

vector.ph440:                                     ; preds = %.lr.ph299.split.preheader.i
  %i.hb = and i32 %i.ce, 2147483640
  %n.vec441 = zext nneg i32 %i.hb to i64
  %broadcast.splatinsert442 = insertelement <8 x double> poison, double %i.gw, i64 0
  %broadcast.splat443 = shufflevector <8 x double> %broadcast.splatinsert442, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert444 = insertelement <8 x double> poison, double %i.gy, i64 0
  %broadcast.splat445 = shufflevector <8 x double> %broadcast.splatinsert444, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <8 x i32> poison, i32 %notmask.i247.i, i64 0
  %broadcast.splat447 = shufflevector <8 x i32> %broadcast.splatinsert446, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <8 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat449 = shufflevector <8 x i32> %broadcast.splatinsert448, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph440
  %index451 = phi i64 [ 0, %vector.ph440 ], [ %index.next453, %vector.body450 ] ; 2 uses
  %vec.ind452 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph440 ], [ %vec.ind.next454, %vector.body450 ] ; 2 uses
  %i.hc = uitofp nneg <8 x i32> %vec.ind452 to <8 x double>
  %i.hd = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hc, <8 x double> %broadcast.splat443, <8 x double> %broadcast.splat445)
  %i.he = fptosi <8 x double> %i.hd to <8 x i32>  ; 3 uses
  %i.hf = and <8 x i32> %broadcast.splat447, %i.he
  %i.hg = icmp eq <8 x i32> %i.hf, zeroinitializer
  %i.hh = icmp slt <8 x i32> %i.he, zeroinitializer
  %i.hi = select <8 x i1> %i.hh, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat449
  %i.hj = select <8 x i1> %i.hg, <8 x i32> %i.he, <8 x i32> %i.hi
  %i.hk = trunc <8 x i32> %i.hj to <8 x i16>
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index451
  store <8 x i16> %i.hk, ptr %i.hl, align 2, !tbaa !84
  %index.next453 = add nuw i64 %index451, 8       ; 2 uses
  %vec.ind.next454 = add <8 x i32> %vec.ind452, splat (i32 8)
  %i.hm = icmp eq i64 %index.next453, %n.vec441
  br i1 %i.hm, label %interpolate_pchip.exit, label %vector.body450, !llvm.loop !94

.lr.ph299.split.us.preheader.i:                   ; preds = %.lr.ph299.i
  %wide.trip.count347.i = zext nneg i32 %i.ce to i64
  %broadcast.splatinsert426 = insertelement <8 x double> poison, double %i.gw, i64 0
  %broadcast.splat427 = shufflevector <8 x double> %broadcast.splatinsert426, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert428 = insertelement <8 x double> poison, double %i.gy, i64 0
  %broadcast.splat429 = shufflevector <8 x double> %broadcast.splatinsert428, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %.lr.ph299.split.us.preheader.i
  %index431 = phi i64 [ 0, %.lr.ph299.split.us.preheader.i ], [ %index.next433, %vector.body430 ] ; 2 uses
  %vec.ind432 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph299.split.us.preheader.i ], [ %vec.ind.next434, %vector.body430 ] ; 2 uses
  %i.hn = uitofp nneg <8 x i32> %vec.ind432 to <8 x double>
  %i.ho = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hn, <8 x double> %broadcast.splat427, <8 x double> %broadcast.splat429)
  %i.hp = fptosi <8 x double> %i.ho to <8 x i32>
  %i.hq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hp, <8 x i32> zeroinitializer)
  %i.hr = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hq, <8 x i32> splat (i32 255))
  %i.hs = trunc nuw nsw <8 x i32> %i.hr to <8 x i16>
end_hunk_0

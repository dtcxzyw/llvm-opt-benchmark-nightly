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
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !131
  %i.ad = and i64 %i.ac, 16
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not, ptr @filter_slice_packed, ptr @filter_slice_planar
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %interpolate_pchip.exit.thread
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %interpolate_pchip.exit.thread ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %.not95 = icmp eq ptr %i.aj, null
  %.pre233 = load i32, ptr %i.v, align 8, !tbaa !129 ; 2 uses
  br i1 %.not95, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = sext i32 %.pre233 to i64
  %i.al = call noalias ptr @av_calloc(i64 noundef %i.ak, i64 noundef 2) #13 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !49
  %.not96 = icmp eq ptr %i.al, null
  br i1 %.not96, label %.loopexit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.v, align 8, !tbaa !129
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.am = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre233, %bb.b ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !21
  %.not71.i = icmp eq ptr %i.ap, null
  br i1 %.not71.i, label %.critedge.ithread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.aq = add nsw i32 %i.am, -1
  %i.ar = sitofp nsz i32 %i.aq to double          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %.lr.ph.i
  %.03672.i = phi ptr [ null, %.lr.ph.i ], [ %i.au, %thread-pre-split.i ] ; 4 uses
  %i.as = phi ptr [ %i.ap, %.lr.ph.i ], [ %.pr.i, %thread-pre-split.i ]
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %.not46.i = icmp eq i8 %i.at, 0
  br i1 %.not46.i, label %.critedge.ithread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call noalias ptr @av_mallocz(i64 noundef 24) #13 ; 9 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %parse_points_str.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.aw = call nsz double @av_strtod(ptr noundef %i.av, ptr noundef nonnull %i.b) #13
  store double %i.aw, ptr %i.au, align 8, !tbaa !135
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %.not50.i = icmp eq ptr %i.ax, null
  br i1 %.not50.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  %.not51.i = icmp eq i8 %i.ay, 0
  br i1 %.not51.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ba = phi ptr [ %i.az, %bb.h ], [ %i.ax, %bb.g ], [ null, %bb.f ]
  %i.bb = call nsz double @av_strtod(ptr noundef %i.ba, ptr noundef nonnull %i.b) #13 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.bb, ptr %i.bc, align 8, !tbaa !136
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %.not52.i = icmp eq ptr %i.bd, null
  br i1 %.not52.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %.not53.i = icmp eq i8 %i.be, 0
  br i1 %.not53.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pr.i = phi ptr [ %i.bf, %bb.k ], [ %i.bd, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.bg = load double, ptr %i.au, align 8, !tbaa !135 ; 5 uses
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
  %i.bl = load double, ptr %.03672.i, align 8, !tbaa !135 ; 2 uses
  %i.bm = fmul nsz double %i.bl, %i.ar
  %i.bn = fptosi double %i.bm to i32
  %i.bo = fmul nsz double %i.bg, %i.ar
  %i.bp = fptosi double %i.bo to i32
  %.not55.i = icmp slt i32 %i.bn, %i.bp
  br i1 %.not55.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.03672.i, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !136
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str.6, double noundef %i.bl, double noundef %i.br, double noundef %i.bg, double noundef %i.bb) #13
  br label %parse_points_str.exit.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.03672.i, i64 16
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !137
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.r, %bb.o
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %.not56.i = icmp eq ptr %i.bt, null
  %spec.store.select = select i1 %.not56.i, ptr %i.au, ptr %i.bt ; 2 uses
  store ptr %spec.store.select, ptr %i.an, align 8, !tbaa !138
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

.critedge.ithread-pre-split:                      ; preds = %bb.d, %.thread
  %.pr = load ptr, ptr %i.an, align 8, !tbaa !138
  br label %.critedge.i

.critedge.i:                                      ; preds = %thread-pre-split.i, %.critedge.ithread-pre-split
  %i.bu = phi ptr [ %.pr, %.critedge.ithread-pre-split ], [ %spec.store.select, %thread-pre-split.i ] ; 18 uses
  %.not47.i = icmp eq ptr %i.bu, null
  br i1 %.not47.i, label %.thread287, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !137
  %.not48.i = icmp eq ptr %i.bw, null
  br i1 %.not48.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = load double, ptr %i.bu, align 8, !tbaa !135
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !136
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
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !139
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 46 uses
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !128 ; 23 uses
  %i.ce = shl nuw i32 1, %i.cd                    ; 22 uses
  br i1 %i.cb, label %.lr.ph.i.i, label %bb.au

.thread287:                                       ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.cf = load i32, ptr %i.ah, align 8, !tbaa !139
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 14 uses
  %i.ci = load i32, ptr %i.t, align 8, !tbaa !128 ; 4 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 8 uses
  %.not306.i = icmp eq i32 %i.ci, 31              ; 2 uses
  br i1 %i.cg, label %.preheader267.i, label %.preheader274.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %.lr.ph.i.i ], [ 0, %bb.u ] ; 10 uses
  %.06.i.i = phi i32 [ %i.ck, %.lr.ph.i.i ], [ 0, %bb.u ] ; 8 uses
  %.035.i.i = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %i.bu, %bb.u ]
  %i.ck = add nuw nsw i32 %.06.i.i, 1             ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !137 ; 2 uses
  %.not.i255.i = icmp eq ptr %i.cm, null
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i255.i, label %get_nb_points.exit.i, label %.lr.ph.i.i, !llvm.loop !76

get_nb_points.exit.i:                             ; preds = %.lr.ph.i.i
  %i.cn = add nsw i32 %i.ce, -1                   ; 3 uses
  %cond.i = icmp eq i32 %.06.i.i, 0
  br i1 %cond.i, label %bb.v, label %bb.x

.preheader267.i:                                  ; preds = %.thread287
  br i1 %.not306.i, label %interpolate_pchip.exit.thread, label %iter.check

iter.check:                                       ; preds = %.preheader267.i
  %smax323.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count324.i = zext nneg i32 %smax323.i to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.cj, 4
  br i1 %min.iters.check, label %.lr.ph274.i, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check361 = icmp slt i32 %i.cj, 16
  br i1 %min.iters.check361, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count324.i, 2147483632
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <8 x i16> %vec.ind, ptr %i.co, align 2, !tbaa !51
  store <8 x i16> %step.add, ptr %i.cp, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %interpolate_pchip.exit.thread, label %vector.body, !llvm.loop !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec362 = and i64 %wide.trip.count324.i, 2147483644 ; 2 uses
  store <4 x i16> <i16 0, i16 1, i16 2, i16 3>, ptr %i.ch, align 2, !tbaa !51
  %i.cr = icmp eq i64 %n.vec362, 4
  br i1 %i.cr, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <4 x i16> <i16 4, i16 5, i16 6, i16 7>, ptr %i.cs, align 2, !tbaa !51
  %i.ct = icmp eq i64 %n.vec362, 8
  br i1 %i.ct, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i16> <i16 8, i16 9, i16 10, i16 11>, ptr %i.cu, align 2, !tbaa !51
  br label %interpolate_pchip.exit.thread

.lr.ph274.i:                                      ; preds = %iter.check
  store i16 0, ptr %i.ch, align 2, !tbaa !51
  %exitcond325.not.i = icmp slt i32 %i.cj, 2
  br i1 %exitcond325.not.i, label %interpolate_pchip.exit.thread, label %.lr.ph274.i.1

.lr.ph274.i.1:                                    ; preds = %.lr.ph274.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i16 1, ptr %i.cv, align 2, !tbaa !51
  %exitcond325.not.i.1 = icmp eq i32 %i.ci, 1
  br i1 %exitcond325.not.i.1, label %interpolate_pchip.exit.thread, label %.lr.ph274.i.2

.lr.ph274.i.2:                                    ; preds = %.lr.ph274.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i16 2, ptr %i.cw, align 2, !tbaa !51
  br label %interpolate_pchip.exit.thread

bb.v:                                             ; preds = %get_nb_points.exit.i
  %i.cx = icmp eq i32 %i.cd, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !136
  %i.da = uitofp nneg i32 %i.cn to double
  %i.db = fmul nsz double %i.cz, %i.da
  %i.dc = fptosi double %i.db to i32              ; 4 uses
  br i1 %i.cx, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  %i.dd = call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %.0.i236261.i = call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  br label %iter.check411

bb.w:                                             ; preds = %bb.v
  %notmask.i251.i = shl nsw i32 -1, %i.cd         ; 2 uses
  %i.de = and i32 %notmask.i251.i, %i.dc
  %.not.i252.i = icmp eq i32 %i.de, 0
  %i.df = xor i32 %notmask.i251.i, -1
  %isnotneg.inv.i253.i = icmp slt i32 %i.dc, 0
  %i.dg = select i1 %isnotneg.inv.i253.i, i32 0, i32 %i.df
  %.0.i254.i = select i1 %.not.i252.i, i32 %i.dc, i32 %i.dg
  %.not305.i = icmp eq i32 %i.cd, 31
  br i1 %.not305.i, label %interpolate_pchip.exit.thread, label %iter.check411

iter.check411:                                    ; preds = %bb.w, %.thread.i
  %.in.i = phi i32 [ %.0.i236261.i, %.thread.i ], [ %.0.i254.i, %bb.w ]
  %i.dh = trunc i32 %.in.i to i16                 ; 5 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %min.iters.check399 = icmp slt i32 %i.ce, 4
  br i1 %min.iters.check399, label %.lr.ph.i99, label %vector.main.loop.iter.check400

vector.main.loop.iter.check400:                   ; preds = %iter.check411
  %min.iters.check401 = icmp slt i32 %i.ce, 16
  br i1 %min.iters.check401, label %vec.epilog.ph415, label %vector.ph402

vector.ph402:                                     ; preds = %vector.main.loop.iter.check400
  %n.vec403 = and i64 %wide.trip.count.i, 2147483632
  %broadcast.splatinsert404 = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %broadcast.splat405 = shufflevector <8 x i16> %broadcast.splatinsert404, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph402, %vector.body406
  %index407 = phi i64 [ 0, %vector.ph402 ], [ %index.next408, %vector.body406 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index407 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <8 x i16> %broadcast.splat405, ptr %i.di, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat405, ptr %i.dj, align 2, !tbaa !51
  %index.next408 = add nuw i64 %index407, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next408, %n.vec403
  br i1 %i.dk, label %interpolate_pchip.exit.thread, label %vector.body406, !llvm.loop !78

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check400
  %n.vec417 = and i64 %wide.trip.count.i, 2147483644 ; 2 uses
  %broadcast.splatinsert418 = insertelement <4 x i16> poison, i16 %i.dh, i64 0
  %broadcast.splat419 = shufflevector <4 x i16> %broadcast.splatinsert418, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i16> %broadcast.splat419, ptr %i.cc, align 2, !tbaa !51
  %i.dl = icmp eq i64 %n.vec417, 4
  br i1 %i.dl, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body420.1

vec.epilog.vector.body420.1:                      ; preds = %vec.epilog.ph415
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <4 x i16> %broadcast.splat419, ptr %i.dm, align 2, !tbaa !51
  %i.dn = icmp eq i64 %n.vec417, 8
  br i1 %i.dn, label %interpolate_pchip.exit.thread, label %vec.epilog.vector.body420.2

vec.epilog.vector.body420.2:                      ; preds = %vec.epilog.vector.body420.1
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i16> %broadcast.splat419, ptr %i.do, align 2, !tbaa !51
  br label %interpolate_pchip.exit.thread

.lr.ph.i99:                                       ; preds = %iter.check411
  store i16 %i.dh, ptr %i.cc, align 2, !tbaa !51
  %exitcond.not.i = icmp slt i32 %i.ce, 2
  br i1 %exitcond.not.i, label %interpolate_pchip.exit.thread, label %.lr.ph.i99.1

.lr.ph.i99.1:                                     ; preds = %.lr.ph.i99
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 %i.dh, ptr %i.dp, align 2, !tbaa !51
  %exitcond.not.i.1 = icmp eq i32 %i.cd, 1
  br i1 %exitcond.not.i.1, label %interpolate_pchip.exit.thread, label %.lr.ph.i99.2

.lr.ph.i99.2:                                     ; preds = %.lr.ph.i99.1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 %i.dh, ptr %i.dq, align 2, !tbaa !51
  br label %interpolate_pchip.exit.thread

bb.x:                                             ; preds = %get_nb_points.exit.i
  %i.dr = mul nuw nsw i32 %i.ck, 3
  %i.ds = shl nuw nsw i32 %.06.i.i, 1
  %i.dt = add nuw nsw i32 %i.dr, %i.ds
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = call noalias ptr @av_calloc(i64 noundef %i.du, i64 noundef 8) #13 ; 24 uses
  %.not.i97 = icmp eq ptr %i.dv, null
  br i1 %.not.i97, label %interpolate_pchip.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = zext nneg i32 %i.ck to i64              ; 6 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw ; 13 uses
  %i.dy = uitofp nneg i32 %i.cn to double         ; 6 uses
  %xtraiter737 = and i64 %i.dw, 1
  %i.dz = icmp eq i64 %indvar, 0
  br i1 %i.dz, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.y
  %unroll_iter740 = and i64 %i.dw, 2147483646
  br label %bb.z

.lr.ph279.preheader.i.unr-lcssa:                  ; preds = %bb.z
  %lcmp.mod738.not = icmp eq i64 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %.lr.ph279.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph279.preheader.i.unr-lcssa, %bb.y
  %indvars.iv326.i.epil.init = phi i64 [ 0, %bb.y ], [ %indvars.iv.next327.i.1, %.lr.ph279.preheader.i.unr-lcssa ] ; 2 uses
  %.0206275.i.epil.init = phi ptr [ %i.bu, %bb.y ], [ %i.fz, %.lr.ph279.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod739 = trunc i32 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod739)
  %i.ea = load double, ptr %.0206275.i.epil.init, align 8, !tbaa !135
  %i.eb = fmul nsz double %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv326.i.epil.init
  store double %i.eb, ptr %i.ec, align 8, !tbaa !142
  %i.ed = getelementptr inbounds nuw i8, ptr %.0206275.i.epil.init, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !136
  %i.ef = fmul nsz double %i.ee, %i.dy
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv326.i.epil.init
  store double %i.ef, ptr %i.eg, align 8, !tbaa !142
  br label %.lr.ph279.preheader.i

.lr.ph279.preheader.i:                            ; preds = %.lr.ph279.preheader.i.unr-lcssa, %.epil.preheader
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dw ; 11 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dw ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 10 uses
  %wide.trip.count334.i = zext nneg i32 %.06.i.i to i64 ; 9 uses
  %.pre.i = load double, ptr %i.dv, align 8, !tbaa !142 ; 4 uses
  %.pre354.i = load double, ptr %i.dx, align 8, !tbaa !142 ; 4 uses
  %min.iters.check480 = icmp ult i64 %indvar, 4
  br i1 %min.iters.check480, label %.lr.ph279.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph279.preheader.i
  %2 = shl i64 %indvar, 3
  %3 = add i64 %2, -1
  %diff.check = icmp ult i64 %3, 15
  %i.el = mul i64 %indvar, 24                     ; 2 uses
  %diff.check481 = icmp ugt i64 %i.el, -16
  %conflict.rdx = or i1 %diff.check, %diff.check481
  %i.em = shl i64 %indvar, 4
  %diff.check482 = icmp ugt i64 %i.em, -24
  %conflict.rdx483 = or i1 %conflict.rdx, %diff.check482
  %diff.check486 = icmp ult i64 %i.el, 8
  %conflict.rdx487 = or i1 %conflict.rdx483, %diff.check486
  br i1 %conflict.rdx487, label %.lr.ph279.i.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %vector.memcheck
  %n.vec489 = and i64 %indvar, -2                 ; 3 uses
  %vector.recur.init = insertelement <2 x double> poison, double %.pre354.i, i64 1
  %vector.recur.init492 = insertelement <2 x double> poison, double %.pre.i, i64 1
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next496, %vector.body490 ] ; 4 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph488 ], [ %wide.load495, %vector.body490 ]
  %vector.recur493 = phi <2 x double> [ %vector.recur.init492, %vector.ph488 ], [ %wide.load494, %vector.body490 ]
  %i.en = or disjoint i64 %index491, 1            ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.en
  %wide.load494 = load <2 x double>, ptr %i.eo, align 8, !tbaa !142 ; 4 uses
  %i.ep = shufflevector <2 x double> %vector.recur493, <2 x double> %wide.load494, <2 x i32> <i32 1, i32 2>
  %i.eq = fsub nsz <2 x double> %wide.load494, %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index491
  store <2 x double> %i.eq, ptr %i.er, align 8, !tbaa !142
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.en
  %wide.load495 = load <2 x double>, ptr %i.es, align 8, !tbaa !142 ; 4 uses
  %i.et = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load495, <2 x i32> <i32 1, i32 2>
  %i.eu = fsub nsz <2 x double> %wide.load495, %i.et
  %i.ev = fdiv nsz <2 x double> %i.eu, %i.eq
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index491
  store <2 x double> %i.ev, ptr %i.ew, align 8, !tbaa !142
  %index.next496 = add nuw i64 %index491, 2       ; 2 uses
  %i.ex = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.ex, label %middle.block497, label %vector.body490, !llvm.loop !79

middle.block497:                                  ; preds = %vector.body490
  %vector.recur.extract = extractelement <2 x double> %wide.load495, i64 1
  %vector.recur.extract498 = extractelement <2 x double> %wide.load494, i64 1
  %cmp.n499 = icmp eq i64 %indvar, %n.vec489
  br i1 %cmp.n499, label %._crit_edge.i, label %.lr.ph279.i.preheader

.lr.ph279.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph279.preheader.i, %middle.block497
  %.ph = phi double [ %.pre354.i, %vector.memcheck ], [ %.pre354.i, %.lr.ph279.preheader.i ], [ %vector.recur.extract, %middle.block497 ] ; 2 uses
  %.ph699 = phi double [ %.pre.i, %vector.memcheck ], [ %.pre.i, %.lr.ph279.preheader.i ], [ %vector.recur.extract498, %middle.block497 ] ; 2 uses
  %indvars.iv331.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph279.preheader.i ], [ %n.vec489, %middle.block497 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv331.i.ph, 1
  %xtraiter742 = and i64 %indvar, 1
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph279.i.prol.loopexit, label %.lr.ph279.i.prol

.lr.ph279.i.prol:                                 ; preds = %.lr.ph279.i.preheader
  %indvars.iv.next332.i.prol = or disjoint i64 %indvars.iv331.i.ph, 1 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next332.i.prol
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !142 ; 2 uses
  %i.fa = fsub nsz double %i.ez, %.ph699          ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv331.i.ph
  store double %i.fa, ptr %i.fb, align 8, !tbaa !142
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next332.i.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !142 ; 2 uses
  %i.fe = fsub nsz double %i.fd, %.ph
  %i.ff = fdiv nsz double %i.fe, %i.fa
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv331.i.ph
  store double %i.ff, ptr %i.fg, align 8, !tbaa !142
  br label %.lr.ph279.i.prol.loopexit

.lr.ph279.i.prol.loopexit:                        ; preds = %.lr.ph279.i.prol, %.lr.ph279.i.preheader
  %.unr744 = phi double [ %.ph, %.lr.ph279.i.preheader ], [ %i.fd, %.lr.ph279.i.prol ]
  %.unr745 = phi double [ %.ph699, %.lr.ph279.i.preheader ], [ %i.ez, %.lr.ph279.i.prol ]
  %indvars.iv331.i.unr = phi i64 [ %indvars.iv331.i.ph, %.lr.ph279.i.preheader ], [ %indvars.iv.next332.i.prol, %.lr.ph279.i.prol ]
  %i.fh = icmp eq i64 %indvar, %.neg
  br i1 %i.fh, label %._crit_edge.i, label %.lr.ph279.i

bb.z:                                             ; preds = %bb.z, %.new
  %indvars.iv326.i = phi i64 [ 0, %.new ], [ %indvars.iv.next327.i.1, %bb.z ] ; 4 uses
  %.0206275.i = phi ptr [ %i.bu, %.new ], [ %i.fz, %bb.z ] ; 3 uses
  %niter741 = phi i64 [ 0, %.new ], [ %niter741.next.1, %bb.z ]
  %i.fi = load double, ptr %.0206275.i, align 8, !tbaa !135
  %i.fj = fmul nsz double %i.fi, %i.dy
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv326.i
  store double %i.fj, ptr %i.fk, align 8, !tbaa !142
  %i.fl = getelementptr inbounds nuw i8, ptr %.0206275.i, i64 8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !136
  %i.fn = fmul nsz double %i.fm, %i.dy
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv326.i
  store double %i.fn, ptr %i.fo, align 8, !tbaa !142
  %i.fp = getelementptr inbounds nuw i8, ptr %.0206275.i, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !137 ; 3 uses
  %indvars.iv.next327.i = or disjoint i64 %indvars.iv326.i, 1 ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !135
  %i.fs = fmul nsz double %i.fr, %i.dy
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next327.i
  store double %i.fs, ptr %i.ft, align 8, !tbaa !142
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !136
  %i.fw = fmul nsz double %i.fv, %i.dy
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next327.i
  store double %i.fw, ptr %i.fx, align 8, !tbaa !142
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !137 ; 2 uses
  %indvars.iv.next327.i.1 = add nuw nsw i64 %indvars.iv326.i, 2 ; 2 uses
  %niter741.next.1 = add i64 %niter741, 2         ; 2 uses
  %niter741.ncmp.1 = icmp eq i64 %niter741.next.1, %unroll_iter740
  br i1 %niter741.ncmp.1, label %.lr.ph279.preheader.i.unr-lcssa, label %bb.z, !llvm.loop !80

._crit_edge.i:                                    ; preds = %.lr.ph279.i.prol.loopexit, %.lr.ph279.i, %middle.block497
  %i.ga = icmp eq i32 %i.ck, 2
  br i1 %i.ga, label %bb.aa, label %._crit_edge.thread.i

.lr.ph279.i:                                      ; preds = %.lr.ph279.i.prol.loopexit, %.lr.ph279.i
  %i.gb = phi double [ %i.gr, %.lr.ph279.i ], [ %.unr744, %.lr.ph279.i.prol.loopexit ]
  %i.gc = phi double [ %i.gn, %.lr.ph279.i ], [ %.unr745, %.lr.ph279.i.prol.loopexit ]
  %indvars.iv331.i = phi i64 [ %indvars.iv.next332.i.1, %.lr.ph279.i ], [ %indvars.iv331.i.unr, %.lr.ph279.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next332.i
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !142 ; 2 uses
  %i.gf = fsub nsz double %i.ge, %i.gc            ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv331.i
  store double %i.gf, ptr %i.gg, align 8, !tbaa !142
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next332.i
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !142 ; 2 uses
  %i.gj = fsub nsz double %i.gi, %i.gb
  %i.gk = fdiv nsz double %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv331.i
  store double %i.gk, ptr %i.gl, align 8, !tbaa !142
  %indvars.iv.next332.i.1 = add nuw nsw i64 %indvars.iv331.i, 2 ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next332.i.1
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !142 ; 2 uses
  %i.go = fsub nsz double %i.gn, %i.ge            ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next332.i
  store double %i.go, ptr %i.gp, align 8, !tbaa !142
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next332.i.1
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !142 ; 2 uses
  %i.gs = fsub nsz double %i.gr, %i.gi
  %i.gt = fdiv nsz double %i.gs, %i.go
  %i.gu = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv331.i
  store double %i.gt, ptr %i.gu, align 8, !tbaa !142
  %exitcond335.not.i.1 = icmp eq i64 %indvars.iv.next332.i.1, %wide.trip.count334.i
  br i1 %exitcond335.not.i.1, label %._crit_edge.i, label %.lr.ph279.i, !llvm.loop !81

bb.aa:                                            ; preds = %._crit_edge.i
  %i.gv = load double, ptr %i.ek, align 8, !tbaa !142 ; 10 uses
  %i.gw = fneg nsz double %.pre.i
  %i.gx = call nsz double @llvm.fmuladd.f64(double %i.gw, double %i.gv, double %.pre354.i) ; 9 uses
  %.not307.i = icmp eq i32 %i.cd, 31
  br i1 %.not307.i, label %interpolate_pchip.exit, label %.lr.ph304.i

.lr.ph304.i:                                      ; preds = %bb.aa
  %i.gy = icmp eq i32 %i.cd, 8
  %notmask.i247.i = shl nsw i32 -1, %i.cd         ; 9 uses
  %i.gz = xor i32 %notmask.i247.i, -1             ; 8 uses
  br i1 %i.gy, label %.lr.ph304.split.us.preheader.i, label %.lr.ph304.split.preheader.i

.lr.ph304.split.preheader.i:                      ; preds = %.lr.ph304.i
  %min.iters.check442 = icmp slt i32 %i.ce, 8
  br i1 %min.iters.check442, label %.lr.ph304.split.i, label %vector.ph443

vector.ph443:                                     ; preds = %.lr.ph304.split.preheader.i
  %i.ha = and i32 %i.ce, 2147483640
  %n.vec444 = zext nneg i32 %i.ha to i64
  %broadcast.splatinsert445 = insertelement <8 x double> poison, double %i.gv, i64 0
  %broadcast.splat446 = shufflevector <8 x double> %broadcast.splatinsert445, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert447 = insertelement <8 x double> poison, double %i.gx, i64 0
  %broadcast.splat448 = shufflevector <8 x double> %broadcast.splatinsert447, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert449 = insertelement <8 x i32> poison, i32 %notmask.i247.i, i64 0
  %broadcast.splat450 = shufflevector <8 x i32> %broadcast.splatinsert449, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert451 = insertelement <8 x i32> poison, i32 %i.gz, i64 0
  %broadcast.splat452 = shufflevector <8 x i32> %broadcast.splatinsert451, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph443
  %index454 = phi i64 [ 0, %vector.ph443 ], [ %index.next456, %vector.body453 ] ; 2 uses
  %vec.ind455 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph443 ], [ %vec.ind.next457, %vector.body453 ] ; 2 uses
  %i.hb = uitofp nneg <8 x i32> %vec.ind455 to <8 x double>
  %i.hc = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hb, <8 x double> %broadcast.splat446, <8 x double> %broadcast.splat448)
  %i.hd = fptosi <8 x double> %i.hc to <8 x i32>  ; 3 uses
  %i.he = and <8 x i32> %broadcast.splat450, %i.hd
  %i.hf = icmp eq <8 x i32> %i.he, zeroinitializer
  %i.hg = icmp slt <8 x i32> %i.hd, zeroinitializer
  %i.hh = select <8 x i1> %i.hg, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat452
  %i.hi = select <8 x i1> %i.hf, <8 x i32> %i.hd, <8 x i32> %i.hh
  %i.hj = trunc <8 x i32> %i.hi to <8 x i16>
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %index454
  store <8 x i16> %i.hj, ptr %i.hk, align 2, !tbaa !51
  %index.next456 = add nuw i64 %index454, 8       ; 2 uses
  %vec.ind.next457 = add <8 x i32> %vec.ind455, splat (i32 8)
  %i.hl = icmp eq i64 %index.next456, %n.vec444
  br i1 %i.hl, label %interpolate_pchip.exit, label %vector.body453, !llvm.loop !82

.lr.ph304.split.us.preheader.i:                   ; preds = %.lr.ph304.i
  %wide.trip.count352.i = zext nneg i32 %i.ce to i64
  %broadcast.splatinsert429 = insertelement <8 x double> poison, double %i.gv, i64 0
  %broadcast.splat430 = shufflevector <8 x double> %broadcast.splatinsert429, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <8 x double> poison, double %i.gx, i64 0
  %broadcast.splat432 = shufflevector <8 x double> %broadcast.splatinsert431, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %.lr.ph304.split.us.preheader.i
  %index434 = phi i64 [ 0, %.lr.ph304.split.us.preheader.i ], [ %index.next436, %vector.body433 ] ; 2 uses
  %vec.ind435 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph304.split.us.preheader.i ], [ %vec.ind.next437, %vector.body433 ] ; 2 uses
  %i.hm = uitofp nneg <8 x i32> %vec.ind435 to <8 x double>
  %i.hn = call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.hm, <8 x double> %broadcast.splat430, <8 x double> %broadcast.splat432)
  %i.ho = fptosi <8 x double> %i.hn to <8 x i32>
  %i.hp = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ho, <8 x i32> zeroinitializer)
  %i.hq = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.hp, <8 x i32> splat (i32 255))
  %i.hr = trunc nuw nsw <8 x i32> %i.hq to <8 x i16>
end_hunk_0

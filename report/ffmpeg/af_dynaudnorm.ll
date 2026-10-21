Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_dynaudnorm?download=true
inline.NumInlined: 92
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@process_command:bb.a
  br label %.lr.ph.i65.prol.loopexit

.lr.ph.i65.prol.loopexit:                         ; preds = %.lr.ph.i65.prol, %.lr.ph.preheader.i64
  %.unr141 = phi i32 [ %i.gd, %.lr.ph.preheader.i64 ], [ %i.hh, %.lr.ph.i65.prol ]
  %.027.i66.unr = phi i32 [ %i.gy, %.lr.ph.preheader.i64 ], [ %i.ha, %.lr.ph.i65.prol ]
  %i.hi = icmp eq i32 %i.gy, 1
  br i1 %i.hi, label %cqueue_resize.exit74, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.prol.loopexit, %.lr.ph.i65
  %i.hj = phi i32 [ %i.hy, %.lr.ph.i65 ], [ %.unr141, %.lr.ph.i65.prol.loopexit ]
  %.027.i66 = phi i32 [ %i.hr, %.lr.ph.i65 ], [ %.027.i66.unr, %.lr.ph.i65.prol.loopexit ] ; 2 uses
  %i.hk = load ptr, ptr %i.ga, align 8, !tbaa !54 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = add nsw i32 %i.hj, -1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hk, ptr nonnull align 8 %i.hl, i64 %i.ho, i1 false)
  %i.hp = load i32, ptr %i.gc, align 8, !tbaa !53 ; 2 uses
  %i.hq = add nsw i32 %i.hp, -1
  store i32 %i.hq, ptr %i.gc, align 8, !tbaa !53
  %i.hr = add nsw i32 %.027.i66, -2
  %i.hs = load ptr, ptr %i.ga, align 8, !tbaa !54 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = add nsw i32 %i.hp, -2
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hs, ptr nonnull align 8 %i.ht, i64 %i.hw, i1 false)
  %i.hx = load i32, ptr %i.gc, align 8, !tbaa !53
  %i.hy = add nsw i32 %i.hx, -1                   ; 2 uses
  store i32 %i.hy, ptr %i.gc, align 8, !tbaa !53
  %i.hz = icmp sgt i32 %.027.i66, 2
  br i1 %i.hz, label %.lr.ph.i65, label %cqueue_resize.exit74, !llvm.loop !101

cqueue_resize.exit74:                             ; preds = %.lr.ph.i65.prol.loopexit, %.lr.ph.i65, %._crit_edge.i73, %bb.k
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 %i.gb, ptr %i.ia, align 8, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = load i32, ptr %i.bm, align 8, !tbaa !33
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next, %i.ic
  br i1 %i.id, label %bb.e, label %.loopexit, !llvm.loop !106

.loopexit:                                        ; preds = %cqueue_resize.exit74, %init_gaussian_filter.exit, %bb.b
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 2436
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !64
  %i.ii = sitofp nsz i32 %i.if to double
  %i.ij = sitofp nsz i32 %i.ih to double
  %i.ik = fdiv nnan nsz double %i.ij, 1.000000e+03
  %i.il = fmul nsz double %i.ik, %i.ii
  %i.im = tail call i64 @llvm.lrint.i64.f64(double %i.il)
  %i.in = trunc i64 %i.im to i32                  ; 2 uses
  %i.io = srem i32 %i.in, 2
  %i.ip = add nsw i32 %i.io, %i.in                ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 2432
  store i32 %i.ip, ptr %i.iq, align 8, !tbaa !65
  %i.ir = sitofp nsz i32 %i.ip to double
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 2456
  %i.it = load double, ptr %i.is, align 8, !tbaa !66
  %i.iu = fsub nsz double 1.000000e+00, %i.it
  %i.iv = fmul nsz double %i.iu, %i.ir
  %i.iw = tail call i64 @llvm.lrint.i64.f64(double %i.iv)
  %spec.select75 = tail call i64 @llvm.smax.i64(i64 %i.iw, i64 1)
  %spec.select = trunc i64 %spec.select75 to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 2548
  store i32 %spec.select, ptr %i.ix, align 4, !tbaa !67
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 2464
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !68 ; 2 uses
  %.not46 = icmp eq ptr %i.iz, null
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 2648
  %i.jb = tail call i32 @av_expr_parse(ptr noundef nonnull %i.ja, ptr noundef nonnull %i.iz, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %0) #14 ; 2 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.a, %bb.m
  %.041 = phi i32 [ 0, %bb.m ], [ %i.h, %bb.a ], [ %i.jb, %bb.l ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2568 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.n = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #14 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 2560
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(4) @.str.41) #15
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @av_channel_layout_from_string(ptr noundef nonnull %i.l, ptr noundef nonnull %i.q) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = tail call i32 @ff_outlink_get_status(ptr noundef %i.i) #14 ; 2 uses
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ff_inlink_set_status(ptr noundef nonnull %i.f, i32 noundef %i.t) #14
  br label %flush.exit

.critedge:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2552 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !70
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %bb.f, label %.thread61

bb.f:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 2548 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !67   ; 2 uses
  %i.y = call i32 @ff_inlink_consume_samples(ptr noundef nonnull %i.f, i32 noundef %i.x, i32 noundef %i.x, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %flush.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not50 = icmp eq i32 %i.y, 0
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.ab = getelementptr i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ac = call fastcc i32 @filter_frame(ptr %.val, ptr noundef %i.aa) ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %flush.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !67
  %i.af = call i32 @ff_inlink_check_available_samples(ptr noundef nonnull %i.f, i32 noundef %i.ae) #14
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %flush.exit

bb.k:                                             ; preds = %bb.i
  %.pr = load i32, ptr %i.u, align 8, !tbaa !70
  %.not51 = icmp eq i32 %.pr, 0
  br i1 %.not51, label %bb.l, label %.thread61

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @ff_inlink_acknowledge_status(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = icmp eq i32 %i.aj, -541478725
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.u, align 8, !tbaa !70
  br label %.thread61

bb.n:                                             ; preds = %bb.l
  %.pr60 = load i32, ptr %i.u, align 8, !tbaa !70
  %.not52 = icmp eq i32 %.pr60, 0
  br i1 %.not52, label %.thread65, label %.thread61

.thread61:                                        ; preds = %.critedge, %bb.k, %bb.m, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 2426
  %i.am = load i16, ptr %i.al, align 2, !tbaa !72
  %.not53 = icmp eq i16 %i.am, 0
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread61
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20 ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2616
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2552 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %.not20.i = icmp eq i32 %i.av, 0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2544 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 2600
  br label %bb.p

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %.pre.i.a = load i32, ptr %i.au, align 8, !tbaa !70
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.loopexit.loopexit.i
  %i.ay = phi i32 [ %.pre.i.a, %.loopexit.loopexit.i ], [ %i.az, %.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %.critedge.i, label %bb.p, !llvm.loop !107

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph21.i
  %i.az = phi i32 [ %i.av, %.lr.ph21.i ], [ %i.ay, %.loopexit.i ]
  %1 = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.ba = load ptr, ptr %1, align 8, !tbaa !41
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %.val.i = load i32, ptr %i.bb, align 8, !tbaa !53
  %i.bc = icmp sgt i32 %.val.i, 0
  br i1 %i.bc, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !33
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %.val15.i = load ptr, ptr %i.bh, align 8, !tbaa !54
  %i.bi = load double, ptr %.val15.i, align 8, !tbaa !49
  %i.bj = trunc nuw nsw i64 %indvars.iv.i to i32
  call fastcc void @update_gain_history(ptr noundef nonnull %i.as, i32 noundef %i.bj, double %i.bi, double 1.000000e+00)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = load i32, ptr %i.aw, align 8, !tbaa !33
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !108

.critedge.i:                                      ; preds = %bb.p, %.loopexit.i, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 2548
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !67
  %i.bp = call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.i, i32 noundef %i.bo) #14 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %flush.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 2544
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !33 ; 5 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph38.i.i, label %._crit_edge39.split.i.i

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !78 ; 9 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 2488 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.as, i64 2472   ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 2520 ; 2 uses
  br i1 %i.bx, label %.lr.ph38.split.i.i, label %._crit_edge39.split.i.i

.lr.ph38.split.i.i:                               ; preds = %.lr.ph38.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 2444
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 2452
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !79
  %.not32.i.i = icmp eq i32 %i.cd, 0
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !80
  %.not33.i.i = icmp eq i32 %i.ce, 0              ; 2 uses
  br i1 %.not32.i.i, label %.lr.ph38.split.split.us.i.i, label %.lr.ph38.split.split.i.i

.lr.ph38.split.split.us.i.i:                      ; preds = %.lr.ph38.split.i.i
  br i1 %.not33.i.i, label %.lr.ph.us.us.preheader.i.i, label %.lr.ph38.split.split.us.split.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %.lr.ph38.split.split.us.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.br to i64
  %wide.trip.count76.i.i = zext nneg i32 %i.bw to i64 ; 4 uses
  %i.cf = shl nuw nsw i64 %wide.trip.count76.i.i, 3
  %scevgep134 = getelementptr i8, ptr %i.as, i64 2496
  %min.iters.check139 = icmp ult i32 %i.bw, 4
  %n.vec141 = and i64 %wide.trip.count76.i.i, 2147483644 ; 3 uses
  %cmp.n150 = icmp eq i64 %n.vec141, %wide.trip.count76.i.i
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %._crit_edge.split.us.us.split.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv78.i.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next79.i.i, %._crit_edge.split.us.us.split.us.us.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv78.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !81 ; 4 uses
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.us.us.i.i
  %scevgep133 = getelementptr i8, ptr %i.ch, i64 %i.cf
  %bound0135 = icmp ult ptr %i.ch, %scevgep134
  %bound1136 = icmp ult ptr %i.bz, %scevgep133
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck132
  %i.ci = load double, ptr %i.by, align 8, !tbaa !82, !alias.scope !130 ; 2 uses
  %broadcast.splatinsert142 = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cj = load double, ptr %i.bz, align 8, !tbaa !83, !alias.scope !130
  %broadcast.splatinsert144 = insertelement <2 x double> poison, double %i.cj, i64 0 ; 2 uses
  %broadcast.splat145 = shufflevector <2 x double> %broadcast.splatinsert144, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %broadcast.splatinsert144, <2 x double> %broadcast.splatinsert142)
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fcmp nsz ogt double %i.ci, f0x3CB0000000000000
  %i.cn = select nsz i1 %i.cm, <2 x double> %i.cl, <2 x double> %broadcast.splat145 ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph140
  %index147 = phi i64 [ 0, %vector.ph140 ], [ %index.next148, %vector.body146 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index147 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x double> %i.cn, ptr %i.co, align 8, !tbaa !49, !alias.scope !131, !noalias !130
  store <2 x double> %i.cn, ptr %i.cp, align 8, !tbaa !49, !alias.scope !131, !noalias !130
  %index.next148 = add nuw i64 %index147, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.cq, label %middle.block149, label %vector.body146, !llvm.loop !112

middle.block149:                                  ; preds = %vector.body146
  br i1 %cmp.n150, label %._crit_edge.split.us.us.split.us.us.i.i, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %vector.memcheck132, %.lr.ph.us.us.i.i, %middle.block149
  %indvars.iv73.i.i.ph = phi i64 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph.us.us.i.i ], [ %n.vec141, %middle.block149 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv73.i.i = phi i64 [ %indvars.iv.next74.i.i, %scalar.ph138 ], [ %indvars.iv73.i.i.ph, %scalar.ph138.preheader ] ; 2 uses
  %i.cr = load double, ptr %i.by, align 8, !tbaa !82 ; 2 uses
  %i.cs = fcmp nsz ogt double %i.cr, f0x3CB0000000000000
  %i.ct = load double, ptr %i.bz, align 8, !tbaa !83 ; 2 uses
  %i.cu = call nsz double @llvm.minnum.f64(double %i.ct, double %i.cr)
  %i.cv = select nsz i1 %i.cs, double %i.cu, double %i.ct
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv73.i.i
  store double %i.cv, ptr %i.cw, align 8, !tbaa !49
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %indvars.iv.next74.i.i, %wide.trip.count76.i.i
  br i1 %exitcond77.not.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, label %scalar.ph138, !llvm.loop !113

._crit_edge.split.us.us.split.us.us.i.i:          ; preds = %scalar.ph138, %middle.block149
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1 ; 2 uses
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %._crit_edge39.split.i.i, label %.lr.ph.us.us.i.i, !llvm.loop !114

.lr.ph38.split.split.us.split.i.i:                ; preds = %.lr.ph38.split.split.us.i.i
  %i.cx = load ptr, ptr %i.ca, align 8, !tbaa !84 ; 3 uses
  %wide.trip.count71.i.i = zext nneg i32 %i.br to i64 ; 2 uses
  %wide.trip.count66.i.i = zext nneg i32 %i.bw to i64 ; 4 uses
  %i.cy = shl nuw nsw i64 %wide.trip.count66.i.i, 3
  %scevgep105 = getelementptr i8, ptr %i.as, i64 2496
  %i.cz = shl nuw nsw i64 %wide.trip.count71.i.i, 3
  %scevgep106 = getelementptr i8, ptr %i.cx, i64 %i.cz
  %min.iters.check114 = icmp ult i32 %i.bw, 4
  %n.vec116 = and i64 %wide.trip.count66.i.i, 2147483644 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec116, %wide.trip.count66.i.i
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.split.us.us.split.i.i, %.lr.ph38.split.split.us.split.i.i
  %indvars.iv68.i.i = phi i64 [ %indvars.iv.next69.i.i, %._crit_edge.split.us.us.split.i.i ], [ 0, %.lr.ph38.split.split.us.split.i.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv68.i.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81 ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv68.i.i ; 2 uses
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph.us.i.i
  %scevgep104 = getelementptr i8, ptr %i.db, i64 %i.cy ; 2 uses
  %bound0107 = icmp ult ptr %i.db, %scevgep105
  %bound1108 = icmp ult ptr %i.bz, %scevgep104
  %found.conflict109 = and i1 %bound0107, %bound1108
  %bound0110 = icmp ult ptr %i.db, %scevgep106
  %bound1111 = icmp ult ptr %i.cx, %scevgep104
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx = or i1 %found.conflict109, %found.conflict112
  br i1 %conflict.rdx, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck103
  %i.dd = load double, ptr %i.by, align 8, !tbaa !82, !alias.scope !132 ; 2 uses
  %broadcast.splatinsert117 = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.de = load double, ptr %i.bz, align 8, !tbaa !83, !alias.scope !132
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.de, i64 0 ; 2 uses
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %broadcast.splatinsert119, <2 x double> %broadcast.splatinsert117)
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fcmp nsz ogt double %i.dd, f0x3CB0000000000000
  %i.di = select nsz i1 %i.dh, <2 x double> %i.dg, <2 x double> %broadcast.splat120 ; 3 uses
  %i.dj = fneg nsz <2 x double> %i.di             ; 2 uses
  %i.dk = load double, ptr %i.dc, align 8, !tbaa !49, !alias.scope !133
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.dk, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph115
  %index122 = phi i64 [ 0, %vector.ph115 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %vec.ind123 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph115 ], [ %vec.ind.next128, %vector.body121 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index122 ; 3 uses
  %i.dm = and <2 x i64> %vec.ind123, splat (i64 1)
  %i.dn = and <2 x i64> %vec.ind123, splat (i64 1)
  %i.do = icmp eq <2 x i64> %i.dm, zeroinitializer
  %i.dp = icmp eq <2 x i64> %i.dn, zeroinitializer
  %i.dq = select nsz <2 x i1> %i.do, <2 x double> %i.di, <2 x double> %i.dj ; 2 uses
  %i.dr = select nsz <2 x i1> %i.dp, <2 x double> %i.di, <2 x double> %i.dj ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  store <2 x double> %i.dq, ptr %i.dl, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  store <2 x double> %i.dr, ptr %i.ds, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  %i.dt = fadd nsz <2 x double> %broadcast.splat126, %i.dq
  %i.du = fadd nsz <2 x double> %broadcast.splat126, %i.dr
  store <2 x double> %i.dt, ptr %i.dl, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %vec.ind.next128 = add nuw <2 x i64> %vec.ind123, splat (i64 4)
  %i.dv = icmp eq i64 %index.next127, %n.vec116
  br i1 %i.dv, label %middle.block129, label %vector.body121, !llvm.loop !119

end_hunk_0

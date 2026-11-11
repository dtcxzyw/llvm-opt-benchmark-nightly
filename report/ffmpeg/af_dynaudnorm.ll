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
  %scevgep147 = getelementptr i8, ptr %i.as, i64 2496
  %i.cf = shl nuw nsw i64 %wide.trip.count76.i.i, 3
  %min.iters.check149 = icmp ult i32 %i.bw, 4
  %n.vec155 = and i64 %wide.trip.count76.i.i, 2147483644 ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec155, %wide.trip.count76.i.i
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %._crit_edge.split.us.us.split.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv78.i.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next79.i.i, %._crit_edge.split.us.us.split.us.us.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv78.i.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !81 ; 4 uses
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.us.us.i.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cf
  %bound0151 = icmp ult ptr %i.ch, %scevgep147
  %bound1152 = icmp ult ptr %i.bz, %i.ci
  %found.conflict153 = and i1 %bound0151, %bound1152
  br i1 %found.conflict153, label %scalar.ph148.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck150
  %i.cj = load double, ptr %i.by, align 8, !tbaa !82, !alias.scope !130 ; 2 uses
  %broadcast.splatinsert156 = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.ck = load double, ptr %i.bz, align 8, !tbaa !83, !alias.scope !130
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %i.ck, i64 0 ; 2 uses
  %broadcast.splat159 = shufflevector <2 x double> %broadcast.splatinsert158, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %broadcast.splatinsert158, <2 x double> %broadcast.splatinsert156)
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fcmp nsz ogt double %i.cj, f0x3CB0000000000000
  %i.co = select nsz i1 %i.cn, <2 x double> %i.cm, <2 x double> %broadcast.splat159 ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph154
  %index161 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body160 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index161 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !49, !alias.scope !131, !noalias !130
  store <2 x double> %i.co, ptr %i.cq, align 8, !tbaa !49, !alias.scope !131, !noalias !130
  %index.next162 = add nuw i64 %index161, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.cr, label %middle.block163, label %vector.body160, !llvm.loop !112

middle.block163:                                  ; preds = %vector.body160
  br i1 %cmp.n164, label %._crit_edge.split.us.us.split.us.us.i.i, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.memcheck150, %.lr.ph.us.us.i.i, %middle.block163
  %indvars.iv73.i.i.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph.us.us.i.i ], [ %n.vec155, %middle.block163 ]
  br label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.preheader, %scalar.ph148
  %indvars.iv73.i.i = phi i64 [ %indvars.iv.next74.i.i, %scalar.ph148 ], [ %indvars.iv73.i.i.ph, %scalar.ph148.preheader ] ; 2 uses
  %i.cs = load double, ptr %i.by, align 8, !tbaa !82 ; 2 uses
  %i.ct = fcmp nsz ogt double %i.cs, f0x3CB0000000000000
  %i.cu = load double, ptr %i.bz, align 8, !tbaa !83 ; 2 uses
  %i.cv = call nsz double @llvm.minnum.f64(double %i.cu, double %i.cs)
  %i.cw = select nsz i1 %i.ct, double %i.cv, double %i.cu
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv73.i.i
  store double %i.cw, ptr %i.cx, align 8, !tbaa !49
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %indvars.iv.next74.i.i, %wide.trip.count76.i.i
  br i1 %exitcond77.not.i.i, label %._crit_edge.split.us.us.split.us.us.i.i, label %scalar.ph148, !llvm.loop !113

._crit_edge.split.us.us.split.us.us.i.i:          ; preds = %scalar.ph148, %middle.block163
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1 ; 2 uses
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %._crit_edge39.split.i.i, label %.lr.ph.us.us.i.i, !llvm.loop !114

.lr.ph38.split.split.us.split.i.i:                ; preds = %.lr.ph38.split.split.us.i.i
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !84 ; 3 uses
  %wide.trip.count71.i.i = zext nneg i32 %i.br to i64 ; 2 uses
  %wide.trip.count66.i.i = zext nneg i32 %i.bw to i64 ; 4 uses
  %i.cz = shl nuw nsw i64 %wide.trip.count71.i.i, 3
  %scevgep113 = getelementptr i8, ptr %i.cy, i64 %i.cz
  %scevgep114 = getelementptr i8, ptr %i.as, i64 2496
  %i.da = shl nuw nsw i64 %wide.trip.count66.i.i, 3
  %min.iters.check116 = icmp ult i32 %i.bw, 4
  %n.vec125 = and i64 %wide.trip.count66.i.i, 2147483644 ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec125, %wide.trip.count66.i.i
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.split.us.us.split.i.i, %.lr.ph38.split.split.us.split.i.i
  %indvars.iv68.i.i = phi i64 [ %indvars.iv.next69.i.i, %._crit_edge.split.us.us.split.i.i ], [ 0, %.lr.ph38.split.split.us.split.i.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv68.i.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !81 ; 5 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv68.i.i ; 2 uses
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph.us.i.i
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.da  ; 2 uses
  %bound0118 = icmp ult ptr %i.dc, %scevgep114
  %bound1119 = icmp ult ptr %i.bz, %i.de
  %found.conflict120 = and i1 %bound0118, %bound1119
  %bound0121 = icmp ult ptr %i.dc, %scevgep113
  %bound1122 = icmp ult ptr %i.cy, %i.de
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict120, %found.conflict123
  br i1 %conflict.rdx, label %scalar.ph115.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck117
  %i.df = load double, ptr %i.by, align 8, !tbaa !82, !alias.scope !132 ; 2 uses
  %broadcast.splatinsert126 = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dg = load double, ptr %i.bz, align 8, !tbaa !83, !alias.scope !132
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.dg, i64 0 ; 2 uses
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %broadcast.splatinsert128, <2 x double> %broadcast.splatinsert126)
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fcmp nsz ogt double %i.df, f0x3CB0000000000000
  %i.dk = select nsz i1 %i.dj, <2 x double> %i.di, <2 x double> %broadcast.splat129 ; 3 uses
  %i.dl = fneg nsz <2 x double> %i.dk             ; 2 uses
  %i.dm = load double, ptr %i.dd, align 8, !tbaa !49, !alias.scope !133
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %i.dm, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph124
  %index131 = phi i64 [ 0, %vector.ph124 ], [ %index.next136, %vector.body130 ] ; 2 uses
  %vec.ind132 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph124 ], [ %vec.ind.next137, %vector.body130 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index131 ; 3 uses
  %i.do = and <2 x i64> %vec.ind132, splat (i64 1)
  %i.dp = and <2 x i64> %vec.ind132, splat (i64 1)
  %i.dq = icmp eq <2 x i64> %i.do, zeroinitializer
  %i.dr = icmp eq <2 x i64> %i.dp, zeroinitializer
  %i.ds = select nsz <2 x i1> %i.dq, <2 x double> %i.dk, <2 x double> %i.dl ; 2 uses
  %i.dt = select nsz <2 x i1> %i.dr, <2 x double> %i.dk, <2 x double> %i.dl ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  store <2 x double> %i.ds, ptr %i.dn, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  store <2 x double> %i.dt, ptr %i.du, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  %i.dv = fadd nsz <2 x double> %broadcast.splat135, %i.ds
  %i.dw = fadd nsz <2 x double> %broadcast.splat135, %i.dt
  store <2 x double> %i.dv, ptr %i.dn, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !49, !alias.scope !134, !noalias !135
  %index.next136 = add nuw i64 %index131, 4       ; 2 uses
  %vec.ind.next137 = add nuw <2 x i64> %vec.ind132, splat (i64 4)
  %i.dx = icmp eq i64 %index.next136, %n.vec125
  br i1 %i.dx, label %middle.block138, label %vector.body130, !llvm.loop !119

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_rotate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@filter_frame:bb.a
  %i.an = fmul nsz double %i.am, 1.600000e+01
  %i.ao = fptosi double %i.an to i32              ; 4 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp slt i32 %i.ao, 0
  %i.ar = sub nsw i64 3294199, %i.ap
  %spec.select.i = select i1 %i.aq, i64 %i.ar, i64 %i.ap
  %i.as = add nsw i32 %i.ao, 1647099
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp slt i32 %i.ao, -1647099
  %i.av = sub nsw i64 3294199, %i.at
  %spec.select.i94 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = urem i64 %spec.select.i, 6588398        ; 3 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 4941297
  %i.ay = add nuw nsw i64 %i.aw, -6588398
  %.1.i = select i1 %i.ax, i64 %i.ay, i64 %i.aw   ; 3 uses
  %i.az = icmp sgt i64 %.1.i, 1647098
  %i.ba = sub nsw i64 3294199, %.1.i
  %.2.i = select i1 %i.az, i64 %i.ba, i64 %.1.i   ; 4 uses
  %i.bb = mul nsw i64 %.2.i, %.2.i
  %i.bc = lshr i64 %i.bb, 20                      ; 4 uses
  %i.bd = mul i64 %.2.i, %i.bc
  %i.be = sub i64 0, %i.bd
  %i.bf = sdiv i64 %i.be, 6291456                 ; 2 uses
  %i.bg = mul i64 %i.bc, %i.bf
  %i.bh = sub i64 0, %i.bg
  %i.bi = sdiv i64 %i.bh, 20971520                ; 2 uses
  %i.bj = mul i64 %i.bc, %i.bi
  %i.bk = sub i64 0, %i.bj
  %i.bl = sdiv i64 %i.bk, 44040192                ; 2 uses
  %i.bm = mul i64 %i.bc, %i.bl
  %i.bn = sub i64 0, %i.bm
  %i.bo = sdiv i64 %i.bn, 75497472
  %i.bp = add nsw i64 %.2.i, 8
  %i.bq = add nsw i64 %i.bp, %i.bf
  %i.br = add nsw i64 %i.bq, %i.bi
  %i.bs = add nsw i64 %i.br, %i.bl
  %i.bt = add nsw i64 %i.bs, %i.bo
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = trunc i64 %i.bu to i32                  ; 3 uses
  %i.bw = urem i64 %spec.select.i94, 6588398      ; 3 uses
  %i.bx = icmp samesign ugt i64 %i.bw, 4941297
  %i.by = add nuw nsw i64 %i.bw, -6588398
  %.1.i95 = select i1 %i.bx, i64 %i.by, i64 %i.bw ; 3 uses
  %i.bz = icmp sgt i64 %.1.i95, 1647098
  %i.ca = sub nsw i64 3294199, %.1.i95
  %.2.i96 = select i1 %i.bz, i64 %i.ca, i64 %.1.i95 ; 4 uses
  %i.cb = mul nsw i64 %.2.i96, %.2.i96
  %i.cc = lshr i64 %i.cb, 20                      ; 4 uses
  %i.cd = mul i64 %.2.i96, %i.cc
  %i.ce = sub i64 0, %i.cd
  %i.cf = sdiv i64 %i.ce, 6291456                 ; 2 uses
  %i.cg = mul i64 %i.cc, %i.cf
  %i.ch = sub i64 0, %i.cg
  %i.ci = sdiv i64 %i.ch, 20971520                ; 2 uses
  %i.cj = mul i64 %i.cc, %i.ci
  %i.ck = sub i64 0, %i.cj
  %i.cl = sdiv i64 %i.ck, 44040192                ; 2 uses
  %i.cm = mul i64 %i.cc, %i.cl
  %i.cn = sub i64 0, %i.cm
  %i.co = sdiv i64 %i.cn, 75497472
  %i.cp = add nsw i64 %.2.i96, 8
  %i.cq = add nsw i64 %i.cp, %i.cf
  %i.cr = add nsw i64 %i.cq, %i.ci
  %i.cs = add nsw i64 %i.cr, %i.cl
  %i.ct = add nsw i64 %i.cs, %i.co
  %i.cu = lshr i64 %i.ct, 4
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !27
  %.not93 = icmp eq i32 %i.cx, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.db = load i32, ptr %i.i, align 8, !tbaa !68
  %i.dc = load i32, ptr %i.k, align 4, !tbaa !69
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.m, ptr noundef nonnull %i.da, i32 noundef 0, i32 noundef 0, i32 noundef %i.db, i32 noundef %i.dc) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 84 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 60
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.097 = phi i32 [ 0, %.lr.ph ], [ %i.fe, %bb.j ] ; 3 uses
  %i.du = add nsw i32 %.097, -1
  %or.cond = icmp ult i32 %i.du, 2
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dv = load i32, ptr %i.dg, align 4, !tbaa !44
  %i.dw = load i32, ptr %i.dh, align 8, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = phi i32 [ %i.dv, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.dy = phi i32 [ %i.dw, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.dz = load i32, ptr %i.i, align 8, !tbaa !68
  %i.ea = sub nsw i32 0, %i.dz
  %i.eb = ashr i32 %i.ea, %i.dx                   ; 3 uses
  %i.ec = sub nsw i32 0, %i.eb
  %i.ed = load i32, ptr %i.k, align 4, !tbaa !69
  %i.ee = sub nsw i32 0, %i.ed
  %i.ef = ashr i32 %i.ee, %i.dy                   ; 2 uses
  %i.eg = sub nsw i32 0, %i.ef                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !65
  store ptr %i.eh, ptr %2, align 8, !tbaa !47
  store ptr %i.m, ptr %i.di, align 8, !tbaa !48
  %i.ei = load i32, ptr %i.dk, align 8, !tbaa !68
  %i.ej = sub nsw i32 0, %i.ei
  %i.ek = ashr i32 %i.ej, %i.dx
  %i.el = sub nsw i32 0, %i.ek
  store i32 %i.el, ptr %i.dj, align 8, !tbaa !49
  %i.em = load i32, ptr %i.dm, align 4, !tbaa !69
  %i.en = sub nsw i32 0, %i.em
  %i.eo = ashr i32 %i.en, %i.dy
  %i.ep = sub nsw i32 0, %i.eo
  store i32 %i.ep, ptr %i.dl, align 4, !tbaa !50
  store i32 %i.ec, ptr %i.dn, align 8, !tbaa !51
  store i32 %i.eg, ptr %i.do, align 4, !tbaa !52
  store i32 %.097, ptr %i.dp, align 8, !tbaa !53
  %i.eq = xor i32 %i.eb, -1
  %i.er = add nsw i32 %i.eb, 1
  %i.es = mul nsw i32 %i.er, %i.cv
  %i.et = mul nsw i32 %i.eq, %i.bv
  %i.eu = add nsw i32 %i.ef, 1                    ; 2 uses
  %i.ev = mul nsw i32 %i.eu, %i.bv
  %i.ew = mul nsw i32 %i.eu, %i.cv
  %i.ex = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.et, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3
  %i.fb = sdiv <4 x i32> %i.fa, splat (i32 2)
  store <4 x i32> %i.fb, ptr %i.dq, align 4, !tbaa !54
  store i32 %i.cv, ptr %i.dr, align 4, !tbaa !55
  store i32 %i.bv, ptr %i.ds, align 8, !tbaa !56
  store i32 0, ptr %i.dt, align 4
  %i.fc = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #11
  %. = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.fc)
  %i.fd = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.fe = add nuw nsw i32 %.097, 1                ; 2 uses
  %i.ff = load i32, ptr %i.dd, align 4, !tbaa !43
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.h, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.j, %bb.g
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  %i.fh = call i32 @ff_filter_frame(ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #12
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.b
  %.088 = phi i32 [ %i.fh, %._crit_edge ], [ -12, %bb.b ]
  ret i32 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_fill_rectangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 51 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !49   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !56   ; 3 uses
  %i.n = mul nsw i32 %i.e, %2
  %i.o = sdiv i32 %i.n, %3                        ; 4 uses
  %i.p = add nsw i32 %2, 1
  %i.q = mul nsw i32 %i.e, %i.p
  %i.r = sdiv i32 %i.q, %3                        ; 2 uses
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph314, label %._crit_edge

.lr.ph314:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !132
  %i.v = mul nsw i32 %i.o, %i.k
  %i.w = add nsw i32 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !133
  %i.z = mul nsw i32 %i.o, %i.m
  %i.aa = add nsw i32 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !135
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.am = add nsw i32 %i.g, -1                    ; 3 uses
  %i.an = shl nsw i32 %i.am, 15
  %i.ao = add i32 %i.ae, %i.an
  %i.ap = add nsw i32 %i.i, -1                    ; 3 uses
  %i.aq = shl nsw i32 %i.ap, 15
  %i.ar = add i32 %i.ac, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = icmp eq i32 %i.c, %i.g                  ; 2 uses
  %i.au = icmp eq i32 %i.e, %i.i                  ; 2 uses
  %i.av = icmp eq i32 %i.c, %i.i                  ; 2 uses
  %i.aw = icmp eq i32 %i.e, %i.g                  ; 2 uses
  %i.ax = icmp sgt i32 %i.c, 0                    ; 16 uses
  %i.ay = sext i32 %i.ag to i64                   ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ay ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ay ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ay ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 408
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ay ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ay ; 6 uses
  %i.bj = shl nsw i32 %i.c, 2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i32 %i.c, 3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i32 %i.c, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sext i32 %i.c to i64                    ; 34 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 67 uses
  %wide.trip.count340 = zext nneg i32 %i.c to i64
  %wide.trip.count345 = zext nneg i32 %i.c to i64
  %wide.trip.count350 = zext nneg i32 %i.c to i64
  %wide.trip.count355 = zext nneg i32 %i.c to i64
  %wide.trip.count365 = zext nneg i32 %i.c to i64
  %wide.trip.count370 = zext nneg i32 %i.c to i64
  %wide.trip.count375 = zext nneg i32 %i.c to i64
  %wide.trip.count380 = zext nneg i32 %i.c to i64
  %wide.trip.count390 = zext nneg i32 %i.c to i64
  %wide.trip.count395 = zext nneg i32 %i.c to i64
  %wide.trip.count400 = zext nneg i32 %i.c to i64
  %i.bq = sub nsw i64 %i.bp, %wide.trip.count     ; 4 uses
  %i.br = shl nuw nsw i64 %wide.trip.count, 1
  %i.bs = shl nuw nsw i64 %wide.trip.count, 2
  %4 = add nsw i64 %wide.trip.count, -1           ; 2 uses
  %5 = shl i32 %i.c, 1
  %6 = add i32 %5, -2                             ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = add nuw nsw i64 %7, 2
  %i.bt = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bu = sub nsw i64 %8, %i.bt
  %9 = add nsw i64 %wide.trip.count, -1           ; 2 uses
  %10 = shl i32 %i.c, 2
  %11 = add i32 %10, -4                           ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %13 = add nuw nsw i64 %12, 4
  %i.bv = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %14 = sub nsw i64 %13, %i.bv
  %i.bw = shl nuw nsw i64 %wide.trip.count, 1
  %i.bx = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check685 = icmp ugt i32 %i.c, 7
  %n.vec691 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n696 = icmp eq i64 %n.vec691, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter723 = and i64 %wide.trip.count, 1
  %i.by = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod724.not = icmp eq i64 %xtraiter723, 0
  %lcmp.mod725 = trunc i32 %i.c to i1
  %min.iters.check662 = icmp ugt i32 %i.c, 7
  %n.vec668 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n673 = icmp eq i64 %n.vec668, %wide.trip.count
  %xtraiter726 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  %min.iters.check625 = icmp ugt i32 %i.c, 3
  %min.iters.check628 = icmp ult i32 %i.c, 32
  %i.bz = and i64 %wide.trip.count, 28
  %n.vec630 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n637 = icmp eq i64 %n.vec630, %wide.trip.count
  %min.epilog.iters.check641 = icmp eq i64 %i.bz, 0
  %n.vec644 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n650 = icmp eq i64 %n.vec644, %wide.trip.count
  %xtraiter729 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  %min.iters.check604 = icmp ult i32 %i.c, 16
  %15 = trunc i64 %9 to i32
  %mul.result592 = shl i32 %15, 2
  %16 = icmp ugt i32 %mul.result592, %11
  %17 = icmp ugt i64 %9, 1073741823
  %18 = or i1 %16, %17
  %n.vec610 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n619 = icmp eq i64 %n.vec610, %wide.trip.count
  %xtraiter732 = and i64 %wide.trip.count, 1
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  %i.ca = add nsw i64 %wide.trip.count, -1
  %xtraiter735.a = and i64 %wide.trip.count, 1
  %i.cb = icmp eq i64 %i.bx, 0
  %unroll_iter738 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod736.not.a = icmp eq i64 %xtraiter735.a, 0
  %lcmp.mod737 = trunc i32 %i.c to i1
  %min.iters.check557 = icmp ult i32 %i.c, 4
  %19 = trunc i64 %4 to i32
  %mul.result = shl i32 %19, 1
  %20 = icmp ugt i32 %mul.result, %6
  %21 = icmp ugt i64 %4, 2147483647
  %22 = or i1 %20, %21
  %min.iters.check563 = icmp ult i32 %i.c, 16
  %i.cc = and i64 %wide.trip.count, 12
  %n.vec565 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n574 = icmp eq i64 %n.vec565, %wide.trip.count
  %min.epilog.iters.check578 = icmp eq i64 %i.cc, 0
  %n.vec581 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n588 = icmp eq i64 %n.vec581, %wide.trip.count
  %xtraiter740 = and i64 %wide.trip.count, 1
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  %i.cd = add nsw i64 %wide.trip.count, -1
  %min.iters.check513 = icmp ult i32 %i.c, 8
  %min.iters.check519 = icmp ult i32 %i.c, 32
  %i.ce = and i64 %wide.trip.count, 24
  %n.vec521 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n530 = icmp eq i64 %n.vec521, %wide.trip.count
  %min.epilog.iters.check534 = icmp eq i64 %i.ce, 0
  %n.vec537 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n544 = icmp eq i64 %n.vec537, %wide.trip.count
  %xtraiter743 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod744.not = icmp eq i64 %xtraiter743, 0
  %min.iters.check492 = icmp ugt i32 %i.c, 3
  %n.vec498 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n503 = icmp eq i64 %n.vec498, %wide.trip.count
  %xtraiter746 = and i64 %wide.trip.count, 1
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  %i.cf = add nsw i64 %wide.trip.count, -1
  %xtraiter749.a = and i64 %wide.trip.count, 1
  %i.cg = icmp eq i64 %i.bx, 0
  %unroll_iter752 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod750.not.a = icmp eq i64 %xtraiter749.a, 0
  %lcmp.mod751 = trunc i32 %i.c to i1
  %min.iters.check467 = icmp ugt i32 %i.c, 7
  %n.vec473 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n478 = icmp eq i64 %n.vec473, %wide.trip.count
  %xtraiter754 = and i64 %wide.trip.count, 1
  %lcmp.mod755.not = icmp eq i64 %xtraiter754, 0
  %i.ch = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ugt i32 %i.c, 7
  %min.iters.check447 = icmp ult i32 %i.c, 32
  %i.ci = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec450 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n455 = icmp eq i64 %n.vec450, %wide.trip.count
  %xtraiter757 = and i64 %wide.trip.count, 1
  %lcmp.mod758.not = icmp eq i64 %xtraiter757, 0
  %i.cj = add nsw i64 %wide.trip.count, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph314, %simple_rotate.exit213
  %.0192313 = phi i32 [ %i.o, %.lr.ph314 ], [ %i.aco, %simple_rotate.exit213 ] ; 10 uses
  %.0194312 = phi i32 [ %i.w, %.lr.ph314 ], [ %i.acn, %simple_rotate.exit213 ] ; 2 uses
  %.0195311 = phi i32 [ %i.aa, %.lr.ph314 ], [ %i.acm, %simple_rotate.exit213 ] ; 2 uses
  %i.ck = add i32 %i.ao, %.0195311
  %i.cl = add i32 %i.ar, %.0194312
  %i.cm = load double, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %i.cn = call nsz double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp nsz olt double %i.cn, f0x3E80000000000000
  %or.cond202 = select i1 %i.co, i1 %i.at, i1 false
  %or.cond203 = select i1 %or.cond202, i1 %i.au, i1 false
  br i1 %or.cond203, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.cq = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.cr = mul nsw i32 %i.cq, %.0192313
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.cv = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.cw = mul nsw i32 %i.cv, %.0192313
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  %i.cz = load i32, ptr %i.bd, align 4, !tbaa !54 ; 2 uses
  switch i32 %i.cz, label %bb.g [
    i32 1, label %simple_rotate.exit213.sink.split
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %simple_rotate.exit213.sink.split

bb.e:                                             ; preds = %bb.c
  br label %simple_rotate.exit213.sink.split

bb.f:                                             ; preds = %bb.c
  br label %simple_rotate.exit213.sink.split

bb.g:                                             ; preds = %bb.c
  %i.da = mul nsw i32 %i.cz, %i.c
  %i.db = sext i32 %i.da to i64
  br label %simple_rotate.exit213.sink.split

bb.h:                                             ; preds = %bb.b
  %i.dc = fadd nsz double %i.cm, f0xBFF921FB54442D18
  %i.dd = call nsz double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp nsz olt double %i.dd, f0x3E80000000000000
  %or.cond204 = select i1 %i.de, i1 %i.av, i1 false
  %or.cond205 = select i1 %or.cond204, i1 %i.aw, i1 false
  br i1 %or.cond205, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.df = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.dg = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.dh = mul i32 %i.dg, %.0192313
  %i.di = sext i32 %i.dh to i64                   ; 4 uses
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.di  ; 20 uses
  %i.dk = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 7 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.dm = mul i32 %i.dl, %.0192313
  %i.dn = sext i32 %i.dm to i64                   ; 7 uses
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn ; 27 uses
  %i.dp = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.dl, label %.preheader [
    i32 1, label %.preheader248
    i32 2, label %.preheader250
    i32 3, label %.preheader252
    i32 4, label %.preheader254
  ]

.preheader254:                                    ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph302.preheader, label %simple_rotate.exit213

.lr.ph302.preheader:                              ; preds = %.preheader254
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %ident.check481.not = icmp eq i32 %i.dp, 1
  %or.cond = select i1 %min.iters.check492, i1 %ident.check481.not, i1 false
  br i1 %or.cond, label %vector.memcheck493, label %.lr.ph302.preheader707

vector.memcheck493:                               ; preds = %.lr.ph302.preheader
  %i.dr = getelementptr i8, ptr %i.df, i64 %i.bs
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.di
  %i.dt = getelementptr i8, ptr %i.dk, i64 %i.bq
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dn
  %i.dv = getelementptr i8, ptr %i.dk, i64 %i.bp
  %i.dw = getelementptr i8, ptr %i.dv, i64 3
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.dn
  %bound0494 = icmp ult ptr %i.dj, %i.dx
  %bound1495 = icmp ult ptr %i.du, %i.ds
  %found.conflict496 = and i1 %bound0494, %bound1495
  br i1 %found.conflict496, label %.lr.ph302.preheader707, label %vector.ph497

vector.ph497:                                     ; preds = %vector.memcheck493
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.bp
  %invariant.gep = getelementptr i8, ptr %i.do, i64 %i.bp
  %invariant.gep762 = getelementptr i8, ptr %i.do, i64 %i.bp
  %invariant.gep764 = getelementptr i8, ptr %i.do, i64 %i.bp
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph497
  %index500 = phi i64 [ 0, %vector.ph497 ], [ %index.next501, %vector.body499 ] ; 6 uses
  %i.dz = shl nuw nsw i64 %index500, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  %i.eb = xor i64 %index500, -1
  %i.ec = xor i64 %index500, -2
  %i.ed = xor i64 %index500, -3
  %i.ee = xor i64 %index500, -4
  %i.ef = getelementptr i8, ptr %i.dy, i64 %i.eb
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ec
  %gep763 = getelementptr i8, ptr %invariant.gep762, i64 %i.ed
  %gep765 = getelementptr i8, ptr %invariant.gep764, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !54, !alias.scope !137
  %i.eh = load i32, ptr %gep, align 4, !tbaa !54, !alias.scope !137
  %i.ei = load i32, ptr %gep763, align 4, !tbaa !54, !alias.scope !137
  %i.ej = load i32, ptr %gep765, align 4, !tbaa !54, !alias.scope !137
  %i.ek = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.eh, i64 1
  %i.em = insertelement <4 x i32> %i.el, i32 %i.ei, i64 2
  %i.en = insertelement <4 x i32> %i.em, i32 %i.ej, i64 3
  store <4 x i32> %i.en, ptr %i.ea, align 4, !tbaa !54, !alias.scope !138, !noalias !137
  %index.next501 = add nuw i64 %index500, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next501, %n.vec498
  br i1 %i.eo, label %middle.block502, label %vector.body499, !llvm.loop !80

middle.block502:                                  ; preds = %vector.body499
  br i1 %cmp.n503, label %simple_rotate.exit213, label %.lr.ph302.preheader707

.lr.ph302.preheader707:                           ; preds = %vector.memcheck493, %.lr.ph302.preheader, %middle.block502
  %indvars.iv377.ph = phi i64 [ 0, %vector.memcheck493 ], [ 0, %.lr.ph302.preheader ], [ %n.vec498, %middle.block502 ] ; 5 uses
  br i1 %lcmp.mod747.not, label %.lr.ph302.prol.loopexit, label %.lr.ph302.prol

.lr.ph302.prol:                                   ; preds = %.lr.ph302.preheader707
  %i.ep = shl nuw nsw i64 %indvars.iv377.ph, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ep
  %i.er = xor i64 %indvars.iv377.ph, -1
  %i.es = add nsw i64 %i.bp, %i.er
  %i.et = mul nsw i64 %i.es, %i.dq
  %i.eu = getelementptr inbounds i8, ptr %i.do, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !54
  store i32 %i.ev, ptr %i.eq, align 4, !tbaa !54
  %indvars.iv.next378.prol = or disjoint i64 %indvars.iv377.ph, 1
  br label %.lr.ph302.prol.loopexit

.lr.ph302.prol.loopexit:                          ; preds = %.lr.ph302.prol, %.lr.ph302.preheader707
  %indvars.iv377.unr = phi i64 [ %indvars.iv377.ph, %.lr.ph302.preheader707 ], [ %indvars.iv.next378.prol, %.lr.ph302.prol ]
  %i.ew = icmp eq i64 %indvars.iv377.ph, %i.cf
  br i1 %i.ew, label %simple_rotate.exit213, label %.lr.ph302
end_hunk_0
begin_hunk_1_@filter_slice:bb.a
  br i1 %i.ax, label %.lr.ph310, label %simple_rotate.exit213

.lr.ph310:                                        ; preds = %.preheader
  %i.ht = sext i32 %i.dl to i64                   ; 2 uses
  %i.hu = sext i32 %i.dp to i64
  br label %bb.j

.lr.ph308:                                        ; preds = %.lr.ph308.prol.loopexit, %.lr.ph308
  %indvars.iv392 = phi i64 [ %indvars.iv.next393.1, %.lr.ph308 ], [ %indvars.iv392.unr, %.lr.ph308.prol.loopexit ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv392
  %i.hw = xor i64 %indvars.iv392, -1
  %i.hx = add nsw i64 %i.bp, %i.hw
  %i.hy = mul nsw i64 %i.hx, %i.gr
  %i.hz = getelementptr inbounds i8, ptr %i.do, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !60
  store i8 %i.ia, ptr %i.hv, align 1, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv392
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %reass.sub761 = sub i64 %i.bp, %indvars.iv392
  %i.id = add i64 %reass.sub761, -2
  %i.ie = mul nsw i64 %i.id, %i.gr
  %i.if = getelementptr inbounds i8, ptr %i.do, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !60
  store i8 %i.ig, ptr %i.ic, align 1, !tbaa !60
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %exitcond396.not.1 = icmp eq i64 %indvars.iv.next393.1, %wide.trip.count395
  br i1 %exitcond396.not.1, label %simple_rotate.exit213, label %.lr.ph308, !llvm.loop !90

.lr.ph306:                                        ; preds = %.lr.ph306.prol.loopexit, %.lr.ph306
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %.lr.ph306 ], [ %indvars.iv387.unr, %.lr.ph306.prol.loopexit ] ; 5 uses
  %i.ih = shl nuw nsw i64 %indvars.iv387, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ih
  %i.ij = xor i64 %indvars.iv387, -1
  %i.ik = add nsw i64 %i.bp, %i.ij
  %i.il = mul nsw i64 %i.ik, %i.ey
  %i.im = getelementptr inbounds i8, ptr %i.do, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !140
  store i16 %i.in, ptr %i.ii, align 2, !tbaa !140
  %indvars.iv.next388 = shl i64 %indvars.iv387, 1
  %i.io = getelementptr i8, ptr %i.dj, i64 %indvars.iv.next388
  %i.ip = getelementptr i8, ptr %i.io, i64 2
  %reass.sub760 = sub i64 %i.bp, %indvars.iv387
  %i.iq = add i64 %reass.sub760, -2
  %i.ir = mul nsw i64 %i.iq, %i.ey
  %i.is = getelementptr inbounds i8, ptr %i.do, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !140
  store i16 %i.it, ptr %i.ip, align 2, !tbaa !140
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %wide.trip.count390
  br i1 %exitcond391.not.1, label %simple_rotate.exit213, label %.lr.ph306, !llvm.loop !91

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ] ; 5 uses
  %niter753 = phi i64 [ %niter753.next.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ]
  %i.iu = mul nuw nsw i64 %indvars.iv382, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.iu ; 3 uses
  %i.iw = xor i64 %indvars.iv382, -1
  %i.ix = add nsw i64 %i.bp, %i.iw
  %i.iy = mul nsw i64 %i.ix, %i.ex
  %i.iz = getelementptr inbounds i8, ptr %i.do, i64 %i.iy ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !60
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !60
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  store i8 %i.jc, ptr %i.jg, align 1, !tbaa !60
  store i8 %i.ja, ptr %i.iv, align 1, !tbaa !60
  %i.jh = mul nuw i64 %indvars.iv382, 3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.jh ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.jk = xor i64 %indvars.iv382, -2
  %i.jl = add nsw i64 %i.jk, %i.bp
  %i.jm = mul nsw i64 %i.jl, %i.ex
  %i.jn = getelementptr inbounds i8, ptr %i.do, i64 %i.jm ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !60
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !60
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 5
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !60
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i8 %i.jq, ptr %i.ju, align 1, !tbaa !60
  store i8 %i.jo, ptr %i.jj, align 1, !tbaa !60
  %indvars.iv.next383.1 = add nuw nsw i64 %indvars.iv382, 2 ; 2 uses
  %niter753.next.1 = add i64 %niter753, 2         ; 2 uses
  %niter753.ncmp.1 = icmp eq i64 %niter753.next.1, %unroll_iter752
  br i1 %niter753.ncmp.1, label %simple_rotate.exit213.loopexit706.unr-lcssa, label %.lr.ph304, !llvm.loop !92

.lr.ph302:                                        ; preds = %.lr.ph302.prol.loopexit, %.lr.ph302
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.1, %.lr.ph302 ], [ %indvars.iv377.unr, %.lr.ph302.prol.loopexit ] ; 5 uses
  %i.jv = shl nuw nsw i64 %indvars.iv377, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.jv
  %i.jx = xor i64 %indvars.iv377, -1
  %i.jy = add nsw i64 %i.bp, %i.jx
  %i.jz = mul nsw i64 %i.jy, %i.dq
  %i.ka = getelementptr inbounds i8, ptr %i.do, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !54
  store i32 %i.kb, ptr %i.jw, align 4, !tbaa !54
  %indvars.iv.next378 = shl i64 %indvars.iv377, 2
  %i.kc = getelementptr i8, ptr %i.dj, i64 %indvars.iv.next378
  %i.kd = getelementptr i8, ptr %i.kc, i64 4
  %reass.sub.a = sub i64 %i.bp, %indvars.iv377
  %i.ke = add i64 %reass.sub.a, -2
  %i.kf = mul nsw i64 %i.ke, %i.dq
  %i.kg = getelementptr inbounds i8, ptr %i.do, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !54
  store i32 %i.kh, ptr %i.kd, align 4, !tbaa !54
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377, 2 ; 2 uses
  %exitcond381.not.1 = icmp eq i64 %indvars.iv.next378.1, %wide.trip.count380
  br i1 %exitcond381.not.1, label %simple_rotate.exit213, label %.lr.ph302, !llvm.loop !93

bb.j:                                             ; preds = %.lr.ph310, %copy_elem.exit244
  %indvars.iv397 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next398, %copy_elem.exit244 ] ; 3 uses
  %i.ki = mul nsw i64 %indvars.iv397, %i.ht
  %i.kj = getelementptr inbounds i8, ptr %i.dj, i64 %i.ki ; 7 uses
  %i.kk = xor i64 %indvars.iv397, -1
  %i.kl = add nsw i64 %i.bp, %i.kk
  %i.km = mul nsw i64 %i.kl, %i.hu
  %i.kn = getelementptr inbounds i8, ptr %i.do, i64 %i.km ; 7 uses
  switch i32 %i.dl, label %bb.o [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !60
  store i8 %i.ko, ptr %i.kj, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.l:                                             ; preds = %bb.j
  %i.kp = load i16, ptr %i.kn, align 2, !tbaa !140
  store i16 %i.kp, ptr %i.kj, align 2, !tbaa !140
  br label %copy_elem.exit244

bb.m:                                             ; preds = %bb.j
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !60
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !60
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !60
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !60
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store i8 %i.ks, ptr %i.kw, align 1, !tbaa !60
  store i8 %i.kq, ptr %i.kj, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.n:                                             ; preds = %bb.j
  %i.kx = load i32, ptr %i.kn, align 4, !tbaa !54
  store i32 %i.kx, ptr %i.kj, align 4, !tbaa !54
  br label %copy_elem.exit244

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kj, ptr align 1 %i.kn, i64 %i.ht, i1 false)
  br label %copy_elem.exit244

copy_elem.exit244:                                ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %simple_rotate.exit213, label %bb.j, !llvm.loop !92

bb.p:                                             ; preds = %bb.h
  %i.ky = fadd nsz double %i.cm, f0xC00921FB54442D18
  %i.kz = call nsz double @llvm.fabs.f64(double %i.ky)
  %i.la = fcmp nsz olt double %i.kz, f0x3E80000000000000
  %or.cond206 = select i1 %i.la, i1 %i.at, i1 false
  %or.cond207 = select i1 %or.cond206, i1 %i.au, i1 false
  br i1 %or.cond207, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.lb = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.lc = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.ld = mul i32 %i.lc, %.0192313
  %i.le = sext i32 %i.ld to i64                   ; 4 uses
  %i.lf = getelementptr i8, ptr %i.lb, i64 %i.le  ; 23 uses
  %i.lg = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 6 uses
  %i.lh = xor i32 %.0192313, -1
  %i.li = add i32 %i.e, %i.lh
  %i.lj = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.lk = mul i32 %i.lj, %i.li
  %i.ll = sext i32 %i.lk to i64                   ; 6 uses
  %i.lm = getelementptr inbounds i8, ptr %i.lg, i64 %i.ll ; 14 uses
  %i.ln = load i32, ptr %i.bd, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.ln, label %.preheader256 [
    i32 1, label %.preheader258
    i32 2, label %.preheader260
    i32 3, label %.preheader262
    i32 4, label %.preheader264
  ]

.preheader264:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph292.preheader, label %simple_rotate.exit213

.lr.ph292.preheader:                              ; preds = %.preheader264
  %brmerge = select i1 %min.iters.check604, i1 true, i1 %18
  br i1 %brmerge, label %.lr.ph292.preheader713, label %vector.memcheck605

vector.memcheck605:                               ; preds = %.lr.ph292.preheader
  %23 = getelementptr i8, ptr %i.lb, i64 %i.bv
  %i.lo = getelementptr i8, ptr %23, i64 %i.le
  %i.lp = getelementptr i8, ptr %i.lg, i64 %14
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.ll
  %i.lr = getelementptr i8, ptr %i.lg, i64 %12
  %i.ls = getelementptr i8, ptr %i.lr, i64 4
  %i.lt = getelementptr i8, ptr %i.ls, i64 %i.ll
  %bound0606 = icmp ult ptr %i.lf, %i.lt
  %bound1607 = icmp ult ptr %i.lq, %i.lo
  %found.conflict608 = and i1 %bound0606, %bound1607
  br i1 %found.conflict608, label %.lr.ph292.preheader713, label %vector.body611

vector.body611:                                   ; preds = %vector.memcheck605, %vector.body611
  %index612 = phi i64 [ %index.next617, %vector.body611 ], [ 0, %vector.memcheck605 ] ; 3 uses
  %i.lu = shl nuw nsw i64 %index612, 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lu ; 2 uses
  %24 = trunc nuw nsw i64 %index612 to i32
  %25 = xor i32 %24, -1
  %26 = add nsw i32 %i.c, %25
  %27 = shl nuw nsw i32 %26, 2
  %28 = zext nneg i32 %27 to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 %28 ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -12
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 -28
  %wide.load613 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !54, !alias.scope !146
  %wide.load614 = load <4 x i32>, ptr %i.ly, align 4, !tbaa !54, !alias.scope !146
  %reverse615 = shufflevector <4 x i32> %wide.load613, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse616 = shufflevector <4 x i32> %wide.load614, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <4 x i32> %reverse615, ptr %i.lv, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  store <4 x i32> %reverse616, ptr %i.lz, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  %index.next617 = add nuw i64 %index612, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next617, %n.vec610
  br i1 %i.ma, label %middle.block618, label %vector.body611, !llvm.loop !97

middle.block618:                                  ; preds = %vector.body611
  br i1 %cmp.n619, label %simple_rotate.exit213, label %.lr.ph292.preheader713

.lr.ph292.preheader713:                           ; preds = %.lr.ph292.preheader, %vector.memcheck605, %middle.block618
  %indvars.iv352.ph = phi i64 [ 0, %vector.memcheck605 ], [ %n.vec610, %middle.block618 ], [ 0, %.lr.ph292.preheader ] ; 5 uses
  br i1 %lcmp.mod733.not, label %.lr.ph292.prol.loopexit, label %.lr.ph292.prol

.lr.ph292.prol:                                   ; preds = %.lr.ph292.preheader713
  %i.mb = shl nuw nsw i64 %indvars.iv352.ph, 2
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.mb
  %29 = trunc nuw nsw i64 %indvars.iv352.ph to i32
  %30 = xor i32 %29, -1
  %31 = add nsw i32 %i.c, %30
  %32 = shl nuw nsw i32 %31, 2
  %33 = zext nneg i32 %32 to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.lm, i64 %33
  %i.me = load i32, ptr %i.md, align 4, !tbaa !54
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !54
  %indvars.iv.next353.prol = or disjoint i64 %indvars.iv352.ph, 1
  br label %.lr.ph292.prol.loopexit

.lr.ph292.prol.loopexit:                          ; preds = %.lr.ph292.prol, %.lr.ph292.preheader713
  %indvars.iv352.unr = phi i64 [ %indvars.iv352.ph, %.lr.ph292.preheader713 ], [ %indvars.iv.next353.prol, %.lr.ph292.prol ]
  %i.mf = icmp eq i64 %indvars.iv352.ph, %i.ca
  br i1 %i.mf, label %simple_rotate.exit213, label %.lr.ph292

.preheader262:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph294.preheader, label %simple_rotate.exit213

.lr.ph294.preheader:                              ; preds = %.preheader262
  br i1 %i.cb, label %.lr.ph294.epil.preheader, label %.lr.ph294

.preheader260:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check575, label %simple_rotate.exit213

iter.check575:                                    ; preds = %.preheader260
  %brmerge780 = select i1 %min.iters.check557, i1 true, i1 %22
  br i1 %brmerge780, label %.lr.ph296.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %iter.check575
  %i.mg = getelementptr i8, ptr %i.lb, i64 %i.bt
  %i.mh = getelementptr i8, ptr %i.mg, i64 %i.le
  %i.mi = getelementptr i8, ptr %i.lg, i64 %i.bu
  %34 = getelementptr i8, ptr %i.mi, i64 %i.ll
  %i.mj = getelementptr i8, ptr %i.lg, i64 %7
  %i.mk = getelementptr i8, ptr %i.mj, i64 2
  %i.ml = getelementptr i8, ptr %i.mk, i64 %i.ll
  %bound0559 = icmp ult ptr %i.lf, %i.ml
  %bound1560 = icmp ult ptr %34, %i.mh
  %found.conflict561 = and i1 %bound0559, %bound1560
  br i1 %found.conflict561, label %.lr.ph296.preheader, label %vector.main.loop.iter.check562

vector.main.loop.iter.check562:                   ; preds = %vector.memcheck558
  br i1 %min.iters.check563, label %vec.epilog.ph579, label %vector.body566

vector.body566:                                   ; preds = %vector.main.loop.iter.check562, %vector.body566
  %index567 = phi i64 [ %index.next572, %vector.body566 ], [ 0, %vector.main.loop.iter.check562 ] ; 3 uses
  %i.mm = shl nuw nsw i64 %index567, 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.mm ; 2 uses
  %35 = trunc nuw nsw i64 %index567 to i32
  %36 = xor i32 %35, -1
  %37 = add nsw i32 %i.c, %36
  %38 = shl nuw nsw i32 %37, 1
  %39 = zext nneg i32 %38 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %39 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -14
  %i.mq = getelementptr inbounds i8, ptr %i.mo, i64 -30
  %wide.load568.a = load <8 x i16>, ptr %i.mp, align 2, !tbaa !140, !alias.scope !148
  %wide.load569 = load <8 x i16>, ptr %i.mq, align 2, !tbaa !140, !alias.scope !148
  %reverse570.a = shufflevector <8 x i16> %wide.load568.a, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse571 = shufflevector <8 x i16> %wide.load569, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <8 x i16> %reverse570.a, ptr %i.mn, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  store <8 x i16> %reverse571, ptr %i.mr, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next572 = add nuw i64 %index567, 16      ; 2 uses
  %i.ms = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.ms, label %middle.block573, label %vector.body566, !llvm.loop !101

middle.block573:                                  ; preds = %vector.body566
  br i1 %cmp.n574, label %simple_rotate.exit213, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  br i1 %min.epilog.iters.check578, label %.lr.ph296.preheader, label %vec.epilog.ph579, !prof !61

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check562, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec565, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check562 ]
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph579
  %index583 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next586, %vec.epilog.vector.body582 ] ; 3 uses
  %i.mt = shl nuw nsw i64 %index583, 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.mt
  %40 = trunc nuw nsw i64 %index583 to i32
  %41 = xor i32 %40, -1
  %42 = add nsw i32 %i.c, %41
  %43 = shl nuw nsw i32 %42, 1
  %44 = zext nneg i32 %43 to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lm, i64 %44
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -6
  %wide.load584 = load <4 x i16>, ptr %i.mw, align 2, !tbaa !140, !alias.scope !148
  %reverse585 = shufflevector <4 x i16> %wide.load584, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse585, ptr %i.mu, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next586 = add nuw i64 %index583, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next586, %n.vec581
  br i1 %i.mx, label %vec.epilog.middle.block587, label %vec.epilog.vector.body582, !llvm.loop !102

vec.epilog.middle.block587:                       ; preds = %vec.epilog.vector.body582
  br i1 %cmp.n588, label %simple_rotate.exit213, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %iter.check575, %vector.memcheck558, %vec.epilog.iter.check576, %vec.epilog.middle.block587
  %indvars.iv362.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec581, %vec.epilog.middle.block587 ], [ 0, %vector.memcheck558 ], [ %n.vec565, %vec.epilog.iter.check576 ] ; 5 uses
  br i1 %lcmp.mod741.not, label %.lr.ph296.prol.loopexit, label %.lr.ph296.prol

.lr.ph296.prol:                                   ; preds = %.lr.ph296.preheader
  %i.my = shl nuw nsw i64 %indvars.iv362.ph, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.my
  %45 = trunc nuw nsw i64 %indvars.iv362.ph to i32
  %46 = xor i32 %45, -1
  %47 = add nsw i32 %i.c, %46
  %48 = shl nuw nsw i32 %47, 1
  %49 = zext nneg i32 %48 to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.lm, i64 %49
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !140
  store i16 %i.nb, ptr %i.mz, align 2, !tbaa !140
  %indvars.iv.next363.prol = or disjoint i64 %indvars.iv362.ph, 1
  br label %.lr.ph296.prol.loopexit

.lr.ph296.prol.loopexit:                          ; preds = %.lr.ph296.prol, %.lr.ph296.preheader
  %indvars.iv362.unr = phi i64 [ %indvars.iv362.ph, %.lr.ph296.preheader ], [ %indvars.iv.next363.prol, %.lr.ph296.prol ]
  %i.nc = icmp eq i64 %indvars.iv362.ph, %i.cd
  br i1 %i.nc, label %simple_rotate.exit213, label %.lr.ph296

.preheader258:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check531, label %simple_rotate.exit213

iter.check531:                                    ; preds = %.preheader258
  %i.nd = getelementptr i8, ptr %i.lm, i64 %i.bp  ; 8 uses
  br i1 %min.iters.check513, label %.lr.ph298.preheader, label %vector.memcheck514

vector.memcheck514:                               ; preds = %iter.check531
  %i.ne = getelementptr i8, ptr %i.lb, i64 %i.le
  %i.nf = getelementptr i8, ptr %i.ne, i64 %wide.trip.count
  %i.ng = getelementptr i8, ptr %i.lg, i64 %i.bq
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.ll
  %bound0515 = icmp ult ptr %i.lf, %i.nd
  %bound1516 = icmp ult ptr %i.nh, %i.nf
  %found.conflict517 = and i1 %bound0515, %bound1516
  br i1 %found.conflict517, label %.lr.ph298.preheader, label %vector.main.loop.iter.check518

vector.main.loop.iter.check518:                   ; preds = %vector.memcheck514
  br i1 %min.iters.check519, label %vec.epilog.ph535, label %vector.body522

vector.body522:                                   ; preds = %vector.main.loop.iter.check518, %vector.body522
  %index523 = phi i64 [ %index.next528, %vector.body522 ], [ 0, %vector.main.loop.iter.check518 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index523 ; 2 uses
  %i.nj = xor i64 %index523, -1
  %i.nk = getelementptr i8, ptr %i.nd, i64 %i.nj  ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nk, i64 -15
  %i.nm = getelementptr i8, ptr %i.nk, i64 -31
  %wide.load524 = load <16 x i8>, ptr %i.nl, align 1, !tbaa !60, !alias.scope !150
  %wide.load525 = load <16 x i8>, ptr %i.nm, align 1, !tbaa !60, !alias.scope !150
  %reverse526 = shufflevector <16 x i8> %wide.load524, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse527 = shufflevector <16 x i8> %wide.load525, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  store <16 x i8> %reverse526, ptr %i.ni, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  store <16 x i8> %reverse527, ptr %i.nn, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next528 = add nuw i64 %index523, 32      ; 2 uses
  %i.no = icmp eq i64 %index.next528, %n.vec521
  br i1 %i.no, label %middle.block529, label %vector.body522, !llvm.loop !106

middle.block529:                                  ; preds = %vector.body522
  br i1 %cmp.n530, label %simple_rotate.exit213, label %vec.epilog.iter.check532

vec.epilog.iter.check532:                         ; preds = %middle.block529
  br i1 %min.epilog.iters.check534, label %.lr.ph298.preheader, label %vec.epilog.ph535, !prof !145

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check518, %vec.epilog.iter.check532
  %vec.epilog.resume.val536 = phi i64 [ %n.vec521, %vec.epilog.iter.check532 ], [ 0, %vector.main.loop.iter.check518 ]
  br label %vec.epilog.vector.body538

vec.epilog.vector.body538:                        ; preds = %vec.epilog.vector.body538, %vec.epilog.ph535
  %index539 = phi i64 [ %vec.epilog.resume.val536, %vec.epilog.ph535 ], [ %index.next542, %vec.epilog.vector.body538 ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index539
  %i.nq = xor i64 %index539, -1
  %i.nr = getelementptr i8, ptr %i.nd, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 -7
  %wide.load540 = load <8 x i8>, ptr %i.ns, align 1, !tbaa !60, !alias.scope !150
  %reverse541 = shufflevector <8 x i8> %wide.load540, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse541, ptr %i.np, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next542 = add nuw i64 %index539, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next542, %n.vec537
  br i1 %i.nt, label %vec.epilog.middle.block543, label %vec.epilog.vector.body538, !llvm.loop !107

vec.epilog.middle.block543:                       ; preds = %vec.epilog.vector.body538
  br i1 %cmp.n544, label %simple_rotate.exit213, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %iter.check531, %vector.memcheck514, %vec.epilog.iter.check532, %vec.epilog.middle.block543
  %indvars.iv367.ph = phi i64 [ 0, %iter.check531 ], [ 0, %vector.memcheck514 ], [ %n.vec521, %vec.epilog.iter.check532 ], [ %n.vec537, %vec.epilog.middle.block543 ] ; 3 uses
  br i1 %lcmp.mod744.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol

.lr.ph298.prol:                                   ; preds = %.lr.ph298.preheader, %.lr.ph298.prol
  %indvars.iv367.prol = phi i64 [ %indvars.iv.next368.prol, %.lr.ph298.prol ], [ %indvars.iv367.ph, %.lr.ph298.preheader ] ; 3 uses
  %prol.iter745 = phi i64 [ %prol.iter745.next, %.lr.ph298.prol ], [ 0, %.lr.ph298.preheader ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv367.prol
  %i.nv = xor i64 %indvars.iv367.prol, -1
  %i.nw = getelementptr i8, ptr %i.nd, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !60
  store i8 %i.nx, ptr %i.nu, align 1, !tbaa !60
  %indvars.iv.next368.prol = add nuw nsw i64 %indvars.iv367.prol, 1 ; 2 uses
  %prol.iter745.next = add i64 %prol.iter745, 1   ; 2 uses
  %prol.iter745.cmp.not = icmp eq i64 %prol.iter745.next, %xtraiter743
  br i1 %prol.iter745.cmp.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol, !llvm.loop !108

.lr.ph298.prol.loopexit:                          ; preds = %.lr.ph298.prol, %.lr.ph298.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %.lr.ph298.preheader ], [ %indvars.iv.next368.prol, %.lr.ph298.prol ]
  %i.ny = sub nsw i64 %indvars.iv367.ph, %wide.trip.count
  %i.nz = icmp ugt i64 %i.ny, -4
  br i1 %i.nz, label %simple_rotate.exit213, label %.lr.ph298

.preheader256:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph300, label %simple_rotate.exit213

.lr.ph300:                                        ; preds = %.preheader256
  %i.oa = sext i32 %i.ln to i64                   ; 3 uses
  br label %bb.r

.lr.ph298:                                        ; preds = %.lr.ph298.prol.loopexit, %.lr.ph298
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.3, %.lr.ph298 ], [ %indvars.iv367.unr, %.lr.ph298.prol.loopexit ] ; 9 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv367
  %i.oc = xor i64 %indvars.iv367, -1
  %i.od = getelementptr i8, ptr %i.nd, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !60
  store i8 %i.oe, ptr %i.ob, align 1, !tbaa !60
  %i.of = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv367
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.oh = sub i64 -2, %indvars.iv367
  %i.oi = getelementptr i8, ptr %i.nd, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !60
  store i8 %i.oj, ptr %i.og, align 1, !tbaa !60
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv367
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %i.om = sub i64 -3, %indvars.iv367
  %i.on = getelementptr i8, ptr %i.nd, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !60
  store i8 %i.oo, ptr %i.ol, align 1, !tbaa !60
  %i.op = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv367
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 3
  %i.or = sub i64 -4, %indvars.iv367
  %i.os = getelementptr i8, ptr %i.nd, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !60
  store i8 %i.ot, ptr %i.oq, align 1, !tbaa !60
  %indvars.iv.next368.3 = add nuw nsw i64 %indvars.iv367, 4 ; 2 uses
  %exitcond371.not.3 = icmp eq i64 %indvars.iv.next368.3, %wide.trip.count370
  br i1 %exitcond371.not.3, label %simple_rotate.exit213, label %.lr.ph298, !llvm.loop !109

.lr.ph296:                                        ; preds = %.lr.ph296.prol.loopexit, %.lr.ph296
  %indvars.iv362 = phi i64 [ %indvars.iv.next363.1, %.lr.ph296 ], [ %indvars.iv362.unr, %.lr.ph296.prol.loopexit ] ; 4 uses
  %i.ou = shl nuw nsw i64 %indvars.iv362, 1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ou
  %50 = trunc nuw nsw i64 %indvars.iv362 to i32
  %51 = xor i32 %50, -1
  %52 = add nsw i32 %i.c, %51
  %53 = shl nuw nsw i32 %52, 1
  %54 = zext nneg i32 %53 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lm, i64 %54
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !140
  store i16 %i.ox, ptr %i.ov, align 2, !tbaa !140
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %i.oy = shl nuw nsw i64 %indvars.iv.next363, 1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.oy
  %55 = trunc nuw nsw i64 %indvars.iv.next363 to i32
  %56 = xor i32 %55, -1
  %57 = add nsw i32 %i.c, %56
  %58 = shl nuw nsw i32 %57, 1
  %59 = zext nneg i32 %58 to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lm, i64 %59
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !140
  store i16 %i.pb, ptr %i.oz, align 2, !tbaa !140
  %indvars.iv.next363.1 = add nuw nsw i64 %indvars.iv362, 2 ; 2 uses
  %exitcond366.not.1 = icmp eq i64 %indvars.iv.next363.1, %wide.trip.count365
  br i1 %exitcond366.not.1, label %simple_rotate.exit213, label %.lr.ph296, !llvm.loop !110

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ] ; 4 uses
  %niter739 = phi i64 [ %niter739.next.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ]
  %i.pc = mul nuw nsw i64 %indvars.iv357, 3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.pc ; 3 uses
  %60 = trunc nuw nsw i64 %indvars.iv357 to i32
  %61 = xor i32 %60, -1
  %62 = add nsw i32 %i.c, %61
  %63 = mul nuw nsw i32 %62, 3
  %64 = zext nneg i32 %63 to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.lm, i64 %64 ; 3 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !60
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !60
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !60
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !60
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  store i8 %i.ph, ptr %i.pl, align 1, !tbaa !60
  store i8 %i.pf, ptr %i.pd, align 1, !tbaa !60
  %indvars.iv.next358 = or disjoint i64 %indvars.iv357, 1 ; 2 uses
  %i.pm = mul nuw nsw i64 %indvars.iv.next358, 3
  %i.pn = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.pm ; 3 uses
  %65 = trunc nuw nsw i64 %indvars.iv.next358 to i32
  %66 = xor i32 %65, -1
  %67 = add nsw i32 %i.c, %66
  %68 = mul nuw nsw i32 %67, 3
  %69 = zext nneg i32 %68 to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.lm, i64 %69 ; 3 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !60
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !60
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !60
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !60
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  store i8 %i.pr, ptr %i.pv, align 1, !tbaa !60
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !60
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 2 uses
  %niter739.next.1 = add i64 %niter739, 2         ; 2 uses
  %niter739.ncmp.1 = icmp eq i64 %niter739.next.1, %unroll_iter738
  br i1 %niter739.ncmp.1, label %simple_rotate.exit213.loopexit712.unr-lcssa, label %.lr.ph294, !llvm.loop !111

.lr.ph292:                                        ; preds = %.lr.ph292.prol.loopexit, %.lr.ph292
  %indvars.iv352 = phi i64 [ %indvars.iv.next353.1, %.lr.ph292 ], [ %indvars.iv352.unr, %.lr.ph292.prol.loopexit ] ; 4 uses
  %i.pw = shl nuw nsw i64 %indvars.iv352, 2
  %i.px = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.pw
  %70 = trunc nuw nsw i64 %indvars.iv352 to i32
  %71 = xor i32 %70, -1
  %72 = add nsw i32 %i.c, %71
  %73 = shl nuw nsw i32 %72, 2
  %74 = zext nneg i32 %73 to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.lm, i64 %74
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !54
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !54
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.qa = shl nuw nsw i64 %indvars.iv.next353, 2
  %i.qb = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.qa
  %75 = trunc nuw nsw i64 %indvars.iv.next353 to i32
  %76 = xor i32 %75, -1
  %77 = add nsw i32 %i.c, %76
  %78 = shl nuw nsw i32 %77, 2
  %79 = zext nneg i32 %78 to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.lm, i64 %79
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !54
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !54
  %indvars.iv.next353.1 = add nuw nsw i64 %indvars.iv352, 2 ; 2 uses
  %exitcond356.not.1 = icmp eq i64 %indvars.iv.next353.1, %wide.trip.count355
  br i1 %exitcond356.not.1, label %simple_rotate.exit213, label %.lr.ph292, !llvm.loop !112

bb.r:                                             ; preds = %.lr.ph300, %copy_elem.exit243
  %indvars.iv372 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next373, %copy_elem.exit243 ] ; 3 uses
  %i.qe = mul nsw i64 %indvars.iv372, %i.oa
  %i.qf = getelementptr inbounds i8, ptr %i.lf, i64 %i.qe ; 7 uses
  %i.qg = xor i64 %indvars.iv372, -1
  %i.qh = add nsw i64 %i.bp, %i.qg
  %i.qi = mul nsw i64 %i.qh, %i.oa
  %i.qj = getelementptr inbounds i8, ptr %i.lm, i64 %i.qi ; 7 uses
  switch i32 %i.ln, label %bb.w [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !60
  store i8 %i.qk, ptr %i.qf, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.t:                                             ; preds = %bb.r
  %i.ql = load i16, ptr %i.qj, align 2, !tbaa !140
  store i16 %i.ql, ptr %i.qf, align 2, !tbaa !140
  br label %copy_elem.exit243

bb.u:                                             ; preds = %bb.r
  %i.qm = load i8, ptr %i.qj, align 1, !tbaa !60
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !60
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !60
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !60
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  store i8 %i.qo, ptr %i.qs, align 1, !tbaa !60
  store i8 %i.qm, ptr %i.qf, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.v:                                             ; preds = %bb.r
  %i.qt = load i32, ptr %i.qj, align 4, !tbaa !54
  store i32 %i.qt, ptr %i.qf, align 4, !tbaa !54
  br label %copy_elem.exit243

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 1 %i.qj, i64 %i.oa, i1 false)
  br label %copy_elem.exit243

copy_elem.exit243:                                ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count375
  br i1 %exitcond376.not, label %simple_rotate.exit213, label %bb.r, !llvm.loop !111

bb.x:                                             ; preds = %bb.p
  %i.qu = fadd nsz double %i.cm, f0xC012D97C7F3321D2
  %i.qv = call nsz double @llvm.fabs.f64(double %i.qu)
  %i.qw = fcmp nsz olt double %i.qv, f0x3E80000000000000
  %or.cond208 = select i1 %i.qw, i1 %i.av, i1 false
  %or.cond209 = select i1 %or.cond208, i1 %i.aw, i1 false
  br i1 %or.cond209, label %bb.y, label %.preheader276

.preheader276:                                    ; preds = %bb.x
  br i1 %i.ax, label %.lr.ph, label %simple_rotate.exit213

bb.y:                                             ; preds = %bb.x
  %i.qx = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %i.qz = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.ra = mul i32 %i.qz, %.0192313
  %i.rb = sext i32 %i.ra to i64                   ; 4 uses
  %i.rc = getelementptr i8, ptr %i.qx, i64 %i.rb  ; 25 uses
  %i.rd = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 4 uses
  %i.re = ptrtoaddr ptr %i.rd to i64
  %i.rf = xor i32 %.0192313, -1
  %i.rg = add i32 %i.e, %i.rf
  %i.rh = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.ri = mul i32 %i.rh, %i.rg
  %i.rj = sext i32 %i.ri to i64                   ; 4 uses
  %i.rk = getelementptr i8, ptr %i.rd, i64 %i.rj  ; 39 uses
  %i.rl = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.rh, label %.preheader266 [
    i32 1, label %.preheader268
    i32 2, label %.preheader270
    i32 3, label %.preheader272
    i32 4, label %.preheader274
  ]

.preheader274:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph282.preheader, label %simple_rotate.exit213

.lr.ph282.preheader:                              ; preds = %.preheader274
  %i.rm = sext i32 %i.rl to i64                   ; 5 uses
  %ident.check676.not = icmp eq i32 %i.rl, 1
  %or.cond700 = select i1 %min.iters.check685, i1 %ident.check676.not, i1 false
  br i1 %or.cond700, label %vector.memcheck686, label %.lr.ph282.preheader720

vector.memcheck686:                               ; preds = %.lr.ph282.preheader
  %i.rn = getelementptr i8, ptr %i.qx, i64 %i.bv
  %i.ro = getelementptr i8, ptr %i.rn, i64 %i.rb
  %i.rp = getelementptr i8, ptr %i.rd, i64 %wide.trip.count
  %i.rq = getelementptr i8, ptr %i.rp, i64 3
  %i.rr = getelementptr i8, ptr %i.rq, i64 %i.rj
  %bound0687 = icmp ult ptr %i.rc, %i.rr
  %bound1688 = icmp ult ptr %i.rk, %i.ro
  %found.conflict689 = and i1 %bound0687, %bound1688
  br i1 %found.conflict689, label %.lr.ph282.preheader720, label %vector.body692

vector.body692:                                   ; preds = %vector.memcheck686, %vector.body692
  %index693 = phi i64 [ %index.next694, %vector.body692 ], [ 0, %vector.memcheck686 ] ; 10 uses
  %i.rs = shl nuw nsw i64 %index693, 2
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rs ; 2 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rk, i64 %index693
  %i.rv = getelementptr i8, ptr %i.rk, i64 %index693
  %i.rw = getelementptr i8, ptr %i.rv, i64 1
  %i.rx = getelementptr i8, ptr %i.rk, i64 %index693
  %i.ry = getelementptr i8, ptr %i.rx, i64 2
  %i.rz = getelementptr i8, ptr %i.rk, i64 %index693
  %i.sa = getelementptr i8, ptr %i.rz, i64 3
  %i.sb = getelementptr i8, ptr %i.rk, i64 %index693
  %i.sc = getelementptr i8, ptr %i.sb, i64 4
  %i.sd = getelementptr i8, ptr %i.rk, i64 %index693
  %i.se = getelementptr i8, ptr %i.sd, i64 5
  %i.sf = getelementptr i8, ptr %i.rk, i64 %index693
  %i.sg = getelementptr i8, ptr %i.sf, i64 6
  %i.sh = getelementptr i8, ptr %i.rk, i64 %index693
  %i.si = getelementptr i8, ptr %i.sh, i64 7
  %i.sj = load i32, ptr %i.ru, align 4, !tbaa !54, !alias.scope !153
  %i.sk = load i32, ptr %i.rw, align 4, !tbaa !54, !alias.scope !153
  %i.sl = load i32, ptr %i.ry, align 4, !tbaa !54, !alias.scope !153
  %i.sm = load i32, ptr %i.sa, align 4, !tbaa !54, !alias.scope !153
  %i.sn = insertelement <4 x i32> poison, i32 %i.sj, i64 0
  %i.so = insertelement <4 x i32> %i.sn, i32 %i.sk, i64 1
  %i.sp = insertelement <4 x i32> %i.so, i32 %i.sl, i64 2
  %i.sq = insertelement <4 x i32> %i.sp, i32 %i.sm, i64 3
  %i.sr = load i32, ptr %i.sc, align 4, !tbaa !54, !alias.scope !153
  %i.ss = load i32, ptr %i.se, align 4, !tbaa !54, !alias.scope !153
  %i.st = load i32, ptr %i.sg, align 4, !tbaa !54, !alias.scope !153
  %i.su = load i32, ptr %i.si, align 4, !tbaa !54, !alias.scope !153
  %i.sv = insertelement <4 x i32> poison, i32 %i.sr, i64 0
  %i.sw = insertelement <4 x i32> %i.sv, i32 %i.ss, i64 1
  %i.sx = insertelement <4 x i32> %i.sw, i32 %i.st, i64 2
  %i.sy = insertelement <4 x i32> %i.sx, i32 %i.su, i64 3
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store <4 x i32> %i.sq, ptr %i.rt, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  store <4 x i32> %i.sy, ptr %i.sz, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  %index.next694 = add nuw i64 %index693, 8       ; 2 uses
  %i.ta = icmp eq i64 %index.next694, %n.vec691
  br i1 %i.ta, label %middle.block695, label %vector.body692, !llvm.loop !116

middle.block695:                                  ; preds = %vector.body692
  br i1 %cmp.n696, label %simple_rotate.exit213, label %.lr.ph282.preheader720

.lr.ph282.preheader720:                           ; preds = %vector.memcheck686, %.lr.ph282.preheader, %middle.block695
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck686 ], [ 0, %.lr.ph282.preheader ], [ %n.vec691, %middle.block695 ] ; 3 uses
  %i.tb = sub nsw i64 %i.bx, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol

.lr.ph282.prol:                                   ; preds = %.lr.ph282.preheader720, %.lr.ph282.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph282.prol ], [ %indvars.iv.ph, %.lr.ph282.preheader720 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph282.prol ], [ 0, %.lr.ph282.preheader720 ]
  %i.tc = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.td = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.tc
  %i.te = mul nsw i64 %indvars.iv.prol, %i.rm
  %i.tf = getelementptr inbounds i8, ptr %i.rk, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !54
  store i32 %i.tg, ptr %i.td, align 4, !tbaa !54
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol, !llvm.loop !117

.lr.ph282.prol.loopexit:                          ; preds = %.lr.ph282.prol, %.lr.ph282.preheader720
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph282.preheader720 ], [ %indvars.iv.next.prol, %.lr.ph282.prol ]
  %i.th = icmp ult i64 %i.tb, 3
  br i1 %i.th, label %simple_rotate.exit213, label %.lr.ph282

.preheader272:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph284.preheader, label %simple_rotate.exit213

.lr.ph284.preheader:                              ; preds = %.preheader272
  %i.ti = sext i32 %i.rl to i64                   ; 3 uses
  br i1 %i.by, label %.lr.ph284.epil.preheader, label %.lr.ph284

.preheader270:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph286.preheader, label %simple_rotate.exit213

.lr.ph286.preheader:                              ; preds = %.preheader270
  %i.tj = sext i32 %i.rl to i64                   ; 5 uses
  %ident.check653.not = icmp eq i32 %i.rl, 1
  %or.cond701 = select i1 %min.iters.check662, i1 %ident.check653.not, i1 false
  br i1 %or.cond701, label %vector.memcheck663, label %.lr.ph286.preheader717

vector.memcheck663:                               ; preds = %.lr.ph286.preheader
  %i.tk = getelementptr i8, ptr %i.qx, i64 %i.bw
  %i.tl = getelementptr i8, ptr %i.tk, i64 %i.rb
  %i.tm = getelementptr i8, ptr %i.rd, i64 %wide.trip.count
  %i.tn = getelementptr i8, ptr %i.tm, i64 1
  %i.to = getelementptr i8, ptr %i.tn, i64 %i.rj
  %bound0664 = icmp ult ptr %i.rc, %i.to
  %bound1665 = icmp ult ptr %i.rk, %i.tl
  %found.conflict666 = and i1 %bound0664, %bound1665
  br i1 %found.conflict666, label %.lr.ph286.preheader717, label %vector.body669

vector.body669:                                   ; preds = %vector.memcheck663, %vector.body669
  %index670 = phi i64 [ %index.next671, %vector.body669 ], [ 0, %vector.memcheck663 ] ; 10 uses
  %i.tp = shl nuw nsw i64 %index670, 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.tp
  %i.tr = getelementptr inbounds i8, ptr %i.rk, i64 %index670
  %i.ts = getelementptr i8, ptr %i.rk, i64 %index670
  %i.tt = getelementptr i8, ptr %i.ts, i64 1
  %i.tu = getelementptr i8, ptr %i.rk, i64 %index670
  %i.tv = getelementptr i8, ptr %i.tu, i64 2
  %i.tw = getelementptr i8, ptr %i.rk, i64 %index670
  %i.tx = getelementptr i8, ptr %i.tw, i64 3
  %i.ty = getelementptr i8, ptr %i.rk, i64 %index670
  %i.tz = getelementptr i8, ptr %i.ty, i64 4
  %i.ua = getelementptr i8, ptr %i.rk, i64 %index670
  %i.ub = getelementptr i8, ptr %i.ua, i64 5
  %i.uc = getelementptr i8, ptr %i.rk, i64 %index670
  %i.ud = getelementptr i8, ptr %i.uc, i64 6
  %i.ue = getelementptr i8, ptr %i.rk, i64 %index670
  %i.uf = getelementptr i8, ptr %i.ue, i64 7
  %i.ug = load i16, ptr %i.tr, align 2, !tbaa !140, !alias.scope !155
  %i.uh = load i16, ptr %i.tt, align 2, !tbaa !140, !alias.scope !155
  %i.ui = load i16, ptr %i.tv, align 2, !tbaa !140, !alias.scope !155
  %i.uj = load i16, ptr %i.tx, align 2, !tbaa !140, !alias.scope !155
  %i.uk = load i16, ptr %i.tz, align 2, !tbaa !140, !alias.scope !155
  %i.ul = load i16, ptr %i.ub, align 2, !tbaa !140, !alias.scope !155
  %i.um = load i16, ptr %i.ud, align 2, !tbaa !140, !alias.scope !155
  %i.un = load i16, ptr %i.uf, align 2, !tbaa !140, !alias.scope !155
  %i.uo = insertelement <8 x i16> poison, i16 %i.ug, i64 0
  %i.up = insertelement <8 x i16> %i.uo, i16 %i.uh, i64 1
  %i.uq = insertelement <8 x i16> %i.up, i16 %i.ui, i64 2
  %i.ur = insertelement <8 x i16> %i.uq, i16 %i.uj, i64 3
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 4
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 5
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 6
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 7
  store <8 x i16> %i.uv, ptr %i.tq, align 2, !tbaa !140, !alias.scope !156, !noalias !155
  %index.next671 = add nuw i64 %index670, 8       ; 2 uses
  %i.uw = icmp eq i64 %index.next671, %n.vec668
  br i1 %i.uw, label %middle.block672, label %vector.body669, !llvm.loop !121

middle.block672:                                  ; preds = %vector.body669
  br i1 %cmp.n673, label %simple_rotate.exit213, label %.lr.ph286.preheader717

.lr.ph286.preheader717:                           ; preds = %vector.memcheck663, %.lr.ph286.preheader, %middle.block672
  %indvars.iv337.ph = phi i64 [ 0, %vector.memcheck663 ], [ 0, %.lr.ph286.preheader ], [ %n.vec668, %middle.block672 ] ; 3 uses
  br i1 %lcmp.mod727.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol

.lr.ph286.prol:                                   ; preds = %.lr.ph286.preheader717, %.lr.ph286.prol
  %indvars.iv337.prol = phi i64 [ %indvars.iv.next338.prol, %.lr.ph286.prol ], [ %indvars.iv337.ph, %.lr.ph286.preheader717 ] ; 3 uses
  %prol.iter728 = phi i64 [ %prol.iter728.next, %.lr.ph286.prol ], [ 0, %.lr.ph286.preheader717 ]
  %i.ux = shl nuw nsw i64 %indvars.iv337.prol, 1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.ux
  %i.uz = mul nsw i64 %indvars.iv337.prol, %i.tj
  %i.va = getelementptr inbounds i8, ptr %i.rk, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !140
  store i16 %i.vb, ptr %i.uy, align 2, !tbaa !140
  %indvars.iv.next338.prol = add nuw nsw i64 %indvars.iv337.prol, 1 ; 2 uses
  %prol.iter728.next = add i64 %prol.iter728, 1   ; 2 uses
  %prol.iter728.cmp.not = icmp eq i64 %prol.iter728.next, %xtraiter726
  br i1 %prol.iter728.cmp.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol, !llvm.loop !122

.lr.ph286.prol.loopexit:                          ; preds = %.lr.ph286.prol, %.lr.ph286.preheader717
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %.lr.ph286.preheader717 ], [ %indvars.iv.next338.prol, %.lr.ph286.prol ]
  %i.vc = sub nsw i64 %indvars.iv337.ph, %wide.trip.count
  %i.vd = icmp ugt i64 %i.vc, -4
  br i1 %i.vd, label %simple_rotate.exit213, label %.lr.ph286

.preheader268:                                    ; preds = %bb.y
  br i1 %i.ax, label %iter.check638, label %simple_rotate.exit213

iter.check638:                                    ; preds = %.preheader268
  %i.ve = sext i32 %i.rl to i64                   ; 5 uses
  %ident.check622.not = icmp eq i32 %i.rl, 1
  %or.cond702 = select i1 %min.iters.check625, i1 %ident.check622.not, i1 false
  br i1 %or.cond702, label %vector.memcheck626, label %.lr.ph288.preheader

vector.memcheck626:                               ; preds = %iter.check638
  %i.vf = add i64 %i.re, %i.rj
  %i.vg = add i64 %i.qy, %i.rb
  %i.vh = sub i64 %i.vf, %i.vg
  %diff.check = icmp ugt i64 %i.vh, -32
  br i1 %diff.check, label %.lr.ph288.preheader, label %vector.main.loop.iter.check627

vector.main.loop.iter.check627:                   ; preds = %vector.memcheck626
  br i1 %min.iters.check628, label %vec.epilog.ph642, label %vector.body631

vector.body631:                                   ; preds = %vector.main.loop.iter.check627, %vector.body631
  %index632 = phi i64 [ %index.next635, %vector.body631 ], [ 0, %vector.main.loop.iter.check627 ] ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.rc, i64 %index632 ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.rk, i64 %index632 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %wide.load633 = load <16 x i8>, ptr %i.vj, align 1, !tbaa !60
  %wide.load634 = load <16 x i8>, ptr %i.vk, align 1, !tbaa !60
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store <16 x i8> %wide.load633, ptr %i.vi, align 1, !tbaa !60
  store <16 x i8> %wide.load634, ptr %i.vl, align 1, !tbaa !60
  %index.next635 = add nuw i64 %index632, 32      ; 2 uses
  %i.vm = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.vm, label %middle.block636, label %vector.body631, !llvm.loop !123

middle.block636:                                  ; preds = %vector.body631
  br i1 %cmp.n637, label %simple_rotate.exit213, label %vec.epilog.iter.check639

vec.epilog.iter.check639:                         ; preds = %middle.block636
  br i1 %min.epilog.iters.check641, label %.lr.ph288.preheader, label %vec.epilog.ph642, !prof !157

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check627, %vec.epilog.iter.check639
  %vec.epilog.resume.val643 = phi i64 [ %n.vec630, %vec.epilog.iter.check639 ], [ 0, %vector.main.loop.iter.check627 ]
  br label %vec.epilog.vector.body645

vec.epilog.vector.body645:                        ; preds = %vec.epilog.vector.body645, %vec.epilog.ph642
  %index646 = phi i64 [ %vec.epilog.resume.val643, %vec.epilog.ph642 ], [ %index.next648, %vec.epilog.vector.body645 ] ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.rc, i64 %index646
  %i.vo = getelementptr inbounds i8, ptr %i.rk, i64 %index646
  %wide.load647 = load <4 x i8>, ptr %i.vo, align 1, !tbaa !60
  store <4 x i8> %wide.load647, ptr %i.vn, align 1, !tbaa !60
  %index.next648 = add nuw i64 %index646, 4       ; 2 uses
  %i.vp = icmp eq i64 %index.next648, %n.vec644
  br i1 %i.vp, label %vec.epilog.middle.block649, label %vec.epilog.vector.body645, !llvm.loop !124

vec.epilog.middle.block649:                       ; preds = %vec.epilog.vector.body645
  br i1 %cmp.n650, label %simple_rotate.exit213, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %iter.check638, %vector.memcheck626, %vec.epilog.iter.check639, %vec.epilog.middle.block649
  %indvars.iv342.ph = phi i64 [ 0, %iter.check638 ], [ 0, %vector.memcheck626 ], [ %n.vec630, %vec.epilog.iter.check639 ], [ %n.vec644, %vec.epilog.middle.block649 ] ; 3 uses
  br i1 %lcmp.mod730.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol

.lr.ph288.prol:                                   ; preds = %.lr.ph288.preheader, %.lr.ph288.prol
  %indvars.iv342.prol = phi i64 [ %indvars.iv.next343.prol, %.lr.ph288.prol ], [ %indvars.iv342.ph, %.lr.ph288.preheader ] ; 3 uses
  %prol.iter731 = phi i64 [ %prol.iter731.next, %.lr.ph288.prol ], [ 0, %.lr.ph288.preheader ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv342.prol
  %i.vr = mul nsw i64 %indvars.iv342.prol, %i.ve
  %i.vs = getelementptr inbounds i8, ptr %i.rk, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !60
  store i8 %i.vt, ptr %i.vq, align 1, !tbaa !60
  %indvars.iv.next343.prol = add nuw nsw i64 %indvars.iv342.prol, 1 ; 2 uses
  %prol.iter731.next = add i64 %prol.iter731, 1   ; 2 uses
  %prol.iter731.cmp.not = icmp eq i64 %prol.iter731.next, %xtraiter729
  br i1 %prol.iter731.cmp.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol, !llvm.loop !125

.lr.ph288.prol.loopexit:                          ; preds = %.lr.ph288.prol, %.lr.ph288.preheader
  %indvars.iv342.unr = phi i64 [ %indvars.iv342.ph, %.lr.ph288.preheader ], [ %indvars.iv.next343.prol, %.lr.ph288.prol ]
  %i.vu = sub nsw i64 %indvars.iv342.ph, %wide.trip.count
  %i.vv = icmp ugt i64 %i.vu, -4
  br i1 %i.vv, label %simple_rotate.exit213, label %.lr.ph288

.preheader266:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph290, label %simple_rotate.exit213

.lr.ph290:                                        ; preds = %.preheader266
  %i.vw = sext i32 %i.rh to i64                   ; 2 uses
  %i.vx = sext i32 %i.rl to i64
  br label %bb.z

.lr.ph288:                                        ; preds = %.lr.ph288.prol.loopexit, %.lr.ph288
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.3, %.lr.ph288 ], [ %indvars.iv342.unr, %.lr.ph288.prol.loopexit ] ; 6 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv342
  %i.vz = mul nsw i64 %indvars.iv342, %i.ve
  %i.wa = getelementptr inbounds i8, ptr %i.rk, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !60
  store i8 %i.wb, ptr %i.vy, align 1, !tbaa !60
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv.next343
  %i.wd = mul nsw i64 %indvars.iv.next343, %i.ve
  %i.we = getelementptr inbounds i8, ptr %i.rk, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !60
  store i8 %i.wf, ptr %i.wc, align 1, !tbaa !60
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv.next343.1
  %i.wh = mul nsw i64 %indvars.iv.next343.1, %i.ve
  %i.wi = getelementptr inbounds i8, ptr %i.rk, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !60
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !60
  %indvars.iv.next343.2 = add nuw nsw i64 %indvars.iv342, 3 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv.next343.2
  %i.wl = mul nsw i64 %indvars.iv.next343.2, %i.ve
  %i.wm = getelementptr inbounds i8, ptr %i.rk, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !60
  store i8 %i.wn, ptr %i.wk, align 1, !tbaa !60
  %indvars.iv.next343.3 = add nuw nsw i64 %indvars.iv342, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next343.3, %wide.trip.count345
  br i1 %exitcond346.not.3, label %simple_rotate.exit213, label %.lr.ph288, !llvm.loop !126

.lr.ph286:                                        ; preds = %.lr.ph286.prol.loopexit, %.lr.ph286
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.3, %.lr.ph286 ], [ %indvars.iv337.unr, %.lr.ph286.prol.loopexit ] ; 6 uses
  %i.wo = shl nuw nsw i64 %indvars.iv337, 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.wo
  %i.wq = mul nsw i64 %indvars.iv337, %i.tj
  %i.wr = getelementptr inbounds i8, ptr %i.rk, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !140
  store i16 %i.ws, ptr %i.wp, align 2, !tbaa !140
end_hunk_1
begin_hunk_2_@filter_slice:bb.a
  br i1 %exitcond331.not.3, label %simple_rotate.exit213, label %.lr.ph282, !llvm.loop !129

bb.z:                                             ; preds = %.lr.ph290, %copy_elem.exit
  %indvars.iv347 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next348, %copy_elem.exit ] ; 3 uses
  %i.yy = mul nsw i64 %indvars.iv347, %i.vw
  %i.yz = getelementptr inbounds i8, ptr %i.rc, i64 %i.yy ; 7 uses
  %i.za = mul nsw i64 %indvars.iv347, %i.vx
  %i.zb = getelementptr inbounds i8, ptr %i.rk, i64 %i.za ; 7 uses
  switch i32 %i.rh, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !60
  store i8 %i.zc, ptr %i.yz, align 1, !tbaa !60
  br label %copy_elem.exit

bb.ab:                                            ; preds = %bb.z
  %i.zd = load i16, ptr %i.zb, align 2, !tbaa !140
  store i16 %i.zd, ptr %i.yz, align 2, !tbaa !140
  br label %copy_elem.exit

bb.ac:                                            ; preds = %bb.z
  %i.ze = load i8, ptr %i.zb, align 1, !tbaa !60
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 1
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !60
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zb, i64 2
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !60
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !60
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  store i8 %i.zg, ptr %i.zk, align 1, !tbaa !60
  store i8 %i.ze, ptr %i.yz, align 1, !tbaa !60
  br label %copy_elem.exit

bb.ad:                                            ; preds = %bb.z
  %i.zl = load i32, ptr %i.zb, align 4, !tbaa !54
  store i32 %i.zl, ptr %i.yz, align 4, !tbaa !54
  br label %copy_elem.exit

bb.ae:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yz, ptr align 1 %i.zb, i64 %i.vw, i1 false)
  br label %copy_elem.exit

copy_elem.exit:                                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %simple_rotate.exit213, label %bb.z, !llvm.loop !128

.lr.ph:                                           ; preds = %.preheader276, %bb.aq
  %.0190280 = phi i32 [ %i.abc, %bb.aq ], [ %i.cl, %.preheader276 ] ; 3 uses
  %.0191279 = phi i32 [ %i.abb, %bb.aq ], [ %i.ck, %.preheader276 ] ; 3 uses
  %.0193278 = phi i32 [ %i.abd, %bb.aq ], [ 0, %.preheader276 ] ; 2 uses
  %i.zm = ashr i32 %.0191279, 16                  ; 4 uses
  %i.zn = ashr i32 %.0190280, 16                  ; 4 uses
  %i.zo = icmp sgt i32 %i.zm, -2
  br i1 %i.zo, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %.lr.ph
  %i.zp = icmp sgt i32 %i.zm, %i.g
  %i.zq = icmp slt i32 %i.zn, -1
  %or.cond.not247 = select i1 %i.zp, i1 true, i1 %i.zq
  %.not = icmp sgt i32 %i.zn, %i.i
  %or.cond210 = select i1 %or.cond.not247, i1 true, i1 %.not
  br i1 %or.cond210, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zr = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.zs = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.zt = mul nsw i32 %i.zs, %.0192313
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds i8, ptr %i.zr, i64 %i.zu
  %i.zw = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.zx = mul nsw i32 %i.zw, %.0193278
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds i8, ptr %i.zv, i64 %i.zy ; 7 uses
  %i.aaa = load i32, ptr %i.be, align 8, !tbaa !158
  %.not201 = icmp eq i32 %i.aaa, 0
  br i1 %.not201, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aab = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.aac = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.aad = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.aae = call ptr %i.aab(ptr noundef nonnull %i.a, ptr noundef %i.aac, i32 noundef %i.aad, i32 noundef %i.zw, i32 noundef %.0191279, i32 noundef %.0190280, i32 noundef %i.am, i32 noundef %i.ap) #12
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !54
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.aaf = icmp eq i32 %i.zm, -1
  %..i214 = call i32 @llvm.smin.i32(i32 %i.zm, i32 %i.am)
  %.0.i215 = select i1 %i.aaf, i32 0, i32 %..i214
  %i.aag = icmp slt i32 %i.zn, 0
  %..i = call i32 @llvm.smin.i32(i32 %i.zn, i32 %i.ap)
  %.0.i = select i1 %i.aag, i32 0, i32 %..i
  %i.aah = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.aai = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.aaj = mul nsw i32 %i.aai, %.0.i
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds i8, ptr %i.aah, i64 %i.aak
  %i.aam = mul nsw i32 %i.zw, %.0.i215
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds i8, ptr %i.aal, i64 %i.aan
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.aap = phi i32 [ %.pre, %bb.ah ], [ %i.zw, %bb.ai ] ; 2 uses
  %.0 = phi ptr [ %i.aae, %bb.ah ], [ %i.aao, %bb.ai ] ; 7 uses
  switch i32 %i.aap, label %bb.ao [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.aaq = load i8, ptr %.0, align 1, !tbaa !60
  store i8 %i.aaq, ptr %i.zz, align 1, !tbaa !60
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.aar = load i16, ptr %.0, align 1, !tbaa !60
  store i16 %i.aar, ptr %i.zz, align 1, !tbaa !60
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.aas = load i8, ptr %.0, align 1, !tbaa !60
  %i.aat = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !60
  %i.aav = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !60
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zz, i64 2
  store i8 %i.aaw, ptr %i.aax, align 1, !tbaa !60
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zz, i64 1
  store i8 %i.aau, ptr %i.aay, align 1, !tbaa !60
  store i8 %i.aas, ptr %i.zz, align 1, !tbaa !60
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.aaz = load i32, ptr %.0, align 4, !tbaa !54
  store i32 %i.aaz, ptr %i.zz, align 4, !tbaa !54
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.aba = sext i32 %i.aap to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zz, ptr align 1 %.0, i64 %i.aba, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af, %.lr.ph
  %i.abb = add nsw i32 %.0191279, %i.k
  %i.abc = sub nsw i32 %.0190280, %i.m
  %i.abd = add nuw nsw i32 %.0193278, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.abd, %i.c
  br i1 %exitcond.not, label %simple_rotate.exit213, label %.lr.ph, !llvm.loop !130

simple_rotate.exit213.sink.split:                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i64 [ %i.db, %bb.g ], [ %i.bk, %bb.f ], [ %i.bm, %bb.e ], [ %i.bo, %bb.d ], [ %i.bp, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cy, i64 %.sink, i1 false)
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit706.unr-lcssa:      ; preds = %.lr.ph304
  br i1 %lcmp.mod750.not.a, label %simple_rotate.exit213, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit706.unr-lcssa, %.lr.ph304.preheader
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %indvars.iv.next383.1, %simple_rotate.exit213.loopexit706.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod751)
  %i.abe = mul nuw nsw i64 %indvars.iv382.epil.init, 3
  %i.abf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.abe ; 3 uses
  %i.abg = xor i64 %indvars.iv382.epil.init, -1
  %i.abh = add nsw i64 %i.bp, %i.abg
  %i.abi = mul nsw i64 %i.abh, %i.ex
  %i.abj = getelementptr inbounds i8, ptr %i.do, i64 %i.abi ; 3 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !60
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 1
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !60
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !60
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abf, i64 2
  store i8 %i.abo, ptr %i.abp, align 1, !tbaa !60
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abf, i64 1
  store i8 %i.abm, ptr %i.abq, align 1, !tbaa !60
  store i8 %i.abk, ptr %i.abf, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit712.unr-lcssa:      ; preds = %.lr.ph294
  br i1 %lcmp.mod736.not.a, label %simple_rotate.exit213, label %.lr.ph294.epil.preheader

.lr.ph294.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit712.unr-lcssa, %.lr.ph294.preheader
  %indvars.iv357.epil.init = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next358.1, %simple_rotate.exit213.loopexit712.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod737)
  %i.abr = mul nuw nsw i64 %indvars.iv357.epil.init, 3
  %i.abs = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.abr ; 3 uses
  %80 = trunc nuw nsw i64 %indvars.iv357.epil.init to i32
  %81 = xor i32 %80, -1
  %82 = add nsw i32 %i.c, %81
  %83 = mul nuw nsw i32 %82, 3
  %84 = zext nneg i32 %83 to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %i.lm, i64 %84 ; 3 uses
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !60
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 1
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !60
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 2
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !60
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abs, i64 2
  store i8 %i.aby, ptr %i.abz, align 1, !tbaa !60
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  store i8 %i.abw, ptr %i.aca, align 1, !tbaa !60
  store i8 %i.abu, ptr %i.abs, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit719.unr-lcssa:      ; preds = %.lr.ph284
  br i1 %lcmp.mod724.not, label %simple_rotate.exit213, label %.lr.ph284.epil.preheader

.lr.ph284.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit719.unr-lcssa, %.lr.ph284.preheader
  %indvars.iv332.epil.init = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next333.1, %simple_rotate.exit213.loopexit719.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod725)
  %i.acb = mul nuw nsw i64 %indvars.iv332.epil.init, 3
  %i.acc = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.acb ; 3 uses
  %i.acd = mul nsw i64 %indvars.iv332.epil.init, %i.ti
  %i.ace = getelementptr inbounds i8, ptr %i.rk, i64 %i.acd ; 3 uses
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !60
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ace, i64 1
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !60
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 2
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !60
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acc, i64 2
  store i8 %i.acj, ptr %i.ack, align 1, !tbaa !60
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acc, i64 1
  store i8 %i.ach, ptr %i.acl, align 1, !tbaa !60
  store i8 %i.acf, ptr %i.acc, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213:                            ; preds = %bb.aq, %.lr.ph282.prol.loopexit, %.lr.ph282, %.lr.ph284.epil.preheader, %simple_rotate.exit213.loopexit719.unr-lcssa, %.lr.ph286.prol.loopexit, %.lr.ph286, %.lr.ph288.prol.loopexit, %.lr.ph288, %copy_elem.exit, %.lr.ph292.prol.loopexit, %.lr.ph292, %.lr.ph294.epil.preheader, %simple_rotate.exit213.loopexit712.unr-lcssa, %.lr.ph296.prol.loopexit, %.lr.ph296, %.lr.ph298.prol.loopexit, %.lr.ph298, %copy_elem.exit243, %.lr.ph302.prol.loopexit, %.lr.ph302, %.lr.ph304.epil.preheader, %simple_rotate.exit213.loopexit706.unr-lcssa, %.lr.ph306.prol.loopexit, %.lr.ph306, %.lr.ph308.prol.loopexit, %.lr.ph308, %copy_elem.exit244, %middle.block695, %middle.block672, %middle.block636, %vec.epilog.middle.block649, %middle.block618, %middle.block573, %vec.epilog.middle.block587, %middle.block529, %vec.epilog.middle.block543, %middle.block502, %middle.block477, %middle.block, %vec.epilog.middle.block, %simple_rotate.exit213.sink.split, %.preheader276, %.preheader274, %.preheader272, %.preheader270, %.preheader268, %.preheader266, %.preheader264, %.preheader262, %.preheader260, %.preheader258, %.preheader256, %.preheader254, %.preheader252, %.preheader250, %.preheader248, %.preheader
  %i.acm = add nsw i32 %.0195311, %i.m
  %i.acn = add nsw i32 %.0194312, %i.k
  %i.aco = add i32 %.0192313, 1                   ; 2 uses
  %exitcond402.not = icmp eq i32 %i.aco, %i.r
  br i1 %exitcond402.not, label %._crit_edge, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %simple_rotate.exit213, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_props(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !159    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !161
  %i.j = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.i) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %i.l = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.k, ptr noundef %i.g, i32 noundef 0) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @ff_draw_color(ptr noundef nonnull %i.k, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !163
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.r, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !164
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !166
  %i.z = icmp eq i32 %i.y, 8
  %spec.select = select i1 %i.z, ptr @interpolate_bilinear8, ptr @interpolate_bilinear16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr %spec.select, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !54
  %i.ae = sitofp nsz <2 x i32> %i.ad to <2 x double>
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x double> %i.af, ptr %i.ac, align 8, !tbaa !41
  %i.ag = shl nuw i32 1, %i.r
  %i.ah = sitofp nsz i32 %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.ah, ptr %i.ai, align 8, !tbaa !41
  %i.aj = shl nuw i32 1, %i.v
  %i.ak = sitofp nsz i32 %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store double %i.ak, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store <2 x double> splat (double +qnan), ptr %i.am, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.as) #12
  store ptr null, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !167
  %i.av = tail call i32 @av_expr_parse(ptr noundef nonnull %i.ar, ptr noundef %i.au, ptr noundef nonnull @var_names, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !167
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.ax) #12
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !168
  %i.ba = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.az, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.bb = load double, ptr %i.a, align 8, !tbaa !41 ; 3 uses
  store double %i.bb, ptr %i.an, align 8, !tbaa !41
  store double %i.bb, ptr %i.ao, align 8, !tbaa !41
  %i.bc = fadd nsz double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !170 ; 2 uses
  %i.bh = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bg, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %.pre84 = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bj = fcmp uno double %.pre84, 0.000000e+00
  %or.cond87 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond = call i1 @llvm.is.fpclass.f64(double %.pre84, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %i.bg, double noundef %.pre84) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  store double %.pre84, ptr %i.ap, align 8, !tbaa !41
  store double %.pre84, ptr %i.aq, align 8, !tbaa !41
  %i.bk = fadd nsz double %.pre84, 5.000000e-01
  %i.bl = fptosi double %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !171
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !168 ; 2 uses
  %i.bo = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  %.pre = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bq = fcmp uno double %.pre, 0.000000e+00
  %or.cond88 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond3 = call i1 @llvm.is.fpclass.f64(double %.pre, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %i.bn, double noundef %.pre) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store double %.pre, ptr %i.an, align 8, !tbaa !41
  store double %.pre, ptr %i.ao, align 8, !tbaa !41
  %i.br = fadd nsz double %.pre, 5.000000e-01
  %i.bs = fptosi double %i.br to i32
  store i32 %i.bs, ptr %i.be, align 4, !tbaa !169
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !161
  %i.bu = call i32 @av_pix_fmt_count_planes(i32 noundef %i.bt) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load <2 x i32>, ptr %i.bm, align 8, !tbaa !54
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.by, ptr %i.bw, align 8, !tbaa !54
end_hunk_2

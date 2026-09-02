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
  %i.ax = urem i64 %spec.select.i94, 6588398      ; 3 uses
  %i.ay = icmp samesign ugt i64 %i.aw, 4941297
  %i.az = icmp samesign ugt i64 %i.ax, 4941297
  %i.ba = add nuw nsw i64 %i.aw, -6588398
  %i.bb = add nuw nsw i64 %i.ax, -6588398
  %.1.i = select i1 %i.ay, i64 %i.ba, i64 %i.aw   ; 3 uses
  %.1.i95 = select i1 %i.az, i64 %i.bb, i64 %i.ax ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, 1647098
  %i.bd = icmp sgt i64 %.1.i95, 1647098
  %i.be = sub nsw i64 3294199, %.1.i
  %i.bf = sub nsw i64 3294199, %.1.i95
  %.2.i = select i1 %i.bc, i64 %i.be, i64 %.1.i   ; 4 uses
  %.2.i96 = select i1 %i.bd, i64 %i.bf, i64 %.1.i95 ; 4 uses
  %i.bg = mul nsw i64 %.2.i, %.2.i
  %i.bh = mul nsw i64 %.2.i96, %.2.i96
  %i.bi = lshr i64 %i.bg, 20                      ; 4 uses
  %i.bj = lshr i64 %i.bh, 20                      ; 4 uses
  %i.bk = mul i64 %.2.i, %i.bi
  %i.bl = mul i64 %.2.i96, %i.bj
  %i.bm = sub i64 0, %i.bk
  %i.bn = sub i64 0, %i.bl
  %i.bo = sdiv i64 %i.bm, 6291456                 ; 2 uses
  %i.bp = sdiv i64 %i.bn, 6291456                 ; 2 uses
  %i.bq = mul i64 %i.bi, %i.bo
  %i.br = mul i64 %i.bj, %i.bp
  %i.bs = sub i64 0, %i.bq
  %i.bt = sub i64 0, %i.br
  %i.bu = sdiv i64 %i.bs, 20971520                ; 2 uses
  %i.bv = sdiv i64 %i.bt, 20971520                ; 2 uses
  %i.bw = mul i64 %i.bi, %i.bu
  %i.bx = mul i64 %i.bj, %i.bv
  %i.by = sub i64 0, %i.bw
  %i.bz = sub i64 0, %i.bx
  %i.ca = sdiv i64 %i.by, 44040192                ; 2 uses
  %i.cb = sdiv i64 %i.bz, 44040192                ; 2 uses
  %i.cc = mul i64 %i.bi, %i.ca
  %i.cd = mul i64 %i.bj, %i.cb
  %i.ce = sub i64 0, %i.cc
  %i.cf = sub i64 0, %i.cd
  %i.cg = sdiv i64 %i.ce, 75497472
  %i.ch = sdiv i64 %i.cf, 75497472
  %i.ci = add nsw i64 %.2.i, 8
  %i.cj = add nsw i64 %.2.i96, 8
  %i.ck = add nsw i64 %i.ci, %i.bo
  %i.cl = add nsw i64 %i.cj, %i.bp
  %i.cm = add nsw i64 %i.ck, %i.bu
  %i.cn = add nsw i64 %i.cl, %i.bv
  %i.co = add nsw i64 %i.cm, %i.ca
  %i.cp = add nsw i64 %i.cn, %i.cb
  %i.cq = add nsw i64 %i.co, %i.cg
  %i.cr = add nsw i64 %i.cp, %i.ch
  %i.cs = lshr i64 %i.cq, 4
  %i.ct = lshr i64 %i.cr, 4
  %i.cu = trunc i64 %i.cs to i32                  ; 3 uses
  %i.cv = trunc i64 %i.ct to i32                  ; 3 uses
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
  %i.dv = load i32, ptr %i.dh, align 8, !tbaa !44
  %i.dw = load i32, ptr %i.dg, align 4, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = phi i32 [ %i.dw, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.dy = phi i32 [ %i.dv, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.dz = load i32, ptr %i.k, align 4, !tbaa !69
  %i.ea = load i32, ptr %i.i, align 8, !tbaa !68
  %i.eb = sub nsw i32 0, %i.dz
  %i.ec = sub nsw i32 0, %i.ea
  %i.ed = ashr i32 %i.eb, %i.dy                   ; 2 uses
  %i.ee = ashr i32 %i.ec, %i.dx                   ; 3 uses
  %i.ef = sub nsw i32 0, %i.ee
  %i.eg = sub nsw i32 0, %i.ed                    ; 2 uses
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
  store i32 %i.ef, ptr %i.dn, align 8, !tbaa !51
  store i32 %i.eg, ptr %i.do, align 4, !tbaa !52
  store i32 %.097, ptr %i.dp, align 8, !tbaa !53
  %i.eq = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.er = xor i32 %i.ee, -1
  %i.es = add nsw i32 %i.ee, 1
  %i.et = mul nsw i32 %i.eq, %i.cv
  %i.eu = mul nsw i32 %i.eq, %i.cu
  %i.ev = mul nsw i32 %i.er, %i.cu
  %i.ew = mul nsw i32 %i.es, %i.cv
  %i.ex = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.ev, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.eu, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.et, i64 3
  %i.fb = sdiv <4 x i32> %i.fa, splat (i32 2)
  store <4 x i32> %i.fb, ptr %i.dq, align 4, !tbaa !54
  store i32 %i.cv, ptr %i.dr, align 4, !tbaa !55
  store i32 %i.cu, ptr %i.ds, align 8, !tbaa !56
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 37 uses
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
  %i.bp = sext i32 %i.c to i64                    ; 48 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 64 uses
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
  %i.br = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.bs = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.bt = shl nsw i64 %i.bp, 1                    ; 2 uses
  %i.bu = sub nsw i64 %i.bt, %i.br
  %i.bv = shl nsw i64 %i.bp, 2                    ; 2 uses
  %i.bw = sub nsw i64 %i.bv, %i.bs
  %i.bx = shl nuw nsw i64 %wide.trip.count, 1
  %i.by = shl nuw nsw i64 %wide.trip.count, 2
  %i.bz = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check662 = icmp ugt i32 %i.c, 7
  %n.vec664 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n669 = icmp eq i64 %n.vec664, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter696 = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i64 %i.bz, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  %lcmp.mod698 = trunc i32 %i.c to i1
  %min.iters.check642 = icmp ugt i32 %i.c, 7
  %n.vec644 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n649 = icmp eq i64 %n.vec644, %wide.trip.count
  %xtraiter699 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  %min.iters.check605 = icmp ugt i32 %i.c, 3
  %min.iters.check607 = icmp ult i32 %i.c, 32
  %i.cb = and i64 %wide.trip.count, 28
  %n.vec609 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n616 = icmp eq i64 %n.vec609, %wide.trip.count
  %min.epilog.iters.check621 = icmp eq i64 %i.cb, 0
  %n.vec623 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n629 = icmp eq i64 %n.vec623, %wide.trip.count
  %xtraiter702 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  %min.iters.check588 = icmp ult i32 %i.c, 8
  %n.vec590 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n599 = icmp eq i64 %n.vec590, %wide.trip.count
  %xtraiter705 = and i64 %wide.trip.count, 1
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  %i.cc = add nsw i64 %wide.trip.count, -1
  %xtraiter708 = and i64 %wide.trip.count, 1
  %i.cd = icmp eq i64 %i.bz, 0
  %unroll_iter711 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  %lcmp.mod710 = trunc i32 %i.c to i1
  %min.iters.check548 = icmp ult i32 %i.c, 4
  %min.iters.check550 = icmp ult i32 %i.c, 16
  %i.ce = and i64 %wide.trip.count, 12
  %n.vec552 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n561 = icmp eq i64 %n.vec552, %wide.trip.count
  %min.epilog.iters.check566 = icmp eq i64 %i.ce, 0
  %n.vec568 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n575 = icmp eq i64 %n.vec568, %wide.trip.count
  %xtraiter713 = and i64 %wide.trip.count, 1
  %lcmp.mod714.not = icmp eq i64 %xtraiter713, 0
  %i.cf = add nsw i64 %wide.trip.count, -1
  %min.iters.check508 = icmp ult i32 %i.c, 8
  %min.iters.check510 = icmp ult i32 %i.c, 32
  %i.cg = and i64 %wide.trip.count, 24
  %n.vec512 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n521 = icmp eq i64 %n.vec512, %wide.trip.count
  %min.epilog.iters.check526 = icmp eq i64 %i.cg, 0
  %n.vec528 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n535 = icmp eq i64 %n.vec528, %wide.trip.count
  %xtraiter716 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  %min.iters.check490 = icmp ugt i32 %i.c, 3
  %n.vec492 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n497 = icmp eq i64 %n.vec492, %wide.trip.count
  %xtraiter719 = and i64 %wide.trip.count, 1
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  %i.ch = add nsw i64 %wide.trip.count, -1
  %xtraiter722 = and i64 %wide.trip.count, 1
  %i.ci = icmp eq i64 %i.bz, 0
  %unroll_iter725 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  %lcmp.mod724 = trunc i32 %i.c to i1
  %min.iters.check468 = icmp ugt i32 %i.c, 7
  %n.vec470 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n475 = icmp eq i64 %n.vec470, %wide.trip.count
  %xtraiter727 = and i64 %wide.trip.count, 1
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  %i.cj = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ugt i32 %i.c, 7
  %min.iters.check447 = icmp ult i32 %i.c, 32
  %i.ck = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  %n.vec450 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n455 = icmp eq i64 %n.vec450, %wide.trip.count
  %xtraiter730 = and i64 %wide.trip.count, 1
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  %i.cl = add nsw i64 %wide.trip.count, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph314, %simple_rotate.exit213
  %.0192313 = phi i32 [ %i.o, %.lr.ph314 ], [ %i.aay, %simple_rotate.exit213 ] ; 10 uses
  %.0194312 = phi i32 [ %i.w, %.lr.ph314 ], [ %i.aax, %simple_rotate.exit213 ] ; 2 uses
  %.0195311 = phi i32 [ %i.aa, %.lr.ph314 ], [ %i.aaw, %simple_rotate.exit213 ] ; 2 uses
  %i.cm = add i32 %i.ao, %.0195311
  %i.cn = add i32 %i.ar, %.0194312
  %i.co = load double, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %i.cp = call nsz double @llvm.fabs.f64(double %i.co)
  %i.cq = fcmp nsz olt double %i.cp, f0x3E80000000000000
  %or.cond202 = select i1 %i.cq, i1 %i.at, i1 false
  %or.cond203 = select i1 %or.cond202, i1 %i.au, i1 false
  br i1 %or.cond203, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.cr = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.cs = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.ct = mul nsw i32 %i.cs, %.0192313
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.cx = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.cy = mul nsw i32 %i.cx, %.0192313
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = load i32, ptr %i.bd, align 4, !tbaa !54 ; 2 uses
  switch i32 %i.db, label %bb.g [
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
  %i.dc = mul nsw i32 %i.db, %i.c
  %i.dd = sext i32 %i.dc to i64
  br label %simple_rotate.exit213.sink.split

bb.h:                                             ; preds = %bb.b
  %i.de = fadd nsz double %i.co, f0xBFF921FB54442D18
  %i.df = call nsz double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp nsz olt double %i.df, f0x3E80000000000000
  %or.cond204 = select i1 %i.dg, i1 %i.av, i1 false
  %or.cond205 = select i1 %or.cond204, i1 %i.aw, i1 false
  br i1 %or.cond205, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.di = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.dj = mul i32 %i.di, %.0192313
  %i.dk = sext i32 %i.dj to i64                   ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 %i.dk  ; 20 uses
  %i.dm = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 7 uses
  %i.dn = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.do = mul i32 %i.dn, %.0192313
  %i.dp = sext i32 %i.do to i64                   ; 7 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp ; 27 uses
  %i.dr = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.dn, label %.preheader [
    i32 1, label %.preheader248
    i32 2, label %.preheader250
    i32 3, label %.preheader252
    i32 4, label %.preheader254
  ]

.preheader254:                                    ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph302.preheader, label %simple_rotate.exit213

.lr.ph302.preheader:                              ; preds = %.preheader254
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %ident.check478.not = icmp eq i32 %i.dr, 1
  %or.cond = select i1 %min.iters.check490, i1 %ident.check478.not, i1 false
  br i1 %or.cond, label %vector.memcheck479, label %.lr.ph302.preheader680

vector.memcheck479:                               ; preds = %.lr.ph302.preheader
  %scevgep480 = getelementptr i8, ptr %i.dh, i64 %i.bs
  %scevgep481 = getelementptr i8, ptr %scevgep480, i64 %i.dk
  %scevgep482 = getelementptr i8, ptr %i.dm, i64 %i.bq
  %scevgep483 = getelementptr i8, ptr %scevgep482, i64 %i.dp
  %i.dt = getelementptr i8, ptr %i.dm, i64 %i.bp
  %scevgep484 = getelementptr i8, ptr %i.dt, i64 3
  %scevgep485 = getelementptr i8, ptr %scevgep484, i64 %i.dp
  %bound0486 = icmp ult ptr %i.dl, %scevgep485
  %bound1487 = icmp ult ptr %scevgep483, %scevgep481
  %found.conflict488 = and i1 %bound0486, %bound1487
  br i1 %found.conflict488, label %.lr.ph302.preheader680, label %vector.ph491

vector.ph491:                                     ; preds = %vector.memcheck479
  %i.du = getelementptr i8, ptr %i.dq, i64 %i.bp
  %invariant.gep = getelementptr i8, ptr %i.dq, i64 %i.bp
  %invariant.gep737 = getelementptr i8, ptr %i.dq, i64 %i.bp
  %invariant.gep739 = getelementptr i8, ptr %i.dq, i64 %i.bp
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next495, %vector.body493 ] ; 6 uses
  %i.dv = shl nuw nsw i64 %index494, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dv
  %i.dx = xor i64 %index494, -1
  %i.dy = xor i64 %index494, -2
  %i.dz = xor i64 %index494, -3
  %i.ea = xor i64 %index494, -4
  %i.eb = getelementptr i8, ptr %i.du, i64 %i.dx
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dy
  %gep738 = getelementptr i8, ptr %invariant.gep737, i64 %i.dz
  %gep740 = getelementptr i8, ptr %invariant.gep739, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !54, !alias.scope !137
  %i.ed = load i32, ptr %gep, align 4, !tbaa !54, !alias.scope !137
  %i.ee = load i32, ptr %gep738, align 4, !tbaa !54, !alias.scope !137
  %i.ef = load i32, ptr %gep740, align 4, !tbaa !54, !alias.scope !137
  %i.eg = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ed, i64 1
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ee, i64 2
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ef, i64 3
  store <4 x i32> %i.ej, ptr %i.dw, align 4, !tbaa !54, !alias.scope !138, !noalias !137
  %index.next495 = add nuw i64 %index494, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next495, %n.vec492
  br i1 %i.ek, label %middle.block496, label %vector.body493, !llvm.loop !80

middle.block496:                                  ; preds = %vector.body493
  br i1 %cmp.n497, label %simple_rotate.exit213, label %.lr.ph302.preheader680

.lr.ph302.preheader680:                           ; preds = %vector.memcheck479, %.lr.ph302.preheader, %middle.block496
  %indvars.iv377.ph = phi i64 [ 0, %vector.memcheck479 ], [ 0, %.lr.ph302.preheader ], [ %n.vec492, %middle.block496 ] ; 5 uses
  br i1 %lcmp.mod720.not, label %.lr.ph302.prol.loopexit, label %.lr.ph302.prol

.lr.ph302.prol:                                   ; preds = %.lr.ph302.preheader680
  %i.el = shl nuw nsw i64 %indvars.iv377.ph, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.el
  %i.en = xor i64 %indvars.iv377.ph, -1
  %i.eo = add nsw i64 %i.bp, %i.en
  %i.ep = mul nsw i64 %i.eo, %i.ds
  %i.eq = getelementptr inbounds i8, ptr %i.dq, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !54
  store i32 %i.er, ptr %i.em, align 4, !tbaa !54
  %indvars.iv.next378.prol = or disjoint i64 %indvars.iv377.ph, 1
  br label %.lr.ph302.prol.loopexit

.lr.ph302.prol.loopexit:                          ; preds = %.lr.ph302.prol, %.lr.ph302.preheader680
  %indvars.iv377.unr = phi i64 [ %indvars.iv377.ph, %.lr.ph302.preheader680 ], [ %indvars.iv.next378.prol, %.lr.ph302.prol ]
  %i.es = icmp eq i64 %indvars.iv377.ph, %i.ch
  br i1 %i.es, label %simple_rotate.exit213, label %.lr.ph302
end_hunk_0
begin_hunk_1_@filter_slice:bb.a
  br i1 %i.ax, label %.lr.ph310, label %simple_rotate.exit213

.lr.ph310:                                        ; preds = %.preheader
  %i.hd = sext i32 %i.dn to i64                   ; 2 uses
  %i.he = sext i32 %i.dr to i64
  br label %bb.j

.lr.ph308:                                        ; preds = %.lr.ph308.prol.loopexit, %.lr.ph308
  %indvars.iv392 = phi i64 [ %indvars.iv.next393.1, %.lr.ph308 ], [ %indvars.iv392.unr, %.lr.ph308.prol.loopexit ] ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv392
  %i.hg = xor i64 %indvars.iv392, -1
  %i.hh = add nsw i64 %i.bp, %i.hg
  %i.hi = mul nsw i64 %i.hh, %i.gh
  %i.hj = getelementptr inbounds i8, ptr %i.dq, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !60
  store i8 %i.hk, ptr %i.hf, align 1, !tbaa !60
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv392
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  %reass.sub736 = sub i64 %i.bp, %indvars.iv392
  %i.hn = add i64 %reass.sub736, -2
  %i.ho = mul nsw i64 %i.hn, %i.gh
  %i.hp = getelementptr inbounds i8, ptr %i.dq, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !60
  store i8 %i.hq, ptr %i.hm, align 1, !tbaa !60
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %exitcond396.not.1 = icmp eq i64 %indvars.iv.next393.1, %wide.trip.count395
  br i1 %exitcond396.not.1, label %simple_rotate.exit213, label %.lr.ph308, !llvm.loop !90

.lr.ph306:                                        ; preds = %.lr.ph306.prol.loopexit, %.lr.ph306
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %.lr.ph306 ], [ %indvars.iv387.unr, %.lr.ph306.prol.loopexit ] ; 5 uses
  %i.hr = shl nuw nsw i64 %indvars.iv387, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.hr
  %i.ht = xor i64 %indvars.iv387, -1
  %i.hu = add nsw i64 %i.bp, %i.ht
  %i.hv = mul nsw i64 %i.hu, %i.eu
  %i.hw = getelementptr inbounds i8, ptr %i.dq, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !140
  store i16 %i.hx, ptr %i.hs, align 2, !tbaa !140
  %indvars.iv.next388 = shl i64 %indvars.iv387, 1
  %i.hy = getelementptr i8, ptr %i.dl, i64 %indvars.iv.next388
  %i.hz = getelementptr i8, ptr %i.hy, i64 2
  %reass.sub735 = sub i64 %i.bp, %indvars.iv387
  %i.ia = add i64 %reass.sub735, -2
  %i.ib = mul nsw i64 %i.ia, %i.eu
  %i.ic = getelementptr inbounds i8, ptr %i.dq, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !140
  store i16 %i.id, ptr %i.hz, align 2, !tbaa !140
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %wide.trip.count390
  br i1 %exitcond391.not.1, label %simple_rotate.exit213, label %.lr.ph306, !llvm.loop !91

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ] ; 5 uses
  %niter726 = phi i64 [ %niter726.next.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ]
  %i.ie = mul nuw nsw i64 %indvars.iv382, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ie ; 3 uses
  %i.ig = xor i64 %indvars.iv382, -1
  %i.ih = add nsw i64 %i.bp, %i.ig
  %i.ii = mul nsw i64 %i.ih, %i.et
  %i.ij = getelementptr inbounds i8, ptr %i.dq, i64 %i.ii ; 3 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !60
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !60
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !60
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !60
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 %i.im, ptr %i.iq, align 1, !tbaa !60
  store i8 %i.ik, ptr %i.if, align 1, !tbaa !60
  %i.ir = mul nuw i64 %indvars.iv382, 3
  %i.is = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ir ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 3
  %i.iu = xor i64 %indvars.iv382, -2
  %i.iv = add nsw i64 %i.iu, %i.bp
  %i.iw = mul nsw i64 %i.iv, %i.et
  %i.ix = getelementptr inbounds i8, ptr %i.dq, i64 %i.iw ; 3 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !60
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !60
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 5
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !60
  %i.je = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store i8 %i.ja, ptr %i.je, align 1, !tbaa !60
  store i8 %i.iy, ptr %i.it, align 1, !tbaa !60
  %indvars.iv.next383.1 = add nuw nsw i64 %indvars.iv382, 2 ; 2 uses
  %niter726.next.1 = add i64 %niter726, 2         ; 2 uses
  %niter726.ncmp.1 = icmp eq i64 %niter726.next.1, %unroll_iter725
  br i1 %niter726.ncmp.1, label %simple_rotate.exit213.loopexit679.unr-lcssa, label %.lr.ph304, !llvm.loop !92

.lr.ph302:                                        ; preds = %.lr.ph302.prol.loopexit, %.lr.ph302
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.1, %.lr.ph302 ], [ %indvars.iv377.unr, %.lr.ph302.prol.loopexit ] ; 5 uses
  %i.jf = shl nuw nsw i64 %indvars.iv377, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.jf
  %i.jh = xor i64 %indvars.iv377, -1
  %i.ji = add nsw i64 %i.bp, %i.jh
  %i.jj = mul nsw i64 %i.ji, %i.ds
  %i.jk = getelementptr inbounds i8, ptr %i.dq, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !54
  store i32 %i.jl, ptr %i.jg, align 4, !tbaa !54
  %indvars.iv.next378 = shl i64 %indvars.iv377, 2
  %i.jm = getelementptr i8, ptr %i.dl, i64 %indvars.iv.next378
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  %reass.sub734 = sub i64 %i.bp, %indvars.iv377
  %i.jo = add i64 %reass.sub734, -2
  %i.jp = mul nsw i64 %i.jo, %i.ds
  %i.jq = getelementptr inbounds i8, ptr %i.dq, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !54
  store i32 %i.jr, ptr %i.jn, align 4, !tbaa !54
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377, 2 ; 2 uses
  %exitcond381.not.1 = icmp eq i64 %indvars.iv.next378.1, %wide.trip.count380
  br i1 %exitcond381.not.1, label %simple_rotate.exit213, label %.lr.ph302, !llvm.loop !93

bb.j:                                             ; preds = %.lr.ph310, %copy_elem.exit244
  %indvars.iv397 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next398, %copy_elem.exit244 ] ; 3 uses
  %i.js = mul nsw i64 %indvars.iv397, %i.hd
  %i.jt = getelementptr inbounds i8, ptr %i.dl, i64 %i.js ; 7 uses
  %i.ju = xor i64 %indvars.iv397, -1
  %i.jv = add nsw i64 %i.bp, %i.ju
  %i.jw = mul nsw i64 %i.jv, %i.he
  %i.jx = getelementptr inbounds i8, ptr %i.dq, i64 %i.jw ; 7 uses
  switch i32 %i.dn, label %bb.o [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !60
  store i8 %i.jy, ptr %i.jt, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.l:                                             ; preds = %bb.j
  %i.jz = load i16, ptr %i.jx, align 2, !tbaa !140
  store i16 %i.jz, ptr %i.jt, align 2, !tbaa !140
  br label %copy_elem.exit244

bb.m:                                             ; preds = %bb.j
  %i.ka = load i8, ptr %i.jx, align 1, !tbaa !60
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !60
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !60
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 %i.kc, ptr %i.kg, align 1, !tbaa !60
  store i8 %i.ka, ptr %i.jt, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.n:                                             ; preds = %bb.j
  %i.kh = load i32, ptr %i.jx, align 4, !tbaa !54
  store i32 %i.kh, ptr %i.jt, align 4, !tbaa !54
  br label %copy_elem.exit244

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.jx, i64 %i.hd, i1 false)
  br label %copy_elem.exit244

copy_elem.exit244:                                ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %simple_rotate.exit213, label %bb.j, !llvm.loop !92

bb.p:                                             ; preds = %bb.h
  %i.ki = fadd nsz double %i.co, f0xC00921FB54442D18
  %i.kj = call nsz double @llvm.fabs.f64(double %i.ki)
  %i.kk = fcmp nsz olt double %i.kj, f0x3E80000000000000
  %or.cond206 = select i1 %i.kk, i1 %i.at, i1 false
  %or.cond207 = select i1 %or.cond206, i1 %i.au, i1 false
  br i1 %or.cond207, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.kl = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.km = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.kn = mul i32 %i.km, %.0192313
  %i.ko = sext i32 %i.kn to i64                   ; 4 uses
  %i.kp = getelementptr i8, ptr %i.kl, i64 %i.ko  ; 23 uses
  %i.kq = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 6 uses
  %i.kr = xor i32 %.0192313, -1
  %i.ks = add i32 %i.e, %i.kr
  %i.kt = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.ku = mul i32 %i.kt, %i.ks
  %i.kv = sext i32 %i.ku to i64                   ; 6 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kq, i64 %i.kv ; 14 uses
  %i.kx = load i32, ptr %i.bd, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.kx, label %.preheader256 [
    i32 1, label %.preheader258
    i32 2, label %.preheader260
    i32 3, label %.preheader262
    i32 4, label %.preheader264
  ]

.preheader264:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph292.preheader, label %simple_rotate.exit213

.lr.ph292.preheader:                              ; preds = %.preheader264
  br i1 %min.iters.check588, label %.lr.ph292.preheader686, label %vector.memcheck577

vector.memcheck577:                               ; preds = %.lr.ph292.preheader
  %scevgep578 = getelementptr i8, ptr %i.kl, i64 %i.bs
  %scevgep579 = getelementptr i8, ptr %scevgep578, i64 %i.ko
  %scevgep580 = getelementptr i8, ptr %i.kq, i64 %i.bw
  %scevgep581 = getelementptr i8, ptr %scevgep580, i64 %i.kv
  %scevgep582 = getelementptr i8, ptr %i.kq, i64 %i.bv
  %scevgep583 = getelementptr i8, ptr %scevgep582, i64 %i.kv
  %bound0584 = icmp ult ptr %i.kp, %scevgep583
  %bound1585 = icmp ult ptr %scevgep581, %scevgep579
  %found.conflict586 = and i1 %bound0584, %bound1585
  br i1 %found.conflict586, label %.lr.ph292.preheader686, label %vector.body591

vector.body591:                                   ; preds = %vector.memcheck577, %vector.body591
  %index592 = phi i64 [ %index.next597, %vector.body591 ], [ 0, %vector.memcheck577 ] ; 3 uses
  %i.ky = shl nuw nsw i64 %index592, 2
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ky ; 2 uses
  %4 = xor i64 %index592, -1
  %5 = add nsw i64 %i.bp, %4
  %6 = shl nsw i64 %5, 2
  %i.la = getelementptr inbounds i8, ptr %i.kw, i64 %6 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -12
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 -28
  %wide.load593 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !54, !alias.scope !146
  %wide.load594 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !54, !alias.scope !146
  %reverse595 = shufflevector <4 x i32> %wide.load593, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse596 = shufflevector <4 x i32> %wide.load594, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <4 x i32> %reverse595, ptr %i.kz, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  store <4 x i32> %reverse596, ptr %i.ld, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  %index.next597 = add nuw i64 %index592, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next597, %n.vec590
  br i1 %i.le, label %middle.block598, label %vector.body591, !llvm.loop !97

middle.block598:                                  ; preds = %vector.body591
  br i1 %cmp.n599, label %simple_rotate.exit213, label %.lr.ph292.preheader686

.lr.ph292.preheader686:                           ; preds = %vector.memcheck577, %.lr.ph292.preheader, %middle.block598
  %indvars.iv352.ph = phi i64 [ 0, %vector.memcheck577 ], [ 0, %.lr.ph292.preheader ], [ %n.vec590, %middle.block598 ] ; 5 uses
  br i1 %lcmp.mod706.not, label %.lr.ph292.prol.loopexit, label %.lr.ph292.prol

.lr.ph292.prol:                                   ; preds = %.lr.ph292.preheader686
  %i.lf = shl nuw nsw i64 %indvars.iv352.ph, 2
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lf
  %7 = xor i64 %indvars.iv352.ph, -1
  %8 = add nsw i64 %i.bp, %7
  %9 = shl nsw i64 %8, 2
  %i.lh = getelementptr inbounds i8, ptr %i.kw, i64 %9
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !54
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !54
  %indvars.iv.next353.prol = or disjoint i64 %indvars.iv352.ph, 1
  br label %.lr.ph292.prol.loopexit

.lr.ph292.prol.loopexit:                          ; preds = %.lr.ph292.prol, %.lr.ph292.preheader686
  %indvars.iv352.unr = phi i64 [ %indvars.iv352.ph, %.lr.ph292.preheader686 ], [ %indvars.iv.next353.prol, %.lr.ph292.prol ]
  %i.lj = icmp eq i64 %indvars.iv352.ph, %i.cc
  br i1 %i.lj, label %simple_rotate.exit213, label %.lr.ph292

.preheader262:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph294.preheader, label %simple_rotate.exit213

.lr.ph294.preheader:                              ; preds = %.preheader262
  br i1 %i.cd, label %.lr.ph294.epil.preheader, label %.lr.ph294

.preheader260:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check563, label %simple_rotate.exit213

iter.check563:                                    ; preds = %.preheader260
  br i1 %min.iters.check548, label %.lr.ph296.preheader, label %vector.memcheck537

vector.memcheck537:                               ; preds = %iter.check563
  %scevgep538 = getelementptr i8, ptr %i.kl, i64 %i.br
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.ko
  %scevgep540 = getelementptr i8, ptr %i.kq, i64 %i.bu
  %scevgep541 = getelementptr i8, ptr %scevgep540, i64 %i.kv
  %scevgep542.a = getelementptr i8, ptr %i.kq, i64 %i.bt
  %scevgep543 = getelementptr i8, ptr %scevgep542.a, i64 %i.kv
  %bound0544 = icmp ult ptr %i.kp, %scevgep543
  %bound1545 = icmp ult ptr %scevgep541, %scevgep539
  %found.conflict546 = and i1 %bound0544, %bound1545
  br i1 %found.conflict546, label %.lr.ph296.preheader, label %vector.main.loop.iter.check549

vector.main.loop.iter.check549:                   ; preds = %vector.memcheck537
  br i1 %min.iters.check550, label %vec.epilog.ph567, label %vector.body553

vector.body553:                                   ; preds = %vector.main.loop.iter.check549, %vector.body553
  %index554 = phi i64 [ %index.next559, %vector.body553 ], [ 0, %vector.main.loop.iter.check549 ] ; 3 uses
  %i.lk = shl nuw nsw i64 %index554, 1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lk ; 2 uses
  %10 = xor i64 %index554, -1
  %11 = add nsw i64 %i.bp, %10
  %12 = shl nsw i64 %11, 1
  %i.lm = getelementptr inbounds i8, ptr %i.kw, i64 %12 ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -14
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 -30
  %wide.load555 = load <8 x i16>, ptr %i.ln, align 2, !tbaa !140, !alias.scope !148
  %wide.load556 = load <8 x i16>, ptr %i.lo, align 2, !tbaa !140, !alias.scope !148
  %reverse557 = shufflevector <8 x i16> %wide.load555, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse558 = shufflevector <8 x i16> %wide.load556, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <8 x i16> %reverse557, ptr %i.ll, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  store <8 x i16> %reverse558, ptr %i.lp, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next559 = add nuw i64 %index554, 16      ; 2 uses
  %i.lq = icmp eq i64 %index.next559, %n.vec552
  br i1 %i.lq, label %middle.block560, label %vector.body553, !llvm.loop !101

middle.block560:                                  ; preds = %vector.body553
  br i1 %cmp.n561, label %simple_rotate.exit213, label %vec.epilog.iter.check565

vec.epilog.iter.check565:                         ; preds = %middle.block560
  br i1 %min.epilog.iters.check566, label %.lr.ph296.preheader, label %vec.epilog.ph567, !prof !61

vec.epilog.ph567:                                 ; preds = %vector.main.loop.iter.check549, %vec.epilog.iter.check565
  %vec.epilog.resume.val562 = phi i64 [ %n.vec552, %vec.epilog.iter.check565 ], [ 0, %vector.main.loop.iter.check549 ]
  br label %vec.epilog.vector.body569

vec.epilog.vector.body569:                        ; preds = %vec.epilog.vector.body569, %vec.epilog.ph567
  %index570 = phi i64 [ %vec.epilog.resume.val562, %vec.epilog.ph567 ], [ %index.next573, %vec.epilog.vector.body569 ] ; 3 uses
  %i.lr = shl nuw nsw i64 %index570, 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lr
  %13 = xor i64 %index570, -1
  %14 = add nsw i64 %i.bp, %13
  %15 = shl nsw i64 %14, 1
  %i.lt = getelementptr inbounds i8, ptr %i.kw, i64 %15
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -6
  %wide.load571 = load <4 x i16>, ptr %i.lu, align 2, !tbaa !140, !alias.scope !148
  %reverse572 = shufflevector <4 x i16> %wide.load571, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse572, ptr %i.ls, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next573 = add nuw i64 %index570, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next573, %n.vec568
  br i1 %i.lv, label %vec.epilog.middle.block574, label %vec.epilog.vector.body569, !llvm.loop !102

vec.epilog.middle.block574:                       ; preds = %vec.epilog.vector.body569
  br i1 %cmp.n575, label %simple_rotate.exit213, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %vector.memcheck537, %iter.check563, %vec.epilog.iter.check565, %vec.epilog.middle.block574
  %indvars.iv362.ph = phi i64 [ 0, %iter.check563 ], [ 0, %vector.memcheck537 ], [ %n.vec552, %vec.epilog.iter.check565 ], [ %n.vec568, %vec.epilog.middle.block574 ] ; 5 uses
  br i1 %lcmp.mod714.not, label %.lr.ph296.prol.loopexit, label %.lr.ph296.prol

.lr.ph296.prol:                                   ; preds = %.lr.ph296.preheader
  %i.lw = shl nuw nsw i64 %indvars.iv362.ph, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lw
  %16 = xor i64 %indvars.iv362.ph, -1
  %17 = add nsw i64 %i.bp, %16
  %18 = shl nsw i64 %17, 1
  %i.ly = getelementptr inbounds i8, ptr %i.kw, i64 %18
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !140
  store i16 %i.lz, ptr %i.lx, align 2, !tbaa !140
  %indvars.iv.next363.prol = or disjoint i64 %indvars.iv362.ph, 1
  br label %.lr.ph296.prol.loopexit

.lr.ph296.prol.loopexit:                          ; preds = %.lr.ph296.prol, %.lr.ph296.preheader
  %indvars.iv362.unr = phi i64 [ %indvars.iv362.ph, %.lr.ph296.preheader ], [ %indvars.iv.next363.prol, %.lr.ph296.prol ]
  %i.ma = icmp eq i64 %indvars.iv362.ph, %i.cf
  br i1 %i.ma, label %simple_rotate.exit213, label %.lr.ph296

.preheader258:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check523, label %simple_rotate.exit213

iter.check523:                                    ; preds = %.preheader258
  %i.mb = getelementptr i8, ptr %i.kw, i64 %i.bp  ; 8 uses
  br i1 %min.iters.check508, label %.lr.ph298.preheader, label %vector.memcheck499

vector.memcheck499:                               ; preds = %iter.check523
  %scevgep500 = getelementptr i8, ptr %i.kl, i64 %wide.trip.count
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.ko
  %scevgep502 = getelementptr i8, ptr %i.kq, i64 %i.bq
  %scevgep503 = getelementptr i8, ptr %scevgep502, i64 %i.kv
  %bound0504 = icmp ult ptr %i.kp, %i.mb
  %bound1505 = icmp ult ptr %scevgep503, %scevgep501
  %found.conflict506 = and i1 %bound0504, %bound1505
  br i1 %found.conflict506, label %.lr.ph298.preheader, label %vector.main.loop.iter.check509

vector.main.loop.iter.check509:                   ; preds = %vector.memcheck499
  br i1 %min.iters.check510, label %vec.epilog.ph527, label %vector.body513

vector.body513:                                   ; preds = %vector.main.loop.iter.check509, %vector.body513
  %index514 = phi i64 [ %index.next519, %vector.body513 ], [ 0, %vector.main.loop.iter.check509 ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index514 ; 2 uses
  %i.md = xor i64 %index514, -1
  %i.me = getelementptr i8, ptr %i.mb, i64 %i.md  ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 -15
  %i.mg = getelementptr i8, ptr %i.me, i64 -31
  %wide.load515 = load <16 x i8>, ptr %i.mf, align 1, !tbaa !60, !alias.scope !150
  %wide.load516 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !60, !alias.scope !150
  %reverse517 = shufflevector <16 x i8> %wide.load515, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse518 = shufflevector <16 x i8> %wide.load516, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store <16 x i8> %reverse517, ptr %i.mc, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  store <16 x i8> %reverse518, ptr %i.mh, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next519 = add nuw i64 %index514, 32      ; 2 uses
  %i.mi = icmp eq i64 %index.next519, %n.vec512
  br i1 %i.mi, label %middle.block520, label %vector.body513, !llvm.loop !106

middle.block520:                                  ; preds = %vector.body513
  br i1 %cmp.n521, label %simple_rotate.exit213, label %vec.epilog.iter.check525

vec.epilog.iter.check525:                         ; preds = %middle.block520
  br i1 %min.epilog.iters.check526, label %.lr.ph298.preheader, label %vec.epilog.ph527, !prof !145

vec.epilog.ph527:                                 ; preds = %vector.main.loop.iter.check509, %vec.epilog.iter.check525
  %vec.epilog.resume.val522 = phi i64 [ %n.vec512, %vec.epilog.iter.check525 ], [ 0, %vector.main.loop.iter.check509 ]
  br label %vec.epilog.vector.body529

vec.epilog.vector.body529:                        ; preds = %vec.epilog.vector.body529, %vec.epilog.ph527
  %index530 = phi i64 [ %vec.epilog.resume.val522, %vec.epilog.ph527 ], [ %index.next533, %vec.epilog.vector.body529 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index530
  %i.mk = xor i64 %index530, -1
  %i.ml = getelementptr i8, ptr %i.mb, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -7
  %wide.load531 = load <8 x i8>, ptr %i.mm, align 1, !tbaa !60, !alias.scope !150
  %reverse532 = shufflevector <8 x i8> %wide.load531, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse532, ptr %i.mj, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next533 = add nuw i64 %index530, 8       ; 2 uses
  %i.mn = icmp eq i64 %index.next533, %n.vec528
  br i1 %i.mn, label %vec.epilog.middle.block534, label %vec.epilog.vector.body529, !llvm.loop !107

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body529
  br i1 %cmp.n535, label %simple_rotate.exit213, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %vector.memcheck499, %iter.check523, %vec.epilog.iter.check525, %vec.epilog.middle.block534
  %indvars.iv367.ph = phi i64 [ 0, %iter.check523 ], [ 0, %vector.memcheck499 ], [ %n.vec512, %vec.epilog.iter.check525 ], [ %n.vec528, %vec.epilog.middle.block534 ] ; 3 uses
  br i1 %lcmp.mod717.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol

.lr.ph298.prol:                                   ; preds = %.lr.ph298.preheader, %.lr.ph298.prol
  %indvars.iv367.prol = phi i64 [ %indvars.iv.next368.prol, %.lr.ph298.prol ], [ %indvars.iv367.ph, %.lr.ph298.preheader ] ; 3 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %.lr.ph298.prol ], [ 0, %.lr.ph298.preheader ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv367.prol
  %i.mp = xor i64 %indvars.iv367.prol, -1
  %i.mq = getelementptr i8, ptr %i.mb, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !60
  store i8 %i.mr, ptr %i.mo, align 1, !tbaa !60
  %indvars.iv.next368.prol = add nuw nsw i64 %indvars.iv367.prol, 1 ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol, !llvm.loop !108

.lr.ph298.prol.loopexit:                          ; preds = %.lr.ph298.prol, %.lr.ph298.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %.lr.ph298.preheader ], [ %indvars.iv.next368.prol, %.lr.ph298.prol ]
  %i.ms = sub nsw i64 %indvars.iv367.ph, %wide.trip.count
  %i.mt = icmp ugt i64 %i.ms, -4
  br i1 %i.mt, label %simple_rotate.exit213, label %.lr.ph298

.preheader256:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph300, label %simple_rotate.exit213

.lr.ph300:                                        ; preds = %.preheader256
  %i.mu = sext i32 %i.kx to i64                   ; 3 uses
  br label %bb.r

.lr.ph298:                                        ; preds = %.lr.ph298.prol.loopexit, %.lr.ph298
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.3, %.lr.ph298 ], [ %indvars.iv367.unr, %.lr.ph298.prol.loopexit ] ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv367
  %i.mw = xor i64 %indvars.iv367, -1
  %i.mx = getelementptr i8, ptr %i.mb, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !60
  store i8 %i.my, ptr %i.mv, align 1, !tbaa !60
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv367
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.nb = sub i64 -2, %indvars.iv367
  %i.nc = getelementptr i8, ptr %i.mb, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !60
  store i8 %i.nd, ptr %i.na, align 1, !tbaa !60
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv367
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 2
  %i.ng = sub i64 -3, %indvars.iv367
  %i.nh = getelementptr i8, ptr %i.mb, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !60
  store i8 %i.ni, ptr %i.nf, align 1, !tbaa !60
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv367
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nl = sub i64 -4, %indvars.iv367
  %i.nm = getelementptr i8, ptr %i.mb, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !60
  store i8 %i.nn, ptr %i.nk, align 1, !tbaa !60
  %indvars.iv.next368.3 = add nuw nsw i64 %indvars.iv367, 4 ; 2 uses
  %exitcond371.not.3 = icmp eq i64 %indvars.iv.next368.3, %wide.trip.count370
  br i1 %exitcond371.not.3, label %simple_rotate.exit213, label %.lr.ph298, !llvm.loop !109

.lr.ph296:                                        ; preds = %.lr.ph296.prol.loopexit, %.lr.ph296
  %indvars.iv362 = phi i64 [ %indvars.iv.next363.1, %.lr.ph296 ], [ %indvars.iv362.unr, %.lr.ph296.prol.loopexit ] ; 5 uses
  %i.no = shl nuw nsw i64 %indvars.iv362, 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.no
  %19 = xor i64 %indvars.iv362, -1
  %20 = add nsw i64 %i.bp, %19
  %21 = shl nsw i64 %20, 1
  %i.nq = getelementptr inbounds i8, ptr %i.kw, i64 %21
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !140
  store i16 %i.nr, ptr %i.np, align 2, !tbaa !140
  %indvars.iv.next363.a = shl i64 %indvars.iv362, 1
  %i.ns = getelementptr i8, ptr %i.kp, i64 %indvars.iv.next363.a
  %22 = getelementptr i8, ptr %i.ns, i64 2
  %reass.sub733 = sub i64 %i.bp, %indvars.iv362
  %23 = shl i64 %reass.sub733, 1
  %24 = getelementptr i8, ptr %i.kw, i64 %23
  %i.nt = getelementptr i8, ptr %24, i64 -4
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !140
  store i16 %i.nu, ptr %22, align 2, !tbaa !140
  %indvars.iv.next363.1 = add nuw nsw i64 %indvars.iv362, 2 ; 2 uses
  %exitcond366.not.1 = icmp eq i64 %indvars.iv.next363.1, %wide.trip.count365
  br i1 %exitcond366.not.1, label %simple_rotate.exit213, label %.lr.ph296, !llvm.loop !110

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ] ; 5 uses
  %niter712 = phi i64 [ %niter712.next.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ]
  %i.nv = mul nuw nsw i64 %indvars.iv357, 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.nv ; 3 uses
  %25 = xor i64 %indvars.iv357, -1
  %26 = add nsw i64 %i.bp, %25
  %27 = mul nsw i64 %26, 3
  %i.nx = getelementptr inbounds i8, ptr %i.kw, i64 %27 ; 3 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !60
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !60
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !60
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !60
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store i8 %i.oa, ptr %i.oe, align 1, !tbaa !60
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !60
  %i.of = mul nuw i64 %indvars.iv357, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.of ; 3 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.og, i64 3
  %29 = xor i64 %indvars.iv357, -2
  %30 = add nsw i64 %29, %i.bp
  %31 = mul nsw i64 %30, 3
  %i.oh = getelementptr inbounds i8, ptr %i.kw, i64 %31 ; 3 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !60
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !60
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 5
  store i8 %i.om, ptr %i.on, align 1, !tbaa !60
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store i8 %i.ok, ptr %i.oo, align 1, !tbaa !60
  store i8 %i.oi, ptr %28, align 1, !tbaa !60
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 2 uses
  %niter712.next.1 = add i64 %niter712, 2         ; 2 uses
  %niter712.ncmp.1 = icmp eq i64 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %simple_rotate.exit213.loopexit685.unr-lcssa, label %.lr.ph294, !llvm.loop !111

.lr.ph292:                                        ; preds = %.lr.ph292.prol.loopexit, %.lr.ph292
  %indvars.iv352 = phi i64 [ %indvars.iv.next353.1, %.lr.ph292 ], [ %indvars.iv352.unr, %.lr.ph292.prol.loopexit ] ; 5 uses
  %i.op = shl nuw nsw i64 %indvars.iv352, 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.op
  %32 = xor i64 %indvars.iv352, -1
  %33 = add nsw i64 %i.bp, %32
  %34 = shl nsw i64 %33, 2
  %i.or = getelementptr inbounds i8, ptr %i.kw, i64 %34
  %i.os = load i32, ptr %i.or, align 4, !tbaa !54
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !54
  %indvars.iv.next353.a = shl i64 %indvars.iv352, 2
  %i.ot = getelementptr i8, ptr %i.kp, i64 %indvars.iv.next353.a
  %35 = getelementptr i8, ptr %i.ot, i64 4
  %reass.sub = sub i64 %i.bp, %indvars.iv352
  %36 = shl i64 %reass.sub, 2
  %37 = getelementptr i8, ptr %i.kw, i64 %36
  %i.ou = getelementptr i8, ptr %37, i64 -8
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !54
  store i32 %i.ov, ptr %35, align 4, !tbaa !54
  %indvars.iv.next353.1 = add nuw nsw i64 %indvars.iv352, 2 ; 2 uses
  %exitcond356.not.1 = icmp eq i64 %indvars.iv.next353.1, %wide.trip.count355
  br i1 %exitcond356.not.1, label %simple_rotate.exit213, label %.lr.ph292, !llvm.loop !112

bb.r:                                             ; preds = %.lr.ph300, %copy_elem.exit243
  %indvars.iv372 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next373, %copy_elem.exit243 ] ; 3 uses
  %i.ow = mul nsw i64 %indvars.iv372, %i.mu
  %i.ox = getelementptr inbounds i8, ptr %i.kp, i64 %i.ow ; 7 uses
  %i.oy = xor i64 %indvars.iv372, -1
  %i.oz = add nsw i64 %i.bp, %i.oy
  %i.pa = mul nsw i64 %i.oz, %i.mu
  %i.pb = getelementptr inbounds i8, ptr %i.kw, i64 %i.pa ; 7 uses
  switch i32 %i.kx, label %bb.w [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !60
  store i8 %i.pc, ptr %i.ox, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.t:                                             ; preds = %bb.r
  %i.pd = load i16, ptr %i.pb, align 2, !tbaa !140
  store i16 %i.pd, ptr %i.ox, align 2, !tbaa !140
  br label %copy_elem.exit243

bb.u:                                             ; preds = %bb.r
  %i.pe = load i8, ptr %i.pb, align 1, !tbaa !60
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !60
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !60
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !60
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  store i8 %i.pg, ptr %i.pk, align 1, !tbaa !60
  store i8 %i.pe, ptr %i.ox, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.v:                                             ; preds = %bb.r
  %i.pl = load i32, ptr %i.pb, align 4, !tbaa !54
  store i32 %i.pl, ptr %i.ox, align 4, !tbaa !54
  br label %copy_elem.exit243

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ox, ptr align 1 %i.pb, i64 %i.mu, i1 false)
  br label %copy_elem.exit243

copy_elem.exit243:                                ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count375
  br i1 %exitcond376.not, label %simple_rotate.exit213, label %bb.r, !llvm.loop !111

bb.x:                                             ; preds = %bb.p
  %i.pm = fadd nsz double %i.co, f0xC012D97C7F3321D2
  %i.pn = call nsz double @llvm.fabs.f64(double %i.pm)
  %i.po = fcmp nsz olt double %i.pn, f0x3E80000000000000
  %or.cond208 = select i1 %i.po, i1 %i.av, i1 false
  %or.cond209 = select i1 %or.cond208, i1 %i.aw, i1 false
  br i1 %or.cond209, label %bb.y, label %.preheader276

.preheader276:                                    ; preds = %bb.x
  br i1 %i.ax, label %.lr.ph, label %simple_rotate.exit213

bb.y:                                             ; preds = %bb.x
  %i.pp = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.pq = ptrtoaddr ptr %i.pp to i64
  %i.pr = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.ps = mul i32 %i.pr, %.0192313
  %i.pt = sext i32 %i.ps to i64                   ; 4 uses
  %i.pu = getelementptr i8, ptr %i.pp, i64 %i.pt  ; 25 uses
  %i.pv = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 4 uses
  %i.pw = ptrtoaddr ptr %i.pv to i64
  %i.px = xor i32 %.0192313, -1
  %i.py = add i32 %i.e, %i.px
  %i.pz = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.qa = mul i32 %i.pz, %i.py
  %i.qb = sext i32 %i.qa to i64                   ; 4 uses
  %i.qc = getelementptr i8, ptr %i.pv, i64 %i.qb  ; 39 uses
  %i.qd = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.pz, label %.preheader266 [
    i32 1, label %.preheader268
    i32 2, label %.preheader270
    i32 3, label %.preheader272
    i32 4, label %.preheader274
  ]

.preheader274:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph282.preheader, label %simple_rotate.exit213

.lr.ph282.preheader:                              ; preds = %.preheader274
  %i.qe = sext i32 %i.qd to i64                   ; 5 uses
  %ident.check652.not = icmp eq i32 %i.qd, 1
  %or.cond673 = select i1 %min.iters.check662, i1 %ident.check652.not, i1 false
  br i1 %or.cond673, label %vector.memcheck653, label %.lr.ph282.preheader693

vector.memcheck653:                               ; preds = %.lr.ph282.preheader
  %scevgep654 = getelementptr i8, ptr %i.pp, i64 %i.by
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.pt
  %i.qf = getelementptr i8, ptr %i.pv, i64 %wide.trip.count
  %scevgep656 = getelementptr i8, ptr %i.qf, i64 3
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.qb
  %bound0658 = icmp ult ptr %i.pu, %scevgep657
  %bound1659 = icmp ult ptr %i.qc, %scevgep655
  %found.conflict660 = and i1 %bound0658, %bound1659
  br i1 %found.conflict660, label %.lr.ph282.preheader693, label %vector.body665

vector.body665:                                   ; preds = %vector.memcheck653, %vector.body665
  %index666 = phi i64 [ %index.next667, %vector.body665 ], [ 0, %vector.memcheck653 ] ; 10 uses
  %i.qg = shl nuw nsw i64 %index666, 2
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %i.qc, i64 %index666
  %i.qj = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qk = getelementptr i8, ptr %i.qj, i64 1
  %i.ql = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qm = getelementptr i8, ptr %i.ql, i64 2
  %i.qn = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qo = getelementptr i8, ptr %i.qn, i64 3
  %i.qp = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qq = getelementptr i8, ptr %i.qp, i64 4
  %i.qr = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qs = getelementptr i8, ptr %i.qr, i64 5
  %i.qt = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qu = getelementptr i8, ptr %i.qt, i64 6
  %i.qv = getelementptr i8, ptr %i.qc, i64 %index666
  %i.qw = getelementptr i8, ptr %i.qv, i64 7
  %i.qx = load i32, ptr %i.qi, align 4, !tbaa !54, !alias.scope !153
  %i.qy = load i32, ptr %i.qk, align 4, !tbaa !54, !alias.scope !153
  %i.qz = load i32, ptr %i.qm, align 4, !tbaa !54, !alias.scope !153
  %i.ra = load i32, ptr %i.qo, align 4, !tbaa !54, !alias.scope !153
  %i.rb = insertelement <4 x i32> poison, i32 %i.qx, i64 0
  %i.rc = insertelement <4 x i32> %i.rb, i32 %i.qy, i64 1
  %i.rd = insertelement <4 x i32> %i.rc, i32 %i.qz, i64 2
  %i.re = insertelement <4 x i32> %i.rd, i32 %i.ra, i64 3
  %i.rf = load i32, ptr %i.qq, align 4, !tbaa !54, !alias.scope !153
  %i.rg = load i32, ptr %i.qs, align 4, !tbaa !54, !alias.scope !153
  %i.rh = load i32, ptr %i.qu, align 4, !tbaa !54, !alias.scope !153
  %i.ri = load i32, ptr %i.qw, align 4, !tbaa !54, !alias.scope !153
  %i.rj = insertelement <4 x i32> poison, i32 %i.rf, i64 0
  %i.rk = insertelement <4 x i32> %i.rj, i32 %i.rg, i64 1
  %i.rl = insertelement <4 x i32> %i.rk, i32 %i.rh, i64 2
  %i.rm = insertelement <4 x i32> %i.rl, i32 %i.ri, i64 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store <4 x i32> %i.re, ptr %i.qh, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  store <4 x i32> %i.rm, ptr %i.rn, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  %index.next667 = add nuw i64 %index666, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next667, %n.vec664
  br i1 %i.ro, label %middle.block668, label %vector.body665, !llvm.loop !116

middle.block668:                                  ; preds = %vector.body665
  br i1 %cmp.n669, label %simple_rotate.exit213, label %.lr.ph282.preheader693

.lr.ph282.preheader693:                           ; preds = %vector.memcheck653, %.lr.ph282.preheader, %middle.block668
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck653 ], [ 0, %.lr.ph282.preheader ], [ %n.vec664, %middle.block668 ] ; 3 uses
  %i.rp = sub nsw i64 %i.bz, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol

.lr.ph282.prol:                                   ; preds = %.lr.ph282.preheader693, %.lr.ph282.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph282.prol ], [ %indvars.iv.ph, %.lr.ph282.preheader693 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph282.prol ], [ 0, %.lr.ph282.preheader693 ]
  %i.rq = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.rq
  %i.rs = mul nsw i64 %indvars.iv.prol, %i.qe
  %i.rt = getelementptr inbounds i8, ptr %i.qc, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !54
  store i32 %i.ru, ptr %i.rr, align 4, !tbaa !54
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol, !llvm.loop !117

.lr.ph282.prol.loopexit:                          ; preds = %.lr.ph282.prol, %.lr.ph282.preheader693
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph282.preheader693 ], [ %indvars.iv.next.prol, %.lr.ph282.prol ]
  %i.rv = icmp ult i64 %i.rp, 3
  br i1 %i.rv, label %simple_rotate.exit213, label %.lr.ph282

.preheader272:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph284.preheader, label %simple_rotate.exit213

.lr.ph284.preheader:                              ; preds = %.preheader272
  %i.rw = sext i32 %i.qd to i64                   ; 3 uses
  br i1 %i.ca, label %.lr.ph284.epil.preheader, label %.lr.ph284

.preheader270:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph286.preheader, label %simple_rotate.exit213

.lr.ph286.preheader:                              ; preds = %.preheader270
  %i.rx = sext i32 %i.qd to i64                   ; 5 uses
  %ident.check632.not = icmp eq i32 %i.qd, 1
  %or.cond674 = select i1 %min.iters.check642, i1 %ident.check632.not, i1 false
  br i1 %or.cond674, label %vector.memcheck633, label %.lr.ph286.preheader690

vector.memcheck633:                               ; preds = %.lr.ph286.preheader
  %scevgep634 = getelementptr i8, ptr %i.pp, i64 %i.bx
  %scevgep635 = getelementptr i8, ptr %scevgep634, i64 %i.pt
  %i.ry = getelementptr i8, ptr %i.pv, i64 %wide.trip.count
  %scevgep636 = getelementptr i8, ptr %i.ry, i64 1
end_hunk_1
begin_hunk_2_@filter_slice:bb.a
  br i1 %exitcond331.not.3, label %simple_rotate.exit213, label %.lr.ph282, !llvm.loop !129

bb.z:                                             ; preds = %.lr.ph290, %copy_elem.exit
  %indvars.iv347 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next348, %copy_elem.exit ] ; 3 uses
  %i.xi = mul nsw i64 %indvars.iv347, %i.ug
  %i.xj = getelementptr inbounds i8, ptr %i.pu, i64 %i.xi ; 7 uses
  %i.xk = mul nsw i64 %indvars.iv347, %i.uh
  %i.xl = getelementptr inbounds i8, ptr %i.qc, i64 %i.xk ; 7 uses
  switch i32 %i.pz, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !60
  store i8 %i.xm, ptr %i.xj, align 1, !tbaa !60
  br label %copy_elem.exit

bb.ab:                                            ; preds = %bb.z
  %i.xn = load i16, ptr %i.xl, align 2, !tbaa !140
  store i16 %i.xn, ptr %i.xj, align 2, !tbaa !140
  br label %copy_elem.exit

bb.ac:                                            ; preds = %bb.z
  %i.xo = load i8, ptr %i.xl, align 1, !tbaa !60
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !60
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !60
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xj, i64 2
  store i8 %i.xs, ptr %i.xt, align 1, !tbaa !60
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xj, i64 1
  store i8 %i.xq, ptr %i.xu, align 1, !tbaa !60
  store i8 %i.xo, ptr %i.xj, align 1, !tbaa !60
  br label %copy_elem.exit

bb.ad:                                            ; preds = %bb.z
  %i.xv = load i32, ptr %i.xl, align 4, !tbaa !54
  store i32 %i.xv, ptr %i.xj, align 4, !tbaa !54
  br label %copy_elem.exit

bb.ae:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xj, ptr align 1 %i.xl, i64 %i.ug, i1 false)
  br label %copy_elem.exit

copy_elem.exit:                                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %simple_rotate.exit213, label %bb.z, !llvm.loop !128

.lr.ph:                                           ; preds = %.preheader276, %bb.aq
  %.0190280 = phi i32 [ %i.zm, %bb.aq ], [ %i.cn, %.preheader276 ] ; 3 uses
  %.0191279 = phi i32 [ %i.zl, %bb.aq ], [ %i.cm, %.preheader276 ] ; 3 uses
  %.0193278 = phi i32 [ %i.zn, %bb.aq ], [ 0, %.preheader276 ] ; 2 uses
  %i.xw = ashr i32 %.0191279, 16                  ; 4 uses
  %i.xx = ashr i32 %.0190280, 16                  ; 4 uses
  %i.xy = icmp sgt i32 %i.xw, -2
  br i1 %i.xy, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %.lr.ph
  %i.xz = icmp sgt i32 %i.xw, %i.g
  %i.ya = icmp slt i32 %i.xx, -1
  %or.cond.not247 = select i1 %i.xz, i1 true, i1 %i.ya
  %.not = icmp sgt i32 %i.xx, %i.i
  %or.cond210 = select i1 %or.cond.not247, i1 true, i1 %.not
  br i1 %or.cond210, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.yb = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.yc = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.yd = mul nsw i32 %i.yc, %.0192313
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds i8, ptr %i.yb, i64 %i.ye
  %i.yg = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.yh = mul nsw i32 %i.yg, %.0193278
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds i8, ptr %i.yf, i64 %i.yi ; 7 uses
  %i.yk = load i32, ptr %i.be, align 8, !tbaa !158
  %.not201 = icmp eq i32 %i.yk, 0
  br i1 %.not201, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.yl = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.ym = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.yn = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.yo = call ptr %i.yl(ptr noundef nonnull %i.a, ptr noundef %i.ym, i32 noundef %i.yn, i32 noundef %i.yg, i32 noundef %.0191279, i32 noundef %.0190280, i32 noundef %i.am, i32 noundef %i.ap) #12
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !54
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.yp = icmp eq i32 %i.xw, -1
  %..i214 = call i32 @llvm.smin.i32(i32 %i.xw, i32 %i.am)
  %.0.i215 = select i1 %i.yp, i32 0, i32 %..i214
  %i.yq = icmp slt i32 %i.xx, 0
  %..i = call i32 @llvm.smin.i32(i32 %i.xx, i32 %i.ap)
  %.0.i = select i1 %i.yq, i32 0, i32 %..i
  %i.yr = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.ys = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.yt = mul nsw i32 %i.ys, %.0.i
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds i8, ptr %i.yr, i64 %i.yu
  %i.yw = mul nsw i32 %i.yg, %.0.i215
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds i8, ptr %i.yv, i64 %i.yx
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.yz = phi i32 [ %.pre, %bb.ah ], [ %i.yg, %bb.ai ] ; 2 uses
  %.0 = phi ptr [ %i.yo, %bb.ah ], [ %i.yy, %bb.ai ] ; 7 uses
  switch i32 %i.yz, label %bb.ao [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.za = load i8, ptr %.0, align 1, !tbaa !60
  store i8 %i.za, ptr %i.yj, align 1, !tbaa !60
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.zb = load i16, ptr %.0, align 1, !tbaa !60
  store i16 %i.zb, ptr %i.yj, align 1, !tbaa !60
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.zc = load i8, ptr %.0, align 1, !tbaa !60
  %i.zd = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !60
  %i.zf = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !60
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yj, i64 2
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !60
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  store i8 %i.ze, ptr %i.zi, align 1, !tbaa !60
  store i8 %i.zc, ptr %i.yj, align 1, !tbaa !60
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.zj = load i32, ptr %.0, align 4, !tbaa !54
  store i32 %i.zj, ptr %i.yj, align 4, !tbaa !54
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.zk = sext i32 %i.yz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yj, ptr align 1 %.0, i64 %i.zk, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af, %.lr.ph
  %i.zl = add nsw i32 %.0191279, %i.k
  %i.zm = sub nsw i32 %.0190280, %i.m
  %i.zn = add nuw nsw i32 %.0193278, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zn, %i.c
  br i1 %exitcond.not, label %simple_rotate.exit213, label %.lr.ph, !llvm.loop !130

simple_rotate.exit213.sink.split:                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i64 [ %i.dd, %bb.g ], [ %i.bk, %bb.f ], [ %i.bm, %bb.e ], [ %i.bo, %bb.d ], [ %i.bp, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.da, i64 %.sink, i1 false)
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit679.unr-lcssa:      ; preds = %.lr.ph304
  br i1 %lcmp.mod723.not, label %simple_rotate.exit213, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit679.unr-lcssa, %.lr.ph304.preheader
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %indvars.iv.next383.1, %simple_rotate.exit213.loopexit679.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod724)
  %i.zo = mul nuw nsw i64 %indvars.iv382.epil.init, 3
  %i.zp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.zo ; 3 uses
  %i.zq = xor i64 %indvars.iv382.epil.init, -1
  %i.zr = add nsw i64 %i.bp, %i.zq
  %i.zs = mul nsw i64 %i.zr, %i.et
  %i.zt = getelementptr inbounds i8, ptr %i.dq, i64 %i.zs ; 3 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !60
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 1
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !60
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 2
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !60
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zp, i64 2
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !60
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zp, i64 1
  store i8 %i.zw, ptr %i.aaa, align 1, !tbaa !60
  store i8 %i.zu, ptr %i.zp, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit685.unr-lcssa:      ; preds = %.lr.ph294
  br i1 %lcmp.mod709.not, label %simple_rotate.exit213, label %.lr.ph294.epil.preheader

.lr.ph294.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit685.unr-lcssa, %.lr.ph294.preheader
  %indvars.iv357.epil.init = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next358.1, %simple_rotate.exit213.loopexit685.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod710)
  %i.aab = mul nuw nsw i64 %indvars.iv357.epil.init, 3
  %i.aac = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.aab ; 3 uses
  %38 = xor i64 %indvars.iv357.epil.init, -1
  %39 = add nsw i64 %i.bp, %38
  %40 = mul nsw i64 %39, 3
  %i.aad = getelementptr inbounds i8, ptr %i.kw, i64 %40 ; 3 uses
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !60
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 1
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !60
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !60
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aac, i64 2
  store i8 %i.aai, ptr %i.aaj, align 1, !tbaa !60
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aac, i64 1
  store i8 %i.aag, ptr %i.aak, align 1, !tbaa !60
  store i8 %i.aae, ptr %i.aac, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit692.unr-lcssa:      ; preds = %.lr.ph284
  br i1 %lcmp.mod697.not, label %simple_rotate.exit213, label %.lr.ph284.epil.preheader

.lr.ph284.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit692.unr-lcssa, %.lr.ph284.preheader
  %indvars.iv332.epil.init = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next333.1, %simple_rotate.exit213.loopexit692.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod698)
  %i.aal = mul nuw nsw i64 %indvars.iv332.epil.init, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.aal ; 3 uses
  %i.aan = mul nsw i64 %indvars.iv332.epil.init, %i.rw
  %i.aao = getelementptr inbounds i8, ptr %i.qc, i64 %i.aan ; 3 uses
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !60
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 1
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !60
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !60
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 2
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !60
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aam, i64 1
  store i8 %i.aar, ptr %i.aav, align 1, !tbaa !60
  store i8 %i.aap, ptr %i.aam, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213:                            ; preds = %bb.aq, %.lr.ph282.prol.loopexit, %.lr.ph282, %.lr.ph284.epil.preheader, %simple_rotate.exit213.loopexit692.unr-lcssa, %.lr.ph286.prol.loopexit, %.lr.ph286, %.lr.ph288.prol.loopexit, %.lr.ph288, %copy_elem.exit, %.lr.ph292.prol.loopexit, %.lr.ph292, %.lr.ph294.epil.preheader, %simple_rotate.exit213.loopexit685.unr-lcssa, %.lr.ph296.prol.loopexit, %.lr.ph296, %.lr.ph298.prol.loopexit, %.lr.ph298, %copy_elem.exit243, %.lr.ph302.prol.loopexit, %.lr.ph302, %.lr.ph304.epil.preheader, %simple_rotate.exit213.loopexit679.unr-lcssa, %.lr.ph306.prol.loopexit, %.lr.ph306, %.lr.ph308.prol.loopexit, %.lr.ph308, %copy_elem.exit244, %middle.block668, %middle.block648, %middle.block615, %vec.epilog.middle.block628, %middle.block598, %middle.block560, %vec.epilog.middle.block574, %middle.block520, %vec.epilog.middle.block534, %middle.block496, %middle.block474, %middle.block, %vec.epilog.middle.block, %simple_rotate.exit213.sink.split, %.preheader276, %.preheader274, %.preheader272, %.preheader270, %.preheader268, %.preheader266, %.preheader264, %.preheader262, %.preheader260, %.preheader258, %.preheader256, %.preheader254, %.preheader252, %.preheader250, %.preheader248, %.preheader
  %i.aaw = add nsw i32 %.0195311, %i.m
  %i.aax = add nsw i32 %.0194312, %i.k
  %i.aay = add i32 %.0192313, 1                   ; 2 uses
  %exitcond402.not = icmp eq i32 %i.aay, %i.r
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 26 uses
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
  store i32 %i.r, ptr %i.s, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !164
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.v, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !166
  %i.z = icmp eq i32 %i.y, 8
  %spec.select = select i1 %i.z, ptr @interpolate_bilinear8, ptr @interpolate_bilinear16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr %spec.select, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.af = load <2 x i32>, ptr %i.ab, align 8, !tbaa !54
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>  ; 3 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  store double %i.ah, ptr %i.ac, align 8, !tbaa !41
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  store double %i.ai, ptr %i.ae, align 8, !tbaa !41
  store <2 x double> %i.ag, ptr %i.ad, align 8, !tbaa !41
  %i.aj = shl nuw i32 1, %i.r
  %i.ak = sitofp nsz i32 %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.ak, ptr %i.al, align 8, !tbaa !41
  %i.am = shl nuw i32 1, %i.v
  %i.an = sitofp nsz i32 %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store double %i.an, ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store <2 x double> splat (double +qnan), ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.av) #12
  store ptr null, ptr %i.au, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !167
  %i.ay = tail call i32 @av_expr_parse(ptr noundef nonnull %i.au, ptr noundef %i.ax, ptr noundef nonnull @var_names, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !167
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.ba) #12
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !168
  %i.bd = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bc, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.be = load double, ptr %i.a, align 8, !tbaa !41 ; 3 uses
  store double %i.be, ptr %i.aq, align 8, !tbaa !41
  store double %i.be, ptr %i.ar, align 8, !tbaa !41
  %i.bf = fadd nsz double %i.be, 5.000000e-01
  %i.bg = fptosi double %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !169
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !170 ; 2 uses
  %i.bk = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bj, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %.pre84 = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bm = fcmp uno double %.pre84, 0.000000e+00
  %or.cond87 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond = call i1 @llvm.is.fpclass.f64(double %.pre84, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %i.bj, double noundef %.pre84) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  store double %.pre84, ptr %i.as, align 8, !tbaa !41
  store double %.pre84, ptr %i.at, align 8, !tbaa !41
  %i.bn = fadd nsz double %.pre84, 5.000000e-01
  %i.bo = fptosi double %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !171
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 2 uses
  %i.br = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bq, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  %.pre = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bt = fcmp uno double %.pre, 0.000000e+00
  %or.cond88 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond3 = call i1 @llvm.is.fpclass.f64(double %.pre, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %i.bq, double noundef %.pre) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store double %.pre, ptr %i.aq, align 8, !tbaa !41
  store double %.pre, ptr %i.ar, align 8, !tbaa !41
  %i.bu = fadd nsz double %.pre, 5.000000e-01
  %i.bv = fptosi double %i.bu to i32
  store i32 %i.bv, ptr %i.bh, align 4, !tbaa !169
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !161
  %i.bx = call i32 @av_pix_fmt_count_planes(i32 noundef %i.bw) #12
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 84
end_hunk_2

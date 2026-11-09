Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_rotate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@filter_frame:bb.a
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
  %4 = sub nsw i64 %i.bp, %wide.trip.count        ; 4 uses
  %5 = shl nuw nsw i64 %wide.trip.count, 1        ; 3 uses
  %6 = shl nuw nsw i64 %wide.trip.count, 2        ; 3 uses
  %i.bq = shl nsw i64 %i.bp, 1                    ; 2 uses
  %7 = sub nsw i64 %i.bq, %5
  %i.br = shl nsw i64 %i.bp, 2                    ; 2 uses
  %8 = sub nsw i64 %i.br, %6
  %i.bs = shl nuw nsw i64 %wide.trip.count, 1
  %i.bt = shl nuw nsw i64 %wide.trip.count, 2
  %i.bu = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check680 = icmp ugt i32 %i.c, 7
  %n.vec686 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n691 = icmp eq i64 %n.vec686, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter718 = and i64 %wide.trip.count, 1
  %i.bv = icmp eq i64 %i.bu, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod719.not = icmp eq i64 %xtraiter718, 0
  %lcmp.mod720 = trunc i32 %i.c to i1
  %min.iters.check657 = icmp ugt i32 %i.c, 7
  %n.vec663 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n668 = icmp eq i64 %n.vec663, %wide.trip.count
  %xtraiter721 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  %min.iters.check620 = icmp ugt i32 %i.c, 3
  %min.iters.check623 = icmp ult i32 %i.c, 32
  %i.bw = and i64 %wide.trip.count, 28
  %n.vec625 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n632 = icmp eq i64 %n.vec625, %wide.trip.count
  %min.epilog.iters.check636 = icmp eq i64 %i.bw, 0
  %n.vec639 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n645 = icmp eq i64 %n.vec639, %wide.trip.count
  %xtraiter724 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  %min.iters.check599 = icmp ult i32 %i.c, 8
  %n.vec605 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n614 = icmp eq i64 %n.vec605, %wide.trip.count
  %xtraiter727 = and i64 %wide.trip.count, 1
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  %i.bx = add nsw i64 %wide.trip.count, -1
  %xtraiter730 = and i64 %wide.trip.count, 1
  %i.by = icmp eq i64 %i.bu, 0
  %unroll_iter733 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  %lcmp.mod732 = trunc i32 %i.c to i1
  %min.iters.check556 = icmp ult i32 %i.c, 4
  %min.iters.check562 = icmp ult i32 %i.c, 16
  %i.bz = and i64 %wide.trip.count, 12
  %n.vec564 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n573 = icmp eq i64 %n.vec564, %wide.trip.count
  %min.epilog.iters.check577 = icmp eq i64 %i.bz, 0
  %n.vec580 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec580, %wide.trip.count
  %xtraiter735 = and i64 %wide.trip.count, 1
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  %i.ca = add nsw i64 %wide.trip.count, -1
  %min.iters.check513 = icmp ult i32 %i.c, 8
  %min.iters.check519 = icmp ult i32 %i.c, 32
  %i.cb = and i64 %wide.trip.count, 24
  %n.vec521 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n530 = icmp eq i64 %n.vec521, %wide.trip.count
  %min.epilog.iters.check534 = icmp eq i64 %i.cb, 0
  %n.vec537 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n544 = icmp eq i64 %n.vec537, %wide.trip.count
  %xtraiter738 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  %min.iters.check492 = icmp ugt i32 %i.c, 3
  %n.vec498 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n503 = icmp eq i64 %n.vec498, %wide.trip.count
  %xtraiter741 = and i64 %wide.trip.count, 1
  %lcmp.mod742.not = icmp eq i64 %xtraiter741, 0
  %i.cc = add nsw i64 %wide.trip.count, -1
  %xtraiter744 = and i64 %wide.trip.count, 1
  %i.cd = icmp eq i64 %i.bu, 0
  %unroll_iter747 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  %lcmp.mod746 = trunc i32 %i.c to i1
  %min.iters.check467 = icmp ugt i32 %i.c, 7
  %n.vec473 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n478 = icmp eq i64 %n.vec473, %wide.trip.count
  %xtraiter749 = and i64 %wide.trip.count, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.ce = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ugt i32 %i.c, 7
  %min.iters.check447 = icmp ult i32 %i.c, 32
  %i.cf = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  %n.vec450 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n455 = icmp eq i64 %n.vec450, %wide.trip.count
  %xtraiter752 = and i64 %wide.trip.count, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  %i.cg = add nsw i64 %wide.trip.count, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph314, %simple_rotate.exit213
  %.0192313 = phi i32 [ %i.o, %.lr.ph314 ], [ %i.adj, %simple_rotate.exit213 ] ; 10 uses
  %.0194312 = phi i32 [ %i.w, %.lr.ph314 ], [ %i.adi, %simple_rotate.exit213 ] ; 2 uses
  %.0195311 = phi i32 [ %i.aa, %.lr.ph314 ], [ %i.adh, %simple_rotate.exit213 ] ; 2 uses
  %i.ch = add i32 %i.ao, %.0195311
  %i.ci = add i32 %i.ar, %.0194312
  %i.cj = load double, ptr %i.as, align 8, !tbaa !42 ; 4 uses
  %i.ck = call nsz double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp nsz olt double %i.ck, f0x3E80000000000000
  %or.cond202 = select i1 %i.cl, i1 %i.at, i1 false
  %or.cond203 = select i1 %or.cond202, i1 %i.au, i1 false
  br i1 %or.cond203, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.cm = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.co = mul nsw i32 %i.cn, %.0192313
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.ct = mul nsw i32 %i.cs, %.0192313
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = load i32, ptr %i.bd, align 4, !tbaa !54 ; 2 uses
  switch i32 %i.cw, label %bb.g [
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
  %i.cx = mul nsw i32 %i.cw, %i.c
  %i.cy = sext i32 %i.cx to i64
  br label %simple_rotate.exit213.sink.split

bb.h:                                             ; preds = %bb.b
  %i.cz = fadd nsz double %i.cj, f0xBFF921FB54442D18
  %i.da = call nsz double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp nsz olt double %i.da, f0x3E80000000000000
  %or.cond204 = select i1 %i.db, i1 %i.av, i1 false
  %or.cond205 = select i1 %or.cond204, i1 %i.aw, i1 false
  br i1 %or.cond205, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dc = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.dd = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.de = mul i32 %i.dd, %.0192313
  %i.df = sext i32 %i.de to i64                   ; 4 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 %i.df  ; 20 uses
  %i.dh = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 7 uses
  %i.di = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.dj = mul i32 %i.di, %.0192313
  %i.dk = sext i32 %i.dj to i64                   ; 7 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk ; 27 uses
  %i.dm = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.di, label %.preheader [
    i32 1, label %.preheader248
    i32 2, label %.preheader250
    i32 3, label %.preheader252
    i32 4, label %.preheader254
  ]

.preheader254:                                    ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph302.preheader, label %simple_rotate.exit213

.lr.ph302.preheader:                              ; preds = %.preheader254
  %i.dn = sext i32 %i.dm to i64                   ; 3 uses
  %ident.check481.not = icmp eq i32 %i.dm, 1
  %or.cond = select i1 %min.iters.check492, i1 %ident.check481.not, i1 false
  br i1 %or.cond, label %vector.memcheck493, label %.lr.ph302.preheader702

vector.memcheck493:                               ; preds = %.lr.ph302.preheader
  %i.do = getelementptr i8, ptr %i.dc, i64 %6
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.df
  %9 = getelementptr i8, ptr %i.dh, i64 %4
  %10 = getelementptr i8, ptr %9, i64 %i.dk
  %i.dq = getelementptr i8, ptr %i.dh, i64 %i.bp
  %i.dr = getelementptr i8, ptr %i.dq, i64 3
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dk
  %bound0494 = icmp ult ptr %i.dg, %i.ds
  %bound1495 = icmp ult ptr %10, %i.dp
  %found.conflict496 = and i1 %bound0494, %bound1495
  br i1 %found.conflict496, label %.lr.ph302.preheader702, label %vector.ph497

vector.ph497:                                     ; preds = %vector.memcheck493
  %i.dt = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep759 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep761 = getelementptr i8, ptr %i.dl, i64 %i.bp
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph497
  %index500 = phi i64 [ 0, %vector.ph497 ], [ %index.next501, %vector.body499 ] ; 6 uses
  %i.du = shl nuw nsw i64 %index500, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.du
  %i.dw = xor i64 %index500, -1
  %i.dx = xor i64 %index500, -2
  %i.dy = xor i64 %index500, -3
  %i.dz = xor i64 %index500, -4
  %i.ea = getelementptr i8, ptr %i.dt, i64 %i.dw
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dx
  %gep760 = getelementptr i8, ptr %invariant.gep759, i64 %i.dy
  %gep762 = getelementptr i8, ptr %invariant.gep761, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !54, !alias.scope !137
  %i.ec = load i32, ptr %gep, align 4, !tbaa !54, !alias.scope !137
  %i.ed = load i32, ptr %gep760, align 4, !tbaa !54, !alias.scope !137
  %i.ee = load i32, ptr %gep762, align 4, !tbaa !54, !alias.scope !137
  %i.ef = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %i.eg = insertelement <4 x i32> %i.ef, i32 %i.ec, i64 1
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ed, i64 2
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ee, i64 3
  store <4 x i32> %i.ei, ptr %i.dv, align 4, !tbaa !54, !alias.scope !138, !noalias !137
  %index.next501 = add nuw i64 %index500, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next501, %n.vec498
  br i1 %i.ej, label %middle.block502, label %vector.body499, !llvm.loop !80

middle.block502:                                  ; preds = %vector.body499
  br i1 %cmp.n503, label %simple_rotate.exit213, label %.lr.ph302.preheader702

.lr.ph302.preheader702:                           ; preds = %vector.memcheck493, %.lr.ph302.preheader, %middle.block502
  %indvars.iv377.ph = phi i64 [ 0, %vector.memcheck493 ], [ 0, %.lr.ph302.preheader ], [ %n.vec498, %middle.block502 ] ; 5 uses
  br i1 %lcmp.mod742.not, label %.lr.ph302.prol.loopexit, label %.lr.ph302.prol

.lr.ph302.prol:                                   ; preds = %.lr.ph302.preheader702
  %i.ek = shl nuw nsw i64 %indvars.iv377.ph, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ek
  %i.em = xor i64 %indvars.iv377.ph, -1
  %i.en = add nsw i64 %i.bp, %i.em
  %i.eo = mul nsw i64 %i.en, %i.dn
  %i.ep = getelementptr inbounds i8, ptr %i.dl, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !54
  store i32 %i.eq, ptr %i.el, align 4, !tbaa !54
  %indvars.iv.next378.prol = or disjoint i64 %indvars.iv377.ph, 1
  br label %.lr.ph302.prol.loopexit

.lr.ph302.prol.loopexit:                          ; preds = %.lr.ph302.prol, %.lr.ph302.preheader702
  %indvars.iv377.unr = phi i64 [ %indvars.iv377.ph, %.lr.ph302.preheader702 ], [ %indvars.iv.next378.prol, %.lr.ph302.prol ]
  %i.er = icmp eq i64 %indvars.iv377.ph, %i.cc
  br i1 %i.er, label %simple_rotate.exit213, label %.lr.ph302

.preheader252:                                    ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph304.preheader, label %simple_rotate.exit213

.lr.ph304.preheader:                              ; preds = %.preheader252
  %i.es = sext i32 %i.dm to i64                   ; 3 uses
  br i1 %i.cd, label %.lr.ph304.epil.preheader, label %.lr.ph304

.preheader250:                                    ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph306.preheader, label %simple_rotate.exit213

.lr.ph306.preheader:                              ; preds = %.preheader250
  %i.et = sext i32 %i.dm to i64                   ; 3 uses
  %ident.check457.not = icmp eq i32 %i.dm, 1
  %or.cond693 = select i1 %min.iters.check467, i1 %ident.check457.not, i1 false
  br i1 %or.cond693, label %vector.memcheck468, label %.lr.ph306.preheader699

vector.memcheck468:                               ; preds = %.lr.ph306.preheader
  %i.eu = getelementptr i8, ptr %i.dc, i64 %5
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.df
  %11 = getelementptr i8, ptr %i.dh, i64 %4
  %12 = getelementptr i8, ptr %11, i64 %i.dk
  %i.ew = getelementptr i8, ptr %i.dh, i64 %i.bp
  %i.ex = getelementptr i8, ptr %i.ew, i64 1
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.dk
  %bound0469 = icmp ult ptr %i.dg, %i.ey
  %bound1470 = icmp ult ptr %12, %i.ev
  %found.conflict471 = and i1 %bound0469, %bound1470
  br i1 %found.conflict471, label %.lr.ph306.preheader699, label %vector.ph472

vector.ph472:                                     ; preds = %vector.memcheck468
  %i.ez = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep763 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep765 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep767 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep769 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep771 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep773 = getelementptr i8, ptr %i.dl, i64 %i.bp
  %invariant.gep775 = getelementptr i8, ptr %i.dl, i64 %i.bp
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next476, %vector.body474 ] ; 10 uses
  %i.fa = shl nuw nsw i64 %index475, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.fa
  %i.fc = xor i64 %index475, -1
  %i.fd = xor i64 %index475, -2
  %i.fe = xor i64 %index475, -3
  %i.ff = xor i64 %index475, -4
  %i.fg = xor i64 %index475, -5
  %i.fh = xor i64 %index475, -6
  %i.fi = xor i64 %index475, -7
  %i.fj = xor i64 %index475, -8
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.fc
  %gep764 = getelementptr i8, ptr %invariant.gep763, i64 %i.fd
  %gep766 = getelementptr i8, ptr %invariant.gep765, i64 %i.fe
  %gep768 = getelementptr i8, ptr %invariant.gep767, i64 %i.ff
  %gep770 = getelementptr i8, ptr %invariant.gep769, i64 %i.fg
  %gep772 = getelementptr i8, ptr %invariant.gep771, i64 %i.fh
  %gep774 = getelementptr i8, ptr %invariant.gep773, i64 %i.fi
  %gep776 = getelementptr i8, ptr %invariant.gep775, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !140, !alias.scope !141
  %i.fm = load i16, ptr %gep764, align 2, !tbaa !140, !alias.scope !141
  %i.fn = load i16, ptr %gep766, align 2, !tbaa !140, !alias.scope !141
  %i.fo = load i16, ptr %gep768, align 2, !tbaa !140, !alias.scope !141
  %i.fp = load i16, ptr %gep770, align 2, !tbaa !140, !alias.scope !141
  %i.fq = load i16, ptr %gep772, align 2, !tbaa !140, !alias.scope !141
  %i.fr = load i16, ptr %gep774, align 2, !tbaa !140, !alias.scope !141
  %i.fs = load i16, ptr %gep776, align 2, !tbaa !140, !alias.scope !141
  %i.ft = insertelement <8 x i16> poison, i16 %i.fl, i64 0
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 1
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 2
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fo, i64 3
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fp, i64 4
  %i.fy = insertelement <8 x i16> %i.fx, i16 %i.fq, i64 5
  %i.fz = insertelement <8 x i16> %i.fy, i16 %i.fr, i64 6
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 7
  store <8 x i16> %i.ga, ptr %i.fb, align 2, !tbaa !140, !alias.scope !142, !noalias !141
  %index.next476 = add nuw i64 %index475, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next476, %n.vec473
  br i1 %i.gb, label %middle.block477, label %vector.body474, !llvm.loop !84

middle.block477:                                  ; preds = %vector.body474
  br i1 %cmp.n478, label %simple_rotate.exit213, label %.lr.ph306.preheader699

.lr.ph306.preheader699:                           ; preds = %vector.memcheck468, %.lr.ph306.preheader, %middle.block477
  %indvars.iv387.ph = phi i64 [ 0, %vector.memcheck468 ], [ 0, %.lr.ph306.preheader ], [ %n.vec473, %middle.block477 ] ; 5 uses
  br i1 %lcmp.mod750.not, label %.lr.ph306.prol.loopexit, label %.lr.ph306.prol

.lr.ph306.prol:                                   ; preds = %.lr.ph306.preheader699
  %i.gc = shl nuw nsw i64 %indvars.iv387.ph, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.gc
  %i.ge = xor i64 %indvars.iv387.ph, -1
  %i.gf = add nsw i64 %i.bp, %i.ge
  %i.gg = mul nsw i64 %i.gf, %i.et
  %i.gh = getelementptr inbounds i8, ptr %i.dl, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !140
  store i16 %i.gi, ptr %i.gd, align 2, !tbaa !140
  %indvars.iv.next388.prol = or disjoint i64 %indvars.iv387.ph, 1
  br label %.lr.ph306.prol.loopexit

.lr.ph306.prol.loopexit:                          ; preds = %.lr.ph306.prol, %.lr.ph306.preheader699
  %indvars.iv387.unr = phi i64 [ %indvars.iv387.ph, %.lr.ph306.preheader699 ], [ %indvars.iv.next388.prol, %.lr.ph306.prol ]
  %i.gj = icmp eq i64 %indvars.iv387.ph, %i.ce
  br i1 %i.gj, label %simple_rotate.exit213, label %.lr.ph306

.preheader248:                                    ; preds = %bb.i
  br i1 %i.ax, label %iter.check, label %simple_rotate.exit213

iter.check:                                       ; preds = %.preheader248
  %i.gk = sext i32 %i.dm to i64                   ; 3 uses
  %ident.check.not = icmp eq i32 %i.dm, 1
  %or.cond694 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond694, label %vector.memcheck, label %.lr.ph308.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.gl = getelementptr i8, ptr %i.dc, i64 %i.df
  %i.gm = getelementptr i8, ptr %i.gl, i64 %wide.trip.count
  %13 = getelementptr i8, ptr %i.dh, i64 %4
  %14 = getelementptr i8, ptr %13, i64 %i.dk
  %i.gn = getelementptr i8, ptr %i.dh, i64 %i.bp
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.dk
  %bound0 = icmp ult ptr %i.dg, %i.go
  %bound1 = icmp ult ptr %14, %i.gm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph308.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check447, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gp = getelementptr i8, ptr %i.dl, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index ; 2 uses
  %i.gr = xor i64 %index, -1
  %i.gs = getelementptr i8, ptr %i.gp, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -15
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -31
  %wide.load = load <16 x i8>, ptr %i.gt, align 1, !tbaa !60, !alias.scope !143
  %wide.load448 = load <16 x i8>, ptr %i.gu, align 1, !tbaa !60, !alias.scope !143
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse449 = shufflevector <16 x i8> %wide.load448, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <16 x i8> %reverse, ptr %i.gq, align 1, !tbaa !60, !alias.scope !144, !noalias !143
  store <16 x i8> %reverse449, ptr %i.gv, align 1, !tbaa !60, !alias.scope !144, !noalias !143
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %simple_rotate.exit213, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph308.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gx = getelementptr i8, ptr %i.dl, i64 %i.bp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index451 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next454, %vec.epilog.vector.body ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index451
  %i.gz = xor i64 %index451, -1
  %i.ha = getelementptr i8, ptr %i.gx, i64 %i.gz
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -7
  %wide.load452 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !60, !alias.scope !143
  %reverse453 = shufflevector <8 x i8> %wide.load452, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse453, ptr %i.gy, align 1, !tbaa !60, !alias.scope !144, !noalias !143
  %index.next454 = add nuw i64 %index451, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next454, %n.vec450
  br i1 %i.hc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n455, label %simple_rotate.exit213, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv392.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec450, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod753.not, label %.lr.ph308.prol.loopexit, label %.lr.ph308.prol

.lr.ph308.prol:                                   ; preds = %.lr.ph308.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv392.ph
  %i.he = xor i64 %indvars.iv392.ph, -1
  %i.hf = add nsw i64 %i.bp, %i.he
  %i.hg = mul nsw i64 %i.hf, %i.gk
  %i.hh = getelementptr inbounds i8, ptr %i.dl, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !60
  store i8 %i.hi, ptr %i.hd, align 1, !tbaa !60
  %indvars.iv.next393.prol = or disjoint i64 %indvars.iv392.ph, 1
  br label %.lr.ph308.prol.loopexit

.lr.ph308.prol.loopexit:                          ; preds = %.lr.ph308.prol, %.lr.ph308.preheader
  %indvars.iv392.unr = phi i64 [ %indvars.iv392.ph, %.lr.ph308.preheader ], [ %indvars.iv.next393.prol, %.lr.ph308.prol ]
  %i.hj = icmp eq i64 %indvars.iv392.ph, %i.cg
  br i1 %i.hj, label %simple_rotate.exit213, label %.lr.ph308

.preheader:                                       ; preds = %bb.i
  br i1 %i.ax, label %.lr.ph310, label %simple_rotate.exit213

.lr.ph310:                                        ; preds = %.preheader
  %i.hk = sext i32 %i.di to i64                   ; 2 uses
  %i.hl = sext i32 %i.dm to i64
  br label %bb.j

.lr.ph308:                                        ; preds = %.lr.ph308.prol.loopexit, %.lr.ph308
  %indvars.iv392 = phi i64 [ %indvars.iv.next393.1, %.lr.ph308 ], [ %indvars.iv392.unr, %.lr.ph308.prol.loopexit ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv392
  %i.hn = xor i64 %indvars.iv392, -1
  %i.ho = add nsw i64 %i.bp, %i.hn
  %i.hp = mul nsw i64 %i.ho, %i.gk
  %i.hq = getelementptr inbounds i8, ptr %i.dl, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !60
  store i8 %i.hr, ptr %i.hm, align 1, !tbaa !60
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv392
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %reass.sub758 = sub i64 %i.bp, %indvars.iv392
  %i.hu = add i64 %reass.sub758, -2
  %i.hv = mul nsw i64 %i.hu, %i.gk
  %i.hw = getelementptr inbounds i8, ptr %i.dl, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !60
  store i8 %i.hx, ptr %i.ht, align 1, !tbaa !60
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %exitcond396.not.1 = icmp eq i64 %indvars.iv.next393.1, %wide.trip.count395
  br i1 %exitcond396.not.1, label %simple_rotate.exit213, label %.lr.ph308, !llvm.loop !90

.lr.ph306:                                        ; preds = %.lr.ph306.prol.loopexit, %.lr.ph306
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %.lr.ph306 ], [ %indvars.iv387.unr, %.lr.ph306.prol.loopexit ] ; 5 uses
  %i.hy = shl nuw nsw i64 %indvars.iv387, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.hy
  %i.ia = xor i64 %indvars.iv387, -1
  %i.ib = add nsw i64 %i.bp, %i.ia
  %i.ic = mul nsw i64 %i.ib, %i.et
  %i.id = getelementptr inbounds i8, ptr %i.dl, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !140
  store i16 %i.ie, ptr %i.hz, align 2, !tbaa !140
  %indvars.iv.next388 = shl i64 %indvars.iv387, 1
  %i.if = getelementptr i8, ptr %i.dg, i64 %indvars.iv.next388
  %i.ig = getelementptr i8, ptr %i.if, i64 2
  %reass.sub757 = sub i64 %i.bp, %indvars.iv387
  %i.ih = add i64 %reass.sub757, -2
  %i.ii = mul nsw i64 %i.ih, %i.et
  %i.ij = getelementptr inbounds i8, ptr %i.dl, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !140
  store i16 %i.ik, ptr %i.ig, align 2, !tbaa !140
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %wide.trip.count390
  br i1 %exitcond391.not.1, label %simple_rotate.exit213, label %.lr.ph306, !llvm.loop !91

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ] ; 5 uses
  %niter748 = phi i64 [ %niter748.next.1, %.lr.ph304 ], [ 0, %.lr.ph304.preheader ]
  %i.il = mul nuw nsw i64 %indvars.iv382, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.il ; 3 uses
  %i.in = xor i64 %indvars.iv382, -1
  %i.io = add nsw i64 %i.bp, %i.in
  %i.ip = mul nsw i64 %i.io, %i.es
  %i.iq = getelementptr inbounds i8, ptr %i.dl, i64 %i.ip ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !60
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !60
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !60
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !60
  %i.ix = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  store i8 %i.it, ptr %i.ix, align 1, !tbaa !60
  store i8 %i.ir, ptr %i.im, align 1, !tbaa !60
  %i.iy = mul nuw i64 %indvars.iv382, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.iy ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %i.jb = xor i64 %indvars.iv382, -2
  %i.jc = add nsw i64 %i.jb, %i.bp
  %i.jd = mul nsw i64 %i.jc, %i.es
  %i.je = getelementptr inbounds i8, ptr %i.dl, i64 %i.jd ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !60
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !60
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !60
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 5
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !60
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store i8 %i.jh, ptr %i.jl, align 1, !tbaa !60
  store i8 %i.jf, ptr %i.ja, align 1, !tbaa !60
  %indvars.iv.next383.1 = add nuw nsw i64 %indvars.iv382, 2 ; 2 uses
  %niter748.next.1 = add i64 %niter748, 2         ; 2 uses
  %niter748.ncmp.1 = icmp eq i64 %niter748.next.1, %unroll_iter747
  br i1 %niter748.ncmp.1, label %simple_rotate.exit213.loopexit701.unr-lcssa, label %.lr.ph304, !llvm.loop !92

.lr.ph302:                                        ; preds = %.lr.ph302.prol.loopexit, %.lr.ph302
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.1, %.lr.ph302 ], [ %indvars.iv377.unr, %.lr.ph302.prol.loopexit ] ; 5 uses
  %i.jm = shl nuw nsw i64 %indvars.iv377, 2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.jm
  %i.jo = xor i64 %indvars.iv377, -1
  %i.jp = add nsw i64 %i.bp, %i.jo
  %i.jq = mul nsw i64 %i.jp, %i.dn
  %i.jr = getelementptr inbounds i8, ptr %i.dl, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !54
  store i32 %i.js, ptr %i.jn, align 4, !tbaa !54
  %indvars.iv.next378 = shl i64 %indvars.iv377, 2
  %i.jt = getelementptr i8, ptr %i.dg, i64 %indvars.iv.next378
  %i.ju = getelementptr i8, ptr %i.jt, i64 4
  %reass.sub756 = sub i64 %i.bp, %indvars.iv377
  %i.jv = add i64 %reass.sub756, -2
  %i.jw = mul nsw i64 %i.jv, %i.dn
  %i.jx = getelementptr inbounds i8, ptr %i.dl, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !54
  store i32 %i.jy, ptr %i.ju, align 4, !tbaa !54
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377, 2 ; 2 uses
  %exitcond381.not.1 = icmp eq i64 %indvars.iv.next378.1, %wide.trip.count380
  br i1 %exitcond381.not.1, label %simple_rotate.exit213, label %.lr.ph302, !llvm.loop !93

bb.j:                                             ; preds = %.lr.ph310, %copy_elem.exit244
  %indvars.iv397 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next398, %copy_elem.exit244 ] ; 3 uses
  %i.jz = mul nsw i64 %indvars.iv397, %i.hk
  %i.ka = getelementptr inbounds i8, ptr %i.dg, i64 %i.jz ; 7 uses
  %i.kb = xor i64 %indvars.iv397, -1
  %i.kc = add nsw i64 %i.bp, %i.kb
  %i.kd = mul nsw i64 %i.kc, %i.hl
  %i.ke = getelementptr inbounds i8, ptr %i.dl, i64 %i.kd ; 7 uses
  switch i32 %i.di, label %bb.o [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !60
  store i8 %i.kf, ptr %i.ka, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.l:                                             ; preds = %bb.j
  %i.kg = load i16, ptr %i.ke, align 2, !tbaa !140
  store i16 %i.kg, ptr %i.ka, align 2, !tbaa !140
  br label %copy_elem.exit244

bb.m:                                             ; preds = %bb.j
  %i.kh = load i8, ptr %i.ke, align 1, !tbaa !60
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !60
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !60
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !60
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store i8 %i.kj, ptr %i.kn, align 1, !tbaa !60
  store i8 %i.kh, ptr %i.ka, align 1, !tbaa !60
  br label %copy_elem.exit244

bb.n:                                             ; preds = %bb.j
  %i.ko = load i32, ptr %i.ke, align 4, !tbaa !54
  store i32 %i.ko, ptr %i.ka, align 4, !tbaa !54
  br label %copy_elem.exit244

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.ke, i64 %i.hk, i1 false)
  br label %copy_elem.exit244

copy_elem.exit244:                                ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %simple_rotate.exit213, label %bb.j, !llvm.loop !92

bb.p:                                             ; preds = %bb.h
  %i.kp = fadd nsz double %i.cj, f0xC00921FB54442D18
  %i.kq = call nsz double @llvm.fabs.f64(double %i.kp)
  %i.kr = fcmp nsz olt double %i.kq, f0x3E80000000000000
  %or.cond206 = select i1 %i.kr, i1 %i.at, i1 false
  %or.cond207 = select i1 %or.cond206, i1 %i.au, i1 false
  br i1 %or.cond207, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ks = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.kt = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.ku = mul i32 %i.kt, %.0192313
  %i.kv = sext i32 %i.ku to i64                   ; 4 uses
  %i.kw = getelementptr i8, ptr %i.ks, i64 %i.kv  ; 23 uses
  %i.kx = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 6 uses
  %i.ky = xor i32 %.0192313, -1
  %i.kz = add i32 %i.e, %i.ky
  %i.la = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.lb = mul i32 %i.la, %i.kz
  %i.lc = sext i32 %i.lb to i64                   ; 6 uses
  %i.ld = getelementptr inbounds i8, ptr %i.kx, i64 %i.lc ; 14 uses
  %i.le = load i32, ptr %i.bd, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.le, label %.preheader256 [
    i32 1, label %.preheader258
    i32 2, label %.preheader260
    i32 3, label %.preheader262
    i32 4, label %.preheader264
  ]

.preheader264:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph292.preheader, label %simple_rotate.exit213

.lr.ph292.preheader:                              ; preds = %.preheader264
  br i1 %min.iters.check599, label %.lr.ph292.preheader708, label %vector.memcheck600

vector.memcheck600:                               ; preds = %.lr.ph292.preheader
  %i.lf = getelementptr i8, ptr %i.ks, i64 %6
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.kv
  %15 = getelementptr i8, ptr %i.kx, i64 %8
  %16 = getelementptr i8, ptr %15, i64 %i.lc
  %i.lh = getelementptr i8, ptr %i.kx, i64 %i.br
  %i.li = getelementptr i8, ptr %i.lh, i64 %i.lc
  %bound0601 = icmp ult ptr %i.kw, %i.li
  %bound1602 = icmp ult ptr %16, %i.lg
  %found.conflict603 = and i1 %bound0601, %bound1602
  br i1 %found.conflict603, label %.lr.ph292.preheader708, label %vector.body606

vector.body606:                                   ; preds = %vector.memcheck600, %vector.body606
  %index607 = phi i64 [ %index.next612, %vector.body606 ], [ 0, %vector.memcheck600 ] ; 3 uses
  %i.lj = shl nuw nsw i64 %index607, 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lj ; 2 uses
  %i.ll = xor i64 %index607, -1
  %i.lm = add nsw i64 %i.bp, %i.ll
  %i.ln = shl nsw i64 %i.lm, 2
  %i.lo = getelementptr inbounds i8, ptr %i.ld, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -12
  %i.lq = getelementptr inbounds i8, ptr %i.lo, i64 -28
  %wide.load608 = load <4 x i32>, ptr %i.lp, align 4, !tbaa !54, !alias.scope !146
  %wide.load609 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !54, !alias.scope !146
  %reverse610 = shufflevector <4 x i32> %wide.load608, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse611 = shufflevector <4 x i32> %wide.load609, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <4 x i32> %reverse610, ptr %i.lk, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  store <4 x i32> %reverse611, ptr %i.lr, align 4, !tbaa !54, !alias.scope !147, !noalias !146
  %index.next612 = add nuw i64 %index607, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next612, %n.vec605
  br i1 %i.ls, label %middle.block613, label %vector.body606, !llvm.loop !97

middle.block613:                                  ; preds = %vector.body606
  br i1 %cmp.n614, label %simple_rotate.exit213, label %.lr.ph292.preheader708

.lr.ph292.preheader708:                           ; preds = %vector.memcheck600, %.lr.ph292.preheader, %middle.block613
  %indvars.iv352.ph = phi i64 [ 0, %vector.memcheck600 ], [ 0, %.lr.ph292.preheader ], [ %n.vec605, %middle.block613 ] ; 5 uses
  br i1 %lcmp.mod728.not, label %.lr.ph292.prol.loopexit, label %.lr.ph292.prol

.lr.ph292.prol:                                   ; preds = %.lr.ph292.preheader708
  %i.lt = shl nuw nsw i64 %indvars.iv352.ph, 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lt
  %i.lv = xor i64 %indvars.iv352.ph, -1
  %i.lw = add nsw i64 %i.bp, %i.lv
  %i.lx = shl nsw i64 %i.lw, 2
  %i.ly = getelementptr inbounds i8, ptr %i.ld, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !54
  store i32 %i.lz, ptr %i.lu, align 4, !tbaa !54
  %indvars.iv.next353.prol = or disjoint i64 %indvars.iv352.ph, 1
  br label %.lr.ph292.prol.loopexit

.lr.ph292.prol.loopexit:                          ; preds = %.lr.ph292.prol, %.lr.ph292.preheader708
  %indvars.iv352.unr = phi i64 [ %indvars.iv352.ph, %.lr.ph292.preheader708 ], [ %indvars.iv.next353.prol, %.lr.ph292.prol ]
  %i.ma = icmp eq i64 %indvars.iv352.ph, %i.bx
  br i1 %i.ma, label %simple_rotate.exit213, label %.lr.ph292

.preheader262:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph294.preheader, label %simple_rotate.exit213

.lr.ph294.preheader:                              ; preds = %.preheader262
  br i1 %i.by, label %.lr.ph294.epil.preheader, label %.lr.ph294

.preheader260:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check574, label %simple_rotate.exit213

iter.check574:                                    ; preds = %.preheader260
  br i1 %min.iters.check556, label %.lr.ph296.preheader, label %vector.memcheck557

vector.memcheck557:                               ; preds = %iter.check574
  %i.mb = getelementptr i8, ptr %i.ks, i64 %5
  %i.mc = getelementptr i8, ptr %i.mb, i64 %i.kv
  %17 = getelementptr i8, ptr %i.kx, i64 %7
  %18 = getelementptr i8, ptr %17, i64 %i.lc
  %i.md = getelementptr i8, ptr %i.kx, i64 %i.bq
  %i.me = getelementptr i8, ptr %i.md, i64 %i.lc
  %bound0558 = icmp ult ptr %i.kw, %i.me
  %bound1559 = icmp ult ptr %18, %i.mc
  %found.conflict560 = and i1 %bound0558, %bound1559
  br i1 %found.conflict560, label %.lr.ph296.preheader, label %vector.main.loop.iter.check561

vector.main.loop.iter.check561:                   ; preds = %vector.memcheck557
  br i1 %min.iters.check562, label %vec.epilog.ph578, label %vector.body565

vector.body565:                                   ; preds = %vector.main.loop.iter.check561, %vector.body565
  %index566 = phi i64 [ %index.next571, %vector.body565 ], [ 0, %vector.main.loop.iter.check561 ] ; 3 uses
  %i.mf = shl nuw nsw i64 %index566, 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mf ; 2 uses
  %i.mh = xor i64 %index566, -1
  %i.mi = add nsw i64 %i.bp, %i.mh
  %i.mj = shl nsw i64 %i.mi, 1
  %i.mk = getelementptr inbounds i8, ptr %i.ld, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -14
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 -30
  %wide.load567 = load <8 x i16>, ptr %i.ml, align 2, !tbaa !140, !alias.scope !148
  %wide.load568 = load <8 x i16>, ptr %i.mm, align 2, !tbaa !140, !alias.scope !148
  %reverse569 = shufflevector <8 x i16> %wide.load567, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse570 = shufflevector <8 x i16> %wide.load568, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store <8 x i16> %reverse569, ptr %i.mg, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  store <8 x i16> %reverse570, ptr %i.mn, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next571 = add nuw i64 %index566, 16      ; 2 uses
  %i.mo = icmp eq i64 %index.next571, %n.vec564
  br i1 %i.mo, label %middle.block572, label %vector.body565, !llvm.loop !101

middle.block572:                                  ; preds = %vector.body565
  br i1 %cmp.n573, label %simple_rotate.exit213, label %vec.epilog.iter.check575

vec.epilog.iter.check575:                         ; preds = %middle.block572
  br i1 %min.epilog.iters.check577, label %.lr.ph296.preheader, label %vec.epilog.ph578, !prof !61

vec.epilog.ph578:                                 ; preds = %vector.main.loop.iter.check561, %vec.epilog.iter.check575
  %vec.epilog.resume.val579 = phi i64 [ %n.vec564, %vec.epilog.iter.check575 ], [ 0, %vector.main.loop.iter.check561 ]
  br label %vec.epilog.vector.body581

vec.epilog.vector.body581:                        ; preds = %vec.epilog.vector.body581, %vec.epilog.ph578
  %index582 = phi i64 [ %vec.epilog.resume.val579, %vec.epilog.ph578 ], [ %index.next585, %vec.epilog.vector.body581 ] ; 3 uses
  %i.mp = shl nuw nsw i64 %index582, 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mp
  %i.mr = xor i64 %index582, -1
  %i.ms = add nsw i64 %i.bp, %i.mr
  %i.mt = shl nsw i64 %i.ms, 1
  %i.mu = getelementptr inbounds i8, ptr %i.ld, i64 %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -6
  %wide.load583 = load <4 x i16>, ptr %i.mv, align 2, !tbaa !140, !alias.scope !148
  %reverse584 = shufflevector <4 x i16> %wide.load583, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse584, ptr %i.mq, align 2, !tbaa !140, !alias.scope !149, !noalias !148
  %index.next585 = add nuw i64 %index582, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next585, %n.vec580
  br i1 %i.mw, label %vec.epilog.middle.block586, label %vec.epilog.vector.body581, !llvm.loop !102

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body581
  br i1 %cmp.n587, label %simple_rotate.exit213, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %iter.check574, %vector.memcheck557, %vec.epilog.iter.check575, %vec.epilog.middle.block586
  %indvars.iv362.ph = phi i64 [ 0, %iter.check574 ], [ 0, %vector.memcheck557 ], [ %n.vec564, %vec.epilog.iter.check575 ], [ %n.vec580, %vec.epilog.middle.block586 ] ; 5 uses
  br i1 %lcmp.mod736.not, label %.lr.ph296.prol.loopexit, label %.lr.ph296.prol

.lr.ph296.prol:                                   ; preds = %.lr.ph296.preheader
  %i.mx = shl nuw nsw i64 %indvars.iv362.ph, 1
  %i.my = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mx
  %i.mz = xor i64 %indvars.iv362.ph, -1
  %i.na = add nsw i64 %i.bp, %i.mz
  %i.nb = shl nsw i64 %i.na, 1
  %i.nc = getelementptr inbounds i8, ptr %i.ld, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !140
  store i16 %i.nd, ptr %i.my, align 2, !tbaa !140
  %indvars.iv.next363.prol = or disjoint i64 %indvars.iv362.ph, 1
  br label %.lr.ph296.prol.loopexit

.lr.ph296.prol.loopexit:                          ; preds = %.lr.ph296.prol, %.lr.ph296.preheader
  %indvars.iv362.unr = phi i64 [ %indvars.iv362.ph, %.lr.ph296.preheader ], [ %indvars.iv.next363.prol, %.lr.ph296.prol ]
  %i.ne = icmp eq i64 %indvars.iv362.ph, %i.ca
  br i1 %i.ne, label %simple_rotate.exit213, label %.lr.ph296

.preheader258:                                    ; preds = %bb.q
  br i1 %i.ax, label %iter.check531, label %simple_rotate.exit213

iter.check531:                                    ; preds = %.preheader258
  %i.nf = getelementptr i8, ptr %i.ld, i64 %i.bp  ; 8 uses
  br i1 %min.iters.check513, label %.lr.ph298.preheader, label %vector.memcheck514

vector.memcheck514:                               ; preds = %iter.check531
  %i.ng = getelementptr i8, ptr %i.ks, i64 %i.kv
  %i.nh = getelementptr i8, ptr %i.ng, i64 %wide.trip.count
  %19 = getelementptr i8, ptr %i.kx, i64 %4
  %i.ni = getelementptr i8, ptr %19, i64 %i.lc
  %bound0515 = icmp ult ptr %i.kw, %i.nf
  %bound1516 = icmp ult ptr %i.ni, %i.nh
  %found.conflict517 = and i1 %bound0515, %bound1516
  br i1 %found.conflict517, label %.lr.ph298.preheader, label %vector.main.loop.iter.check518

vector.main.loop.iter.check518:                   ; preds = %vector.memcheck514
  br i1 %min.iters.check519, label %vec.epilog.ph535, label %vector.body522

vector.body522:                                   ; preds = %vector.main.loop.iter.check518, %vector.body522
  %index523 = phi i64 [ %index.next528, %vector.body522 ], [ 0, %vector.main.loop.iter.check518 ] ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %index523 ; 2 uses
  %i.nk = xor i64 %index523, -1
  %i.nl = getelementptr i8, ptr %i.nf, i64 %i.nk  ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 -15
  %i.nn = getelementptr i8, ptr %i.nl, i64 -31
  %wide.load524 = load <16 x i8>, ptr %i.nm, align 1, !tbaa !60, !alias.scope !150
  %wide.load525 = load <16 x i8>, ptr %i.nn, align 1, !tbaa !60, !alias.scope !150
  %reverse526 = shufflevector <16 x i8> %wide.load524, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse527 = shufflevector <16 x i8> %wide.load525, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <16 x i8> %reverse526, ptr %i.nj, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  store <16 x i8> %reverse527, ptr %i.no, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next528 = add nuw i64 %index523, 32      ; 2 uses
  %i.np = icmp eq i64 %index.next528, %n.vec521
  br i1 %i.np, label %middle.block529, label %vector.body522, !llvm.loop !106

middle.block529:                                  ; preds = %vector.body522
  br i1 %cmp.n530, label %simple_rotate.exit213, label %vec.epilog.iter.check532

vec.epilog.iter.check532:                         ; preds = %middle.block529
  br i1 %min.epilog.iters.check534, label %.lr.ph298.preheader, label %vec.epilog.ph535, !prof !145

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check518, %vec.epilog.iter.check532
  %vec.epilog.resume.val536 = phi i64 [ %n.vec521, %vec.epilog.iter.check532 ], [ 0, %vector.main.loop.iter.check518 ]
  br label %vec.epilog.vector.body538

vec.epilog.vector.body538:                        ; preds = %vec.epilog.vector.body538, %vec.epilog.ph535
  %index539 = phi i64 [ %vec.epilog.resume.val536, %vec.epilog.ph535 ], [ %index.next542, %vec.epilog.vector.body538 ] ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %index539
  %i.nr = xor i64 %index539, -1
  %i.ns = getelementptr i8, ptr %i.nf, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 -7
  %wide.load540 = load <8 x i8>, ptr %i.nt, align 1, !tbaa !60, !alias.scope !150
  %reverse541 = shufflevector <8 x i8> %wide.load540, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse541, ptr %i.nq, align 1, !tbaa !60, !alias.scope !151, !noalias !150
  %index.next542 = add nuw i64 %index539, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next542, %n.vec537
  br i1 %i.nu, label %vec.epilog.middle.block543, label %vec.epilog.vector.body538, !llvm.loop !107

vec.epilog.middle.block543:                       ; preds = %vec.epilog.vector.body538
  br i1 %cmp.n544, label %simple_rotate.exit213, label %.lr.ph298.preheader

.lr.ph298.preheader:                              ; preds = %iter.check531, %vector.memcheck514, %vec.epilog.iter.check532, %vec.epilog.middle.block543
  %indvars.iv367.ph = phi i64 [ 0, %iter.check531 ], [ 0, %vector.memcheck514 ], [ %n.vec521, %vec.epilog.iter.check532 ], [ %n.vec537, %vec.epilog.middle.block543 ] ; 3 uses
  br i1 %lcmp.mod739.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol

.lr.ph298.prol:                                   ; preds = %.lr.ph298.preheader, %.lr.ph298.prol
  %indvars.iv367.prol = phi i64 [ %indvars.iv.next368.prol, %.lr.ph298.prol ], [ %indvars.iv367.ph, %.lr.ph298.preheader ] ; 3 uses
  %prol.iter740 = phi i64 [ %prol.iter740.next, %.lr.ph298.prol ], [ 0, %.lr.ph298.preheader ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv367.prol
  %i.nw = xor i64 %indvars.iv367.prol, -1
  %i.nx = getelementptr i8, ptr %i.nf, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !60
  store i8 %i.ny, ptr %i.nv, align 1, !tbaa !60
  %indvars.iv.next368.prol = add nuw nsw i64 %indvars.iv367.prol, 1 ; 2 uses
  %prol.iter740.next = add i64 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i64 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph298.prol.loopexit, label %.lr.ph298.prol, !llvm.loop !108

.lr.ph298.prol.loopexit:                          ; preds = %.lr.ph298.prol, %.lr.ph298.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %.lr.ph298.preheader ], [ %indvars.iv.next368.prol, %.lr.ph298.prol ]
  %i.nz = sub nsw i64 %indvars.iv367.ph, %wide.trip.count
  %i.oa = icmp ugt i64 %i.nz, -4
  br i1 %i.oa, label %simple_rotate.exit213, label %.lr.ph298

.preheader256:                                    ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph300, label %simple_rotate.exit213

.lr.ph300:                                        ; preds = %.preheader256
  %i.ob = sext i32 %i.le to i64                   ; 3 uses
  br label %bb.r

.lr.ph298:                                        ; preds = %.lr.ph298.prol.loopexit, %.lr.ph298
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.3, %.lr.ph298 ], [ %indvars.iv367.unr, %.lr.ph298.prol.loopexit ] ; 9 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv367
  %i.od = xor i64 %indvars.iv367, -1
  %i.oe = getelementptr i8, ptr %i.nf, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !60
  store i8 %i.of, ptr %i.oc, align 1, !tbaa !60
  %i.og = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv367
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.oi = sub i64 -2, %indvars.iv367
  %i.oj = getelementptr i8, ptr %i.nf, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !60
  store i8 %i.ok, ptr %i.oh, align 1, !tbaa !60
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv367
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 2
  %i.on = sub i64 -3, %indvars.iv367
  %i.oo = getelementptr i8, ptr %i.nf, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !60
  store i8 %i.op, ptr %i.om, align 1, !tbaa !60
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %indvars.iv367
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 3
  %i.os = sub i64 -4, %indvars.iv367
  %i.ot = getelementptr i8, ptr %i.nf, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !60
  store i8 %i.ou, ptr %i.or, align 1, !tbaa !60
  %indvars.iv.next368.3 = add nuw nsw i64 %indvars.iv367, 4 ; 2 uses
  %exitcond371.not.3 = icmp eq i64 %indvars.iv.next368.3, %wide.trip.count370
  br i1 %exitcond371.not.3, label %simple_rotate.exit213, label %.lr.ph298, !llvm.loop !109

.lr.ph296:                                        ; preds = %.lr.ph296.prol.loopexit, %.lr.ph296
  %indvars.iv362 = phi i64 [ %indvars.iv.next363.1, %.lr.ph296 ], [ %indvars.iv362.unr, %.lr.ph296.prol.loopexit ] ; 5 uses
  %i.ov = shl nuw nsw i64 %indvars.iv362, 1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ov
  %i.ox = xor i64 %indvars.iv362, -1
  %i.oy = add nsw i64 %i.bp, %i.ox
  %i.oz = shl nsw i64 %i.oy, 1
  %i.pa = getelementptr inbounds i8, ptr %i.ld, i64 %i.oz
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !140
  store i16 %i.pb, ptr %i.ow, align 2, !tbaa !140
  %indvars.iv.next363 = shl i64 %indvars.iv362, 1
  %i.pc = getelementptr i8, ptr %i.kw, i64 %indvars.iv.next363
  %i.pd = getelementptr i8, ptr %i.pc, i64 2
  %reass.sub755 = sub i64 %i.bp, %indvars.iv362
  %i.pe = shl i64 %reass.sub755, 1
  %i.pf = getelementptr i8, ptr %i.ld, i64 %i.pe
  %i.pg = getelementptr i8, ptr %i.pf, i64 -4
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !140
  store i16 %i.ph, ptr %i.pd, align 2, !tbaa !140
  %indvars.iv.next363.1 = add nuw nsw i64 %indvars.iv362, 2 ; 2 uses
  %exitcond366.not.1 = icmp eq i64 %indvars.iv.next363.1, %wide.trip.count365
  br i1 %exitcond366.not.1, label %simple_rotate.exit213, label %.lr.ph296, !llvm.loop !110

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ] ; 5 uses
  %niter734 = phi i64 [ %niter734.next.1, %.lr.ph294 ], [ 0, %.lr.ph294.preheader ]
  %i.pi = mul nuw nsw i64 %indvars.iv357, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.pi ; 3 uses
  %i.pk = xor i64 %indvars.iv357, -1
  %i.pl = add nsw i64 %i.bp, %i.pk
  %i.pm = mul nsw i64 %i.pl, 3
  %i.pn = getelementptr inbounds i8, ptr %i.ld, i64 %i.pm ; 3 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !60
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !60
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !60
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !60
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  store i8 %i.pq, ptr %i.pu, align 1, !tbaa !60
  store i8 %i.po, ptr %i.pj, align 1, !tbaa !60
  %i.pv = mul nuw i64 %indvars.iv357, 3
  %i.pw = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.pv ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %i.py = xor i64 %indvars.iv357, -2
  %i.pz = add nsw i64 %i.py, %i.bp
  %i.qa = mul nsw i64 %i.pz, 3
  %i.qb = getelementptr inbounds i8, ptr %i.ld, i64 %i.qa ; 3 uses
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !60
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !60
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !60
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 5
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !60
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  store i8 %i.qe, ptr %i.qi, align 1, !tbaa !60
  store i8 %i.qc, ptr %i.px, align 1, !tbaa !60
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 2 uses
  %niter734.next.1 = add i64 %niter734, 2         ; 2 uses
  %niter734.ncmp.1 = icmp eq i64 %niter734.next.1, %unroll_iter733
  br i1 %niter734.ncmp.1, label %simple_rotate.exit213.loopexit707.unr-lcssa, label %.lr.ph294, !llvm.loop !111

.lr.ph292:                                        ; preds = %.lr.ph292.prol.loopexit, %.lr.ph292
  %indvars.iv352 = phi i64 [ %indvars.iv.next353.1, %.lr.ph292 ], [ %indvars.iv352.unr, %.lr.ph292.prol.loopexit ] ; 5 uses
  %i.qj = shl nuw nsw i64 %indvars.iv352, 2
  %i.qk = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.qj
  %i.ql = xor i64 %indvars.iv352, -1
  %i.qm = add nsw i64 %i.bp, %i.ql
  %i.qn = shl nsw i64 %i.qm, 2
  %i.qo = getelementptr inbounds i8, ptr %i.ld, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !54
  store i32 %i.qp, ptr %i.qk, align 4, !tbaa !54
  %indvars.iv.next353 = shl i64 %indvars.iv352, 2
  %i.qq = getelementptr i8, ptr %i.kw, i64 %indvars.iv.next353
  %i.qr = getelementptr i8, ptr %i.qq, i64 4
  %reass.sub = sub i64 %i.bp, %indvars.iv352
  %i.qs = shl i64 %reass.sub, 2
  %i.qt = getelementptr i8, ptr %i.ld, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 -8
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !54
  store i32 %i.qv, ptr %i.qr, align 4, !tbaa !54
  %indvars.iv.next353.1 = add nuw nsw i64 %indvars.iv352, 2 ; 2 uses
  %exitcond356.not.1 = icmp eq i64 %indvars.iv.next353.1, %wide.trip.count355
  br i1 %exitcond356.not.1, label %simple_rotate.exit213, label %.lr.ph292, !llvm.loop !112

bb.r:                                             ; preds = %.lr.ph300, %copy_elem.exit243
  %indvars.iv372 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next373, %copy_elem.exit243 ] ; 3 uses
  %i.qw = mul nsw i64 %indvars.iv372, %i.ob
  %i.qx = getelementptr inbounds i8, ptr %i.kw, i64 %i.qw ; 7 uses
  %i.qy = xor i64 %indvars.iv372, -1
  %i.qz = add nsw i64 %i.bp, %i.qy
  %i.ra = mul nsw i64 %i.qz, %i.ob
  %i.rb = getelementptr inbounds i8, ptr %i.ld, i64 %i.ra ; 7 uses
  switch i32 %i.le, label %bb.w [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !60
  store i8 %i.rc, ptr %i.qx, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.t:                                             ; preds = %bb.r
  %i.rd = load i16, ptr %i.rb, align 2, !tbaa !140
  store i16 %i.rd, ptr %i.qx, align 2, !tbaa !140
  br label %copy_elem.exit243

bb.u:                                             ; preds = %bb.r
  %i.re = load i8, ptr %i.rb, align 1, !tbaa !60
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !60
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !60
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !60
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store i8 %i.rg, ptr %i.rk, align 1, !tbaa !60
  store i8 %i.re, ptr %i.qx, align 1, !tbaa !60
  br label %copy_elem.exit243

bb.v:                                             ; preds = %bb.r
  %i.rl = load i32, ptr %i.rb, align 4, !tbaa !54
  store i32 %i.rl, ptr %i.qx, align 4, !tbaa !54
  br label %copy_elem.exit243

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.rb, i64 %i.ob, i1 false)
  br label %copy_elem.exit243

copy_elem.exit243:                                ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count375
  br i1 %exitcond376.not, label %simple_rotate.exit213, label %bb.r, !llvm.loop !111

bb.x:                                             ; preds = %bb.p
  %i.rm = fadd nsz double %i.cj, f0xC012D97C7F3321D2
  %i.rn = call nsz double @llvm.fabs.f64(double %i.rm)
  %i.ro = fcmp nsz olt double %i.rn, f0x3E80000000000000
  %or.cond208 = select i1 %i.ro, i1 %i.av, i1 false
  %or.cond209 = select i1 %or.cond208, i1 %i.aw, i1 false
  br i1 %or.cond209, label %bb.y, label %.preheader276

.preheader276:                                    ; preds = %bb.x
  br i1 %i.ax, label %.lr.ph, label %simple_rotate.exit213

bb.y:                                             ; preds = %bb.x
  %i.rp = load ptr, ptr %i.az, align 8, !tbaa !136 ; 4 uses
  %i.rq = ptrtoaddr ptr %i.rp to i64
  %i.rr = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.rs = mul i32 %i.rr, %.0192313
  %i.rt = sext i32 %i.rs to i64                   ; 4 uses
  %i.ru = getelementptr i8, ptr %i.rp, i64 %i.rt  ; 25 uses
  %i.rv = load ptr, ptr %i.bg, align 8, !tbaa !136 ; 4 uses
  %i.rw = ptrtoaddr ptr %i.rv to i64
  %i.rx = xor i32 %.0192313, -1
  %i.ry = add i32 %i.e, %i.rx
  %i.rz = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.sa = mul i32 %i.rz, %i.ry
  %i.sb = sext i32 %i.sa to i64                   ; 4 uses
  %i.sc = getelementptr i8, ptr %i.rv, i64 %i.sb  ; 39 uses
  %i.sd = load i32, ptr %i.bi, align 4, !tbaa !54 ; 8 uses
  switch i32 %i.rz, label %.preheader266 [
    i32 1, label %.preheader268
    i32 2, label %.preheader270
    i32 3, label %.preheader272
    i32 4, label %.preheader274
  ]

.preheader274:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph282.preheader, label %simple_rotate.exit213

.lr.ph282.preheader:                              ; preds = %.preheader274
  %i.se = sext i32 %i.sd to i64                   ; 5 uses
  %ident.check671.not = icmp eq i32 %i.sd, 1
  %or.cond695 = select i1 %min.iters.check680, i1 %ident.check671.not, i1 false
  br i1 %or.cond695, label %vector.memcheck681, label %.lr.ph282.preheader715

vector.memcheck681:                               ; preds = %.lr.ph282.preheader
  %i.sf = getelementptr i8, ptr %i.rp, i64 %i.bt
  %i.sg = getelementptr i8, ptr %i.sf, i64 %i.rt
  %i.sh = getelementptr i8, ptr %i.rv, i64 %wide.trip.count
  %i.si = getelementptr i8, ptr %i.sh, i64 3
  %i.sj = getelementptr i8, ptr %i.si, i64 %i.sb
  %bound0682 = icmp ult ptr %i.ru, %i.sj
  %bound1683 = icmp ult ptr %i.sc, %i.sg
  %found.conflict684 = and i1 %bound0682, %bound1683
  br i1 %found.conflict684, label %.lr.ph282.preheader715, label %vector.body687

vector.body687:                                   ; preds = %vector.memcheck681, %vector.body687
  %index688 = phi i64 [ %index.next689, %vector.body687 ], [ 0, %vector.memcheck681 ] ; 10 uses
  %i.sk = shl nuw nsw i64 %index688, 2
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.sk ; 2 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sc, i64 %index688
  %i.sn = getelementptr i8, ptr %i.sc, i64 %index688
  %i.so = getelementptr i8, ptr %i.sn, i64 1
  %i.sp = getelementptr i8, ptr %i.sc, i64 %index688
  %i.sq = getelementptr i8, ptr %i.sp, i64 2
  %i.sr = getelementptr i8, ptr %i.sc, i64 %index688
  %i.ss = getelementptr i8, ptr %i.sr, i64 3
  %i.st = getelementptr i8, ptr %i.sc, i64 %index688
  %i.su = getelementptr i8, ptr %i.st, i64 4
  %i.sv = getelementptr i8, ptr %i.sc, i64 %index688
  %i.sw = getelementptr i8, ptr %i.sv, i64 5
  %i.sx = getelementptr i8, ptr %i.sc, i64 %index688
  %i.sy = getelementptr i8, ptr %i.sx, i64 6
  %i.sz = getelementptr i8, ptr %i.sc, i64 %index688
  %i.ta = getelementptr i8, ptr %i.sz, i64 7
  %i.tb = load i32, ptr %i.sm, align 4, !tbaa !54, !alias.scope !153
  %i.tc = load i32, ptr %i.so, align 4, !tbaa !54, !alias.scope !153
  %i.td = load i32, ptr %i.sq, align 4, !tbaa !54, !alias.scope !153
  %i.te = load i32, ptr %i.ss, align 4, !tbaa !54, !alias.scope !153
  %i.tf = insertelement <4 x i32> poison, i32 %i.tb, i64 0
  %i.tg = insertelement <4 x i32> %i.tf, i32 %i.tc, i64 1
  %i.th = insertelement <4 x i32> %i.tg, i32 %i.td, i64 2
  %i.ti = insertelement <4 x i32> %i.th, i32 %i.te, i64 3
  %i.tj = load i32, ptr %i.su, align 4, !tbaa !54, !alias.scope !153
  %i.tk = load i32, ptr %i.sw, align 4, !tbaa !54, !alias.scope !153
  %i.tl = load i32, ptr %i.sy, align 4, !tbaa !54, !alias.scope !153
  %i.tm = load i32, ptr %i.ta, align 4, !tbaa !54, !alias.scope !153
  %i.tn = insertelement <4 x i32> poison, i32 %i.tj, i64 0
  %i.to = insertelement <4 x i32> %i.tn, i32 %i.tk, i64 1
  %i.tp = insertelement <4 x i32> %i.to, i32 %i.tl, i64 2
  %i.tq = insertelement <4 x i32> %i.tp, i32 %i.tm, i64 3
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store <4 x i32> %i.ti, ptr %i.sl, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  store <4 x i32> %i.tq, ptr %i.tr, align 4, !tbaa !54, !alias.scope !154, !noalias !153
  %index.next689 = add nuw i64 %index688, 8       ; 2 uses
  %i.ts = icmp eq i64 %index.next689, %n.vec686
  br i1 %i.ts, label %middle.block690, label %vector.body687, !llvm.loop !116

middle.block690:                                  ; preds = %vector.body687
  br i1 %cmp.n691, label %simple_rotate.exit213, label %.lr.ph282.preheader715

.lr.ph282.preheader715:                           ; preds = %vector.memcheck681, %.lr.ph282.preheader, %middle.block690
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck681 ], [ 0, %.lr.ph282.preheader ], [ %n.vec686, %middle.block690 ] ; 3 uses
  %i.tt = sub nsw i64 %i.bu, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol

.lr.ph282.prol:                                   ; preds = %.lr.ph282.preheader715, %.lr.ph282.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph282.prol ], [ %indvars.iv.ph, %.lr.ph282.preheader715 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph282.prol ], [ 0, %.lr.ph282.preheader715 ]
  %i.tu = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.tu
  %i.tw = mul nsw i64 %indvars.iv.prol, %i.se
  %i.tx = getelementptr inbounds i8, ptr %i.sc, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !54
  store i32 %i.ty, ptr %i.tv, align 4, !tbaa !54
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph282.prol.loopexit, label %.lr.ph282.prol, !llvm.loop !117

.lr.ph282.prol.loopexit:                          ; preds = %.lr.ph282.prol, %.lr.ph282.preheader715
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph282.preheader715 ], [ %indvars.iv.next.prol, %.lr.ph282.prol ]
  %i.tz = icmp ult i64 %i.tt, 3
  br i1 %i.tz, label %simple_rotate.exit213, label %.lr.ph282

.preheader272:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph284.preheader, label %simple_rotate.exit213

.lr.ph284.preheader:                              ; preds = %.preheader272
  %i.ua = sext i32 %i.sd to i64                   ; 3 uses
  br i1 %i.bv, label %.lr.ph284.epil.preheader, label %.lr.ph284

.preheader270:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph286.preheader, label %simple_rotate.exit213

.lr.ph286.preheader:                              ; preds = %.preheader270
  %i.ub = sext i32 %i.sd to i64                   ; 5 uses
  %ident.check648.not = icmp eq i32 %i.sd, 1
  %or.cond696 = select i1 %min.iters.check657, i1 %ident.check648.not, i1 false
  br i1 %or.cond696, label %vector.memcheck658, label %.lr.ph286.preheader712

vector.memcheck658:                               ; preds = %.lr.ph286.preheader
  %i.uc = getelementptr i8, ptr %i.rp, i64 %i.bs
  %i.ud = getelementptr i8, ptr %i.uc, i64 %i.rt
  %i.ue = getelementptr i8, ptr %i.rv, i64 %wide.trip.count
  %i.uf = getelementptr i8, ptr %i.ue, i64 1
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.sb
  %bound0659 = icmp ult ptr %i.ru, %i.ug
  %bound1660 = icmp ult ptr %i.sc, %i.ud
  %found.conflict661 = and i1 %bound0659, %bound1660
  br i1 %found.conflict661, label %.lr.ph286.preheader712, label %vector.body664

vector.body664:                                   ; preds = %vector.memcheck658, %vector.body664
  %index665 = phi i64 [ %index.next666, %vector.body664 ], [ 0, %vector.memcheck658 ] ; 10 uses
  %i.uh = shl nuw nsw i64 %index665, 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.uh
  %i.uj = getelementptr inbounds i8, ptr %i.sc, i64 %index665
  %i.uk = getelementptr i8, ptr %i.sc, i64 %index665
  %i.ul = getelementptr i8, ptr %i.uk, i64 1
  %i.um = getelementptr i8, ptr %i.sc, i64 %index665
  %i.un = getelementptr i8, ptr %i.um, i64 2
  %i.uo = getelementptr i8, ptr %i.sc, i64 %index665
  %i.up = getelementptr i8, ptr %i.uo, i64 3
  %i.uq = getelementptr i8, ptr %i.sc, i64 %index665
  %i.ur = getelementptr i8, ptr %i.uq, i64 4
  %i.us = getelementptr i8, ptr %i.sc, i64 %index665
  %i.ut = getelementptr i8, ptr %i.us, i64 5
  %i.uu = getelementptr i8, ptr %i.sc, i64 %index665
  %i.uv = getelementptr i8, ptr %i.uu, i64 6
  %i.uw = getelementptr i8, ptr %i.sc, i64 %index665
  %i.ux = getelementptr i8, ptr %i.uw, i64 7
  %i.uy = load i16, ptr %i.uj, align 2, !tbaa !140, !alias.scope !155
  %i.uz = load i16, ptr %i.ul, align 2, !tbaa !140, !alias.scope !155
  %i.va = load i16, ptr %i.un, align 2, !tbaa !140, !alias.scope !155
  %i.vb = load i16, ptr %i.up, align 2, !tbaa !140, !alias.scope !155
  %i.vc = load i16, ptr %i.ur, align 2, !tbaa !140, !alias.scope !155
  %i.vd = load i16, ptr %i.ut, align 2, !tbaa !140, !alias.scope !155
  %i.ve = load i16, ptr %i.uv, align 2, !tbaa !140, !alias.scope !155
  %i.vf = load i16, ptr %i.ux, align 2, !tbaa !140, !alias.scope !155
  %i.vg = insertelement <8 x i16> poison, i16 %i.uy, i64 0
  %i.vh = insertelement <8 x i16> %i.vg, i16 %i.uz, i64 1
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.va, i64 2
  %i.vj = insertelement <8 x i16> %i.vi, i16 %i.vb, i64 3
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.vc, i64 4
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.vd, i64 5
  %i.vm = insertelement <8 x i16> %i.vl, i16 %i.ve, i64 6
  %i.vn = insertelement <8 x i16> %i.vm, i16 %i.vf, i64 7
  store <8 x i16> %i.vn, ptr %i.ui, align 2, !tbaa !140, !alias.scope !156, !noalias !155
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.vo = icmp eq i64 %index.next666, %n.vec663
  br i1 %i.vo, label %middle.block667, label %vector.body664, !llvm.loop !121

middle.block667:                                  ; preds = %vector.body664
  br i1 %cmp.n668, label %simple_rotate.exit213, label %.lr.ph286.preheader712

.lr.ph286.preheader712:                           ; preds = %vector.memcheck658, %.lr.ph286.preheader, %middle.block667
  %indvars.iv337.ph = phi i64 [ 0, %vector.memcheck658 ], [ 0, %.lr.ph286.preheader ], [ %n.vec663, %middle.block667 ] ; 3 uses
  br i1 %lcmp.mod722.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol

.lr.ph286.prol:                                   ; preds = %.lr.ph286.preheader712, %.lr.ph286.prol
  %indvars.iv337.prol = phi i64 [ %indvars.iv.next338.prol, %.lr.ph286.prol ], [ %indvars.iv337.ph, %.lr.ph286.preheader712 ] ; 3 uses
  %prol.iter723 = phi i64 [ %prol.iter723.next, %.lr.ph286.prol ], [ 0, %.lr.ph286.preheader712 ]
  %i.vp = shl nuw nsw i64 %indvars.iv337.prol, 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.vp
  %i.vr = mul nsw i64 %indvars.iv337.prol, %i.ub
  %i.vs = getelementptr inbounds i8, ptr %i.sc, i64 %i.vr
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !140
  store i16 %i.vt, ptr %i.vq, align 2, !tbaa !140
  %indvars.iv.next338.prol = add nuw nsw i64 %indvars.iv337.prol, 1 ; 2 uses
  %prol.iter723.next = add i64 %prol.iter723, 1   ; 2 uses
  %prol.iter723.cmp.not = icmp eq i64 %prol.iter723.next, %xtraiter721
  br i1 %prol.iter723.cmp.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol, !llvm.loop !122

.lr.ph286.prol.loopexit:                          ; preds = %.lr.ph286.prol, %.lr.ph286.preheader712
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %.lr.ph286.preheader712 ], [ %indvars.iv.next338.prol, %.lr.ph286.prol ]
  %i.vu = sub nsw i64 %indvars.iv337.ph, %wide.trip.count
  %i.vv = icmp ugt i64 %i.vu, -4
  br i1 %i.vv, label %simple_rotate.exit213, label %.lr.ph286

.preheader268:                                    ; preds = %bb.y
  br i1 %i.ax, label %iter.check633, label %simple_rotate.exit213

iter.check633:                                    ; preds = %.preheader268
  %i.vw = sext i32 %i.sd to i64                   ; 5 uses
  %ident.check617.not = icmp eq i32 %i.sd, 1
  %or.cond697 = select i1 %min.iters.check620, i1 %ident.check617.not, i1 false
  br i1 %or.cond697, label %vector.memcheck621, label %.lr.ph288.preheader

vector.memcheck621:                               ; preds = %iter.check633
  %i.vx = add i64 %i.rw, %i.sb
  %i.vy = add i64 %i.rq, %i.rt
  %i.vz = sub i64 %i.vx, %i.vy
  %diff.check = icmp ugt i64 %i.vz, -32
  br i1 %diff.check, label %.lr.ph288.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck621
  br i1 %min.iters.check623, label %vec.epilog.ph637, label %vector.body626

vector.body626:                                   ; preds = %vector.main.loop.iter.check622, %vector.body626
  %index627 = phi i64 [ %index.next630, %vector.body626 ], [ 0, %vector.main.loop.iter.check622 ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ru, i64 %index627 ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %i.sc, i64 %index627 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %wide.load628 = load <16 x i8>, ptr %i.wb, align 1, !tbaa !60
  %wide.load629 = load <16 x i8>, ptr %i.wc, align 1, !tbaa !60
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <16 x i8> %wide.load628, ptr %i.wa, align 1, !tbaa !60
  store <16 x i8> %wide.load629, ptr %i.wd, align 1, !tbaa !60
  %index.next630 = add nuw i64 %index627, 32      ; 2 uses
  %i.we = icmp eq i64 %index.next630, %n.vec625
  br i1 %i.we, label %middle.block631, label %vector.body626, !llvm.loop !123

middle.block631:                                  ; preds = %vector.body626
  br i1 %cmp.n632, label %simple_rotate.exit213, label %vec.epilog.iter.check634

vec.epilog.iter.check634:                         ; preds = %middle.block631
  br i1 %min.epilog.iters.check636, label %.lr.ph288.preheader, label %vec.epilog.ph637, !prof !157

vec.epilog.ph637:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check634
  %vec.epilog.resume.val638 = phi i64 [ %n.vec625, %vec.epilog.iter.check634 ], [ 0, %vector.main.loop.iter.check622 ]
  br label %vec.epilog.vector.body640

vec.epilog.vector.body640:                        ; preds = %vec.epilog.vector.body640, %vec.epilog.ph637
  %index641 = phi i64 [ %vec.epilog.resume.val638, %vec.epilog.ph637 ], [ %index.next643, %vec.epilog.vector.body640 ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ru, i64 %index641
  %i.wg = getelementptr inbounds i8, ptr %i.sc, i64 %index641
  %wide.load642 = load <4 x i8>, ptr %i.wg, align 1, !tbaa !60
  store <4 x i8> %wide.load642, ptr %i.wf, align 1, !tbaa !60
  %index.next643 = add nuw i64 %index641, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next643, %n.vec639
  br i1 %i.wh, label %vec.epilog.middle.block644, label %vec.epilog.vector.body640, !llvm.loop !124

vec.epilog.middle.block644:                       ; preds = %vec.epilog.vector.body640
  br i1 %cmp.n645, label %simple_rotate.exit213, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %iter.check633, %vector.memcheck621, %vec.epilog.iter.check634, %vec.epilog.middle.block644
  %indvars.iv342.ph = phi i64 [ 0, %iter.check633 ], [ 0, %vector.memcheck621 ], [ %n.vec625, %vec.epilog.iter.check634 ], [ %n.vec639, %vec.epilog.middle.block644 ] ; 3 uses
  br i1 %lcmp.mod725.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol

.lr.ph288.prol:                                   ; preds = %.lr.ph288.preheader, %.lr.ph288.prol
  %indvars.iv342.prol = phi i64 [ %indvars.iv.next343.prol, %.lr.ph288.prol ], [ %indvars.iv342.ph, %.lr.ph288.preheader ] ; 3 uses
  %prol.iter726 = phi i64 [ %prol.iter726.next, %.lr.ph288.prol ], [ 0, %.lr.ph288.preheader ]
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv342.prol
  %i.wj = mul nsw i64 %indvars.iv342.prol, %i.vw
  %i.wk = getelementptr inbounds i8, ptr %i.sc, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !60
  store i8 %i.wl, ptr %i.wi, align 1, !tbaa !60
  %indvars.iv.next343.prol = add nuw nsw i64 %indvars.iv342.prol, 1 ; 2 uses
  %prol.iter726.next = add i64 %prol.iter726, 1   ; 2 uses
  %prol.iter726.cmp.not = icmp eq i64 %prol.iter726.next, %xtraiter724
  br i1 %prol.iter726.cmp.not, label %.lr.ph288.prol.loopexit, label %.lr.ph288.prol, !llvm.loop !125

.lr.ph288.prol.loopexit:                          ; preds = %.lr.ph288.prol, %.lr.ph288.preheader
  %indvars.iv342.unr = phi i64 [ %indvars.iv342.ph, %.lr.ph288.preheader ], [ %indvars.iv.next343.prol, %.lr.ph288.prol ]
  %i.wm = sub nsw i64 %indvars.iv342.ph, %wide.trip.count
  %i.wn = icmp ugt i64 %i.wm, -4
  br i1 %i.wn, label %simple_rotate.exit213, label %.lr.ph288

.preheader266:                                    ; preds = %bb.y
  br i1 %i.ax, label %.lr.ph290, label %simple_rotate.exit213

.lr.ph290:                                        ; preds = %.preheader266
  %i.wo = sext i32 %i.rz to i64                   ; 2 uses
  %i.wp = sext i32 %i.sd to i64
  br label %bb.z

.lr.ph288:                                        ; preds = %.lr.ph288.prol.loopexit, %.lr.ph288
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.3, %.lr.ph288 ], [ %indvars.iv342.unr, %.lr.ph288.prol.loopexit ] ; 6 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv342
  %i.wr = mul nsw i64 %indvars.iv342, %i.vw
  %i.ws = getelementptr inbounds i8, ptr %i.sc, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !60
  store i8 %i.wt, ptr %i.wq, align 1, !tbaa !60
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv.next343
  %i.wv = mul nsw i64 %indvars.iv.next343, %i.vw
  %i.ww = getelementptr inbounds i8, ptr %i.sc, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !60
  store i8 %i.wx, ptr %i.wu, align 1, !tbaa !60
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv.next343.1
  %i.wz = mul nsw i64 %indvars.iv.next343.1, %i.vw
  %i.xa = getelementptr inbounds i8, ptr %i.sc, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !60
  store i8 %i.xb, ptr %i.wy, align 1, !tbaa !60
  %indvars.iv.next343.2 = add nuw nsw i64 %indvars.iv342, 3 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv.next343.2
  %i.xd = mul nsw i64 %indvars.iv.next343.2, %i.vw
  %i.xe = getelementptr inbounds i8, ptr %i.sc, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !60
  store i8 %i.xf, ptr %i.xc, align 1, !tbaa !60
  %indvars.iv.next343.3 = add nuw nsw i64 %indvars.iv342, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next343.3, %wide.trip.count345
  br i1 %exitcond346.not.3, label %simple_rotate.exit213, label %.lr.ph288, !llvm.loop !126

.lr.ph286:                                        ; preds = %.lr.ph286.prol.loopexit, %.lr.ph286
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.3, %.lr.ph286 ], [ %indvars.iv337.unr, %.lr.ph286.prol.loopexit ] ; 6 uses
  %i.xg = shl nuw nsw i64 %indvars.iv337, 1
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xg
  %i.xi = mul nsw i64 %indvars.iv337, %i.ub
  %i.xj = getelementptr inbounds i8, ptr %i.sc, i64 %i.xi
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !140
  store i16 %i.xk, ptr %i.xh, align 2, !tbaa !140
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.xl = shl nuw nsw i64 %indvars.iv.next338, 1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xl
  %i.xn = mul nsw i64 %indvars.iv.next338, %i.ub
end_hunk_0

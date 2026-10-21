Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/slice?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ff_init_filters:bb.a
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %..loopexit26_crit_edge.3.i, label %vec.epilog.scalar.ph363, !llvm.loop !82

..loopexit26_crit_edge.3.i:                       ; preds = %vec.epilog.scalar.ph363
  %indvars.iv.next45.3.i = add nuw nsw i64 %indvars.iv44.3.i, 1 ; 2 uses
  %exitcond48.3.not.i = icmp eq i64 %indvars.iv.next45.3.i, %wide.trip.count47.3.i
  br i1 %exitcond48.3.not.i, label %fill_ones.exit, label %iter.check362, !llvm.loop !64

fill_ones.exit:                                   ; preds = %..loopexit26_crit_edge.3.i, %..loopexit_crit_edge.us.us.3.i, %.split.us.i, %._crit_edge.split.us.us.2.i, %.split.i, %._crit_edge.split.2.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fx, i64 152
  %i.ka = load i32, ptr %i.a, align 4, !tbaa !83
  %i.kb = load i32, ptr %i.bb, align 4, !tbaa !96
  %i.kc = load i32, ptr %i.bd, align 4, !tbaa !102
  %i.kd = load i32, ptr %i.fl, align 8, !tbaa !112
  %i.ke = load i32, ptr %i.fn, align 4, !tbaa !113
  %i.kf = tail call fastcc i32 @alloc_slice(ptr noundef nonnull %i.jz, i32 noundef %i.ka, i32 noundef %i.kb, i32 noundef %i.kc, i32 noundef %i.kd, i32 noundef %i.ke, i32 noundef 0) ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %fill_ones.exit
  br i1 %.not225, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kh = load ptr, ptr %i.dx, align 16, !tbaa !44
  %i.ki = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !119
  %i.kl = tail call i32 @ff_init_gamma_convert(ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %i.kk) #8 ; 2 uses
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0197 = phi i32 [ 0, %bb.ac ], [ 1, %bb.ad ]   ; 3 uses
  %.pre = load ptr, ptr %i.dx, align 16, !tbaa !44 ; 2 uses
  br i1 %i.ah, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.kn = zext nneg i32 %.0197 to i64             ; 2 uses
  %i.ko = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %i.kn
  %i.kp = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 152
  %i.kr = tail call i32 @ff_init_desc_fmt_convert(ptr noundef %i.ko, ptr noundef %i.kp, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.ba) #8 ; 2 uses
  %i.ks = icmp slt i32 %i.kr, 0
  br i1 %i.ks, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !120
  %i.kv = load ptr, ptr %i.dx, align 16, !tbaa !44 ; 2 uses
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %i.kv, i64 %i.kn
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store i32 %i.ku, ptr %i.kx, align 8, !tbaa !122
  %i.ky = add nuw nsw i32 %.0197, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.kz = phi ptr [ %i.kv, %bb.ag ], [ %.pre, %bb.ae ]
  %.1198 = phi i32 [ %i.ky, %bb.ag ], [ %.0197, %bb.ae ] ; 3 uses
  %.0195 = phi i64 [ 1, %bb.ag ], [ 0, %bb.ae ]
  %i.la = zext nneg i32 %.1198 to i64             ; 2 uses
  %i.lb = getelementptr inbounds nuw [40 x i8], ptr %i.kz, i64 %i.la
  %i.lc = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.ld = getelementptr inbounds nuw [152 x i8], ptr %i.lc, i64 %.0195
  %i.le = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.lf = getelementptr inbounds nuw [152 x i8], ptr %i.lc, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.lh = load ptr, ptr %i.lg, align 16, !tbaa !123
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !124
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.ll = load i32, ptr %i.lk, align 16, !tbaa !125
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ln = load i32, ptr %i.lm, align 16, !tbaa !126
  %i.lo = tail call i32 @ff_init_desc_hscale(ptr noundef %i.lb, ptr noundef %i.ld, ptr noundef nonnull %i.lf, ptr noundef %i.lh, ptr noundef %i.lj, i32 noundef %i.ll, i32 noundef %i.ln) #8 ; 2 uses
  %i.lp = icmp slt i32 %i.lo, 0
  br i1 %i.lp, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !120
  %i.ls = load ptr, ptr %i.dx, align 16, !tbaa !44 ; 2 uses
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.ls, i64 %i.la
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i32 %i.lr, ptr %i.lu, align 8, !tbaa !122
  %i.lv = add nuw nsw i32 %.1198, 1               ; 2 uses
  br i1 %i.an, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [40 x i8], ptr %i.ls, i64 %i.lw
  %i.ly = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 152
  %i.ma = tail call i32 @ff_init_desc_cfmt_convert(ptr noundef nonnull %i.lx, ptr noundef %i.ly, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.ba) #8 ; 2 uses
  %i.mb = icmp slt i32 %i.ma, 0
  br i1 %i.mb, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mc = add nuw nsw i32 %.1198, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.2 = phi i32 [ %i.mc, %bb.ak ], [ %i.lv, %bb.ai ] ; 3 uses
  %.1196 = phi i64 [ 1, %bb.ak ], [ 0, %bb.ai ]
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 53168
  %i.me = load i32, ptr %i.md, align 16, !tbaa !127
  %.not230 = icmp eq i32 %i.me, 0
  %i.mf = load ptr, ptr %i.dx, align 16, !tbaa !44
  %i.mg = zext nneg i32 %.2 to i64
  %i.mh = getelementptr inbounds nuw [40 x i8], ptr %i.mf, i64 %i.mg ; 2 uses
  %i.mi = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.mj = getelementptr inbounds nuw [152 x i8], ptr %i.mi, i64 %.1196 ; 2 uses
  %i.mk = getelementptr inbounds nuw [152 x i8], ptr %i.mi, i64 %i.le ; 2 uses
  br i1 %.not230, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !128
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !129
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 3652
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !130
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !131
  %i.mt = tail call i32 @ff_init_desc_chscale(ptr noundef nonnull %i.mh, ptr noundef %i.mj, ptr noundef nonnull %i.mk, ptr noundef %i.mm, ptr noundef %i.mo, i32 noundef %i.mq, i32 noundef %i.ms) #8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.mu = tail call i32 @ff_init_desc_no_chr(ptr noundef nonnull %i.mh, ptr noundef %i.mj, ptr noundef nonnull %i.mk) #8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0 = phi i32 [ %i.mt, %bb.am ], [ %i.mu, %bb.an ] ; 2 uses
  %i.mv = icmp slt i32 %.0, 0
  br i1 %i.mv, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mw = load i32, ptr %i.cz, align 4, !tbaa !42 ; 2 uses
  %i.mx = add nsw i32 %i.mw, -1
  %i.my = load ptr, ptr %i.dx, align 16, !tbaa !44
  %i.mz = zext nneg i32 %.2 to i64
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.my, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nc = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.nd = sext i32 %i.mw to i64
  %i.ne = getelementptr [152 x i8], ptr %i.nc, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 -304
  %i.ng = sext i32 %i.mx to i64                   ; 2 uses
  %i.nh = getelementptr inbounds [152 x i8], ptr %i.nc, i64 %i.ng
  %i.ni = tail call i32 @ff_init_vscale(ptr noundef nonnull %0, ptr noundef nonnull %i.nb, ptr noundef %i.nf, ptr noundef %i.nh) #8 ; 2 uses
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not225, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.nk = load ptr, ptr %i.dx, align 16, !tbaa !44
  %i.nl = zext nneg i32 %.2 to i64
  %i.nm = getelementptr inbounds nuw [40 x i8], ptr %i.nk, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 80
  %i.no = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.np = getelementptr inbounds [152 x i8], ptr %i.no, i64 %i.ng
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !132
  %i.ns = tail call i32 @ff_init_gamma_convert(ptr noundef nonnull %i.nn, ptr noundef %i.np, ptr noundef %i.nr) #8 ; 2 uses
  %i.nt = icmp slt i32 %i.ns, 0
  br i1 %i.nt, label %.loopexit, label %bb.as

.loopexit:                                        ; preds = %bb.y, %bb.x, %bb.v, %bb.ar, %bb.ap, %bb.ao, %bb.aj, %bb.ah, %bb.af, %bb.ad, %fill_ones.exit, %bb.aa, %._crit_edge, %bb.w
  %.1 = phi i32 [ %i.ek, %bb.w ], [ %i.ns, %bb.ar ], [ -12, %bb.v ], [ %i.fp, %._crit_edge ], [ %i.fu, %bb.aa ], [ %i.kf, %fill_ones.exit ], [ %i.kl, %bb.ad ], [ %i.kr, %bb.af ], [ %i.lo, %bb.ah ], [ %i.ma, %bb.aj ], [ %.0, %bb.ao ], [ %i.ni, %bb.ap ], [ %i.fc, %bb.y ], [ %i.eu, %bb.x ]
  %i.nu = tail call i32 @ff_free_filters(ptr noundef nonnull %0) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %isFloat16.exit.thread, %bb.t, %.loopexit
  %.0200 = phi i32 [ %.1, %.loopexit ], [ -12, %isFloat16.exit.thread ], [ -12, %bb.t ], [ 0, %bb.ar ], [ 0, %bb.aq ]
  ret i32 %.0200
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare void @ff_init_half2float_tables(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @alloc_slice(ptr nofree noundef writeonly captures(none) initializes((4, 24), (40, 48)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %5, ptr %i.b, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.c, align 4, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %6, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !47
  %i.f = icmp eq i32 %6, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.f, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.h = mul nsw i32 %2, 3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 8) #8 ; 3 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !21
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %.critedge, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  %i.k = sext i32 %2 to i64                       ; 2 uses
  %i.l = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #8 ; 2 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !21
  %.not.not.us = icmp eq ptr %i.l, null
  br i1 %.not.not.us, label %.critedge, label %.split.us.1

.split.us.1:                                      ; preds = %.split.us.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !48
  store i32 %2, ptr %i.g, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.n, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.o, align 8, !tbaa !15
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = tail call noalias ptr @av_calloc(i64 noundef %i.p, i64 noundef 8) #8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.q, ptr %i.r, align 8, !tbaa !21
  %.not.not.us.1 = icmp eq ptr %i.q, null
  br i1 %.not.not.us.1, label %.critedge, label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.t, align 8, !tbaa !48
  store i32 %3, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.v, align 8, !tbaa !15
  %i.w = tail call noalias ptr @av_calloc(i64 noundef %i.p, i64 noundef 8) #8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.w, ptr %i.x, align 8, !tbaa !21
  %.not.not.us.2 = icmp eq ptr %i.w, null
  br i1 %.not.not.us.2, label %.critedge, label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.z, align 8, !tbaa !48
  store i32 %3, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.aa, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.ab, align 8, !tbaa !15
  %i.ac = tail call noalias ptr @av_calloc(i64 noundef %i.k, i64 noundef 8) #8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !21
  %.not.not.us.3 = icmp eq ptr %i.ac, null
  br i1 %.not.not.us.3, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.split.us.3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.af, align 8, !tbaa !48
  store i32 %2, ptr %i.ae, align 8, !tbaa !13
  br label %.critedge.sink.split

.split.1:                                         ; preds = %.split.preheader
  %i.ag = shl nsw i32 %2, 1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !48
  store i32 %2, ptr %i.g, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ak, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !15
  %i.am = mul nsw i32 %3, 3
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 8) #8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !21
  %.not.not.1 = icmp eq ptr %i.ao, null
  br i1 %.not.not.1, label %.critedge, label %.split.2

.split.2:                                         ; preds = %.split.1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = shl nsw i32 %3, 1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.at, ptr %i.au, align 8, !tbaa !48
  store i32 %3, ptr %i.aq, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.av, align 4, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.aw, align 8, !tbaa !15
  %i.ax = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 8) #8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !21
  %.not.not.2 = icmp eq ptr %i.ax, null
  br i1 %.not.not.2, label %.critedge, label %.split.3

.split.3:                                         ; preds = %.split.2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !48
  store i32 %3, ptr %i.az, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.bd, align 8, !tbaa !15
  %i.be = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 8) #8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !21
  %.not.not.3 = icmp eq ptr %i.be, null
  br i1 %.not.not.3, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.split.3
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ah
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !48
  store i32 %2, ptr %i.bg, align 8, !tbaa !13
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.b, %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.bj, align 4, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.bk, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.split.preheader, %.split.1, %.split.2, %.split.3, %.split.us.preheader, %.split.us.1, %.split.us.2, %.split.us.3
  %.us-phi = phi i32 [ -12, %.split.us.2 ], [ -12, %.split.us.preheader ], [ -12, %.split.3 ], [ -12, %.split.us.1 ], [ -12, %.split.us.3 ], [ -12, %.split.2 ], [ -12, %.split.preheader ], [ -12, %.split.1 ], [ 0, %.critedge.sink.split ]
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @alloc_lines(ptr nofree noundef captures(none) initializes((0, 4), (16, 20)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.a, align 8, !tbaa !47
  store i32 %2, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = shl nsw i32 %1, 1
  %i.d = add nsw i32 %i.c, 32
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not5052 = icmp sgt i32 %i.h, 0
  br i1 %.not5052, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = zext nneg i32 %i.h to i64                ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.critedge, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 59) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.o = tail call noalias ptr @av_mallocz(i64 noundef %i.e) #8 ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !19
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit59, label %bb.d

.loopexit59:                                      ; preds = %bb.c, %bb.g
  tail call fastcc void @free_lines(ptr noundef nonnull %0)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !19
  %i.v = load i32, ptr %i.g, align 4, !tbaa !46
  %.not51 = icmp eq i32 %i.v, 0
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.x = add nuw nsw i64 %indvars.iv, %i.n        ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.x
  store ptr %i.w, ptr %i.y, align 8, !tbaa !19
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !136

.critedge:                                        ; preds = %bb.f, %.preheader
end_hunk_0

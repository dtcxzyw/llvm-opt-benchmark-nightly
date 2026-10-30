Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qcelpdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@qcelp_decode_frame:bb.a
  store ptr %.097, ptr %i.n, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %.013.i.i, ptr %i.az, align 4, !tbaa !60
  %i.ba = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !62
  br i1 %.not140, label %bb.at, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(71) %i.ax, i8 0, i64 71, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %i.bd = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.v ] ; 3 uses
  %.0122 = phi ptr [ %i.as, %.lr.ph ], [ %i.cc, %bb.v ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0122, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = lshr i32 %i.bd, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.097, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !30
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.bm = and i32 %i.bd, 7
  %i.bn = shl i32 %i.bl, %i.bm
  %i.bo = sub nsw i32 32, %i.bg
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = add i32 %i.bd, %i.bg
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.bq) ; 2 uses
  store i32 %i.br, ptr %i.bc, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !65
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl i32 %i.bp, %i.bu
  %i.bw = load i8, ptr %.0122, align 1, !tbaa !66
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !30
  %i.ca = trunc i32 %i.bv to i8
  %i.cb = or i8 %i.bz, %i.ca
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.0122, i64 3 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.aw
  br i1 %i.cd, label %bb.v, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 98
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !67
  %.not = icmp eq i8 %.pre, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.12, i64 noundef %i.cf, ptr noundef nonnull @.str.4) #8
  br label %.thread117

bb.x:                                             ; preds = %._crit_edge
  %i.cg = icmp eq i32 %i.ad, 2
  br i1 %i.cg, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 45
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = load i8, ptr %i.ch, align 4, !tbaa !30
  %i.cm = zext i8 %i.cl to i32
  %i.cn = sub nsw i32 %i.ck, %i.cm                ; 2 uses
  %i.co = add nsw i32 %i.cn, -11
  %i.cp = icmp ult i32 %i.co, -21
  br i1 %i.cp, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 46
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !30
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = sub nsw i32 %i.cs, %i.ck                ; 3 uses
  %i.cu = add nsw i32 %i.ct, -11
  %i.cv = icmp ult i32 %i.cu, -21
  br i1 %i.cv, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %reass.sub = sub nsw i32 %i.ct, %i.cn
  %i.cw = add nsw i32 %reass.sub, -13
  %i.cx = icmp ult i32 %i.cw, -25
  br i1 %i.cx, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 47
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !30
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = sub nsw i32 %i.da, %i.cs                ; 3 uses
  %i.dc = add nsw i32 %i.db, -11
  %i.dd = icmp ult i32 %i.dc, -21
  br i1 %i.dd, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %reass.sub128 = sub nsw i32 %i.db, %i.ct
  %i.de = add nsw i32 %reass.sub128, -13
  %i.df = icmp ult i32 %i.de, -25
  br i1 %i.df, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !30
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 %i.di, %i.da                ; 2 uses
  %i.dk = add nsw i32 %i.dj, -11
  %i.dl = icmp ult i32 %i.dk, -21
  br i1 %i.dl, label %codebook_sanity_check_for_rate_quarter.exit.thread, label %codebook_sanity_check_for_rate_quarter.exit

codebook_sanity_check_for_rate_quarter.exit:      ; preds = %bb.ad
  %reass.sub129 = sub nsw i32 %i.dj, %i.db
  %i.dm = add nsw i32 %reass.sub129, 12
  %i.dn = icmp ult i32 %i.dm, 25
  br i1 %i.dn, label %.thread114, label %codebook_sanity_check_for_rate_quarter.exit.thread

codebook_sanity_check_for_rate_quarter.exit.thread: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac, %bb.y, %bb.ad, %codebook_sanity_check_for_rate_quarter.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.12, i64 noundef %i.dp, ptr noundef nonnull @.str.5) #8
  br label %.thread117

bb.ae:                                            ; preds = %bb.x
  %i.dq = icmp samesign ugt i32 %i.ad, 2
  br i1 %i.dq, label %.preheader, label %.thread114

.preheader:                                       ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !30
  %.not90 = icmp eq i8 %i.ds, 0
  br i1 %.not90, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !30
  %i.dv = icmp ugt i8 %i.du, 123
  br i1 %i.dv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.am, %bb.ak, %bb.ai, %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.12, i64 noundef %i.dx, ptr noundef nonnull @.str.6) #8
  br label %.thread117

bb.ah:                                            ; preds = %.preheader, %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.n, i64 81
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30
  %.not90.1 = icmp eq i8 %i.dz, 0
  br i1 %.not90.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 77
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30
  %i.ec = icmp ugt i8 %i.eb, 123
  br i1 %i.ec, label %bb.ag, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 82
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !30
  %.not90.2 = icmp eq i8 %i.ee, 0
  br i1 %.not90.2, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 78
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !30
  %i.eh = icmp ugt i8 %i.eg, 123
  br i1 %i.eh, label %bb.ag, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 83
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !30
  %.not90.3 = icmp eq i8 %i.ej, 0
  br i1 %.not90.3, label %.thread114, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 79
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.em = icmp ugt i8 %i.el, 123
  br i1 %i.em, label %bb.ag, label %.thread114

.thread114:                                       ; preds = %bb.al, %bb.am, %codebook_sanity_check_for_rate_quarter.exit, %bb.ae, %bb.t
  %i.en = phi ptr [ %i.ap, %bb.t ], [ %i.ai, %codebook_sanity_check_for_rate_quarter.exit ], [ %i.ai, %bb.ae ], [ %i.ai, %bb.am ], [ %i.ai, %bb.al ] ; 4 uses
  call fastcc void @decode_gain_and_index(ptr noundef nonnull %i.n, ptr noundef %i.h)
  call fastcc void @compute_svector(ptr noundef nonnull %i.n, ptr noundef %i.h, ptr noundef %i.r)
  %i.eo = call fastcc i32 @decode_lspf(ptr noundef nonnull %i.n, ptr noundef %i.f)
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread114
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !56
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.12, i64 noundef %i.er, ptr noundef nonnull @.str.7) #8
  br label %.thread117

bb.ao:                                            ; preds = %.thread114
  call fastcc void @apply_pitch_filters(ptr noundef nonnull %i.n, ptr noundef %i.r)
  %i.es = load i32, ptr %i.en, align 8, !tbaa !37 ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %.thread117, label %bb.ap

.thread117:                                       ; preds = %bb.ag, %codebook_sanity_check_for_rate_quarter.exit.thread, %bb.w, %bb.ao, %bb.an, %bb.s, %determine_bitrate.exit.thread
  %i.eu = phi ptr [ %i.en, %bb.ao ], [ %i.en, %bb.an ], [ %i.af, %determine_bitrate.exit.thread ], [ %i.ai, %bb.s ], [ %i.ai, %bb.w ], [ %i.ai, %codebook_sanity_check_for_rate_quarter.exit.thread ], [ %i.ai, %bb.ag ] ; 3 uses
  store i32 -1, ptr %i.eu, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 99 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !40
  %i.ex = add i8 %i.ew, 1
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !40
  call fastcc void @decode_gain_and_index(ptr noundef nonnull %i.n, ptr noundef %i.h)
  call fastcc void @compute_svector(ptr noundef nonnull %i.n, ptr noundef %i.h, ptr noundef %i.r)
  %i.ey = call fastcc i32 @decode_lspf(ptr noundef nonnull %i.n, ptr noundef %i.f) ; 0 uses
  call fastcc void @apply_pitch_filters(ptr noundef nonnull %i.n, ptr noundef %i.r)
  %.pre132 = load i32, ptr %i.eu, align 8, !tbaa !37
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 99
  store i8 0, ptr %i.ez, align 1, !tbaa !40
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread117
  %4 = phi i32 [ %i.es, %bb.ap ], [ %.pre132, %.thread117 ] ; 2 uses
  %i.fa = phi ptr [ %i.en, %bb.ap ], [ %i.eu, %.thread117 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 3368 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.fd = icmp sgt i32 %4, 1
  br i1 %i.fd, label %.thread.i93, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  switch i32 %4, label %interpolate_lpc.exit [
    i32 1, label %.thread.i93
    i32 -1, label %interpolate_lpc.exit.sink.split
    i32 0, label %bb.as
  ]

.thread.i93:                                      ; preds = %bb.ar, %bb.aq
  %.027.i = phi float [ 6.250000e-01, %bb.ar ], [ 2.500000e-01, %bb.aq ] ; 2 uses
  %i.fe = fsub nsz float 1.000000e+00, %.027.i
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.fc, float noundef %.027.i, float noundef %i.fe, i32 noundef 10) #8
  br label %interpolate_lpc.exit.sink.split

bb.as:                                            ; preds = %bb.ar
  br label %interpolate_lpc.exit.sink.split

interpolate_lpc.exit.sink.split:                  ; preds = %bb.ar, %bb.as, %.thread.i93
  %.sink = phi ptr [ %i.e, %.thread.i93 ], [ %i.fc, %bb.as ], [ %i.f, %bb.ar ]
  call fastcc void @lspf2lpc(ptr noundef nonnull %.sink, ptr noundef nonnull %i.g)
  br label %interpolate_lpc.exit

interpolate_lpc.exit:                             ; preds = %interpolate_lpc.exit.sink.split, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.g, ptr noundef %i.r, i32 noundef 40, i32 noundef 10) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 3528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.fg = load i32, ptr %i.fa, align 8, !tbaa !37
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %.thread.i93.1, label %interpolate_lpc.exit.1

.thread.i93.1:                                    ; preds = %interpolate_lpc.exit
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.fc, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #8
  call fastcc void @lspf2lpc(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g)
  br label %interpolate_lpc.exit.1

interpolate_lpc.exit.1:                           ; preds = %interpolate_lpc.exit, %.thread.i93.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.g, ptr noundef nonnull %i.fi, i32 noundef 40, i32 noundef 10) #8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 3688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.fk = load i32, ptr %i.fa, align 8, !tbaa !37
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %.thread.i93.2, label %interpolate_lpc.exit.2

.thread.i93.2:                                    ; preds = %interpolate_lpc.exit.1
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.fc, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #8
  call fastcc void @lspf2lpc(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g)
  br label %interpolate_lpc.exit.2

interpolate_lpc.exit.2:                           ; preds = %interpolate_lpc.exit.1, %.thread.i93.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.fj, ptr noundef nonnull %i.g, ptr noundef nonnull %i.fm, i32 noundef 40, i32 noundef 10) #8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 3848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.fo = load i32, ptr %i.fa, align 8, !tbaa !37
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %.thread30.i.3, label %interpolate_lpc.exit.3

.thread30.i.3:                                    ; preds = %interpolate_lpc.exit.2
  call fastcc void @lspf2lpc(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %interpolate_lpc.exit.3

interpolate_lpc.exit.3:                           ; preds = %interpolate_lpc.exit.2, %.thread30.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 480
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.g, ptr noundef nonnull %i.fq, i32 noundef 40, i32 noundef 10) #8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 3328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.fs = load <4 x float>, ptr %i.g, align 16, !tbaa !31 ; 2 uses
  %i.ft = fmul nsz <4 x float> %i.fs, <float 6.250000e-01, float 3.906250e-01, float 2.441410e-01, float 1.525880e-01>
  store <4 x float> %i.ft, ptr %i.a, align 16, !tbaa !31
  %i.fu = fmul nsz <4 x float> %i.fs, <float f0x3F466666, float 6.006250e-01, float 4.654840e-01, float 3.607500e-01>
  store <4 x float> %i.fu, ptr %i.b, align 16, !tbaa !31
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fy = load <4 x float>, ptr %i.fv, align 16, !tbaa !31 ; 2 uses
  %i.fz = fmul nsz <4 x float> %i.fy, <float 9.536700e-02, float 5.960500e-02, float 3.725300e-02, float 2.328300e-02>
  store <4 x float> %i.fz, ptr %i.fw, align 16, !tbaa !31
  %i.ga = fmul nsz <4 x float> %i.fy, <float 2.795820e-01, float 2.166760e-01, float 1.679240e-01, float 1.301410e-01>
  store <4 x float> %i.ga, ptr %i.fx, align 16, !tbaa !31
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ge = load <2 x float>, ptr %i.gb, align 16, !tbaa !31 ; 2 uses
  %i.gf = fmul nsz <2 x float> %i.ge, <float 1.455200e-02, float 9.095000e-03>
  store <2 x float> %i.gf, ptr %i.gc, align 16, !tbaa !31
  %i.gg = fmul nsz <2 x float> %i.ge, <float 1.008590e-01, float 7.816600e-02>
  store <2 x float> %i.gg, ptr %i.gd, align 16, !tbaa !31
  call void @ff_celp_lp_zero_synthesis_filterf(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fb, i32 noundef 160, i32 noundef 10) #8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 4048 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i64 40, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 160, i32 noundef 10) #8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 16 dereferenceable(40) %i.gj, i64 40, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 4092
  call void @ff_tilt_compensation(ptr noundef nonnull %i.gk, float noundef 3.000000e-01, ptr noundef nonnull %i.gi, i32 noundef 160) #8
  %i.gl = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fb, i32 noundef 160) #8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 4088
  call void @ff_adaptive_gain_control(ptr noundef nonnull %i.r, ptr noundef nonnull %i.gi, float noundef %i.gl, i32 noundef 160, float noundef 9.375000e-01, ptr noundef nonnull %i.gm) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 3968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull align 8 dereferenceable(40) %i.gn, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 16 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.go = load i32, ptr %i.fa, align 8, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %i.n, i64 4020
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !41
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.u, %bb.a, %interpolate_lpc.exit.3
  %.185 = phi i32 [ %i.p, %bb.a ], [ %i.l, %interpolate_lpc.exit.3 ], [ -1094995529, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  ret i32 %.185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decode_gain_and_index(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %.fr = freeze i32 %i.c                          ; 5 uses
  %i.d = icmp sgt i32 %.fr, 1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp81 = icmp eq i32 %.fr, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  br i1 %switch.selectcmp81, label %.split, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.b
  %switch.selectcmp = icmp eq i32 %.fr, 3         ; 2 uses
  %switch.select = select i1 %switch.selectcmp, i64 4, i64 5 ; 3 uses
  %i.h = load i8, ptr %i.f, align 4, !tbaa !30
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 2                  ; 2 uses
  store i32 %i.j, ptr %i.a, align 16, !tbaa !29
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.k
  %i.m = load float, ptr %i.l, align 16, !tbaa !31 ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !31
  %i.n = load i8, ptr %i.e, align 4, !tbaa !30
  %.not80.us = icmp eq i8 %i.n, 0
  br i1 %.not80.us, label %.split.us.1, label %bb.c

bb.c:                                             ; preds = %.split.us.preheader
  %i.o = fneg nsz float %i.m
  store float %i.o, ptr %1, align 4, !tbaa !31
  %i.p = load i8, ptr %i.g, align 4, !tbaa !30
  %i.q = add i8 %i.p, 39
  %i.r = and i8 %i.q, 127
  store i8 %i.r, ptr %i.g, align 4, !tbaa !30
  br label %.split.us.1

.split.us.1:                                      ; preds = %.split.us.preheader, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.x
  %i.z = load float, ptr %i.y, align 16, !tbaa !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !31
end_hunk_0

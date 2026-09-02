Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apv_decode?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@apv_receive_frame:bb.a
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !84
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = and i32 %i.bu, 1
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = add nuw nsw i32 %i.bu, 8
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %i.bw) #7
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !85
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr @apv_format_table, i64 %i.bz
  %i.cb = add nsw i32 %i.bu, -2
  %i.cc = ashr exact i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !53 ; 4 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #7
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.ch = load i32, ptr %i.l, align 8, !tbaa !86
  %.not53.i.i.i = icmp eq i32 %i.ch, %i.bl
  br i1 %.not53.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = load i32, ptr %i.m, align 4, !tbaa !87
  %.not54.i.i.i = icmp eq i32 %i.ci, %i.bp
  br i1 %.not54.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cj = call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.bl, i32 noundef %i.bp) #7 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.pre.i.i.i = load i32, ptr %i.bi, align 4, !tbaa !82
  %.pre57.i.i.i = load i32, ptr %i.bm, align 4, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i, %bb.n
  %i.cl = phi i32 [ %.pre57.i.i.i, %._crit_edge.i.i.i ], [ %i.bn, %bb.n ]
  %i.cm = phi i32 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bj, %bb.n ]
  store i32 %i.cm, ptr %i.n, align 8, !tbaa !88
  store i32 %i.cl, ptr %i.o, align 4, !tbaa !89
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 188 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !39
  %.not55.i.i.i = icmp eq i32 %i.cf, %i.co
  br i1 %.not55.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cf, ptr %i.cn, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !53
  store i32 -1, ptr %i.p, align 4, !tbaa !53
  %i.cp = call i32 @ff_get_format(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cp, ptr %i.q, align 8, !tbaa !90
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.j
  %.0.i.ph.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cj, %bb.o ], [ -1163346256, %bb.l ], [ -1163346256, %bb.j ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #7
  br label %apv_decode_metadata.exit.i

bb.t:                                             ; preds = %bb.r, %bb.p
  store i32 1, ptr %i.r, align 8, !tbaa !53
  store i32 1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.be, i64 26
  %i.cs = load <2 x i8>, ptr %i.cr, align 2, !tbaa !47
  %i.ct = zext <2 x i8> %i.cs to <2 x i32>
  store <2 x i32> %i.ct, ptr %i.s, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !91
  %i.cw = zext i8 %i.cv to i32
  store i32 %i.cw, ptr %i.t, align 8, !tbaa !92
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 29
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !93
  %.not56.i.i.i = icmp eq i8 %i.cy, 0
  %i.cz = select i1 %.not56.i.i.i, i32 1, i32 2
  store i32 %i.cz, ptr %i.u, align 4, !tbaa !94
  store i32 3, ptr %i.v, align 8, !tbaa !95
  store i32 0, ptr %i.w, align 8, !tbaa !96
  store i32 0, ptr %i.x, align 4, !tbaa !97
  %i.da = load i32, ptr %i.y, align 8, !tbaa !98
  %i.db = icmp eq i32 %i.da, 48
  br i1 %i.db, label %apv_decode_metadata.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load i32, ptr %i.cn, align 4, !tbaa !39
  %i.dd = call ptr @av_pix_fmt_desc_get(i32 noundef %i.dc) #7 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 374) #7
  call void @abort() #8
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.de = call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %apv_decode_metadata.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  store ptr %i.be, ptr %i.dg, align 8, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bf, i64 168
  store ptr %1, ptr %i.dh, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %i.bf, i64 184 ; 2 uses
  store atomic i32 0, ptr %i.di monotonic, align 8
  %i.dj = load i32, ptr %i.bi, align 4, !tbaa !82
  %i.dk = add i32 %i.dj, 15                       ; 2 uses
  %i.dl = lshr i32 %i.dk, 4                       ; 2 uses
  %i.dm = load i32, ptr %i.bm, align 4, !tbaa !83
  %i.dn = add i32 %i.dm, 15                       ; 2 uses
  %i.do = lshr i32 %i.dn, 4                       ; 2 uses
  %.not.i98.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i98.i.i, label %._crit_edge.i99.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !100
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.y ] ; 2 uses
  %.03034.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.du, %bb.y ] ; 2 uses
  %.030.tr.i.i.i = trunc i32 %.03034.i.i.i to i16
  %i.ds = shl i16 %.030.tr.i.i.i, 4
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !55
  %i.du = add i32 %.03034.i.i.i, %i.dr            ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.dl
  br i1 %i.dv, label %bb.y, label %._crit_edge.loopexit.i.i.i, !llvm.loop !68

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.y
  %i.dw = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %._crit_edge.i99.i.i

._crit_edge.i99.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.x
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.x ], [ %i.dw, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.dx = trunc i32 %i.dk to i16
  %i.dy = and i16 %i.dx, -16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  %i.ea = zext nneg i32 %.0.lcssa.i.i.i to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.ea
  store i16 %i.dy, ptr %i.eb, align 2, !tbaa !55
  %i.ec = trunc i32 %.0.lcssa.i.i.i to i8
  store i8 %i.ec, ptr %i.bg, align 8, !tbaa !57
  %.not42.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not42.i.i.i, label %apv_derive_tile_info.exit.i.i, label %.lr.ph39.i.i.i

.lr.ph39.i.i.i:                                   ; preds = %._crit_edge.i99.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bf, i64 110
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 292
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !101
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph39.i.i.i
  %indvars.iv45.i.i.i = phi i64 [ 0, %.lr.ph39.i.i.i ], [ %indvars.iv.next46.i.i.i, %bb.z ] ; 2 uses
  %.13136.i.i.i = phi i32 [ 0, %.lr.ph39.i.i.i ], [ %i.ei, %bb.z ] ; 2 uses
  %.131.tr.i.i.i = trunc i32 %.13136.i.i.i to i16
  %i.eg = shl i16 %.131.tr.i.i.i, 4
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %indvars.iv45.i.i.i
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !55
  %i.ei = add i32 %.13136.i.i.i, %i.ef            ; 2 uses
  %indvars.iv.next46.i.i.i = add nuw nsw i64 %indvars.iv45.i.i.i, 1 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %i.do
  br i1 %i.ej, label %bb.z, label %._crit_edge40.loopexit.i.i.i, !llvm.loop !69

._crit_edge40.loopexit.i.i.i:                     ; preds = %bb.z
  %i.ek = trunc nuw i64 %indvars.iv.next46.i.i.i to i32
  br label %apv_derive_tile_info.exit.i.i

apv_derive_tile_info.exit.i.i:                    ; preds = %._crit_edge40.loopexit.i.i.i, %._crit_edge.i99.i.i
  %.1.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i99.i.i ], [ %i.ek, %._crit_edge40.loopexit.i.i.i ] ; 3 uses
  %i.el = trunc i32 %i.dn to i16
  %i.em = and i16 %i.el, -16
  %i.en = getelementptr inbounds nuw i8, ptr %i.bf, i64 110
  %i.eo = zext nneg i32 %.1.lcssa.i.i.i to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.eo
  store i16 %i.em, ptr %i.ep, align 2, !tbaa !55
  %i.eq = trunc i32 %.1.lcssa.i.i.i to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bf, i64 65
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !102
  %2 = trunc i32 %.0.lcssa.i.i.i to i16
  %3 = and i16 %2, 255
  %4 = trunc i32 %.1.lcssa.i.i.i to i16
  %5 = and i16 %4, 255
  %6 = mul nuw i16 %5, %3
  %i.es = getelementptr inbounds nuw i8, ptr %i.bf, i64 66 ; 4 uses
  store i16 %6, ptr %i.es, align 2, !tbaa !103
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !104
  %.not93.i.i = icmp eq ptr %i.et, null
  br i1 %.not93.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %apv_derive_tile_info.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bf, i64 176
  %i.ev = call i32 @ff_hwaccel_frame_priv_alloc(ptr noundef nonnull %0, ptr noundef nonnull %i.eu) #7 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %apv_decode_metadata.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %apv_derive_tile_info.exit.i.i
  call void @ff_thread_finish_setup(ptr noundef nonnull %0) #7
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !104 ; 4 uses
  %.not94.i.i = icmp eq ptr %i.ex, null
  br i1 %.not94.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !107
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !109
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !110
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !111
  %i.fh = call i32 %i.ez(ptr noundef nonnull %0, ptr noundef %i.fc, ptr noundef %i.fe, i32 noundef %i.fg) #7, !inline_history !70 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %apv_decode_metadata.exit.i, label %.preheader109.i.i

.preheader109.i.i:                                ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !59  ; 2 uses
  %.not97112.not.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not97112.not.i.i, label %.thread103.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader109.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.be, i64 3504
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %.pre.i.i = load i16, ptr %i.es, align 2, !tbaa !103
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i
  %i.fn = phi i8 [ %i.fk, %.preheader.lr.ph.i.i ], [ %i.gb, %._crit_edge.i.i ]
  %i.fo = phi i16 [ %.pre.i.i, %.preheader.lr.ph.i.i ], [ %i.gc, %._crit_edge.i.i ]
  %indvars.iv116.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next117.i.i, %._crit_edge.i.i ] ; 3 uses
  %.not96110.not.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not96110.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fp = load i16, ptr %i.es, align 2, !tbaa !103 ; 2 uses
  %i.fq = zext i16 %i.fp to i64
  %.not96.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.fq
  br i1 %.not96.i.i, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !71

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr %i.fl, i64 %indvars.iv.i.i ; 2 uses
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !112
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv116.i.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv116.i.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !53
  %i.fz = call i32 %i.fs(ptr noundef nonnull %0, ptr noundef %i.fv, i32 noundef %i.fy) #7, !inline_history !70 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -1
  br i1 %i.ga, label %bb.ad, label %apv_decode_metadata.exit.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.ad
  %.pre119.i.i = load i8, ptr %i.fj, align 8, !tbaa !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.gb = phi i8 [ %.pre119.i.i, %._crit_edge.loopexit.i.i ], [ %i.fn, %.preheader.i.i ] ; 2 uses
  %i.gc = phi i16 [ %i.fp, %._crit_edge.loopexit.i.i ], [ 0, %.preheader.i.i ]
  %indvars.iv.next117.i.i = add nuw nsw i64 %indvars.iv116.i.i, 1 ; 2 uses
  %i.gd = zext i8 %i.gb to i64
  %.not97.i.i = icmp samesign ult i64 %indvars.iv.next117.i.i, %i.gd
  br i1 %.not97.i.i, label %.preheader.i.i, label %.thread103.i.i, !llvm.loop !72

.thread103.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader109.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !113
  %i.gg = call i32 %i.gf(ptr noundef nonnull %0) #7, !inline_history !70 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %apv_decode_metadata.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.thread103.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bf, i64 176
  call void @av_refstruct_unref(ptr noundef nonnull %i.gi) #7
  br label %apv_decode_metadata.exit.i

bb.af:                                            ; preds = %bb.ab
  %i.gj = load i16, ptr %i.es, align 2, !tbaa !103
  %i.gk = zext i16 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !59
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, %i.gk
  %i.gp = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.gq = call i32 %i.gp(ptr noundef nonnull %0, ptr noundef nonnull @apv_decode_tile_component, ptr noundef nonnull %i.be, ptr noundef null, i32 noundef %i.go) #7, !inline_history !70 ; 0 uses
  %i.gr = load atomic i32, ptr %i.di monotonic, align 8 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %bb.ag, label %apv_decode_metadata.exit.i

bb.ag:                                            ; preds = %bb.af
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.gr) #7
  %i.gt = load i32, ptr %i.ab, align 8, !tbaa !115
  %i.gu = and i32 %i.gt, 8
  %.not95.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not95.i.i, label %apv_decode_metadata.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = load i32, ptr %i.ac, align 4, !tbaa !120
  %i.gw = or i32 %i.gv, 1
  store i32 %i.gw, ptr %i.ac, align 4, !tbaa !120
  br label %apv_decode_metadata.exit.i

bb.ai:                                            ; preds = %bb.h
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !81 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !122
  %.not5274.not.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not5274.not.i.i, label %.loopexit.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %bb.ai
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %.lr.ph.i51.i
  %indvars.iv.i52.i = phi i64 [ 0, %.lr.ph.i51.i ], [ %indvars.iv.next.i54.i, %bb.aq ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %indvars.iv.i52.i ; 12 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !124
  switch i32 %i.hd, label %bb.aq [
    i32 5, label %bb.ak
    i32 6, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.hf = call i32 @ff_decode_mastering_display_new(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #7
  %i.hg = icmp sgt i32 %i.hf, -1
  br i1 %i.hg, label %bb.al, label %.thread64.i.i

.thread64.i.i:                                    ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.ak
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.hh, null
  br i1 %.not51.i.i, label %.thread.i.i, label %.preheader.i55.i

.preheader.i55.i:                                 ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 14
  %i.hj = load i16, ptr %i.he, align 8, !tbaa !55
  %.sroa.0.0.insert.ext.i59.i.i = zext i16 %i.hj to i64
  %.sroa.0.0.insert.insert.i60.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i59.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i60.i.i, ptr %i.hh, align 4
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !126 ; 11 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i16, ptr %i.hi, align 2, !tbaa !55
  %.sroa.0.0.insert.ext.i61.i.i = zext i16 %i.hm to i64
  %.sroa.0.0.insert.insert.i62.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i61.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i62.i.i, ptr %i.hl, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 10
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !55
  %.sroa.0.0.insert.ext.i59.1.i.i = zext i16 %i.hp to i64
  %.sroa.0.0.insert.insert.i60.1.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i59.1.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i60.1.i.i, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hs = load i16, ptr %i.hr, align 8, !tbaa !55
  %.sroa.0.0.insert.ext.i61.1.i.i = zext i16 %i.hs to i64
  %.sroa.0.0.insert.insert.i62.1.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i61.1.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i62.1.i.i, ptr %i.hq, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.hv = load i16, ptr %i.hu, align 4, !tbaa !55
  %.sroa.0.0.insert.ext.i59.2.i.i = zext i16 %i.hv to i64
  %.sroa.0.0.insert.insert.i60.2.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i59.2.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i60.2.i.i, ptr %i.ht, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 18
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !55
  %.sroa.0.0.insert.ext.i61.2.i.i = zext i16 %i.hy to i64
  %.sroa.0.0.insert.insert.i62.2.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i61.2.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i62.2.i.i, ptr %i.hw, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.ib = load i16, ptr %i.ia, align 4, !tbaa !128
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ib to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
end_hunk_0

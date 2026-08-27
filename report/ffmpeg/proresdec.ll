Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/proresdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a

._crit_edge:                                      ; preds = %bb.bj, %bb.al
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #9
  br label %decode_picture_header.exit.thread

bb.am:                                            ; preds = %.lr.ph, %bb.bj
  %i.dw = phi i32 [ %i.ds, %.lr.ph ], [ %i.jl, %bb.bj ]
  %i.dx = phi i8 [ %i.dr, %.lr.ph ], [ %i.jk, %bb.bj ]
  %.099 = phi i32 [ %i.dk, %.lr.ph ], [ %i.je, %bb.bj ] ; 4 uses
  %.05198 = phi ptr [ %i.dj, %.lr.ph ], [ %i.jd, %bb.bj ] ; 5 uses
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !9   ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05198, i64 1
  %i.ea = load i32, ptr %i.dz, align 1, !tbaa !42
  %i.eb = tail call i32 @llvm.bswap.i32(i32 %i.ea) ; 3 uses
  %i.ec = icmp ugt i32 %i.eb, %.099
  br i1 %i.ec, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14) #9
  br label %decode_picture_header.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %.05198, i64 7
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !42  ; 2 uses
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = lshr i32 %i.ef, 4                       ; 2 uses
  %i.eh = and i32 %i.ef, 15                       ; 2 uses
  %i.ei = icmp ugt i8 %i.ee, 63
  %i.ej = icmp ne i32 %i.eh, 0
  %or.cond.i62 = or i1 %i.ei, %i.ej
  %i.ek = shl nuw nsw i32 1, %i.eg                ; 3 uses
  br i1 %or.cond.i62, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.el = shl nuw nsw i32 1, %i.eh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.ek, i32 noundef %i.el) #9
  br label %decode_picture_header.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 292 ; 2 uses
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !61
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 296
  store i32 1, ptr %i.en, align 8, !tbaa !62
  %i.eo = load i32, ptr %i.ag, align 8, !tbaa !45
  %i.ep = add nsw i32 %i.eo, 15
  %i.eq = ashr i32 %i.ep, 4                       ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 284 ; 2 uses
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  %i.et = load i32, ptr %i.es, align 8, !tbaa !34
  %.not.i63 = icmp eq i32 %i.et, 0                ; 2 uses
  %i.eu = load i32, ptr %i.ai, align 4, !tbaa !46
  %..i = select i1 %.not.i63, i32 15, i32 31
  %.149.i = select i1 %.not.i63, i32 4, i32 5
  %i.ev = add nsw i32 %..i, %i.eu
  %i.ew = ashr i32 %i.ev, %.149.i                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 288 ; 3 uses
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !64
  %i.ey = lshr i32 %i.eq, %i.eg
  %i.ez = add nsw i32 %i.ek, -1
  %i.fa = and i32 %i.eq, %i.ez
  %i.fb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fa)
  %i.fc = add i32 %i.fb, %i.ey
  %i.fd = mul i32 %i.ew, %i.fc                    ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dy, i64 280 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !65
  %.not116.i = icmp eq i32 %i.ff, %i.fd
  br i1 %.not116.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dy, i64 272
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !66 ; 2 uses
  %.not117.i = icmp eq ptr %i.fh, null
  br i1 %.not117.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dy, i64 272 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.fi) #9
  store i32 0, ptr %i.fe, align 8, !tbaa !65
  %i.fj = sext i32 %i.fd to i64
  %i.fk = tail call noalias ptr @av_calloc(i64 noundef %i.fj, i64 noundef 32) #9 ; 3 uses
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !66
  %.not118.i = icmp eq ptr %i.fk, null
  br i1 %.not118.i, label %decode_picture_header.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !65
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.fl = phi ptr [ %i.fk, %bb.at ], [ %i.fh, %bb.ar ]
  %.not119.i = icmp eq i32 %i.fd, 0
  br i1 %.not119.i, label %decode_picture_header.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = shl nsw i32 %i.fd, 1                    ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.dw
  %i.fo = icmp sgt i32 %i.fn, %.099
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16) #9
  br label %decode_picture_header.exit.thread

bb.ax:                                            ; preds = %bb.av
  %i.fp = zext nneg i8 %i.dx to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.05198, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.em, align 4, !tbaa !61 ; 2 uses
  %i.fs = icmp sgt i32 %i.fd, 0
  br i1 %i.fs, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.ax
  %.pre142.i = load i32, ptr %i.ex, align 8, !tbaa !64
  br label %bb.bf

.lr.ph.i:                                         ; preds = %bb.ax
  %i.ft = zext nneg i32 %i.fm to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ft
  %i.fv = load i32, ptr %i.er, align 4, !tbaa !63 ; 2 uses
  %i.fw = zext nneg i32 %.099 to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.05198, i64 %i.fw
  %wide.trip.count.i = zext nneg i32 %i.fd to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.be, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.be ] ; 3 uses
  %.097131.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.gh, %bb.be ] ; 2 uses
  %.098130.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.be ] ; 2 uses
  %.099129.i = phi i32 [ 0, %.lr.ph.i ], [ %.1100.i, %bb.be ] ; 3 uses
  %.0102128.i = phi i32 [ %i.fr, %.lr.ph.i ], [ %.2104.i, %bb.be ]
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %indvars.iv.i ; 5 uses
  store ptr %.097131.i, ptr %i.fy, align 8, !tbaa !67
  %i.fz = shl nuw nsw i64 %indvars.iv.i, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1, !tbaa !42
  %i.gc = sub i32 %i.fv, %.099129.i
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.1103.i = phi i32 [ %.0102128.i, %bb.ay ], [ %i.ge, %bb.az ] ; 5 uses
  %i.gd = icmp ult i32 %i.gc, %.1103.i
  %i.ge = ashr i32 %.1103.i, 1
  br i1 %i.gd, label %bb.az, label %bb.ba, !llvm.loop !69

bb.ba:                                            ; preds = %bb.az
  %i.gf = tail call i16 @llvm.bswap.i16(i16 %i.gb) ; 3 uses
  %i.gg = zext i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.097131.i, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %.099129.i, ptr %i.gi, align 8, !tbaa !71
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 %.098130.i, ptr %i.gj, align 4, !tbaa !72
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %.1103.i, ptr %i.gk, align 8, !tbaa !73
  %i.gl = zext i16 %i.gf to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !74
  %i.gn = icmp ult i16 %i.gf, 6
  br i1 %i.gn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.17) #9
  br label %decode_picture_header.exit.thread

bb.bc:                                            ; preds = %bb.ba
  %i.go = icmp ugt ptr %i.gh, %i.fx
  br i1 %i.go, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18) #9
  br label %decode_picture_header.exit.thread

bb.be:                                            ; preds = %bb.bc
  %i.gp = add nsw i32 %.1103.i, %.099129.i        ; 2 uses
  %i.gq = icmp eq i32 %i.gp, %i.fv                ; 3 uses
  %i.gr = zext i1 %i.gq to i32
  %.1.i = add nuw nsw i32 %.098130.i, %i.gr       ; 3 uses
  %.1100.i = select i1 %i.gq, i32 0, i32 %i.gp    ; 2 uses
  %.2104.i = select i1 %i.gq, i32 %i.fr, i32 %.1103.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i64, label %bb.ay, !llvm.loop !75

._crit_edge.i64:                                  ; preds = %bb.be
  %i.gs = icmp eq i32 %.1100.i, 0
  %.pre.i = load i32, ptr %i.ex, align 8, !tbaa !64 ; 2 uses
  br i1 %i.gs, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i64, %._crit_edge.thread.i
  %.pre145.i = phi i32 [ %.pre142.i, %._crit_edge.thread.i ], [ %.pre.i, %._crit_edge.i64 ] ; 2 uses
  %.098.lcssa143.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.1.i, %._crit_edge.i64 ] ; 2 uses
  %.not121.i = icmp eq i32 %.098.lcssa143.i, %.pre145.i
  br i1 %.not121.i, label %decode_picture_header.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge.i64
  %.pre146.i = phi i32 [ %.pre145.i, %bb.bf ], [ %.pre.i, %._crit_edge.i64 ]
  %.098.lcssa144.i = phi i32 [ %.098.lcssa143.i, %bb.bf ], [ %.1.i, %._crit_edge.i64 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.098.lcssa144.i, i32 noundef %.pre146.i) #9
  br label %decode_picture_header.exit.thread

decode_picture_header.exit.thread:                ; preds = %bb.as, %bb.au, %bb.bb, %bb.bd, %bb.bg, %bb.aw, %bb.ap, %bb.an, %._crit_edge
  %.2108.i75 = phi i32 [ -1094995529, %bb.ap ], [ -1094995529, %bb.bb ], [ -1094995529, %bb.bd ], [ -1094995529, %bb.an ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.aw ], [ -12, %bb.as ], [ -22, %bb.au ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %decode_frame_header.exit.thread

decode_picture_header.exit:                       ; preds = %bb.bf
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %i.gu = load ptr, ptr %i.dv, align 8, !tbaa !76
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 280 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !65
  %i.gx = tail call i32 %i.gu(ptr noundef %0, ptr noundef nonnull @decode_slice_thread, ptr noundef null, ptr noundef null, i32 noundef %i.gw) #9, !inline_history !77 ; 0 uses
  %i.gy = load i32, ptr %i.gv, align 8, !tbaa !65 ; 4 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 272
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !66 ; 10 uses
  br i1 %i.gz, label %.lr.ph.i66, label %decode_picture.exit

.lr.ph.i66:                                       ; preds = %decode_picture_header.exit
  %wide.trip.count.i67 = zext nneg i32 %i.gy to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gy, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i66
  %i.hc = and i64 %wide.trip.count.i67, 7         ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %i.he = select i1 %i.hd, i64 8, i64 %i.hc
  %n.vec = sub nsw i64 %wide.trip.count.i67, %i.he ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.in, %vector.body ]
  %vec.phi176 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.io, %vector.body ]
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %index
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 120
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 184
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 216
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 248
  %i.hv = load i32, ptr %i.hn, align 8, !tbaa !78
  %i.hw = load i32, ptr %i.ho, align 8, !tbaa !78
  %i.hx = load i32, ptr %i.hp, align 8, !tbaa !78
  %i.hy = load i32, ptr %i.hq, align 8, !tbaa !78
  %i.hz = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 1
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.hx, i64 2
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hy, i64 3
  %i.id = load i32, ptr %i.hr, align 8, !tbaa !78
  %i.ie = load i32, ptr %i.hs, align 8, !tbaa !78
  %i.if = load i32, ptr %i.ht, align 8, !tbaa !78
  %i.ig = load i32, ptr %i.hu, align 8, !tbaa !78
  %i.ih = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.ie, i64 1
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.if, i64 2
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ig, i64 3
  %i.il = lshr <4 x i32> %i.ic, splat (i32 31)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 31)
  %i.in = add <4 x i32> %i.il, %vec.phi           ; 2 uses
  %i.io = add <4 x i32> %i.im, %vec.phi176        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.io, %i.in
  %i.iq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i66, %middle.block
  %indvars.iv.i68.ph = phi i64 [ 0, %.lr.ph.i66 ], [ %n.vec, %middle.block ]
  %.018.i.ph = phi i32 [ 0, %.lr.ph.i66 ], [ %i.iq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %scalar.ph ], [ %indvars.iv.i68.ph, %scalar.ph.preheader ] ; 2 uses
  %.018.i = phi i32 [ %i.iu, %scalar.ph ], [ %.018.i.ph, %scalar.ph.preheader ]
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %indvars.iv.i68
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load i32, ptr %i.is, align 8, !tbaa !78
  %.lobit.i = lshr i32 %i.it, 31
  %i.iu = add nuw nsw i32 %.lobit.i, %.018.i      ; 3 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i67
  br i1 %exitcond.not.i70, label %._crit_edge.i71, label %scalar.ph, !llvm.loop !82

._crit_edge.i71:                                  ; preds = %scalar.ph
  %.not.i72 = icmp eq i32 %i.iu, 0
  br i1 %.not.i72, label %decode_picture.exit.thread, label %._crit_edge.thread.i65

._crit_edge.thread.i65:                           ; preds = %._crit_edge.i71
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gt, i64 120
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 320
  store i32 1, ptr %i.ix, align 8, !tbaa !83
  %i.iy = icmp slt i32 %i.iu, %i.gy
  br i1 %i.iy, label %decode_picture.exit.thread, label %decode_picture.exit

decode_picture.exit:                              ; preds = %decode_picture_header.exit, %._crit_edge.thread.i65
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !78 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 0
  br i1 %i.jb, label %bb.bh, label %decode_picture.exit.thread

bb.bh:                                            ; preds = %decode_picture.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #9
  br label %decode_frame_header.exit.thread

decode_picture.exit.thread:                       ; preds = %._crit_edge.i71, %._crit_edge.thread.i65, %decode_picture.exit
  %i.jc = zext nneg i32 %i.eb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.05198, i64 %i.jc ; 2 uses
  %i.je = sub nsw i32 %.099, %i.eb                ; 3 uses
  %i.jf = load i32, ptr %i.n, align 8, !tbaa !34
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = icmp sgt i32 %i.je, 0
  %or.cond = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %decode_picture.exit.thread
  %i.ji = load i32, ptr %i.k, align 8, !tbaa !44
  %.not61 = icmp eq i32 %i.ji, 0
  br i1 %.not61, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.k, align 8, !tbaa !44
  %i.jj = load i8, ptr %i.jd, align 1, !tbaa !42  ; 2 uses
  %i.jk = lshr i8 %i.jj, 3                        ; 2 uses
  %i.jl = zext nneg i8 %i.jk to i32               ; 2 uses
  %i.jm = icmp ult i8 %i.jj, 64
  %i.jn = icmp samesign ult i32 %i.je, %i.jl
  %or.cond122.i = select i1 %i.jm, i1 true, i1 %i.jn
  br i1 %or.cond122.i, label %._crit_edge, label %bb.am

bb.bk:                                            ; preds = %bb.bi, %decode_picture.exit.thread
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.dn) #9
  store i32 1, ptr %2, align 4, !tbaa !84
  %i.jo = load i32, ptr %i.e, align 8, !tbaa !41
  br label %decode_frame_header.exit.thread

decode_frame_header.exit.thread:                  ; preds = %._crit_edge.i, %bb.ag, %bb.ab, %bb.j, %bb.g, %bb.e, %bb.ak, %bb.aj, %decode_frame_header.exit, %bb.bk, %bb.bh, %decode_picture_header.exit.thread, %bb.c
  %.052 = phi i32 [ -1094995529, %bb.c ], [ %i.jo, %bb.bk ], [ %i.do, %bb.ak ], [ 0, %decode_frame_header.exit ], [ %i.dl, %bb.aj ], [ %.2108.i75, %decode_picture_header.exit.thread ], [ %i.ja, %bb.bh ], [ %i.ak, %._crit_edge.i ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.j ], [ -1163346256, %bb.g ], [ -1094995529, %bb.e ]
  ret i32 %.052
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.d) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @unpack_alpha_10(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = icmp eq i32 %3, 16
  %. = select i1 %i.a, i32 16, i32 8
  tail call fastcc void @unpack_alpha(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %., i32 noundef 10)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @unpack_alpha_12(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = icmp eq i32 %3, 16
  %. = select i1 %i.a, i32 16, i32 8
  tail call fastcc void @unpack_alpha(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %., i32 noundef 12)
  ret void
}

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #4

declare void @ff_proresdsp_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_alpha(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 8, 17) %3, i32 noundef range(i32 10, 13) %4) unnamed_addr #6 {
bb.a:
  %notmask = shl nsw i32 -1, %3
  %i.a = xor i32 %notmask, -1                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !87   ; 6 uses
  %i.f = icmp eq i32 %3, 16                       ; 3 uses
  %i.g = sub nuw nsw i32 32, %3
  %i.h = select i1 %i.f, i32 7, i32 4             ; 2 uses
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = icmp eq i32 %4, 10                       ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 12
  %i.l = sext i32 %2 to i64
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/diracdec?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dirac_decode_frame:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, i8 0, i64 12, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 10776
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !53
  %.not119.11 = icmp eq ptr %i.ca, null
  br i1 %.not119.11, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 10992
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !54
  %.not120.11 = icmp eq i32 %i.cc, 0
  br i1 %.not120.11, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @av_frame_unref(ptr noundef nonnull %i.bz) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 10784
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cd, i8 0, i64 12, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 11000
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !53
  %.not119.12 = icmp eq ptr %i.cg, null
  br i1 %.not119.12, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 11216
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !54
  %.not120.12 = icmp eq i32 %i.ci, 0
  br i1 %.not120.12, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @av_frame_unref(ptr noundef nonnull %i.cf) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 11008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, i8 0, i64 12, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 11224
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %.not119.13 = icmp eq ptr %i.cm, null
  br i1 %.not119.13, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 11440
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !54
  %.not120.13 = icmp eq i32 %i.co, 0
  br i1 %.not120.13, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @av_frame_unref(ptr noundef nonnull %i.cl) #14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 11232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, i8 0, i64 12, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 8168 ; 7 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !55
  store i32 0, ptr %2, align 4, !tbaa !44
  %i.cr = icmp eq i32 %i.j, 0
  br i1 %i.cr, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.aq
  %i.cs = icmp sgt i32 %i.j, 13
  br i1 %i.cs, label %.lr.ph.lr.ph, label %get_delayed_pic.exit

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.db = zext nneg i32 %i.j to i64
  %invariant.op = add nsw i64 %i.db, -14
  br label %.lr.ph

bb.ar:                                            ; preds = %bb.aq
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8264 ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8272
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !56 ; 2 uses
  %.not34.i = icmp eq ptr %i.df, null
  br i1 %.not34.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ar
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 220
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !57
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %.phi.trans.insert46.i = zext i32 %spec.select33.i to i64 ; 2 uses
  %.phi.trans.insert47.i = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.phi.trans.insert46.i
  %.pre48.i = load ptr, ptr %.phi.trans.insert47.i, align 8, !tbaa !56
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ar
  %i.dg = phi ptr [ %.pre48.i, %.preheader.loopexit.i ], [ %i.dd, %bb.ar ]
  %.026.lcssa.i = phi ptr [ %spec.select.i, %.preheader.loopexit.i ], [ %i.dd, %bb.ar ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %.phi.trans.insert46.i, %.preheader.loopexit.i ], [ 0, %bb.ar ] ; 2 uses
  %.not3139.i = icmp eq ptr %i.dg, null
  br i1 %.not3139.i, label %._crit_edge.i, label %.lr.ph41.preheader.i

.lr.ph41.preheader.i:                             ; preds = %.preheader.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.0.lcssa.i
  br label %.lr.ph41.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.di = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.dq, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.dj = phi ptr [ %i.df, %.lr.ph.preheader.i ], [ %i.dp, %.lr.ph.i ] ; 2 uses
  %.037.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select33.i, %.lr.ph.i ]
  %.02635.i = phi ptr [ %i.dd, %.lr.ph.preheader.i ], [ %spec.select.i, %.lr.ph.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 220
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !57 ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %i.di               ; 2 uses
  %spec.select.i = select i1 %i.dm, ptr %i.dj, ptr %.02635.i ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv.i to i32
  %spec.select33.i = select i1 %i.dm, i32 %i.dn, i32 %.037.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 %i.di)
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !58

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %.lr.ph41.preheader.i
  %indvars.iv43.i = phi i64 [ %.0.lcssa.i, %.lr.ph41.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph41.i ]
  %i.dr = phi ptr [ %i.dh, %.lr.ph41.preheader.i ], [ %i.ds, %.lr.ph41.i ]
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next44.i ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56 ; 2 uses
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !56
  %.not31.i = icmp eq ptr %i.dt, null
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph41.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph41.i, %.preheader.i
  %.not32.i = icmp eq ptr %.026.lcssa.i, null
  br i1 %.not32.i, label %get_delayed_pic.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i
  %i.du = getelementptr inbounds nuw i8, ptr %.026.lcssa.i, i64 216 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !54
  %i.dw = xor i32 %i.dv, 4
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !54
  %i.dx = load ptr, ptr %.026.lcssa.i, align 8, !tbaa !47
  %i.dy = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.dx) #14 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %get_delayed_pic.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %2, align 4, !tbaa !44
  br label %get_delayed_pic.exit

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.backedge
  %.097198 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.097.be, %.backedge ]
  %i.ea = sext i32 %.097198 to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv ; 8 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !60
  %i.ed = icmp eq i8 %i.ec, 66
  br i1 %i.ed, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ee = getelementptr i8, ptr %i.eb, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !60
  %i.eg = icmp eq i8 %i.ef, 66
  br i1 %i.eg, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.eh = getelementptr i8, ptr %i.eb, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !60
  %i.ej = icmp eq i8 %i.ei, 67
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ek = getelementptr i8, ptr %i.eb, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !60
  %i.em = icmp eq i8 %i.el, 68
  br i1 %i.em, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.en = icmp slt i64 %indvars.iv, %invariant.op
  br i1 %i.en, label %bb.au, label %._crit_edge.loopexit, !llvm.loop !61

bb.az:                                            ; preds = %bb.ax
  %i.eo = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 5
  %i.eq = load i32, ptr %i.ep, align 1, !tbaa !60
  %i.er = call i32 @llvm.bswap.i32(i32 %i.eq)     ; 7 uses
  %i.es = sub nsw i32 %i.j, %i.eo                 ; 2 uses
  %i.et = add i32 %i.er, -1
  %or.cond = icmp ult i32 %i.et, %i.es
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = icmp ugt i32 %i.er, %i.es
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ev = load ptr, ptr %i.f, align 16, !tbaa !29
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ev, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.er) #14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ew = add nsw i32 %i.eo, 4
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.co
  %.097.be = phi i32 [ %i.ew, %bb.bc ], [ %i.su, %bb.co ] ; 3 uses
  %i.ex = add nsw i32 %.097.be, 13
  %i.ey = icmp slt i32 %i.ex, %i.j
  br i1 %i.ey, label %.lr.ph, label %._crit_edge

bb.bd:                                            ; preds = %bb.az
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !9   ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.fa = icmp slt i32 %i.er, 13
  br i1 %i.fa, label %alloc_sequence_buffers.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !60  ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 456
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 13 ; 3 uses
  %i.ff = add nsw i32 %i.er, -13                  ; 2 uses
  %i.fg = shl nuw nsw i32 %i.ff, 3
  %or.cond.i.i = icmp samesign ult i32 %i.er, 268435405 ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.fe, ptr null
  %.013.i.i = select i1 %or.cond.i.i, i32 %i.fg, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.fd, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 468
  store i32 %.013.i.i, ptr %i.fh, align 4, !tbaa !63
  %i.fi = add nuw nsw i32 %.013.i.i, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 472
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 464
  store i32 0, ptr %i.fk, align 8, !tbaa !65
  %i.fl = zext i8 %i.fc to i32                    ; 5 uses
  switch i8 %i.fc, label %bb.bt [
    i8 0, label %bb.bf
    i8 16, label %bb.bn
    i8 32, label %bb.bo
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 560 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 16, !tbaa !66
  %.not189.i = icmp eq i32 %i.fn, 0
  br i1 %.not189.i, label %bb.bg, label %bb.co

bb.bg:                                            ; preds = %bb.bf
  %i.fo = zext nneg i32 %i.ff to i64
  %i.fp = call i32 @av_dirac_parse_sequence_header(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fe, i64 noundef %i.fo, ptr noundef nonnull %0) #14 ; 3 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !69 ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ft, 31
  %i.fv = and i64 %i.fu, 8589934560
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !70 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 31
  %i.ga = and i64 %i.fz, 8589934560
  %i.gb = mul nuw nsw i64 %i.fv, 5
  %i.gc = mul i64 %i.gb, %i.ga
  %i.gd = load i64, ptr %i.cv, align 8, !tbaa !71
  %i.ge = icmp sgt i64 %i.gc, %i.gd
  %spec.select.i121 = select i1 %i.ge, i32 -34, i32 %i.fp ; 2 uses
  %i.gf = icmp sgt i32 %spec.select.i121, -1
  br i1 %i.gf, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.gg = call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.fs, i32 noundef %i.fx) #14 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %.thread.i, label %bb.bk

.thread.i:                                        ; preds = %bb.bj, %bb.bi
  %.1197.i = phi i32 [ %i.gg, %bb.bj ], [ %spec.select.i121, %bb.bi ]
  call void @av_freep(ptr noundef nonnull %i.c) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load i64, ptr %i.gj, align 4
  %i.gl = call i32 @ff_set_sar(ptr noundef nonnull %0, i64 %i.gk) #14 ; 0 uses
  %i.gm = load ptr, ptr %i.c, align 8, !tbaa !67  ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !72
  store i32 %i.go, ptr %i.cw, align 8, !tbaa !73
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  %i.gq = load <4 x i32>, ptr %i.gp, align 4, !tbaa !44
  %i.gr = shufflevector <4 x i32> %i.gq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.gr, ptr %i.cx, align 8, !tbaa !44
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gt = load <2 x i32>, ptr %i.gs, align 4, !tbaa !44
  store <2 x i32> %i.gt, ptr %i.cy, align 8, !tbaa !44
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gv = load i64, ptr %i.gu, align 4
  store i64 %i.gv, ptr %i.cz, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 76
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !74
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ez, i64 4616 ; 2 uses
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !75
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 68
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ez, i64 448
  %i.hb = load <2 x i32>, ptr %i.gz, align 4, !tbaa !44
  store <2 x i32> %i.hb, ptr %i.ha, align 16, !tbaa !44
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 480 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.hc, ptr noundef nonnull align 4 dereferenceable(80) %i.gm, i64 80, i1 false), !tbaa.struct !76
  call void @av_freep(ptr noundef nonnull %i.c) #14
  %i.hd = load i32, ptr %i.gy, align 8, !tbaa !75
  %i.he = icmp sgt i32 %i.hd, 8
  %i.hf = zext i1 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4620 ; 8 uses
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !78
  %i.hh = load i32, ptr %i.cw, align 8, !tbaa !73
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ez, i64 4608 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ez, i64 4612 ; 3 uses
  %i.hk = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.hh, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hj) #14 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %alloc_sequence_buffers.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load i32, ptr %i.hc, align 16, !tbaa !79 ; 2 uses
  %i.hn = add i32 %i.hm, 3
  %i.ho = lshr i32 %i.hn, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ez, i64 484 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !80 ; 2 uses
  %i.hr = add i32 %i.hq, 3
  %i.hs = lshr i32 %i.hr, 2                       ; 2 uses
  %i.ht = add nsw i32 %i.hm, 31
  %i.hu = and i32 %i.ht, -32                      ; 3 uses
  %i.hv = add nsw i32 %i.hq, 31
  %i.hw = and i32 %i.hv, -32
  %i.hx = add nsw i32 %i.hw, 48
  %i.hy = add nsw i32 %i.hu, 32
  %i.hz = sext i32 %i.hy to i64
  %i.ia = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.ib = shl i32 2, %i.ia
  %i.ic = mul nsw i32 %i.hx, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = call noalias ptr @av_calloc(i64 noundef %i.hz, i64 noundef %i.id) #14
  %i.if = getelementptr inbounds nuw i8, ptr %i.ez, i64 600 ; 2 uses
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !81
  %i.ig = or disjoint i32 %i.hu, 16
  %i.ih = sext i32 %i.ig to i64
  %i.ii = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.ij = shl i32 2, %i.ii
  %i.ik = sext i32 %i.ij to i64
  %i.il = call ptr @av_malloc_array(i64 noundef %i.ih, i64 noundef %i.ik) #14 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ez, i64 608
  store ptr %i.il, ptr %i.im, align 16, !tbaa !84
  %i.in = load ptr, ptr %i.if, align 8, !tbaa !81 ; 2 uses
  %i.io = shl nsw i32 %i.hu, 5
  %i.ip = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.iq = shl i32 2, %i.ip                        ; 2 uses
  %i.ir = mul nsw i32 %i.io, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.in, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ez, i64 592
  store ptr %i.it, ptr %i.iu, align 16, !tbaa !85
  %.not55.i = icmp eq ptr %i.in, null
  %.not56.i = icmp eq ptr %i.il, null
  %or.cond59.i = select i1 %.not55.i, i1 true, i1 %.not56.i
  br i1 %or.cond59.i, label %alloc_sequence_buffers.exit.thread, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.bl
  %i.iv = load i32, ptr %i.hc, align 16, !tbaa !79
  %i.iw = load i32, ptr %i.hi, align 16, !tbaa !86 ; 2 uses
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = load i32, ptr %i.hj, align 4, !tbaa !87 ; 2 uses
  %i.iz = lshr i32 32, %i.iw
  %i.ja = load i32, ptr %i.hp, align 4, !tbaa !80
  %i.jb = lshr i32 16, %i.iy
  %i.jc = lshr i32 %i.ja, %i.iy
  %i.jd = add nsw i32 %i.ix, 31
  %i.je = and i32 %i.jd, -32                      ; 3 uses
  %i.jf = add nsw i32 %i.jc, 31
  %i.jg = and i32 %i.jf, -32
  %i.jh = add nsw i32 %i.jg, 32
  %i.ji = or disjoint i32 %i.jh, %i.jb
  %i.jj = add nsw i32 %i.je, %i.iz
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul nsw i32 %i.ji, %i.iq
  %i.jm = sext i32 %i.jl to i64
  %i.jn = call noalias ptr @av_calloc(i64 noundef %i.jk, i64 noundef %i.jm) #14
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ez, i64 1944 ; 2 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !81
  %i.jp = or disjoint i32 %i.je, 16
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.js = shl i32 2, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = call ptr @av_malloc_array(i64 noundef %i.jq, i64 noundef %i.jt) #14 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ez, i64 1952
  store ptr %i.ju, ptr %i.jv, align 16, !tbaa !84
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !81 ; 2 uses
  %i.jx = shl nsw i32 %i.je, 5
  %i.jy = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.jz = shl i32 2, %i.jy                        ; 2 uses
  %i.ka = mul nsw i32 %i.jx, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %i.jw, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1936
  store ptr %i.kc, ptr %i.kd, align 16, !tbaa !85
  %.not55.1.i = icmp eq ptr %i.jw, null
  %.not56.1.i = icmp eq ptr %i.ju, null
  %or.cond59.1.i = select i1 %.not55.1.i, i1 true, i1 %.not56.1.i
  br i1 %or.cond59.1.i, label %alloc_sequence_buffers.exit.thread, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.critedge.1.i
  %i.ke = load i32, ptr %i.hc, align 16, !tbaa !79
  %i.kf = load i32, ptr %i.hi, align 16, !tbaa !86 ; 2 uses
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = load i32, ptr %i.hj, align 4, !tbaa !87 ; 2 uses
  %i.ki = lshr i32 32, %i.kf
  %i.kj = load i32, ptr %i.hp, align 4, !tbaa !80
  %i.kk = lshr i32 16, %i.kh
  %i.kl = lshr i32 %i.kj, %i.kh
  %i.km = add nsw i32 %i.kg, 31
  %i.kn = and i32 %i.km, -32                      ; 3 uses
  %i.ko = add nsw i32 %i.kl, 31
  %i.kp = and i32 %i.ko, -32
  %i.kq = add nsw i32 %i.kp, 32
  %i.kr = or disjoint i32 %i.kq, %i.kk
  %i.ks = add nsw i32 %i.kn, %i.ki
  %i.kt = sext i32 %i.ks to i64
  %i.ku = mul nsw i32 %i.kr, %i.jz
  %i.kv = sext i32 %i.ku to i64
  %i.kw = call noalias ptr @av_calloc(i64 noundef %i.kt, i64 noundef %i.kv) #14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ez, i64 3288 ; 2 uses
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !81
  %i.ky = or disjoint i32 %i.kn, 16
  %i.kz = sext i32 %i.ky to i64
  %i.la = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.lb = shl i32 2, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = call ptr @av_malloc_array(i64 noundef %i.kz, i64 noundef %i.lc) #14 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ez, i64 3296
  store ptr %i.ld, ptr %i.le, align 16, !tbaa !84
  %i.lf = load ptr, ptr %i.kx, align 8, !tbaa !81 ; 2 uses
  %i.lg = shl nsw i32 %i.kn, 5
  %i.lh = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.li = shl i32 2, %i.lh
  %i.lj = mul nsw i32 %i.lg, %i.li
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lf, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ez, i64 3280
  store ptr %i.ll, ptr %i.lm, align 16, !tbaa !85
  %.not55.2.i = icmp eq ptr %i.lf, null
  %.not56.2.i = icmp eq ptr %i.ld, null
  %or.cond59.2.i = select i1 %.not55.2.i, i1 true, i1 %.not56.2.i
  br i1 %or.cond59.2.i, label %alloc_sequence_buffers.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.critedge.2.i
  %i.ln = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.lo = zext nneg i32 %i.hs to i64
  %i.lp = call ptr @av_malloc_array(i64 noundef %i.ln, i64 noundef %i.lo) #14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ez, i64 4920 ; 2 uses
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !88
  %i.lr = shl nuw nsw i32 %i.hs, 4
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = mul nuw nsw i64 %i.ls, 10
  %i.lu = call ptr @av_malloc_array(i64 noundef %i.ln, i64 noundef %i.lt) #14 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ez, i64 4928
  store ptr %i.lu, ptr %i.lv, align 16, !tbaa !89
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !88
  %.not.i171 = icmp eq ptr %i.lw, null
  %.not53.i = icmp eq ptr %i.lu, null
  %or.cond.i172 = select i1 %.not.i171, i1 true, i1 %.not53.i
  br i1 %or.cond.i172, label %alloc_sequence_buffers.exit.thread, label %alloc_sequence_buffers.exit

alloc_sequence_buffers.exit:                      ; preds = %bb.bm
  store i32 1, ptr %i.fm, align 16, !tbaa !66
  br label %bb.co

bb.bn:                                            ; preds = %bb.be
  call fastcc void @free_sequence_buffers(ptr noundef nonnull %i.ez) #15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ez, i64 560
  store i32 0, ptr %i.lx, align 16, !tbaa !66
  br label %bb.co

bb.bo:                                            ; preds = %bb.be
  %i.ly = load i8, ptr %i.fe, align 1, !tbaa !60
  %i.lz = icmp eq i8 %i.ly, 1
  br i1 %i.lz, label %bb.bp, label %bb.co

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.ma = getelementptr inbounds nuw i8, ptr %i.eb, i64 14
  %i.mb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ma, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu) #14
  %i.mc = icmp eq i32 %i.mb, 3
  br i1 %i.mc, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.md = load i32, ptr %i.d, align 4, !tbaa !44
  %i.me = icmp eq i32 %i.md, 1
  %i.mf = load i32, ptr %i.ct, align 4
  %i.mg = icmp eq i32 %i.mf, 0
  %or.cond.i = select i1 %i.me, i1 %i.mg, i1 false
  %i.mh = load i32, ptr %i.cu, align 4
  %i.mi = icmp slt i32 %i.mh, 8
  %or.cond5.i = select i1 %or.cond.i, i1 %i.mi, i1 false
  br i1 %or.cond5.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ez, i64 4668
  store i32 1, ptr %i.mj, align 4, !tbaa !90
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.co

bb.bt:                                            ; preds = %bb.be
  %i.mk = and i32 %i.fl, 8
  %.not.i122 = icmp eq i32 %i.mk, 0
  br i1 %.not.i122, label %bb.co, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ez, i64 560
  %i.mm = load i32, ptr %i.ml, align 16, !tbaa !66
  %.not184.i = icmp eq i32 %i.mm, 0
  br i1 %.not184.i, label %bb.bv, label %.preheader.i123

.preheader.i123:                                  ; preds = %bb.bu
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8312 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !47
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !53
  %i.mq = icmp eq ptr %i.mp, null
  %spec.select190.i = select i1 %i.mq, ptr %i.mn, ptr null
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ez, i64 8536 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !47
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !53
  %i.mu = icmp eq ptr %i.mt, null
  %spec.select190.1.i = select i1 %i.mu, ptr %i.mr, ptr %spec.select190.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ez, i64 8760 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !47
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !53
  %i.my = icmp eq ptr %i.mx, null
  %spec.select190.2.i = select i1 %i.my, ptr %i.mv, ptr %spec.select190.1.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ez, i64 8984 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !47
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !53
  %i.nc = icmp eq ptr %i.nb, null
  %spec.select190.3.i = select i1 %i.nc, ptr %i.mz, ptr %spec.select190.2.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ez, i64 9208 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !47
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !53
  %i.ng = icmp eq ptr %i.nf, null
  %spec.select190.4.i = select i1 %i.ng, ptr %i.nd, ptr %spec.select190.3.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ez, i64 9432 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !47
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !53
  %i.nk = icmp eq ptr %i.nj, null
  %spec.select190.5.i = select i1 %i.nk, ptr %i.nh, ptr %spec.select190.4.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ez, i64 9656 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !47
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !53
  %i.no = icmp eq ptr %i.nn, null
  %spec.select190.6.i = select i1 %i.no, ptr %i.nl, ptr %spec.select190.5.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.ez, i64 9880 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !47
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !53
  %i.ns = icmp eq ptr %i.nr, null
  %spec.select190.7.i = select i1 %i.ns, ptr %i.np, ptr %spec.select190.6.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ez, i64 10104 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !47
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !53
  %i.nw = icmp eq ptr %i.nv, null
  %spec.select190.8.i = select i1 %i.nw, ptr %i.nt, ptr %spec.select190.7.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ez, i64 10328 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !47
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !53
  %i.oa = icmp eq ptr %i.nz, null
  %spec.select190.9.i = select i1 %i.oa, ptr %i.nx, ptr %spec.select190.8.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ez, i64 10552 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !47
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !53
  %i.oe = icmp eq ptr %i.od, null
  %spec.select190.10.i = select i1 %i.oe, ptr %i.ob, ptr %spec.select190.9.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.ez, i64 10776 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !47
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !53
  %i.oi = icmp eq ptr %i.oh, null
  %spec.select190.11.i = select i1 %i.oi, ptr %i.of, ptr %spec.select190.10.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ez, i64 11000 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !47
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !53
  %i.om = icmp eq ptr %i.ol, null
  %spec.select190.12.i = select i1 %i.om, ptr %i.oj, ptr %spec.select190.11.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.ez, i64 11224 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !47
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !53
  %i.oq = icmp eq ptr %i.op, null
  %spec.select190.13.i = select i1 %i.oq, ptr %i.on, ptr %spec.select190.12.i ; 6 uses
  %.not185.i = icmp eq ptr %spec.select190.13.i, null
  br i1 %.not185.i, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.7) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bw:                                            ; preds = %.preheader.i123
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bx:                                            ; preds = %.preheader.i123
  %i.or = load ptr, ptr %spec.select190.13.i, align 8, !tbaa !47
  call void @av_frame_unref(ptr noundef %i.or) #14
  %i.os = and i32 %i.fl, 3                        ; 4 uses
  %i.ot = icmp eq i32 %i.os, 3
  br i1 %i.ot, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ez, i64 4656
  store i32 %i.os, ptr %i.ou, align 16, !tbaa !91
  %i.ov = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %i.ow = shufflevector <4 x i32> %i.ov, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ox = and <4 x i32> %i.ow, <i32 72, i32 136, i32 136, i32 248>
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ez, i64 4628
  %i.oz = insertelement <2 x i32> poison, i32 %i.fl, i64 0
  %i.pa = shufflevector <2 x i32> %i.oz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.pb = and <2 x i32> %i.pa, <i32 248, i32 40>
  %trunc = and i8 %i.fc, -8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4644 ; 2 uses
  %i.pd = icmp eq <4 x i32> %i.ox, <i32 8, i32 8, i32 136, i32 232> ; 2 uses
  %i.pe = zext <4 x i1> %i.pd to <4 x i32>
  store <4 x i32> %i.pe, ptr %i.oy, align 4, !tbaa !44
  %i.pf = icmp eq <2 x i32> %i.pb, <i32 200, i32 8>
  %i.pg = zext <2 x i1> %i.pf to <2 x i32>
  store <2 x i32> %i.pg, ptr %i.pc, align 4, !tbaa !44
  %i.ph = and i32 %i.fl, 12
  %i.pi = icmp eq i32 %i.ph, 12
  %i.pj = zext i1 %i.pi to i32                    ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %spec.select190.13.i, i64 216
  store i32 %i.pj, ptr %i.pk, align 8, !tbaa !54
  %i.pl = icmp eq i32 %i.os, 0
  %i.pm = load ptr, ptr %spec.select190.13.i, align 8, !tbaa !47 ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 276 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !92
  %i.pp = and i32 %i.po, -3
  %masksel.i = select i1 %i.pl, i32 2, i32 0
  %.sink.i = or disjoint i32 %i.pp, %masksel.i
  store i32 %.sink.i, ptr %i.pn, align 4, !tbaa !92
  %i.pq = add nuw nsw i32 %i.os, 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 120
  store i32 %i.pq, ptr %i.pr, align 8, !tbaa !97
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ez, i64 452
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !98
  %i.pu = icmp eq i32 %i.pt, 2
  %i.pv = icmp eq i8 %i.fc, -120
  %or.cond8.i = and i1 %i.pv, %i.pu
  br i1 %or.cond8.i, label %.thread175, label %bb.ca

.thread175:                                       ; preds = %bb.bz
  store i32 1, ptr %i.pc, align 4, !tbaa !99
end_hunk_0
begin_hunk_1_@dirac_decode_picture_header:bb.a
  %i.ato = or i32 %i.atk, %i.atn                  ; 2 uses
  %i.atp = lshr i32 %spec.select56.i164.i, 3
  %i.atq = zext nneg i32 %i.atp to i64
  %i.atr = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 1, !tbaa !60
  %i.att = call i32 @llvm.bswap.i32(i32 %i.ats)
  %i.atu = and i32 %spec.select56.i164.i, 7
  %i.atv = shl i32 %i.att, %i.atu
  %i.atw = icmp ult i32 %i.atk, 134217728
  %i.atx = icmp ult i32 %i.atb, %i.ams
  %i.aty = select i1 %i.atw, i1 %i.atx, i1 false
  br i1 %i.aty, label %.preheader.i158.i, label %.loopexit.i166.i, !llvm.loop !114

.loopexit.i166.i:                                 ; preds = %bb.dq, %bb.dp
  %.1.i167.i = phi i32 [ %i.atj, %bb.dp ], [ %i.ato, %bb.dq ]
  store i32 %spec.select56.i164.i, ptr %i.e, align 16, !tbaa !65
  %i.atz = add i32 %.1.i167.i, -1
  br label %get_interleaved_ue_golomb.exit168.i

get_interleaved_ue_golomb.exit168.i:              ; preds = %.loopexit.i166.i, %bb.do
  %.045.i157.i = phi i32 [ %i.asw, %bb.do ], [ %i.atz, %.loopexit.i166.i ]
  call void @ff_dirac_init_arith_decoder(ptr noundef nonnull %i.amq, ptr noundef nonnull %i.d, i32 noundef %.045.i157.i) #14
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 6 uses
  %i.aub = load i32, ptr %i.e, align 16, !tbaa !65 ; 4 uses
  %i.auc = load i32, ptr %i.g, align 8, !tbaa !64 ; 3 uses
  %i.aud = load ptr, ptr %i.d, align 8, !tbaa !62 ; 2 uses
  %i.aue = lshr i32 %i.aub, 3
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auf
  %i.auh = load i32, ptr %i.aug, align 1, !tbaa !60
  %i.aui = call i32 @llvm.bswap.i32(i32 %i.auh)
  %i.auj = and i32 %i.aub, 7
  %i.auk = shl i32 %i.aui, %i.auj                 ; 3 uses
  %i.aul = and i32 %i.auk, -1434451968
  %.not.i155.1.i = icmp eq i32 %i.aul, 0
  br i1 %.not.i155.1.i, label %.preheader.i158.1.i, label %bb.dr

bb.dr:                                            ; preds = %get_interleaved_ue_golomb.exit168.i
  %i.aum = lshr i32 %i.auk, 24
  %i.aun = zext nneg i32 %i.aum to i64            ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !60
  %i.auq = zext i8 %i.aup to i32
  %i.aur = add i32 %i.aub, %i.auq
  %..i156.1.i = call i32 @llvm.umin.i32(i32 %i.auc, i32 %i.aur)
  store i32 %..i156.1.i, ptr %i.e, align 16, !tbaa !65
  %i.aus = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.aun
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !60
  %i.auu = zext i8 %i.aut to i32
  br label %get_interleaved_ue_golomb.exit168.1.i

.preheader.i158.1.i:                              ; preds = %get_interleaved_ue_golomb.exit168.i, %bb.dt
  %.044.i159.1.i = phi i32 [ %i.avt, %bb.dt ], [ %i.auk, %get_interleaved_ue_golomb.exit168.i ]
  %.043.i160.1.i = phi i32 [ %spec.select56.i164.1.i, %bb.dt ], [ %i.aub, %get_interleaved_ue_golomb.exit168.i ]
  %.0.i161.1.i = phi i32 [ %i.avm, %bb.dt ], [ 1, %get_interleaved_ue_golomb.exit168.i ] ; 2 uses
  %i.auv = lshr i32 %.044.i159.1.i, 24
  %i.auw = zext nneg i32 %i.auv to i64            ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !60 ; 3 uses
  %spec.select57.i162.1.i = call i8 @llvm.umin.i8(i8 %i.auy, i8 8)
  %spec.select.i163.1.i = zext nneg i8 %spec.select57.i162.1.i to i32
  %i.auz = add i32 %.043.i160.1.i, %spec.select.i163.1.i ; 2 uses
  %spec.select56.i164.1.i = call i32 @llvm.umin.i32(i32 %i.auc, i32 %i.auz) ; 4 uses
  %.not54.i165.1.i = icmp eq i8 %i.auy, 9
  br i1 %.not54.i165.1.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.preheader.i158.1.i
  %i.ava = zext i8 %i.auy to i32
  %i.avb = add nsw i32 %i.ava, -1
  %i.avc = ashr i32 %i.avb, 1
  %i.avd = shl i32 %.0.i161.1.i, %i.avc
  %i.ave = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.auw
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !60
  %i.avg = zext i8 %i.avf to i32
  %i.avh = or i32 %i.avd, %i.avg
  br label %.loopexit.i166.1.i

bb.dt:                                            ; preds = %.preheader.i158.1.i
  %i.avi = shl i32 %.0.i161.1.i, 4                ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.auw
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !60
  %i.avl = zext i8 %i.avk to i32
  %i.avm = or i32 %i.avi, %i.avl                  ; 2 uses
  %i.avn = lshr i32 %spec.select56.i164.1.i, 3
  %i.avo = zext nneg i32 %i.avn to i64
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.avo
  %i.avq = load i32, ptr %i.avp, align 1, !tbaa !60
  %i.avr = call i32 @llvm.bswap.i32(i32 %i.avq)
  %i.avs = and i32 %spec.select56.i164.1.i, 7
  %i.avt = shl i32 %i.avr, %i.avs
  %i.avu = icmp ult i32 %i.avi, 134217728
  %i.avv = icmp ult i32 %i.auz, %i.auc
  %i.avw = select i1 %i.avu, i1 %i.avv, i1 false
  br i1 %i.avw, label %.preheader.i158.1.i, label %.loopexit.i166.1.i, !llvm.loop !114

.loopexit.i166.1.i:                               ; preds = %bb.dt, %bb.ds
  %.1.i167.1.i = phi i32 [ %i.avh, %bb.ds ], [ %i.avm, %bb.dt ]
  store i32 %spec.select56.i164.1.i, ptr %i.e, align 16, !tbaa !65
  %i.avx = add i32 %.1.i167.1.i, -1
  br label %get_interleaved_ue_golomb.exit168.1.i

get_interleaved_ue_golomb.exit168.1.i:            ; preds = %.loopexit.i166.1.i, %bb.dr
  %.045.i157.1.i = phi i32 [ %i.auu, %bb.dr ], [ %i.avx, %.loopexit.i166.1.i ]
  call void @ff_dirac_init_arith_decoder(ptr noundef nonnull %i.aua, ptr noundef nonnull %i.d, i32 noundef %.045.i157.1.i) #14
  %i.avy = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 6 uses
  %i.avz = load i32, ptr %i.e, align 16, !tbaa !65 ; 4 uses
  %i.awa = load i32, ptr %i.g, align 8, !tbaa !64 ; 3 uses
  %i.awb = load ptr, ptr %i.d, align 8, !tbaa !62 ; 2 uses
  %i.awc = lshr i32 %i.avz, 3
  %i.awd = zext nneg i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.awd
  %i.awf = load i32, ptr %i.awe, align 1, !tbaa !60
  %i.awg = call i32 @llvm.bswap.i32(i32 %i.awf)
  %i.awh = and i32 %i.avz, 7
  %i.awi = shl i32 %i.awg, %i.awh                 ; 3 uses
  %i.awj = and i32 %i.awi, -1434451968
  %.not.i155.2.i = icmp eq i32 %i.awj, 0
  br i1 %.not.i155.2.i, label %.preheader.i158.2.i, label %bb.du

bb.du:                                            ; preds = %get_interleaved_ue_golomb.exit168.1.i
  %i.awk = lshr i32 %i.awi, 24
  %i.awl = zext nneg i32 %i.awk to i64            ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.awl
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !60
  %i.awo = zext i8 %i.awn to i32
  %i.awp = add i32 %i.avz, %i.awo
  %..i156.2.i = call i32 @llvm.umin.i32(i32 %i.awa, i32 %i.awp)
  store i32 %..i156.2.i, ptr %i.e, align 16, !tbaa !65
  %i.awq = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.awl
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !60
  %i.aws = zext i8 %i.awr to i32
  br label %get_interleaved_ue_golomb.exit168.2.i

.preheader.i158.2.i:                              ; preds = %get_interleaved_ue_golomb.exit168.1.i, %bb.dw
  %.044.i159.2.i = phi i32 [ %i.axr, %bb.dw ], [ %i.awi, %get_interleaved_ue_golomb.exit168.1.i ]
  %.043.i160.2.i = phi i32 [ %spec.select56.i164.2.i, %bb.dw ], [ %i.avz, %get_interleaved_ue_golomb.exit168.1.i ]
  %.0.i161.2.i = phi i32 [ %i.axk, %bb.dw ], [ 1, %get_interleaved_ue_golomb.exit168.1.i ] ; 2 uses
  %i.awt = lshr i32 %.044.i159.2.i, 24
  %i.awu = zext nneg i32 %i.awt to i64            ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.awu
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !60 ; 3 uses
  %spec.select57.i162.2.i = call i8 @llvm.umin.i8(i8 %i.aww, i8 8)
  %spec.select.i163.2.i = zext nneg i8 %spec.select57.i162.2.i to i32
  %i.awx = add i32 %.043.i160.2.i, %spec.select.i163.2.i ; 2 uses
  %spec.select56.i164.2.i = call i32 @llvm.umin.i32(i32 %i.awa, i32 %i.awx) ; 4 uses
  %.not54.i165.2.i = icmp eq i8 %i.aww, 9
  br i1 %.not54.i165.2.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.preheader.i158.2.i
  %i.awy = zext i8 %i.aww to i32
  %i.awz = add nsw i32 %i.awy, -1
  %i.axa = ashr i32 %i.awz, 1
  %i.axb = shl i32 %.0.i161.2.i, %i.axa
  %i.axc = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.awu
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !60
  %i.axe = zext i8 %i.axd to i32
  %i.axf = or i32 %i.axb, %i.axe
  br label %.loopexit.i166.2.i

bb.dw:                                            ; preds = %.preheader.i158.2.i
  %i.axg = shl i32 %.0.i161.2.i, 4                ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.awu
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !60
  %i.axj = zext i8 %i.axi to i32
  %i.axk = or i32 %i.axg, %i.axj                  ; 2 uses
  %i.axl = lshr i32 %spec.select56.i164.2.i, 3
  %i.axm = zext nneg i32 %i.axl to i64
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.axm
  %i.axo = load i32, ptr %i.axn, align 1, !tbaa !60
  %i.axp = call i32 @llvm.bswap.i32(i32 %i.axo)
  %i.axq = and i32 %spec.select56.i164.2.i, 7
  %i.axr = shl i32 %i.axp, %i.axq
  %i.axs = icmp ult i32 %i.axg, 134217728
  %i.axt = icmp ult i32 %i.awx, %i.awa
  %i.axu = select i1 %i.axs, i1 %i.axt, i1 false
  br i1 %i.axu, label %.preheader.i158.2.i, label %.loopexit.i166.2.i, !llvm.loop !114

.loopexit.i166.2.i:                               ; preds = %bb.dw, %bb.dv
  %.1.i167.2.i = phi i32 [ %i.axf, %bb.dv ], [ %i.axk, %bb.dw ]
  store i32 %spec.select56.i164.2.i, ptr %i.e, align 16, !tbaa !65
  %i.axv = add i32 %.1.i167.2.i, -1
  br label %get_interleaved_ue_golomb.exit168.2.i

get_interleaved_ue_golomb.exit168.2.i:            ; preds = %.loopexit.i166.2.i, %bb.du
  %.045.i157.2.i = phi i32 [ %i.aws, %bb.du ], [ %i.axv, %.loopexit.i166.2.i ]
  call void @ff_dirac_init_arith_decoder(ptr noundef nonnull %i.avy, ptr noundef nonnull %i.d, i32 noundef %.045.i157.2.i) #14
  %i.axw = load i32, ptr %i.agd, align 16, !tbaa !129 ; 2 uses
  %i.axx = icmp sgt i32 %i.axw, 0
  br i1 %i.axx, label %.preheader177.lr.ph.i, label %.preheader.i191

.preheader177.i:                                  ; preds = %.preheader177.lr.ph.i, %._crit_edge265.i
  %i.axy = phi i32 [ %i.cdr, %._crit_edge265.i ], [ %i.axw, %.preheader177.lr.ph.i ]
  %i.axz = phi i32 [ %i.cds, %._crit_edge265.i ], [ %i.asm, %.preheader177.lr.ph.i ] ; 2 uses
  %i.aya = phi i32 [ %i.cdt, %._crit_edge265.i ], [ %i.asm, %.preheader177.lr.ph.i ] ; 3 uses
  %indvars.iv368.i = phi i64 [ %indvars.iv.next369.i, %._crit_edge265.i ], [ 0, %.preheader177.lr.ph.i ] ; 3 uses
  %i.ayb = icmp sgt i32 %i.aya, 0
  br i1 %i.ayb, label %.lr.ph264.i, label %._crit_edge265.i

.lr.ph264.i:                                      ; preds = %.preheader177.i
  %i.ayc = shl nuw nsw i64 %indvars.iv368.i, 2
  %i.ayd = trunc nuw nsw i64 %indvars.iv368.i to i32
  br label %bb.dx

.preheader.i191:                                  ; preds = %._crit_edge265.i, %get_interleaved_ue_golomb.exit168.2.i, %.preheader177.lr.ph.i
  %i.aye = load i32, ptr %i.an, align 16, !tbaa !91 ; 4 uses
  %i.ayf = icmp sgt i32 %i.aye, -2
  br i1 %i.ayf, label %.lr.ph268.preheader.i, label %dirac_unpack_block_motion_data.exit.thread282

.lr.ph268.preheader.i:                            ; preds = %.preheader.i191
  %i.ayg = shl i32 %i.aye, 1
  %i.ayh = add i32 %i.ayg, 3
  %smax374.i = call i32 @llvm.smax.i32(i32 %i.ayh, i32 0)
  %i.ayi = add nuw i32 %smax374.i, 1
  %wide.trip.count375.i = zext i32 %i.ayi to i64
  br label %.lr.ph268.i

bb.dx:                                            ; preds = %._crit_edge262.i, %.lr.ph264.i
  %i.ayj = phi i32 [ %i.axz, %.lr.ph264.i ], [ %i.cdo, %._crit_edge262.i ]
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph264.i ], [ %indvars.iv.next366.i, %._crit_edge262.i ] ; 3 uses
  %i.ayk = phi i32 [ %i.aya, %.lr.ph264.i ], [ %i.cdo, %._crit_edge262.i ]
  %i.ayl = load ptr, ptr %i.afd, align 8, !tbaa !88
  %i.aym = mul nuw nsw i32 %i.ayk, %i.ayd
  %i.ayn = trunc nuw nsw i64 %indvars.iv365.i to i32
  %i.ayo = add nsw i32 %i.aym, %i.ayn
  %i.ayp = sext i32 %i.ayo to i64
  %i.ayq = getelementptr inbounds i8, ptr %i.ayl, i64 %i.ayp
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !60 ; 4 uses
  %i.ays = zext i8 %i.ayr to i32                  ; 2 uses
  %i.ayt = lshr i32 4, %i.ays                     ; 3 uses
  %.not272.i = icmp eq i8 %i.ayr, 31
  br i1 %.not272.i, label %._crit_edge262.i, label %.preheader176.lr.ph.i

.preheader176.lr.ph.i:                            ; preds = %bb.dx
  %i.ayu = shl nuw i32 1, %i.ays
  %2 = shl nuw nsw i64 %indvars.iv365.i, 2
  %i.ayv = icmp ult i8 %i.ayr, 2
  %wide.trip.count.i.i = zext nneg i32 %i.ayt to i64 ; 4 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ayu, i32 1)
  %wide.trip.count363.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %i.ayw = add nsw i64 %wide.trip.count.i.i, -1   ; 2 uses
  %xtraiter = and i64 %i.ayw, 3                   ; 3 uses
  %i.ayx = add nsw i32 %i.ayt, -2
  %i.ayy = icmp ult i32 %i.ayx, 3
  %unroll_iter = and i64 %i.ayw, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1497 = icmp ne i64 %xtraiter, 0
  %xtraiter1498 = and i64 %wide.trip.count.i.i, 2 ; 2 uses
  %.not1512 = icmp eq i8 %i.ayr, 0
  %lcmp.mod1500.not = icmp eq i64 %xtraiter1498, 0
  %lcmp.mod1501 = icmp ne i64 %xtraiter1498, 0
  br label %.preheader176.i

.preheader176.i:                                  ; preds = %._crit_edge260.i, %.preheader176.lr.ph.i
  %indvars.iv360.i = phi i64 [ 0, %.preheader176.lr.ph.i ], [ %indvars.iv.next361.i, %._crit_edge260.i ] ; 2 uses
  %i.ayz = mul nuw nsw i64 %indvars.iv360.i, %wide.trip.count.i.i
  %i.aza = add nuw nsw i64 %i.ayz, %i.ayc         ; 5 uses
  %.not19.i.i.i = icmp eq i64 %i.aza, 0           ; 5 uses
  %i.azb = trunc nuw i64 %i.aza to i32            ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %propagate_block_data.exit.i, %.preheader176.i
  %indvars.iv357.i = phi i64 [ 0, %.preheader176.i ], [ %indvars.iv.next358.i, %propagate_block_data.exit.i ] ; 2 uses
  %i.azc = mul nuw nsw i64 %indvars.iv357.i, %wide.trip.count.i.i
  %i.azd = add nuw nsw i64 %i.azc, %2             ; 9 uses
  %i.aze = load ptr, ptr %i.arc, align 16, !tbaa !89
  %i.azf = load i32, ptr %i.agf, align 4, !tbaa !130 ; 14 uses
  %i.azg = mul nsw i32 %i.azf, %i.azb
  %i.azh = trunc nuw i64 %i.azd to i32            ; 2 uses
  %i.azi = add nsw i32 %i.azg, %i.azh
  %i.azj = sext i32 %i.azi to i64
  %i.azk = getelementptr inbounds [10 x i8], ptr %i.aze, i64 %i.azj ; 68 uses
  %i.azl = or i32 %i.azh, %i.azb
  %.not.i.i.i = icmp eq i32 %i.azl, 0             ; 3 uses
  br i1 %.not.i.i.i, label %pred_block_mode.exit.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %.not19.i.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.azm = getelementptr inbounds i8, ptr %i.azk, i64 -2
  %i.azn = load i8, ptr %i.azm, align 2, !tbaa !138
  %i.azo = and i8 %i.azn, 1
  br label %pred_block_mode.exit.i.i

bb.eb:                                            ; preds = %bb.dz
  %.not20.i.i.i = icmp eq i64 %i.azd, 0
  br i1 %.not20.i.i.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.azp = sub nsw i32 0, %i.azf
  %i.azq = sext i32 %i.azp to i64
  %i.azr = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.azq
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = load i8, ptr %i.azs, align 2, !tbaa !138
  %i.azu = and i8 %i.azt, 1
  br label %pred_block_mode.exit.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.azv = getelementptr inbounds i8, ptr %i.azk, i64 -2
  %i.azw = load i8, ptr %i.azv, align 2, !tbaa !138
  %i.azx = and i8 %i.azw, 1
  %i.azy = sub nsw i32 0, %i.azf
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.azz
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 8
  %i.bac = load i8, ptr %i.bab, align 2, !tbaa !138
  %i.bad = and i8 %i.bac, 1
  %narrow.i.i = add nuw nsw i8 %i.bad, %i.azx
  %i.bae = xor i32 %i.azf, -1
  %i.baf = sext i32 %i.bae to i64
  %i.bag = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.baf
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.bai = load i8, ptr %i.bah, align 2, !tbaa !138
  %i.baj = and i8 %i.bai, 1
  %narrow129.i.i = add nuw nsw i8 %narrow.i.i, %i.baj
  %i.bak = lshr i8 %narrow129.i.i, 1
  br label %pred_block_mode.exit.i.i

pred_block_mode.exit.i.i:                         ; preds = %bb.ed, %bb.ec, %bb.ea, %bb.dy
  %.0.i.shrunk.i.i = phi i8 [ %i.bak, %bb.ed ], [ %i.azu, %bb.ec ], [ %i.azo, %bb.ea ], [ 0, %bb.dy ] ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azk, i64 8 ; 7 uses
  store i8 %.0.i.shrunk.i.i, ptr %i.bal, align 2, !tbaa !138
  %i.bam = load i16, ptr %i.ard, align 8, !tbaa !77 ; 2 uses
  %i.ban = zext i16 %i.bam to i32                 ; 2 uses
  %i.bao = load i32, ptr %1, align 16, !tbaa !140 ; 2 uses
  %i.bap = load i16, ptr %i.are, align 4, !tbaa !142
  %i.baq = zext i16 %i.bap to i32                 ; 2 uses
  %i.bar = mul nuw nsw i32 %i.baq, %i.ban         ; 2 uses
  %i.bas = lshr i32 %i.bar, 16                    ; 3 uses
  %i.bat = lshr i32 %i.bao, 16
  %i.bau = icmp samesign uge i32 %i.bat, %i.bas   ; 4 uses
  %i.bav = and i32 %i.bar, 2147418112
  %i.baw = sub nsw i32 %i.baq, %i.bas
  %i.bax = select i1 %i.bau, i32 %i.bav, i32 0
  %.024.i.i.i = sub i32 %i.bao, %i.bax            ; 3 uses
  %.0.i61.i.i = select i1 %i.bau, i32 %i.baw, i32 %i.bas
  %i.bay = lshr i32 %i.ban, 8
  %i.baz = zext nneg i32 %i.bay to i64
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr @ff_dirac_prob_branchless, i64 %i.baz
  %i.bbb = zext i1 %i.bau to i64
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.bba, i64 %i.bbb
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !77
  %i.bbe = add i16 %i.bbd, %i.bam
  store i16 %i.bbe, ptr %i.ard, align 8, !tbaa !77
  store i32 %.024.i.i.i, ptr %1, align 16, !tbaa !140
  %i.bbf = trunc i32 %.0.i61.i.i to i16           ; 4 uses
  store i16 %i.bbf, ptr %i.are, align 4, !tbaa !142
  %i.bbg = icmp ult i16 %i.bbf, 16385
  %.promoted6.i.i.i.i = load i16, ptr %i.arf, align 2, !tbaa !143 ; 2 uses
  br i1 %i.bbg, label %.lr.ph.i.i.i.i, label %renorm.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %pred_block_mode.exit.i.i, %.lr.ph.i.i.i.i
  %i.bbh = phi i16 [ %i.bbm, %.lr.ph.i.i.i.i ], [ %.promoted6.i.i.i.i, %pred_block_mode.exit.i.i ]
  %i.bbi = phi i32 [ %i.bbk, %.lr.ph.i.i.i.i ], [ %.024.i.i.i, %pred_block_mode.exit.i.i ]
  %i.bbj = phi i16 [ %i.bbl, %.lr.ph.i.i.i.i ], [ %i.bbf, %pred_block_mode.exit.i.i ] ; 2 uses
  %i.bbk = shl i32 %i.bbi, 1                      ; 3 uses
  %i.bbl = shl nuw i16 %i.bbj, 1                  ; 3 uses
  %i.bbm = add i16 %i.bbh, 1                      ; 3 uses
  %i.bbn = icmp ult i16 %i.bbj, 8193
  br i1 %i.bbn, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !144

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i32 %i.bbk, ptr %1, align 16, !tbaa !140
  store i16 %i.bbl, ptr %i.are, align 4, !tbaa !142
  store i16 %i.bbm, ptr %i.arf, align 2, !tbaa !143
  br label %renorm.exit.i.i.i

renorm.exit.i.i.i:                                ; preds = %._crit_edge.i.i.i.i, %pred_block_mode.exit.i.i
  %i.bbo = phi i16 [ %i.bbl, %._crit_edge.i.i.i.i ], [ %i.bbf, %pred_block_mode.exit.i.i ] ; 2 uses
  %i.bbp = phi i32 [ %i.bbk, %._crit_edge.i.i.i.i ], [ %.024.i.i.i, %pred_block_mode.exit.i.i ] ; 2 uses
  %i.bbq = phi i16 [ %i.bbm, %._crit_edge.i.i.i.i ], [ %.promoted6.i.i.i.i, %pred_block_mode.exit.i.i ] ; 4 uses
  %i.bbr = icmp sgt i16 %i.bbq, -1
  br i1 %i.bbr, label %bb.ee, label %dirac_get_arith_bit.exit.i.i

bb.ee:                                            ; preds = %renorm.exit.i.i.i
  %i.bbs = load ptr, ptr %i.arg, align 8, !tbaa !53 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 2 ; 3 uses
  store ptr %i.bbt, ptr %i.arg, align 8, !tbaa !53
  %i.bbu = load i16, ptr %i.bbs, align 1, !tbaa !60
  %i.bbv = call i16 @llvm.bswap.i16(i16 %i.bbu)
  %i.bbw = zext i16 %i.bbv to i32                 ; 2 uses
  %i.bbx = load ptr, ptr %i.arh, align 16, !tbaa !145 ; 3 uses
  %i.bby = icmp ugt ptr %i.bbt, %i.bbx
  br i1 %i.bby, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.bbz = or i32 %i.bbw, 255
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbx, i64 1
  %i.bcb = icmp ugt ptr %i.bbt, %i.bca
  %spec.select.i.i.i.i = select i1 %i.bcb, i32 65535, i32 %i.bbz ; 2 uses
  store ptr %i.bbx, ptr %i.arg, align 8, !tbaa !146
  %i.bcc = load i32, ptr %i.ari, align 8, !tbaa !147 ; 2 uses
  %i.bcd = add nsw i32 %i.bcc, 1
  store i32 %i.bcd, ptr %i.ari, align 8, !tbaa !147
  %i.bce = icmp sgt i32 %i.bcc, 3
  br i1 %i.bce, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 -1094995529, ptr %i.arj, align 4, !tbaa !148
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %.1.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.eg ], [ %spec.select.i.i.i.i, %bb.ef ], [ %i.bbw, %bb.ee ]
  %i.bcf = zext nneg i16 %i.bbq to i32
  %i.bcg = shl i32 %.1.i.i.i.i, %i.bcf
  %i.bch = add i32 %i.bcg, %i.bbp                 ; 2 uses
  store i32 %i.bch, ptr %1, align 16, !tbaa !140
  %i.bci = add nsw i16 %i.bbq, -16
  br label %dirac_get_arith_bit.exit.i.i

dirac_get_arith_bit.exit.i.i:                     ; preds = %bb.eh, %renorm.exit.i.i.i
  %i.bcj = phi i32 [ %i.bch, %bb.eh ], [ %i.bbp, %renorm.exit.i.i.i ] ; 3 uses
  %.019.i.i.i.i = phi i16 [ %i.bci, %bb.eh ], [ %i.bbq, %renorm.exit.i.i.i ] ; 4 uses
  store i16 %.019.i.i.i.i, ptr %i.arf, align 2, !tbaa !143
  %i.bck = zext i1 %i.bau to i8
  %i.bcl = xor i8 %.0.i.shrunk.i.i, %i.bck        ; 3 uses
  store i8 %i.bcl, ptr %i.bal, align 2, !tbaa !138
  %i.bcm = load i32, ptr %i.an, align 16, !tbaa !91 ; 2 uses
  %i.bcn = icmp eq i32 %i.bcm, 2
  br i1 %i.bcn, label %bb.ei, label %bb.es

bb.ei:                                            ; preds = %dirac_get_arith_bit.exit.i.i
  br i1 %.not.i.i.i, label %pred_block_mode.exit66.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not19.i.i.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.bco = getelementptr inbounds i8, ptr %i.azk, i64 -2
  %i.bcp = load i8, ptr %i.bco, align 2, !tbaa !138
  %i.bcq = and i8 %i.bcp, 2
  br label %pred_block_mode.exit66.i.i

bb.el:                                            ; preds = %bb.ej
  %.not20.i64.i.i = icmp eq i64 %i.azd, 0
  br i1 %.not20.i64.i.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bcr = sub nsw i32 0, %i.azf
  %i.bcs = sext i32 %i.bcr to i64
  %i.bct = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.bcs
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 8
  %i.bcv = load i8, ptr %i.bcu, align 2, !tbaa !138
  %i.bcw = and i8 %i.bcv, 2
  br label %pred_block_mode.exit66.i.i

bb.en:                                            ; preds = %bb.el
  %i.bcx = getelementptr inbounds i8, ptr %i.azk, i64 -2
  %i.bcy = load i8, ptr %i.bcx, align 2, !tbaa !138
  %i.bcz = and i8 %i.bcy, 2
  %i.bda = sub nsw i32 0, %i.azf
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.bdb
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8
  %i.bde = load i8, ptr %i.bdd, align 2, !tbaa !138
  %i.bdf = and i8 %i.bde, 2
  %narrow130.i.i = add nuw nsw i8 %i.bdf, %i.bcz
  %i.bdg = xor i32 %i.azf, -1
  %i.bdh = sext i32 %i.bdg to i64
  %i.bdi = getelementptr inbounds [10 x i8], ptr %i.azk, i64 %i.bdh
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  %i.bdk = load i8, ptr %i.bdj, align 2, !tbaa !138
  %i.bdl = and i8 %i.bdk, 2
  %narrow131.i.i = add nuw nsw i8 %narrow130.i.i, %i.bdl
end_hunk_1
begin_hunk_2_@codeblock:bb.a
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 1, !tbaa !60
  %i.sb = tail call i32 @llvm.bswap.i32(i32 %i.sa)
  %i.sc = and i32 %spec.select56.i.i.i.us, 7
  %i.sd = shl i32 %i.sb, %i.sc
  %i.se = icmp ult i32 %i.rs, 134217728
  %i.sf = icmp ult i32 %i.rr, %i.qu
  %i.sg = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %i.sg, label %.preheader.i.i.i.us, label %.loopexit.i.i.i.us, !llvm.loop !114

bb.bf:                                            ; preds = %.preheader.i.i.i.us
  %i.sh = zext i8 %i.rq to i32
  %i.si = add nsw i32 %i.sh, -1
  %i.sj = ashr i32 %i.si, 1
  %i.sk = shl i32 %.0.i.i.i.us, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ro
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !60
  %i.sn = zext i8 %i.sm to i32
  %i.so = or i32 %i.sk, %i.sn
  br label %.loopexit.i.i.i.us

.loopexit.i.i.i.us:                               ; preds = %bb.be, %bb.bf
  %.1.i.i.i153.us = phi i32 [ %i.so, %bb.bf ], [ %i.rw, %bb.be ]
  store i32 %spec.select56.i.i.i.us, ptr %i.qn, align 8, !tbaa !65
  %i.sp = add i32 %.1.i.i.i153.us, -1
  br label %get_interleaved_ue_golomb.exit.i.i.us

get_interleaved_ue_golomb.exit.i.i.us:            ; preds = %.loopexit.i.i.i.us, %bb.bd
  %i.sq = phi i32 [ %..i.i.i.us, %bb.bd ], [ %spec.select56.i.i.i.us, %.loopexit.i.i.i.us ] ; 4 uses
  %.045.i.i.i.us = phi i32 [ %i.rm, %bb.bd ], [ %i.sp, %.loopexit.i.i.i.us ] ; 2 uses
  %.not.i.i149.us = icmp eq i32 %.045.i.i.i.us, 0
  br i1 %.not.i.i149.us, label %coeff_unpack_golomb.exit.us, label %dirac_get_se_golomb.exit.i.us

dirac_get_se_golomb.exit.i.us:                    ; preds = %get_interleaved_ue_golomb.exit.i.i.us
  %i.sr = lshr i32 %i.sq, 3
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !60
  %i.sv = icmp slt i32 %i.sq, %i.qu
  %i.sw = zext i1 %i.sv to i32
  %spec.select.i7.i.i.us = add i32 %i.sq, %i.sw
  %i.sx = zext i8 %i.su to i32
  %i.sy = and i32 %i.sq, 7
  %i.sz = shl nuw nsw i32 %i.sx, %i.sy
  %i.ta = lshr i32 %i.sz, 7
  store i32 %spec.select.i7.i.i.us, ptr %i.qn, align 8, !tbaa !65
  %i.tb = and i32 %i.ta, 1                        ; 2 uses
  %i.tc = sub nsw i32 0, %i.tb
  %i.td = xor i32 %.045.i.i.i.us, %i.tc
  %i.te = add i32 %i.td, %i.tb                    ; 3 uses
  %.not.i150.us = icmp eq i32 %i.te, 0
  br i1 %.not.i150.us, label %coeff_unpack_golomb.exit.us, label %bb.bg

bb.bg:                                            ; preds = %dirac_get_se_golomb.exit.i.us
  %.inv.i.us = icmp slt i32 %i.te, 1
  %i.tf = select i1 %.inv.i.us, i32 -1, i32 1     ; 2 uses
  %i.tg = mul i32 %i.te, %i.hj
  %i.th = mul i32 %i.tg, %i.tf
  %i.ti = add i32 %i.th, %.084
  %i.tj = lshr i32 %i.ti, 2
  %i.tk = mul nsw i32 %i.tj, %i.tf
  br label %coeff_unpack_golomb.exit.us

coeff_unpack_golomb.exit.us:                      ; preds = %bb.bg, %dirac_get_se_golomb.exit.i.us, %get_interleaved_ue_golomb.exit.i.i.us
  %.0.i151.us = phi i32 [ %i.tk, %bb.bg ], [ 0, %dirac_get_se_golomb.exit.i.us ], [ 0, %get_interleaved_ue_golomb.exit.i.i.us ] ; 2 uses
  %i.tl = load i32, ptr %i.qr, align 4, !tbaa !187
  %.not100.us = icmp eq i32 %i.tl, 0
  br i1 %.not100.us, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %coeff_unpack_golomb.exit.us
  %i.tm = shl nsw i64 %indvars.iv239, 2
  %i.tn = getelementptr inbounds i8, ptr %.1198.us, i64 %i.tm
  store i32 %.0.i151.us, ptr %i.tn, align 1, !tbaa !60
  br label %bb.bj

bb.bi:                                            ; preds = %coeff_unpack_golomb.exit.us
  %i.to = trunc i32 %.0.i151.us to i16
  %i.tp = shl nsw i64 %indvars.iv239, 1
  %i.tq = getelementptr inbounds i8, ptr %.1198.us, i64 %i.tp
  store i16 %i.to, ptr %i.tq, align 1, !tbaa !60
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count
  br i1 %exitcond242.not, label %._crit_edge.us203, label %.preheader.us, !llvm.loop !275

._crit_edge.us203:                                ; preds = %bb.bj
  %i.tr = load i32, ptr %i.ho, align 8, !tbaa !191
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds i8, ptr %.1198.us, i64 %i.ts
  %i.tu = add nsw i32 %.187197.us, 1              ; 2 uses
  %exitcond243.not = icmp eq i32 %i.tu, %7
  br i1 %exitcond243.not, label %.loopexit, label %.lr.ph199.split.us, !llvm.loop !276

.lr.ph199.split:                                  ; preds = %.lr.ph199
  %.val = load i32, ptr %i.qn, align 8, !tbaa !65
  %.val103 = load i32, ptr %i.qo, align 4, !tbaa !63
  %.not156 = icmp sgt i32 %.val103, %.val
  %spec.select316 = select i1 %.not156, i32 0, i32 -1094995529
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph192.split.us, %._crit_edge.us, %.lr.ph199.split.us, %._crit_edge.us203, %.lr.ph199.split, %.lr.ph192.split, %dirac_get_arith_bit.exit, %.preheader159, %.preheader157, %.critedge, %bb.h, %bb.z
  %.191 = phi i32 [ -1094995529, %bb.z ], [ 0, %bb.h ], [ -1094995529, %.critedge ], [ 0, %dirac_get_arith_bit.exit ], [ %i.qm, %.lr.ph192.split ], [ 0, %.preheader157 ], [ -1094995529, %.lr.ph199.split.us ], [ %spec.select316, %.lr.ph199.split ], [ 0, %.preheader159 ], [ 0, %._crit_edge.us203 ], [ 0, %._crit_edge.us ], [ %i.ig, %.lr.ph192.split.us ]
  ret i32 %.191
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @init_obmc_weight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  %.not = icmp eq i32 %4, 0
  %.pre = load i8, ptr %i.a, align 1, !tbaa !118  ; 2 uses
  %.not59 = icmp ult i8 %.pre, 2
  %or.cond = select i1 %.not, i1 true, i1 %.not59
  br i1 %or.cond, label %.critedge, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a, %.lr.ph49
  %.0353848 = phi i32 [ %i.c, %.lr.ph49 ], [ 0, %bb.a ]
  %.03947 = phi ptr [ %i.b, %.lr.ph49 ], [ %1, %bb.a ] ; 2 uses
  tail call fastcc void @init_obmc_weight_row(ptr noundef nonnull %0, ptr noundef %.03947, i32 noundef %2, i32 noundef %3, i32 noundef 8)
  %i.b = getelementptr inbounds nuw i8, ptr %.03947, i64 32 ; 2 uses
  %i.c = add nuw nsw i32 %.0353848, 1             ; 3 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !118   ; 2 uses
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  %i.g = icmp samesign ult i32 %i.c, %i.f
  br i1 %i.g, label %.lr.ph49, label %.critedge

.critedge:                                        ; preds = %.lr.ph49, %bb.a
  %i.h = phi i8 [ %.pre, %bb.a ], [ %i.d, %.lr.ph49 ]
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.lr.ph49 ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.b, %.lr.ph49 ] ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = lshr i32 %i.i, %5
  %i.k = icmp samesign ult i32 %.035.lcssa, %i.j
  br i1 %i.k, label %.lr.ph53, label %.preheader

.lr.ph53:                                         ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 61
  br label %bb.b

.preheader:                                       ; preds = %weight.exit, %.critedge
  %.pre-phi = phi i32 [ %i.i, %.critedge ], [ %i.ap, %weight.exit ]
  %.136.lcssa = phi i32 [ %.035.lcssa, %.critedge ], [ %i.an, %weight.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.critedge ], [ %i.am, %weight.exit ]
  %i.m = icmp samesign ult i32 %.136.lcssa, %.pre-phi
  br i1 %i.m, label %.lr.ph58, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph53, %weight.exit
  %i.n = phi i32 [ %i.i, %.lr.ph53 ], [ %i.ap, %weight.exit ]
  %.152 = phi ptr [ %.0.lcssa, %.lr.ph53 ], [ %i.am, %weight.exit ] ; 2 uses
  %.13651 = phi i32 [ %.035.lcssa, %.lr.ph53 ], [ %i.an, %weight.exit ] ; 7 uses
  %i.o = load i8, ptr %i.l, align 1, !tbaa !199   ; 3 uses
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 1                  ; 4 uses
  %i.r = icmp samesign ult i32 %.13651, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i8 %i.o, 1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not23.i = icmp eq i32 %.13651, 0
  %i.t = select i1 %.not23.i, i32 3, i32 5
  br label %weight.exit

bb.e:                                             ; preds = %bb.c
  %i.u = mul nuw nsw i32 %.13651, 6
  %i.v = add nuw nsw i32 %i.u, 65535
  %i.w = add nuw nsw i32 %i.v, %i.p
  %.lhs.trunc = trunc i32 %i.w to i16
  %i.x = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc = add nsw i16 %i.x, -1
  %i.y = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.y to i32
  %i.z = add nsw i32 %.sext, 1
  br label %weight.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %i.n, -1                    ; 3 uses
  %i.ab = sub nuw nsw i32 %i.aa, %i.q
  %i.ac = icmp sgt i32 %.13651, %i.ab
  br i1 %i.ac, label %bb.g, label %weight.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i8 %i.o, 1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.aa, %.13651
  %i.ae = select i1 %.not.i, i32 3, i32 5
  br label %weight.exit

bb.i:                                             ; preds = %bb.g
  %i.af = sub nuw nsw i32 %i.aa, %.13651
  %i.ag = mul nuw nsw i32 %i.af, 6
  %i.ah = add nuw nsw i32 %i.ag, %i.p
  %i.ai = trunc nuw nsw i32 %i.ah to i16
  %.lhs.trunc.i = add nsw i16 %i.ai, -1
  %i.aj = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc.i = add nsw i16 %i.aj, -1
  %i.ak = sdiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.sext.i = sext i16 %i.ak to i32
  %i.al = add nsw i32 %.sext.i, 1
  br label %weight.exit

weight.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.al, %bb.i ], [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %i.ae, %bb.h ], [ 8, %bb.f ]
  tail call fastcc void @init_obmc_weight_row(ptr noundef nonnull %0, ptr noundef %.152, i32 noundef %2, i32 noundef %3, i32 noundef %.0.i)
  %i.am = getelementptr inbounds nuw i8, ptr %.152, i64 32 ; 2 uses
  %i.an = add nuw nsw i32 %.13651, 1              ; 3 uses
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !118
  %i.ap = zext i8 %i.ao to i32                    ; 3 uses
  %i.aq = lshr i32 %i.ap, %5
  %i.ar = icmp samesign ult i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.b, label %.preheader, !llvm.loop !277

.lr.ph58:                                         ; preds = %.preheader, %.lr.ph58
  %.257 = phi ptr [ %i.as, %.lr.ph58 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.23756 = phi i32 [ %i.at, %.lr.ph58 ], [ %.136.lcssa, %.preheader ]
  tail call fastcc void @init_obmc_weight_row(ptr noundef nonnull %0, ptr noundef %.257, i32 noundef %2, i32 noundef %3, i32 noundef 8)
  %i.as = getelementptr inbounds nuw i8, ptr %.257, i64 32
  %i.at = add nuw nsw i32 %.23756, 1              ; 2 uses
  %i.au = load i8, ptr %i.a, align 1, !tbaa !118
  %i.av = zext i8 %i.au to i32
  %i.aw = icmp samesign ult i32 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph58, label %._crit_edge, !llvm.loop !278

._crit_edge:                                      ; preds = %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @init_obmc_weight_row(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 -2147483647, -2147483648) %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.not = icmp eq i32 %2, 0
  %.pre = load i8, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.tr27 = trunc i32 %4 to i8
  %i.b = shl i8 %.tr27, 3
  %.not43 = icmp ult i8 %.pre, 2
  br i1 %.not43, label %.critedge, label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph, %.lr.ph34
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph34 ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.b, ptr %i.c, align 1, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !117   ; 2 uses
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %.lr.ph34, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph34
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %bb.a
  %i.i = phi i8 [ %.pre, %bb.a ], [ %.pre, %.lr.ph ], [ %i.d, %.critedge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = lshr i32 %i.j, %3
  %i.l = icmp samesign ult i32 %.0.lcssa, %i.k
  br i1 %i.l, label %.lr.ph36, label %.preheader28

.lr.ph36:                                         ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = zext nneg i32 %.0.lcssa to i64
  br label %bb.b

.preheader28.loopexit:                            ; preds = %weight.exit
  %i.o = trunc nuw nsw i64 %indvars.iv.next48 to i32
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.loopexit, %.critedge
  %.pre-phi = phi i32 [ %i.az, %.preheader28.loopexit ], [ %i.j, %.critedge ]
  %.1.lcssa = phi i32 [ %i.o, %.preheader28.loopexit ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %i.p = icmp samesign ult i32 %.1.lcssa, %.pre-phi
  br i1 %i.p, label %.lr.ph39, label %.preheader

.lr.ph39:                                         ; preds = %.preheader28
  %.tr = trunc i32 %4 to i8
  %i.q = shl i8 %.tr, 3
  %i.r = zext nneg i32 %.1.lcssa to i64
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph36, %weight.exit
  %indvars.iv47 = phi i64 [ %i.n, %.lr.ph36 ], [ %indvars.iv.next48, %weight.exit ] ; 7 uses
  %i.s = phi i32 [ %i.j, %.lr.ph36 ], [ %i.az, %weight.exit ]
  %i.t = load i8, ptr %i.m, align 4, !tbaa !198   ; 3 uses
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = shl nuw nsw i32 %i.u, 1                  ; 4 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv47, %i.w
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i8 %i.t, 1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not23.i = icmp eq i64 %indvars.iv47, 0
  %i.z = select i1 %.not23.i, i32 3, i32 5
  br label %weight.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.ab = mul nuw nsw i32 %i.aa, 6
  %i.ac = add nuw nsw i32 %i.ab, 65535
  %i.ad = add nuw nsw i32 %i.ac, %i.u
  %.lhs.trunc = trunc i32 %i.ad to i16
  %i.ae = trunc nuw nsw i32 %i.v to i16
  %.rhs.trunc = add nsw i16 %i.ae, -1
  %i.af = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext56 = zext i16 %i.af to i32
  %i.ag = add nuw nsw i32 %.sext56, 1
  br label %weight.exit

bb.f:                                             ; preds = %bb.b
  %i.ah = add nsw i32 %i.s, -1                    ; 3 uses
  %i.ai = sub nuw nsw i32 %i.ah, %i.v
  %i.aj = trunc nuw nsw i64 %indvars.iv47 to i32  ; 2 uses
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %weight.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp eq i8 %i.t, 1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = zext i32 %i.ah to i64
  %.not.i = icmp eq i64 %indvars.iv47, %i.am
  %i.an = select i1 %.not.i, i32 3, i32 5
  br label %weight.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = sub nuw nsw i32 %i.ah, %i.aj
  %i.ap = mul nuw nsw i32 %i.ao, 6
  %i.aq = add nuw nsw i32 %i.ap, %i.u
  %i.ar = trunc nuw nsw i32 %i.aq to i16
  %.lhs.trunc.i = add nsw i16 %i.ar, -1
  %i.as = trunc nuw nsw i32 %i.v to i16
  %.rhs.trunc.i = add nsw i16 %i.as, -1
  %i.at = sdiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.sext.i57 = zext i16 %i.at to i32
  %i.au = add nuw nsw i32 %.sext.i57, 1
  br label %weight.exit

weight.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.au, %bb.i ], [ %i.ag, %bb.e ], [ %i.z, %bb.d ], [ %i.an, %bb.h ], [ 8, %bb.f ]
  %i.av = mul i32 %.0.i, %4
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv47
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !60
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 3 uses
  %i.ay = load i8, ptr %i.a, align 8, !tbaa !117
  %i.az = zext i8 %i.ay to i32                    ; 3 uses
  %i.ba = lshr i32 %i.az, %3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next48, %i.bb
  br i1 %i.bc, label %bb.b, label %.preheader28.loopexit, !llvm.loop !279

.preheader.loopexit:                              ; preds = %bb.j
  %i.bd = trunc nuw nsw i64 %indvars.iv.next51 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader28
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader28 ], [ %i.bd, %.preheader.loopexit ] ; 3 uses
  %i.be = icmp samesign ult i32 %.2.lcssa, 32
  br i1 %i.be, label %.lr.ph42.preheader, label %._crit_edge

.lr.ph42.preheader:                               ; preds = %.preheader
  %i.bf = zext nneg i32 %.2.lcssa to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.bf
  %narrow = sub nuw nsw i32 32, %.2.lcssa
  %i.bg = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !60
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph39, %bb.j
  %indvars.iv50 = phi i64 [ %i.r, %.lr.ph39 ], [ %indvars.iv.next51, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv50
  store i8 %i.q, ptr %i.bh, align 1, !tbaa !60
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  %i.bi = load i8, ptr %i.a, align 8, !tbaa !117
  %i.bj = zext i8 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next51, %i.bj
  br i1 %i.bk, label %bb.j, label %.preheader.loopexit, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph42.preheader, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block_mc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 -2147483648, 3) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [1344 x i8], ptr %i.b, i64 %i.c ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 2, !tbaa !138
  %i.g = and i8 %i.f, 3                           ; 2 uses
  switch i8 %i.g, label %default.unreachable71 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !117   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.n = load i8, ptr %i.m, align 1, !tbaa !118   ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.j, 128                ; 2 uses
  %.not.i = icmp eq i8 %i.n, 0
  %.not27.i = icmp eq i8 %i.l, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not27.i
  br i1 %or.cond, label %add_dc.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !101
  %sext = shl i64 %i.r, 32
  %i.s = zext i8 %i.l to i64
  %i.t = ashr exact i64 %sext, 31
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.025.i = phi i32 [ %i.ao, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02024.i = phi ptr [ %i.am, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 3 uses
  %.02123.i = phi ptr [ %i.an, %._crit_edge.i ], [ %3, %.preheader.preheader.i ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02123.i, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !60
  %i.w = zext i8 %i.v to i32
  %i.x = mul nuw nsw i32 %i.p, %i.w
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.02024.i, i64 %indvars.iv.i ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !77
  %i.aa = trunc i32 %i.x to i16
  %i.ab = add i16 %i.z, %i.aa
  store i16 %i.ab, ptr %i.y, align 2, !tbaa !77
  %i.ac = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02123.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.p, %i.af
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02024.i, i64 %i.ac ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !77
  %i.aj = trunc i32 %i.ag to i16
  %i.ak = add i16 %i.ai, %i.aj
  store i16 %i.ak, ptr %i.ah, align 2, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next.i, %i.s
  br i1 %i.al, label %bb.c, label %._crit_edge.i, !llvm.loop !281

._crit_edge.i:                                    ; preds = %bb.c
  %i.am = getelementptr inbounds i8, ptr %.02024.i, i64 %i.t
  %i.an = getelementptr inbounds nuw i8, ptr %.02123.i, i64 32
  %i.ao = add nuw nsw i32 %.025.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %i.o
  br i1 %exitcond.not.i, label %add_dc.exit, label %.preheader.i, !llvm.loop !282

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.ap = zext nneg i8 %i.g to i32
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = call fastcc i32 @mc_subpel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a, i32 noundef %5, i32 noundef %6, i32 noundef %i.aq, i32 noundef %4)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8080
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !101
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !118
  %i.bd = zext i8 %i.bc to i32
  call void %i.av(ptr noundef %i.ax, ptr noundef nonnull %i.a, i32 noundef %i.ba, i32 noundef %i.bd) #14
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !234 ; 2 uses
  %.not68 = icmp eq ptr %i.bf, null
  br i1 %.not68, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.bh = load i64, ptr %i.ay, align 8, !tbaa !101
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4896
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !127
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4890
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !77
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4892
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !77
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = load i8, ptr %i.bb, align 1, !tbaa !118
  %i.bt = zext i8 %i.bs to i32
  call void %i.bf(ptr noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.br, i32 noundef %i.bt) #14
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.bu = call fastcc i32 @mc_subpel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a, i32 noundef %5, i32 noundef %6, i32 noundef 0, i32 noundef %4)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8080 ; 2 uses
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !101
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = zext i8 %i.cf to i32
  call void %i.by(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef %i.cd, i32 noundef %i.cg) #14
  %i.ch = call fastcc i32 @mc_subpel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a, i32 noundef %5, i32 noundef %6, i32 noundef 1, i32 noundef %4) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8160 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !235
  %.not = icmp eq ptr %i.cj, null
  %i.ck = load i64, ptr %i.cb, align 8, !tbaa !101
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = zext nneg i32 %i.ch to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.co
end_hunk_2

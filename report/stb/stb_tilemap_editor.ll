Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__editor_traverse:bb.a
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi397 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 74
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 146
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 170
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !66
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !66
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !66
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !66
  %i.bm = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bj, i64 1
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 2
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 3
  %i.bq = load i16, ptr %i.be, align 2, !tbaa !66
  %i.br = load i16, ptr %i.bf, align 2, !tbaa !66
  %i.bs = load i16, ptr %i.bg, align 2, !tbaa !66
  %i.bt = load i16, ptr %i.bh, align 2, !tbaa !66
  %i.bu = insertelement <4 x i16> poison, i16 %i.bq, i64 0
  %i.bv = insertelement <4 x i16> %i.bu, i16 %i.br, i64 1
  %i.bw = insertelement <4 x i16> %i.bv, i16 %i.bs, i64 2
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.bt, i64 3
  %i.by = zext <4 x i16> %i.bp to <4 x i32>
  %i.bz = zext <4 x i16> %i.bx to <4 x i32>
  %i.ca = icmp eq <4 x i32> %broadcast.splat396, %i.by
  %i.cb = icmp eq <4 x i32> %broadcast.splat396, %i.bz
  %i.cc = or <4 x i1> %broadcast.splat, %i.ca
  %i.cd = or <4 x i1> %broadcast.splat, %i.cb
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = add <4 x i32> %vec.phi, %i.ce           ; 2 uses
  %i.ch = add <4 x i32> %vec.phi397, %i.cf        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ch, %i.cg
  %i.cj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %stbte__compute_tileinfo.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.015.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.cj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.015.i.i.i = phi i32 [ %spec.select.i.i.i, %scalar.ph ], [ %.015.i.i.i.ph, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !66
  %i.cn = zext i16 %i.cm to i32
  %i.co = icmp eq i32 %i.ao, %i.cn
  %or.cond.i.i.i = or i1 %i.ar, %i.co
  %i.cp = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %.015.i.i.i, %i.cp ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbte__compute_tileinfo.exit.i, label %scalar.ph, !llvm.loop !216

stbte__compute_tileinfo.exit.i:                   ; preds = %scalar.ph, %middle.block, %bb.k
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.k ], [ %i.cj, %middle.block ], [ %spec.select.i.i.i, %scalar.ph ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 800880
  store i32 %.0.lcssa.i.i.i, ptr %i.cq, align 8, !tbaa !69
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 800884
  store i32 0, ptr %i.cr, align 4, !tbaa !34
  store i32 0, ptr %i.i, align 8, !tbaa !49
  br label %stbte__prepare_tileinfo.exit

stbte__prepare_tileinfo.exit:                     ; preds = %bb.d, %stbte__compute_tileinfo.exit.i
  tail call void @stbte__compute_panel_locations(ptr noundef nonnull %0)
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbte__prepare_tileinfo.exit
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef 2109536) #25
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 800028
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !217
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800032
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !218
  %i.df = sub nsw i32 %i.dc, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 800012
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !30
  %i.dk = mul nsw i32 %i.dj, %i.dh
  %i.dl = add nsw i32 %i.dk, %i.db
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 800016
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !31
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = add nsw i32 %i.dq, %i.df
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.db, i32 noundef %i.df, i32 noundef %i.dl, i32 noundef %i.dr, i32 noundef 0) #25
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.ds = icmp eq i32 %.pre, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %stbte__prepare_tileinfo.exit
  %i.dt = phi i1 [ %i.ds, %bb.l ], [ false, %stbte__prepare_tileinfo.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 800028 ; 6 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !217 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 800012 ; 8 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !32 ; 3 uses
  %i.dy = sub nsw i32 %i.dv, %i.dx
  %i.dz = sdiv i32 %i.dy, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 800032 ; 6 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !218 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 800016 ; 8 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !33 ; 3 uses
  %i.ee = sub nsw i32 %i.eb, %i.ed
  %i.ef = sdiv i32 %i.ee, %i.ed
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.eh = add nsw i32 %i.eg, %i.dv
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.ej = sub i32 %i.eh, %i.ei
  %i.ek = sdiv i32 %i.ej, %i.dx                   ; 2 uses
  %i.el = add nsw i32 %i.ek, 1
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.en = add nsw i32 %i.em, %i.eb
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.ep = sub i32 %i.en, %i.eo
  %i.eq = sdiv i32 %i.ep, %i.ed                   ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 0) ; 6 uses
  %spec.store.select6 = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 0) ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.et = load i32, ptr %i.es, align 8, !tbaa !30 ; 2 uses
  %.not = icmp slt i32 %i.ek, %i.et
  %spec.select = select i1 %.not, i32 %i.el, i32 %i.et ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !31 ; 2 uses
  %.not267 = icmp slt i32 %i.eq, %i.ev
  %.0253 = select i1 %.not267, i32 %i.er, i32 %i.ev ; 8 uses
  br i1 %i.dt, label %.preheader296, label %.loopexit

.preheader296:                                    ; preds = %bb.m
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 800008 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !29
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.preheader295.lr.ph, label %.loopexit297

.preheader295.lr.ph:                              ; preds = %.preheader296
  %i.ez = icmp sge i32 %spec.store.select6, %.0253
  %i.fa = icmp sge i32 %spec.store.select, %spec.select
  %i.fb = icmp sgt i32 %spec.select, -1
  %i.fc = icmp sgt i32 %.0253, -1
  %brmerge = select i1 %i.ez, i1 true, i1 %i.fa
  br label %.preheader295

.preheader295:                                    ; preds = %.preheader295.lr.ph, %.loopexit294
  %.0254310 = phi i32 [ 0, %.preheader295.lr.ph ], [ %i.hg, %.loopexit294 ] ; 3 uses
  br i1 %brmerge, label %._crit_edge303.split, label %.preheader292

.preheader292:                                    ; preds = %.preheader295, %._crit_edge
  %.0246302 = phi i32 [ %i.fq, %._crit_edge ], [ %spec.store.select6, %.preheader295 ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader292, %bb.n
  %.0301 = phi i32 [ %spec.store.select, %.preheader292 ], [ %i.fp, %bb.n ] ; 3 uses
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.fe = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.ff = mul nsw i32 %i.fe, %.0301
  %i.fg = add nsw i32 %i.ff, %i.fd
  %i.fh = load i32, ptr %i.du, align 4, !tbaa !217
  %i.fi = sub i32 %i.fg, %i.fh
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.fk = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.fl = mul nsw i32 %i.fk, %.0246302
  %i.fm = add nsw i32 %i.fl, %i.fj
  %i.fn = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.fo = sub i32 %i.fm, %i.fn
  tail call void @stbte__tile_paint(ptr noundef nonnull %0, i32 noundef %i.fi, i32 noundef %i.fo, i32 noundef %.0301, i32 noundef %.0246302, i32 noundef %.0254310)
  %i.fp = add nuw i32 %.0301, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.n
  %i.fq = add nuw i32 %.0246302, 1                ; 2 uses
  %exitcond336.not = icmp eq i32 %i.fq, %.0253
  br i1 %exitcond336.not, label %._crit_edge303.split, label %.preheader292, !llvm.loop !220

._crit_edge303.split:                             ; preds = %._crit_edge, %.preheader295
  %i.fr = icmp eq i32 %.0254310, 0
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5188), align 4
  %i.ft = icmp eq i32 %i.fs, 1
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.o, label %.loopexit294

bb.o:                                             ; preds = %._crit_edge303.split
  %i.fu = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.fv = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.fw = mul nsw i32 %i.fv, %spec.store.select
  %i.fx = add nsw i32 %i.fw, %i.fu
  %i.fy = load i32, ptr %i.du, align 4, !tbaa !217
  %i.fz = sub i32 %i.fx, %i.fy                    ; 2 uses
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.gb = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.gc = mul nsw i32 %i.gb, %spec.store.select6
  %i.gd = add nsw i32 %i.gc, %i.ga
  %i.ge = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.gf = sub i32 %i.gd, %i.ge                    ; 2 uses
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.gh = icmp slt i32 %i.fz, %i.gg
  %i.gi = select i1 %i.gh, i1 %i.fb, i1 false
  br i1 %i.gi, label %.lr.ph, label %.preheader293

.preheader293:                                    ; preds = %.lr.ph, %bb.o
  %i.gj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.gk = icmp slt i32 %i.gf, %i.gj
  %i.gl = select i1 %i.gk, i1 %i.fc, i1 false
  br i1 %i.gl, label %.lr.ph309, label %.loopexit294

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.1305 = phi i32 [ %i.gp, %.lr.ph ], [ 0, %bb.o ] ; 2 uses
  %.0255304 = phi i32 [ %i.gr, %.lr.ph ], [ %i.fz, %bb.o ] ; 3 uses
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.gn = add nsw i32 %.0255304, 1
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  tail call void @STBTE_DRAW_RECT(i32 noundef %.0255304, i32 noundef %i.gm, i32 noundef %i.gn, i32 noundef %i.go, i32 noundef 4210752) #25
  %i.gp = add nuw nsw i32 %.1305, 1
  %i.gq = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.gr = add nsw i32 %i.gq, %.0255304            ; 2 uses
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.gt = icmp slt i32 %i.gr, %i.gs
  %i.gu = icmp slt i32 %.1305, %spec.select
  %i.gv = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %i.gv, label %.lr.ph, label %.preheader293, !llvm.loop !221

.lr.ph309:                                        ; preds = %.preheader293, %.lr.ph309
  %.1247308 = phi i32 [ %i.gz, %.lr.ph309 ], [ 0, %.preheader293 ] ; 2 uses
  %.0258307 = phi i32 [ %i.hb, %.lr.ph309 ], [ %i.gf, %.preheader293 ] ; 3 uses
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.gy = add nsw i32 %.0258307, 1
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.gw, i32 noundef %.0258307, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef 4210752) #25
  %i.gz = add nuw nsw i32 %.1247308, 1
  %i.ha = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.hb = add nsw i32 %i.ha, %.0258307            ; 2 uses
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.hd = icmp slt i32 %i.hb, %i.hc
  %i.he = icmp slt i32 %.1247308, %.0253
  %i.hf = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %i.hf, label %.lr.ph309, label %.loopexit294, !llvm.loop !222

.loopexit294:                                     ; preds = %.lr.ph309, %.preheader293, %._crit_edge303.split
  %i.hg = add nuw nsw i32 %.0254310, 1            ; 2 uses
  %i.hh = load i32, ptr %i.ew, align 8, !tbaa !29
  %i.hi = icmp slt i32 %i.hg, %i.hh
  br i1 %i.hi, label %.preheader295, label %.loopexit297.loopexit, !llvm.loop !223

.loopexit297.loopexit:                            ; preds = %.loopexit294
  %.pre347.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.hj = icmp eq i32 %.pre347.a, 0
  br label %.loopexit297

.loopexit297:                                     ; preds = %.loopexit297.loopexit, %.preheader296
  %i.hk = phi i1 [ %i.hj, %.loopexit297.loopexit ], [ true, %.preheader296 ]
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5188), align 4
  %i.hm = icmp eq i32 %i.hl, 2
  %or.cond8 = select i1 %i.hk, i1 %i.hm, i1 false
  br i1 %or.cond8, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.loopexit297
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.ho = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.hp = mul nsw i32 %i.ho, %spec.store.select
  %i.hq = add nsw i32 %i.hp, %i.hn
  %i.hr = load i32, ptr %i.du, align 4, !tbaa !217
  %i.hs = sub i32 %i.hq, %i.hr                    ; 2 uses
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.hu = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.hv = mul nsw i32 %i.hu, %spec.store.select6
  %i.hw = add nsw i32 %i.hv, %i.ht
  %i.hx = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.hy = sub i32 %i.hw, %i.hx                    ; 2 uses
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.ia = icmp slt i32 %i.hs, %i.hz
  %i.ib = icmp sgt i32 %spec.select, -1
  %i.ic = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %i.ic, label %.lr.ph315, label %.preheader291

.preheader291:                                    ; preds = %.lr.ph315, %bb.p
  %i.id = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.ie = icmp slt i32 %i.hy, %i.id
  %i.if = icmp sgt i32 %.0253, -1
  %i.ig = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %i.ig, label %.lr.ph318, label %.loopexit

.lr.ph315:                                        ; preds = %bb.p, %.lr.ph315
  %.2313 = phi i32 [ %i.ik, %.lr.ph315 ], [ 0, %bb.p ] ; 2 uses
  %.0257312 = phi i32 [ %i.im, %.lr.ph315 ], [ %i.hs, %bb.p ] ; 3 uses
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.ii = add nsw i32 %.0257312, 1
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  tail call void @STBTE_DRAW_RECT(i32 noundef %.0257312, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef 4210752) #25
  %i.ik = add nuw nsw i32 %.2313, 1
  %i.il = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.im = add nsw i32 %i.il, %.0257312            ; 2 uses
  %i.in = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.io = icmp slt i32 %i.im, %i.in
  %i.ip = icmp slt i32 %.2313, %spec.select
  %i.iq = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %i.iq, label %.lr.ph315, label %.preheader291, !llvm.loop !224

.lr.ph318:                                        ; preds = %.preheader291, %.lr.ph318
  %.2248317 = phi i32 [ %i.iu, %.lr.ph318 ], [ 0, %.preheader291 ] ; 2 uses
  %.0256316 = phi i32 [ %i.iw, %.lr.ph318 ], [ %i.hy, %.preheader291 ] ; 3 uses
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.it = add nsw i32 %.0256316, 1
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ir, i32 noundef %.0256316, i32 noundef %i.is, i32 noundef %i.it, i32 noundef 4210752) #25
  %i.iu = add nuw nsw i32 %.2248317, 1
  %i.iv = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.iw = add nsw i32 %i.iv, %.0256316            ; 2 uses
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.iy = icmp slt i32 %i.iw, %i.ix
  %i.iz = icmp slt i32 %.2248317, %.0253
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %i.ja, label %.lr.ph318, label %.loopexit, !llvm.loop !225

.loopexit:                                        ; preds = %.lr.ph318, %bb.m, %.preheader291, %.loopexit297
  %i.jb = icmp slt i32 %spec.store.select6, %.0253
  %i.jc = icmp slt i32 %spec.store.select, %spec.select
  %or.cond332 = select i1 %i.jb, i1 %i.jc, i1 false
  br i1 %or.cond332, label %.preheader, label %._crit_edge323.split

.preheader:                                       ; preds = %.loopexit, %._crit_edge321
  %.3249322 = phi i32 [ %i.jq, %._crit_edge321 ], [ %spec.store.select6, %.loopexit ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.q
  %.3319 = phi i32 [ %spec.store.select, %.preheader ], [ %i.jp, %bb.q ] ; 3 uses
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.je = load i32, ptr %i.dw, align 4, !tbaa !32
  %i.jf = mul nsw i32 %i.je, %.3319
  %i.jg = add nsw i32 %i.jf, %i.jd
  %i.jh = load i32, ptr %i.du, align 4, !tbaa !217
  %i.ji = sub i32 %i.jg, %i.jh
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.jk = load i32, ptr %i.ec, align 8, !tbaa !33
  %i.jl = mul nsw i32 %i.jk, %.3249322
  %i.jm = add nsw i32 %i.jl, %i.jj
  %i.jn = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.jo = sub i32 %i.jm, %i.jn
  tail call void @stbte__tile(ptr noundef nonnull %0, i32 noundef %i.ji, i32 noundef %i.jo, i32 noundef %.3319, i32 noundef %.3249322)
  %i.jp = add nuw i32 %.3319, 1                   ; 2 uses
  %exitcond337.not = icmp eq i32 %i.jp, %spec.select
  br i1 %exitcond337.not, label %._crit_edge321, label %bb.q, !llvm.loop !226

._crit_edge321:                                   ; preds = %bb.q
  %i.jq = add nuw i32 %.3249322, 1                ; 2 uses
  %exitcond338.not = icmp eq i32 %i.jq, %.0253
  br i1 %exitcond338.not, label %._crit_edge323.split, label %.preheader, !llvm.loop !227

._crit_edge323.split:                             ; preds = %._crit_edge321, %.loopexit
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.r, label %bb.u

bb.r:                                             ; preds = %._crit_edge323.split
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !112
  %.not268 = icmp eq i32 %i.jt, 0
  br i1 %.not268, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52 ; 2 uses
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !113
  %i.jw = load i32, ptr %i.dw, align 4, !tbaa !32 ; 2 uses
  %i.jx = mul nsw i32 %i.jw, %i.jv
  %i.jy = add nsw i32 %i.jx, %i.ju
  %i.jz = load i32, ptr %i.du, align 4, !tbaa !217 ; 2 uses
  %i.ka = sub i32 %i.jy, %i.jz                    ; 3 uses
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53 ; 2 uses
  %i.kc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5304), align 8, !tbaa !115
  %i.kd = load i32, ptr %i.ec, align 8, !tbaa !33 ; 2 uses
  %i.ke = mul nsw i32 %i.kd, %i.kc
  %i.kf = add nsw i32 %i.ke, %i.kb
  %i.kg = load i32, ptr %i.ea, align 8, !tbaa !218 ; 2 uses
  %i.kh = sub i32 %i.kf, %i.kg                    ; 3 uses
  %i.ki = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !114
  %i.kj = add nsw i32 %i.ki, 1
  %i.kk = mul nsw i32 %i.kj, %i.jw
  %i.kl = sub i32 %i.ju, %i.jz
  %i.km = add i32 %i.kl, %i.kk                    ; 3 uses
  %i.kn = add nsw i32 %i.km, 1                    ; 2 uses
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5312), align 8, !tbaa !116
  %i.kp = add nsw i32 %i.ko, 1
  %i.kq = mul nsw i32 %i.kp, %i.kd
  %i.kr = sub i32 %i.kb, %i.kg
  %i.ks = add i32 %i.kr, %i.kq                    ; 3 uses
  %i.kt = add nsw i32 %i.ks, 1                    ; 2 uses
  %i.ku = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 40), align 8, !tbaa !199
  %i.kv = and i32 %i.ku, 256
  %.not269 = icmp eq i32 %i.kv, 0
  %i.kw = select i1 %.not269, i32 3158064, i32 14671839 ; 4 uses
  %i.kx = add nsw i32 %i.kh, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ka, i32 noundef %i.kh, i32 noundef %i.km, i32 noundef %i.kx, i32 noundef %i.kw) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.km, i32 noundef %i.kh, i32 noundef %i.kn, i32 noundef %i.ks, i32 noundef %i.kw) #25
  %i.ky = add nsw i32 %i.ka, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ky, i32 noundef %i.ks, i32 noundef %i.kn, i32 noundef %i.kt, i32 noundef %i.kw) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ka, i32 noundef %i.kx, i32 noundef %i.ky, i32 noundef %i.kt, i32 noundef %i.kw) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @stbte__flush_delay()
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge323.split
  tail call void @stbte__flush_delay()
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split327
  %indvars.iv = phi i64 [ 0, %bb.u ], [ %indvars.iv.next, %.split327 ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5364), i64 %indvars.iv ; 11 uses
  %i.la = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !121 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !122 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !123
  %i.li = add nsw i32 %i.lh, %i.ld                ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !124
  %i.ll = add nsw i32 %i.lk, %i.lf                ; 4 uses
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 252), align 4, !tbaa !37
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ld, i32 noundef %i.lf, i32 noundef %i.li, i32 noundef %i.ll, i32 noundef %i.lm) #25
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 280), align 8, !tbaa !37 ; 4 uses
  %i.lo = add nsw i32 %i.li, -1                   ; 2 uses
  %i.lp = add nsw i32 %i.lf, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ld, i32 noundef %i.lf, i32 noundef %i.lo, i32 noundef %i.lp, i32 noundef %i.ln) #25
  %i.lq = add nsw i32 %i.ll, -1                   ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lo, i32 noundef %i.lf, i32 noundef %i.li, i32 noundef %i.lq, i32 noundef %i.ln) #25
  %i.lr = add nsw i32 %i.ld, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.li, i32 noundef %i.ll, i32 noundef %i.ln) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ld, i32 noundef %i.lp, i32 noundef %i.lr, i32 noundef %i.ll, i32 noundef %i.ln) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 24 ; 5 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !121 ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kz, i64 28 ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !122 ; 11 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 5 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !123 ; 6 uses
  %i.ly = add nsw i32 %i.lx, %i.lt                ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kz, i64 20 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !124 ; 5 uses
  %i.mb = add nsw i32 %i.ma, %i.lv                ; 2 uses
  %i.mc = shl nuw nsw i64 %indvars.iv, 19         ; 3 uses
  %i.md = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 24), align 8, !tbaa !105 ; 2 uses
  %.not.i274 = icmp slt i32 %i.md, %i.lt
  br i1 %.not.i274, label %stbte__hittest.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 28), align 4, !tbaa !106 ; 2 uses
  %.not9.i = icmp sge i32 %i.me, %i.lv
  %i.mf = icmp slt i32 %i.md, %i.ly
  %or.cond10.i = and i1 %i.mf, %.not9.i
  %i.mg = icmp slt i32 %i.me, %i.mb
  %spec.select.i = and i1 %i.mg, %or.cond10.i
  %i.mh = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4
  %i.mi = icmp sgt i32 %i.mh, 0
  %or.cond.i = select i1 %spec.select.i, i1 %i.mi, i1 false
  br i1 %or.cond.i, label %bb.z, label %stbte__hittest.exit

bb.z:                                             ; preds = %bb.y
  %i.mj = trunc i64 %i.mc to i32
  %i.mk = or disjoint i32 %i.mj, 3
  store i32 %i.mk, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 16), align 8, !tbaa !107
  br label %stbte__hittest.exit

stbte__hittest.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.ml = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ml, label %bb.ak [
    i32 0, label %bb.aa
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
  ]

bb.aa:                                            ; preds = %stbte__hittest.exit
  %i.mm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 84), align 4, !tbaa !37
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.ly, i32 noundef %i.mb, i32 noundef %i.mo) #25
  %.pre352 = load i32, ptr %i.ls, align 4, !tbaa !121
  %.pre353.a = load i32, ptr %i.lu, align 8, !tbaa !122
  %.pre354.a = load i32, ptr %i.lw, align 4, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mp = phi i32 [ %.pre354.a, %bb.ab ], [ %i.lx, %bb.aa ]
  %i.mq = phi i32 [ %.pre353.a, %bb.ab ], [ %i.lv, %bb.aa ]
  %i.mr = phi i32 [ %.pre352, %bb.ab ], [ %i.lt, %bb.aa ]
  tail call void @stbte__toolbar(ptr noundef nonnull %0, i32 noundef %i.mr, i32 noundef %i.mq, i32 noundef %i.mp, i32 poison)
  br label %bb.ak

bb.ad:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__info(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 poison, i32 poison)
  br label %bb.ak

bb.ae:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__layers(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.lx, i32 noundef %i.ma)
  br label %bb.ak

bb.af:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__categories(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.lx, i32 noundef %i.ma)
  br label %bb.ak

bb.ag:                                            ; preds = %stbte__hittest.exit
  %i.ms = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !18
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5536), align 8, !tbaa !18
  %i.mx = icmp eq i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.my = add nsw i32 %i.lt, 1
  %i.mz = add nsw i32 %i.lv, -1
  %i.na = add nsw i32 %i.ly, -1
  %i.nb = add nsw i32 %i.lv, 1
  %i.nc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 252), align 4, !tbaa !37
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.my, i32 noundef %i.mz, i32 noundef %i.na, i32 noundef %i.nb, i32 noundef %i.nc) #25
  %.pre348 = load i32, ptr %i.ls, align 4, !tbaa !121
  %.pre349 = load i32, ptr %i.lu, align 8, !tbaa !122
  %.pre350 = load i32, ptr %i.lw, align 4, !tbaa !123
  %.pre351 = load i32, ptr %i.lz, align 8, !tbaa !124
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.nd = phi i32 [ %.pre351, %bb.ai ], [ %i.ma, %bb.ah ], [ %i.ma, %bb.ag ]
  %i.ne = phi i32 [ %.pre350, %bb.ai ], [ %i.lx, %bb.ah ], [ %i.lx, %bb.ag ]
  %i.nf = phi i32 [ %.pre349, %bb.ai ], [ %i.lv, %bb.ah ], [ %i.lv, %bb.ag ]
  %i.ng = phi i32 [ %.pre348, %bb.ai ], [ %i.lt, %bb.ah ], [ %i.lt, %bb.ag ]
  tail call void @stbte__palette_of_tiles(ptr noundef nonnull %0, i32 noundef %i.ng, i32 noundef %i.nf, i32 noundef %i.ne, i32 noundef %i.nd)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af, %bb.ae, %bb.ad, %bb.ac, %stbte__hittest.exit
  %i.nh = icmp eq i64 %indvars.iv, 0
end_hunk_0

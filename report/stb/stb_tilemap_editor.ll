Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__editor_traverse:bb.a
  store i32 %i.af, ptr %i.k, align 8, !tbaa !75
  br label %.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %stbte__strequal.exit.i.i
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %._crit_edge.i.i
  %i.ah = phi i32 [ %i.af, %._crit_edge.i.i ], [ %i.r, %.loopexit.loopexit.i.i ] ; 2 uses
  %.029.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.ag, %.loopexit.loopexit.i.i ]
  %i.ai = trunc i32 %.029.i.i to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !73
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next42.i.i, %wide.trip.count44.i.i
  br i1 %exitcond45.not.i.i, label %._crit_edge36.i.i, label %bb.f, !llvm.loop !5

._crit_edge36.i.i:                                ; preds = %.loopexit.i.i, %bb.e
  %i.ak = phi i32 [ 0, %bb.e ], [ %i.ah, %.loopexit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800036 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !72 ; 2 uses
  %i.an = icmp sgt i32 %i.am, %i.ak
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge36.i.i
  store i32 -1, ptr %i.al, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge36.i.i
  %i.ao = phi i32 [ -1, %bb.j ], [ %i.am, %._crit_edge36.i.i ] ; 3 uses
  br i1 %i.n, label %.lr.ph.i.i.i, label %stbte__compute_tileinfo.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 800856
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 9 uses
  %i.ar = icmp eq i32 %i.ao, -1                   ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert396 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat397 = shufflevector <4 x i32> %broadcast.splatinsert396, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi398 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
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
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !73
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !73
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !73
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !73
  %i.bm = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.bj, i64 1
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 2
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 3
  %i.bq = load i16, ptr %i.be, align 2, !tbaa !73
  %i.br = load i16, ptr %i.bf, align 2, !tbaa !73
  %i.bs = load i16, ptr %i.bg, align 2, !tbaa !73
  %i.bt = load i16, ptr %i.bh, align 2, !tbaa !73
  %i.bu = insertelement <4 x i16> poison, i16 %i.bq, i64 0
  %i.bv = insertelement <4 x i16> %i.bu, i16 %i.br, i64 1
  %i.bw = insertelement <4 x i16> %i.bv, i16 %i.bs, i64 2
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.bt, i64 3
  %i.by = zext <4 x i16> %i.bp to <4 x i32>
  %i.bz = zext <4 x i16> %i.bx to <4 x i32>
  %i.ca = icmp eq <4 x i32> %broadcast.splat397, %i.by
  %i.cb = icmp eq <4 x i32> %broadcast.splat397, %i.bz
  %i.cc = or <4 x i1> %broadcast.splat, %i.ca
  %i.cd = or <4 x i1> %broadcast.splat, %i.cb
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = add <4 x i32> %vec.phi, %i.ce           ; 2 uses
  %i.ch = add <4 x i32> %vec.phi398, %i.cf        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !222

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
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !73
  %i.cn = zext i16 %i.cm to i32
  %i.co = icmp eq i32 %i.ao, %i.cn
  %or.cond.i.i.i = or i1 %i.ar, %i.co
  %i.cp = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %.015.i.i.i, %i.cp ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbte__compute_tileinfo.exit.i, label %scalar.ph, !llvm.loop !223

stbte__compute_tileinfo.exit.i:                   ; preds = %scalar.ph, %middle.block, %bb.k
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.k ], [ %i.cj, %middle.block ], [ %spec.select.i.i.i, %scalar.ph ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 800880
  store i32 %.0.lcssa.i.i.i, ptr %i.cq, align 8, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 800884
  store i32 0, ptr %i.cr, align 4, !tbaa !46
  store i32 0, ptr %i.i, align 8, !tbaa !59
  br label %stbte__prepare_tileinfo.exit

stbte__prepare_tileinfo.exit:                     ; preds = %bb.d, %stbte__compute_tileinfo.exit.i
  tail call void @stbte__compute_panel_locations(ptr noundef nonnull %0)
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbte__prepare_tileinfo.exit
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef 2109536) #25
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 800028
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !140
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 800032
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !141
  %i.df = sub nsw i32 %i.dc, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 800012
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !42
  %i.dk = mul nsw i32 %i.dj, %i.dh
  %i.dl = add nsw i32 %i.dk, %i.db
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 800016
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !45
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !43
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = add nsw i32 %i.dq, %i.df
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.db, i32 noundef %i.df, i32 noundef %i.dl, i32 noundef %i.dr, i32 noundef 0) #25
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.ds = icmp eq i32 %.pre, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %stbte__prepare_tileinfo.exit
  %i.dt = phi i1 [ %i.ds, %bb.l ], [ false, %stbte__prepare_tileinfo.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 800028 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 800012 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 800032 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 800016 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.dz = load <2 x i32>, ptr %i.du, align 4, !tbaa !49 ; 2 uses
  %i.ea = load <2 x i32>, ptr %i.dv, align 4, !tbaa !49 ; 3 uses
  %i.eb = sub nsw <2 x i32> %i.dz, %i.ea
  %i.ec = sdiv <2 x i32> %i.eb, %i.ea
  %i.ed = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !49
  %i.ee = add nsw <2 x i32> %i.ed, %i.dz
  %i.ef = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !49
  %i.eg = sub <2 x i32> %i.ee, %i.ef
  %i.eh = sdiv <2 x i32> %i.eg, %i.ea             ; 2 uses
  %i.ei = add nsw <2 x i32> %i.eh, splat (i32 1)
  %i.ej = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ec, <2 x i32> zeroinitializer) ; 8 uses
  %i.ek = load <2 x i32>, ptr %i.dy, align 8, !tbaa !49 ; 2 uses
  %i.el = icmp slt <2 x i32> %i.eh, %i.ek
  %i.em = select <2 x i1> %i.el, <2 x i32> %i.ei, <2 x i32> %i.ek ; 8 uses
  br i1 %i.dt, label %.preheader297, label %.loopexit

.preheader297:                                    ; preds = %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 800008 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !41
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.preheader296.lr.ph, label %.loopexit298

.preheader296.lr.ph:                              ; preds = %.preheader297
  %i.eq = icmp sge <2 x i32> %i.ej, %i.em         ; 2 uses
  %i.er = extractelement <2 x i32> %i.em, i64 0   ; 3 uses
  %i.es = icmp sgt i32 %i.er, -1
  %i.et = extractelement <2 x i32> %i.em, i64 1   ; 3 uses
  %i.eu = icmp sgt i32 %i.et, -1
  %1 = extractelement <2 x i1> %i.eq, i64 0
  %2 = extractelement <2 x i1> %i.eq, i64 1
  %brmerge = select i1 %2, i1 true, i1 %1
  %i.ev = extractelement <2 x i32> %i.ej, i64 0   ; 2 uses
  %i.ew = extractelement <2 x i32> %i.ej, i64 1   ; 2 uses
  br label %.preheader296

.preheader296:                                    ; preds = %.preheader296.lr.ph, %.loopexit295
  %.0254311 = phi i32 [ 0, %.preheader296.lr.ph ], [ %i.ha, %.loopexit295 ] ; 3 uses
  br i1 %brmerge, label %._crit_edge304.split, label %.preheader293

.preheader293:                                    ; preds = %.preheader296, %._crit_edge
  %.0246303 = phi i32 [ %i.fk, %._crit_edge ], [ %i.ew, %.preheader296 ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader293, %bb.n
  %.0302 = phi i32 [ %i.ev, %.preheader293 ], [ %i.fj, %bb.n ] ; 3 uses
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.ey = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.ez = mul nsw i32 %i.ey, %.0302
  %i.fa = add nsw i32 %i.ez, %i.ex
  %i.fb = load i32, ptr %i.du, align 4, !tbaa !140
  %i.fc = sub i32 %i.fa, %i.fb
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.fe = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.ff = mul nsw i32 %i.fe, %.0246303
  %i.fg = add nsw i32 %i.ff, %i.fd
  %i.fh = load i32, ptr %i.dw, align 8, !tbaa !141
  %i.fi = sub i32 %i.fg, %i.fh
  tail call void @stbte__tile_paint(ptr noundef nonnull %0, i32 noundef %i.fc, i32 noundef %i.fi, i32 noundef %.0302, i32 noundef %.0246303, i32 noundef %.0254311)
  %i.fj = add nuw i32 %.0302, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.fj, %i.er
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.n
  %i.fk = add nuw i32 %.0246303, 1                ; 2 uses
  %exitcond337.not = icmp eq i32 %i.fk, %i.et
  br i1 %exitcond337.not, label %._crit_edge304.split, label %.preheader293, !llvm.loop !225

._crit_edge304.split:                             ; preds = %._crit_edge, %.preheader296
  %i.fl = icmp eq i32 %.0254311, 0
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5188), align 4
  %i.fn = icmp eq i32 %i.fm, 1
  %or.cond = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %or.cond, label %bb.o, label %.loopexit295

bb.o:                                             ; preds = %._crit_edge304.split
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.fp = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.fq = mul nsw i32 %i.fp, %i.ev
  %i.fr = add nsw i32 %i.fq, %i.fo
  %i.fs = load i32, ptr %i.du, align 4, !tbaa !140
  %i.ft = sub i32 %i.fr, %i.fs                    ; 2 uses
  %i.fu = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.fv = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.fw = mul nsw i32 %i.fv, %i.ew
  %i.fx = add nsw i32 %i.fw, %i.fu
  %i.fy = load i32, ptr %i.dw, align 8, !tbaa !141
  %i.fz = sub i32 %i.fx, %i.fy                    ; 2 uses
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.gb = icmp slt i32 %i.ft, %i.ga
  %i.gc = select i1 %i.gb, i1 %i.es, i1 false
  br i1 %i.gc, label %.lr.ph, label %.preheader294

.preheader294:                                    ; preds = %.lr.ph, %bb.o
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  %i.ge = icmp slt i32 %i.fz, %i.gd
  %i.gf = select i1 %i.ge, i1 %i.eu, i1 false
  br i1 %i.gf, label %.lr.ph310, label %.loopexit295

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.1306 = phi i32 [ %i.gj, %.lr.ph ], [ 0, %bb.o ] ; 2 uses
  %.0255305 = phi i32 [ %i.gl, %.lr.ph ], [ %i.ft, %bb.o ] ; 3 uses
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.gh = add nsw i32 %.0255305, 1
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  tail call void @STBTE_DRAW_RECT(i32 noundef %.0255305, i32 noundef %i.gg, i32 noundef %i.gh, i32 noundef %i.gi, i32 noundef 4210752) #25
  %i.gj = add nuw nsw i32 %.1306, 1
  %i.gk = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.gl = add nsw i32 %i.gk, %.0255305            ; 2 uses
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.gn = icmp slt i32 %i.gl, %i.gm
  %i.go = icmp slt i32 %.1306, %i.er
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %i.gp, label %.lr.ph, label %.preheader294, !llvm.loop !226

.lr.ph310:                                        ; preds = %.preheader294, %.lr.ph310
  %.1247309 = phi i32 [ %i.gt, %.lr.ph310 ], [ 0, %.preheader294 ] ; 2 uses
  %.0258308 = phi i32 [ %i.gv, %.lr.ph310 ], [ %i.fz, %.preheader294 ] ; 3 uses
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.gr = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.gs = add nsw i32 %.0258308, 1
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.gq, i32 noundef %.0258308, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef 4210752) #25
  %i.gt = add nuw nsw i32 %.1247309, 1
  %i.gu = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.gv = add nsw i32 %i.gu, %.0258308            ; 2 uses
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  %i.gx = icmp slt i32 %i.gv, %i.gw
  %i.gy = icmp slt i32 %.1247309, %i.et
  %i.gz = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %i.gz, label %.lr.ph310, label %.loopexit295, !llvm.loop !227

.loopexit295:                                     ; preds = %.lr.ph310, %.preheader294, %._crit_edge304.split
  %i.ha = add nuw nsw i32 %.0254311, 1            ; 2 uses
  %i.hb = load i32, ptr %i.en, align 8, !tbaa !41
  %i.hc = icmp slt i32 %i.ha, %i.hb
  br i1 %i.hc, label %.preheader296, label %.loopexit298.loopexit, !llvm.loop !228

.loopexit298.loopexit:                            ; preds = %.loopexit295
  %.pre348 = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.hd = icmp eq i32 %.pre348, 0
  br label %.loopexit298

.loopexit298:                                     ; preds = %.loopexit298.loopexit, %.preheader297
  %i.he = phi i1 [ %i.hd, %.loopexit298.loopexit ], [ true, %.preheader297 ]
  %i.hf = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5188), align 4
  %i.hg = icmp eq i32 %i.hf, 2
  %or.cond8 = select i1 %i.he, i1 %i.hg, i1 false
  br i1 %or.cond8, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.loopexit298
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.hi = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.hj = extractelement <2 x i32> %i.ej, i64 0
  %i.hk = mul nsw i32 %i.hi, %i.hj
  %i.hl = add nsw i32 %i.hk, %i.hh
  %i.hm = load i32, ptr %i.du, align 4, !tbaa !140
  %i.hn = sub i32 %i.hl, %i.hm                    ; 2 uses
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.hp = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.hq = extractelement <2 x i32> %i.ej, i64 1
  %i.hr = mul nsw i32 %i.hp, %i.hq
  %i.hs = add nsw i32 %i.hr, %i.ho
  %i.ht = load i32, ptr %i.dw, align 8, !tbaa !141
  %i.hu = sub i32 %i.hs, %i.ht                    ; 2 uses
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.hw = icmp slt i32 %i.hn, %i.hv
  %i.hx = extractelement <2 x i32> %i.em, i64 0   ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, -1
  %i.hz = select i1 %i.hw, i1 %i.hy, i1 false
  br i1 %i.hz, label %.lr.ph316, label %.preheader292

.preheader292:                                    ; preds = %.lr.ph316, %bb.p
  %i.ia = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  %i.ib = icmp slt i32 %i.hu, %i.ia
  %i.ic = extractelement <2 x i32> %i.em, i64 1   ; 2 uses
  %i.id = icmp sgt i32 %i.ic, -1
  %i.ie = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %i.ie, label %.lr.ph319, label %.loopexit

.lr.ph316:                                        ; preds = %bb.p, %.lr.ph316
  %.2314 = phi i32 [ %i.ii, %.lr.ph316 ], [ 0, %bb.p ] ; 2 uses
  %.0257313 = phi i32 [ %i.ik, %.lr.ph316 ], [ %i.hn, %bb.p ] ; 3 uses
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.ig = add nsw i32 %.0257313, 1
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  tail call void @STBTE_DRAW_RECT(i32 noundef %.0257313, i32 noundef %i.if, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef 4210752) #25
  %i.ii = add nuw nsw i32 %.2314, 1
  %i.ij = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.ik = add nsw i32 %i.ij, %.0257313            ; 2 uses
  %i.il = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.im = icmp slt i32 %i.ik, %i.il
  %i.in = icmp slt i32 %.2314, %i.hx
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  br i1 %i.io, label %.lr.ph316, label %.preheader292, !llvm.loop !229

.lr.ph319:                                        ; preds = %.preheader292, %.lr.ph319
  %.2248318 = phi i32 [ %i.is, %.lr.ph319 ], [ 0, %.preheader292 ] ; 2 uses
  %.0256317 = phi i32 [ %i.iu, %.lr.ph319 ], [ %i.hu, %.preheader292 ] ; 3 uses
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !62
  %i.ir = add nsw i32 %.0256317, 1
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ip, i32 noundef %.0256317, i32 noundef %i.iq, i32 noundef %i.ir, i32 noundef 4210752) #25
  %i.is = add nuw nsw i32 %.2248318, 1
  %i.it = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.iu = add nsw i32 %i.it, %.0256317            ; 2 uses
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !63
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = icmp slt i32 %.2248318, %i.ic
  %i.iy = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %i.iy, label %.lr.ph319, label %.loopexit, !llvm.loop !230

.loopexit:                                        ; preds = %.lr.ph319, %bb.m, %.preheader292, %.loopexit298
  %i.iz = icmp slt <2 x i32> %i.ej, %i.em         ; 2 uses
  %3 = extractelement <2 x i1> %i.iz, i64 0
  %4 = extractelement <2 x i1> %i.iz, i64 1
  %or.cond333 = select i1 %4, i1 %3, i1 false
  br i1 %or.cond333, label %.preheader.preheader, label %._crit_edge324.split

.preheader.preheader:                             ; preds = %.loopexit
  %i.ja = extractelement <2 x i32> %i.ej, i64 1
  %i.jb = extractelement <2 x i32> %i.ej, i64 0
  %i.jc = extractelement <2 x i32> %i.em, i64 0
  %i.jd = extractelement <2 x i32> %i.em, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge322
  %.3249323 = phi i32 [ %i.jr, %._crit_edge322 ], [ %i.ja, %.preheader.preheader ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.q
  %.3320 = phi i32 [ %i.jb, %.preheader ], [ %i.jq, %bb.q ] ; 3 uses
  %i.je = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60
  %i.jf = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.jg = mul nsw i32 %i.jf, %.3320
  %i.jh = add nsw i32 %i.jg, %i.je
  %i.ji = load i32, ptr %i.du, align 4, !tbaa !140
  %i.jj = sub i32 %i.jh, %i.ji
  %i.jk = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61
  %i.jl = load i32, ptr %i.dx, align 8, !tbaa !45
  %i.jm = mul nsw i32 %i.jl, %.3249323
  %i.jn = add nsw i32 %i.jm, %i.jk
  %i.jo = load i32, ptr %i.dw, align 8, !tbaa !141
  %i.jp = sub i32 %i.jn, %i.jo
  tail call void @stbte__tile(ptr noundef nonnull %0, i32 noundef %i.jj, i32 noundef %i.jp, i32 noundef %.3320, i32 noundef %.3249323)
  %i.jq = add nuw i32 %.3320, 1                   ; 2 uses
  %exitcond338.not = icmp eq i32 %i.jq, %i.jc
  br i1 %exitcond338.not, label %._crit_edge322, label %bb.q, !llvm.loop !231

._crit_edge322:                                   ; preds = %bb.q
  %i.jr = add nuw i32 %.3249323, 1                ; 2 uses
  %exitcond339.not = icmp eq i32 %i.jr, %i.jd
  br i1 %exitcond339.not, label %._crit_edge324.split, label %.preheader, !llvm.loop !232

._crit_edge324.split:                             ; preds = %._crit_edge322, %.loopexit
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.r, label %bb.u

bb.r:                                             ; preds = %._crit_edge324.split
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !97
  %.not268 = icmp eq i32 %i.ju, 0
  br i1 %.not268, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !60 ; 2 uses
  %i.jw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !98
  %i.jx = load i32, ptr %i.dv, align 4, !tbaa !44 ; 2 uses
  %i.jy = mul nsw i32 %i.jx, %i.jw
  %i.jz = add nsw i32 %i.jy, %i.jv
  %i.ka = load i32, ptr %i.du, align 4, !tbaa !140 ; 2 uses
  %i.kb = sub i32 %i.jz, %i.ka                    ; 3 uses
  %i.kc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !61 ; 2 uses
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5304), align 8, !tbaa !100
  %i.ke = load i32, ptr %i.dx, align 8, !tbaa !45 ; 2 uses
  %i.kf = mul nsw i32 %i.ke, %i.kd
  %i.kg = add nsw i32 %i.kf, %i.kc
  %i.kh = load i32, ptr %i.dw, align 8, !tbaa !141 ; 2 uses
  %i.ki = sub i32 %i.kg, %i.kh                    ; 3 uses
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !99
  %i.kk = add nsw i32 %i.kj, 1
  %i.kl = mul nsw i32 %i.kk, %i.jx
  %i.km = sub i32 %i.jv, %i.ka
  %i.kn = add i32 %i.km, %i.kl                    ; 3 uses
  %i.ko = add nsw i32 %i.kn, 1                    ; 2 uses
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5312), align 8, !tbaa !101
  %i.kq = add nsw i32 %i.kp, 1
  %i.kr = mul nsw i32 %i.kq, %i.ke
  %i.ks = sub i32 %i.kc, %i.kh
  %i.kt = add i32 %i.ks, %i.kr                    ; 3 uses
  %i.ku = add nsw i32 %i.kt, 1                    ; 2 uses
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 40), align 8, !tbaa !134
  %i.kw = and i32 %i.kv, 256
  %.not269 = icmp eq i32 %i.kw, 0
  %i.kx = select i1 %.not269, i32 3158064, i32 14671839 ; 4 uses
  %i.ky = add nsw i32 %i.ki, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.kb, i32 noundef %i.ki, i32 noundef %i.kn, i32 noundef %i.ky, i32 noundef %i.kx) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.kn, i32 noundef %i.ki, i32 noundef %i.ko, i32 noundef %i.kt, i32 noundef %i.kx) #25
  %i.kz = add nsw i32 %i.kb, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.kz, i32 noundef %i.kt, i32 noundef %i.ko, i32 noundef %i.ku, i32 noundef %i.kx) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.kb, i32 noundef %i.ky, i32 noundef %i.kz, i32 noundef %i.ku, i32 noundef %i.kx) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @stbte__flush_delay()
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge324.split
  tail call void @stbte__flush_delay()
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split328
  %indvars.iv = phi i64 [ 0, %bb.u ], [ %indvars.iv.next, %.split328 ] ; 5 uses
  %i.la = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5364), i64 %indvars.iv ; 11 uses
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !105 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 28
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !106 ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !107
  %i.lj = add nsw i32 %i.li, %i.le                ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !108
  %i.lm = add nsw i32 %i.ll, %i.lg                ; 4 uses
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 252), align 4, !tbaa !49
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.le, i32 noundef %i.lg, i32 noundef %i.lj, i32 noundef %i.lm, i32 noundef %i.ln) #25
  %i.lo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 280), align 8, !tbaa !49 ; 4 uses
  %i.lp = add nsw i32 %i.lj, -1                   ; 2 uses
  %i.lq = add nsw i32 %i.lg, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.le, i32 noundef %i.lg, i32 noundef %i.lp, i32 noundef %i.lq, i32 noundef %i.lo) #25
  %i.lr = add nsw i32 %i.lm, -1                   ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lp, i32 noundef %i.lg, i32 noundef %i.lj, i32 noundef %i.lr, i32 noundef %i.lo) #25
  %i.ls = add nsw i32 %i.le, 1                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.ls, i32 noundef %i.lr, i32 noundef %i.lj, i32 noundef %i.lm, i32 noundef %i.lo) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.le, i32 noundef %i.lq, i32 noundef %i.ls, i32 noundef %i.lm, i32 noundef %i.lo) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.lt = getelementptr inbounds nuw i8, ptr %i.la, i64 24 ; 5 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !105 ; 10 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.la, i64 28 ; 5 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !106 ; 11 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 5 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !107 ; 6 uses
  %i.lz = add nsw i32 %i.ly, %i.lu                ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.la, i64 20 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !108 ; 5 uses
  %i.mc = add nsw i32 %i.mb, %i.lw                ; 2 uses
  %i.md = shl nuw nsw i64 %indvars.iv, 19         ; 3 uses
  %i.me = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 24), align 8, !tbaa !90 ; 2 uses
  %.not.i275 = icmp slt i32 %i.me, %i.lu
  br i1 %.not.i275, label %stbte__hittest.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 28), align 4, !tbaa !91 ; 2 uses
  %.not9.i = icmp sge i32 %i.mf, %i.lw
  %i.mg = icmp slt i32 %i.me, %i.lz
  %or.cond10.i = and i1 %i.mg, %.not9.i
  %i.mh = icmp slt i32 %i.mf, %i.mc
  %spec.select.i = and i1 %i.mh, %or.cond10.i
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4
  %i.mj = icmp sgt i32 %i.mi, 0
  %or.cond.i = select i1 %spec.select.i, i1 %i.mj, i1 false
  br i1 %or.cond.i, label %bb.z, label %stbte__hittest.exit

bb.z:                                             ; preds = %bb.y
  %i.mk = trunc i64 %i.md to i32
  %i.ml = or disjoint i32 %i.mk, 3
  store i32 %i.ml, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 16), align 8, !tbaa !92
  br label %stbte__hittest.exit

stbte__hittest.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.mm = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.mm, label %bb.ak [
    i32 0, label %bb.aa
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
  ]

bb.aa:                                            ; preds = %stbte__hittest.exit
  %i.mn = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !86
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mp = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 84), align 4, !tbaa !49
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %i.lz, i32 noundef %i.mc, i32 noundef %i.mp) #25
  %.pre353 = load i32, ptr %i.lt, align 4, !tbaa !105
  %.pre354 = load i32, ptr %i.lv, align 8, !tbaa !106
  %.pre355 = load i32, ptr %i.lx, align 4, !tbaa !107
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mq = phi i32 [ %.pre355, %bb.ab ], [ %i.ly, %bb.aa ]
  %i.mr = phi i32 [ %.pre354, %bb.ab ], [ %i.lw, %bb.aa ]
  %i.ms = phi i32 [ %.pre353, %bb.ab ], [ %i.lu, %bb.aa ]
  tail call void @stbte__toolbar(ptr noundef nonnull %0, i32 noundef %i.ms, i32 noundef %i.mr, i32 noundef %i.mq, i32 poison)
  br label %bb.ak

bb.ad:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__info(ptr noundef nonnull %0, i32 noundef %i.lu, i32 noundef %i.lw, i32 poison, i32 poison)
  br label %bb.ak

bb.ae:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__layers(ptr noundef nonnull %0, i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %i.ly, i32 noundef %i.mb)
  br label %bb.ak

bb.af:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__categories(ptr noundef nonnull %0, i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %i.ly, i32 noundef %i.mb)
  br label %bb.ak
end_hunk_0

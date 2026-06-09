inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@ucs2lib_fastsearch:bb.a
  %i.ce = freeze <2 x i1> %i.cd                   ; 2 uses
  %i.cf = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cg = add nsw <2 x i64> %broadcast.splat, %i.cf
  %i.ch = bitcast <2 x i1> %i.ce to i2
  %.not200 = icmp eq i2 %i.ch, 0                  ; 2 uses
  %i.ci = select i1 %.not200, <2 x i1> %i.bx, <2 x i1> %i.ce ; 2 uses
  %i.cj = select i1 %.not200, <2 x i64> %vec.phi151, <2 x i64> %i.cg ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %i.cl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cc) ; 2 uses
  %i.cm = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cj, <2 x i1> %i.ci, i64 %i.bu) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.ab, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ab ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ab ], [ %i.cl, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.bu, %bb.ab ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i69

._crit_edge.i:                                    ; preds = %.lr.ph.i69, %middle.block
  %.lcssa148 = phi i64 [ %i.cl, %middle.block ], [ %i.eb, %.lr.ph.i69 ]
  %.179.i.lcssa = phi i64 [ %i.cm, %middle.block ], [ %.179.i, %.lr.ph.i69 ]
  %i.cn = sub i64 %1, %3                          ; 4 uses
  %i.co = getelementptr [2 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.cp = and i16 %i.bw, 63
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %.lcssa148, %i.cr                ; 2 uses
  %.not108.i = icmp slt i64 %i.cn, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.al
  %.066110.us.i = phi i64 [ %i.dt, %bb.al ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.al ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.ct = getelementptr [2 x i8], ptr %i.co, i64 %.066110.us.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !208
  %i.cv = icmp eq i16 %i.cu, %i.bw
  br i1 %i.cv, label %.preheader.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph113.split.us.i
  %i.cw = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cw, %i.cn
  br i1 %.not88.us.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr [2 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !208
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cs
  %.not89.us.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dd, %.066110.us.i
  br label %bb.al

bb.ae:                                            ; preds = %.preheader.us.i, %bb.am
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.du, %bb.am ] ; 4 uses
  %i.de = getelementptr [2 x i8], ptr %i.dv, i64 %.0102.us.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !208
  %i.dg = getelementptr [2 x i8], ptr %2, i64 %.0102.us.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !208
  %.not90.us.i = icmp eq i16 %i.df, %i.dh
  br i1 %.not90.us.i, label %bb.am, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ae
  %i.di = icmp eq i64 %.0102.us.i, %i.bu
  br i1 %i.di, label %._crit_edge104.us.thread.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge104.us.i
  %i.dj = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dj, %i.cn
  br i1 %.not91.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr [2 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !208
  %i.dm = and i16 %i.dl, 63
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.cs
  %.not92.us.i = icmp eq i64 %i.dp, 0
  br i1 %.not92.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ah ], [ %3, %bb.ag ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.al

._crit_edge104.us.thread.i:                       ; preds = %bb.am, %._crit_edge104.us.i
  br i1 %i.b, label %bb.aj, label %ucs2lib_rfind_char.exit

bb.aj:                                            ; preds = %._crit_edge104.us.thread.i
  %i.dq = add i64 %.074109.us.i, 1                ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %4
  br i1 %i.dr, label %ucs2lib_rfind_char.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = add i64 %.066110.us.i, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ad, %bb.ac
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.ac ], [ %.074109.us.i, %bb.ad ], [ %.074109.us.i, %bb.ai ], [ %i.dq, %bb.ak ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.ac ], [ %spec.select.us.i, %bb.ad ], [ %.167.us.i, %bb.ai ], [ %i.ds, %bb.ak ]
  %i.dt = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dt, %i.cn
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !827

bb.am:                                            ; preds = %bb.ae
  %i.du = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.du, %i.bu
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ae, !llvm.loop !828

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dv = getelementptr [2 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ae

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.068100.i = phi i64 [ %i.ef, %.lr.ph.i69 ], [ %.068100.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.eb, %.lr.ph.i69 ], [ %.06999.i.ph, %.lr.ph.i69.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i69 ], [ %.07898.i.ph, %.lr.ph.i69.preheader ]
  %i.dw = getelementptr [2 x i8], ptr %2, i64 %.068100.i
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !208 ; 2 uses
  %i.dy = and i16 %i.dx, 63
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = or i64 %i.ea, %.06999.i                 ; 2 uses
  %i.ec = icmp eq i16 %i.dx, %i.bw
  %i.ed = xor i64 %.068100.i, -1
  %i.ee = add nsw i64 %i.bu, %i.ed
  %.179.i = select i1 %i.ec, i64 %i.ee, i64 %.07898.i ; 2 uses
  %i.ef = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ef, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !829

.loopexit.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.al ]
  %i.eg = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.an:                                            ; preds = %bb.aa
  %i.eh = lshr i64 %3, 2
  %i.ei = mul nuw nsw i64 %i.eh, 3
  %i.ej = lshr i64 %1, 2
  %i.ek = icmp samesign ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.el = icmp eq i32 %5, 1
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.em = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.ao
  %i.en = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.an
  %i.eo = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.as:                                            ; preds = %bb.y
  %i.ep = add nsw i64 %3, -1                      ; 9 uses
  %i.eq = load i16, ptr %2, align 2, !tbaa !208   ; 4 uses
  %i.er = and i16 %i.eq, 63
  %i.es = zext nneg i16 %i.er to i64
  %i.et = shl nuw i64 1, %i.es                    ; 2 uses
  %min.iters.check154 = icmp ult i64 %3, 5
  br i1 %min.iters.check154, label %.lr.ph.i71.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.as
  %n.vec157 = and i64 %i.ep, -4                   ; 2 uses
  %i.eu = and i64 %i.ep, 3
  %i.ev = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.et, i64 0
  %broadcast.splatinsert158 = insertelement <2 x i16> poison, i16 %i.eq, i64 0
  %broadcast.splat159 = shufflevector <2 x i16> %broadcast.splatinsert158, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ew = add nsw <2 x i64> %broadcast.splat161, <i64 0, i64 -1>
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph155
  %index163 = phi i64 [ 0, %vector.ph155 ], [ %index.next174, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fm, %vector.body162 ]
  %vec.phi165 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fn, %vector.body162 ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fo, %vector.body162 ]
  %vec.phi167 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fp, %vector.body162 ]
  %vec.phi168 = phi <2 x i64> [ %i.ev, %vector.ph155 ], [ %i.fi, %vector.body162 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph155 ], [ %i.fj, %vector.body162 ]
  %vec.ind170 = phi <2 x i64> [ %i.ew, %vector.ph155 ], [ %i.fq, %vector.body162 ] ; 3 uses
  %i.ex = add nsw <2 x i64> %vec.ind170, splat (i64 -2)
  %i.ey = sub i64 %i.ep, %index163
  %i.ez = getelementptr [2 x i8], ptr %2, i64 %i.ey ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -2
  %i.fb = getelementptr i8, ptr %i.ez, i64 -6
  %wide.load171 = load <2 x i16>, ptr %i.fa, align 2, !tbaa !208
  %wide.load172 = load <2 x i16>, ptr %i.fb, align 2, !tbaa !208
  %reverse = shufflevector <2 x i16> %wide.load171, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse173 = shufflevector <2 x i16> %wide.load172, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = and <2 x i16> %reverse, splat (i16 63)
  %i.fd = and <2 x i16> %reverse173, splat (i16 63)
  %i.fe = zext nneg <2 x i16> %i.fc to <2 x i64>
  %i.ff = zext nneg <2 x i16> %i.fd to <2 x i64>
  %i.fg = shl nuw <2 x i64> splat (i64 1), %i.fe
  %i.fh = shl nuw <2 x i64> splat (i64 1), %i.ff
  %i.fi = or <2 x i64> %i.fg, %vec.phi168         ; 2 uses
  %i.fj = or <2 x i64> %i.fh, %vec.phi169         ; 2 uses
  %i.fk = icmp eq <2 x i16> %reverse, %broadcast.splat159 ; 2 uses
  %i.fl = icmp eq <2 x i16> %reverse173, %broadcast.splat159 ; 2 uses
  %i.fm = select <2 x i1> %i.fk, <2 x i64> %vec.ind170, <2 x i64> %vec.phi164 ; 2 uses
  %i.fn = select <2 x i1> %i.fl, <2 x i64> %i.ex, <2 x i64> %vec.phi165 ; 2 uses
  %i.fo = or <2 x i1> %vec.phi166, %i.fk          ; 2 uses
  %i.fp = or <2 x i1> %vec.phi167, %i.fl          ; 2 uses
  %index.next174 = add nuw i64 %index163, 4       ; 2 uses
  %i.fq = add nsw <2 x i64> %vec.ind170, splat (i64 -4)
  %i.fr = icmp eq i64 %index.next174, %n.vec157
  br i1 %i.fr, label %middle.block175, label %vector.body162, !llvm.loop !830

middle.block175:                                  ; preds = %vector.body162
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fm, <2 x i64> %i.fn)
  %i.fs = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.ft = add nsw i64 %i.fs, -1
  %bin.rdx = or <2 x i1> %i.fp, %i.fo
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fu = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not201 = icmp eq i2 %i.fu, 0
  %rdx.select = select i1 %.not201, i64 %i.ep, i64 %i.ft ; 2 uses
  %bin.rdx176 = or <2 x i64> %i.fj, %i.fi
  %i.fv = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx176) ; 2 uses
  %cmp.n177 = icmp eq i64 %i.ep, %n.vec157
  br i1 %cmp.n177, label %.preheader56.i, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.as, %middle.block175
  %.04660.i.ph = phi i64 [ %i.ep, %bb.as ], [ %rdx.select, %middle.block175 ]
  %.04759.i.ph = phi i64 [ %i.et, %bb.as ], [ %i.fv, %middle.block175 ]
  %.04958.i.ph = phi i64 [ %i.ep, %bb.as ], [ %i.eu, %middle.block175 ]
  br label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %middle.block175
  %.lcssa146 = phi i64 [ %i.fv, %middle.block175 ], [ %i.hc, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block175 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.fw = sub i64 %1, %3                          ; 2 uses
  %i.fx = icmp sgt i64 %i.fw, -1
  br i1 %i.fx, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ax
  %.15065.us.i = phi i64 [ %i.gt, %bb.ax ], [ %i.fw, %.preheader56.i ] ; 5 uses
  %i.fy = getelementptr [2 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !208
  %i.ga = icmp eq i16 %i.fz, %i.eq
  br i1 %i.ga, label %.preheader.us.i74, label %bb.at

bb.at:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = getelementptr i8, ptr %i.fy, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !208
  %i.gd = and i16 %i.gc, 63
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = and i64 %i.gf, %.lcssa146
  %.not51.us.i = icmp eq i64 %i.gg, 0
  %i.gh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.ay
  %.04862.us.i = phi i64 [ %i.gv, %bb.ay ], [ %i.ep, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gi = getelementptr [2 x i8], ptr %i.fy, i64 %.04862.us.i
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !208
  %i.gk = getelementptr [2 x i8], ptr %2, i64 %.04862.us.i
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !208
  %.not52.us.i = icmp eq i16 %i.gj, %i.gl
  br i1 %.not52.us.i, label %bb.ay, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gm = getelementptr i8, ptr %i.fy, i64 -2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !208
  %i.go = and i16 %i.gn, 63
  %i.gp = zext nneg i16 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %.lcssa146
  %.not54.us.i = icmp eq i64 %i.gr, 0
  br i1 %.not54.us.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.us.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i72.lcssa, %bb.aw ], [ %i.gh, %bb.au ], [ %3, %bb.av ]
  %i.gs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gt = add nsw i64 %i.gs, -1
  %i.gu = icmp sgt i64 %i.gs, 0
  br i1 %i.gu, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit, !llvm.loop !831

bb.ay:                                            ; preds = %.preheader.us.i74
  %i.gv = add nsw i64 %.04862.us.i, -1
  %i.gw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.gw, label %.preheader.us.i74, label %ucs2lib_rfind_char.exit, !llvm.loop !832

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.04660.i = phi i64 [ %spec.select.i72, %.lr.ph.i71 ], [ %.04660.i.ph, %.lr.ph.i71.preheader ]
  %.04759.i = phi i64 [ %i.hc, %.lr.ph.i71 ], [ %.04759.i.ph, %.lr.ph.i71.preheader ]
  %.04958.i = phi i64 [ %i.he, %.lr.ph.i71 ], [ %.04958.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %i.gx = getelementptr [2 x i8], ptr %2, i64 %.04958.i
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !208 ; 2 uses
  %i.gz = and i16 %i.gy, 63
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = or i64 %i.hb, %.04759.i                 ; 2 uses
  %i.hd = icmp eq i16 %i.gy, %i.eq
  %i.he = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i72 = select i1 %i.hd, i64 %i.he, i64 %.04660.i ; 2 uses
  %i.hf = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hf, label %.lr.ph.i71, label %.preheader56.i, !llvm.loop !833

ucs2lib_rfind_char.exit:                          ; preds = %bb.aj, %._crit_edge104.us.thread.i, %bb.ax, %bb.at, %bb.ay, %bb.j, %bb.i, %bb.s, %bb.x, %bb.w, %.lr.ph.i, %middle.block195, %.preheader56.i, %.loopexit.i, %bb.u, %bb.p, %bb.d, %bb.a, %bb.b, %bb.ar, %bb.aq, %bb.ap, %bb.f
  %.0 = phi i64 [ %4, %bb.w ], [ -1, %bb.a ], [ %i.f, %bb.f ], [ -1, %bb.d ], [ -1, %bb.ax ], [ -1, %.preheader56.i ], [ %spec.select.i, %.lr.ph.i ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ], [ %i.eo, %bb.ar ], [ -1, %bb.b ], [ %i.as, %bb.u ], [ -1, %bb.s ], [ %i.af, %bb.p ], [ %.15065.us.i, %bb.ay ], [ %i.eg, %.loopexit.i ], [ -1, %bb.i ], [ %i.be, %middle.block195 ], [ %.1.i, %bb.x ], [ %i.s, %bb.j ], [ -1, %bb.at ], [ %4, %bb.aj ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !208  ; 4 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i16> %broadcast.splatinsert252, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !tbaa !208 ; 2 uses
  %wide.load257 = load <2 x i16>, ptr %i.g, align 2, !tbaa !208 ; 2 uses
  %i.h = and <2 x i16> %wide.load, splat (i16 63)
  %i.i = and <2 x i16> %wide.load257, splat (i16 63)
  %i.j = zext nneg <2 x i16> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i16> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i16> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i16> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
end_hunk_0
begin_hunk_1_@ucs4lib_fastsearch:bb.a
  %i.cu = select i1 %.not216, <2 x i1> %i.cj, <2 x i1> %i.cq ; 2 uses
  %i.cv = select i1 %.not216, <2 x i64> %vec.phi167, <2 x i64> %i.cs ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %i.cx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.co) ; 2 uses
  %i.cy = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cv, <2 x i1> %i.cu, i64 %i.cg) ; 2 uses
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.ae, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ae ], [ %i.cx, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.cg, %bb.ae ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i72

._crit_edge.i:                                    ; preds = %.lr.ph.i72, %middle.block
  %.lcssa164 = phi i64 [ %i.cx, %middle.block ], [ %i.en, %.lr.ph.i72 ]
  %.179.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.179.i, %.lr.ph.i72 ]
  %i.cz = sub i64 %1, %3                          ; 4 uses
  %i.da = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.db = and i32 %i.ci, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = or i64 %.lcssa164, %i.dd                ; 2 uses
  %.not108.i = icmp slt i64 %i.cz, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ao, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.ef, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.df = getelementptr [4 x i8], ptr %i.da, i64 %.066110.us.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, %i.ci
  br i1 %i.dh, label %.preheader.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph113.split.us.i
  %i.di = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.di, %i.cz
  br i1 %.not88.us.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr [4 x i8], ptr %i.da, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.de
  %.not89.us.i = icmp eq i64 %i.do, 0
  %i.dp = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dp, %.066110.us.i
  br label %bb.ao

bb.ah:                                            ; preds = %.preheader.us.i, %bb.ap
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.eg, %bb.ap ] ; 4 uses
  %i.dq = getelementptr [4 x i8], ptr %i.eh, i64 %.0102.us.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = getelementptr [4 x i8], ptr %2, i64 %.0102.us.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %.not90.us.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not90.us.i, label %bb.ap, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ah
  %i.du = icmp eq i64 %.0102.us.i, %i.cg
  br i1 %i.du, label %._crit_edge104.us.thread.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge104.us.i
  %i.dv = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dv, %i.cz
  br i1 %.not91.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr [4 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.de
  %.not92.us.i = icmp eq i64 %i.eb, 0
  br i1 %.not92.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ak ], [ %3, %bb.aj ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ao

._crit_edge104.us.thread.i:                       ; preds = %bb.ap, %._crit_edge104.us.i
  br i1 %.not93.i, label %bb.am, label %ucs4lib_find_char.exit

bb.am:                                            ; preds = %._crit_edge104.us.thread.i
  %i.ec = add i64 %.074109.us.i, 1                ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %4
  br i1 %i.ed, label %ucs4lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = add i64 %.066110.us.i, %i.cg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ag, %bb.af
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.af ], [ %.074109.us.i, %bb.ag ], [ %.074109.us.i, %bb.al ], [ %i.ec, %bb.an ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.af ], [ %spec.select.us.i, %bb.ag ], [ %.167.us.i, %bb.al ], [ %i.ee, %bb.an ]
  %i.ef = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ef, %i.cz
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !857

bb.ap:                                            ; preds = %bb.ah
  %i.eg = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.eg, %i.cg
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ah, !llvm.loop !858

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.eh = getelementptr [4 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ah

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %.068100.i = phi i64 [ %i.er, %.lr.ph.i72 ], [ %.068100.i.ph, %.lr.ph.i72.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.en, %.lr.ph.i72 ], [ %.06999.i.ph, %.lr.ph.i72.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i72 ], [ %.07898.i.ph, %.lr.ph.i72.preheader ]
  %i.ei = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7  ; 2 uses
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = or i64 %i.em, %.06999.i                 ; 2 uses
  %i.eo = icmp eq i32 %i.ej, %i.ci
  %i.ep = xor i64 %.068100.i, -1
  %i.eq = add nsw i64 %i.cg, %i.ep
  %.179.i = select i1 %i.eo, i64 %i.eq, i64 %.07898.i ; 2 uses
  %i.er = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.er, %i.cg
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !859

.loopexit.i:                                      ; preds = %bb.ao, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ao ]
  %i.es = icmp eq i32 %5, 0
  %i.et = select i1 %i.es, i64 %.377.ph.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.aq:                                            ; preds = %bb.ad
  %i.eu = lshr i64 %3, 2
  %i.ev = mul nuw nsw i64 %i.eu, 3
  %i.ew = lshr i64 %1, 2
  %i.ex = icmp samesign ult i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ey = icmp eq i32 %5, 1
  br i1 %i.ey, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ar
  %i.fa = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.aq
  %i.fb = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.av:                                            ; preds = %bb.ab
  %i.fc = add nsw i64 %3, -1                      ; 9 uses
  %i.fd = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.fe = and i32 %i.fd, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %3, 7
  br i1 %min.iters.check170, label %.lr.ph.i74.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %bb.av
  %n.vec173 = and i64 %i.fc, -4                   ; 2 uses
  %i.fh = and i64 %i.fc, 3
  %i.fi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fg, i64 0
  %broadcast.splatinsert174 = insertelement <2 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat175 = shufflevector <2 x i32> %broadcast.splatinsert174, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %broadcast.splat177 = shufflevector <2 x i64> %broadcast.splatinsert176, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fj = add nsw <2 x i64> %broadcast.splat177, <i64 0, i64 -1>
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph171
  %index179 = phi i64 [ 0, %vector.ph171 ], [ %index.next190, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fz, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.ga, %vector.body178 ]
  %vec.phi182 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gb, %vector.body178 ]
  %vec.phi183 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.gc, %vector.body178 ]
  %vec.phi184 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %i.fv, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.fw, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %i.fj, %vector.ph171 ], [ %i.gd, %vector.body178 ] ; 3 uses
  %i.fk = add nsw <2 x i64> %vec.ind186, splat (i64 -2)
  %i.fl = sub i64 %i.fc, %index179
  %i.fm = getelementptr [4 x i8], ptr %2, i64 %i.fl ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = getelementptr i8, ptr %i.fm, i64 -12
  %wide.load187 = load <2 x i32>, ptr %i.fn, align 4, !tbaa !7
  %wide.load188 = load <2 x i32>, ptr %i.fo, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load187, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse189 = shufflevector <2 x i32> %wide.load188, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = and <2 x i32> %reverse, splat (i32 63)
  %i.fq = and <2 x i32> %reverse189, splat (i32 63)
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = zext nneg <2 x i32> %i.fq to <2 x i64>
  %i.ft = shl nuw <2 x i64> splat (i64 1), %i.fr
  %i.fu = shl nuw <2 x i64> splat (i64 1), %i.fs
  %i.fv = or <2 x i64> %i.ft, %vec.phi184         ; 2 uses
  %i.fw = or <2 x i64> %i.fu, %vec.phi185         ; 2 uses
  %i.fx = icmp eq <2 x i32> %reverse, %broadcast.splat175 ; 2 uses
  %i.fy = icmp eq <2 x i32> %reverse189, %broadcast.splat175 ; 2 uses
  %i.fz = select <2 x i1> %i.fx, <2 x i64> %vec.ind186, <2 x i64> %vec.phi180 ; 2 uses
  %i.ga = select <2 x i1> %i.fy, <2 x i64> %i.fk, <2 x i64> %vec.phi181 ; 2 uses
  %i.gb = or <2 x i1> %vec.phi182, %i.fx          ; 2 uses
  %i.gc = or <2 x i1> %vec.phi183, %i.fy          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %i.gd = add nsw <2 x i64> %vec.ind186, splat (i64 -4)
  %i.ge = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.ge, label %middle.block191, label %vector.body178, !llvm.loop !860

middle.block191:                                  ; preds = %vector.body178
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fz, <2 x i64> %i.ga)
  %i.gf = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.gg = add nsw i64 %i.gf, -1
  %bin.rdx = or <2 x i1> %i.gc, %i.gb
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.gh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not217 = icmp eq i2 %i.gh, 0
  %rdx.select = select i1 %.not217, i64 %i.fc, i64 %i.gg ; 2 uses
  %bin.rdx192 = or <2 x i64> %i.fw, %i.fv
  %i.gi = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx192) ; 2 uses
  %cmp.n193 = icmp eq i64 %i.fc, %n.vec173
  br i1 %cmp.n193, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.av, %middle.block191
  %.04660.i.ph = phi i64 [ %i.fc, %bb.av ], [ %rdx.select, %middle.block191 ]
  %.04759.i.ph = phi i64 [ %i.fg, %bb.av ], [ %i.gi, %middle.block191 ]
  %.04958.i.ph = phi i64 [ %i.fc, %bb.av ], [ %i.fh, %middle.block191 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block191
  %.lcssa162 = phi i64 [ %i.gi, %middle.block191 ], [ %i.hp, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block191 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gj = sub i64 %1, %3                          ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, -1
  br i1 %i.gk, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.15065.us.i = phi i64 [ %i.hg, %bb.ba ], [ %i.gj, %.preheader56.i ] ; 5 uses
  %i.gl = getelementptr [4 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = icmp eq i32 %i.gm, %i.fd
  br i1 %i.gn, label %.preheader.us.i78, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i77, label %ucs4lib_find_char.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = getelementptr i8, ptr %i.gl, i64 -4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.gt, 0
  %i.gu = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.bb
  %.04862.us.i = phi i64 [ %i.hi, %bb.bb ], [ %i.fc, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gl, i64 %.04862.us.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %i.gx = getelementptr [4 x i8], ptr %2, i64 %.04862.us.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not52.us.i, label %bb.bb, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gz = getelementptr i8, ptr %i.gl, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = and i32 %i.ha, 63
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.he, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gu, %bb.ax ], [ %3, %bb.ay ]
  %i.hf = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.hg = add nsw i64 %i.hf, -1
  %i.hh = icmp sgt i64 %i.hf, 0
  br i1 %i.hh, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !861

bb.bb:                                            ; preds = %.preheader.us.i78
  %i.hi = add nsw i64 %.04862.us.i, -1
  %i.hj = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.hj, label %.preheader.us.i78, label %ucs4lib_find_char.exit, !llvm.loop !862

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.04660.i = phi i64 [ %spec.select.i75, %.lr.ph.i74 ], [ %.04660.i.ph, %.lr.ph.i74.preheader ]
  %.04759.i = phi i64 [ %i.hp, %.lr.ph.i74 ], [ %.04759.i.ph, %.lr.ph.i74.preheader ]
  %.04958.i = phi i64 [ %i.hr, %.lr.ph.i74 ], [ %.04958.i.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.hk = getelementptr [4 x i8], ptr %2, i64 %.04958.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7  ; 2 uses
  %i.hm = and i32 %i.hl, 63
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = or i64 %i.ho, %.04759.i                 ; 2 uses
  %i.hq = icmp eq i32 %i.hl, %i.fd
  %i.hr = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.hq, i64 %i.hr, i64 %.04660.i ; 2 uses
  %i.hs = icmp samesign ugt i64 %.04958.i, 1
  br i1 %i.hs, label %.lr.ph.i74, label %.preheader56.i, !llvm.loop !863

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i, %bb.ba, %bb.aw, %bb.bb, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block211, %.preheader56.i, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.au, %bb.at, %bb.as
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %.preheader56.i ], [ -1, %bb.v ], [ %i.ez, %bb.as ], [ %i.fa, %bb.at ], [ %i.fb, %bb.au ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.15065.us.i, %bb.bb ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.et, %.loopexit.i ], [ -1, %bb.l ], [ %i.bq, %middle.block211 ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.aw ], [ %.066110.us.i, %._crit_edge104.us.thread.i ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 4 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i32> %broadcast.splatinsert252, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !7 ; 2 uses
  %wide.load257 = load <2 x i32>, ptr %i.g, align 4, !tbaa !7 ; 2 uses
  %i.h = and <2 x i32> %wide.load, splat (i32 63)
  %i.i = and <2 x i32> %wide.load257, splat (i32 63)
  %i.j = zext nneg <2 x i32> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i32> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i32> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i32> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
end_hunk_1

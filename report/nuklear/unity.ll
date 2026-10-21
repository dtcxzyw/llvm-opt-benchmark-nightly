Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_Rasterize:bb.a
  %i.cp = zext nneg i32 %.2100129.us.i to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cp
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cr = add nsw i32 %.2100129.us.i, 1
  %i.cs = load <2 x i16>, ptr %i.bi, align 2, !tbaa !106
  %i.ct = sitofp <2 x i16> %i.cs to <2 x float>
  %i.cu = add nsw i32 %.pre150.i, 1
  store i32 %i.cu, ptr %i.c, align 4, !tbaa !55
  br label %stbtt__add_point.exit.us.i

stbtt__add_point.exit.us.i:                       ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.3101.us.i = phi i32 [ %.2100129.us.i, %bb.c ], [ %.2100129.us.i, %bb.d ], [ %.2100129.us.i, %bb.f ], [ %.2100129.us.i, %bb.e ], [ %i.cr, %bb.i ] ; 2 uses
  %.2.us.i = phi i32 [ %.197130.us.i, %bb.c ], [ %.197130.us.i, %bb.d ], [ %.197130.us.i, %bb.f ], [ %.197130.us.i, %bb.e ], [ %.pre150.i, %bb.i ] ; 3 uses
  %i.cv = phi <2 x float> [ %i.bh, %bb.c ], [ %i.bp, %bb.d ], [ %i.ck, %bb.f ], [ %i.cc, %bb.e ], [ %i.ct, %bb.i ]
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %wide.trip.count.i
  br i1 %exitcond147.not.i, label %bb.j, label %bb.c, !llvm.loop !828

bb.j:                                             ; preds = %stbtt__add_point.exit.us.i
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !55  ; 2 uses
  %i.cx = sub nsw i32 %i.cw, %.2.us.i
  %i.cy = sext i32 %.3101.us.i to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cy
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !55
  %i.da = sext i32 %i.cw to i64
  %i.db = shl nsw i64 %i.da, 3
  %.val.us.1.i = load ptr, ptr %11, align 8
  %.val111.us.1.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.dc = tail call ptr %.val111.us.1.i(ptr %.val.us.1.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.db) #50, !inline_history !827 ; 8 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.split.us.i, label %.lr.ph134.us.1.i

.lr.ph134.us.1.i:                                 ; preds = %bb.j
  store i32 0, ptr %i.c, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %stbtt__add_point.exit.us.1.i, %.lr.ph134.us.1.i
  %indvars.iv143.1.i = phi i64 [ 0, %.lr.ph134.us.1.i ], [ %indvars.iv.next144.1.i, %stbtt__add_point.exit.us.1.i ] ; 2 uses
  %.197130.us.1.i = phi i32 [ %.2.us.i, %.lr.ph134.us.1.i ], [ %.2.us.1.i, %stbtt__add_point.exit.us.1.i ] ; 5 uses
  %.2100129.us.1.i = phi i32 [ -1, %.lr.ph134.us.1.i ], [ %.3101.us.1.i, %stbtt__add_point.exit.us.1.i ] ; 7 uses
  %i.de = phi <2 x float> [ zeroinitializer, %.lr.ph134.us.1.i ], [ %i.fd, %stbtt__add_point.exit.us.1.i ] ; 5 uses
  %i.df = getelementptr inbounds nuw [14 x i8], ptr %2, i64 %indvars.iv143.1.i ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !273
  switch i8 %i.dh, label %stbtt__add_point.exit.us.1.i [
    i8 1, label %bb.o
    i8 2, label %bb.n
    i8 3, label %bb.m
    i8 4, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !276
  %i.dk = sitofp i16 %i.dj to float
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !277
  %i.dn = sitofp i16 %i.dm to float
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !289
  %i.dq = sitofp i16 %i.dp to float
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 10
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !290
  %i.dt = sitofp i16 %i.ds to float
  %i.du = load i16, ptr %i.df, align 2, !tbaa !274
  %i.dv = sitofp i16 %i.du to float
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !275
  %i.dy = sitofp i16 %i.dx to float
  %i.dz = extractelement <2 x float> %i.de, i64 0
  %i.ea = extractelement <2 x float> %i.de, i64 1
  call fastcc void @stbtt__tesselate_cubic(ptr noundef nonnull %i.dc, ptr noundef %i.c, float noundef %i.dz, float noundef %i.ea, float noundef %i.dk, float noundef %i.dn, float noundef %i.dq, float noundef %i.dt, float noundef %i.dv, float noundef %i.dy, float noundef %i.g, i32 noundef 0)
  %i.eb = load <2 x i16>, ptr %i.df, align 2, !tbaa !106
  %i.ec = sitofp <2 x i16> %i.eb to <2 x float>
  br label %stbtt__add_point.exit.us.1.i

bb.m:                                             ; preds = %bb.k
  %i.ed = load <4 x i16>, ptr %i.df, align 2, !tbaa !106
  %i.ee = sitofp <4 x i16> %i.ed to <4 x float>   ; 4 uses
  %i.ef = extractelement <2 x float> %i.de, i64 0
  %i.eg = extractelement <2 x float> %i.de, i64 1
  %i.eh = extractelement <4 x float> %i.ee, i64 0
  %i.ei = extractelement <4 x float> %i.ee, i64 1
  %i.ej = extractelement <4 x float> %i.ee, i64 2
  %i.ek = extractelement <4 x float> %i.ee, i64 3
  call fastcc void @stbtt__tesselate_curve(ptr noundef nonnull %i.dc, ptr noundef %i.c, float noundef %i.ef, float noundef %i.eg, float noundef %i.ej, float noundef %i.ek, float noundef %i.eh, float noundef %i.ei, float noundef %i.g, i32 noundef 0)
  %i.el = load <2 x i16>, ptr %i.df, align 2, !tbaa !106
  %i.em = sitofp <2 x i16> %i.el to <2 x float>
  br label %stbtt__add_point.exit.us.1.i

bb.n:                                             ; preds = %bb.k
  %i.en = load i32, ptr %i.c, align 4, !tbaa !55  ; 2 uses
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.c, align 4, !tbaa !55
  %i.ep = load <2 x i16>, ptr %i.df, align 2, !tbaa !106
  %i.eq = sitofp <2 x i16> %i.ep to <2 x float>   ; 2 uses
  %i.er = sext i32 %i.en to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.er
  store <2 x float> %i.eq, ptr %i.es, align 4, !tbaa !54
  br label %stbtt__add_point.exit.us.1.i

bb.o:                                             ; preds = %bb.k
  %i.et = icmp sgt i32 %.2100129.us.1.i, -1
  %.pre151.i = load i32, ptr %i.c, align 4, !tbaa !55 ; 4 uses
  br i1 %i.et, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eu = sub nsw i32 %.pre151.i, %.197130.us.1.i
  %i.ev = zext nneg i32 %.2100129.us.1.i to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ev
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ex = add nsw i32 %.pre151.i, 1
  store i32 %i.ex, ptr %i.c, align 4, !tbaa !55
  %i.ey = load <2 x i16>, ptr %i.df, align 2, !tbaa !106
  %i.ez = sitofp <2 x i16> %i.ey to <2 x float>   ; 2 uses
  %i.fa = add nsw i32 %.2100129.us.1.i, 1
  %i.fb = sext i32 %.pre151.i to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.fb
  store <2 x float> %i.ez, ptr %i.fc, align 4, !tbaa !54
  br label %stbtt__add_point.exit.us.1.i

stbtt__add_point.exit.us.1.i:                     ; preds = %bb.q, %bb.n, %bb.m, %bb.l, %bb.k
  %.3101.us.1.i = phi i32 [ %.2100129.us.1.i, %bb.k ], [ %.2100129.us.1.i, %bb.l ], [ %i.fa, %bb.q ], [ %.2100129.us.1.i, %bb.m ], [ %.2100129.us.1.i, %bb.n ] ; 2 uses
  %.2.us.1.i = phi i32 [ %.197130.us.1.i, %bb.k ], [ %.197130.us.1.i, %bb.l ], [ %.pre151.i, %bb.q ], [ %.197130.us.1.i, %bb.m ], [ %.197130.us.1.i, %bb.n ] ; 2 uses
  %i.fd = phi <2 x float> [ %i.de, %bb.k ], [ %i.ec, %bb.l ], [ %i.ez, %bb.q ], [ %i.em, %bb.m ], [ %i.eq, %bb.n ]
  %indvars.iv.next144.1.i = add nuw nsw i64 %indvars.iv143.1.i, 1 ; 2 uses
  %exitcond147.1.not.i = icmp eq i64 %indvars.iv.next144.1.i, %wide.trip.count.i
  br i1 %exitcond147.1.not.i, label %stbtt_FlattenCurves.exit, label %bb.k, !llvm.loop !828

.split.us.i:                                      ; preds = %bb.j
  %.val116.i = load ptr, ptr %11, align 8
  %i.fe = getelementptr i8, ptr %11, i64 16       ; 2 uses
  %.val117.i = load ptr, ptr %i.fe, align 8, !tbaa !278
  tail call void %.val117.i(ptr %.val116.i, ptr noundef null) #50, !inline_history !829
  %.val114.i = load ptr, ptr %11, align 8
  %.val115.i = load ptr, ptr %i.fe, align 8, !tbaa !278
  tail call void %.val115.i(ptr %.val114.i, ptr noundef nonnull %i.bf) #50, !inline_history !829
  br label %stbtt_FlattenCurves.exit.thread

stbtt_FlattenCurves.exit.thread:                  ; preds = %.split.us.i, %bb.a, %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.ik

stbtt_FlattenCurves.exit:                         ; preds = %stbtt__add_point.exit.us.1.i
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !55
  %i.fg = sub nsw i32 %i.ff, %.2.us.1.i
  %i.fh = sext i32 %.3101.us.1.i to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.fh
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  %min.iters.check163 = icmp ult i32 %spec.select.i.lcssa, 8
  br i1 %min.iters.check163, label %.lr.ph.i28.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %stbtt_FlattenCurves.exit
  %n.vec165 = and i64 %i.bc, 2147483640           ; 3 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body166 ] ; 2 uses
  %vec.phi168 = phi <4 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.fl, %vector.body166 ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.fm, %vector.body166 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index167 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <4 x i32>, ptr %i.fj, align 4, !tbaa !55
  %wide.load170 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !55
  %i.fl = add <4 x i32> %wide.load, %vec.phi168   ; 2 uses
  %i.fm = add <4 x i32> %wide.load170, %vec.phi169 ; 2 uses
  %index.next171 = add nuw i64 %index167, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.fn, label %middle.block172, label %vector.body166, !llvm.loop !830

middle.block172:                                  ; preds = %vector.body166
  %bin.rdx173 = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx173) ; 2 uses
  %cmp.n174 = icmp eq i64 %n.vec165, %i.bc
  br i1 %cmp.n174, label %._crit_edge.loopexit.i, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %stbtt_FlattenCurves.exit, %middle.block172
  %indvars.iv.i29.ph = phi i64 [ 0, %stbtt_FlattenCurves.exit ], [ %n.vec165, %middle.block172 ]
  %.089105.i.ph = phi i32 [ 0, %stbtt_FlattenCurves.exit ], [ %i.fo, %middle.block172 ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.lr.ph.i28 ], [ %indvars.iv.i29.ph, %.lr.ph.i28.preheader ] ; 2 uses
  %.089105.i = phi i32 [ %i.fr, %.lr.ph.i28 ], [ %.089105.i.ph, %.lr.ph.i28.preheader ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i29
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !55
  %i.fr = add nsw i32 %i.fq, %.089105.i           ; 2 uses
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %i.bc
  br i1 %exitcond.not.i31, label %._crit_edge.loopexit.i, label %.lr.ph.i28, !llvm.loop !831

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i28, %middle.block172
  %.lcssa160 = phi i32 [ %i.fo, %middle.block172 ], [ %i.fr, %.lr.ph.i28 ]
  %.not.i = icmp eq i32 %10, 0                    ; 2 uses
  %i.fs = fneg float %5
  %12 = select i1 %.not.i, float %5, float %i.fs  ; 2 uses
  %i.ft = add nsw i32 %.lcssa160, 1
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul nsw i64 %i.fu, 20
  %.val.i = load ptr, ptr %11, align 8
  %.val93.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.fw = tail call ptr %.val93.i(ptr %.val.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.fv) #50, !inline_history !832 ; 10 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %stbtt__rasterize.exit, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge.loopexit.i
  br i1 %.not.i, label %.lr.ph117.split.us.i.preheader, label %.lr.ph117.split.i.preheader

.lr.ph117.split.i.preheader:                      ; preds = %.lr.ph117.i
  %i.fy = insertelement <4 x float> poison, float %4, i64 0
  %i.fz = insertelement <4 x float> %i.fy, float %12, i64 1
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gb = insertelement <4 x float> poison, float %6, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %7, i64 1
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph117.split.i

.lr.ph117.split.us.i.preheader:                   ; preds = %.lr.ph117.i
  %i.ge = insertelement <4 x float> poison, float %4, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %12, i64 1
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = insertelement <4 x float> poison, float %6, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %7, i64 1
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph117.split.us.i

.lr.ph117.split.us.i:                             ; preds = %.lr.ph117.split.us.i.preheader, %._crit_edge112.split.us.us.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %.085116.us.i = phi i32 [ %i.go, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %.190114.us.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %i.gk = sext i32 %.085116.us.i to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gk ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv142.i ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !55 ; 4 uses
  %i.go = add nsw i32 %i.gn, %.085116.us.i
  %i.gp = icmp sgt i32 %i.gn, 0
  br i1 %i.gp, label %.lr.ph111.us.preheader.i, label %._crit_edge112.split.us.us.i

.lr.ph111.us.preheader.i:                         ; preds = %.lr.ph117.split.us.i
  %i.gq = add nsw i32 %i.gn, -1                   ; 2 uses
  %.phi.trans.insert150.i = zext nneg i32 %i.gq to i64
  %.phi.trans.insert151.i = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.phi.trans.insert150.i
  %.phi.trans.insert152.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert151.i, i64 4
  %.pre153.i = load float, ptr %.phi.trans.insert152.i, align 4, !tbaa !292
  br label %.lr.ph111.us.i

.lr.ph111.us.i:                                   ; preds = %.lr.ph111.us._crit_edge.i, %.lr.ph111.us.preheader.i
  %i.gr = phi i32 [ %i.gn, %.lr.ph111.us.preheader.i ], [ %i.hl, %.lr.ph111.us._crit_edge.i ]
  %i.gs = phi float [ %.pre153.i, %.lr.ph111.us.preheader.i ], [ %i.gv, %.lr.ph111.us._crit_edge.i ] ; 2 uses
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph111.us.preheader.i ], [ %indvars.iv.next140.i, %.lr.ph111.us._crit_edge.i ] ; 5 uses
  %.087108.us.us.i = phi i32 [ %i.gq, %.lr.ph111.us.preheader.i ], [ %.pre-phi.i, %.lr.ph111.us._crit_edge.i ]
  %.2107.us.us.i = phi i32 [ %.190114.us.i, %.lr.ph111.us.preheader.i ], [ %.3.us.us.i, %.lr.ph111.us._crit_edge.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv139.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !292 ; 3 uses
  %i.gw = fcmp oeq float %i.gs, %i.gv
  br i1 %i.gw, label %.lr.ph111.us._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph111.us.i
  %i.gx = sext i32 %.2107.us.us.i to i64
  %i.gy = getelementptr inbounds [20 x i8], ptr %i.fw, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = fcmp olt float %i.gs, %i.gv             ; 3 uses
  %spec.store.select.i = zext i1 %i.ha to i32
  store i32 %spec.store.select.i, ptr %i.gz, align 4, !tbaa !850
  %i.hb = sext i32 %.087108.us.us.i to i64        ; 2 uses
  %i.hc = select i1 %i.ha, i64 %i.hb, i64 %indvars.iv139.i
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.hc
  %i.he = select i1 %i.ha, i64 %indvars.iv139.i, i64 %i.hb
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.he
  %i.hg = load <2 x float>, ptr %i.hd, align 4, !tbaa !54
  %i.hh = load <2 x float>, ptr %i.hf, align 4, !tbaa !54
  %i.hi = shufflevector <2 x float> %i.hg, <2 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.gg, <4 x float> %i.gj)
  store <4 x float> %i.hj, ptr %i.gy, align 4, !tbaa !54
  %i.hk = add nsw i32 %.2107.us.us.i, 1
  %.pre154.i = load i32, ptr %i.gm, align 4, !tbaa !55
  br label %.lr.ph111.us._crit_edge.i

.lr.ph111.us._crit_edge.i:                        ; preds = %bb.r, %.lr.ph111.us.i
  %i.hl = phi i32 [ %.pre154.i, %bb.r ], [ %i.gr, %.lr.ph111.us.i ] ; 2 uses
  %.3.us.us.i = phi i32 [ %i.hk, %bb.r ], [ %.2107.us.us.i, %.lr.ph111.us.i ] ; 2 uses
  %.pre-phi.i = trunc i64 %indvars.iv139.i to i32
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next140.i, %i.hm
  br i1 %i.hn, label %.lr.ph111.us.i, label %._crit_edge112.split.us.us.i, !llvm.loop !833

._crit_edge112.split.us.us.i:                     ; preds = %.lr.ph111.us._crit_edge.i, %.lr.ph117.split.us.i
  %.2.lcssa.us.i = phi i32 [ %.190114.us.i, %.lr.ph117.split.us.i ], [ %.3.us.us.i, %.lr.ph111.us._crit_edge.i ] ; 2 uses
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.bc
  br i1 %exitcond146.not.i, label %._crit_edge118.i, label %.lr.ph117.split.us.i, !llvm.loop !834

.lr.ph117.split.i:                                ; preds = %.lr.ph117.split.i.preheader, %._crit_edge112.split.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.085116.i = phi i32 [ %i.hs, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.190114.i = phi i32 [ %.2.lcssa.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %i.ho = sext i32 %.085116.i to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.ho ; 4 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv134.i ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !55 ; 4 uses
  %i.hs = add nsw i32 %i.hr, %.085116.i
  %i.ht = icmp sgt i32 %i.hr, 0
  br i1 %i.ht, label %.lr.ph111.preheader.i, label %._crit_edge112.split.i

.lr.ph111.preheader.i:                            ; preds = %.lr.ph117.split.i
  %i.hu = add nsw i32 %i.hr, -1                   ; 2 uses
  %.phi.trans.insert.i = zext nneg i32 %i.hu to i64
  %.phi.trans.insert147.i = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.phi.trans.insert.i
  %.phi.trans.insert148.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert147.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert148.i, align 4, !tbaa !292
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111._crit_edge.i, %.lr.ph111.preheader.i
  %i.hv = phi i32 [ %i.hr, %.lr.ph111.preheader.i ], [ %i.ip, %.lr.ph111._crit_edge.i ]
  %i.hw = phi float [ %.pre.i, %.lr.ph111.preheader.i ], [ %i.hz, %.lr.ph111._crit_edge.i ] ; 2 uses
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph111.preheader.i ], [ %indvars.iv.next132.i, %.lr.ph111._crit_edge.i ] ; 5 uses
  %.087108.i = phi i32 [ %i.hu, %.lr.ph111.preheader.i ], [ %.pre-phi157.i, %.lr.ph111._crit_edge.i ]
  %.2107.i = phi i32 [ %.190114.i, %.lr.ph111.preheader.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv131.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !292 ; 3 uses
  %i.ia = fcmp oeq float %i.hw, %i.hz
  br i1 %i.ia, label %.lr.ph111._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph111.i
  %i.ib = sext i32 %.2107.i to i64
  %i.ic = getelementptr inbounds [20 x i8], ptr %i.fw, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = fcmp ogt float %i.hw, %i.hz             ; 3 uses
  %spec.store.select122.i = zext i1 %i.ie to i32
  store i32 %spec.store.select122.i, ptr %i.id, align 4, !tbaa !850
  %i.if = sext i32 %.087108.i to i64              ; 2 uses
  %i.ig = select i1 %i.ie, i64 %i.if, i64 %indvars.iv131.i
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.ig
  %i.ii = select i1 %i.ie, i64 %indvars.iv131.i, i64 %i.if
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.ii
  %i.ik = load <2 x float>, ptr %i.ih, align 4, !tbaa !54
  %i.il = load <2 x float>, ptr %i.ij, align 4, !tbaa !54
  %i.im = shufflevector <2 x float> %i.ik, <2 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.ga, <4 x float> %i.gd)
  store <4 x float> %i.in, ptr %i.ic, align 4, !tbaa !54
  %i.io = add nsw i32 %.2107.i, 1
  %.pre149.i = load i32, ptr %i.hq, align 4, !tbaa !55
  br label %.lr.ph111._crit_edge.i

.lr.ph111._crit_edge.i:                           ; preds = %bb.s, %.lr.ph111.i
  %i.ip = phi i32 [ %.pre149.i, %bb.s ], [ %i.hv, %.lr.ph111.i ] ; 2 uses
  %.3.i = phi i32 [ %i.io, %bb.s ], [ %.2107.i, %.lr.ph111.i ] ; 2 uses
  %.pre-phi157.i = trunc i64 %indvars.iv131.i to i32
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp slt i64 %indvars.iv.next132.i, %i.iq
  br i1 %i.ir, label %.lr.ph111.i, label %._crit_edge112.split.i, !llvm.loop !833

._crit_edge112.split.i:                           ; preds = %.lr.ph111._crit_edge.i, %.lr.ph117.split.i
  %.2.lcssa.i = phi i32 [ %.190114.i, %.lr.ph117.split.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %i.bc
  br i1 %exitcond138.not.i, label %._crit_edge118.i, label %.lr.ph117.split.i, !llvm.loop !834

._crit_edge118.i:                                 ; preds = %._crit_edge112.split.i, %._crit_edge112.split.us.us.i
  %.190.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge112.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge112.split.i ] ; 4 uses
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.fw, i32 noundef %.190.lcssa.i)
  %i.is = icmp sgt i32 %.190.lcssa.i, 1
  br i1 %i.is, label %.lr.ph.preheader.i.i.i, label %stbtt__sort_edges.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge118.i
  %wide.trip.count.i.i.i = zext nneg i32 %.190.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.it = getelementptr inbounds nuw [20 x i8], ptr %i.fw, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !54
  %i.iu = load <2 x float>, ptr %i.it, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !851
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.u ] ; 4 uses
  %i.iv = getelementptr [20 x i8], ptr %i.fw, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -16
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !294
  %i.iy = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.ix
  br i1 %i.iy, label %bb.u, label %.thread.split.loop.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.iz = getelementptr i8, ptr %i.iv, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.iv, ptr noundef nonnull align 4 dereferenceable(20) %i.iz, i64 20, i1 false), !tbaa.struct !295
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.ja = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.ja, label %bb.t, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.t
  %i.jb = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.jb, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.jc = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.jc
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i
  %i.jd = sext i32 %.021.lcssa.i.i.i to i64
  %i.je = getelementptr inbounds [20 x i8], ptr %i.fw, i64 %i.jd ; 2 uses
  store <2 x float> %i.iu, ptr %i.je, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !851
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
end_hunk_0
begin_hunk_1_@nk_combo_begin_text:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.dd = load float, ptr %i.cw, align 8, !tbaa !654 ; 2 uses
  %i.de = load float, ptr %i.cv, align 4, !tbaa !1219
  %i.df = fsub float %i.cz, %i.de                 ; 3 uses
  store float %i.df, ptr %6, align 4, !tbaa !112
  %i.dg = fadd float %i.dd, %i.z                  ; 2 uses
  store float %i.dg, ptr %i.da, align 4, !tbaa !114
  %i.dh = load <2 x float>, ptr %i.dc, align 8, !tbaa !54 ; 3 uses
  %i.di = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dg, i64 1
  %i.dk = fadd <2 x float> %i.dj, %i.dh
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !54
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !54 ; 4 uses
  %i.dn = fadd <2 x float> %i.r, %i.dm            ; 3 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dd, float -2.000000e+00, float %i.x) ; 4 uses
  store float %i.do, ptr %i.cx, align 4, !tbaa !113
  store float %i.do, ptr %i.db, align 4, !tbaa !115
  %i.dp = extractelement <2 x float> %i.dh, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float -2.000000e+00, float %i.do)
  %.sroa.5.8.vec.insert = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dr = shufflevector <2 x float> %i.dh, <2 x float> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.ds = insertelement <2 x float> %i.t, float %i.do, i64 0
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ds) ; 3 uses
  %i.du = shufflevector <2 x float> %.sroa.5.8.vec.insert, <2 x float> %i.dt, <2 x i32> <i32 0, i32 2>
  br i1 %.not104, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dv = extractelement <2 x float> %i.dm, i64 0
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float -2.000000e+00, float %i.y)
  %.sroa.6.8.vec.insert14 = insertelement <2 x float> %i.dt, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !426
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.dx, <2 x float> %i.dn, <2 x float> %.sroa.6.8.vec.insert14, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.dy)
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !655
  %i.ec = extractelement <2 x float> %i.dm, i64 0
  %i.ed = fadd float %i.ec, %i.eb
  %i.ee = fsub float %i.df, %i.ed
  %i.ef = extractelement <2 x float> %i.dn, i64 0
  %i.eg = fsub float %i.ee, %i.ef
  %.sroa.6.8.vec.insert = insertelement <2 x float> %i.dt, float %i.eg, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !426
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.eh, <2 x float> %i.dn, <2 x float> %.sroa.6.8.vec.insert, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.ei)
  %i.ej = load i32, ptr %i.q, align 8, !tbaa !460 ; 3 uses
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.el = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.eh, ptr noundef nonnull readonly %6, i32 noundef %i.ej, ptr noundef nonnull readonly %i.dz) ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !413
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.en, ptr %i.eo, ptr %i.ep
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8, !tbaa !56
  %i.eq = and i32 %i.ej, 16
  %.not.i = icmp eq i32 %i.eq, 0
  %i.er = and i32 %i.ej, 32
  %.not22.i = icmp eq i32 %i.er, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.es, align 4, !tbaa !56 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.eu = load float, ptr %i.et, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.ev = fcmp oeq float %i.eu, 1.000000e+00
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.p:                                             ; preds = %bb.n
  %i.ew = and i32 %.sroa.04.0.i, 255
  %i.ex = uitofp nneg i32 %i.ew to float
  %i.ey = fmul float %i.eu, %i.ex
  %i.ez = fptoui float %i.ey to i8
  %i.fa = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.fb = uitofp nneg i32 %i.fa to float
  %i.fc = fmul float %i.eu, %i.fb
  %i.fd = fptoui float %i.fc to i8
  %i.fe = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ff = uitofp nneg i32 %i.fe to float
  %i.fg = fmul float %i.eu, %i.ff
  %i.fh = fptoui float %i.fg to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.o, %bb.p
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.o ], [ %i.fd, %bb.p ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.o ], [ %i.ez, %bb.p ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.o ], [ %i.fh, %bb.p ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.eh, i32 noundef %.092, <2 x float> %i.dk, <2 x float> %i.du, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.ek)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %nk_draw_button_symbol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !415 ; 2 uses
  %.not.i166 = icmp eq ptr %i.fi, null
  br i1 %.not.i166, label %nk_combo_begin.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 168
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !416
  %.not44.i = icmp eq ptr %i.fk, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !464
  %foldExtExtBinop189 = fadd <2 x float> %i.r, %i.t
  %i.fn = extractelement <2 x float> %foldExtExtBinop189, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !656
  %i.fq = fsub float %i.fn, %i.fp
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.r, float %i.fq, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !524 ; 3 uses
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !524
  %i.fu = icmp ne ptr %i.fm, null                 ; 4 uses
  br i1 %i.fu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !529
  %i.fx = icmp eq i32 %i.fw, %i.fs
  br i1 %i.fx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !528
  %i.ga = icmp eq i32 %i.fz, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.gb = phi i1 [ false, %bb.t ], [ false, %bb.s ], [ %i.ga, %bb.u ]
  %i.gc = xor i1 %i.fu, true
  %or.cond45.i = select i1 %i.gc, i1 true, i1 %i.gb
  %or.cond9.i = or i1 %i.u, %i.fu
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.w, label %nk_combo_begin.exit

bb.w:                                             ; preds = %bb.v
  %or.cond.i = and i1 %i.u, %i.fu                 ; 2 uses
  %.sroa.3.0.i167 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.t
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %i.gd = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %3, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i167, i32 noundef 32)
  br i1 %i.gd, label %bb.x, label %nk_combo_begin.exit

bb.x:                                             ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.ge, align 8, !tbaa !528
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fs, ptr %i.gf, align 8, !tbaa !529
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.x ], [ false, %bb.v ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i1 @nk_button_behavior(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !55
  %i.b = and i32 %i.a, 2
  %. = or disjoint i32 %i.b, 4                    ; 3 uses
  store i32 %., ptr %0, align 4, !tbaa !55
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 356
  %i.d = load float, ptr %i.c, align 4, !tbaa !391 ; 2 uses
  %i.e = fcmp ole float %.sroa.0.0.vec.extract.i, %i.d
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.g = fcmp olt float %i.d, %i.f
  %or.cond.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.c, label %nk_input_is_mouse_pressed.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.i = load float, ptr %i.h, align 4, !tbaa !392 ; 2 uses
  %i.j = fcmp ole float %.sroa.0.4.vec.extract.i, %i.i
  %foldExtExtBinop73 = fadd <2 x float> %1, %2
  %i.k = extractelement <2 x float> %foldExtExtBinop73, i64 1 ; 2 uses
  %i.l = fcmp olt float %i.i, %i.k
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %nk_input_is_mouse_down.exit, label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_down.exit:                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.n = load i8, ptr %i.m, align 4, !tbaa !388, !range !88, !noundef !89
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  %spec.store.select = select i1 %i.o, i32 34, i32 18 ; 5 uses
  store i32 %spec.store.select, ptr %0, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.q = load float, ptr %i.p, align 4, !tbaa !389 ; 2 uses
  %i.r = fcmp ole float %.sroa.0.0.vec.extract.i, %i.q
  %i.s = fcmp olt float %i.q, %i.f
  %or.cond.i34 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i34, label %nk_input_has_mouse_click_in_button_rect.exit, label %nk_input_is_mouse_pressed.exit

nk_input_has_mouse_click_in_button_rect.exit:     ; preds = %nk_input_is_mouse_down.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.u = load float, ptr %i.t, align 4, !tbaa !390 ; 2 uses
  %i.v = fcmp ole float %.sroa.0.4.vec.extract.i, %i.u
  %i.w = fcmp olt float %i.u, %i.k
  %or.cond16.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond16.i, label %bb.d, label %nk_input_is_mouse_pressed.exit

bb.d:                                             ; preds = %nk_input_has_mouse_click_in_button_rect.exit
  %.not27 = icmp eq i32 %4, 0
  br i1 %.not27, label %5, label %nk_input_is_mouse_pressed.exit

5:                                                ; preds = %bb.d
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %5
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.y = load i32, ptr %i.x, align 4, !tbaa !383
  %.not6.i = icmp eq i32 %i.y, 0
  br i1 %.not6.i, label %bb.f, label %nk_input_is_mouse_pressed.exit

bb.f:                                             ; preds = %bb.e, %5
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.d, %nk_input_is_mouse_down.exit, %bb.b, %bb.c, %bb.f, %bb.e, %nk_input_has_mouse_click_in_button_rect.exit
  %6 = phi i32 [ %spec.store.select, %nk_input_is_mouse_down.exit ], [ %spec.store.select, %nk_input_has_mouse_click_in_button_rect.exit ], [ %., %bb.c ], [ %., %bb.b ], [ %spec.store.select, %bb.f ], [ 34, %bb.e ], [ %spec.store.select, %bb.d ] ; 2 uses
  %.0 = phi i1 [ false, %nk_input_is_mouse_down.exit ], [ false, %nk_input_has_mouse_click_in_button_rect.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ], [ true, %bb.e ], [ %i.o, %bb.d ] ; 3 uses
  %7 = and i32 %6, 16
  %.not28 = icmp eq i32 %7, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 364
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !393 ; 4 uses
  br i1 %.not28, label %nk_input_is_mouse_pressed.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %i.z = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.aa = fcmp olt float %.pre, %i.f
  %or.cond.i46 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i46, label %bb.h, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %.sroa.0.4.vec.extract.i48 = extractelement <2 x float> %1, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !394 ; 2 uses
  %i.ad = fcmp ole float %.sroa.0.4.vec.extract.i48, %i.ac
  %foldExtExtBinop75 = fadd <2 x float> %1, %2
  %i.ae = extractelement <2 x float> %foldExtExtBinop75, i64 1
  %i.af = fcmp olt float %i.ac, %i.ae
  %or.cond64 = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond64, label %nk_input_is_mouse_pressed.exit._crit_edge, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

nk_input_is_mouse_pressed.exit._crit_edge:        ; preds = %nk_input_is_mouse_pressed.exit, %bb.h
  %i.ag = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.ah = fcmp olt float %.pre, %i.f
  %or.cond.i53 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i53, label %bb.i, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

bb.i:                                             ; preds = %nk_input_is_mouse_pressed.exit._crit_edge
  %.sroa.0.4.vec.extract.i55 = extractelement <2 x float> %1, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !394 ; 2 uses
  %i.ak = fcmp ole float %.sroa.0.4.vec.extract.i55, %i.aj
  %foldExtExtBinop77 = fadd <2 x float> %1, %2
  %i.al = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.am = fcmp olt float %i.aj, %i.al
  %or.cond66 = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond66, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split: ; preds = %bb.i, %bb.h, %bb.g
  %.sink71 = phi i32 [ 8, %bb.h ], [ 8, %bb.g ], [ 64, %bb.i ]
  %8 = or i32 %6, %.sink71
  store i32 %8, ptr %0, align 4, !tbaa !55
  br label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread: ; preds = %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, %nk_input_is_mouse_pressed.exit._crit_edge, %bb.i, %bb.a
  %.024 = phi i1 [ false, %bb.a ], [ %.0, %nk_input_is_mouse_pressed.exit._crit_edge ], [ %.0, %bb.i ], [ %.0, %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split ]
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_label(ptr noundef %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_combo_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, <2 x float> %2)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_color(ptr noundef %0, i32 %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  %4 = alloca %struct.nk_rect, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 12 uses
  %.not86 = icmp eq ptr %i.b, null
  br i1 %.not86, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not87 = icmp eq ptr %i.d, null
  br i1 %.not87, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp ne i32 %i.f, 1
  %or.cond3 = or i1 %i.m, %i.l
  %i.n = select i1 %or.cond3, ptr null, ptr %0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 4 uses
  %i.p = load <2 x float>, ptr %3, align 8        ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 11 uses
  %i.s = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.o, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %i.n, i32 noundef 0) ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !460  ; 2 uses
  %i.u = and i32 %i.t, 32
  %.not88 = icmp eq i32 %i.u, 0
  %i.v = extractelement <2 x float> %i.r, i64 0
  %i.w = and i32 %i.t, 16
  %.not89 = icmp eq i32 %i.w, 0
  %. = select i1 %.not89, i64 8464, i64 8504
  %.sink = select i1 %.not88, i64 %., i64 8544
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !413
  switch i32 %i.y, label %bb.k [
    i32 1, label %nk_rgb_factor.exit
    i32 2, label %nk_rgb_factor.exit105
    i32 0, label %bb.f
  ]

nk_rgb_factor.exit:                               ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !570 ; 2 uses
  %i.ad = fcmp oeq float %i.ac, 1.000000e+00
  %i.ae = fmul float %i.ac, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  %i.ag = zext i8 %i.af to i32
  %.sroa.512.0.insert.ext.i = select i1 %i.ad, i32 255, i32 %i.ag ; 3 uses
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 8
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.512.0.insert.ext.i
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.z, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.aa, i32 %.sroa.011.0.insert.insert.i)
  br label %bb.k

nk_rgb_factor.exit105:                            ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8876
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !570 ; 2 uses
  %i.al = fcmp oeq float %i.ak, 1.000000e+00
  %i.am = fmul float %i.ak, 2.550000e+02
  %i.an = fptoui float %i.am to i8
  %i.ao = zext i8 %i.an to i32
  %.sroa.512.0.insert.ext.i97 = select i1 %i.al, i32 255, i32 %i.ao ; 3 uses
  %.sroa.512.0.insert.shift.i98 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i97, 16
  %.sroa.3.0.insert.shift.i101 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i97, 8
  %.sroa.512.0.insert.insert.i99 = or disjoint i32 %.sroa.512.0.insert.shift.i98, %.sroa.3.0.insert.shift.i101
  %.sroa.3.0.insert.insert.i102 = or disjoint i32 %.sroa.512.0.insert.insert.i99, %.sroa.512.0.insert.ext.i97
  %.sroa.011.0.insert.insert.i104 = or disjoint i32 %.sroa.3.0.insert.insert.i102, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.ah, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull %i.ai, i32 %.sroa.011.0.insert.insert.i104)
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !652
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !570 ; 4 uses
  %i.av = load i32, ptr %i.as, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.av, 8  ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.av, 16 ; 2 uses
  %i.aw = fcmp oeq float %i.au, 1.000000e+00
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.av to i8
  br label %nk_rgb_factor.exit117

bb.h:                                             ; preds = %bb.f
  %i.ax = and i32 %i.av, 255
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = fmul float %i.au, %i.ay
  %i.ba = fptoui float %i.az to i8
  %i.bb = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fmul float %i.au, %i.bc
  %i.be = fptoui float %i.bd to i8
  %i.bf = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.bg = uitofp nneg i32 %i.bf to float
  %i.bh = fmul float %i.au, %i.bg
  %i.bi = fptoui float %i.bh to i8
  br label %nk_rgb_factor.exit117

nk_rgb_factor.exit117:                            ; preds = %bb.g, %bb.h
  %.sroa.3.0.i106 = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.g ], [ %i.be, %bb.h ]
  %.sroa.011.0.i107 = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.ba, %bb.h ]
  %.sroa.512.0.i108 = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.g ], [ %i.bi, %bb.h ]
  %.sroa.9.0.extract.shift.i = and i32 %i.av, -16777216
  %.sroa.512.0.insert.ext.i109 = zext i8 %.sroa.512.0.i108 to i32
  %.sroa.512.0.insert.shift.i110 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i109, 16
  %.sroa.512.0.insert.insert.i111 = or disjoint i32 %.sroa.512.0.insert.shift.i110, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i112 = zext i8 %.sroa.3.0.i106 to i32
  %.sroa.3.0.insert.shift.i113 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i112, 8
  %.sroa.3.0.insert.insert.i114 = or disjoint i32 %.sroa.512.0.insert.insert.i111, %.sroa.3.0.insert.shift.i113
  %.sroa.011.0.insert.ext.i115 = zext i8 %.sroa.011.0.i107 to i32
  %.sroa.011.0.insert.insert.i116 = or disjoint i32 %.sroa.3.0.insert.insert.i114, %.sroa.011.0.insert.ext.i115
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ap, <2 x float> %i.p, <2 x float> %i.r, float noundef %i.ar, i32 %.sroa.011.0.insert.insert.i116)
  %i.bj = load float, ptr %i.aq, align 8, !tbaa !652
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !653
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.bn = load float, ptr %i.at, align 4, !tbaa !570 ; 4 uses
  %i.bo = load i32, ptr %i.bm, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i118 = lshr i32 %i.bo, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i119 = lshr i32 %i.bo, 16 ; 2 uses
  %i.bp = fcmp oeq float %i.bn, 1.000000e+00
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nk_rgb_factor.exit117
  %.sroa.7.0.extract.trunc.i132 = trunc i32 %.sroa.7.0.extract.shift.i119 to i8
  %.sroa.5.0.extract.trunc.i133 = trunc i32 %.sroa.5.0.extract.shift.i118 to i8
  %.sroa.0.0.extract.trunc.i134 = trunc i32 %i.bo to i8
  br label %nk_rgb_factor.exit135

bb.j:                                             ; preds = %nk_rgb_factor.exit117
  %i.bq = and i32 %i.bo, 255
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = fmul float %i.bn, %i.br
  %i.bt = fptoui float %i.bs to i8
  %i.bu = and i32 %.sroa.5.0.extract.shift.i118, 255
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = fmul float %i.bn, %i.bv
  %i.bx = fptoui float %i.bw to i8
  %i.by = and i32 %.sroa.7.0.extract.shift.i119, 255
  %i.bz = uitofp nneg i32 %i.by to float
  %i.ca = fmul float %i.bn, %i.bz
  %i.cb = fptoui float %i.ca to i8
  br label %nk_rgb_factor.exit135

end_hunk_1

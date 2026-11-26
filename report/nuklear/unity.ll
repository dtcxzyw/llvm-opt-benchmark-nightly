Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_Rasterize:bb.a
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
  %i.ft = select i1 %.not.i, float %5, float %i.fs ; 2 uses
  %i.fu = add nsw i32 %.lcssa160, 1
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, 20
  %.val.i = load ptr, ptr %11, align 8
  %.val93.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.fx = tail call ptr %.val93.i(ptr %.val.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.fw) #50, !inline_history !832 ; 10 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %stbtt__rasterize.exit, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge.loopexit.i
  br i1 %.not.i, label %.lr.ph117.split.us.i.preheader, label %.lr.ph117.split.i.preheader

.lr.ph117.split.i.preheader:                      ; preds = %.lr.ph117.i
  %i.fz = insertelement <4 x float> poison, float %4, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.ft, i64 1
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gc = insertelement <4 x float> poison, float %6, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %7, i64 1
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph117.split.i

.lr.ph117.split.us.i.preheader:                   ; preds = %.lr.ph117.i
  %i.gf = insertelement <4 x float> poison, float %4, i64 0
  %i.gg = insertelement <4 x float> %i.gf, float %i.ft, i64 1
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gi = insertelement <4 x float> poison, float %6, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %7, i64 1
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph117.split.us.i

.lr.ph117.split.us.i:                             ; preds = %.lr.ph117.split.us.i.preheader, %._crit_edge112.split.us.us.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %.085116.us.i = phi i32 [ %i.gp, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %.190114.us.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge112.split.us.us.i ], [ 0, %.lr.ph117.split.us.i.preheader ] ; 2 uses
  %i.gl = sext i32 %.085116.us.i to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv142.i ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !55 ; 4 uses
  %i.gp = add nsw i32 %i.go, %.085116.us.i
  %i.gq = icmp sgt i32 %i.go, 0
  br i1 %i.gq, label %.lr.ph111.us.preheader.i, label %._crit_edge112.split.us.us.i

.lr.ph111.us.preheader.i:                         ; preds = %.lr.ph117.split.us.i
  %i.gr = add nsw i32 %i.go, -1                   ; 2 uses
  %.phi.trans.insert150.i = zext nneg i32 %i.gr to i64
  %.phi.trans.insert151.i = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.phi.trans.insert150.i
  %.phi.trans.insert152.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert151.i, i64 4
  %.pre153.i = load float, ptr %.phi.trans.insert152.i, align 4, !tbaa !292
  br label %.lr.ph111.us.i

.lr.ph111.us.i:                                   ; preds = %.lr.ph111.us._crit_edge.i, %.lr.ph111.us.preheader.i
  %i.gs = phi i32 [ %i.go, %.lr.ph111.us.preheader.i ], [ %i.hk, %.lr.ph111.us._crit_edge.i ]
  %12 = phi float [ %.pre153.i, %.lr.ph111.us.preheader.i ], [ %i.gv, %.lr.ph111.us._crit_edge.i ] ; 2 uses
  %indvars.iv139.i = phi i64 [ 0, %.lr.ph111.us.preheader.i ], [ %indvars.iv.next140.i, %.lr.ph111.us._crit_edge.i ] ; 5 uses
  %.087108.us.us.i.a = phi i32 [ %i.gr, %.lr.ph111.us.preheader.i ], [ %.pre-phi.i, %.lr.ph111.us._crit_edge.i ]
  %.2107.us.us.i = phi i32 [ %.190114.us.i, %.lr.ph111.us.preheader.i ], [ %.3.us.us.i, %.lr.ph111.us._crit_edge.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv139.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !292 ; 3 uses
  %i.gw = fcmp oeq float %12, %i.gv
  br i1 %i.gw, label %.lr.ph111.us._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph111.us.i
  %i.gx = sext i32 %.2107.us.us.i to i64
  %i.gy = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = fcmp olt float %12, %i.gv               ; 3 uses
  %spec.store.select.i = zext i1 %i.ha to i32
  store i32 %spec.store.select.i, ptr %i.gz, align 4, !tbaa !850
  %13 = sext i32 %.087108.us.us.i.a to i64        ; 2 uses
  %i.hb = select i1 %i.ha, i64 %13, i64 %indvars.iv139.i
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.hb
  %i.hd = select i1 %i.ha, i64 %indvars.iv139.i, i64 %13
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.hd
  %i.hf = load <2 x float>, ptr %i.hc, align 4, !tbaa !54
  %i.hg = load <2 x float>, ptr %i.he, align 4, !tbaa !54
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.gh, <4 x float> %i.gk)
  store <4 x float> %i.hi, ptr %i.gy, align 4, !tbaa !54
  %i.hj = add nsw i32 %.2107.us.us.i, 1
  %.pre154.i = load i32, ptr %i.gn, align 4, !tbaa !55
  br label %.lr.ph111.us._crit_edge.i

.lr.ph111.us._crit_edge.i:                        ; preds = %bb.r, %.lr.ph111.us.i
  %i.hk = phi i32 [ %.pre154.i, %bb.r ], [ %i.gs, %.lr.ph111.us.i ] ; 2 uses
  %.3.us.us.i = phi i32 [ %i.hj, %bb.r ], [ %.2107.us.us.i, %.lr.ph111.us.i ] ; 2 uses
  %.pre-phi.i = trunc i64 %indvars.iv139.i to i32
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next140.i, %i.hl
  br i1 %i.hm, label %.lr.ph111.us.i, label %._crit_edge112.split.us.us.i, !llvm.loop !833

._crit_edge112.split.us.us.i:                     ; preds = %.lr.ph111.us._crit_edge.i, %.lr.ph117.split.us.i
  %.2.lcssa.us.i = phi i32 [ %.190114.us.i, %.lr.ph117.split.us.i ], [ %.3.us.us.i, %.lr.ph111.us._crit_edge.i ] ; 2 uses
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.bc
  br i1 %exitcond146.not.i, label %._crit_edge118.i, label %.lr.ph117.split.us.i, !llvm.loop !834

.lr.ph117.split.i:                                ; preds = %.lr.ph117.split.i.preheader, %._crit_edge112.split.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.085116.i = phi i32 [ %i.hr, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %.190114.i = phi i32 [ %.2.lcssa.i, %._crit_edge112.split.i ], [ 0, %.lr.ph117.split.i.preheader ] ; 2 uses
  %i.hn = sext i32 %.085116.i to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.hn ; 4 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv134.i ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !55 ; 4 uses
  %i.hr = add nsw i32 %i.hq, %.085116.i
  %i.hs = icmp sgt i32 %i.hq, 0
  br i1 %i.hs, label %.lr.ph111.preheader.i, label %._crit_edge112.split.i

.lr.ph111.preheader.i:                            ; preds = %.lr.ph117.split.i
  %i.ht = add nsw i32 %i.hq, -1                   ; 2 uses
  %.phi.trans.insert.i = zext nneg i32 %i.ht to i64
  %.phi.trans.insert147.i = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.phi.trans.insert.i
  %.phi.trans.insert148.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert147.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert148.i, align 4, !tbaa !292
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111._crit_edge.i, %.lr.ph111.preheader.i
  %i.hu = phi i32 [ %i.hq, %.lr.ph111.preheader.i ], [ %i.im, %.lr.ph111._crit_edge.i ]
  %14 = phi float [ %.pre.i, %.lr.ph111.preheader.i ], [ %i.hx, %.lr.ph111._crit_edge.i ] ; 2 uses
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph111.preheader.i ], [ %indvars.iv.next132.i, %.lr.ph111._crit_edge.i ] ; 5 uses
  %.087108.i.a = phi i32 [ %i.ht, %.lr.ph111.preheader.i ], [ %.pre-phi157.i, %.lr.ph111._crit_edge.i ]
  %.2107.i = phi i32 [ %.190114.i, %.lr.ph111.preheader.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv131.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !292 ; 3 uses
  %i.hy = fcmp oeq float %14, %i.hx
  br i1 %i.hy, label %.lr.ph111._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph111.i
  %i.hz = sext i32 %.2107.i to i64
  %i.ia = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = fcmp ogt float %14, %i.hx               ; 3 uses
  %spec.store.select122.i = zext i1 %i.ic to i32
  store i32 %spec.store.select122.i, ptr %i.ib, align 4, !tbaa !850
  %15 = sext i32 %.087108.i.a to i64              ; 2 uses
  %i.id = select i1 %i.ic, i64 %15, i64 %indvars.iv131.i
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.id
  %i.if = select i1 %i.ic, i64 %indvars.iv131.i, i64 %15
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.if
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !54
  %i.ii = load <2 x float>, ptr %i.ig, align 4, !tbaa !54
  %i.ij = shufflevector <2 x float> %i.ih, <2 x float> %i.ii, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %i.gb, <4 x float> %i.ge)
  store <4 x float> %i.ik, ptr %i.ia, align 4, !tbaa !54
  %i.il = add nsw i32 %.2107.i, 1
  %.pre149.i = load i32, ptr %i.hp, align 4, !tbaa !55
  br label %.lr.ph111._crit_edge.i

.lr.ph111._crit_edge.i:                           ; preds = %bb.s, %.lr.ph111.i
  %i.im = phi i32 [ %.pre149.i, %bb.s ], [ %i.hu, %.lr.ph111.i ] ; 2 uses
  %.3.i = phi i32 [ %i.il, %bb.s ], [ %.2107.i, %.lr.ph111.i ] ; 2 uses
  %.pre-phi157.i = trunc i64 %indvars.iv131.i to i32
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next132.i, %i.in
  br i1 %i.io, label %.lr.ph111.i, label %._crit_edge112.split.i, !llvm.loop !833

._crit_edge112.split.i:                           ; preds = %.lr.ph111._crit_edge.i, %.lr.ph117.split.i
  %.2.lcssa.i = phi i32 [ %.190114.i, %.lr.ph117.split.i ], [ %.3.i, %.lr.ph111._crit_edge.i ] ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next135.i, %i.bc
  br i1 %exitcond138.not.i, label %._crit_edge118.i, label %.lr.ph117.split.i, !llvm.loop !834

._crit_edge118.i:                                 ; preds = %._crit_edge112.split.i, %._crit_edge112.split.us.us.i
  %.190.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge112.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge112.split.i ] ; 4 uses
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.fx, i32 noundef %.190.lcssa.i)
  %i.ip = icmp sgt i32 %.190.lcssa.i, 1
  br i1 %i.ip, label %.lr.ph.preheader.i.i.i, label %stbtt__sort_edges.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge118.i
  %wide.trip.count.i.i.i = zext nneg i32 %.190.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.iq = getelementptr inbounds nuw [20 x i8], ptr %i.fx, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !54
  %i.ir = load <2 x float>, ptr %i.iq, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !851
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.u ] ; 4 uses
  %i.is = getelementptr [20 x i8], ptr %i.fx, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -16
  %i.iu = load float, ptr %i.it, align 4, !tbaa !294
  %i.iv = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.iu
  br i1 %i.iv, label %bb.u, label %.thread.split.loop.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.iw = getelementptr i8, ptr %i.is, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.is, ptr noundef nonnull align 4 dereferenceable(20) %i.iw, i64 20, i1 false), !tbaa.struct !295
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.ix = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.ix, label %bb.t, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.t
  %i.iy = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.iy, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.iz = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.iz
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i
  %i.ja = sext i32 %.021.lcssa.i.i.i to i64
  %i.jb = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.ja ; 2 uses
  store <2 x float> %i.ir, ptr %i.jb, align 4, !tbaa !54
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !851
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__sort_edges.exit.i, label %.lr.ph.i.i.i, !llvm.loop !835

stbtt__sort_edges.exit.i:                         ; preds = %bb.w, %._crit_edge118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.jc = load i32, ptr %0, align 8, !tbaa !297   ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 64
  br i1 %i.jd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %stbtt__sort_edges.exit.i
  %i.je = shl nuw nsw i32 %i.jc, 1
  %i.jf = or disjoint i32 %i.je, 1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 2
  %.val.i.i = load ptr, ptr %11, align 8
  %.val96.i.i = load ptr, ptr %i.be, align 8, !tbaa !74
  %i.ji = tail call ptr %.val96.i.i(ptr %.val.i.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.jh) #50, !inline_history !836
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !297
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %stbtt__sort_edges.exit.i
  %i.jj = phi i32 [ %.pre.i.i, %bb.x ], [ %i.jc, %stbtt__sort_edges.exit.i ] ; 2 uses
  %.082.i.i = phi ptr [ %i.ji, %bb.x ], [ %i.b, %stbtt__sort_edges.exit.i ] ; 43 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.jk ; 9 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !298 ; 2 uses
  %i.jo = add nsw i32 %i.jn, %9
  %i.jp = sitofp i32 %i.jo to float
  %i.jq = fadd float %i.jp, 1.000000e+00
  %i.jr = sext i32 %.190.lcssa.i to i64
  %i.js = getelementptr inbounds [20 x i8], ptr %i.fx, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store float %i.jq, ptr %i.jt, align 4, !tbaa !294
  %i.ju = icmp sgt i32 %i.jn, 0
  br i1 %i.ju, label %.lr.ph135.i.i, label %stbtt__hheap_cleanup.exit.i.i

.lr.ph135.i.i:                                    ; preds = %bb.y
  %i.jv = sitofp i32 %8 to float
  %i.jw = icmp ne i32 %9, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge127.i.i, %.lr.ph135.i.i
  %.0..i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %._crit_edge127.i.i ] ; 2 uses
  %i.ka = phi i32 [ %i.jj, %.lr.ph135.i.i ], [ %i.ato, %._crit_edge127.i.i ]
  %.0133.i.i = phi ptr [ %i.fx, %.lr.ph135.i.i ], [ %.1.lcssa.i.i, %._crit_edge127.i.i ] ; 3 uses
  %.077132.i.i = phi i32 [ %9, %.lr.ph135.i.i ], [ %i.auo, %._crit_edge127.i.i ] ; 2 uses
  %.078131.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %i.aup, %._crit_edge127.i.i ] ; 3 uses
  %.sroa.11.0130.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.7.0129.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.0.0128.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %i.kb = sitofp i32 %.077132.i.i to float        ; 69 uses
  %i.kc = fadd float %i.kb, 1.000000e+00          ; 75 uses
  %i.kd = sext i32 %i.ka to i64
  %i.ke = shl nsw i64 %i.kd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.082.i.i, i8 0, i64 %i.ke, i1 false)
  %i.kf = load i32, ptr %0, align 8, !tbaa !297
  %i.kg = add nsw i32 %i.kf, 1
  %i.kh = sext i32 %i.kg to i64
  %i.ki = shl nsw i64 %i.kh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jl, i8 0, i64 %i.ki, i1 false)
  %.not92110.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not92110.i.i, label %.preheader109.i.i, label %.lr.ph.i.i

.preheader109.i.i:                                ; preds = %bb.ab, %bb.z
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.0129.i.i, %bb.z ], [ %.sroa.7.2.i.i, %bb.ab ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0133.i.i, i64 4 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !294 ; 2 uses
  %i.kl = fcmp ugt float %i.kk, %i.kc
  br i1 %i.kl, label %._crit_edge.i.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader109.i.i
  %i.km = icmp eq i32 %.078131.i.i, 0
  %or.cond.i.i = and i1 %i.jw, %i.km
  br label %bb.ac

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.ab
  %i.kn = phi ptr [ %i.kt, %bb.ab ], [ %.0..i.i, %bb.z ] ; 6 uses
  %.080112.i.i = phi ptr [ %.181.i.i, %bb.ab ], [ %i.a, %bb.z ] ; 2 uses
  %.sroa.7.1111.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.0129.i.i, %bb.z ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 28
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !855
  %i.kq = fcmp ugt float %i.kp, %i.kb
  br i1 %i.kq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.kr = load ptr, ptr %i.kn, align 8, !tbaa !856
  store ptr %i.kr, ptr %.080112.i.i, align 8, !tbaa !853
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  store float 0.000000e+00, ptr %i.ks, align 4, !tbaa !857
  store ptr %.sroa.7.1111.i.i, ptr %i.kn, align 8, !tbaa !73
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.1111.i.i, %.lr.ph.i.i ], [ %i.kn, %bb.aa ] ; 2 uses
  %.181.i.i = phi ptr [ %i.kn, %.lr.ph.i.i ], [ %.080112.i.i, %bb.aa ] ; 2 uses
  %i.kt = load ptr, ptr %.181.i.i, align 8, !tbaa !853 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.kt, null
  br i1 %.not92.i.i, label %.preheader109.i.i, label %.lr.ph.i.i, !llvm.loop !837

bb.ac:                                            ; preds = %stbtt__new_active.exit.thread.i.i, %.lr.ph117.i.i
  %i.ku = phi float [ %i.kk, %.lr.ph117.i.i ], [ %i.mj, %stbtt__new_active.exit.thread.i.i ] ; 3 uses
  %i.kv = phi ptr [ %i.kj, %.lr.ph117.i.i ], [ %i.mi, %stbtt__new_active.exit.thread.i.i ]
  %.1116.i.i = phi ptr [ %.0133.i.i, %.lr.ph117.i.i ], [ %i.mh, %stbtt__new_active.exit.thread.i.i ] ; 6 uses
  %.sroa.11.1115.i.i = phi i32 [ %.sroa.11.0130.i.i, %.lr.ph117.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.7.3114.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph117.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.0.1113.i.i = phi ptr [ %.sroa.0.0128.i.i, %.lr.ph117.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.1116.i.i, i64 12 ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !858 ; 3 uses
  %i.ky = fcmp une float %i.ku, %i.kx
  br i1 %i.ky, label %bb.ad, label %stbtt__new_active.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.3114.i.i, null
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kz = load ptr, ptr %.sroa.7.3114.i.i, align 8, !tbaa !73
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.la = icmp eq i32 %.sroa.11.1115.i.i, 0
  br i1 %i.la, label %bb.ag, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.af
  %i.lb = add nsw i32 %.sroa.11.1115.i.i, -1
end_hunk_0

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
  %i.ka = phi i32 [ %i.jj, %.lr.ph135.i.i ], [ %i.atr, %._crit_edge127.i.i ]
  %.0133.i.i = phi ptr [ %i.fx, %.lr.ph135.i.i ], [ %.1.lcssa.i.i, %._crit_edge127.i.i ] ; 3 uses
  %.077132.i.i = phi i32 [ %9, %.lr.ph135.i.i ], [ %i.aur, %._crit_edge127.i.i ] ; 2 uses
  %.078131.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %i.aus, %._crit_edge127.i.i ] ; 3 uses
  %.sroa.11.0130.i.i = phi i32 [ 0, %.lr.ph135.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.7.0129.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %.sroa.0.0128.i.i = phi ptr [ null, %.lr.ph135.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge127.i.i ] ; 2 uses
  %i.kb = sitofp i32 %.077132.i.i to float        ; 68 uses
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
begin_hunk_1_@nk_begin_titled:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %.3354, i64 72
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !235 ; 3 uses
  %i.gp = and i32 %i.go, 32768
  %.not254 = icmp eq i32 %i.gp, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %.3354, i64 76
  br i1 %.not254, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.3354, i64 84
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !54
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %.3354, i64 84
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !478
  %i.gt = insertelement <2 x float> %i.gm, float %i.gs, i64 0
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.8.0 = phi <2 x float> [ %i.gt, %bb.ar ], [ %.sroa.8.0.copyload, %bb.aq ] ; 2 uses
  %.sroa.0.0 = load <2 x float>, ptr %i.gq, align 4, !tbaa !54 ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.gu = fcmp ole float %.sroa.0.0.vec.extract, %i.ei
  %foldExtExtBinop409 = fadd <2 x float> %.sroa.8.0, %.sroa.0.0
  %i.gv = extractelement <2 x float> %foldExtExtBinop409, i64 0
  %i.gw = fcmp olt float %i.ei, %i.gv
  %or.cond272 = select i1 %i.gu, i1 %i.gw, i1 false
  br i1 %or.cond272, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.gx = load float, ptr %i.gk, align 8, !tbaa !1035 ; 2 uses
  %i.gy = fcmp ole float %.sroa.0.4.vec.extract, %i.gx
  %foldExtExtBinop411 = fadd <2 x float> %.sroa.8.0, %.sroa.0.0
  %i.gz = extractelement <2 x float> %foldExtExtBinop411, i64 1
  %i.ha = fcmp olt float %i.gx, %i.gz
  %or.cond274 = select i1 %i.gy, i1 %i.ha, i1 false
  %i.hb = and i32 %i.go, 8192
  %.not255 = icmp eq i32 %i.hb, 0
  %or.cond333 = and i1 %.not255, %or.cond274
  br i1 %or.cond333, label %.thread322, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %.3354, i64 360
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !464 ; 5 uses
  %.not256 = icmp eq ptr %i.hd, null
  br i1 %.not256, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = getelementptr inbounds nuw i8, ptr %.3354, i64 420
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !479, !range !88, !noundef !89
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = and i32 %i.go, 8192
  %.not257 = icmp eq i32 %i.hh, 0
  %or.cond334 = and i1 %.not257, %i.hg
  br i1 %or.cond334, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 76
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !480 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %i.du
  br i1 %i.hk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 84
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !478
  %i.hn = fadd float %i.hj, %i.hm
  %i.ho = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.hn
  br i1 %i.ho, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !481 ; 2 uses
  %i.hr = fcmp olt float %i.hq, %i.gl
  br i1 %i.hr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !482
  %i.hu = fadd float %i.hq, %i.ht
  %i.hv = fcmp olt float %.sroa.018.4.vec.extract34, %i.hu
  br i1 %i.hv, label %.thread322, label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.3.in = getelementptr inbounds nuw i8, ptr %.3354, i64 528
  %.3 = load ptr, ptr %.3.in, align 8, !tbaa !234 ; 2 uses
  %.not253 = icmp eq ptr %.3, null
  br i1 %.not253, label %.critedge277, label %bb.ap

.thread322:                                       ; preds = %bb.at, %bb.az, %bb.ao, %.thread
  %.5.ph = phi ptr [ %.2, %.thread ], [ %.2, %bb.ao ], [ %.3354, %bb.az ], [ %.3354, %bb.at ] ; 4 uses
  %i.hw = and i32 %i.cr, 4352
  %or.cond275.not = icmp eq i32 %i.hw, 256
  br i1 %or.cond275.not, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.thread322
  %i.hx = or disjoint i32 %i.cr, 4096
  store i32 %i.hx, ptr %i.cq, align 8, !tbaa !235
  %i.hy = getelementptr inbounds nuw i8, ptr %.5.ph, i64 72 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !235 ; 2 uses
  %i.ia = and i32 %i.hz, -4097
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !235
  store ptr %.5.ph, ptr %i.gh, align 8, !tbaa !461
  %i.ib = and i32 %i.hz, 256
  %.not261 = icmp eq i32 %i.ib, 0
  br i1 %.not261, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.5.ph)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.5.ph, i32 noundef 0)
  br label %bb.bi

.critedge277:                                     ; preds = %bb.an, %bb.ba, %.preheader337, %.preheader
  %i.ic = phi ptr [ %i.gh, %.preheader ], [ %i.er, %.preheader337 ], [ %i.gh, %bb.ba ], [ %i.er, %bb.an ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !463
  %.not262 = icmp eq ptr %i.ie, %.0220
  br i1 %.not262, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.critedge277
  %i.if = and i32 %i.cr, 256
  %.not263 = icmp eq i32 %i.if, 0
  br i1 %.not263, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.0220)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.0220, i32 noundef 0)
  %.pre = load i32, ptr %i.cq, align 8, !tbaa !235
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ig = phi i32 [ %.pre, %bb.be ], [ %i.cr, %bb.bd ]
  %i.ih = and i32 %i.ig, -4097                    ; 2 uses
  store i32 %i.ih, ptr %i.cq, align 8, !tbaa !235
  store ptr %.0220, ptr %i.ic, align 8, !tbaa !461
  br label %bb.bg

bb.bg:                                            ; preds = %.thread322, %bb.bf, %.critedge277
  %i.ii = phi i32 [ %i.cr, %.thread322 ], [ %i.ih, %bb.bf ], [ %i.cr, %.critedge277 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !463
  %.not264 = icmp ne ptr %i.ik, %.0220
  %i.il = and i32 %i.ii, 256
  %.not265 = icmp eq i32 %i.il, 0
  %or.cond387 = select i1 %.not264, i1 %.not265, i1 false
  br i1 %or.cond387, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.im = or i32 %i.ii, 4096
  store i32 %i.im, ptr %i.cq, align 8, !tbaa !235
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bc, %bb.bb, %bb.bh, %bb.bg, %bb.u
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !470 ; 3 uses
  %.not.i.i309 = icmp eq ptr %i.io, null
  br i1 %.not.i.i309, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 576
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !472
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !470
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.is, 0
  br i1 %.not18.i.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !483 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.iw, %i.iy
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !455
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bn
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !454
  %i.je = add i32 %i.jd, -1
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, 592
  %i.jh = add nuw nsw i64 %i.jg, 608
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !484
  %i.jk = load ptr, ptr %i.it, align 8
  %i.jl = tail call ptr %i.jj(ptr %i.jk, ptr noundef null, i64 noundef %i.jh) #50, !inline_history !37 ; 4 uses
  %i.jm = load ptr, ptr %i.iu, align 8, !tbaa !456
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !459
  store ptr %i.jl, ptr %i.iu, align 8, !tbaa !456
  store i32 0, ptr %i.jl, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.bm
  %i.jo = phi i32 [ 0, %.thread.i.i.i ], [ %i.iw, %bb.bm ] ; 2 uses
  %i.jp = phi ptr [ %i.jl, %.thread.i.i.i ], [ %i.iv, %bb.bm ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = add nuw i32 %i.jo, 1
  store i32 %i.jr, ptr %i.jp, align 8, !tbaa !483
  %i.js = zext i32 %i.jo to i64
  %i.jt = getelementptr inbounds nuw [592 x i8], ptr %i.jq, i64 %i.js
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.jv = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ju, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.jv, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %nk_pool_alloc.exit.i.i, %bb.bj
  %.0.i.i310 = phi ptr [ %i.io, %bb.bj ], [ %i.jt, %nk_pool_alloc.exit.i.i ], [ %i.jv, %bb.bo ] ; 6 uses
  %i.jw = ptrtoint ptr %.0.i.i310 to i64
  %i.jx = and i64 %i.jw, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.bp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i310, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.bp
  %i.jy = sub nuw nsw i64 4, %i.jx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i310, i8 0, i64 %i.jy, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i310, i64 %i.jy ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.jx, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i310, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.bn, %bb.bo, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i310, %nk_zero.exit.i.i ], [ null, %bb.bo ], [ null, %bb.bn ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0220, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ka, align 8, !tbaa !416
  store ptr %.0220, ptr %i.a, align 8, !tbaa !415
  %i.kb = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
  %i.kc = getelementptr inbounds nuw i8, ptr %.0220, i64 92
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !416 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kc, ptr %i.ke, align 8, !tbaa !485
  %i.kf = getelementptr inbounds nuw i8, ptr %.0220, i64 96
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !486
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.a, %bb.b, %nk_create_panel.exit, %bb.t
  %.1222 = phi i1 [ false, %bb.t ], [ %i.kb, %nk_create_panel.exit ], [ false, %.loopexit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1222
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @nk_create_window(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !470  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !472
  store ptr %i.d, ptr %i.a, align 8, !tbaa !470
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !457
  %.not18.i = icmp eq i32 %i.f, 0
  br i1 %.not18.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !456  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !483  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.l = load i32, ptr %i.k, align 8, !tbaa !454
  %.not18.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not18.i.i, label %nk_pool_alloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.n = load i32, ptr %i.m, align 8, !tbaa !455
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_create_page_element.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.q = load i32, ptr %i.p, align 8, !tbaa !454
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, 592
  %i.u = add nuw nsw i64 %i.t, 608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !484
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = tail call ptr %i.w(ptr %i.x, ptr noundef null, i64 noundef %i.u) #50, !inline_history !1036 ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !456
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !459
  store ptr %i.y, ptr %i.h, align 8, !tbaa !456
  store i32 0, ptr %i.y, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i

nk_pool_alloc.exit.i:                             ; preds = %.thread.i.i, %bb.e
  %i.ab = phi i32 [ 0, %.thread.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.y, %.thread.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = add nuw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !483
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [592 x i8], ptr %i.ad, i64 %i.af
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ai = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ah, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i = icmp eq ptr %i.ai, null
  br i1 %.not19.i, label %nk_create_page_element.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %nk_pool_alloc.exit.i, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.ag, %nk_pool_alloc.exit.i ], [ %i.ai, %bb.g ] ; 7 uses
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = and i64 %i.aj, 3                        ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %bb.i

.loopexit46.i.i.i:                                ; preds = %bb.h
  %i.al = sub nuw nsw i64 4, %i.ak                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 0, i64 %i.al, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %.0.i, i64 %i.al ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.ak, i1 false), !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !237
  store i32 %i.ao, ptr %.0.i, align 8, !tbaa !56
  br label %nk_create_page_element.exit.thread

nk_create_page_element.exit.thread:               ; preds = %bb.f, %bb.g, %bb.i
  %.0 = phi ptr [ %.0.i, %bb.i ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nk_insert_window(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 3 uses
  %.042 = load ptr, ptr %i.a, align 8, !tbaa !219 ; 4 uses
  %.not4043 = icmp eq ptr %.042, null
  br i1 %.not4043, label %._crit_edge.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.044, i64 528
  %.0 = load ptr, ptr %i.b, align 8, !tbaa !219   ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.044 = phi ptr [ %.0, %bb.c ], [ %.042, %bb.b ] ; 2 uses
  %i.c = icmp eq ptr %.044, %1
  br i1 %i.c, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %1, ptr %i.e, align 8, !tbaa !463
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.f, align 8, !tbaa !215
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !463  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !235
  %i.l = or i32 %i.k, 4096
  store i32 %i.l, ptr %i.j, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  store ptr %1, ptr %i.m, align 8, !tbaa !234
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.i, ptr %i.n, align 8, !tbaa !462
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr null, ptr %i.o, align 8, !tbaa !234
  store ptr %1, ptr %i.h, align 8, !tbaa !463
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %1, ptr %i.p, align 8, !tbaa !461
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 536
  store ptr %1, ptr %i.q, align 8, !tbaa !462
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %.042, ptr %i.r, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr null, ptr %i.s, align 8, !tbaa !462
  store ptr %1, ptr %i.a, align 8, !tbaa !225
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !235
  %i.v = and i32 %i.u, -4097
  store i32 %i.v, ptr %i.t, align 8, !tbaa !235
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !215
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !215
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_panel_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef range(i32 1, 65) %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_text, align 8            ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415  ; 3 uses
  %.not363 = icmp eq ptr %i.d, null
  br i1 %.not363, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 5 uses
  %.not364 = icmp eq ptr %i.f, null
  br i1 %.not364, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.f, i8 0, i64 464, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.d
  %i.i = sub nuw nsw i64 4, %i.h                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.i, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i, i8 0, i64 460, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.h, i1 false), !tbaa !56
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !415
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.j = phi ptr [ %i.d, %.loopexit46.i.i.thread ], [ %.pre, %.loopexit46.i.i ] ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !235  ; 6 uses
  %i.m = and i32 %i.l, 24576
  %or.cond386 = icmp eq i32 %i.m, 0
  br i1 %or.cond386, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_zero.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !416  ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3                          ; 3 uses
  %.not.i.i391 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i391, label %.loopexit46.i.i394.thread, label %.loopexit46.i.i394

.loopexit46.i.i394.thread:                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.o, i8 0, i64 464, i1 false), !tbaa !55
  br label %nk_zero.exit400

.loopexit46.i.i394:                               ; preds = %bb.e
  %i.r = sub nuw nsw i64 4, %i.q                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 0, i64 %i.r, i1 false), !tbaa !56
  %scevgep.i.i393 = getelementptr i8, ptr %i.o, i64 %i.r ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i393, i8 0, i64 460, i1 false), !tbaa !55
  %scevgep53.i.i399 = getelementptr i8, ptr %scevgep.i.i393, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i399, i8 0, i64 %i.q, i1 false), !tbaa !56
  %.pre438 = load ptr, ptr %i.c, align 8, !tbaa !415
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre438, i64 168
  %.pre439 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !416
  br label %nk_zero.exit400

nk_zero.exit400:                                  ; preds = %.loopexit46.i.i394.thread, %.loopexit46.i.i394
  %i.s = phi ptr [ %i.o, %.loopexit46.i.i394.thread ], [ %.pre439, %.loopexit46.i.i394 ]
  store i32 %2, ptr %i.s, align 8, !tbaa !487
  br label %bb.bd

bb.f:                                             ; preds = %nk_zero.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !414  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !416  ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 11 uses
  %i.y = and i32 %i.l, 1024
  %.not367 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not367, ptr %0, ptr null     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8888
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %.sroa.0163.0.copyload = load float, ptr %i.ab, align 4, !tbaa !54
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !54
  %i.ac = tail call range(i32 1, 8) i32 @llvm.ctpop.i32(i32 %2)
  %i.ad = icmp eq i32 %i.ac, 1                    ; 2 uses
  br i1 %i.ad, label %.split.i, label %nk_panel_get_padding.exit

.split.i:                                         ; preds = %bb.f
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %switch.tableidx = add nsw i32 %i.ae, -1        ; 2 uses
  %i.af = icmp ult i32 %switch.tableidx, 6
  br i1 %i.af, label %switch.lookup, label %nk_panel_get_padding.exit

switch.lookup:                                    ; preds = %.split.i
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin, i64 %i.ag
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %nk_panel_get_padding.exit

nk_panel_get_padding.exit:                        ; preds = %switch.lookup, %.split.i, %bb.f
  %.sink.i = phi i64 [ %switch.ext, %switch.lookup ], [ 9276, %bb.f ], [ 9276, %.split.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.i
  %.sroa.0.0.i = load <2 x float>, ptr %i.ah, align 4, !tbaa !54 ; 3 uses
  %i.ai = and i32 %i.l, 4098
  %or.cond387 = icmp eq i32 %i.ai, 2
  br i1 %or.cond387, label %bb.g, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.g:                                             ; preds = %nk_panel_get_padding.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !54 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.am = load float, ptr %i.al, align 4, !tbaa !478 ; 2 uses
  %i.an = and i32 %i.l, 88
  %.not.i = icmp ne i32 %i.an, 0
  %i.ao = icmp ne ptr %1, null
  %spec.select.i = and i1 %i.ao, %.not.i
  br i1 %spec.select.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.8.vec.insert = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !140
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.as = load float, ptr %i.ar, align 8, !tbaa !476
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.000000e+00, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %i.av = load float, ptr %i.au, align 8, !tbaa !477
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.at)
  %.sroa.5.12.vec.insert151 = insertelement <2 x float> %.sroa.5.8.vec.insert, float %i.aw, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.5.12.vec.insert153 = insertelement <2 x float> %.sroa.0.0.i, float %i.am, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.0 = phi <2 x float> [ %.sroa.5.12.vec.insert151, %bb.h ], [ %.sroa.5.12.vec.insert153, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !388, !range !88, !noundef !89
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !383
  %.not.i401 = icmp eq ptr %i.z, null
  br i1 %.not.i401, label %nk_input_has_mouse_click_down_in_rect.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !389 ; 2 uses
  %i.be = extractelement <2 x float> %i.ak, i64 0
  %i.bf = fcmp ole float %i.be, %i.bd
  %foldExtExtBinop = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fcmp olt float %i.bd, %i.bg
  %or.cond.i.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i.i, label %nk_input_has_mouse_click_in_rect.exit.i, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_in_rect.exit.i:          ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !390 ; 2 uses
  %i.bk = extractelement <2 x float> %i.ak, i64 1
  %i.bl = fcmp ole float %i.bk, %i.bj
  %foldExtExtBinop464 = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bm = extractelement <2 x float> %foldExtExtBinop464, i64 1
  %i.bn = fcmp olt float %i.bj, %i.bm
  %or.cond16.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %i.bb, 0
  %i.bp = and i1 %or.cond16.i.i, %i.az
  %or.cond = select i1 %i.bp, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.l, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.l:                                             ; preds = %nk_input_has_mouse_click_in_rect.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !54 ; 2 uses
  %i.bs = fadd <2 x float> %i.ak, %i.br
  store <2 x float> %i.bs, ptr %i.aj, align 4, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 268 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !54
  %i.bv = fadd <2 x float> %i.br, %i.bu
  store <2 x float> %i.bv, ptr %i.bt, align 4, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !221
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !220
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit.thread: ; preds = %bb.k, %nk_input_has_mouse_click_in_rect.exit.i, %bb.j, %bb.l, %nk_panel_get_padding.exit
  store i32 %2, ptr %i.w, align 8, !tbaa !487
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 8 uses
  store i32 %i.l, ptr %i.bz, align 4, !tbaa !488
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !157
  %.sroa.0158.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 8, !tbaa !489
  %i.cd = fadd float %.sroa.0158.0.vec.extract, %i.cc ; 2 uses
  store float %i.cd, ptr %i.ca, align 8, !tbaa !489
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !490
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sroa.0158.0.vec.extract, float -2.000000e+00, float %i.cf)
  store float %i.cg, ptr %i.ce, align 8, !tbaa !490
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !235 ; 5 uses
  %i.ci = and i32 %i.ch, 1
  %.not371 = icmp eq i32 %i.ci, 0
  br i1 %.not371, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  br i1 %i.ad, label %.split.i404, label %nk_panel_get_border.exit

.split.i404:                                      ; preds = %bb.m
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 65) %2, i1 true)
  %switch.tableidx458 = add nsw i32 %i.cj, -1     ; 2 uses
  %i.ck = icmp ult i32 %switch.tableidx458, 6
  br i1 %i.ck, label %switch.lookup459, label %nk_panel_get_border.exit

switch.lookup459:                                 ; preds = %.split.i404
  %i.cl = zext nneg i32 %switch.tableidx458 to i64
  %switch.gep460 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin.32, i64 %i.cl
  %switch.load461 = load i16, ptr %switch.gep460, align 2
  %switch.ext462 = zext i16 %switch.load461 to i64
  br label %nk_panel_get_border.exit

nk_panel_get_border.exit:                         ; preds = %switch.lookup459, %.split.i404, %bb.m
  %.sink = phi i64 [ 9608, %.split.i404 ], [ %switch.ext462, %switch.lookup459 ], [ 9608, %bb.m ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.i403 = load float, ptr %i.cm, align 4, !tbaa !54 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float %.0.i403, ptr %i.cn, align 4, !tbaa !491
  %i.co = load <2 x float>, ptr %i.ca, align 8
  %i.cp = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.cq = fmul float %.0.i403, 2.000000e+00
  %i.cr = insertelement <2 x float> poison, float %.0.i403, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.018.4.vec.insert.i = fadd <2 x float> %i.cs, %i.co ; 3 uses
  %i.ct = extractelement <2 x float> %.sroa.018.4.vec.insert.i, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fcmp olt <2 x float> %i.cp, %i.cv
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> %i.cp
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cx)
  store <2 x float> %.sroa.018.4.vec.insert.i, ptr %i.ca, align 8, !tbaa !54
  store <2 x float> %i.cy, ptr %i.ce, align 8, !tbaa !54
  br label %bb.o

bb.n:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !491
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.pre441 = load float, ptr %.phi.trans.insert440, align 4, !tbaa !492 ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
end_hunk_1
begin_hunk_2_@nk_widget:bb.a
  %i.ai = fcmp ogt float %i.ah, %i.s
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  %i.aj = extractelement <2 x float> %i.z, i64 1
  %i.ak = fcmp ogt float %i.aj, %i.m
  %or.cond56 = select i1 %or.cond, i1 %i.ak, i1 false
  %i.al = fcmp ogt <2 x float> %i.x, %i.p
  %i.am = extractelement <2 x i1> %i.al, i64 1
  %or.cond57 = select i1 %or.cond56, i1 %i.am, i1 false
  br i1 %or.cond57, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !475, !range !88, !noundef !89
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !391 ; 2 uses
  %i.as = extractelement <2 x float> %i.y, i64 0
  %i.at = fcmp ole float %i.as, %i.ar
  %foldExtExtBinop = fadd <2 x float> %i.y, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.av = fcmp olt float %i.ar, %i.au
  %or.cond59 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond59, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !392 ; 2 uses
  %i.ay = extractelement <2 x float> %i.y, i64 1
  %i.az = fcmp ugt float %i.ay, %i.ax
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop65 = fadd <2 x float> %i.y, %i.ae
  %i.ba = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.bb = fcmp olt float %i.ax, %i.ba
  %spec.select = select i1 %i.bb, i32 1, i32 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.h ], [ 2, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_popup_begin(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 19 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i97 = icmp eq i8 %i.e, 0
  br i1 %.not4.i97, label %nk_strlen.exit, label %.lr.ph.i.preheader109

.lr.ph.i.preheader109:                            ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.f = trunc i64 %strlen to i32
  %i.g = add i32 %i.f, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader109, %.lr.ph.i.preheader, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.preheader109 ]
  %i.h = tail call i32 @nk_murmur_hash(ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef 4) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !464  ; 2 uses
  %.not85 = icmp eq ptr %i.j, null
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nk_strlen.exit
  %i.k = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  store ptr %i.b, ptr %i.l, align 8, !tbaa !506
  store ptr %i.k, ptr %i.i, align 8, !tbaa !464
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.m, align 4, !tbaa !479
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.n, align 8, !tbaa !528
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_strlen.exit
  %.077 = phi ptr [ %i.j, %nk_strlen.exit ], [ %i.k, %bb.e ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !529
  %.not86 = icmp eq i32 %i.p, %i.h
  br i1 %.not86, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 420 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !479, !range !88, !noundef !89
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = ptrtoint ptr %.077 to i64
  %i.u = and i64 %i.t, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(552) %.077, i8 0, i64 544, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.h
  %i.v = sub nuw nsw i64 4, %i.u                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.077, i8 0, i64 %i.v, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %.077, i64 %i.v ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(548) %scevgep.i.i, i8 0, i64 548, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 548
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.u, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  store i32 %i.h, ptr %i.o, align 8, !tbaa !529
  store i8 1, ptr %i.q, align 4, !tbaa !479
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.w, align 8, !tbaa !528
  br label %bb.i

bb.i:                                             ; preds = %nk_zero.exit, %bb.f
  store ptr %.077, ptr %i.a, align 8, !tbaa !415
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !54
  %i.aa = fadd <2 x float> %4, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.077, i64 544
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !506
  %i.ac = getelementptr inbounds nuw i8, ptr %.077, i64 76
  store <2 x float> %i.aa, ptr %i.ac, align 4, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.077, i64 84
  store <2 x float> %5, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !237
  store i32 %i.ae, ptr %.077, align 8, !tbaa !236
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !470 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !472
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !470
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !483 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !455
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.av = load i32, ptr %i.au, align 8, !tbaa !454
  %i.aw = add i32 %i.av, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 592
  %i.az = add nuw nsw i64 %i.ay, 608
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = tail call ptr %i.bb(ptr %i.bc, ptr noundef null, i64 noundef %i.az) #50, !inline_history !37 ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !456
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !459
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !456
  store i32 0, ptr %i.bd, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.m
  %i.bg = phi i32 [ 0, %.thread.i.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %.thread.i.i.i ], [ %i.an, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = add nuw i32 %i.bg, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !483
  %i.bk = zext i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [592 x i8], ptr %i.bi, i64 %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.bn = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bm, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bn, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %nk_pool_alloc.exit.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.ag, %bb.j ], [ %i.bl, %nk_pool_alloc.exit.i.i ], [ %i.bn, %bb.o ] ; 6 uses
  %i.bo = ptrtoint ptr %.0.i.i to i64
  %i.bp = and i64 %i.bo, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.p
  %i.bq = sub nuw nsw i64 4, %i.bp                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.bq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.bp, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.n, %bb.o, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.o ], [ null, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.077, i64 168 ; 4 uses
  store ptr %.014.i.i, ptr %i.bs, align 8, !tbaa !416
  %i.bt = getelementptr inbounds nuw i8, ptr %.077, i64 72
  %i.bu = icmp eq i32 %1, 1
  %spec.select.v = select i1 %i.bu, i32 2049, i32 1
  %spec.select = or i32 %3, %spec.select.v
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !235
  %i.bv = getelementptr inbounds nuw i8, ptr %.077, i64 104 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i64 64, i1 false), !tbaa.struct !531
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !79
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !241 ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !517
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !239
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  store i8 1, ptr %i.cd, align 8, !tbaa !240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !216
  %i.cg = getelementptr inbounds nuw i8, ptr %.077, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cg, align 8, !tbaa !54
  %i.ch = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.ci = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ch, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i90 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i90, label %nk_push_scissor.exit, label %bb.q

bb.q:                                             ; preds = %nk_create_panel.exit
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !99 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.077, i64 160
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !100
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 31
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, -8
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  store i32 1, ptr %i.ci, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !77
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !103
  %i.da = getelementptr inbounds nuw i8, ptr %.077, i64 152
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.db, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.q
  %i.dc = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 4)
  %.076104 = load ptr, ptr %i.c, align 8, !tbaa !532 ; 3 uses
  %.not88105 = icmp eq ptr %.076104, null         ; 2 uses
  br i1 %i.dc, label %.preheader, label %.preheader96

.preheader96:                                     ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge, label %.lr.ph103

.preheader:                                       ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %.lr.ph107
  %.076106 = phi ptr [ %.076, %.lr.ph107 ], [ %.076104, %.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.076106, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !488
  %i.df = and i32 %i.de, -69633
  %i.dg = or disjoint i32 %i.df, 4096
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !488
  %i.dh = getelementptr inbounds nuw i8, ptr %.076106, i64 456
  %.076 = load ptr, ptr %i.dh, align 8, !tbaa !532 ; 2 uses
  %.not88 = icmp eq ptr %.076, null
  br i1 %.not88, label %._crit_edge108.loopexit, label %.lr.ph107, !llvm.loop !1059

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !416
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %.preheader
  %i.di = phi ptr [ %.pre, %._crit_edge108.loopexit ], [ null, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.dj, align 4, !tbaa !479
  %i.dk = getelementptr inbounds nuw i8, ptr %.077, i64 92
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !416 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !485
  %i.dn = getelementptr inbounds nuw i8, ptr %.077, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !486
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 456
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !505
  br label %bb.x

.lr.ph103:                                        ; preds = %.preheader96, %.lr.ph103
  %.0102 = phi ptr [ %.0, %.lr.ph103 ], [ %.076104, %.preheader96 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !488
  %i.ds = or i32 %i.dr, 65536
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !488
  %i.dt = getelementptr inbounds nuw i8, ptr %.0102, i64 456
  %.0 = load ptr, ptr %i.dt, align 8, !tbaa !532  ; 2 uses
  %.not87 = icmp eq ptr %.0, null
  br i1 %.not87, label %._crit_edge, label %.lr.ph103, !llvm.loop !1060

._crit_edge:                                      ; preds = %.lr.ph103, %.preheader96
  store i8 0, ptr %i.cd, align 8, !tbaa !238
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.du, align 4, !tbaa !479
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !216
  store ptr %i.b, ptr %i.a, align 8, !tbaa !415
  %i.dv = load ptr, ptr %i.bs, align 8, !tbaa !416 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !457
  %.not.i.i91 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i91, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !470 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i92, label %nk_link_page_element_into_freelist.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 576
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !472
  br label %nk_link_page_element_into_freelist.exit.i.i

nk_link_page_element_into_freelist.exit.i.i:      ; preds = %bb.s, %bb.r
  store ptr %i.dv, ptr %i.af, align 8, !tbaa !470
  br label %nk_free_panel.exit

bb.t:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 592
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !217
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !473 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = icmp eq ptr %i.ea, %i.ef
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eh = add i64 %i.ee, -592
  store i64 %i.eh, ptr %i.ed, align 8, !tbaa !473
  br label %nk_free_panel.exit

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !470 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.ei, null
end_hunk_2
begin_hunk_3_@nk_popup_set_scroll:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 4 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %1, ptr %i.e, align 4, !tbaa !525
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %2, ptr %i.f, align 8, !tbaa !526
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_begin(ptr noundef %0, i32 noundef %1, <2 x float> %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 10 uses
  %.not53 = icmp eq ptr %i.b, null
  br i1 %.not53, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not54 = icmp eq ptr %i.d, null
  br i1 %.not54, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 428 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !523
  %i.h = add i32 %i.g, 1                          ; 4 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !523
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !461
  %.not55 = icmp eq ptr %i.b, %i.j
  br i1 %.not55, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !464  ; 2 uses
  %.not56 = icmp eq ptr %i.k, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.m = load i32, ptr %i.l, align 8, !tbaa !528
  %i.n = icmp eq i32 %i.m, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi i1 [ false, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.q = load i8, ptr %i.p, align 8, !tbaa !475, !range !88, !noundef !89
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.t = load float, ptr %i.s, align 4, !tbaa !391 ; 3 uses
  %i.u = fcmp ole float %.sroa.0.0.vec.extract.i.i, %i.t
  %foldExtExtBinop = fadd <2 x float> %3, %4
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.w = fcmp olt float %i.t, %i.v
  %or.cond.i.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %nk_input_mouse_clicked.exit

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.y = load float, ptr %i.x, align 8, !tbaa !392 ; 2 uses
  %i.z = fcmp ole float %.sroa.0.4.vec.extract.i.i, %i.y
  %foldExtExtBinop70 = fadd <2 x float> %3, %4
  %i.aa = extractelement <2 x float> %foldExtExtBinop70, i64 1 ; 2 uses
  %i.ab = fcmp olt float %i.y, %i.aa
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.j, label %nk_input_mouse_clicked.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !389 ; 2 uses
  %i.ae = fcmp ole float %.sroa.0.0.vec.extract.i.i, %i.ad
  %i.af = fcmp olt float %i.ad, %i.v
  %or.cond.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i.i, label %nk_input_has_mouse_click_in_rect.exit.i.i.i, label %nk_input_mouse_clicked.exit

nk_input_has_mouse_click_in_rect.exit.i.i.i:      ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !390 ; 2 uses
  %i.ai = fcmp ole float %.sroa.0.4.vec.extract.i.i, %i.ah
  %i.aj = fcmp olt float %i.ah, %i.aa
  %or.cond16.i.i.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond16.i.i.i.i, label %nk_input_has_mouse_click_down_in_rect.exit.i.i, label %nk_input_mouse_clicked.exit

nk_input_has_mouse_click_down_in_rect.exit.i.i:   ; preds = %nk_input_has_mouse_click_in_rect.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !388, !range !88, !noundef !89
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %nk_input_mouse_clicked.exit

bb.k:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !383
  %i.ap = icmp ne i32 %i.ao, 0
  br label %nk_input_mouse_clicked.exit

nk_input_mouse_clicked.exit:                      ; preds = %bb.h, %bb.i, %bb.j, %nk_input_has_mouse_click_in_rect.exit.i.i.i, %nk_input_has_mouse_click_down_in_rect.exit.i.i, %bb.k
  %.0.i = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %nk_input_has_mouse_click_in_rect.exit.i.i.i ], [ false, %nk_input_has_mouse_click_down_in_rect.exit.i.i ], [ %i.ap, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 436 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !522 ; 2 uses
  %.not58 = icmp eq i32 %i.ar, 0
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %nk_input_mouse_clicked.exit
  %.not59 = icmp eq i32 %i.h, %i.ar
  br i1 %.not59, label %.thread, label %bb.v

bb.m:                                             ; preds = %nk_input_mouse_clicked.exit
  br i1 %i.o, label %.critedge, label %bb.o

.thread:                                          ; preds = %bb.l
  br i1 %i.o, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.thread
  store i32 0, ptr %i.aq, align 4, !tbaa !522
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  br i1 %.0.i, label %.critedge62, label %bb.v

.critedge:                                        ; preds = %.thread, %bb.m
  store i32 %i.h, ptr %i.aq, align 4, !tbaa !522
  br i1 %.0.i, label %bb.p, label %bb.q

.critedge62:                                      ; preds = %bb.o
  store i32 %i.h, ptr %i.aq, align 4, !tbaa !522
  br label %bb.p

bb.p:                                             ; preds = %.critedge62, %.critedge
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.at = load float, ptr %i.as, align 8, !tbaa !392
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.at, i64 1
  br label %bb.r

bb.q:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.p ], [ %i.av, %bb.q ]
  %i.aw = or i32 %1, 32
  %i.ax = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef %0, i32 noundef %i.aw, <2 x float> %.sroa.0.0, <2 x float> %2, <2 x float> splat (float -1.000000e+00), <2 x float> zeroinitializer, i32 noundef 16)
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 16, ptr %i.ay, align 8, !tbaa !528
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %i.aq, align 4, !tbaa !522
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 0, ptr %i.az, align 8, !tbaa !528
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !464 ; 2 uses
  %.not61 = icmp eq ptr %i.ba, null
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !235
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.t, %bb.u, %bb.s, %bb.o, %bb.l, %bb.d, %bb.a, %bb.b, %bb.c
  %.047 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.s ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.g ]
  ret i1 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef range(i32 32, 1) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, i32 noundef range(i32 16, 65) %6) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 17 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not73 = icmp eq ptr %i.d, null
  br i1 %.not73, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !464  ; 2 uses
  %.not74 = icmp eq ptr %i.f, null
  br i1 %.not74, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.g = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 8 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store ptr %i.b, ptr %7, align 8, !tbaa !506
  store ptr %i.g, ptr %i.e, align 8, !tbaa !464
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 %6, ptr %i.h, align 8, !tbaa !528
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.j, ptr %i.i, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 1, ptr %i.k, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.m, ptr %i.n, align 8, !tbaa !224
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i64 %i.m, ptr %i.o, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i64 %i.m, ptr %i.p, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.q, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx90, align 8, !tbaa !54
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = load i8, ptr %i.r, align 4, !tbaa !388, !range !88, !noundef !89
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load i32, ptr %i.u, align 8, !tbaa !383
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %bb.f, label %nk_input_is_mouse_pressed.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.x = load float, ptr %i.w, align 4, !tbaa !391 ; 4 uses
  %i.y = fcmp ole float %.sroa.0.0.vec.extract.i, %i.x
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = fcmp olt float %i.x, %i.z
  %or.cond.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit

bb.g:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !392 ; 2 uses
  %i.ad = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.ac
  br i1 %i.ad, label %nk_input_is_mouse_hovering_rect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop116 = fadd <2 x float> %2, %3
  %i.ae = extractelement <2 x float> %foldExtExtBinop116, i64 1
  %i.af = fcmp uge float %i.ac, %i.ae
  br label %nk_input_is_mouse_hovering_rect.exit

nk_input_is_mouse_hovering_rect.exit:             ; preds = %nk_input_is_mouse_pressed.exit, %bb.g, %bb.h
  %.0.i79 = phi i1 [ true, %bb.g ], [ %i.af, %bb.h ], [ true, %nk_input_is_mouse_pressed.exit ]
  %.sroa.0.0.vec.extract.i80 = extractelement <2 x float> %4, i64 0
  %i.ag = fcmp ole float %.sroa.0.0.vec.extract.i80, %i.x
  %foldExtExtBinop118 = fadd <2 x float> %4, %5
  %i.ah = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.ai = fcmp olt float %i.x, %i.ah
  %or.cond.i82 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond.i82, label %bb.i, label %bb.k

bb.i:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  %.sroa.0.4.vec.extract.i84 = extractelement <2 x float> %4, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !392 ; 2 uses
  %i.al = fcmp ugt float %.sroa.0.4.vec.extract.i84, %i.ak
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop120 = fadd <2 x float> %4, %5
  %i.am = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.an = fcmp olt float %i.ak, %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %nk_input_is_mouse_hovering_rect.exit
  %.0.i83 = phi i1 [ false, %bb.i ], [ %i.an, %bb.j ], [ false, %nk_input_is_mouse_hovering_rect.exit ]
  %or.cond = select i1 %.0.i79, i1 true, i1 %.0.i83
  %or.cond78 = select i1 %.0.i, i1 %or.cond, i1 false
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.ao, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !54
  br i1 %or.cond78, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.06695 = phi ptr [ %.066, %.lr.ph ], [ %i.d, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.06695, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !488
  %i.ar = or i32 %i.aq, 65536
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !488
  %i.as = getelementptr inbounds nuw i8, ptr %.06695, i64 456
  %.066 = load ptr, ptr %i.as, align 8, !tbaa !532 ; 2 uses
  %.not76 = icmp eq ptr %.066, null
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !1062

bb.l:                                             ; preds = %.thread, %bb.k
  %.06891 = phi ptr [ %i.g, %.thread ], [ %i.f, %bb.k ] ; 13 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.06891, i64 76
  store <2 x float> %2, ptr %i.at, align 4, !tbaa !54
  %.sroa.364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.06891, i64 84
  store <2 x float> %3, ptr %.sroa.364.0..sroa_idx, align 4, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %.06891, i64 544
  store ptr %i.b, ptr %i.au, align 8, !tbaa !506
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !470 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 576
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !472
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !470
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not18.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !483 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.be, %i.bg
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !455
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !454
  %i.bm = add i32 %i.bl, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw nsw i64 %i.bn, 592
  %i.bp = add nuw nsw i64 %i.bo, 608
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !484
  %i.bs = load ptr, ptr %i.bb, align 8
  %i.bt = tail call ptr %i.br(ptr %i.bs, ptr noundef null, i64 noundef %i.bp) #50, !inline_history !37 ; 4 uses
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !456
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !459
  store ptr %i.bt, ptr %i.bc, align 8, !tbaa !456
  store i32 0, ptr %i.bt, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.p
  %i.bw = phi i32 [ 0, %.thread.i.i.i ], [ %i.be, %bb.p ] ; 2 uses
  %i.bx = phi ptr [ %i.bt, %.thread.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = add nuw i32 %i.bw, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !483
  %i.ca = zext i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [592 x i8], ptr %i.by, i64 %i.ca
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.cd = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.cc, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.cd, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %nk_pool_alloc.exit.i.i, %bb.m
  %.0.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.cb, %nk_pool_alloc.exit.i.i ], [ %i.cd, %bb.r ] ; 6 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = and i64 %i.ce, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.s
  %i.cg = sub nuw nsw i64 4, %i.cf                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.cg, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.cg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.cf, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.q, %bb.r, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.r ], [ null, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.06891, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ci, align 8, !tbaa !416
  %i.cj = getelementptr inbounds nuw i8, ptr %.06891, i64 72
  %i.ck = or i32 %1, 2049
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !235
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !237
  store i32 %i.cm, ptr %.06891, align 8, !tbaa !236
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.cn, align 4, !tbaa !479
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !tbaa !79
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !241 ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !517
  store <2 x i64> %i.cr, ptr %i.co, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !239
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i8 1, ptr %i.cu, align 8, !tbaa !240
  %i.cv = getelementptr inbounds nuw i8, ptr %.06891, i64 104 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false), !tbaa.struct !531
  %i.cx = getelementptr inbounds nuw i8, ptr %.06891, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cx, align 8, !tbaa !54
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !99
  %i.cz = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cy, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i87 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i87, label %nk_push_scissor.exit, label %bb.t

bb.t:                                             ; preds = %nk_create_panel.exit
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !99 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !69
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.06891, i64 160
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 31
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, -8
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  store i32 1, ptr %i.cz, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77
  %i.dp = add i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !103
  %i.dr = getelementptr inbounds nuw i8, ptr %.06891, i64 152
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !104
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.ds, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.t
  store ptr %.06891, ptr %i.a, align 8, !tbaa !415
  %i.dt = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef null, i32 noundef %6) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 64, i1 false), !tbaa.struct !531
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !416 ; 3 uses
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !416 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 456
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !505
  %i.dx = getelementptr inbounds nuw i8, ptr %.06891, i64 92
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !485
  %i.dz = getelementptr inbounds nuw i8, ptr %.06891, i64 96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !486
  %.not7797 = icmp eq ptr %i.du, null
  br i1 %.not7797, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %nk_push_scissor.exit, %.lr.ph99
  %.098 = phi ptr [ %.0, %.lr.ph99 ], [ %i.du, %nk_push_scissor.exit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !488
  %i.ed = or i32 %i.ec, 4096
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !488
  %i.ee = getelementptr inbounds nuw i8, ptr %.098, i64 456
  %.0 = load ptr, ptr %i.ee, align 8, !tbaa !532  ; 2 uses
  %.not77 = icmp eq ptr %.0, null
  br i1 %.not77, label %.loopexit, label %.lr.ph99, !llvm.loop !1063

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph99, %nk_push_scissor.exit, %bb.a, %bb.b
  %.069 = phi i1 [ true, %nk_push_scissor.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.lr.ph99 ], [ false, %.lr.ph ]
  ret i1 %.069
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_contextual_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_contextual_close.exit, label %nk_widget_fitting.exit

nk_widget_fitting.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_close.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not26 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = or i32 %i.x, 8192
end_hunk_3
begin_hunk_4_@nk_tree_element_base:bb.a
  %i.hz = fadd float %i.hy, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store float %i.hz, ptr %i.ia, align 8, !tbaa !539
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !490 ; 2 uses
  %i.id = fcmp olt float %i.ic, %i.hy
  %.143.i = select i1 %i.id, float %i.hy, float %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.if = load float, ptr %i.ie, align 4, !tbaa !552
  %i.ig = fadd float %i.hy, %i.if
  %i.ih = fsub float %.143.i, %i.ig
  store float %i.ih, ptr %i.ib, align 8, !tbaa !490
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !498
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !498
  br label %nk_tree_element_image_push_hashed_base.exit

nk_tree_element_image_push_hashed_base.exit:      ; preds = %nk_strlen.exit34, %bb.h, %bb.i, %nk_do_selectable.exit.i, %bb.ae
  %.0.i = phi i32 [ 1, %bb.ae ], [ 0, %nk_strlen.exit34 ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %nk_do_selectable.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_tree_element_image_push_hashed(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #17 {
bb.a:
  %i.a = call fastcc i32 @nk_tree_element_base(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_tree_element_pop(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_tree_state_pop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %nk_tree_state_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %nk_tree_state_pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.f = load float, ptr %i.e, align 8, !tbaa !553 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !485
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = uitofp i32 %i.i to float
  %i.k = fadd float %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !539
  %i.n = fsub float %i.m, %i.k
  store float %i.n, ptr %i.l, align 8, !tbaa !539
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.p = load float, ptr %i.o, align 4, !tbaa !554
  %i.q = fadd float %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !490
  %i.t = fadd float %i.s, %i.q
  store float %i.t, ptr %i.r, align 8, !tbaa !490
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !498
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !498
  br label %nk_tree_state_pop.exit

nk_tree_state_pop.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_scrolled_offset_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.nk_rect, align 4            ; 8 uses
  %6 = alloca %struct.nk_window, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %5, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load float, ptr %5, align 4, !tbaa !112  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !113
  %i.j = fadd float %i.g, %i.i
  %i.k = fcmp olt float %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !113
  %i.n = fadd float %i.f, %i.m
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = load float, ptr %i.r, align 4, !tbaa !114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.u = load float, ptr %i.t, align 4, !tbaa !115
  %i.v = fadd float %i.s, %i.u
  %i.w = fcmp olt float %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !115
  %i.z = fadd float %i.q, %i.y
  %i.aa = fcmp uge float %i.s, %i.z
  %i.ab = and i32 %4, 2
  %.not = icmp eq i32 %i.ab, 0
  %or.cond = and i1 %.not, %i.aa
  br i1 %or.cond, label %bb.n, label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.old = and i32 %4, 2
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !235
  %i.ae = and i32 %i.ad, 4096
  %.035 = or i32 %i.ae, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %6, i8 0, i64 552, i1 false), !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !157
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %.035, ptr %i.ag, align 8, !tbaa !235
  %i.ah = load i32, ptr %1, align 4, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !525
  %i.aj = load i32, ptr %2, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !526
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !tbaa.struct !531
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !470 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !472
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !470
  br label %bb.l

bb.g:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.as, 0
  br i1 %.not18.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !483 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !455
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !454
  %i.be = add i32 %i.bd, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 592
  %i.bh = add nuw nsw i64 %i.bg, 608
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !484
  %i.bk = load ptr, ptr %i.at, align 8
  %i.bl = tail call ptr %i.bj(ptr %i.bk, ptr noundef null, i64 noundef %i.bh) #50, !inline_history !37 ; 4 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !456
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !459
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !456
  store i32 0, ptr %i.bl, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.i
  %i.bo = phi i32 [ 0, %.thread.i.i.i ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bl, %.thread.i.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = add nuw i32 %i.bo, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !483
  %i.bs = zext i32 %i.bo to i64
  %i.bt = getelementptr inbounds nuw [592 x i8], ptr %i.bq, i64 %i.bs
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.bv = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bu, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bv, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %nk_pool_alloc.exit.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.bt, %nk_pool_alloc.exit.i.i ], [ %i.bv, %bb.k ] ; 6 uses
  %i.bw = ptrtoint ptr %.0.i.i to i64
  %i.bx = and i64 %i.bw, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.l
  %i.by = sub nuw nsw i64 4, %i.bx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.by, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.by ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.bx, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.j, %bb.k, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.k ], [ null, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ca, align 8, !tbaa !416
  store ptr %6, ptr %i.a, align 8, !tbaa !415
  %i.cb = and i32 %4, 64
  %.not41 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not41, ptr null, ptr %3
  %i.cd = call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %i.cc, i32 noundef 2) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !tbaa.struct !531
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !416 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !157
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %1, ptr %i.ch, align 8, !tbaa !485
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %2, ptr %i.ci, align 8, !tbaa !486
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 456
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !505
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !416
  store ptr %i.b, ptr %i.a, align 8, !tbaa !415
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !488
  %i.cn = and i32 %i.cm, 49152
  %or.cond47 = icmp eq i32 %i.cn, 0
  br i1 %or.cond47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_create_panel.exit
  call void @nk_group_scrolled_end(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %nk_create_panel.exit, %bb.m, %bb.d, %bb.e
  %.2 = phi i1 [ false, %bb.d ], [ true, %bb.m ], [ false, %bb.e ], [ true, %nk_create_panel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define void @nk_group_scrolled_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.nk_window, align 8          ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.i, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !505  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %1, i8 0, i64 544, i1 false), !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9676
  %.sroa.0.0.i = load <2 x float>, ptr %i.g, align 4, !tbaa !54 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load float, ptr %i.i, align 8, !tbaa !493 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load float, ptr %i.k, align 8, !tbaa !543 ; 2 uses
  %i.m = fadd float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.o = load <2 x float>, ptr %i.h, align 8, !tbaa !54
  %i.p = insertelement <2 x float> %.sroa.0.0.i, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.o, %i.p              ; 4 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  store <2 x float> %i.q, ptr %i.n, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !490
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float 2.000000e+00, float %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !478
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !502
  %i.y = fadd float %i.j, %i.x
  %i.z = fadd float %i.l, %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.z, ptr %i.aa, align 8, !tbaa !482
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !488 ; 3 uses
  %i.ad = and i32 %i.ac, 1
  %.not46 = icmp eq i32 %i.ad, 0
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.z, i64 1 ; 2 uses
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit46.i.i.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !491
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fsub <2 x float> %i.q, %i.aj            ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> splat (float 2.000000e+00), <2 x float> %i.af) ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.an, ptr %i.n, align 4, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit46.i.i.thread
  %i.ao = phi float [ %i.al, %bb.c ], [ %i.r, %.loopexit46.i.i.thread ]
  %i.ap = phi <2 x float> [ %i.ak, %bb.c ], [ %i.q, %.loopexit46.i.i.thread ] ; 3 uses
  %i.aq = phi <2 x float> [ %i.am, %bb.c ], [ %i.af, %.loopexit46.i.i.thread ] ; 2 uses
  %i.ar = and i32 %i.ac, 32
  %.not47 = icmp eq i32 %i.ar, 0
  br i1 %.not47, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !54
  %i.au = fadd <2 x float> %i.at, %i.aq           ; 2 uses
  store <2 x float> %i.au, ptr %i.v, align 4, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = phi <2 x float> [ %i.au, %bb.e ], [ %i.aq, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !485
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !525
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !486
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !526
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ac, ptr %i.be, align 8, !tbaa !235
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false), !tbaa.struct !531
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.d, ptr %i.bh, align 8, !tbaa !416
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.b, ptr %i.bi, align 8, !tbaa !506
  store ptr %1, ptr %i.a, align 8, !tbaa !415
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.bk = extractelement <2 x float> %i.av, i64 1
  %i.bl = fadd float %i.ao, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ap, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x float> %i.av, float %i.bl, i64 1
  %i.bp = fadd <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !54 ; 3 uses
  %i.br = fcmp olt <2 x float> %i.bq, %i.ap
  %i.bs = load <2 x float>, ptr %i.bm, align 4, !tbaa !54
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.bt, %i.bp
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> %i.bp
  %i.bw = select <2 x i1> %i.br, <2 x float> %i.ap, <2 x float> %i.bq ; 3 uses
end_hunk_4
begin_hunk_5_@nk_group_begin_titled:bb.a
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i.preheader, label %bb.m

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i76 = icmp eq i8 %i.g, 0
  br i1 %.not4.i76, label %nk_strlen.exit, label %.lr.ph.i.preheader79

.lr.ph.i.preheader79:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.h = trunc i64 %strlen to i32
  %i.i = add i32 %i.h, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader79, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.preheader79 ]
  %i.j = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, i32 noundef 2) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.01625.i = load ptr, ptr %i.k, align 8, !tbaa !555 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !556  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.m, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph29.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

bb.e:                                             ; preds = %bb.d, %.lr.ph.i51
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.j) ; 3 uses
  %i.t = add i32 %i.j, 1
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.t) ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.loopexit
  store i32 0, ptr %i.u, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 4, !tbaa !55
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i54

.lr.ph29.i54:                                     ; preds = %bb.g, %._crit_edge.i62
  %.01627.i55 = phi ptr [ %.016.i63, %._crit_edge.i62 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i56 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i56, label %._crit_edge.i62, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph29.i54
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 8
  %wide.trip.count.i58 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i58
  br i1 %exitcond.not.i61, label %._crit_edge.i62, label %bb.i, !llvm.loop !40

bb.i:                                             ; preds = %bb.h, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i60, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i59
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit67, label %bb.h

._crit_edge.i62:                                  ; preds = %bb.h, %.lr.ph29.i54
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 560
  %.016.i63 = load ptr, ptr %i.ah, align 8, !tbaa !555 ; 2 uses
  %.not.i64 = icmp eq ptr %.016.i63, null
  br i1 %.not.i64, label %bb.j, label %.lr.ph29.i54

nk_find_value.exit67:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i55, align 8, !tbaa !468
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i59
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i62
  %i.ak = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.aa) ; 3 uses
  %.not50 = icmp eq ptr %i.ak, null
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 4, !tbaa !55
  store i32 0, ptr %i.z, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %nk_find_value.exit67, %bb.k, %bb.f
  %.037 = phi ptr [ %i.z, %nk_find_value.exit67 ], [ %i.z, %bb.k ], [ %i.s, %bb.f ]
  %.0 = phi ptr [ %i.aj, %nk_find_value.exit67 ], [ %i.ak, %bb.k ], [ %i.u, %bb.f ]
  %i.al = tail call zeroext i1 @nk_group_scrolled_offset_begin(ptr noundef nonnull %0, ptr noundef nonnull %.037, ptr noundef nonnull %.0, ptr noundef %2, i32 noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.loopexit, %bb.a, %bb.b, %bb.c, %bb.l
  %.038 = phi i1 [ %i.al, %bb.l ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.j ]
  ret i1 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @nk_add_value(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %nk_push_table.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !465  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !556  ; 2 uses
  %i.g = icmp ugt i32 %i.f, 68
  br i1 %i.g, label %bb.d, label %nk_push_table.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !472
  store ptr %i.k, ptr %i.h, align 8, !tbaa !470
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.m = load i32, ptr %i.l, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.p, align 8, !tbaa !483  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.s = load i32, ptr %i.r, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.u = load i32, ptr %i.t, align 8, !tbaa !455
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %nk_push_table.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.x = load i32, ptr %i.w, align 8, !tbaa !454
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 592
  %i.ab = add nuw nsw i64 %i.aa, 608
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !484
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = tail call ptr %i.ad(ptr %i.ae, ptr noundef null, i64 noundef %i.ab) #50, !inline_history !1076 ; 4 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !456
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !459
  store ptr %i.af, ptr %i.o, align 8, !tbaa !456
  store i32 0, ptr %i.af, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.h
  %i.ai = phi i32 [ 0, %.thread.i.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %.thread.i.i.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = add nuw i32 %i.ai, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !483
  %i.am = zext i32 %i.ai to i64
  %i.an = getelementptr inbounds nuw [592 x i8], ptr %i.ak, i64 %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ap = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ao, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ap, null
  br i1 %.not19.i.i, label %nk_push_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %nk_pool_alloc.exit.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.i, %bb.e ], [ %i.an, %nk_pool_alloc.exit.i.i ], [ %i.ap, %bb.j ] ; 14 uses
  %i.aq = ptrtoint ptr %.0.i.i to i64
  %i.ar = and i64 %i.aq, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %bb.l

.loopexit46.i.i.i.i:                              ; preds = %bb.k
  %i.as = sub nuw nsw i64 4, %i.ar                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.as, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.as ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.ar, i1 false), !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !465 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !465
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !556
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.ax, align 8, !tbaa !1077
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !465 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre30 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !556
  br label %nk_push_table.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  store ptr %.0.i.i, ptr %i.ay, align 8, !tbaa !469
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  store ptr %i.au, ptr %i.az, align 8, !tbaa !467
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 568
  store ptr null, ptr %i.ba, align 8, !tbaa !469
  %3 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %3, align 4, !tbaa !556
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !465
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1077
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !1077
  br label %nk_push_table.exit.thread

nk_push_table.exit.thread:                        ; preds = %bb.n, %bb.m, %bb.c
  %i.be = phi i32 [ 0, %bb.n ], [ %.pre30, %bb.m ], [ %i.f, %bb.c ] ; 2 uses
  %i.bf = phi ptr [ %.0.i.i, %bb.n ], [ %.pre, %bb.m ], [ %i.d, %bb.c ] ; 4 uses
  %i.bg = load i32, ptr %1, align 8, !tbaa !236
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !468
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = zext i32 %i.be to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %2, ptr %i.bk, align 4, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 284
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  store i32 0, ptr %i.bm, align 4, !tbaa !55
  %i.bn = add i32 %i.be, 1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !556
  br label %nk_push_table.exit

nk_push_table.exit:                               ; preds = %bb.i, %bb.j, %bb.a, %nk_push_table.exit.thread
  %.1 = phi ptr [ %i.bm, %nk_push_table.exit.thread ], [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_group_begin_titled(ptr noundef %0, ptr noundef %1, ptr noundef %1, i32 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @nk_group_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  tail call void @nk_group_scrolled_end(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_group_get_scroll(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 7 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i.preheader, label %bb.p

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i79 = icmp eq i8 %i.g, 0
  br i1 %.not4.i79, label %nk_strlen.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.h = trunc i64 %strlen to i32
  %i.i = add i32 %i.h, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader82, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.preheader82 ]
  %i.j = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, i32 noundef 2) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.01625.i = load ptr, ptr %i.k, align 8, !tbaa !555 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !556  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.m, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph29.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

bb.e:                                             ; preds = %bb.d, %.lr.ph.i54
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.j) ; 3 uses
  %i.t = add i32 %i.j, 1
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.t) ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.p

bb.f:                                             ; preds = %.loopexit
  store i32 0, ptr %i.u, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 4, !tbaa !55
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i57

.lr.ph29.i57:                                     ; preds = %bb.g, %._crit_edge.i65
  %.01627.i58 = phi ptr [ %.016.i66, %._crit_edge.i65 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i59 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i59, label %._crit_edge.i65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph29.i57
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 8
  %wide.trip.count.i61 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i61
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.i, !llvm.loop !40

bb.i:                                             ; preds = %bb.h, %.lr.ph.i60
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i60 ], [ %indvars.iv.next.i63, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i62
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit70, label %bb.h

._crit_edge.i65:                                  ; preds = %bb.h, %.lr.ph29.i57
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 560
  %.016.i66 = load ptr, ptr %i.ah, align 8, !tbaa !555 ; 2 uses
  %.not.i67 = icmp eq ptr %.016.i66, null
  br i1 %.not.i67, label %bb.j, label %.lr.ph29.i57

nk_find_value.exit70:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i58, align 8, !tbaa !468
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i62
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i65
  %i.ak = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.aa) ; 3 uses
  %.not51 = icmp eq ptr %i.ak, null
  br i1 %.not51, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 4, !tbaa !55
  store i32 0, ptr %i.z, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %nk_find_value.exit70, %bb.k, %bb.f
  %.037 = phi ptr [ %i.z, %nk_find_value.exit70 ], [ %i.z, %bb.k ], [ %i.s, %bb.f ]
  %.0 = phi ptr [ %i.aj, %nk_find_value.exit70 ], [ %i.ak, %bb.k ], [ %i.u, %bb.f ]
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %.037, align 4, !tbaa !55
  store i32 %i.al, ptr %2, align 4, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not53 = icmp eq ptr %3, null
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load i32, ptr %.0, align 4, !tbaa !55
  store i32 %i.am, ptr %3, align 4, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.j, %.loopexit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_group_set_scroll(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_find_value.exit59.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 6 uses
  %.not40 = icmp eq ptr %i.b, null
  br i1 %.not40, label %nk_find_value.exit59.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i.preheader, label %nk_find_value.exit59.thread

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i68 = icmp eq i8 %i.g, 0
  br i1 %.not4.i68, label %nk_strlen.exit, label %.lr.ph.i.preheader71

.lr.ph.i.preheader71:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.h = trunc i64 %strlen to i32
  %i.i = add i32 %i.h, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader71, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.preheader71 ]
  %i.j = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, i32 noundef 2) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.01625.i = load ptr, ptr %i.k, align 8, !tbaa !555 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !556  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.m, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph29.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

bb.e:                                             ; preds = %bb.d, %.lr.ph.i43
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.f, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.j) ; 3 uses
  %i.t = add i32 %i.j, 1
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.t) ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %4, label %nk_find_value.exit59.thread

4:                                                ; preds = %.loopexit
  store i32 0, ptr %i.u, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 4, !tbaa !55
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = add i32 %i.j, 1
  br label %.lr.ph29.i46

.lr.ph29.i46:                                     ; preds = %bb.f, %._crit_edge.i54
  %.01627.i47 = phi ptr [ %.016.i55, %._crit_edge.i54 ], [ %.01625.i, %bb.f ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i47, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i48 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i48, label %._crit_edge.i54, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph29.i46
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i47, i64 8
  %wide.trip.count.i50 = zext i32 %i.ac to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i50
  br i1 %exitcond.not.i53, label %._crit_edge.i54, label %bb.h, !llvm.loop !40

bb.h:                                             ; preds = %bb.g, %.lr.ph.i49
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i52, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i51
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit59, label %bb.g

._crit_edge.i54:                                  ; preds = %bb.g, %.lr.ph29.i46
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i47, i64 560
  %.016.i55 = load ptr, ptr %i.ah, align 8, !tbaa !555 ; 2 uses
  %.not.i56 = icmp eq ptr %.016.i55, null
  br i1 %.not.i56, label %nk_find_value.exit59.thread, label %.lr.ph29.i46

nk_find_value.exit59:                             ; preds = %bb.h
  store i32 %i.x, ptr %.01627.i47, align 8, !tbaa !468
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i47, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i51
  br label %bb.i

bb.i:                                             ; preds = %nk_find_value.exit59, %4
  %.032 = phi ptr [ %i.z, %nk_find_value.exit59 ], [ %i.s, %4 ]
  %.0 = phi ptr [ %i.aj, %nk_find_value.exit59 ], [ %i.u, %4 ]
  store i32 %2, ptr %.032, align 4, !tbaa !55
  store i32 %3, ptr %.0, align 4, !tbaa !55
  br label %nk_find_value.exit59.thread

nk_find_value.exit59.thread:                      ; preds = %._crit_edge.i54, %.loopexit, %bb.a, %bb.b, %bb.c, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_list_view_begin(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_find_value.exit102.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload = load float, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !54
  %i.f = fptosi float %.sroa.3.0.copyload to i32
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.h = add nsw i32 %i.g, %4                     ; 2 uses
  %i.i = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i113 = icmp eq i8 %i.i, 0
  br i1 %.not4.i113, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.j = trunc i64 %strlen to i32
  %i.k = add i32 %i.j, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader, %bb.b
  %.07.i.lcssa = phi i32 [ 0, %bb.b ], [ %i.k, %.lr.ph.i.preheader ]
  %i.l = tail call i32 @nk_murmur_hash(ptr noundef nonnull %2, i32 noundef %.07.i.lcssa, i32 noundef 2) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %.01625.i = load ptr, ptr %i.m, align 8, !tbaa !555 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !556  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.o, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.lr.ph29.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.o to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !40

bb.d:                                             ; preds = %bb.c, %.lr.ph.i86
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i86 ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55
  %i.s = icmp eq i32 %i.r, %i.l
  br i1 %i.s, label %bb.f, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph29.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.t, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef %i.e, i32 noundef %i.l) ; 3 uses
  %i.v = add i32 %i.l, 1
  %i.w = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef %i.e, i32 noundef %i.v) ; 3 uses
  %i.x = icmp ne ptr %i.u, null
  %i.y = icmp ne ptr %i.w, null
  %or.cond5 = and i1 %i.x, %i.y
  br i1 %or.cond5, label %bb.e, label %nk_find_value.exit102.thread

bb.e:                                             ; preds = %.loopexit
  store i32 0, ptr %i.w, align 4, !tbaa !55
  store i32 0, ptr %i.u, align 4, !tbaa !55
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.e, align 8, !tbaa !236  ; 2 uses
  store i32 %i.z, ptr %.01627.i, align 8, !tbaa !468
  %i.aa = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = add i32 %i.l, 1
  br label %.lr.ph29.i89

.lr.ph29.i89:                                     ; preds = %bb.f, %._crit_edge.i97
  %.01627.i90 = phi ptr [ %.016.i98, %._crit_edge.i97 ], [ %.01625.i, %bb.f ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i90, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i91 = icmp eq i32 %i.ae, 0
  br i1 %.not1923.not.i91, label %._crit_edge.i97, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %.lr.ph29.i89
  %i.af = getelementptr inbounds nuw i8, ptr %.01627.i90, i64 8
  %wide.trip.count.i93 = zext i32 %i.ae to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %wide.trip.count.i93
  br i1 %exitcond.not.i96, label %._crit_edge.i97, label %bb.h, !llvm.loop !40

bb.h:                                             ; preds = %bb.g, %.lr.ph.i92
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.i92 ], [ %indvars.iv.next.i95, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i94
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !55
  %i.ai = icmp eq i32 %i.ah, %i.ac
  br i1 %i.ai, label %nk_find_value.exit102, label %bb.g

._crit_edge.i97:                                  ; preds = %bb.g, %.lr.ph29.i89
  %i.aj = getelementptr inbounds nuw i8, ptr %.01627.i90, i64 560
  %.016.i98 = load ptr, ptr %i.aj, align 8, !tbaa !555 ; 2 uses
  %.not.i99 = icmp eq ptr %.016.i98, null
  br i1 %.not.i99, label %nk_find_value.exit102.thread, label %.lr.ph29.i89

nk_find_value.exit102:                            ; preds = %bb.h
  store i32 %i.z, ptr %.01627.i90, align 8, !tbaa !468
  %i.ak = getelementptr inbounds nuw i8, ptr %.01627.i90, i64 284
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i94
  br label %bb.i

bb.i:                                             ; preds = %nk_find_value.exit102, %bb.e
  %.073 = phi ptr [ %i.ab, %nk_find_value.exit102 ], [ %i.u, %bb.e ]
  %.0 = phi ptr [ %i.al, %nk_find_value.exit102 ], [ %i.w, %bb.e ] ; 4 uses
  %i.am = load i32, ptr %.0, align 4, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !562
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0, ptr %i.ao, align 8, !tbaa !563
  store i32 0, ptr %.0, align 4, !tbaa !55
  %i.ap = tail call zeroext i1 @nk_group_scrolled_offset_begin(ptr noundef nonnull %0, ptr noundef nonnull %.073, ptr noundef nonnull %.0, ptr noundef nonnull %2, i32 noundef %3)
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !415
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !416
  %i.at = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %i.au = mul nsw i32 %i.h, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !564
  %i.aw = load i32, ptr %i.an, align 8, !tbaa !562
  %i.ax = uitofp i32 %i.aw to float
  %i.ay = sitofp i32 %i.h to float                ; 2 uses
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %.inv = fcmp ole float %i.az, 0.000000e+00
  %spec.select108 = select i1 %.inv, float 0.000000e+00, float %i.az
  %spec.select = fptosi float %spec.select108 to i32 ; 3 uses
  store i32 %spec.select, ptr %1, align 8, !tbaa !1078
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !509
  %i.bc = fdiv float %i.bb, %i.ay                 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fcmp ogt float %i.bc, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %spec.select107 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = sub nsw i32 %5, %spec.select
  %. = tail call i32 @llvm.smin.i32(i32 %spec.select107, i32 %i.bj) ; 2 uses
  store i32 %., ptr %i.bi, align 8, !tbaa !1079
  %i.bk = add nsw i32 %., %spec.select
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !1080
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.bm, align 8, !tbaa !565
  br label %nk_find_value.exit102.thread

nk_find_value.exit102.thread:                     ; preds = %._crit_edge.i97, %.loopexit, %bb.a, %bb.i
  %.074 = phi i1 [ %i.ap, %bb.i ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %._crit_edge.i97 ]
  ret i1 %.074
}

; Function Attrs: nounwind uwtable
define void @nk_list_view_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565  ; 3 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 2 uses
end_hunk_5

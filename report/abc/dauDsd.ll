Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 96
begin_hunk_0_@Dau_DsdCheck1Step:bb.a
  store <2 x i64> %i.cu, ptr %i.cw, align 16, !tbaa !45
  store <2 x i64> %i.cv, ptr %i.cx, align 16, !tbaa !45
  %index.next226 = add nuw i64 %index223, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next226, %n.vec217
  br i1 %i.cy, label %Abc_TtCofactor0p.exit, label %vector.body222, !llvm.loop !135

scalar.ph214:                                     ; preds = %.lr.ph.i51
  %i.cz = load i64, ptr %1, align 8, !tbaa !45
  %i.da = and i64 %i.cz, %i.cm                    ; 2 uses
  %i.db = shl i64 %i.da, %i.cn
  %i.dc = or i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.a, align 16, !tbaa !45
  %i.dd = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.de = and i64 %i.dd, %i.cm                    ; 2 uses
  %i.df = shl i64 %i.de, %i.cn
  %i.dg = or i64 %i.df, %i.de
  store i64 %i.dg, ptr %i.bq, align 8, !tbaa !45
  br i1 %exitcond60.not.i.1, label %Abc_TtCofactor0p.exit, label %scalar.ph214.2

scalar.ph214.2:                                   ; preds = %scalar.ph214
  %i.dh = load i64, ptr %i.br, align 8, !tbaa !45
  %i.di = and i64 %i.dh, %i.cm                    ; 2 uses
  %i.dj = shl i64 %i.di, %i.cn
  %i.dk = or i64 %i.dj, %i.di
  store i64 %i.dk, ptr %i.bs, align 16, !tbaa !45
  br label %Abc_TtCofactor0p.exit

bb.g:                                             ; preds = %bb.e
  %i.dl = add nsw i32 %i.by, -6                   ; 4 uses
  %i.dm = shl nuw i32 1, %i.dl                    ; 4 uses
  br i1 %i.bl, label %.preheader.lr.ph.i, label %Abc_TtCofactor0p.exit

.preheader.lr.ph.i:                               ; preds = %bb.g
  %.not.i = icmp eq i32 %i.dl, 31
  %i.dn = shl i32 2, %i.dl
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  br i1 %.not.i, label %Abc_TtCofactor0p.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.dp = sext i32 %i.dm to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %min.iters.check233 = icmp slt i32 %i.dm, 4
  %i.dq = and i32 %smax.i, 2147483644
  %n.vec235 = zext nneg i32 %i.dq to i64
  %exitcond.not.i50 = icmp slt i32 %i.dm, 2
  %exitcond.not.i50.1 = icmp eq i32 %i.dl, 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.eg, %._crit_edge.us.i ], [ %i.a, %.preheader.us.preheader.i ] ; 6 uses
  %.04350.us.i = phi ptr [ %i.ef, %._crit_edge.us.i ], [ %1, %.preheader.us.preheader.i ] ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.dp ; 4 uses
  br i1 %min.iters.check233, label %scalar.ph232, label %vector.body236

vector.body236:                                   ; preds = %.preheader.us.i, %vector.body236
  %index237 = phi i64 [ %index.next240, %vector.body236 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index237 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load238 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %wide.load239 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !45 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index237 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x i64> %wide.load238, ptr %i.dt, align 8, !tbaa !45
  store <2 x i64> %wide.load239, ptr %i.du, align 8, !tbaa !45
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index237 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  store <2 x i64> %wide.load238, ptr %i.dv, align 8, !tbaa !45
  store <2 x i64> %wide.load239, ptr %i.dw, align 8, !tbaa !45
  %index.next240 = add nuw i64 %index237, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.dx, label %._crit_edge.us.i, label %vector.body236, !llvm.loop !136

scalar.ph232:                                     ; preds = %.preheader.us.i
  %i.dy = load i64, ptr %.04350.us.i, align 8, !tbaa !45 ; 2 uses
  store i64 %i.dy, ptr %.04251.us.i, align 8, !tbaa !45
  store i64 %i.dy, ptr %invariant.gep.i, align 8, !tbaa !45
  br i1 %exitcond.not.i50, label %._crit_edge.us.i, label %scalar.ph232.1

scalar.ph232.1:                                   ; preds = %scalar.ph232
  %i.dz = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !45 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !45
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 8
  store i64 %i.ea, ptr %gep.i.1, align 8, !tbaa !45
  br i1 %exitcond.not.i50.1, label %._crit_edge.us.i, label %scalar.ph232.2

scalar.ph232.2:                                   ; preds = %scalar.ph232.1
  %i.ec = getelementptr inbounds nuw i8, ptr %.04350.us.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !45 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.04251.us.i, i64 16
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !45
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 16
  store i64 %i.ed, ptr %gep.i.2, align 8, !tbaa !45
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body236, %scalar.ph232, %scalar.ph232.1, %scalar.ph232.2
  %i.ef = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.do ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.do
  %i.eh = icmp ult ptr %i.ef, %i.bk
  br i1 %i.eh, label %.preheader.us.i, label %Abc_TtCofactor0p.exit, !llvm.loop !11

Abc_TtCofactor0p.exit:                            ; preds = %._crit_edge.us.i, %vector.body222, %scalar.ph214, %scalar.ph214.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  br i1 %i.bm, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %Abc_TtCofactor0p.exit
  %i.ei = load i64, ptr %i.a, align 16, !tbaa !45 ; 12 uses
  %i.ej = lshr i64 %i.ei, 1
  %i.ek = xor i64 %i.ej, %i.ei
  %.fr = freeze i64 %i.ek
  %i.el = and i64 %.fr, 6148914691236517205
  %.not17.us.i = icmp ne i64 %i.el, 0
  %i.em = zext i1 %.not17.us.i to i32             ; 2 uses
  br i1 %exitcond55.not.i, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %.lr.ph.split.us.i
  %i.en = lshr i64 %i.ei, 2
  %i.eo = xor i64 %i.en, %i.ei
  %.fr258 = freeze i64 %i.eo
  %i.ep = and i64 %.fr258, 3689348814741910323
  %.not17.us.i.1 = icmp ne i64 %i.ep, 0
  %i.eq = zext i1 %.not17.us.i.1 to i32
  %spec.select.i58.1 = add nuw nsw i32 %i.em, %i.eq ; 2 uses
  br i1 %exitcond55.not.i.1, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.er = lshr i64 %i.ei, 4
  %i.es = xor i64 %i.er, %i.ei
  %.fr259 = freeze i64 %i.es
  %i.et = and i64 %.fr259, 1085102592571150095
  %.not17.us.i.2 = icmp ne i64 %i.et, 0
  %i.eu = zext i1 %.not17.us.i.2 to i32
  %spec.select.i58.2 = add nuw nsw i32 %spec.select.i58.1, %i.eu ; 2 uses
  br i1 %exitcond55.not.i.2, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.ev = lshr i64 %i.ei, 8
  %i.ew = xor i64 %i.ev, %i.ei
  %.fr260 = freeze i64 %i.ew
  %i.ex = and i64 %.fr260, 71777214294589695
  %.not17.us.i.3 = icmp ne i64 %i.ex, 0
  %i.ey = zext i1 %.not17.us.i.3 to i32
  %spec.select.i58.3 = add nuw nsw i32 %spec.select.i58.2, %i.ey ; 2 uses
  br i1 %exitcond55.not.i.3, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.ez = lshr i64 %i.ei, 16
  %i.fa = xor i64 %i.ez, %i.ei
  %.fr261 = freeze i64 %i.fa
  %i.fb = and i64 %.fr261, 281470681808895
  %.not17.us.i.4 = icmp ne i64 %i.fb, 0
  %i.fc = zext i1 %.not17.us.i.4 to i32
  %spec.select.i58.4 = add nuw nsw i32 %spec.select.i58.3, %i.fc ; 2 uses
  br i1 %exitcond55.not.i.4, label %Abc_TtSupportSize.exit, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.fd = lshr i64 %i.ei, 32
  %.masked = and i64 %i.ei, 4294967295
  %i.fe = xor i64 %i.fd, %.masked
  %.fr.us.i.5 = freeze i64 %i.fe
  %.not17.us.i.5 = icmp ne i64 %.fr.us.i.5, 0
  %i.ff = zext i1 %.not17.us.i.5 to i32
  %spec.select.i58.5 = add nuw nsw i32 %spec.select.i58.4, %i.ff
  br label %Abc_TtSupportSize.exit

.lr.ph.split.i:                                   ; preds = %Abc_TtCofactor0p.exit
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.i, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i56, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 5 uses
  %.022.i = phi i32 [ %i.gd, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %i.fg = icmp samesign ult i64 %indvars.iv.i55, 6
  br i1 %i.fg, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.fh = trunc nuw nsw i64 %indvars.iv.i55 to i32
  %i.fi = shl nuw nsw i32 1, %i.fh
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i55
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.h ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !45 ; 2 uses
  %i.fo = lshr i64 %i.fn, %i.fj
  %i.fp = xor i64 %i.fo, %i.fn
  %i.fq = and i64 %i.fp, %i.fl
  %.not39.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not39.i.i, label %bb.h, label %Abc_TtHasVar.exit.thread13.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.fr = add nsw i64 %indvars.iv.i55, -6         ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 31
  %i.ft = trunc nsw i64 %i.fr to i32              ; 2 uses
  %i.fu = shl i32 2, %i.ft
  %i.fv = sext i32 %i.fu to i64
  br i1 %i.fs, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.fw = shl nuw i32 1, %i.ft                    ; 2 uses
  %4 = sext i32 %i.fw to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.fw, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ga, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %4
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.k, !llvm.loop !9

bb.k:                                             ; preds = %bb.j, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.fz = load i64, ptr %gep.i.i, align 8, !tbaa !45
  %.not.us.i.i = icmp eq i64 %i.fy, %i.fz
  br i1 %.not.us.i.i, label %bb.j, label %Abc_TtHasVar.exit.thread13.i

._crit_edge.us.i.i:                               ; preds = %bb.j
  %i.ga = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.fv ; 2 uses
  %i.gb = icmp ult ptr %i.ga, %i.bo
  br i1 %i.gb, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i:                     ; preds = %bb.i, %bb.k
  %i.gc = add nsw i32 %.022.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.h, %Abc_TtHasVar.exit.thread13.i, %.preheader.lr.ph.i.i
  %i.gd = phi i32 [ %i.gc, %Abc_TtHasVar.exit.thread13.i ], [ %.022.i, %bb.h ], [ %.022.i, %.preheader.lr.ph.i.i ], [ %.022.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i54
  br i1 %exitcond.not.i57, label %Abc_TtSupportSize.exit, label %.lr.ph.split.split.split.i, !llvm.loop !137

Abc_TtSupportSize.exit:                           ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.us.i, %Abc_TtHasVar.exit.us.i.1, %Abc_TtHasVar.exit.us.i.2, %Abc_TtHasVar.exit.us.i.3, %Abc_TtHasVar.exit.us.i.4, %Abc_TtHasVar.exit.us.i.5, %.lr.ph.split.i
  %.0.lcssa.i = phi i32 [ %spec.select.i58.5, %Abc_TtHasVar.exit.us.i.5 ], [ 0, %.lr.ph.split.i ], [ %i.em, %.lr.ph.split.us.i ], [ %spec.select.i58.1, %Abc_TtHasVar.exit.us.i.1 ], [ %spec.select.i58.2, %Abc_TtHasVar.exit.us.i.2 ], [ %spec.select.i58.3, %Abc_TtHasVar.exit.us.i.3 ], [ %spec.select.i58.4, %Abc_TtHasVar.exit.us.i.4 ], [ %i.gd, %Abc_TtHasVar.exit.thread.i ]
  %i.ge = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %Abc_TtSupportSize.exit
  %i.gf = load i64, ptr %1, align 8, !tbaa !45
  %i.gg = sext i32 %i.by to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gj = and i64 %i.gi, %i.gf                    ; 2 uses
  %i.gk = shl nuw i32 1, %i.by
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 %i.gj, %i.gl
  %i.gn = or i64 %i.gm, %i.gj
  store i64 %i.gn, ptr %i.a, align 16, !tbaa !45
  br label %Abc_TtCofactor1p.exit

bb.m:                                             ; preds = %Abc_TtSupportSize.exit
  %i.go = icmp slt i32 %i.by, 6
  br i1 %i.go, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.bl, label %.lr.ph.i70, label %Abc_TtCofactor1p.exit

.lr.ph.i70:                                       ; preds = %bb.n
  %i.gp = shl nuw nsw i32 1, %i.by
  %i.gq = sext i32 %i.by to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.gq
  %i.gs = zext nneg i32 %i.gp to i64              ; 4 uses
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !45 ; 4 uses
  br i1 %min.iters.check190, label %scalar.ph189, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i70
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body195 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index196 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <2 x i64>, ptr %i.gu, align 8, !tbaa !45
  %wide.load197 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !45
  %i.gw = and <2 x i64> %broadcast.splat194, %wide.load ; 2 uses
  %i.gx = and <2 x i64> %broadcast.splat194, %wide.load197 ; 2 uses
  %i.gy = lshr <2 x i64> %i.gw, %broadcast.splat
  %i.gz = lshr <2 x i64> %i.gx, %broadcast.splat
  %i.ha = or <2 x i64> %i.gy, %i.gw
  %i.hb = or <2 x i64> %i.gz, %i.gx
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index196 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store <2 x i64> %i.ha, ptr %i.hc, align 16, !tbaa !45
  store <2 x i64> %i.hb, ptr %i.hd, align 16, !tbaa !45
  %index.next198 = add nuw i64 %index196, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.he, label %Abc_TtCofactor1p.exit, label %vector.body195, !llvm.loop !138

scalar.ph189:                                     ; preds = %.lr.ph.i70
  %i.hf = load i64, ptr %1, align 8, !tbaa !45
  %i.hg = and i64 %i.gt, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, %i.gs
  %i.hi = or i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.a, align 16, !tbaa !45
  %i.hj = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.hk = and i64 %i.gt, %i.hj                    ; 2 uses
  %i.hl = lshr i64 %i.hk, %i.gs
  %i.hm = or i64 %i.hl, %i.hk
  store i64 %i.hm, ptr %i.bu, align 8, !tbaa !45
  br i1 %exitcond62.not.i.1, label %Abc_TtCofactor1p.exit, label %scalar.ph189.2

scalar.ph189.2:                                   ; preds = %scalar.ph189
  %i.hn = load i64, ptr %i.bv, align 8, !tbaa !45
  %i.ho = and i64 %i.gt, %i.hn                    ; 2 uses
  %i.hp = lshr i64 %i.ho, %i.gs
  %i.hq = or i64 %i.hp, %i.ho
  store i64 %i.hq, ptr %i.bw, align 16, !tbaa !45
  br label %Abc_TtCofactor1p.exit

bb.o:                                             ; preds = %bb.m
  %i.hr = add nsw i32 %i.by, -6                   ; 4 uses
  %i.hs = shl nuw i32 1, %i.hr                    ; 4 uses
  br i1 %i.bl, label %.preheader.lr.ph.i60, label %Abc_TtCofactor1p.exit

.preheader.lr.ph.i60:                             ; preds = %bb.o
  %.not.i61 = icmp eq i32 %i.hr, 31
  %i.ht = shl i32 2, %i.hr
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  br i1 %.not.i61, label %Abc_TtCofactor1p.exit, label %.preheader.us.preheader.i62

.preheader.us.preheader.i62:                      ; preds = %.preheader.lr.ph.i60
  %i.hv = sext i32 %i.hs to i64                   ; 5 uses
  %smax.i63 = call i32 @llvm.smax.i32(i32 %i.hs, i32 1)
  %min.iters.check203 = icmp slt i32 %i.hs, 4
  %i.hw = and i32 %smax.i63, 2147483644
  %n.vec205 = zext nneg i32 %i.hw to i64
  %exitcond.not.i68 = icmp slt i32 %i.hs, 2
  %i.hx = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %exitcond.not.i68.1 = icmp eq i32 %i.hr, 1
  %i.hy = add nuw nsw i64 %i.hv, 2                ; 2 uses
  br label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %._crit_edge.us.i69, %.preheader.us.preheader.i62
  %.04453.us.i = phi ptr [ %i.it, %._crit_edge.us.i69 ], [ %i.a, %.preheader.us.preheader.i62 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.is, %._crit_edge.us.i69 ], [ %1, %.preheader.us.preheader.i62 ] ; 5 uses
  br i1 %min.iters.check203, label %scalar.ph202, label %vector.body206

vector.body206:                                   ; preds = %.preheader.us.i65, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader.us.i65 ] ; 3 uses
  %i.hz = add nuw nsw i64 %index207, %i.hv        ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load208 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !45 ; 2 uses
  %wide.load209 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !45 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index207 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x i64> %wide.load208, ptr %i.ic, align 8, !tbaa !45
  store <2 x i64> %wide.load209, ptr %i.id, align 8, !tbaa !45
  %i.ie = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hz ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x i64> %wide.load208, ptr %i.ie, align 8, !tbaa !45
  store <2 x i64> %wide.load209, ptr %i.if, align 8, !tbaa !45
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.ig, label %._crit_edge.us.i69, label %vector.body206, !llvm.loop !139

scalar.ph202:                                     ; preds = %.preheader.us.i65
  %i.ih = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hv
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !45 ; 2 uses
  store i64 %i.ii, ptr %.04453.us.i, align 8, !tbaa !45
  %i.ij = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hv
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !45
  br i1 %exitcond.not.i68, label %._crit_edge.us.i69, label %scalar.ph202.1

scalar.ph202.1:                                   ; preds = %scalar.ph202
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.hx
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 8
  store i64 %i.il, ptr %i.im, align 8, !tbaa !45
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.hx
  store i64 %i.il, ptr %i.in, align 8, !tbaa !45
  br i1 %exitcond.not.i68.1, label %._crit_edge.us.i69, label %scalar.ph202.2

scalar.ph202.2:                                   ; preds = %scalar.ph202.1
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.hy
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !45 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.04453.us.i, i64 16
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !45
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.hy
  store i64 %i.ip, ptr %i.ir, align 8, !tbaa !45
  br label %._crit_edge.us.i69

._crit_edge.us.i69:                               ; preds = %vector.body206, %scalar.ph202, %scalar.ph202.1, %scalar.ph202.2
  %i.is = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.hu ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.hu
  %i.iu = icmp ult ptr %i.is, %i.bk
  br i1 %i.iu, label %.preheader.us.i65, label %Abc_TtCofactor1p.exit, !llvm.loop !13

Abc_TtCofactor1p.exit:                            ; preds = %._crit_edge.us.i69, %vector.body195, %scalar.ph189, %scalar.ph189.2, %bb.l, %bb.n, %bb.o, %.preheader.lr.ph.i60
  br i1 %i.bm, label %.lr.ph.split.us.i106, label %.lr.ph.split.i77

.lr.ph.split.us.i106:                             ; preds = %Abc_TtCofactor1p.exit
  %i.iv = load i64, ptr %i.a, align 16, !tbaa !45 ; 12 uses
  %i.iw = lshr i64 %i.iv, 1
  %i.ix = xor i64 %i.iw, %i.iv
  %.fr262 = freeze i64 %i.ix
  %i.iy = and i64 %.fr262, 6148914691236517205
  %.not17.us.i112 = icmp ne i64 %i.iy, 0
  %i.iz = zext i1 %.not17.us.i112 to i32          ; 2 uses
  br i1 %exitcond55.not.i115, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.1

Abc_TtHasVar.exit.us.i108.1:                      ; preds = %.lr.ph.split.us.i106
  %i.ja = lshr i64 %i.iv, 2
  %i.jb = xor i64 %i.ja, %i.iv
  %.fr263 = freeze i64 %i.jb
  %i.jc = and i64 %.fr263, 3689348814741910323
  %.not17.us.i112.1 = icmp ne i64 %i.jc, 0
  %i.jd = zext i1 %.not17.us.i112.1 to i32
  %spec.select.i113.1 = add nuw nsw i32 %i.iz, %i.jd ; 2 uses
  br i1 %exitcond55.not.i115.1, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.2

Abc_TtHasVar.exit.us.i108.2:                      ; preds = %Abc_TtHasVar.exit.us.i108.1
  %i.je = lshr i64 %i.iv, 4
  %i.jf = xor i64 %i.je, %i.iv
  %.fr264 = freeze i64 %i.jf
  %i.jg = and i64 %.fr264, 1085102592571150095
  %.not17.us.i112.2 = icmp ne i64 %i.jg, 0
  %i.jh = zext i1 %.not17.us.i112.2 to i32
  %spec.select.i113.2 = add nuw nsw i32 %spec.select.i113.1, %i.jh ; 2 uses
  br i1 %exitcond55.not.i115.2, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.3

Abc_TtHasVar.exit.us.i108.3:                      ; preds = %Abc_TtHasVar.exit.us.i108.2
  %i.ji = lshr i64 %i.iv, 8
  %i.jj = xor i64 %i.ji, %i.iv
  %.fr265 = freeze i64 %i.jj
  %i.jk = and i64 %.fr265, 71777214294589695
  %.not17.us.i112.3 = icmp ne i64 %i.jk, 0
  %i.jl = zext i1 %.not17.us.i112.3 to i32
  %spec.select.i113.3 = add nuw nsw i32 %spec.select.i113.2, %i.jl ; 2 uses
  br i1 %exitcond55.not.i115.3, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.4

Abc_TtHasVar.exit.us.i108.4:                      ; preds = %Abc_TtHasVar.exit.us.i108.3
  %i.jm = lshr i64 %i.iv, 16
  %i.jn = xor i64 %i.jm, %i.iv
  %.fr266 = freeze i64 %i.jn
  %i.jo = and i64 %.fr266, 281470681808895
  %.not17.us.i112.4 = icmp ne i64 %i.jo, 0
  %i.jp = zext i1 %.not17.us.i112.4 to i32
  %spec.select.i113.4 = add nuw nsw i32 %spec.select.i113.3, %i.jp ; 2 uses
  br i1 %exitcond55.not.i115.4, label %Abc_TtSupportSize.exit116, label %Abc_TtHasVar.exit.us.i108.5

Abc_TtHasVar.exit.us.i108.5:                      ; preds = %Abc_TtHasVar.exit.us.i108.4
  %i.jq = lshr i64 %i.iv, 32
  %.masked267 = and i64 %i.iv, 4294967295
  %i.jr = xor i64 %i.jq, %.masked267
  %.fr.us.i111.5 = freeze i64 %i.jr
  %.not17.us.i112.5 = icmp ne i64 %.fr.us.i111.5, 0
  %i.js = zext i1 %.not17.us.i112.5 to i32
  %spec.select.i113.5 = add nuw nsw i32 %spec.select.i113.4, %i.js
  br label %Abc_TtSupportSize.exit116

.lr.ph.split.i77:                                 ; preds = %Abc_TtCofactor1p.exit
  br i1 %.not48.i.i, label %Abc_TtSupportSize.exit116, label %.lr.ph.split.split.split.i81

.lr.ph.split.split.split.i81:                     ; preds = %.lr.ph.split.i77, %Abc_TtHasVar.exit.thread.i95
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i96, %Abc_TtHasVar.exit.thread.i95 ], [ 0, %.lr.ph.split.i77 ] ; 5 uses
  %.022.i83 = phi i32 [ %i.kq, %Abc_TtHasVar.exit.thread.i95 ], [ 0, %.lr.ph.split.i77 ] ; 4 uses
  %i.jt = icmp samesign ult i64 %indvars.iv.i82, 6
  br i1 %i.jt, label %.lr.ph.i.i101, label %.preheader.lr.ph.i.i84

.lr.ph.i.i101:                                    ; preds = %.lr.ph.split.split.split.i81
  %i.ju = trunc nuw nsw i64 %indvars.iv.i82 to i32
  %i.jv = shl nuw nsw i32 1, %i.ju
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i82
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !45
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next54.i.i104 = add nuw nsw i64 %indvars.iv53.i.i102, 1 ; 2 uses
  %exitcond58.not.i.i105 = icmp eq i64 %indvars.iv.next54.i.i104, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i105, label %Abc_TtHasVar.exit.thread.i95, label %bb.q, !llvm.loop !12

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i101
  %indvars.iv53.i.i102 = phi i64 [ 0, %.lr.ph.i.i101 ], [ %indvars.iv.next54.i.i104, %bb.p ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i102
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !45 ; 2 uses
  %i.kb = lshr i64 %i.ka, %i.jw
  %i.kc = xor i64 %i.kb, %i.ka
  %i.kd = and i64 %i.kc, %i.jy
  %.not39.i.i103 = icmp eq i64 %i.kd, 0
  br i1 %.not39.i.i103, label %bb.p, label %Abc_TtHasVar.exit.thread13.i94

.preheader.lr.ph.i.i84:                           ; preds = %.lr.ph.split.split.split.i81
  %i.ke = add nsw i64 %indvars.iv.i82, -6         ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 31
  %i.kg = trunc nsw i64 %i.ke to i32              ; 2 uses
  %i.kh = shl i32 2, %i.kg
  %i.ki = sext i32 %i.kh to i64
  br i1 %i.kf, label %Abc_TtHasVar.exit.thread.i95, label %.preheader.us.preheader.i.i85

.preheader.us.preheader.i.i85:                    ; preds = %.preheader.lr.ph.i.i84
  %i.kj = shl nuw i32 1, %i.kg                    ; 2 uses
  %5 = sext i32 %i.kj to i64
  %smax.i.i86 = call i32 @llvm.smax.i32(i32 %i.kj, i32 1)
  %wide.trip.count.i.i87 = zext nneg i32 %smax.i.i86 to i64
  br label %.preheader.us.i.i88

.preheader.us.i.i88:                              ; preds = %._crit_edge.us.i.i100, %.preheader.us.preheader.i.i85
  %.03343.us.i.i89 = phi ptr [ %i.kn, %._crit_edge.us.i.i100 ], [ %i.a, %.preheader.us.preheader.i.i85 ] ; 3 uses
  %invariant.gep.i.i90 = getelementptr [8 x i8], ptr %.03343.us.i.i89, i64 %5
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i91, 1 ; 2 uses
  %exitcond.not.i.i99 = icmp eq i64 %indvars.iv.next.i.i98, %wide.trip.count.i.i87
  br i1 %exitcond.not.i.i99, label %._crit_edge.us.i.i100, label %bb.s, !llvm.loop !9

bb.s:                                             ; preds = %bb.r, %.preheader.us.i.i88
  %indvars.iv.i.i91 = phi i64 [ 0, %.preheader.us.i.i88 ], [ %indvars.iv.next.i.i98, %bb.r ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i89, i64 %indvars.iv.i.i91
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !45
  %gep.i.i92 = getelementptr [8 x i8], ptr %invariant.gep.i.i90, i64 %indvars.iv.i.i91
  %i.km = load i64, ptr %gep.i.i92, align 8, !tbaa !45
  %.not.us.i.i93 = icmp eq i64 %i.kl, %i.km
  br i1 %.not.us.i.i93, label %bb.r, label %Abc_TtHasVar.exit.thread13.i94

._crit_edge.us.i.i100:                            ; preds = %bb.r
  %i.kn = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i89, i64 %i.ki ; 2 uses
  %i.ko = icmp ult ptr %i.kn, %i.bo
  br i1 %i.ko, label %.preheader.us.i.i88, label %Abc_TtHasVar.exit.thread.i95, !llvm.loop !10

Abc_TtHasVar.exit.thread13.i94:                   ; preds = %bb.q, %bb.s
  %i.kp = add nsw i32 %.022.i83, 1
  br label %Abc_TtHasVar.exit.thread.i95

Abc_TtHasVar.exit.thread.i95:                     ; preds = %._crit_edge.us.i.i100, %bb.p, %Abc_TtHasVar.exit.thread13.i94, %.preheader.lr.ph.i.i84
  %i.kq = phi i32 [ %i.kp, %Abc_TtHasVar.exit.thread13.i94 ], [ %.022.i83, %bb.p ], [ %.022.i83, %.preheader.lr.ph.i.i84 ], [ %.022.i83, %._crit_edge.us.i.i100 ] ; 2 uses
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i96, %wide.trip.count.i54
  br i1 %exitcond.not.i97, label %Abc_TtSupportSize.exit116, label %.lr.ph.split.split.split.i81, !llvm.loop !137

Abc_TtSupportSize.exit116:                        ; preds = %Abc_TtHasVar.exit.thread.i95, %.lr.ph.split.us.i106, %Abc_TtHasVar.exit.us.i108.1, %Abc_TtHasVar.exit.us.i108.2, %Abc_TtHasVar.exit.us.i108.3, %Abc_TtHasVar.exit.us.i108.4, %Abc_TtHasVar.exit.us.i108.5, %.lr.ph.split.i77
  %.0.lcssa.i72 = phi i32 [ %spec.select.i113.5, %Abc_TtHasVar.exit.us.i108.5 ], [ 0, %.lr.ph.split.i77 ], [ %i.iz, %.lr.ph.split.us.i106 ], [ %spec.select.i113.1, %Abc_TtHasVar.exit.us.i108.1 ], [ %spec.select.i113.2, %Abc_TtHasVar.exit.us.i108.2 ], [ %spec.select.i113.3, %Abc_TtHasVar.exit.us.i108.3 ], [ %spec.select.i113.4, %Abc_TtHasVar.exit.us.i108.4 ], [ %i.kq, %Abc_TtHasVar.exit.thread.i95 ]
  %i.kr = add nsw i32 %.0.lcssa.i72, %.0.lcssa.i  ; 2 uses
  %i.ks = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.kt = icmp eq i32 %i.ge, 0
  %i.ku = icmp eq i32 %i.ks, 0
  %or.cond.not120 = select i1 %i.kt, i1 %i.ku, i1 false
  %i.kv = icmp sgt i32 %.0137, %i.kr
  %or.cond46 = select i1 %or.cond.not120, i1 %i.kv, i1 false ; 2 uses
  %spec.select = select i1 %or.cond46, i32 %i.by, i32 %.039136 ; 2 uses
  %spec.select117 = select i1 %or.cond46, i32 %i.kr, i32 %.0137
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count.i54
  br i1 %exitcond159.not, label %.loopexit, label %bb.c, !llvm.loop !140

.loopexit:                                        ; preds = %Abc_TtSupportSize.exit116, %._crit_edge.thread, %bb.b, %bb.a
  %.043 = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -2, %._crit_edge.thread ], [ %spec.select, %Abc_TtSupportSize.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @Dau_DsdDecompose(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 4 uses
  %5 = alloca %struct.Dau_Dsd_t_, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %2, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %3, ptr %i.c, align 4, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !54
  %i.f = load i64, ptr %0, align 8, !tbaa !45
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  %i.i = icmp slt i32 %1, 7
  %i.j = add nsw i32 %1, -6
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0                     ; 2 uses
  br i1 %i.h, label %bb.b, label %Abc_TtIsConst0.exit.thread55

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %Abc_TtIsConst1.exit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.not40 = icmp eq ptr %4, null
  br i1 %.not40, label %._crit_edge, label %._crit_edge.sink.split

Abc_TtIsConst0.exit.thread55:                     ; preds = %bb.a
  br i1 %i.m, label %.lr.ph.preheader.i42, label %.loopexit59

.lr.ph.preheader.i42:                             ; preds = %Abc_TtIsConst0.exit.thread55
  %wide.trip.count.i43 = zext nneg i32 %i.l to i64
  br label %.lr.ph.i44

bb.d:                                             ; preds = %.lr.ph.i44
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i43
  br i1 %exitcond.not.i48, label %.loopexit59, label %.lr.ph.i44, !llvm.loop !8

.lr.ph.i44:                                       ; preds = %bb.d, %.lr.ph.preheader.i42
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.preheader.i42 ], [ %indvars.iv.next.i47, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i45
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45
  %.not.i46 = icmp eq i64 %i.q, -1
  br i1 %.not.i46, label %bb.d, label %Abc_TtIsConst1.exit

.loopexit59:                                      ; preds = %bb.d, %Abc_TtIsConst0.exit.thread55
  %.not39 = icmp eq ptr %4, null
  br i1 %.not39, label %._crit_edge, label %._crit_edge.sink.split

Abc_TtIsConst1.exit:                              ; preds = %.lr.ph.i44, %.lr.ph.i
  %i.r = call i32 @Dau_DsdDecomposeInt(ptr noundef nonnull %5, ptr noundef nonnull %0, i32 noundef %1)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 1320 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.t = load i8, ptr %i.s, align 8, !tbaa !36    ; 2 uses
  %.not25.i = icmp eq i8 %i.t, 0
  br i1 %.not25.i, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %Abc_TtIsConst1.exit, %bb.g
  %i.u = phi i8 [ %i.af, %bb.g ], [ %i.t, %Abc_TtIsConst1.exit ]
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %bb.g ], [ 0, %Abc_TtIsConst1.exit ] ; 3 uses
  %.027.i = phi i32 [ %.1.i, %bb.g ], [ 0, %Abc_TtIsConst1.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @Dau_DsdComputeMatches.pMatches, i64 %indvars.iv.i50
  store i32 0, ptr %i.v, align 4, !tbaa !37
  switch i8 %i.u, label %bb.g [
    i8 40, label %bb.e
    i8 91, label %bb.e
    i8 60, label %bb.e
    i8 123, label %bb.e
    i8 41, label %bb.f
    i8 93, label %bb.f
    i8 62, label %bb.f
    i8 125, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49
  %i.w = add nsw i32 %.027.i, 1
  br label %.sink.split.i

bb.f:                                             ; preds = %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49, %.lr.ph.i49
  %i.x = add nsw i32 %.027.i, -1                  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.027.sink.i = phi i32 [ %.027.i, %bb.e ], [ %i.aa, %bb.f ]
  %.sink.i = phi ptr [ %i.a, %bb.e ], [ @Dau_DsdComputeMatches.pMatches, %bb.f ]
  %.1.ph.i = phi i32 [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  %i.ab = sext i32 %.027.sink.i to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.ab
  %i.ad = trunc nuw nsw i64 %indvars.iv.i50 to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %.lr.ph.i49
  %.1.i = phi i32 [ %.027.i, %.lr.ph.i49 ], [ %.1.ph.i, %.sink.split.i ]
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i51
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !36  ; 2 uses
  %.not.i52 = icmp eq i8 %i.af, 0
  br i1 %.not.i52, label %Dau_DsdComputeMatches.exit, label %.lr.ph.i49, !llvm.loop !0

Dau_DsdComputeMatches.exit:                       ; preds = %bb.g, %Abc_TtIsConst1.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @Dau_DsdRemoveBraces(ptr noundef nonnull %i.s, ptr noundef nonnull @Dau_DsdComputeMatches.pMatches) #31
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Dau_DsdComputeMatches.exit
  %i.ag = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %i.s) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Dau_DsdComputeMatches.exit
  %i.ah = icmp eq i32 %2, 0
  %i.ai = icmp ne i32 %i.r, 2
  %or.cond.not = select i1 %i.ah, i1 true, i1 %i.ai
  %.pre = load i32, ptr %i.e, align 4
  %spec.select = select i1 %or.cond.not, i32 %.pre, i32 -1
  br label %._crit_edge

end_hunk_0

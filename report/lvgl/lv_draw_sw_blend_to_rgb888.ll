inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb888:bb.a
  %i.ag = icmp sgt i32 %i.d, 0
  %i.ah = sext i32 %i.k to i64                    ; 2 uses
  %i.ai = zext i32 %i.o to i64                    ; 2 uses
  br i1 %i.ag, label %.preheader.preheader.i, label %rgb565_image_blend.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count279.i = zext nneg i32 %i.d to i64 ; 5 uses
  %i.aj = add nsw i32 %i.f, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.ah, %i.ak
  %i.am = getelementptr i8, ptr %i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %wide.trip.count279.i
  %scevgep465 = getelementptr i8, ptr %i.an, i64 2
  %i.ao = mul nuw i64 %i.ai, %i.ak
  %i.ap = shl nuw nsw i64 %wide.trip.count279.i, 1
  %i.aq = getelementptr i8, ptr %i.m, i64 %i.ao
  %scevgep466 = getelementptr i8, ptr %i.aq, i64 %i.ap
  %min.iters.check471 = icmp ugt i32 %i.d, 7
  %ident.check463.not = icmp eq i32 %1, 1
  %or.cond = and i1 %min.iters.check471, %ident.check463.not
  %bound0467 = icmp ult ptr %i.i, %scevgep466
  %bound1468 = icmp ult ptr %i.m, %scevgep465
  %found.conflict469 = and i1 %bound0467, %bound1468
  %stride.check470 = icmp slt i32 %i.k, 0
  %i.ar = or i1 %found.conflict469, %stride.check470
  %n.vec473 = and i64 %wide.trip.count279.i, 2147483640 ; 4 uses
  %i.as = trunc nuw nsw i64 %n.vec473 to i32
  %cmp.n481 = icmp eq i64 %n.vec473, %wide.trip.count279.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge247.i, %.preheader.preheader.i
  %.0250.i = phi i32 [ %i.ch, %._crit_edge247.i ], [ 0, %.preheader.preheader.i ]
  %.0160249.i = phi ptr [ %i.cg, %._crit_edge247.i ], [ %i.m, %.preheader.preheader.i ] ; 3 uses
  %.0165248.i = phi ptr [ %i.cf, %._crit_edge247.i ], [ %i.i, %.preheader.preheader.i ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.ar
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body474

vector.body474:                                   ; preds = %.preheader.i, %vector.body474
  %index475 = phi i64 [ %index.next479, %vector.body474 ], [ 0, %.preheader.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.0160249.i, i64 %index475 ; 3 uses
  %wide.load476 = load <8 x i16>, ptr %i.at, align 2, !alias.scope !55
  %i.au = lshr <8 x i16> %wide.load476, splat (i16 11)
  %i.av = mul nuw <8 x i16> %i.au, splat (i16 2106)
  %i.aw = lshr <8 x i16> %i.av, splat (i16 8)
  %i.ax = trunc nuw <8 x i16> %i.aw to <8 x i8>
  %sext494 = shl i64 %index475, 32
  %i.ay = ashr exact i64 %sext494, 32
  %i.az = getelementptr i8, ptr %.0165248.i, i64 %i.ay ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 2
  store <8 x i8> %i.ax, ptr %i.ba, align 1, !tbaa !21, !alias.scope !58, !noalias !55
  %wide.load477 = load <8 x i16>, ptr %i.at, align 2, !alias.scope !55
  %i.bb = lshr <8 x i16> %wide.load477, splat (i16 5)
  %i.bc = and <8 x i16> %i.bb, splat (i16 63)
  %i.bd = mul nuw <8 x i16> %i.bc, splat (i16 1037)
  %i.be = lshr <8 x i16> %i.bd, splat (i16 8)
  %i.bf = trunc nuw <8 x i16> %i.be to <8 x i8>
  %i.bg = getelementptr i8, ptr %i.az, i64 1
  store <8 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !21, !alias.scope !58, !noalias !55
  %wide.load478 = load <8 x i16>, ptr %i.at, align 2, !alias.scope !55
  %i.bh = and <8 x i16> %wide.load478, splat (i16 31)
  %i.bi = mul nuw <8 x i16> %i.bh, splat (i16 2106)
  %i.bj = lshr <8 x i16> %i.bi, splat (i16 8)
  %i.bk = trunc nuw <8 x i16> %i.bj to <8 x i8>
  store <8 x i8> %i.bk, ptr %i.az, align 1, !tbaa !21, !alias.scope !58, !noalias !55
  %index.next479 = add nuw i64 %index475, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next479, %n.vec473
  br i1 %i.bl, label %middle.block480, label %vector.body474, !llvm.loop !60

middle.block480:                                  ; preds = %vector.body474
  br i1 %cmp.n481, label %._crit_edge247.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block480
  %indvars.iv276.i.ph = phi i64 [ %n.vec473, %middle.block480 ], [ 0, %.preheader.i ]
  %.0146246.i.ph = phi i32 [ %i.as, %middle.block480 ], [ 0, %.preheader.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %scalar.ph ], [ %indvars.iv276.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0146246.i = phi i32 [ %i.ce, %scalar.ph ], [ %.0146246.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.0160249.i, i64 %indvars.iv276.i ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = lshr i16 %i.bn, 11
  %narrow182.i = mul nuw i16 %i.bo, 2106
  %i.bp = lshr i16 %narrow182.i, 8
  %i.bq = trunc nuw i16 %i.bp to i8
  %i.br = sext i32 %.0146246.i to i64
  %i.bs = getelementptr i8, ptr %.0165248.i, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !21
  %i.bu = load i16, ptr %i.bm, align 2
  %i.bv = lshr i16 %i.bu, 5
  %i.bw = and i16 %i.bv, 63
  %narrow183.i = mul nuw i16 %i.bw, 1037
  %i.bx = lshr i16 %narrow183.i, 8
  %i.by = trunc nuw i16 %i.bx to i8
  %i.bz = getelementptr i8, ptr %i.bs, i64 1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !21
  %i.ca = load i16, ptr %i.bm, align 2
  %i.cb = and i16 %i.ca, 31
  %narrow184.i = mul nuw i16 %i.cb, 2106
  %i.cc = lshr i16 %narrow184.i, 8
  %i.cd = trunc nuw i16 %i.cc to i8
  store i8 %i.cd, ptr %i.bs, align 1, !tbaa !21
  %i.ce = add i32 %.0146246.i, %1
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %exitcond280.not.i = icmp eq i64 %indvars.iv.next277.i, %wide.trip.count279.i
  br i1 %exitcond280.not.i, label %._crit_edge247.i, label %scalar.ph, !llvm.loop !61

._crit_edge247.i:                                 ; preds = %scalar.ph, %middle.block480
  %i.cf = getelementptr inbounds i8, ptr %.0165248.i, i64 %i.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %.0160249.i, i64 %i.ai
  %i.ch = add nuw nsw i32 %.0250.i, 1             ; 2 uses
  %exitcond281.not.i = icmp eq i32 %i.ch, %i.f
  br i1 %exitcond281.not.i, label %rgb565_image_blend.exit, label %.preheader.i, !llvm.loop !62

bb.d:                                             ; preds = %bb.c
  %i.ci = icmp ult i8 %i.h, -3
  %or.cond5.i = select i1 %i.ac, i1 %i.ci, i1 false
  br i1 %or.cond5.i, label %.preheader207.i, label %bb.e

.preheader207.i:                                  ; preds = %bb.d
  %i.cj = icmp sgt i32 %i.f, 0
  br i1 %i.cj, label %.preheader206.lr.ph.i, label %rgb565_image_blend.exit

.preheader206.lr.ph.i:                            ; preds = %.preheader207.i
  %i.ck = icmp slt i32 %i.d, 1
  %i.cl = zext i8 %i.h to i32                     ; 6 uses
  %i.cm = icmp eq i8 %i.h, 0
  %i.cn = xor i8 %i.h, -1
  %i.co = zext i8 %i.cn to i32                    ; 6 uses
  %i.cp = sext i32 %i.k to i64                    ; 2 uses
  %i.cq = zext i32 %i.o to i64
  %brmerge.i = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %brmerge.i, label %rgb565_image_blend.exit, label %.preheader206.preheader.i

.preheader206.preheader.i:                        ; preds = %.preheader206.lr.ph.i
  %wide.trip.count273.i = zext nneg i32 %i.d to i64 ; 2 uses
  %ident.check483.not = icmp eq i32 %1, 1
  br label %lv_color_24_24_mix.exit.i.lver.check

lv_color_24_24_mix.exit.i.lver.check:             ; preds = %._crit_edge240.i, %.preheader206.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge240.i ], [ 0, %.preheader206.preheader.i ] ; 2 uses
  %.1243.i = phi i32 [ %i.fs, %._crit_edge240.i ], [ 0, %.preheader206.preheader.i ]
  %.1161242.i = phi ptr [ %i.fr, %._crit_edge240.i ], [ %i.m, %.preheader206.preheader.i ] ; 3 uses
  %.1166241.i = phi ptr [ %i.fq, %._crit_edge240.i ], [ %i.i, %.preheader206.preheader.i ] ; 3 uses
  br i1 %ident.check483.not, label %lv_color_24_24_mix.exit.i.ph, label %lv_color_24_24_mix.exit.i.lver.orig

lv_color_24_24_mix.exit.i.lver.orig:              ; preds = %lv_color_24_24_mix.exit.i.lver.check, %lv_color_24_24_mix.exit.i.lver.orig
  %indvars.iv270.i.lver.orig = phi i64 [ %indvars.iv.next271.i.lver.orig, %lv_color_24_24_mix.exit.i.lver.orig ], [ 0, %lv_color_24_24_mix.exit.i.lver.check ] ; 2 uses
  %.1147239.i.lver.orig = phi i32 [ %i.ec, %lv_color_24_24_mix.exit.i.lver.orig ], [ 0, %lv_color_24_24_mix.exit.i.lver.check ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.1161242.i, i64 %indvars.iv270.i.lver.orig
  %i.cs = load i16, ptr %i.cr, align 2            ; 3 uses
  %i.ct = lshr i16 %i.cs, 11
  %narrow179.i.lver.orig = mul nuw i16 %i.ct, 2106
  %i.cu = lshr i16 %narrow179.i.lver.orig, 8
  %i.cv = lshr i16 %i.cs, 5
  %i.cw = and i16 %i.cv, 63
  %narrow180.i.lver.orig = mul nuw i16 %i.cw, 1037
  %i.cx = lshr i16 %narrow180.i.lver.orig, 8
  %i.cy = and i16 %i.cs, 31
  %narrow181.i.lver.orig = mul nuw i16 %i.cy, 2106
  %i.cz = lshr i16 %narrow181.i.lver.orig, 8
  %i.da = sext i32 %.1147239.i.lver.orig to i64
  %i.db = getelementptr inbounds i8, ptr %.1166241.i, i64 %i.da ; 4 uses
  %i.dc = zext nneg i16 %i.cz to i32
  %i.dd = mul nuw nsw i32 %i.dc, %i.cl
  %i.de = load i8, ptr %i.db, align 1, !tbaa !21
  %i.df = zext i8 %i.de to i32
  %i.dg = mul nuw nsw i32 %i.df, %i.co
  %i.dh = add nuw nsw i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dh, 8
  %i.dj = trunc i32 %i.di to i8
  store i8 %i.dj, ptr %i.db, align 1, !tbaa !21
  %i.dk = zext nneg i16 %i.cx to i32
  %i.dl = mul nuw nsw i32 %i.dk, %i.cl
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !21
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, %i.co
  %i.dq = add nuw nsw i32 %i.dl, %i.dp
  %i.dr = lshr i32 %i.dq, 8
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.dm, align 1, !tbaa !21
  %i.dt = zext nneg i16 %i.cu to i32
  %i.du = mul nuw nsw i32 %i.dt, %i.cl
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 2 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = zext i8 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, %i.co
  %i.dz = add nuw nsw i32 %i.dy, %i.du
  %i.ea = lshr i32 %i.dz, 8
  %i.eb = trunc i32 %i.ea to i8
  store i8 %i.eb, ptr %i.dv, align 1, !tbaa !21
  %i.ec = add i32 %.1147239.i.lver.orig, %1
  %indvars.iv.next271.i.lver.orig = add nuw nsw i64 %indvars.iv270.i.lver.orig, 1 ; 2 uses
  %exitcond274.not.i.lver.orig = icmp eq i64 %indvars.iv.next271.i.lver.orig, %wide.trip.count273.i
  br i1 %exitcond274.not.i.lver.orig, label %._crit_edge240.i, label %lv_color_24_24_mix.exit.i.lver.orig, !llvm.loop !63

lv_color_24_24_mix.exit.i.ph:                     ; preds = %lv_color_24_24_mix.exit.i.lver.check
  %i.ed = mul nsw i64 %indvar, %i.cp
  %i.ee = getelementptr i8, ptr %i.i, i64 %i.ed
  %scevgep485 = getelementptr i8, ptr %i.ee, i64 1
  %load_initial = load i8, ptr %scevgep485, align 1
  br label %lv_color_24_24_mix.exit.i

lv_color_24_24_mix.exit.i:                        ; preds = %lv_color_24_24_mix.exit.i, %lv_color_24_24_mix.exit.i.ph
  %store_forwarded = phi i8 [ %load_initial, %lv_color_24_24_mix.exit.i.ph ], [ %i.fo, %lv_color_24_24_mix.exit.i ]
  %indvars.iv270.i = phi i64 [ 0, %lv_color_24_24_mix.exit.i.ph ], [ %indvars.iv.next271.i, %lv_color_24_24_mix.exit.i ] ; 2 uses
  %.1147239.i = phi i32 [ 0, %lv_color_24_24_mix.exit.i.ph ], [ %i.fp, %lv_color_24_24_mix.exit.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.1161242.i, i64 %indvars.iv270.i
  %i.eg = load i16, ptr %i.ef, align 2            ; 3 uses
  %i.eh = lshr i16 %i.eg, 11
  %narrow179.i = mul nuw i16 %i.eh, 2106
  %i.ei = lshr i16 %narrow179.i, 8
  %i.ej = lshr i16 %i.eg, 5
  %i.ek = and i16 %i.ej, 63
  %narrow180.i = mul nuw i16 %i.ek, 1037
  %i.el = lshr i16 %narrow180.i, 8
  %i.em = and i16 %i.eg, 31
  %narrow181.i = mul nuw i16 %i.em, 2106
  %i.en = lshr i16 %narrow181.i, 8
  %i.eo = sext i32 %.1147239.i to i64
  %i.ep = getelementptr inbounds i8, ptr %.1166241.i, i64 %i.eo ; 4 uses
  %i.eq = zext nneg i16 %i.en to i32
  %i.er = mul nuw nsw i32 %i.eq, %i.cl
  %i.es = load i8, ptr %i.ep, align 1, !tbaa !21
  %i.et = zext i8 %i.es to i32
  %i.eu = mul nuw nsw i32 %i.et, %i.co
  %i.ev = add nuw nsw i32 %i.er, %i.eu
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = trunc i32 %i.ew to i8
  store i8 %i.ex, ptr %i.ep, align 1, !tbaa !21
  %i.ey = zext nneg i16 %i.el to i32
  %i.ez = mul nuw nsw i32 %i.ey, %i.cl
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fb = zext i8 %store_forwarded to i32
  %i.fc = mul nuw nsw i32 %i.fb, %i.co
  %i.fd = add nuw nsw i32 %i.ez, %i.fc
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = trunc i32 %i.fe to i8
  store i8 %i.ff, ptr %i.fa, align 1, !tbaa !21
  %i.fg = zext nneg i16 %i.ei to i32
  %i.fh = mul nuw nsw i32 %i.fg, %i.cl
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 2 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !21
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, %i.co
  %i.fm = add nuw nsw i32 %i.fl, %i.fh
  %i.fn = lshr i32 %i.fm, 8
  %i.fo = trunc i32 %i.fn to i8                   ; 2 uses
  store i8 %i.fo, ptr %i.fi, align 1, !tbaa !21
  %i.fp = add i32 %.1147239.i, %1
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %wide.trip.count273.i
  br i1 %exitcond274.not.i, label %._crit_edge240.i, label %lv_color_24_24_mix.exit.i, !llvm.loop !63

._crit_edge240.i:                                 ; preds = %lv_color_24_24_mix.exit.i.lver.orig, %lv_color_24_24_mix.exit.i
  %i.fq = getelementptr inbounds i8, ptr %.1166241.i, i64 %i.cp
  %i.fr = getelementptr inbounds nuw i8, ptr %.1161242.i, i64 %i.cq
  %i.fs = add nuw nsw i32 %.1243.i, 1             ; 2 uses
  %exitcond275.not.i = icmp eq i32 %i.fs, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond275.not.i, label %rgb565_image_blend.exit, label %lv_color_24_24_mix.exit.i.lver.check, !llvm.loop !64

bb.e:                                             ; preds = %bb.d
  %i.ft = icmp ne ptr %i.q, null
  %or.cond8.i = select i1 %i.ft, i1 %i.ae, i1 false
  %i.fu = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %or.cond8.i, label %.preheader210.i, label %.preheader213.i

.preheader213.i:                                  ; preds = %bb.e
  br i1 %i.fu, label %.preheader212.lr.ph.i, label %rgb565_image_blend.exit

.preheader212.lr.ph.i:                            ; preds = %.preheader213.i
  %i.fv = icmp sgt i32 %i.d, 0
  %i.fw = sext i32 %i.k to i64
  %i.fx = zext i32 %i.o to i64
  %i.fy = sext i32 %i.s to i64
  br i1 %i.fv, label %.preheader212.preheader.i, label %rgb565_image_blend.exit

.preheader212.preheader.i:                        ; preds = %.preheader212.lr.ph.i
  %wide.trip.count261.i = zext nneg i32 %i.d to i64
  br label %.preheader212.i

.preheader210.i:                                  ; preds = %bb.e
  br i1 %i.fu, label %.preheader209.lr.ph.i, label %rgb565_image_blend.exit

.preheader209.lr.ph.i:                            ; preds = %.preheader210.i
  %i.fz = icmp sgt i32 %i.d, 0
  %i.ga = sext i32 %i.k to i64
  %i.gb = zext i32 %i.o to i64
  %i.gc = sext i32 %i.s to i64
  br i1 %i.fz, label %.preheader209.preheader.i, label %rgb565_image_blend.exit

.preheader209.preheader.i:                        ; preds = %.preheader209.lr.ph.i
  %wide.trip.count267.i = zext nneg i32 %i.d to i64
  br label %.preheader209.i

.preheader209.i:                                  ; preds = %._crit_edge233.i, %.preheader209.preheader.i
  %.2237.i = phi i32 [ %i.ie, %._crit_edge233.i ], [ 0, %.preheader209.preheader.i ]
  %.0156236.i = phi ptr [ %i.id, %._crit_edge233.i ], [ %i.q, %.preheader209.preheader.i ] ; 2 uses
  %.2162235.i = phi ptr [ %i.ic, %._crit_edge233.i ], [ %i.m, %.preheader209.preheader.i ] ; 2 uses
  %.2167234.i = phi ptr [ %i.ib, %._crit_edge233.i ], [ %i.i, %.preheader209.preheader.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %lv_color_24_24_mix.exit185.i, %.preheader209.i
  %indvars.iv264.i = phi i64 [ 0, %.preheader209.i ], [ %indvars.iv.next265.i, %lv_color_24_24_mix.exit185.i ] ; 3 uses
  %.2148232.i = phi i32 [ 0, %.preheader209.i ], [ %i.ia, %lv_color_24_24_mix.exit185.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.2162235.i, i64 %indvars.iv264.i
  %i.ge = load i16, ptr %i.gd, align 2            ; 3 uses
  %i.gf = lshr i16 %i.ge, 11
  %narrow176.i = mul nuw i16 %i.gf, 2106
  %i.gg = lshr i16 %narrow176.i, 8                ; 2 uses
  %i.gh = trunc nuw i16 %i.gg to i8
  %i.gi = lshr i16 %i.ge, 5
  %i.gj = and i16 %i.gi, 63
  %narrow177.i = mul nuw i16 %i.gj, 1037
  %i.gk = lshr i16 %narrow177.i, 8                ; 2 uses
  %i.gl = trunc nuw i16 %i.gk to i8
  %i.gm = and i16 %i.ge, 31
  %narrow178.i = mul nuw i16 %i.gm, 2106
  %i.gn = lshr i16 %narrow178.i, 8                ; 2 uses
  %i.go = trunc nuw i16 %i.gn to i8
  %i.gp = sext i32 %.2148232.i to i64
  %i.gq = getelementptr inbounds i8, ptr %.2167234.i, i64 %i.gp ; 7 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0156236.i, i64 %indvars.iv264.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !21  ; 4 uses
  %i.gt = zext i8 %i.gs to i32                    ; 3 uses
  %i.gu = icmp eq i8 %i.gs, 0
  br i1 %i.gu, label %lv_color_24_24_mix.exit185.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gv = icmp ugt i8 %i.gs, -4
  br i1 %i.gv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.gl, ptr %i.gw, align 1, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  store i8 %i.gh, ptr %i.gx, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit185.i

bb.i:                                             ; preds = %bb.g
  %i.gy = xor i8 %i.gs, -1
  %i.gz = zext nneg i16 %i.gn to i32
  %i.ha = mul nuw nsw i32 %i.gz, %i.gt
  %i.hb = load i8, ptr %i.gq, align 1, !tbaa !21
  %i.hc = zext i8 %i.hb to i32
  %i.hd = zext i8 %i.gy to i32                    ; 3 uses
  %i.he = mul nuw nsw i32 %i.hc, %i.hd
  %i.hf = add nuw nsw i32 %i.he, %i.ha
  %i.hg = lshr i32 %i.hf, 8
  %i.hh = trunc i32 %i.hg to i8
  store i8 %i.hh, ptr %i.gq, align 1, !tbaa !21
  %i.hi = zext nneg i16 %i.gk to i32
  %i.hj = mul nuw nsw i32 %i.hi, %i.gt
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.hm, %i.hd
  %i.ho = add nuw nsw i32 %i.hn, %i.hj
  %i.hp = lshr i32 %i.ho, 8
  %i.hq = trunc i32 %i.hp to i8
  store i8 %i.hq, ptr %i.hk, align 1, !tbaa !21
  %i.hr = zext nneg i16 %i.gg to i32
  %i.hs = mul nuw nsw i32 %i.hr, %i.gt
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !21
  %i.hv = zext i8 %i.hu to i32
  %i.hw = mul nuw nsw i32 %i.hv, %i.hd
  %i.hx = add nuw nsw i32 %i.hw, %i.hs
  %i.hy = lshr i32 %i.hx, 8
  %i.hz = trunc i32 %i.hy to i8
  store i8 %i.hz, ptr %i.ht, align 1, !tbaa !21
  br label %lv_color_24_24_mix.exit185.i

lv_color_24_24_mix.exit185.i:                     ; preds = %bb.i, %bb.h, %bb.f
  %i.ia = add i32 %.2148232.i, %1
  %indvars.iv.next265.i = add nuw nsw i64 %indvars.iv264.i, 1 ; 2 uses
  %exitcond268.not.i = icmp eq i64 %indvars.iv.next265.i, %wide.trip.count267.i
  br i1 %exitcond268.not.i, label %._crit_edge233.i, label %bb.f, !llvm.loop !65

._crit_edge233.i:                                 ; preds = %lv_color_24_24_mix.exit185.i
  %i.ib = getelementptr inbounds i8, ptr %.2167234.i, i64 %i.ga
  %i.ic = getelementptr inbounds nuw i8, ptr %.2162235.i, i64 %i.gb
  %i.id = getelementptr inbounds i8, ptr %.0156236.i, i64 %i.gc
  %i.ie = add nuw nsw i32 %.2237.i, 1             ; 2 uses
  %exitcond269.not.i = icmp eq i32 %i.ie, %i.f
  br i1 %exitcond269.not.i, label %rgb565_image_blend.exit, label %.preheader209.i, !llvm.loop !66

.preheader212.i:                                  ; preds = %._crit_edge226.i, %.preheader212.preheader.i
  %.3230.i = phi i32 [ %i.kb, %._crit_edge226.i ], [ 0, %.preheader212.preheader.i ]
  %.1157229.i = phi ptr [ %i.ka, %._crit_edge226.i ], [ %i.q, %.preheader212.preheader.i ] ; 2 uses
  %.3163228.i = phi ptr [ %i.jz, %._crit_edge226.i ], [ %i.m, %.preheader212.preheader.i ] ; 2 uses
  %.3168227.i = phi ptr [ %i.jy, %._crit_edge226.i ], [ %i.i, %.preheader212.preheader.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %lv_color_24_24_mix.exit186.i, %.preheader212.i
  %indvars.iv258.i = phi i64 [ 0, %.preheader212.i ], [ %indvars.iv.next259.i, %lv_color_24_24_mix.exit186.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_rgb888:bb.a
iter.check:                                       ; preds = %._crit_edge210.i, %.preheader.preheader.i101
  %.0213.i = phi i32 [ %i.avc, %._crit_edge210.i ], [ 0, %.preheader.preheader.i101 ]
  %.0153212.i = phi ptr [ %i.avb, %._crit_edge210.i ], [ %i.asb, %.preheader.preheader.i101 ] ; 6 uses
  %.0158211.i = phi ptr [ %i.ava, %._crit_edge210.i ], [ %i.arx, %.preheader.preheader.i101 ] ; 6 uses
  %or.cond495.not = xor i1 %or.cond495, true
  %brmerge527 = select i1 %or.cond495.not, i1 true, i1 %i.atf
  br i1 %brmerge527, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check450, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %index ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.atk, align 1, !tbaa !21, !alias.scope !93 ; 2 uses
  %wide.load451 = load <16 x i8>, ptr %i.atl, align 1, !tbaa !21, !alias.scope !93 ; 2 uses
  %sext = shl i64 %index, 32
  %i.atm = ashr exact i64 %sext, 32
  %i.atn = getelementptr i8, ptr %.0158211.i, i64 %i.atm ; 6 uses
  %i.ato = getelementptr i8, ptr %i.atn, i64 2
  %i.atp = getelementptr i8, ptr %i.atn, i64 18
  store <16 x i8> %wide.load, ptr %i.ato, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  store <16 x i8> %wide.load451, ptr %i.atp, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %i.atq = getelementptr i8, ptr %i.atn, i64 1
  %i.atr = getelementptr i8, ptr %i.atn, i64 17
  store <16 x i8> %wide.load, ptr %i.atq, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  store <16 x i8> %wide.load451, ptr %i.atr, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %wide.load452 = load <16 x i8>, ptr %i.atk, align 1, !tbaa !21, !alias.scope !93
  %wide.load453 = load <16 x i8>, ptr %i.atl, align 1, !tbaa !21, !alias.scope !93
  %i.ats = getelementptr i8, ptr %i.atn, i64 16
  store <16 x i8> %wide.load452, ptr %i.atn, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  store <16 x i8> %wide.load453, ptr %i.ats, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.att = icmp eq i64 %index.next, %n.vec
  br i1 %i.att, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge210.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index455 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next458, %vec.epilog.vector.body ] ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %index455 ; 2 uses
  %wide.load456 = load <4 x i8>, ptr %i.atu, align 1, !tbaa !21, !alias.scope !93 ; 2 uses
  %sext493 = shl i64 %index455, 32
  %i.atv = ashr exact i64 %sext493, 32
  %i.atw = getelementptr i8, ptr %.0158211.i, i64 %i.atv ; 3 uses
  %i.atx = getelementptr i8, ptr %i.atw, i64 2
  store <4 x i8> %wide.load456, ptr %i.atx, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %i.aty = getelementptr i8, ptr %i.atw, i64 1
  store <4 x i8> %wide.load456, ptr %i.aty, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %wide.load457 = load <4 x i8>, ptr %i.atu, align 1, !tbaa !21, !alias.scope !93
  store <4 x i8> %wide.load457, ptr %i.atw, align 1, !tbaa !21, !alias.scope !96, !noalias !93
  %index.next458 = add nuw i64 %index455, 4       ; 2 uses
  %i.atz = icmp eq i64 %index.next458, %n.vec454
  br i1 %i.atz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n459, label %._crit_edge210.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv240.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec454, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %.0144208.i.ph = phi i32 [ 0, %iter.check ], [ %i.ati, %vec.epilog.middle.block ], [ %i.ath, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aua = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %indvars.iv240.i.ph ; 2 uses
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !21 ; 2 uses
  %i.auc = sext i32 %.0144208.i.ph to i64
  %i.aud = getelementptr i8, ptr %.0158211.i, i64 %i.auc ; 3 uses
  %i.aue = getelementptr i8, ptr %i.aud, i64 2
  store i8 %i.aub, ptr %i.aue, align 1, !tbaa !21
  %i.auf = getelementptr i8, ptr %i.aud, i64 1
  store i8 %i.aub, ptr %i.auf, align 1, !tbaa !21
  %i.aug = load i8, ptr %i.aua, align 1, !tbaa !21
  store i8 %i.aug, ptr %i.aud, align 1, !tbaa !21
  %i.auh = add i32 %.0144208.i.ph, %1
  %indvars.iv.next241.i.prol = or disjoint i64 %indvars.iv240.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv240.i.unr = phi i64 [ %indvars.iv240.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next241.i.prol, %vec.epilog.scalar.ph.prol ]
  %.0144208.i.unr = phi i32 [ %.0144208.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.auh, %vec.epilog.scalar.ph.prol ]
  %i.aui = icmp eq i64 %indvars.iv240.i.ph, %i.atj
  br i1 %i.aui, label %._crit_edge210.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv240.i = phi i64 [ %indvars.iv.next241.i.1, %vec.epilog.scalar.ph ], [ %indvars.iv240.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.0144208.i = phi i32 [ %i.auz, %vec.epilog.scalar.ph ], [ %.0144208.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %indvars.iv240.i ; 2 uses
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !21 ; 2 uses
  %i.aul = sext i32 %.0144208.i to i64
  %i.aum = getelementptr i8, ptr %.0158211.i, i64 %i.aul ; 3 uses
  %i.aun = getelementptr i8, ptr %i.aum, i64 2
  store i8 %i.auk, ptr %i.aun, align 1, !tbaa !21
  %i.auo = getelementptr i8, ptr %i.aum, i64 1
  store i8 %i.auk, ptr %i.auo, align 1, !tbaa !21
  %i.aup = load i8, ptr %i.auj, align 1, !tbaa !21
  store i8 %i.aup, ptr %i.aum, align 1, !tbaa !21
  %i.auq = add i32 %.0144208.i, %1                ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %indvars.iv240.i
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 1 ; 2 uses
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !21 ; 2 uses
  %i.auu = sext i32 %i.auq to i64
  %i.auv = getelementptr i8, ptr %.0158211.i, i64 %i.auu ; 3 uses
  %i.auw = getelementptr i8, ptr %i.auv, i64 2
  store i8 %i.aut, ptr %i.auw, align 1, !tbaa !21
  %i.aux = getelementptr i8, ptr %i.auv, i64 1
  store i8 %i.aut, ptr %i.aux, align 1, !tbaa !21
  %i.auy = load i8, ptr %i.aus, align 1, !tbaa !21
  store i8 %i.auy, ptr %i.auv, align 1, !tbaa !21
  %i.auz = add i32 %i.auq, %1
  %indvars.iv.next241.i.1 = add nuw nsw i64 %indvars.iv240.i, 2 ; 2 uses
  %exitcond244.not.i.1 = icmp eq i64 %indvars.iv.next241.i.1, %wide.trip.count243.i
  br i1 %exitcond244.not.i.1, label %._crit_edge210.i, label %vec.epilog.scalar.ph, !llvm.loop !101

._crit_edge210.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ava = getelementptr inbounds i8, ptr %.0158211.i, i64 %i.asw
  %i.avb = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %i.asx
  %i.avc = add nuw nsw i32 %.0213.i, 1            ; 2 uses
  %exitcond245.not.i = icmp eq i32 %i.avc, %i.aru
  br i1 %exitcond245.not.i, label %rgb565_image_blend.exit, label %iter.check, !llvm.loop !102

bb.cu:                                            ; preds = %bb.ct
  %i.avd = icmp ult i8 %i.arw, -3                 ; 2 uses
  %or.cond5.i93 = select i1 %i.asr, i1 %i.avd, i1 false
  br i1 %or.cond5.i93, label %.preheader170.i, label %bb.cv

.preheader170.i:                                  ; preds = %bb.cu
  %i.ave = icmp sgt i32 %i.aru, 0
  br i1 %i.ave, label %.preheader169.lr.ph.i, label %rgb565_image_blend.exit

.preheader169.lr.ph.i:                            ; preds = %.preheader170.i
  %i.avf = icmp slt i32 %i.ars, 1
  %i.avg = zext i8 %i.arw to i32                  ; 2 uses
  %i.avh = icmp eq i8 %i.arw, 0
  %i.avi = xor i8 %i.arw, -1
  %i.avj = zext i8 %i.avi to i32                  ; 6 uses
  %i.avk = sext i32 %i.arz to i64                 ; 2 uses
  %i.avl = zext i32 %i.asd to i64
  %brmerge.i97 = select i1 %i.avf, i1 true, i1 %i.avh
  br i1 %brmerge.i97, label %rgb565_image_blend.exit, label %.preheader169.preheader.i

.preheader169.preheader.i:                        ; preds = %.preheader169.lr.ph.i
  %wide.trip.count237.i = zext nneg i32 %i.ars to i64 ; 2 uses
  %ident.check486.not = icmp eq i32 %1, 1
  br label %lv_color_8_24_mix.exit.i.lver.check

lv_color_8_24_mix.exit.i.lver.check:              ; preds = %._crit_edge203.i, %.preheader169.preheader.i
  %indvar488 = phi i64 [ %indvar.next489, %._crit_edge203.i ], [ 0, %.preheader169.preheader.i ] ; 2 uses
  %.1206.i = phi i32 [ %i.axr, %._crit_edge203.i ], [ 0, %.preheader169.preheader.i ]
  %.1154205.i = phi ptr [ %i.axq, %._crit_edge203.i ], [ %i.asb, %.preheader169.preheader.i ] ; 3 uses
  %.1159204.i = phi ptr [ %i.axp, %._crit_edge203.i ], [ %i.arx, %.preheader169.preheader.i ] ; 3 uses
  br i1 %ident.check486.not, label %lv_color_8_24_mix.exit.i.ph, label %lv_color_8_24_mix.exit.i.lver.orig

lv_color_8_24_mix.exit.i.lver.orig:               ; preds = %lv_color_8_24_mix.exit.i.lver.check, %lv_color_8_24_mix.exit.i.lver.orig
  %indvars.iv234.i.lver.orig = phi i64 [ %indvars.iv.next235.i.lver.orig, %lv_color_8_24_mix.exit.i.lver.orig ], [ 0, %lv_color_8_24_mix.exit.i.lver.check ] ; 2 uses
  %.1145201.i.lver.orig = phi i32 [ %i.awm, %lv_color_8_24_mix.exit.i.lver.orig ], [ 0, %lv_color_8_24_mix.exit.i.lver.check ] ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.1154205.i, i64 %indvars.iv234.i.lver.orig
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !21
  %i.avo = sext i32 %.1145201.i.lver.orig to i64
  %i.avp = getelementptr inbounds i8, ptr %.1159204.i, i64 %i.avo ; 4 uses
  %i.avq = zext i8 %i.avn to i32
  %i.avr = mul nuw nsw i32 %i.avq, %i.avg         ; 3 uses
  %i.avs = load i8, ptr %i.avp, align 1, !tbaa !21
  %i.avt = zext i8 %i.avs to i32
  %i.avu = mul nuw nsw i32 %i.avt, %i.avj
  %i.avv = add nuw nsw i32 %i.avu, %i.avr
  %i.avw = lshr i32 %i.avv, 8
  %i.avx = trunc i32 %i.avw to i8
  store i8 %i.avx, ptr %i.avp, align 1, !tbaa !21
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avp, i64 1 ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !21
  %i.awa = zext i8 %i.avz to i32
  %i.awb = mul nuw nsw i32 %i.awa, %i.avj
  %i.awc = add nuw nsw i32 %i.awb, %i.avr
  %i.awd = lshr i32 %i.awc, 8
  %i.awe = trunc i32 %i.awd to i8
  store i8 %i.awe, ptr %i.avy, align 1, !tbaa !21
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avp, i64 2 ; 2 uses
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !21
  %i.awh = zext i8 %i.awg to i32
  %i.awi = mul nuw nsw i32 %i.awh, %i.avj
  %i.awj = add nuw nsw i32 %i.awi, %i.avr
  %i.awk = lshr i32 %i.awj, 8
  %i.awl = trunc i32 %i.awk to i8
  store i8 %i.awl, ptr %i.awf, align 1, !tbaa !21
  %i.awm = add i32 %.1145201.i.lver.orig, %1
  %indvars.iv.next235.i.lver.orig = add nuw nsw i64 %indvars.iv234.i.lver.orig, 1 ; 2 uses
  %exitcond238.not.i.lver.orig = icmp eq i64 %indvars.iv.next235.i.lver.orig, %wide.trip.count237.i
  br i1 %exitcond238.not.i.lver.orig, label %._crit_edge203.i, label %lv_color_8_24_mix.exit.i.lver.orig, !llvm.loop !103

lv_color_8_24_mix.exit.i.ph:                      ; preds = %lv_color_8_24_mix.exit.i.lver.check
  %i.awn = mul nsw i64 %indvar488, %i.avk
  %i.awo = getelementptr i8, ptr %i.arx, i64 %i.awn
  %scevgep490 = getelementptr i8, ptr %i.awo, i64 1
  %load_initial491 = load i8, ptr %scevgep490, align 1
  br label %lv_color_8_24_mix.exit.i

lv_color_8_24_mix.exit.i:                         ; preds = %lv_color_8_24_mix.exit.i, %lv_color_8_24_mix.exit.i.ph
  %store_forwarded492 = phi i8 [ %load_initial491, %lv_color_8_24_mix.exit.i.ph ], [ %i.axn, %lv_color_8_24_mix.exit.i ]
  %indvars.iv234.i = phi i64 [ 0, %lv_color_8_24_mix.exit.i.ph ], [ %indvars.iv.next235.i, %lv_color_8_24_mix.exit.i ] ; 2 uses
  %.1145201.i = phi i32 [ 0, %lv_color_8_24_mix.exit.i.ph ], [ %i.axo, %lv_color_8_24_mix.exit.i ] ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.1154205.i, i64 %indvars.iv234.i
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !21
  %i.awr = sext i32 %.1145201.i to i64
  %i.aws = getelementptr inbounds i8, ptr %.1159204.i, i64 %i.awr ; 4 uses
  %i.awt = zext i8 %i.awq to i32
  %i.awu = mul nuw nsw i32 %i.awt, %i.avg         ; 3 uses
  %i.awv = load i8, ptr %i.aws, align 1, !tbaa !21
  %i.aww = zext i8 %i.awv to i32
  %i.awx = mul nuw nsw i32 %i.aww, %i.avj
  %i.awy = add nuw nsw i32 %i.awx, %i.awu
  %i.awz = lshr i32 %i.awy, 8
  %i.axa = trunc i32 %i.awz to i8
  store i8 %i.axa, ptr %i.aws, align 1, !tbaa !21
  %i.axb = getelementptr inbounds nuw i8, ptr %i.aws, i64 1
  %i.axc = zext i8 %store_forwarded492 to i32
  %i.axd = mul nuw nsw i32 %i.axc, %i.avj
  %i.axe = add nuw nsw i32 %i.axd, %i.awu
  %i.axf = lshr i32 %i.axe, 8
  %i.axg = trunc i32 %i.axf to i8
  store i8 %i.axg, ptr %i.axb, align 1, !tbaa !21
  %i.axh = getelementptr inbounds nuw i8, ptr %i.aws, i64 2 ; 2 uses
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !21
  %i.axj = zext i8 %i.axi to i32
  %i.axk = mul nuw nsw i32 %i.axj, %i.avj
  %i.axl = add nuw nsw i32 %i.axk, %i.awu
  %i.axm = lshr i32 %i.axl, 8
  %i.axn = trunc i32 %i.axm to i8                 ; 2 uses
  store i8 %i.axn, ptr %i.axh, align 1, !tbaa !21
  %i.axo = add i32 %.1145201.i, %1
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %._crit_edge203.i, label %lv_color_8_24_mix.exit.i, !llvm.loop !103

._crit_edge203.i:                                 ; preds = %lv_color_8_24_mix.exit.i.lver.orig, %lv_color_8_24_mix.exit.i
  %i.axp = getelementptr inbounds i8, ptr %.1159204.i, i64 %i.avk
  %i.axq = getelementptr inbounds nuw i8, ptr %.1154205.i, i64 %i.avl
  %i.axr = add nuw nsw i32 %.1206.i, 1            ; 2 uses
  %exitcond239.not.i = icmp eq i32 %i.axr, %i.aru
  %indvar.next489 = add i64 %indvar488, 1
  br i1 %exitcond239.not.i, label %rgb565_image_blend.exit, label %lv_color_8_24_mix.exit.i.lver.check, !llvm.loop !104

bb.cv:                                            ; preds = %bb.cu
  %i.axs = icmp ne ptr %i.asf, null               ; 2 uses
  %or.cond8.i94 = select i1 %i.axs, i1 %i.ast, i1 false
  br i1 %or.cond8.i94, label %.preheader173.i, label %bb.da

.preheader173.i:                                  ; preds = %bb.cv
  %i.axt = icmp sgt i32 %i.aru, 0
  br i1 %i.axt, label %.preheader172.lr.ph.i, label %rgb565_image_blend.exit

.preheader172.lr.ph.i:                            ; preds = %.preheader173.i
  %i.axu = icmp sgt i32 %i.ars, 0
  %i.axv = sext i32 %i.arz to i64
  %i.axw = zext i32 %i.asd to i64
  %i.axx = sext i32 %i.ash to i64
  br i1 %i.axu, label %.preheader172.preheader.i, label %rgb565_image_blend.exit

.preheader172.preheader.i:                        ; preds = %.preheader172.lr.ph.i
  %wide.trip.count231.i = zext nneg i32 %i.ars to i64
  br label %.preheader172.i96

.preheader172.i96:                                ; preds = %._crit_edge196.i, %.preheader172.preheader.i
  %.2200.i = phi i32 [ %i.azl, %._crit_edge196.i ], [ 0, %.preheader172.preheader.i ]
  %.0149199.i = phi ptr [ %i.azk, %._crit_edge196.i ], [ %i.asf, %.preheader172.preheader.i ] ; 2 uses
  %.2155198.i = phi ptr [ %i.azj, %._crit_edge196.i ], [ %i.asb, %.preheader172.preheader.i ] ; 2 uses
  %.2160197.i = phi ptr [ %i.azi, %._crit_edge196.i ], [ %i.arx, %.preheader172.preheader.i ] ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %lv_color_8_24_mix.exit166.i, %.preheader172.i96
  %indvars.iv228.i = phi i64 [ 0, %.preheader172.i96 ], [ %indvars.iv.next229.i, %lv_color_8_24_mix.exit166.i ] ; 3 uses
  %.2146194.i = phi i32 [ 0, %.preheader172.i96 ], [ %i.azh, %lv_color_8_24_mix.exit166.i ] ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %.2155198.i, i64 %indvars.iv228.i
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !21 ; 4 uses
  %i.aya = sext i32 %.2146194.i to i64
  %i.ayb = getelementptr inbounds i8, ptr %.2160197.i, i64 %i.aya ; 7 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %.0149199.i, i64 %indvars.iv228.i
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !21 ; 4 uses
  %i.aye = zext i8 %i.ayd to i32
  %i.ayf = icmp eq i8 %i.ayd, 0
  br i1 %i.ayf, label %lv_color_8_24_mix.exit166.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ayg = icmp ugt i8 %i.ayd, -4
  br i1 %i.ayg, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i8 %i.axz, ptr %i.ayb, align 1, !tbaa !21
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayb, i64 1
  store i8 %i.axz, ptr %i.ayh, align 1, !tbaa !21
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayb, i64 2
  store i8 %i.axz, ptr %i.ayi, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit166.i

bb.cz:                                            ; preds = %bb.cx
  %i.ayj = xor i8 %i.ayd, -1
  %i.ayk = zext i8 %i.axz to i32
  %i.ayl = mul nuw nsw i32 %i.aye, %i.ayk         ; 3 uses
  %i.aym = load i8, ptr %i.ayb, align 1, !tbaa !21
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = zext i8 %i.ayj to i32                  ; 3 uses
  %i.ayp = mul nuw nsw i32 %i.ayn, %i.ayo
  %i.ayq = add nuw nsw i32 %i.ayp, %i.ayl
  %i.ayr = lshr i32 %i.ayq, 8
  %i.ays = trunc i32 %i.ayr to i8
  store i8 %i.ays, ptr %i.ayb, align 1, !tbaa !21
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayb, i64 1 ; 2 uses
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !21
  %i.ayv = zext i8 %i.ayu to i32
  %i.ayw = mul nuw nsw i32 %i.ayv, %i.ayo
  %i.ayx = add nuw nsw i32 %i.ayw, %i.ayl
  %i.ayy = lshr i32 %i.ayx, 8
  %i.ayz = trunc i32 %i.ayy to i8
  store i8 %i.ayz, ptr %i.ayt, align 1, !tbaa !21
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayb, i64 2 ; 2 uses
  %i.azb = load i8, ptr %i.aza, align 1, !tbaa !21
  %i.azc = zext i8 %i.azb to i32
  %i.azd = mul nuw nsw i32 %i.azc, %i.ayo
  %i.aze = add nuw nsw i32 %i.azd, %i.ayl
  %i.azf = lshr i32 %i.aze, 8
  %i.azg = trunc i32 %i.azf to i8
  store i8 %i.azg, ptr %i.aza, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit166.i

lv_color_8_24_mix.exit166.i:                      ; preds = %bb.cz, %bb.cy, %bb.cw
  %i.azh = add i32 %.2146194.i, %1
  %indvars.iv.next229.i = add nuw nsw i64 %indvars.iv228.i, 1 ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next229.i, %wide.trip.count231.i
  br i1 %exitcond232.not.i, label %._crit_edge196.i, label %bb.cw, !llvm.loop !105

._crit_edge196.i:                                 ; preds = %lv_color_8_24_mix.exit166.i
  %i.azi = getelementptr inbounds i8, ptr %.2160197.i, i64 %i.axv
  %i.azj = getelementptr inbounds nuw i8, ptr %.2155198.i, i64 %i.axw
  %i.azk = getelementptr inbounds i8, ptr %.0149199.i, i64 %i.axx
  %i.azl = add nuw nsw i32 %.2200.i, 1            ; 2 uses
  %exitcond233.not.i = icmp eq i32 %i.azl, %i.aru
  br i1 %exitcond233.not.i, label %rgb565_image_blend.exit, label %.preheader172.i96, !llvm.loop !106

bb.da:                                            ; preds = %bb.cv
  %or.cond11.i95 = select i1 %i.axs, i1 %i.avd, i1 false
  %i.azm = icmp sgt i32 %i.aru, 0
  %or.cond215.i = select i1 %or.cond11.i95, i1 %i.azm, i1 false
  br i1 %or.cond215.i, label %.preheader175.lr.ph.i, label %rgb565_image_blend.exit

.preheader175.lr.ph.i:                            ; preds = %bb.da
  %i.azn = icmp sgt i32 %i.ars, 0
  %i.azo = sext i32 %i.arz to i64
  %i.azp = zext i32 %i.asd to i64
  %i.azq = sext i32 %i.ash to i64
  br i1 %i.azn, label %.preheader175.preheader.i, label %rgb565_image_blend.exit

.preheader175.preheader.i:                        ; preds = %.preheader175.lr.ph.i
  %wide.trip.count225.i = zext nneg i32 %i.ars to i64
  br label %.preheader175.i

.preheader175.i:                                  ; preds = %._crit_edge189.i, %.preheader175.preheader.i
  %.3193.i = phi i32 [ %i.bbh, %._crit_edge189.i ], [ 0, %.preheader175.preheader.i ]
  %.1150192.i = phi ptr [ %i.bbg, %._crit_edge189.i ], [ %i.asf, %.preheader175.preheader.i ] ; 2 uses
  %.3156191.i = phi ptr [ %i.bbf, %._crit_edge189.i ], [ %i.asb, %.preheader175.preheader.i ] ; 2 uses
  %.3161190.i = phi ptr [ %i.bbe, %._crit_edge189.i ], [ %i.arx, %.preheader175.preheader.i ] ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %lv_color_8_24_mix.exit167.i, %.preheader175.i
  %indvars.iv222.i = phi i64 [ 0, %.preheader175.i ], [ %indvars.iv.next223.i, %lv_color_8_24_mix.exit167.i ] ; 3 uses
  %.3147187.i = phi i32 [ 0, %.preheader175.i ], [ %i.bbd, %lv_color_8_24_mix.exit167.i ] ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %.3156191.i, i64 %indvars.iv222.i
  %i.azs = load i8, ptr %i.azr, align 1, !tbaa !21 ; 4 uses
  %i.azt = sext i32 %.3147187.i to i64
  %i.azu = getelementptr inbounds i8, ptr %.3161190.i, i64 %i.azt ; 7 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %.1150192.i, i64 %indvars.iv222.i
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !21
  %i.azx = zext i8 %i.azw to i16
  %i.azy = mul nuw i16 %i.azx, %i.ass             ; 2 uses
  %i.azz = lshr i16 %i.azy, 8                     ; 3 uses
  %i.baa = zext nneg i16 %i.azz to i32
  %i.bab = icmp eq i16 %i.azz, 0
  br i1 %i.bab, label %lv_color_8_24_mix.exit167.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bac = icmp ugt i16 %i.azy, -769
  br i1 %i.bac, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i8 %i.azs, ptr %i.azu, align 1, !tbaa !21
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azu, i64 1
  store i8 %i.azs, ptr %i.bad, align 1, !tbaa !21
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azu, i64 2
  store i8 %i.azs, ptr %i.bae, align 1, !tbaa !21
  br label %lv_color_8_24_mix.exit167.i

bb.de:                                            ; preds = %bb.dc
  %i.baf = xor i16 %i.azz, 255
end_hunk_1

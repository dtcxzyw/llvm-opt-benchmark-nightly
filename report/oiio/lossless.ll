inline.NumInlined: 86
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@VP8LInverseTransform:bb.a
  %i.cp = and i32 %i.cn, 16711935                 ; 2 uses
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.16381.i.lver.orig, align 4, !tbaa !3, !alias.scope !36
  %i.cr = getelementptr inbounds [4 x i8], ptr %.16182.i.lver.orig, i64 %i.bk ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.16381.i.lver.orig, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !39 ; 2 uses
  %i.cu = and i32 %i.ct, -16711936
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = and i32 %i.ct, 16711935
  %i.cx = add nuw nsw i32 %i.cw, %i.cp
  %i.cy = and i32 %i.cv, -16711936
  %i.cz = and i32 %i.cx, 16711935
  %i.da = or disjoint i32 %i.cy, %i.cz
  store i32 %i.da, ptr %i.cs, align 4, !tbaa !3, !alias.scope !39
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.bk
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.bk
  %i.dd = add nsw i32 %.06480.i.lver.orig, 2      ; 2 uses
  %exitcond.not.i.lver.orig.1 = icmp eq i32 %i.dd, %2
  br i1 %exitcond.not.i.lver.orig.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i.lver.orig, !llvm.loop !41

.lr.ph84.split.i.ph:                              ; preds = %.lr.ph84.split.i.lver.check
  %scevgep = getelementptr i8, ptr %.062.i, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4 ; 3 uses
  %i.de = sub i32 %2, %.056.i
  %.neg153 = add i32 %.056.i, 1
  %xtraiter151 = and i32 %i.de, 1
  %lcmp.mod152.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.lr.ph84.split.i.prol.loopexit, label %.lr.ph84.split.i.prol

.lr.ph84.split.i.prol:                            ; preds = %.lr.ph84.split.i.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.df = load i32, ptr %.060.i, align 4, !tbaa !3, !noalias !36 ; 2 uses
  %i.dg = and i32 %i.df, -16711936
  %i.dh = and i32 %load_initial, -16711936
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = and i32 %i.df, 16711935
  %i.dk = and i32 %load_initial, 16711935
  %i.dl = add nuw nsw i32 %i.dj, %i.dk
  %i.dm = and i32 %i.di, -16711936
  %i.dn = and i32 %i.dl, 16711935
  %i.do = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  store i32 %i.do, ptr %.062.i, align 4, !tbaa !3, !alias.scope !36
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.060.i, i64 %i.bk
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.062.i, i64 %i.bk
  %i.dr = add nsw i32 %.056.i, 1
  br label %.lr.ph84.split.i.prol.loopexit

.lr.ph84.split.i.prol.loopexit:                   ; preds = %.lr.ph84.split.i.prol, %.lr.ph84.split.i.ph
  %store_forwarded.unr = phi i32 [ %load_initial, %.lr.ph84.split.i.ph ], [ %i.do, %.lr.ph84.split.i.prol ]
  %.16182.i.unr = phi ptr [ %.060.i, %.lr.ph84.split.i.ph ], [ %i.dp, %.lr.ph84.split.i.prol ]
  %.16381.i.unr = phi ptr [ %.062.i, %.lr.ph84.split.i.ph ], [ %i.dq, %.lr.ph84.split.i.prol ]
  %.06480.i.unr = phi i32 [ %.056.i, %.lr.ph84.split.i.ph ], [ %i.dr, %.lr.ph84.split.i.prol ]
  %i.ds = icmp eq i32 %2, %.neg153
  br i1 %i.ds, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i

.lr.ph84.split.us.preheader.i:                    ; preds = %.lr.ph84.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23
  %i.dv = ashr i32 %.056.i, %i.bd
  %i.dw = mul nsw i32 %i.bi, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dx
  br label %.lr.ph84.split.us.i

.lr.ph84.split.us.i:                              ; preds = %PredictorAdd2_C.exit._crit_edge.us.i, %.lr.ph84.split.us.preheader.i
  %.05983.us.i = phi ptr [ %.1.us.i, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %i.dy, %.lr.ph84.split.us.preheader.i ] ; 2 uses
  %.16182.us.i = phi ptr [ %i.fa, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.060.i, %.lr.ph84.split.us.preheader.i ] ; 3 uses
  %.16381.us.i = phi ptr [ %i.fb, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.062.i, %.lr.ph84.split.us.preheader.i ] ; 4 uses
  %.06480.us.i = phi i32 [ %i.fc, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.056.i, %.lr.ph84.split.us.preheader.i ]
  %i.dz = getelementptr inbounds [4 x i8], ptr %.16381.us.i, i64 %i.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !36 ; 2 uses
  %i.eb = load i32, ptr %.16182.us.i, align 4, !tbaa !3, !noalias !36 ; 2 uses
  %i.ec = and i32 %i.eb, -16711936
  %i.ed = and i32 %i.ea, -16711936
  %i.ee = add i32 %i.ec, %i.ed
  %i.ef = and i32 %i.eb, 16711935
  %i.eg = and i32 %i.ea, 16711935
  %i.eh = add nuw nsw i32 %i.ef, %i.eg
  %i.ei = and i32 %i.ee, -16711936
  %i.ej = and i32 %i.eh, 16711935
  %i.ek = or disjoint i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %.16381.us.i, align 4, !tbaa !3, !alias.scope !36
  br label %PredictorAdd2_C.exit.us.i

PredictorAdd2_C.exit.us.i:                        ; preds = %PredictorAdd2_C.exit.us.i, %.lr.ph84.split.us.i
  %.05779.us.i = phi i32 [ %spec.select.us.i, %PredictorAdd2_C.exit.us.i ], [ 1, %.lr.ph84.split.us.i ] ; 3 uses
  %.05878.us.i = phi ptr [ %i.el, %PredictorAdd2_C.exit.us.i ], [ %.05983.us.i, %.lr.ph84.split.us.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05878.us.i, i64 4
  %i.em = load i32, ptr %.05878.us.i, align 4, !tbaa !3
  %i.en = lshr i32 %i.em, 8
  %i.eo = and i32 %i.en, 15
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @VP8LPredictorsAdd, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !27
  %i.es = and i32 %.05779.us.i, %i.bn
  %i.et = add nsw i32 %i.es, %i.be                ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.smin.i32(i32 %i.et, i32 %i.b) ; 2 uses
  %i.eu = sext i32 %.05779.us.i to i64            ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %.16182.us.i, i64 %i.eu
  %i.ew = getelementptr inbounds [4 x i8], ptr %.16381.us.i, i64 %i.eu ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.bl
  %i.ey = sub nsw i32 %spec.select.us.i, %.05779.us.i
  tail call void %i.er(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ex, i32 noundef %i.ey, ptr noundef nonnull %i.ew) #12, !inline_history !42
  %i.ez = icmp slt i32 %i.et, %i.b
  br i1 %i.ez, label %PredictorAdd2_C.exit.us.i, label %PredictorAdd2_C.exit._crit_edge.us.i, !llvm.loop !43

PredictorAdd2_C.exit._crit_edge.us.i:             ; preds = %PredictorAdd2_C.exit.us.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.16182.us.i, i64 %i.bk
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.16381.us.i, i64 %i.bk
  %i.fc = add i32 %.06480.us.i, 1                 ; 3 uses
  %i.fd = and i32 %i.fc, %i.bf
  %i.fe = icmp eq i32 %i.fd, 0
  %narrow.us.i = select i1 %i.fe, i32 %i.bi, i32 0
  %.1.idx.us.i = sext i32 %narrow.us.i to i64
  %.1.us.i = getelementptr inbounds [4 x i8], ptr %.05983.us.i, i64 %.1.idx.us.i
  %exitcond86.not.i = icmp eq i32 %i.fc, %2
  br i1 %exitcond86.not.i, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.us.i, !llvm.loop !41

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i
  %store_forwarded = phi i32 [ %i.fy, %.lr.ph84.split.i ], [ %store_forwarded.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.16182.i = phi ptr [ %i.fz, %.lr.ph84.split.i ], [ %.16182.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.16381.i = phi ptr [ %i.ga, %.lr.ph84.split.i ], [ %.16381.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.06480.i = phi i32 [ %i.gb, %.lr.ph84.split.i ], [ %.06480.i.unr, %.lr.ph84.split.i.prol.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ff = load i32, ptr %.16182.i, align 4, !tbaa !3, !noalias !36 ; 2 uses
  %i.fg = and i32 %i.ff, -16711936
  %i.fh = and i32 %store_forwarded, -16711936
  %i.fi = add i32 %i.fg, %i.fh
  %i.fj = and i32 %i.ff, 16711935
  %i.fk = and i32 %store_forwarded, 16711935
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = and i32 %i.fi, -16711936                ; 2 uses
  %i.fn = and i32 %i.fl, 16711935                 ; 2 uses
  %i.fo = or disjoint i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %.16381.i, align 4, !tbaa !3, !alias.scope !36
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.16182.i, i64 %i.bk ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.16381.i, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !3, !noalias !44 ; 2 uses
  %i.fs = and i32 %i.fr, -16711936
  %i.ft = add i32 %i.fs, %i.fm
  %i.fu = and i32 %i.fr, 16711935
  %i.fv = add nuw nsw i32 %i.fu, %i.fn
  %i.fw = and i32 %i.ft, -16711936
  %i.fx = and i32 %i.fv, 16711935
  %i.fy = or disjoint i32 %i.fw, %i.fx            ; 2 uses
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !3, !alias.scope !44
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.bk
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.bk
  %i.gb = add nsw i32 %.06480.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gb, %2
  br i1 %exitcond.not.i.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i, !llvm.loop !41

PredictorInverseTransform_C.exit:                 ; preds = %.lr.ph84.split.i.lver.orig.prol.loopexit, %.lr.ph84.split.i.lver.orig, %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i, %PredictorAdd2_C.exit._crit_edge.us.i, %bb.d
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !46
  %.not = icmp eq i32 %2, %i.gd
  br i1 %.not, label %ColorSpaceInverseTransform_C.exit, label %bb.e

bb.e:                                             ; preds = %PredictorInverseTransform_C.exit
  %i.ge = sext i32 %i.b to i64                    ; 2 uses
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gf
  %i.gh = xor i32 %1, -1
  %i.gi = add i32 %2, %i.gh
  %i.gj = mul nsw i32 %i.b, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gk
  %i.gm = shl nsw i64 %i.ge, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gg, ptr align 4 %i.gl, i64 %i.gm, i1 false)
  br label %ColorSpaceInverseTransform_C.exit

bb.f:                                             ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !18 ; 3 uses
  %i.gp = shl nuw i32 1, %i.go                    ; 4 uses
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  %i.gr = sub i32 0, %i.gp
  %i.gs = and i32 %i.b, %i.gr                     ; 3 uses
  %i.gt = sub nsw i32 %i.b, %i.gs                 ; 2 uses
  %i.gu = add i32 %i.gq, %i.b
  %i.gv = lshr i32 %i.gu, %i.go                   ; 2 uses
  %i.gw = icmp slt i32 %1, %2
  br i1 %i.gw, label %.lr.ph62.i, label %ColorSpaceInverseTransform_C.exit

.lr.ph62.i:                                       ; preds = %bb.f
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !23
  %i.gz = ashr i32 %1, %i.go
  %i.ha = mul nsw i32 %i.gv, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = sext i32 %i.gs to i64
  %i.he = sext i32 %i.b to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.hh = sext i32 %i.gp to i64                   ; 2 uses
  %i.hi = sext i32 %i.gt to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.hd, 2
  %i.hj = icmp sgt i32 %i.gs, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph62.i
  %.060.i53 = phi ptr [ %3, %.lr.ph62.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.04559.i = phi ptr [ %4, %.lr.ph62.i ], [ %.247.i, %bb.i ] ; 2 uses
  %.04958.i = phi ptr [ %i.hc, %.lr.ph62.i ], [ %.150.i, %bb.i ] ; 3 uses
  %.05157.i = phi i32 [ %1, %.lr.ph62.i ], [ %i.ih, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i64 3, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %.060.i53, i64 %.idx.i
  %i.hl = getelementptr inbounds [4 x i8], ptr %.060.i53, i64 %i.he
  br i1 %i.hj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.154.i = phi ptr [ %i.hu, %.lr.ph.i ], [ %.060.i53, %bb.g ] ; 2 uses
  %.14653.i = phi ptr [ %i.hv, %.lr.ph.i ], [ %.04559.i, %bb.g ] ; 2 uses
  %.04852.i = phi ptr [ %i.hm, %.lr.ph.i ], [ %.04958.i, %bb.g ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.04852.i, i64 4 ; 2 uses
  %i.hn = load i32, ptr %.04852.i, align 4, !tbaa !3 ; 3 uses
  %i.ho = trunc i32 %i.hn to i8
  store i8 %i.ho, ptr %5, align 1, !tbaa !12
  %i.hp = lshr i32 %i.hn, 8
  %i.hq = trunc i32 %i.hp to i8
  store i8 %i.hq, ptr %i.hf, align 1, !tbaa !14
  %i.hr = lshr i32 %i.hn, 16
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr %i.hg, align 1, !tbaa !15
  %i.ht = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !27
  call void %i.ht(ptr noundef nonnull %5, ptr noundef %.154.i, i32 noundef %i.gp, ptr noundef %.14653.i) #12, !inline_history !47
  %i.hu = getelementptr inbounds [4 x i8], ptr %.154.i, i64 %i.hh ; 3 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %.14653.i, i64 %i.hh ; 2 uses
  %i.hw = icmp ult ptr %i.hu, %i.hk
  br i1 %i.hw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.048.lcssa.i = phi ptr [ %.04958.i, %bb.g ], [ %i.hm, %.lr.ph.i ]
  %.146.lcssa.i = phi ptr [ %.04559.i, %bb.g ], [ %i.hv, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.060.i53, %bb.g ], [ %i.hu, %.lr.ph.i ] ; 4 uses
  %i.hx = icmp ult ptr %.1.lcssa.i, %i.hl
  br i1 %i.hx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.hy = load i32, ptr %.048.lcssa.i, align 4, !tbaa !3 ; 3 uses
  %i.hz = trunc i32 %i.hy to i8
  store i8 %i.hz, ptr %5, align 1, !tbaa !12
  %i.ia = lshr i32 %i.hy, 8
  %i.ib = trunc i32 %i.ia to i8
  store i8 %i.ib, ptr %i.hf, align 1, !tbaa !14
  %i.ic = lshr i32 %i.hy, 16
  %i.id = trunc i32 %i.ic to i8
  store i8 %i.id, ptr %i.hg, align 1, !tbaa !15
  %i.ie = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !27
  call void %i.ie(ptr noundef nonnull %5, ptr noundef %.1.lcssa.i, i32 noundef %i.gt, ptr noundef %.146.lcssa.i) #12, !inline_history !47
  %i.if = getelementptr inbounds [4 x i8], ptr %.1.lcssa.i, i64 %i.hi
  %i.ig = getelementptr inbounds [4 x i8], ptr %.146.lcssa.i, i64 %i.hi
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.247.i = phi ptr [ %i.ig, %bb.h ], [ %.146.lcssa.i, %._crit_edge.i ]
  %.2.i = phi ptr [ %i.if, %bb.h ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.ih = add i32 %.05157.i, 1                    ; 3 uses
  %i.ii = and i32 %i.ih, %i.gq
  %i.ij = icmp eq i32 %i.ii, 0
  %narrow.i = select i1 %i.ij, i32 %i.gv, i32 0
  %.150.idx.i = sext i32 %narrow.i to i64
  %.150.i = getelementptr inbounds [4 x i8], ptr %.04958.i, i64 %.150.idx.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %exitcond.not.i54 = icmp eq i32 %i.ih, %2
  br i1 %exitcond.not.i54, label %ColorSpaceInverseTransform_C.exit, label %bb.g, !llvm.loop !49

bb.j:                                             ; preds = %bb.a
  %i.ik = icmp eq ptr %3, %4
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18 ; 6 uses
  %i.in = icmp sgt i32 %i.im, 0
  %or.cond = select i1 %i.ik, i1 %i.in, i1 false
  br i1 %or.cond, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.io = sub nsw i32 %2, %1                      ; 2 uses
  %i.ip = mul nsw i32 %i.b, %i.io
  %i.iq = shl nuw i32 1, %i.im
  %i.ir = add i32 %i.b, -1
  %i.is = add i32 %i.ir, %i.iq
  %i.it = lshr i32 %i.is, %i.im
  %i.iu = mul i32 %i.it, %i.io
  %i.iv = sext i32 %i.ip to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.iv
  %i.ix = sext i32 %i.iu to i64                   ; 2 uses
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.iy ; 3 uses
  %i.ja = shl nsw i64 %i.ix, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iz, ptr align 4 %4, i64 %i.ja, i1 false)
  %i.jb = load i32, ptr %i.il, align 4, !tbaa !18 ; 3 uses
  %i.jc = lshr i32 8, %i.jb                       ; 3 uses
  %i.jd = load i32, ptr %i.a, align 8, !tbaa !22  ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !23 ; 4 uses
  %.not.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %notmask.i = shl nsw i32 -1, %i.jb
  %i.jg = xor i32 %notmask.i, -1                  ; 3 uses
  %notmask35.i = shl nsw i32 -1, %i.jc
  %i.jh = xor i32 %notmask35.i, -1                ; 3 uses
  %i.ji = icmp slt i32 %1, %2
  %i.jj = icmp sgt i32 %i.jd, 0
  %or.cond.i = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %ColorSpaceInverseTransform_C.exit

.preheader.i.preheader:                           ; preds = %bb.l
  %xtraiter137 = and i32 %i.jd, 1
  %i.jk = icmp eq i32 %i.jd, 1
  %unroll_iter142 = and i32 %i.jd, 2147483646
  %lcmp.mod138.not = icmp eq i32 %xtraiter137, 0
  %lcmp.mod141 = trunc i32 %i.jd to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i57
  %.02943.i = phi ptr [ %.2.i55.lcssa, %._crit_edge.i57 ], [ %i.iz, %.preheader.i.preheader ] ; 2 uses
  %.03142.i = phi ptr [ %.lcssa130, %._crit_edge.i57 ], [ %4, %.preheader.i.preheader ] ; 2 uses
  %.03341.i = phi i32 [ %i.kw, %._crit_edge.i57 ], [ %1, %.preheader.i.preheader ]
  br i1 %i.jk, label %.epil.preheader136, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.p
  %.039.i = phi i32 [ %i.kk, %bb.p ], [ 0, %.preheader.i ] ; 3 uses
  %.02838.i = phi i32 [ %i.kj, %bb.p ], [ 0, %.preheader.i ]
  %.13037.i = phi ptr [ %.2.i55.1, %bb.p ], [ %.02943.i, %.preheader.i ] ; 3 uses
  %.13236.i = phi ptr [ %i.ki, %bb.p ], [ %.03142.i, %.preheader.i ] ; 3 uses
  %niter143 = phi i32 [ %niter143.next.1, %bb.p ], [ 0, %.preheader.i ]
  %i.jl = and i32 %.039.i, %i.jg
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.i.new
  %i.jn = getelementptr inbounds nuw i8, ptr %.13037.i, i64 4
  %i.jo = load i32, ptr %.13037.i, align 4, !tbaa !3
  %i.jp = lshr i32 %i.jo, 8
  %i.jq = and i32 %i.jp, 255
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.i.new
  %.2.i55 = phi ptr [ %i.jn, %bb.m ], [ %.13037.i, %.preheader.i.new ] ; 3 uses
  %.1.i = phi i32 [ %i.jq, %bb.m ], [ %.02838.i, %.preheader.i.new ] ; 2 uses
  %i.jr = and i32 %.1.i, %i.jh
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = getelementptr inbounds nuw i8, ptr %.13236.i, i64 4
  store i32 %i.ju, ptr %.13236.i, align 4, !tbaa !3
  %i.jw = lshr i32 %.1.i, %i.jc
  %i.jx = or disjoint i32 %.039.i, 1
  %i.jy = and i32 %i.jx, %i.jg
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ka = getelementptr inbounds nuw i8, ptr %.2.i55, i64 4
  %i.kb = load i32, ptr %.2.i55, align 4, !tbaa !3
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = and i32 %i.kc, 255
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.i55.1 = phi ptr [ %i.ka, %bb.o ], [ %.2.i55, %bb.n ] ; 3 uses
  %.1.i.1 = phi i32 [ %i.kd, %bb.o ], [ %i.jw, %bb.n ] ; 2 uses
  %i.ke = and i32 %.1.i.1, %i.jh
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = getelementptr inbounds nuw i8, ptr %.13236.i, i64 8 ; 3 uses
  store i32 %i.kh, ptr %i.jv, align 4, !tbaa !3
  %i.kj = lshr i32 %.1.i.1, %i.jc                 ; 2 uses
  %i.kk = add nuw nsw i32 %.039.i, 2              ; 2 uses
  %niter143.next.1 = add nuw nsw i32 %niter143, 2 ; 2 uses
  %niter143.ncmp.1 = icmp eq i32 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge.i57.unr-lcssa, label %.preheader.i.new, !llvm.loop !50

._crit_edge.i57.unr-lcssa:                        ; preds = %bb.p
  br i1 %lcmp.mod138.not, label %._crit_edge.i57, label %.epil.preheader136

.epil.preheader136:                               ; preds = %._crit_edge.i57.unr-lcssa, %.preheader.i
  %.039.i.epil.init = phi i32 [ 0, %.preheader.i ], [ %i.kk, %._crit_edge.i57.unr-lcssa ]
  %.02838.i.epil.init = phi i32 [ 0, %.preheader.i ], [ %i.kj, %._crit_edge.i57.unr-lcssa ]
  %.13037.i.epil.init = phi ptr [ %.02943.i, %.preheader.i ], [ %.2.i55.1, %._crit_edge.i57.unr-lcssa ] ; 3 uses
  %.13236.i.epil.init = phi ptr [ %.03142.i, %.preheader.i ], [ %i.ki, %._crit_edge.i57.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.kl = and i32 %.039.i.epil.init, %i.jg
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.q, label %._crit_edge.i57.epilog-lcssa

bb.q:                                             ; preds = %.epil.preheader136
  %i.kn = getelementptr inbounds nuw i8, ptr %.13037.i.epil.init, i64 4
  %i.ko = load i32, ptr %.13037.i.epil.init, align 4, !tbaa !3
  %i.kp = lshr i32 %i.ko, 8
  %i.kq = and i32 %i.kp, 255
  br label %._crit_edge.i57.epilog-lcssa

._crit_edge.i57.epilog-lcssa:                     ; preds = %bb.q, %.epil.preheader136
  %.2.i55.epil = phi ptr [ %i.kn, %bb.q ], [ %.13037.i.epil.init, %.epil.preheader136 ]
  %.1.i.epil = phi i32 [ %i.kq, %bb.q ], [ %.02838.i.epil.init, %.epil.preheader136 ]
  %i.kr = and i32 %.1.i.epil, %i.jh
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw i8, ptr %.13236.i.epil.init, i64 4
  store i32 %i.ku, ptr %.13236.i.epil.init, align 4, !tbaa !3
  br label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %._crit_edge.i57.unr-lcssa, %._crit_edge.i57.epilog-lcssa
  %.2.i55.lcssa = phi ptr [ %.2.i55.1, %._crit_edge.i57.unr-lcssa ], [ %.2.i55.epil, %._crit_edge.i57.epilog-lcssa ]
  %.lcssa130 = phi ptr [ %i.ki, %._crit_edge.i57.unr-lcssa ], [ %i.kv, %._crit_edge.i57.epilog-lcssa ]
  %i.kw = add nsw i32 %.03341.i, 1                ; 2 uses
  %exitcond44.not.i = icmp eq i32 %i.kw, %2
  br i1 %exitcond44.not.i, label %ColorSpaceInverseTransform_C.exit, label %.preheader.i, !llvm.loop !51

bb.r:                                             ; preds = %bb.k
  %i.kx = load ptr, ptr @VP8LMapColor32b, align 8, !tbaa !27
  tail call void %i.kx(ptr noundef %i.iz, ptr noundef %i.jf, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %i.jd) #12, !inline_history !52
  br label %ColorSpaceInverseTransform_C.exit

._crit_edge:                                      ; preds = %bb.j
  %i.ky = lshr i32 8, %i.im                       ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !23 ; 4 uses
  %.not.i58 = icmp eq i32 %i.im, 0
  br i1 %.not.i58, label %bb.y, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %notmask.i59 = shl nsw i32 -1, %i.im
  %i.lb = xor i32 %notmask.i59, -1                ; 3 uses
  %notmask35.i60 = shl nsw i32 -1, %i.ky
  %i.lc = xor i32 %notmask35.i60, -1              ; 3 uses
  %i.ld = icmp slt i32 %1, %2
  %i.le = icmp sgt i32 %i.b, 0
  %or.cond.i61 = select i1 %i.ld, i1 %i.le, i1 false
  br i1 %or.cond.i61, label %.preheader.i62.preheader, label %ColorSpaceInverseTransform_C.exit

.preheader.i62.preheader:                         ; preds = %bb.s
  %xtraiter = and i32 %i.b, 1
  %i.lf = icmp eq i32 %i.b, 1
  %unroll_iter = and i32 %i.b, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod135 = trunc i32 %i.b to i1
  br label %.preheader.i62

.preheader.i62:                                   ; preds = %.preheader.i62.preheader, %._crit_edge.i73
  %.02943.i63 = phi ptr [ %.2.i70.lcssa, %._crit_edge.i73 ], [ %3, %.preheader.i62.preheader ] ; 2 uses
  %.03142.i64 = phi ptr [ %.lcssa132, %._crit_edge.i73 ], [ %4, %.preheader.i62.preheader ] ; 2 uses
  %.03341.i65 = phi i32 [ %i.mr, %._crit_edge.i73 ], [ %1, %.preheader.i62.preheader ]
  br i1 %i.lf, label %.epil.preheader, label %.preheader.i62.new

.preheader.i62.new:                               ; preds = %.preheader.i62, %bb.w
  %.039.i66 = phi i32 [ %i.mf, %bb.w ], [ 0, %.preheader.i62 ] ; 3 uses
  %.02838.i67 = phi i32 [ %i.me, %bb.w ], [ 0, %.preheader.i62 ]
  %.13037.i68 = phi ptr [ %.2.i70.1, %bb.w ], [ %.02943.i63, %.preheader.i62 ] ; 3 uses
  %.13236.i69 = phi ptr [ %i.md, %bb.w ], [ %.03142.i64, %.preheader.i62 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.w ], [ 0, %.preheader.i62 ]
  %i.lg = and i32 %.039.i66, %i.lb
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader.i62.new
  %i.li = getelementptr inbounds nuw i8, ptr %.13037.i68, i64 4
  %i.lj = load i32, ptr %.13037.i68, align 4, !tbaa !3
  %i.lk = lshr i32 %i.lj, 8
  %i.ll = and i32 %i.lk, 255
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.i62.new
  %.2.i70 = phi ptr [ %i.li, %bb.t ], [ %.13037.i68, %.preheader.i62.new ] ; 3 uses
  %.1.i71 = phi i32 [ %i.ll, %bb.t ], [ %.02838.i67, %.preheader.i62.new ] ; 2 uses
  %i.lm = and i32 %.1.i71, %i.lc
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3
  %i.lq = getelementptr inbounds nuw i8, ptr %.13236.i69, i64 4
  store i32 %i.lp, ptr %.13236.i69, align 4, !tbaa !3
  %i.lr = lshr i32 %.1.i71, %i.ky
  %i.ls = or disjoint i32 %.039.i66, 1
  %i.lt = and i32 %i.ls, %i.lb
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lv = getelementptr inbounds nuw i8, ptr %.2.i70, i64 4
  %i.lw = load i32, ptr %.2.i70, align 4, !tbaa !3
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = and i32 %i.lx, 255
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.i70.1 = phi ptr [ %i.lv, %bb.v ], [ %.2.i70, %bb.u ] ; 3 uses
  %.1.i71.1 = phi i32 [ %i.ly, %bb.v ], [ %i.lr, %bb.u ] ; 2 uses
  %i.lz = and i32 %.1.i71.1, %i.lc
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !3
  %i.md = getelementptr inbounds nuw i8, ptr %.13236.i69, i64 8 ; 3 uses
  store i32 %i.mc, ptr %i.lq, align 4, !tbaa !3
  %i.me = lshr i32 %.1.i71.1, %i.ky               ; 2 uses
  %i.mf = add nuw nsw i32 %.039.i66, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i73.unr-lcssa, label %.preheader.i62.new, !llvm.loop !50

._crit_edge.i73.unr-lcssa:                        ; preds = %bb.w
  br i1 %lcmp.mod.not, label %._crit_edge.i73, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i73.unr-lcssa, %.preheader.i62
  %.039.i66.epil.init = phi i32 [ 0, %.preheader.i62 ], [ %i.mf, %._crit_edge.i73.unr-lcssa ]
  %.02838.i67.epil.init = phi i32 [ 0, %.preheader.i62 ], [ %i.me, %._crit_edge.i73.unr-lcssa ]
  %.13037.i68.epil.init = phi ptr [ %.02943.i63, %.preheader.i62 ], [ %.2.i70.1, %._crit_edge.i73.unr-lcssa ] ; 3 uses
  %.13236.i69.epil.init = phi ptr [ %.03142.i64, %.preheader.i62 ], [ %i.md, %._crit_edge.i73.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.mg = and i32 %.039.i66.epil.init, %i.lb
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.x, label %._crit_edge.i73.epilog-lcssa

bb.x:                                             ; preds = %.epil.preheader
  %i.mi = getelementptr inbounds nuw i8, ptr %.13037.i68.epil.init, i64 4
  %i.mj = load i32, ptr %.13037.i68.epil.init, align 4, !tbaa !3
  %i.mk = lshr i32 %i.mj, 8
  %i.ml = and i32 %i.mk, 255
  br label %._crit_edge.i73.epilog-lcssa

._crit_edge.i73.epilog-lcssa:                     ; preds = %bb.x, %.epil.preheader
  %.2.i70.epil = phi ptr [ %i.mi, %bb.x ], [ %.13037.i68.epil.init, %.epil.preheader ]
  %.1.i71.epil = phi i32 [ %i.ml, %bb.x ], [ %.02838.i67.epil.init, %.epil.preheader ]
  %i.mm = and i32 %.1.i71.epil, %i.lc
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = getelementptr inbounds nuw i8, ptr %.13236.i69.epil.init, i64 4
  store i32 %i.mp, ptr %.13236.i69.epil.init, align 4, !tbaa !3
  br label %._crit_edge.i73

._crit_edge.i73:                                  ; preds = %._crit_edge.i73.unr-lcssa, %._crit_edge.i73.epilog-lcssa
  %.2.i70.lcssa = phi ptr [ %.2.i70.1, %._crit_edge.i73.unr-lcssa ], [ %.2.i70.epil, %._crit_edge.i73.epilog-lcssa ]
  %.lcssa132 = phi ptr [ %i.md, %._crit_edge.i73.unr-lcssa ], [ %i.mq, %._crit_edge.i73.epilog-lcssa ]
  %i.mr = add nsw i32 %.03341.i65, 1              ; 2 uses
  %exitcond44.not.i74 = icmp eq i32 %i.mr, %2
  br i1 %exitcond44.not.i74, label %ColorSpaceInverseTransform_C.exit, label %.preheader.i62, !llvm.loop !51

bb.y:                                             ; preds = %._crit_edge
  %i.ms = load ptr, ptr @VP8LMapColor32b, align 8, !tbaa !27
  tail call void %i.ms(ptr noundef %3, ptr noundef %i.la, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %i.b) #12, !inline_history !52
  br label %ColorSpaceInverseTransform_C.exit

ColorSpaceInverseTransform_C.exit:                ; preds = %._crit_edge.i73, %._crit_edge.i57, %bb.i, %bb.y, %bb.s, %bb.r, %bb.l, %bb.f, %PredictorInverseTransform_C.exit, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.m, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.e = load i32, ptr %.012, align 4, !tbaa !3   ; 3 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.g, ptr %.01011, align 1, !tbaa !24
  %i.i = lshr i32 %i.e, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !24
  %i.l = trunc i32 %i.e to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  %i.n = icmp ult ptr %i.d, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01213 = phi ptr [ %i.p, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.e = load i32, ptr %.014, align 4, !tbaa !3   ; 4 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.g, ptr %.01213, align 1, !tbaa !24
  %i.i = lshr i32 %i.e, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !24
  %i.l = trunc i32 %i.e to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01213, i64 3
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  %i.n = lshr i32 %i.e, 24
  %i.o = trunc nuw i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.01213, i64 4
  store i8 %i.o, ptr %i.m, align 1, !tbaa !24
  %i.q = icmp ult ptr %i.d, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA4444_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775804      ; 4 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = shl nuw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 4 uses
  %i.r = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.s = and <4 x i32> %i.r, splat (i32 240)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 12)
  %i.u = and <4 x i32> %i.t, splat (i32 15)
  %i.v = or disjoint <4 x i32> %i.s, %i.u
  %i.w = and <4 x i32> %wide.load, splat (i32 240)
  %i.x = lshr <4 x i32> %wide.load, splat (i32 28)
  %i.y = or disjoint <4 x i32> %i.w, %i.x
  %i.z = shufflevector <4 x i32> %i.v, <4 x i32> %i.y, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.z to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.ab, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.ao, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ac = load i32, ptr %.014, align 4, !tbaa !3  ; 4 uses
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = and i32 %i.ad, 240
  %i.af = lshr i32 %i.ac, 12
  %i.ag = and i32 %i.af, 15
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = and i32 %i.ac, 240
  %i.ak = lshr i32 %i.ac, 28
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ai, ptr %.01213, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !24
  %i.ap = icmp ult ptr %i.ab, %i.b
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB565_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775804      ; 4 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = shl nuw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 4 uses
  %i.r = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.s = and <4 x i32> %i.r, splat (i32 248)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 13)
  %i.u = and <4 x i32> %i.t, splat (i32 7)
  %i.v = or disjoint <4 x i32> %i.s, %i.u
  %i.w = lshr <4 x i32> %wide.load, splat (i32 5)
  %i.x = and <4 x i32> %i.w, splat (i32 224)
  %i.y = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.z = and <4 x i32> %i.y, splat (i32 31)
  %i.aa = or disjoint <4 x i32> %i.x, %i.z
  %i.ab = shufflevector <4 x i32> %i.v, <4 x i32> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.ab to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.ad, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.as, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ae = load i32, ptr %.014, align 4, !tbaa !3  ; 4 uses
  %i.af = lshr i32 %i.ae, 16
  %i.ag = and i32 %i.af, 248
  %i.ah = lshr i32 %i.ae, 13
  %i.ai = and i32 %i.ah, 7
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = lshr i32 %i.ae, 5
  %i.am = and i32 %i.al, 224
  %i.an = lshr i32 %i.ae, 3
  %i.ao = and i32 %i.an, 31
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ak, ptr %.01213, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.at = icmp ult ptr %i.ad, %i.b
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToBGR_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.m, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.e = load i32, ptr %.012, align 4, !tbaa !3   ; 3 uses
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.f, ptr %.01011, align 1, !tbaa !24
  %i.h = lshr i32 %i.e, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !24
  %i.k = lshr i32 %i.e, 16
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !24
  %i.n = icmp ult ptr %i.d, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LConvertFromBGRA(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  switch i32 %2, label %CopyOrSwap.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 7, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 8, label %bb.g
    i32 4, label %bb.h
    i32 9, label %bb.i
    i32 5, label %bb.j
    i32 10, label %bb.k
    i32 6, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !27
  tail call void %i.a(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !27
  tail call void %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !27
  tail call void %i.c(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  %i.d = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !27
  tail call void %i.d(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #12
  br label %CopyOrSwap.exit

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !27
  tail call void %i.e(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit

bb.f:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %.idx.i = shl nsw i64 %i.f, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i, i1 false), !alias.scope !60
  br label %CopyOrSwap.exit

bb.g:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %.idx.i41 = shl nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i41, i1 false), !alias.scope !64
  %i.h = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !27
  tail call void %i.h(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #12
  br label %CopyOrSwap.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.i = sext i32 %1 to i64
  %.idx.i42 = shl nsw i64 %i.i, 2                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i42
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph.i.preheader, label %CopyOrSwap.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = add i64 %.idx.i42, %i.l
  %i.n = add i64 %i.l, 4
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.p = xor i64 %i.l, -1
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.q, 28
  br i1 %min.iters.check52, label %.lr.ph.i.preheader67, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.i.preheader
  %n.vec55 = and i64 %i.s, 9223372036854775800    ; 3 uses
  %i.t = shl i64 %n.vec55, 2                      ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %3, i64 %i.t
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.w = shl i64 %index57, 2                      ; 2 uses
  %next.gep58 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %next.gep59 = getelementptr i8, ptr %3, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !3, !alias.scope !68, !noalias !71
  %wide.load61 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3, !alias.scope !68, !noalias !71
  %i.y = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load60)
  %i.z = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load61)
  %i.aa = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %i.y, ptr %next.gep59, align 1, !alias.scope !71, !noalias !68
  store <4 x i32> %i.z, ptr %i.aa, align 1, !alias.scope !71, !noalias !68
  %index.next62 = add nuw i64 %index57, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.ab, label %middle.block63, label %vector.body56, !llvm.loop !73

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %i.s, %n.vec55
  br i1 %cmp.n64, label %CopyOrSwap.exit, label %.lr.ph.i.preheader67

.lr.ph.i.preheader67:                             ; preds = %.lr.ph.i.preheader, %middle.block63
  %.013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.u, %middle.block63 ]
  %.01112.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.v, %middle.block63 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader67, %.lr.ph.i
  %.013.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.013.i.ph, %.lr.ph.i.preheader67 ] ; 2 uses
  %.01112.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.01112.i.ph, %.lr.ph.i.preheader67 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.ad = load i32, ptr %.013.i, align 4, !tbaa !3, !alias.scope !68, !noalias !71
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.ae, ptr %.01112.i, align 1, !alias.scope !71, !noalias !68
  %i.af = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  %i.ag = icmp ult ptr %i.ac, %i.j
  br i1 %i.ag, label %.lr.ph.i, label %CopyOrSwap.exit, !llvm.loop !74

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ah = sext i32 %1 to i64
  %.idx.i43 = shl nsw i64 %i.ah, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i43
  %i.aj = icmp sgt i32 %1, 0
  br i1 %i.aj, label %.lr.ph.i44.preheader, label %CopyOrSwap.exit47

.lr.ph.i44.preheader:                             ; preds = %bb.i
  %i.ak = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.al = add i64 %.idx.i43, %i.ak
  %i.am = add i64 %i.ak, 4
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.ao = xor i64 %i.ak, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  br i1 %min.iters.check, label %.lr.ph.i44.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %i.ar, 9223372036854775800     ; 3 uses
  %i.as = shl i64 %n.vec, 2                       ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %3, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.av ; 2 uses
  %next.gep48 = getelementptr i8, ptr %3, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !75, !noalias !78
  %wide.load49 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3, !alias.scope !75, !noalias !78
  %i.ax = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ay = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load49)
  %i.az = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> %i.ax, ptr %next.gep48, align 1, !alias.scope !78, !noalias !75
  store <4 x i32> %i.ay, ptr %i.az, align 1, !alias.scope !78, !noalias !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %CopyOrSwap.exit47, label %.lr.ph.i44.preheader68

.lr.ph.i44.preheader68:                           ; preds = %.lr.ph.i44.preheader, %middle.block
  %.013.i45.ph = phi ptr [ %0, %.lr.ph.i44.preheader ], [ %i.at, %middle.block ]
  %.01112.i46.ph = phi ptr [ %3, %.lr.ph.i44.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader68, %.lr.ph.i44
  %.013.i45 = phi ptr [ %i.bb, %.lr.ph.i44 ], [ %.013.i45.ph, %.lr.ph.i44.preheader68 ] ; 2 uses
  %.01112.i46 = phi ptr [ %i.be, %.lr.ph.i44 ], [ %.01112.i46.ph, %.lr.ph.i44.preheader68 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i45, i64 4 ; 2 uses
  %i.bc = load i32, ptr %.013.i45, align 4, !tbaa !3, !alias.scope !75, !noalias !78
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %.01112.i46, align 1, !alias.scope !78, !noalias !75
  %i.be = getelementptr inbounds nuw i8, ptr %.01112.i46, i64 4
  %i.bf = icmp ult ptr %i.bb, %i.ai
  br i1 %i.bf, label %.lr.ph.i44, label %CopyOrSwap.exit47, !llvm.loop !81

CopyOrSwap.exit47:                                ; preds = %.lr.ph.i44, %middle.block, %bb.i
  %i.bg = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !27
  tail call void %i.bg(ptr noundef %3, i32 noundef 1, i32 noundef %1, i32 noundef 1, i32 noundef 0) #12
  br label %CopyOrSwap.exit

bb.j:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !27
  tail call void %i.bh(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit

bb.k:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !27
  tail call void %i.bi(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  %i.bj = load ptr, ptr @WebPApplyAlphaMultiply4444, align 8, !tbaa !27
  tail call void %i.bj(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) #12
  br label %CopyOrSwap.exit

bb.l:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !27
  tail call void %i.bk(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit

CopyOrSwap.exit:                                  ; preds = %.lr.ph.i, %middle.block63, %bb.h, %bb.a, %bb.l, %bb.k, %bb.j, %CopyOrSwap.exit47, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LDspInit() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8LDspInit.VP8LDspInit_body_lock) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @VP8LDspInit.VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !27
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8LDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @VP8LPredictor0_C, ptr @VP8LPredictors, align 16, !tbaa !27
  store ptr @VP8LPredictor1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 8), align 8, !tbaa !27
  store ptr @VP8LPredictor2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 16), align 16, !tbaa !27
  store ptr @VP8LPredictor3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 24), align 8, !tbaa !27
  store ptr @VP8LPredictor4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 32), align 16, !tbaa !27
  store ptr @VP8LPredictor5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 40), align 8, !tbaa !27
  store ptr @VP8LPredictor6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 48), align 16, !tbaa !27
  store ptr @VP8LPredictor7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 56), align 8, !tbaa !27
  store ptr @VP8LPredictor8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 64), align 16, !tbaa !27
  store ptr @VP8LPredictor9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 72), align 8, !tbaa !27
  store ptr @VP8LPredictor10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 80), align 16, !tbaa !27
  store ptr @VP8LPredictor11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 88), align 8, !tbaa !27
  store ptr @VP8LPredictor12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 96), align 16, !tbaa !27
  store ptr @VP8LPredictor13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 104), align 8, !tbaa !27
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 112), align 16, !tbaa !27
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 120), align 8, !tbaa !27
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd, align 16, !tbaa !27
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 8), align 8, !tbaa !27
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 16), align 16, !tbaa !27
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 24), align 8, !tbaa !27
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 32), align 16, !tbaa !27
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 40), align 8, !tbaa !27
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 48), align 16, !tbaa !27
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 56), align 8, !tbaa !27
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 64), align 16, !tbaa !27
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 72), align 8, !tbaa !27
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 80), align 16, !tbaa !27
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 88), align 8, !tbaa !27
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 96), align 16, !tbaa !27
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 104), align 8, !tbaa !27
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 112), align 16, !tbaa !27
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 120), align 8, !tbaa !27
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd_C, align 16, !tbaa !27
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 8), align 8, !tbaa !27
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 16), align 16, !tbaa !27
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 24), align 8, !tbaa !27
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 32), align 16, !tbaa !27
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 40), align 8, !tbaa !27
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 48), align 16, !tbaa !27
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 56), align 8, !tbaa !27
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 64), align 16, !tbaa !27
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 72), align 8, !tbaa !27
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 80), align 16, !tbaa !27
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 88), align 8, !tbaa !27
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 96), align 16, !tbaa !27
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 104), align 8, !tbaa !27
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 112), align 16, !tbaa !27
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 120), align 8, !tbaa !27
  store ptr @VP8LAddGreenToBlueAndRed_C, ptr @VP8LAddGreenToBlueAndRed, align 8, !tbaa !27
  store ptr @VP8LTransformColorInverse_C, ptr @VP8LTransformColorInverse, align 8, !tbaa !27
  store ptr @VP8LConvertBGRAToRGBA_C, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !27
  store ptr @VP8LConvertBGRAToRGB_C, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !27
  store ptr @VP8LConvertBGRAToBGR_C, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !27
  store ptr @VP8LConvertBGRAToRGBA4444_C, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !27
  store ptr @VP8LConvertBGRAToRGB565_C, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !27
  store ptr @MapARGB_C, ptr @VP8LMapColor32b, align 8, !tbaa !27
  store ptr @MapAlpha_C, ptr @VP8LMapColor8b, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #12, !inline_history !82
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %VP8LDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8LDspInitSSE2() #12
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27
  %i.f = tail call i32 %i.e(i32 noundef 3) #12, !inline_history !82
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %VP8LDspInit_body.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInitSSE41() #12
  %i.g = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27
  %i.h = tail call i32 %i.g(i32 noundef 5) #12, !inline_history !82
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %VP8LDspInit_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @VP8LDspInitAVX2() #12
  br label %VP8LDspInit_body.exit

VP8LDspInit_body.exit:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !27
  store volatile ptr %i.i, ptr @VP8LDspInit.VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !27
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8LDspInit.VP8LDspInit_body_lock) #12 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %VP8LDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5
end_hunk_0

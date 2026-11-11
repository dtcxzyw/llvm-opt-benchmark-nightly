Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless?download=true
inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LInverseTransform:bb.a
  %i.cj = and i32 %i.cg, -16711936
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = and i32 %i.ch, 16711935
  %i.cm = and i32 %i.cg, 16711935
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  %i.co = and i32 %i.ck, -16711936                ; 2 uses
  %i.cp = and i32 %i.cn, 16711935                 ; 2 uses
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.16181.i.lver.orig, align 4, !tbaa !9, !alias.scope !53
  %i.cr = getelementptr inbounds [4 x i8], ptr %.16380.i.lver.orig, i64 %i.bk ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.16181.i.lver.orig, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !9, !noalias !54 ; 2 uses
  %i.cu = and i32 %i.ct, -16711936
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = and i32 %i.ct, 16711935
  %i.cx = add nuw nsw i32 %i.cw, %i.cp
  %i.cy = and i32 %i.cv, -16711936
  %i.cz = and i32 %i.cx, 16711935
  %i.da = or disjoint i32 %i.cy, %i.cz
  store i32 %i.da, ptr %i.cs, align 4, !tbaa !9, !alias.scope !54
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.bk
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.bk
  %i.dd = add nsw i32 %.05982.i.lver.orig, 2      ; 2 uses
  %exitcond.not.i.lver.orig.1 = icmp eq i32 %i.dd, %2
  br i1 %exitcond.not.i.lver.orig.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i.lver.orig, !llvm.loop !42

.lr.ph84.split.i.ph:                              ; preds = %.lr.ph84.split.i.lver.check
  %scevgep = getelementptr i8, ptr %.060.i, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4 ; 3 uses
  %i.de = sub i32 %2, %.064.i
  %.neg90 = add i32 %.064.i, 1
  %xtraiter88 = and i32 %i.de, 1
  %lcmp.mod89.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph84.split.i.prol.loopexit, label %.lr.ph84.split.i.prol

.lr.ph84.split.i.prol:                            ; preds = %.lr.ph84.split.i.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.df = load i32, ptr %.062.i, align 4, !tbaa !9, !noalias !53 ; 2 uses
  %i.dg = and i32 %i.df, -16711936
  %i.dh = and i32 %load_initial, -16711936
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = and i32 %i.df, 16711935
  %i.dk = and i32 %load_initial, 16711935
  %i.dl = add nuw nsw i32 %i.dj, %i.dk
  %i.dm = and i32 %i.di, -16711936
  %i.dn = and i32 %i.dl, 16711935
  %i.do = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  store i32 %i.do, ptr %.060.i, align 4, !tbaa !9, !alias.scope !53
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.062.i, i64 %i.bk
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.060.i, i64 %i.bk
  %i.dr = add nsw i32 %.064.i, 1
  br label %.lr.ph84.split.i.prol.loopexit

.lr.ph84.split.i.prol.loopexit:                   ; preds = %.lr.ph84.split.i.prol, %.lr.ph84.split.i.ph
  %store_forwarded.unr = phi i32 [ %load_initial, %.lr.ph84.split.i.ph ], [ %i.do, %.lr.ph84.split.i.prol ]
  %.05982.i.unr = phi i32 [ %.064.i, %.lr.ph84.split.i.ph ], [ %i.dr, %.lr.ph84.split.i.prol ]
  %.16181.i.unr = phi ptr [ %.060.i, %.lr.ph84.split.i.ph ], [ %i.dq, %.lr.ph84.split.i.prol ]
  %.16380.i.unr = phi ptr [ %.062.i, %.lr.ph84.split.i.ph ], [ %i.dp, %.lr.ph84.split.i.prol ]
  %i.ds = icmp eq i32 %2, %.neg90
  br i1 %i.ds, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i

.lr.ph84.split.us.preheader.i:                    ; preds = %.lr.ph84.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.dv = ashr i32 %.064.i, %i.bd
  %i.dw = mul nsw i32 %i.bi, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dx
  br label %.lr.ph84.split.us.i

.lr.ph84.split.us.i:                              ; preds = %PredictorAdd2_C.exit._crit_edge.us.i, %.lr.ph84.split.us.preheader.i
  %.05883.us.i = phi ptr [ %.1.us.i, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %i.dy, %.lr.ph84.split.us.preheader.i ] ; 2 uses
  %.05982.us.i = phi i32 [ %i.fc, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.064.i, %.lr.ph84.split.us.preheader.i ]
  %.16181.us.i = phi ptr [ %i.fb, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.060.i, %.lr.ph84.split.us.preheader.i ] ; 4 uses
  %.16380.us.i = phi ptr [ %i.fa, %PredictorAdd2_C.exit._crit_edge.us.i ], [ %.062.i, %.lr.ph84.split.us.preheader.i ] ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %.16181.us.i, i64 %i.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9, !noalias !53 ; 2 uses
  %i.eb = load i32, ptr %.16380.us.i, align 4, !tbaa !9, !noalias !53 ; 2 uses
  %i.ec = and i32 %i.eb, -16711936
  %i.ed = and i32 %i.ea, -16711936
  %i.ee = add i32 %i.ec, %i.ed
  %i.ef = and i32 %i.eb, 16711935
  %i.eg = and i32 %i.ea, 16711935
  %i.eh = add nuw nsw i32 %i.ef, %i.eg
  %i.ei = and i32 %i.ee, -16711936
  %i.ej = and i32 %i.eh, 16711935
  %i.ek = or disjoint i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %.16181.us.i, align 4, !tbaa !9, !alias.scope !53
  br label %PredictorAdd2_C.exit.us.i

PredictorAdd2_C.exit.us.i:                        ; preds = %PredictorAdd2_C.exit.us.i, %.lr.ph84.split.us.i
  %.05679.us.i = phi i32 [ 1, %.lr.ph84.split.us.i ], [ %spec.select.us.i, %PredictorAdd2_C.exit.us.i ] ; 3 uses
  %.05778.us.i = phi ptr [ %.05883.us.i, %.lr.ph84.split.us.i ], [ %i.el, %PredictorAdd2_C.exit.us.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05778.us.i, i64 4
  %i.em = load i32, ptr %.05778.us.i, align 4, !tbaa !9
  %i.en = lshr i32 %i.em, 8
  %i.eo = and i32 %i.en, 15
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @VP8LPredictorsAdd, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !25
  %i.es = and i32 %.05679.us.i, %i.bn
  %i.et = add nsw i32 %i.es, %i.be                ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.smin.i32(i32 %i.et, i32 %i.b) ; 2 uses
  %i.eu = sext i32 %.05679.us.i to i64            ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %.16380.us.i, i64 %i.eu
  %i.ew = getelementptr inbounds [4 x i8], ptr %.16181.us.i, i64 %i.eu ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.bl
  %i.ey = sub nsw i32 %spec.select.us.i, %.05679.us.i
  tail call void %i.er(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ex, i32 noundef %i.ey, ptr noundef nonnull %i.ew) #11, !inline_history !43
  %i.ez = icmp slt i32 %i.et, %i.b
  br i1 %i.ez, label %PredictorAdd2_C.exit.us.i, label %PredictorAdd2_C.exit._crit_edge.us.i, !llvm.loop !44

PredictorAdd2_C.exit._crit_edge.us.i:             ; preds = %PredictorAdd2_C.exit.us.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.16380.us.i, i64 %i.bk
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.16181.us.i, i64 %i.bk
  %i.fc = add nsw i32 %.05982.us.i, 1             ; 3 uses
  %i.fd = and i32 %i.fc, %i.bf
  %i.fe = icmp eq i32 %i.fd, 0
  %narrow.us.i = select i1 %i.fe, i32 %i.bi, i32 0
  %.1.idx.us.i = sext i32 %narrow.us.i to i64
  %.1.us.i = getelementptr inbounds [4 x i8], ptr %.05883.us.i, i64 %.1.idx.us.i
  %exitcond86.not.i = icmp eq i32 %i.fc, %2
  br i1 %exitcond86.not.i, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.us.i, !llvm.loop !42

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i
  %store_forwarded = phi i32 [ %i.fy, %.lr.ph84.split.i ], [ %store_forwarded.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.05982.i = phi i32 [ %i.gb, %.lr.ph84.split.i ], [ %.05982.i.unr, %.lr.ph84.split.i.prol.loopexit ]
  %.16181.i = phi ptr [ %i.ga, %.lr.ph84.split.i ], [ %.16181.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.16380.i = phi ptr [ %i.fz, %.lr.ph84.split.i ], [ %.16380.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ff = load i32, ptr %.16380.i, align 4, !tbaa !9, !noalias !53 ; 2 uses
  %i.fg = and i32 %i.ff, -16711936
  %i.fh = and i32 %store_forwarded, -16711936
  %i.fi = add i32 %i.fg, %i.fh
  %i.fj = and i32 %i.ff, 16711935
  %i.fk = and i32 %store_forwarded, 16711935
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = and i32 %i.fi, -16711936                ; 2 uses
  %i.fn = and i32 %i.fl, 16711935                 ; 2 uses
  %i.fo = or disjoint i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %.16181.i, align 4, !tbaa !9, !alias.scope !53
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.16380.i, i64 %i.bk ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.16181.i, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !9, !noalias !55 ; 2 uses
  %i.fs = and i32 %i.fr, -16711936
  %i.ft = add i32 %i.fs, %i.fm
  %i.fu = and i32 %i.fr, 16711935
  %i.fv = add nuw nsw i32 %i.fu, %i.fn
  %i.fw = and i32 %i.ft, -16711936
  %i.fx = and i32 %i.fv, 16711935
  %i.fy = or disjoint i32 %i.fw, %i.fx            ; 2 uses
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !9, !alias.scope !55
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.bk
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.bk
  %i.gb = add nsw i32 %.05982.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gb, %2
  br i1 %exitcond.not.i.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i, !llvm.loop !42

PredictorInverseTransform_C.exit:                 ; preds = %.lr.ph84.split.i.lver.orig.prol.loopexit, %.lr.ph84.split.i.lver.orig, %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i, %PredictorAdd2_C.exit._crit_edge.us.i, %bb.d
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !56
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
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !20 ; 3 uses
  %i.gp = shl nuw i32 1, %i.go                    ; 4 uses
  %i.gq = add i32 %i.gp, -1                       ; 3 uses
  %i.gr = sub i32 0, %i.gp
  %i.gs = and i32 %i.b, %i.gr                     ; 3 uses
  %i.gt = sub nsw i32 %i.b, %i.gs                 ; 3 uses
  %i.gu = add i32 %i.gq, %i.b
  %i.gv = lshr i32 %i.gu, %i.go                   ; 3 uses
  %i.gw = icmp slt i32 %1, %2
  br i1 %i.gw, label %.lr.ph62.i, label %ColorSpaceInverseTransform_C.exit

.lr.ph62.i:                                       ; preds = %bb.f
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !22
  %i.gz = ashr i32 %1, %i.go
  %i.ha = mul nsw i32 %i.gv, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hb ; 2 uses
  %6 = zext nneg i32 %i.gs to i64
  %i.hd = sext i32 %i.b to i64
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %i.hg = sext i32 %i.gp to i64                   ; 2 uses
  %i.hh = sext i32 %i.gt to i64                   ; 4 uses
  %.idx.i = shl nuw nsw i64 %6, 2
  %i.hi = icmp sgt i32 %i.gs, 0
  br i1 %i.hi, label %.lr.ph.i.preheader.us, label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %.lr.ph62.i
  %i.hj = icmp sgt i32 %i.b, 0
  br label %._crit_edge.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph62.i, %bb.h
  %.04560.i.us = phi ptr [ %.1.i.us, %bb.h ], [ %i.hc, %.lr.ph62.i ] ; 2 uses
  %.04659.i.us = phi i32 [ %i.if, %bb.h ], [ %1, %.lr.ph62.i ]
  %.04758.i.us = phi ptr [ %.2.i.us, %bb.h ], [ %4, %.lr.ph62.i ]
  %.04957.i.us = phi ptr [ %.251.i.us, %bb.h ], [ %3, %.lr.ph62.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.hk = getelementptr inbounds nuw i8, ptr %.04957.i.us, i64 %.idx.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.054.i.us = phi ptr [ %i.hl, %.lr.ph.i.us ], [ %.04560.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.14853.i.us = phi ptr [ %i.hu, %.lr.ph.i.us ], [ %.04758.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.15052.i.us = phi ptr [ %i.ht, %.lr.ph.i.us ], [ %.04957.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.054.i.us, i64 4 ; 2 uses
  %i.hm = load i32, ptr %.054.i.us, align 4, !tbaa !9 ; 3 uses
  %i.hn = trunc i32 %i.hm to i8
  store i8 %i.hn, ptr %5, align 1, !tbaa !14
  %i.ho = lshr i32 %i.hm, 8
  %i.hp = trunc i32 %i.ho to i8
  store i8 %i.hp, ptr %i.he, align 1, !tbaa !15
  %i.hq = lshr i32 %i.hm, 16
  %i.hr = trunc i32 %i.hq to i8
  store i8 %i.hr, ptr %i.hf, align 1, !tbaa !16
  %i.hs = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  call void %i.hs(ptr noundef nonnull %5, ptr noundef %.15052.i.us, i32 noundef %i.gp, ptr noundef %.14853.i.us) #11, !inline_history !47
  %i.ht = getelementptr inbounds [4 x i8], ptr %.15052.i.us, i64 %i.hg ; 6 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %.14853.i.us, i64 %i.hg ; 4 uses
  %i.hv = icmp ult ptr %i.ht, %i.hk
  br i1 %i.hv, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !48

bb.g:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.hw = load i32, ptr %i.hl, align 4, !tbaa !9  ; 3 uses
  %i.hx = trunc i32 %i.hw to i8
  store i8 %i.hx, ptr %5, align 1, !tbaa !14
  %i.hy = lshr i32 %i.hw, 8
  %i.hz = trunc i32 %i.hy to i8
  store i8 %i.hz, ptr %i.he, align 1, !tbaa !15
  %i.ia = lshr i32 %i.hw, 16
  %i.ib = trunc i32 %i.ia to i8
  store i8 %i.ib, ptr %i.hf, align 1, !tbaa !16
  %i.ic = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  call void %i.ic(ptr noundef nonnull %5, ptr noundef nonnull %i.ht, i32 noundef %i.gt, ptr noundef nonnull %i.hu) #11, !inline_history !47
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hh
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.loopexit.us
  %.251.i.us = phi ptr [ %i.id, %bb.g ], [ %i.ht, %._crit_edge.i.loopexit.us ]
  %.2.i.us = phi ptr [ %i.ie, %bb.g ], [ %i.hu, %._crit_edge.i.loopexit.us ]
  %i.if = add nsw i32 %.04659.i.us, 1             ; 3 uses
  %i.ig = and i32 %i.if, %i.gq
  %i.ih = icmp eq i32 %i.ig, 0
  %narrow.i.us = select i1 %i.ih, i32 %i.gv, i32 0
  %.1.idx.i.us = sext i32 %narrow.i.us to i64
  %.1.i.us = getelementptr inbounds [4 x i8], ptr %.04560.i.us, i64 %.1.idx.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %exitcond.not.i53.us = icmp eq i32 %i.if, %2
  br i1 %exitcond.not.i53.us, label %ColorSpaceInverseTransform_C.exit, label %.lr.ph.i.preheader.us, !llvm.loop !49

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ii = getelementptr inbounds [4 x i8], ptr %.04957.i.us, i64 %i.hd
  %i.ij = icmp ult ptr %i.ht, %i.ii
  br i1 %i.ij, label %bb.g, label %bb.h

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %bb.j
  %.04560.i = phi ptr [ %.1.i, %bb.j ], [ %i.hc, %._crit_edge.i.preheader ] ; 2 uses
  %.04659.i = phi i32 [ %i.it, %bb.j ], [ %1, %._crit_edge.i.preheader ]
  %.04758.i = phi ptr [ %.2.i, %bb.j ], [ %4, %._crit_edge.i.preheader ] ; 3 uses
  %.04957.i = phi ptr [ %.251.i, %bb.j ], [ %3, %._crit_edge.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.hj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ik = load i32, ptr %.04560.i, align 4, !tbaa !9 ; 3 uses
  %i.il = trunc i32 %i.ik to i8
  store i8 %i.il, ptr %5, align 1, !tbaa !14
  %i.im = lshr i32 %i.ik, 8
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %i.he, align 1, !tbaa !15
  %i.io = lshr i32 %i.ik, 16
  %i.ip = trunc i32 %i.io to i8
  store i8 %i.ip, ptr %i.hf, align 1, !tbaa !16
  %i.iq = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  call void %i.iq(ptr noundef nonnull %5, ptr noundef %.04957.i, i32 noundef %i.gt, ptr noundef %.04758.i) #11, !inline_history !47
  %i.ir = getelementptr inbounds [4 x i8], ptr %.04957.i, i64 %i.hh
  %i.is = getelementptr inbounds [4 x i8], ptr %.04758.i, i64 %i.hh
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.251.i = phi ptr [ %i.ir, %bb.i ], [ %.04957.i, %._crit_edge.i ]
  %.2.i = phi ptr [ %i.is, %bb.i ], [ %.04758.i, %._crit_edge.i ]
  %i.it = add nsw i32 %.04659.i, 1                ; 3 uses
  %i.iu = and i32 %i.it, %i.gq
  %i.iv = icmp eq i32 %i.iu, 0
  %narrow.i = select i1 %i.iv, i32 %i.gv, i32 0
  %.1.idx.i = sext i32 %narrow.i to i64
  %.1.i = getelementptr inbounds [4 x i8], ptr %.04560.i, i64 %.1.idx.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %exitcond.not.i53 = icmp eq i32 %i.it, %2
  br i1 %exitcond.not.i53, label %ColorSpaceInverseTransform_C.exit, label %._crit_edge.i, !llvm.loop !49

bb.k:                                             ; preds = %bb.a
  %i.iw = icmp eq ptr %3, %4
  br i1 %i.iw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !20 ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ja = sub nsw i32 %2, %1                      ; 2 uses
  %i.jb = mul nsw i32 %i.b, %i.ja
  %i.jc = shl nuw i32 1, %i.iy
  %i.jd = add i32 %i.b, -1
  %i.je = add i32 %i.jd, %i.jc
  %i.jf = lshr i32 %i.je, %i.iy
  %i.jg = mul i32 %i.jf, %i.ja
  %i.jh = sext i32 %i.jb to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jh
  %i.jj = sext i32 %i.jg to i64                   ; 2 uses
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jk ; 2 uses
  %i.jm = shl nsw i64 %i.jj, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jl, ptr align 4 %4, i64 %i.jm, i1 false)
  tail call fastcc void @ColorIndexInverseTransform_C(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.jl, ptr noundef %4)
  br label %ColorSpaceInverseTransform_C.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  tail call fastcc void @ColorIndexInverseTransform_C(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %ColorSpaceInverseTransform_C.exit

ColorSpaceInverseTransform_C.exit:                ; preds = %bb.j, %bb.h, %bb.f, %bb.m, %bb.n, %PredictorInverseTransform_C.exit, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ColorIndexInverseTransform_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 4 uses
  %i.c = lshr i32 8, %i.b                         ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 23 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw i32 1, %i.b                      ; 7 uses
  %notmask = shl nsw i32 -1, %i.c
  %i.i = xor i32 %notmask, -1                     ; 8 uses
  %i.j = icmp slt i32 %1, %2
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit99

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not98100 = icmp sgt i32 %i.h, %i.e
  br i1 %.not98100, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %.preheader.us.preheader, label %.loopexit99

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.l = icmp ult i32 %i.e, 4
  %unroll_iter = and i32 %i.e, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod232 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit.us
  %.089123.us = phi i32 [ %i.au, %.loopexit.us ], [ %1, %.preheader.us.preheader ]
  %.090122.us = phi ptr [ %.lcssa, %.loopexit.us ], [ %4, %.preheader.us.preheader ] ; 2 uses
  %.092121.us = phi ptr [ %i.at, %.loopexit.us ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %i.m = load i32, ptr %.092121.us, align 4, !tbaa !9
  %i.n = lshr i32 %i.m, 8
  %i.o = and i32 %i.n, 255                        ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader.us.new
end_hunk_0
begin_hunk_1_@ColorIndexInverseTransform_C:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %.191102.us.us, i64 32 ; 3 uses
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !9
  %i.cu = add nsw i32 %i.av, %i.h                 ; 2 uses
  %.not98.us.us = icmp sgt i32 %i.cu, %i.e
  br i1 %.not98.us.us, label %._crit_edge.split.us.us, label %bb.d, !llvm.loop !60

._crit_edge.split.us.us:                          ; preds = %bb.d
  %i.cv = icmp slt i32 %i.av, %i.e
  br i1 %i.cv, label %bb.e, label %.loopexit.us132

bb.e:                                             ; preds = %._crit_edge.split.us.us
  %i.cw = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.cx = lshr i32 %i.cw, 8
  %i.cy = and i32 %i.cx, 255
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0120.us129 = phi i32 [ %i.cy, %bb.e ], [ %i.de, %bb.f ] ; 2 uses
  %.1119.us130 = phi i32 [ %i.av, %bb.e ], [ %i.df, %bb.f ]
  %.3118.us131 = phi ptr [ %i.ct, %bb.e ], [ %i.dd, %bb.f ] ; 2 uses
  %i.cz = and i32 %.0120.us129, %i.i
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %.3118.us131, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.3118.us131, align 4, !tbaa !9
  %i.de = lshr i32 %.0120.us129, %i.c
  %i.df = add nsw i32 %.1119.us130, 1             ; 2 uses
  %i.dg = icmp slt i32 %i.df, %i.e
  br i1 %i.dg, label %bb.f, label %.loopexit.us132.loopexit, !llvm.loop !57

.loopexit.us132.loopexit:                         ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %.193101.us.us, i64 8
  br label %.loopexit.us132

.loopexit.us132:                                  ; preds = %.loopexit.us132.loopexit, %._crit_edge.split.us.us
  %.294.us134 = phi ptr [ %i.aw, %._crit_edge.split.us.us ], [ %i.dh, %.loopexit.us132.loopexit ]
  %.4.us135 = phi ptr [ %i.ct, %._crit_edge.split.us.us ], [ %i.dd, %.loopexit.us132.loopexit ]
  %i.di = add nsw i32 %.089123.us125, 1           ; 2 uses
  %exitcond171.not = icmp eq i32 %i.di, %2
  br i1 %exitcond171.not, label %.loopexit99, label %.preheader.us124, !llvm.loop !59

.preheader.us137:                                 ; preds = %.preheader.lr.ph.split, %.loopexit.us152
  %.089123.us138 = phi i32 [ %i.ey, %.loopexit.us152 ], [ %1, %.preheader.lr.ph.split ]
  %.090122.us139 = phi ptr [ %.4.us155, %.loopexit.us152 ], [ %4, %.preheader.lr.ph.split ]
  %.092121.us140 = phi ptr [ %.294.us154, %.loopexit.us152 ], [ %3, %.preheader.lr.ph.split ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.us137
  %i.dj = phi i32 [ %i.h, %.preheader.us137 ], [ %i.ek, %bb.g ] ; 3 uses
  %.191102.us108.us = phi ptr [ %.090122.us139, %.preheader.us137 ], [ %i.ej, %bb.g ] ; 5 uses
  %.193101.us109.us = phi ptr [ %.092121.us140, %.preheader.us137 ], [ %i.dk, %bb.g ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.193101.us109.us, i64 4 ; 3 uses
  %i.dl = load i32, ptr %.193101.us109.us, align 4, !tbaa !9 ; 4 uses
  %i.dm = lshr i32 %i.dl, 8
  %i.dn = and i32 %i.dm, 3
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.191102.us108.us, i64 4
  store i32 %i.dq, ptr %.191102.us108.us, align 4, !tbaa !9
  %i.ds = lshr i32 %i.dl, 10
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %.191102.us108.us, i64 8
  store i32 %i.dw, ptr %i.dr, align 4, !tbaa !9
  %i.dy = lshr i32 %i.dl, 12
  %i.dz = and i32 %i.dy, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %.191102.us108.us, i64 12
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !9
  %i.ee = lshr i32 %i.dl, 14
  %i.ef = and i32 %i.ee, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %.191102.us108.us, i64 16 ; 3 uses
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !9
  %i.ek = add nsw i32 %i.dj, %i.h                 ; 2 uses
  %.not98.us111.us = icmp sgt i32 %i.ek, %i.e
  br i1 %.not98.us111.us, label %._crit_edge.split.split.us.us, label %bb.g, !llvm.loop !60

._crit_edge.split.split.us.us:                    ; preds = %bb.g
  %i.el = icmp slt i32 %i.dj, %i.e
  br i1 %i.el, label %bb.h, label %.loopexit.us152

bb.h:                                             ; preds = %._crit_edge.split.split.us.us
  %i.em = load i32, ptr %i.dk, align 4, !tbaa !9
  %i.en = lshr i32 %i.em, 8
  %i.eo = and i32 %i.en, 255
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0120.us149 = phi i32 [ %i.eo, %bb.h ], [ %i.eu, %bb.i ] ; 2 uses
  %.1119.us150 = phi i32 [ %i.dj, %bb.h ], [ %i.ev, %bb.i ]
  %.3118.us151 = phi ptr [ %i.ej, %bb.h ], [ %i.et, %bb.i ] ; 2 uses
  %i.ep = and i32 %.0120.us149, %i.i
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %.3118.us151, i64 4 ; 2 uses
  store i32 %i.es, ptr %.3118.us151, align 4, !tbaa !9
  %i.eu = lshr i32 %.0120.us149, %i.c
  %i.ev = add nsw i32 %.1119.us150, 1             ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.e
  br i1 %i.ew, label %bb.i, label %.loopexit.us152.loopexit, !llvm.loop !57

.loopexit.us152.loopexit:                         ; preds = %bb.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.193101.us109.us, i64 8
  br label %.loopexit.us152

.loopexit.us152:                                  ; preds = %.loopexit.us152.loopexit, %._crit_edge.split.split.us.us
  %.294.us154 = phi ptr [ %i.dk, %._crit_edge.split.split.us.us ], [ %i.ex, %.loopexit.us152.loopexit ]
  %.4.us155 = phi ptr [ %i.ej, %._crit_edge.split.split.us.us ], [ %i.et, %.loopexit.us152.loopexit ]
  %i.ey = add nsw i32 %.089123.us138, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ey, %2
  br i1 %exitcond.not, label %.loopexit99, label %.preheader.us137, !llvm.loop !59

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.loopexit
  %.089123 = phi i32 [ %i.gc, %.loopexit ], [ %1, %.preheader.lr.ph.split ]
  %.090122 = phi ptr [ %.4, %.loopexit ], [ %4, %.preheader.lr.ph.split ]
  %.092121 = phi ptr [ %.294, %.loopexit ], [ %3, %.preheader.lr.ph.split ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %i.ez = phi i32 [ %i.h, %.preheader ], [ %i.fo, %bb.j ] ; 3 uses
  %.191102 = phi ptr [ %.090122, %.preheader ], [ %i.fn, %bb.j ] ; 3 uses
  %.193101 = phi ptr [ %.092121, %.preheader ], [ %i.fa, %bb.j ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.193101, i64 4 ; 3 uses
  %i.fb = load i32, ptr %.193101, align 4, !tbaa !9 ; 2 uses
  %i.fc = lshr i32 %i.fb, 8
  %i.fd = and i32 %i.fc, 15
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %.191102, i64 4
  store i32 %i.fg, ptr %.191102, align 4, !tbaa !9
  %i.fi = lshr i32 %i.fb, 12
  %i.fj = and i32 %i.fi, 15
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %.191102, i64 8 ; 3 uses
  store i32 %i.fm, ptr %i.fh, align 4, !tbaa !9
  %i.fo = add nsw i32 %i.ez, %i.h                 ; 2 uses
  %.not98 = icmp sgt i32 %i.fo, %i.e
  br i1 %.not98, label %._crit_edge.split.split, label %bb.j, !llvm.loop !60

._crit_edge.split.split:                          ; preds = %bb.j
  %i.fp = icmp slt i32 %i.ez, %i.e
  br i1 %i.fp, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %._crit_edge.split.split
  %i.fq = load i32, ptr %i.fa, align 4, !tbaa !9
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = and i32 %i.fr, 255
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.0120 = phi i32 [ %i.fs, %bb.k ], [ %i.fy, %bb.l ] ; 2 uses
  %.1119 = phi i32 [ %i.ez, %bb.k ], [ %i.fz, %bb.l ]
  %.3118 = phi ptr [ %i.fn, %bb.k ], [ %i.fx, %bb.l ] ; 2 uses
  %i.ft = and i32 %.0120, %i.i
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %.3118, i64 4 ; 2 uses
  store i32 %i.fw, ptr %.3118, align 4, !tbaa !9
  %i.fy = lshr i32 %.0120, %i.c
  %i.fz = add nsw i32 %.1119, 1                   ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.e
  br i1 %i.ga, label %bb.l, label %.loopexit.loopexit, !llvm.loop !57

.loopexit.loopexit:                               ; preds = %bb.l
  %i.gb = getelementptr inbounds nuw i8, ptr %.193101, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge.split.split
  %.294 = phi ptr [ %i.fa, %._crit_edge.split.split ], [ %i.gb, %.loopexit.loopexit ]
  %.4 = phi ptr [ %i.fn, %._crit_edge.split.split ], [ %i.fx, %.loopexit.loopexit ]
  %i.gc = add nsw i32 %.089123, 1                 ; 2 uses
  %exitcond172.not = icmp eq i32 %i.gc, %2
  br i1 %exitcond172.not, label %.loopexit99, label %.preheader, !llvm.loop !59

bb.m:                                             ; preds = %bb.a
  %i.gd = load ptr, ptr @VP8LMapColor32b, align 8, !tbaa !25
  tail call void %i.gd(ptr noundef %3, ptr noundef %i.g, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %i.e) #11
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit.us152, %.loopexit.us132, %.loopexit, %.loopexit.us, %bb.b, %.preheader.lr.ph.split.us, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = zext nneg i32 %1 to i64
  %.idx = shl nuw nsw i64 %3, 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.l, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.d = load i32, ptr %.012, align 4, !tbaa !9   ; 3 uses
  %i.e = lshr i32 %i.d, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.f, ptr %.01011, align 1, !tbaa !23
  %i.h = lshr i32 %i.d, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !23
  %i.k = trunc i32 %i.d to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  %i.m = icmp ult ptr %i.c, %i.a
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = zext nneg i32 %1 to i64
  %.idx = shl nuw nsw i64 %3, 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01213 = phi ptr [ %i.o, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.d = load i32, ptr %.014, align 4, !tbaa !9   ; 4 uses
  %i.e = lshr i32 %i.d, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.f, ptr %.01213, align 1, !tbaa !23
  %i.h = lshr i32 %i.d, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !23
  %i.k = trunc i32 %i.d to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.01213, i64 3
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  %i.m = lshr i32 %i.d, 24
  %i.n = trunc nuw i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.01213, i64 4
  store i8 %i.n, ptr %i.l, align 1, !tbaa !23
  %i.p = icmp ult ptr %i.c, %i.a
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA4444_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = zext i32 %1 to i64
  %.idx = shl nuw nsw i64 %3, 2                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 4
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = shl nuw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.p
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9 ; 4 uses
  %i.q = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.r = and <4 x i32> %i.q, splat (i32 240)
  %i.s = lshr <4 x i32> %wide.load, splat (i32 12)
  %i.t = and <4 x i32> %i.s, splat (i32 15)
  %i.u = or disjoint <4 x i32> %i.r, %i.t
  %i.v = and <4 x i32> %wide.load, splat (i32 240)
  %i.w = lshr <4 x i32> %wide.load, splat (i32 28)
  %i.x = or disjoint <4 x i32> %i.v, %i.w
  %i.y = shufflevector <4 x i32> %i.u, <4 x i32> %i.x, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.y to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.aa, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.an, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ab = load i32, ptr %.014, align 4, !tbaa !9  ; 4 uses
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = and i32 %i.ac, 240
  %i.ae = lshr i32 %i.ab, 12
  %i.af = and i32 %i.ae, 15
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = and i32 %i.ab, 240
  %i.aj = lshr i32 %i.ab, 28
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = trunc nuw i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ah, ptr %.01213, align 1, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !23
  %i.ao = icmp ult ptr %i.aa, %i.a
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB565_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = zext i32 %1 to i64
  %.idx = shl nuw nsw i64 %3, 2                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.d = add i64 %.idx, %i.c
  %i.e = add i64 %i.c, 4
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.e)
  %i.g = xor i64 %i.c, -1
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.k = shl i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = shl nuw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.p
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9 ; 4 uses
  %i.q = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.r = and <4 x i32> %i.q, splat (i32 248)
  %i.s = lshr <4 x i32> %wide.load, splat (i32 13)
  %i.t = and <4 x i32> %i.s, splat (i32 7)
  %i.u = or disjoint <4 x i32> %i.r, %i.t
  %i.v = lshr <4 x i32> %wide.load, splat (i32 5)
  %i.w = and <4 x i32> %i.v, splat (i32 224)
  %i.x = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.y = and <4 x i32> %i.x, splat (i32 31)
  %i.z = or disjoint <4 x i32> %i.w, %i.y
  %i.aa = shufflevector <4 x i32> %i.u, <4 x i32> %i.z, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.aa to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.ac, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.ar, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ad = load i32, ptr %.014, align 4, !tbaa !9  ; 4 uses
  %i.ae = lshr i32 %i.ad, 16
  %i.af = and i32 %i.ae, 248
  %i.ag = lshr i32 %i.ad, 13
  %i.ah = and i32 %i.ag, 7
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = lshr i32 %i.ad, 5
  %i.al = and i32 %i.ak, 224
  %i.am = lshr i32 %i.ad, 3
  %i.an = and i32 %i.am, 31
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = trunc nuw i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.aj, ptr %.01213, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !23
  %i.as = icmp ult ptr %i.ac, %i.a
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToBGR_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %3 = zext nneg i32 %1 to i64
  %.idx = shl nuw nsw i64 %3, 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.l, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.d = load i32, ptr %.012, align 4, !tbaa !9   ; 3 uses
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.e, ptr %.01011, align 1, !tbaa !23
  %i.g = lshr i32 %i.d, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.h, ptr %i.f, align 1, !tbaa !23
  %i.j = lshr i32 %i.d, 16
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.k, ptr %i.i, align 1, !tbaa !23
  %i.m = icmp ult ptr %i.c, %i.a
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LConvertFromBGRA(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
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
  %i.b = load ptr, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !25
  tail call void %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  tail call void %i.c(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  tail call void %i.d(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  %i.e = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.e(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.e:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !25
  tail call void %i.f(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.f:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %.idx.i.a = shl nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i.a, i1 false), !alias.scope !84
  br label %CopyOrSwap.exit

bb.g:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64
  %.idx.i41.a = shl nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i41.a, i1 false), !alias.scope !85
  %i.i = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.i(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %4 = zext i32 %1 to i64
  %.idx.i42 = shl nuw nsw i64 %4, 2               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i42
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph.i.preheader, label %CopyOrSwap.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.l = add i64 %.idx.i42, %i.a
  %i.m = add i64 %i.a, 4
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.m)
  %i.o = xor i64 %i.a, -1
  %i.p = add i64 %i.n, %i.o                       ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.p, 28
  br i1 %min.iters.check52, label %.lr.ph.i.preheader66, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.i.preheader
  %n.vec54 = and i64 %i.r, 9223372036854775800    ; 3 uses
  %i.s = shl i64 %n.vec54, 2                      ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %3, i64 %i.s
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.v = shl i64 %index56, 2                      ; 2 uses
  %next.gep57 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %next.gep58 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !9, !alias.scope !86
  %wide.load60 = load <4 x i32>, ptr %i.w, align 4, !tbaa !9, !alias.scope !86
  %i.x = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load59)
  %i.y = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load60)
  %i.z = getelementptr i8, ptr %next.gep58, i64 16
  store <4 x i32> %i.x, ptr %next.gep58, align 1, !alias.scope !87
  store <4 x i32> %i.y, ptr %i.z, align 1, !alias.scope !87
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.aa, label %middle.block62, label %vector.body55, !llvm.loop !77

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.r, %n.vec54
  br i1 %cmp.n63, label %CopyOrSwap.exit, label %.lr.ph.i.preheader66

.lr.ph.i.preheader66:                             ; preds = %.lr.ph.i.preheader, %middle.block62
  %.013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block62 ]
  %.01112.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.u, %middle.block62 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader66, %.lr.ph.i
  %.013.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.013.i.ph, %.lr.ph.i.preheader66 ] ; 2 uses
  %.01112.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01112.i.ph, %.lr.ph.i.preheader66 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %.013.i, align 4, !tbaa !9, !alias.scope !86
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %.01112.i, align 1, !alias.scope !87
  %i.ae = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  %i.af = icmp ult ptr %i.ab, %i.j
  br i1 %i.af, label %.lr.ph.i, label %CopyOrSwap.exit, !llvm.loop !78

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %5 = zext i32 %1 to i64
  %.idx.i43 = shl nuw nsw i64 %5, 2               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i43
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph.i44.preheader, label %CopyOrSwap.exit47

.lr.ph.i44.preheader:                             ; preds = %bb.i
  %i.ai = add i64 %.idx.i43, %i.a
  %i.aj = add i64 %i.a, 4
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  %i.al = xor i64 %i.a, -1
  %i.am = add i64 %i.ak, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 28
  br i1 %min.iters.check, label %.lr.ph.i44.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %3, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.as ; 2 uses
  %next.gep48 = getelementptr i8, ptr %3, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9, !alias.scope !88
  %wide.load49 = load <4 x i32>, ptr %i.at, align 4, !tbaa !9, !alias.scope !88
  %i.au = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.av = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load49)
  %i.aw = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> %i.au, ptr %next.gep48, align 1, !alias.scope !89
  store <4 x i32> %i.av, ptr %i.aw, align 1, !alias.scope !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %CopyOrSwap.exit47, label %.lr.ph.i44.preheader67

.lr.ph.i44.preheader67:                           ; preds = %.lr.ph.i44.preheader, %middle.block
  %.013.i45.ph = phi ptr [ %0, %.lr.ph.i44.preheader ], [ %i.aq, %middle.block ]
  %.01112.i46.ph = phi ptr [ %3, %.lr.ph.i44.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader67, %.lr.ph.i44
  %.013.i45 = phi ptr [ %i.ay, %.lr.ph.i44 ], [ %.013.i45.ph, %.lr.ph.i44.preheader67 ] ; 2 uses
  %.01112.i46 = phi ptr [ %i.bb, %.lr.ph.i44 ], [ %.01112.i46.ph, %.lr.ph.i44.preheader67 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i45, i64 4 ; 2 uses
  %i.az = load i32, ptr %.013.i45, align 4, !tbaa !9, !alias.scope !88
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %.01112.i46, align 1, !alias.scope !89
  %i.bb = getelementptr inbounds nuw i8, ptr %.01112.i46, i64 4
  %i.bc = icmp ult ptr %i.ay, %i.ag
  br i1 %i.bc, label %.lr.ph.i44, label %CopyOrSwap.exit47, !llvm.loop !83

CopyOrSwap.exit47:                                ; preds = %.lr.ph.i44, %middle.block, %bb.i
  %i.bd = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.bd(ptr noundef %3, i32 noundef 1, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.j:                                             ; preds = %bb.a
  %i.be = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  tail call void %i.be(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.k:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  tail call void %i.bf(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  %i.bg = load ptr, ptr @WebPApplyAlphaMultiply4444, align 8, !tbaa !25
  tail call void %i.bg(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.l:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !25
  tail call void %i.bh(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

CopyOrSwap.exit:                                  ; preds = %.lr.ph.i, %middle.block62, %bb.h, %bb.a, %bb.l, %bb.k, %bb.j, %CopyOrSwap.exit47, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LDspInit() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8LDspInit_body_lock) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !25
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8LDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @VP8LPredictor0_C, ptr @VP8LPredictors, align 16, !tbaa !25
  store ptr @VP8LPredictor1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 8), align 8, !tbaa !25
  store ptr @VP8LPredictor2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 16), align 16, !tbaa !25
  store ptr @VP8LPredictor3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 24), align 8, !tbaa !25
  store ptr @VP8LPredictor4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 32), align 16, !tbaa !25
  store ptr @VP8LPredictor5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 40), align 8, !tbaa !25
  store ptr @VP8LPredictor6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 48), align 16, !tbaa !25
  store ptr @VP8LPredictor7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 56), align 8, !tbaa !25
  store ptr @VP8LPredictor8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 64), align 16, !tbaa !25
  store ptr @VP8LPredictor9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 72), align 8, !tbaa !25
  store ptr @VP8LPredictor10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 80), align 16, !tbaa !25
  store ptr @VP8LPredictor11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 88), align 8, !tbaa !25
  store ptr @VP8LPredictor12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 96), align 16, !tbaa !25
  store ptr @VP8LPredictor13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 104), align 8, !tbaa !25
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 112), align 16, !tbaa !25
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 120), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd, align 16, !tbaa !25
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 8), align 8, !tbaa !25
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 16), align 16, !tbaa !25
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 24), align 8, !tbaa !25
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 32), align 16, !tbaa !25
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 40), align 8, !tbaa !25
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 48), align 16, !tbaa !25
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 56), align 8, !tbaa !25
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 64), align 16, !tbaa !25
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 72), align 8, !tbaa !25
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 80), align 16, !tbaa !25
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 88), align 8, !tbaa !25
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 96), align 16, !tbaa !25
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 104), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 112), align 16, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 120), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd_C, align 16, !tbaa !25
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 8), align 8, !tbaa !25
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 16), align 16, !tbaa !25
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 24), align 8, !tbaa !25
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 32), align 16, !tbaa !25
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 40), align 8, !tbaa !25
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 48), align 16, !tbaa !25
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 56), align 8, !tbaa !25
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 64), align 16, !tbaa !25
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 72), align 8, !tbaa !25
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 80), align 16, !tbaa !25
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 88), align 8, !tbaa !25
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 96), align 16, !tbaa !25
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 104), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 112), align 16, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 120), align 8, !tbaa !25
  store ptr @VP8LAddGreenToBlueAndRed_C, ptr @VP8LAddGreenToBlueAndRed, align 8, !tbaa !25
  store ptr @VP8LTransformColorInverse_C, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGBA_C, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGB_C, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToBGR_C, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGBA4444_C, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGB565_C, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !25
  store ptr @MapARGB_C, ptr @VP8LMapColor32b, align 8, !tbaa !25
  store ptr @MapAlpha_C, ptr @VP8LMapColor8b, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #11, !inline_history !90
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %VP8LDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8LDspInitSSE2() #11
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  %i.f = tail call i32 %i.e(i32 noundef 3) #11, !inline_history !90
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %VP8LDspInit_body.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInitSSE41() #11
  %i.g = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  %i.h = tail call i32 %i.g(i32 noundef 5) #11, !inline_history !90
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %VP8LDspInit_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @VP8LDspInitAVX2() #11
  br label %VP8LDspInit_body.exit

VP8LDspInit_body.exit:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  store ptr %i.i, ptr @VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !25
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8LDspInit_body_lock) #11 ; 0 uses
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
end_hunk_1

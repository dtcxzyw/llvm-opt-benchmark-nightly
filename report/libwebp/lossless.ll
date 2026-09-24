Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless?download=true
inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LInverseTransform:bb.a
  %i.ak = and i32 %i.ai, 16711935
  %i.al = or disjoint i32 %i.aj, %i.ak            ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i71.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !9, !alias.scope !50
  %indvars.iv.next.i71.i.1 = add nuw nsw i64 %indvars.iv.i70.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %PredictorAdd1_C.exit.i.loopexit.unr-lcssa, label %.lr.ph.i69.i, !llvm.loop !0

PredictorAdd1_C.exit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i69.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PredictorAdd1_C.exit.i, label %.lr.ph.i69.i.epil.preheader

.lr.ph.i69.i.epil.preheader:                      ; preds = %PredictorAdd1_C.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i70.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i71.i.1, %PredictorAdd1_C.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.010.i.i.epil.init = phi i32 [ %i.l, %.lr.ph.preheader.i.i ], [ %i.al, %PredictorAdd1_C.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i70.i.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9, !noalias !50 ; 2 uses
  %i.ap = and i32 %i.ao, -16711936
  %i.aq = and i32 %.010.i.i.epil.init, -16711936
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = and i32 %i.ao, 16711935
  %i.at = and i32 %.010.i.i.epil.init, 16711935
  %i.au = add nuw nsw i32 %i.as, %i.at
  %i.av = and i32 %i.ar, -16711936
  %i.aw = and i32 %i.au, 16711935
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i70.i.epil.init
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !9, !alias.scope !50
  br label %PredictorAdd1_C.exit.i

PredictorAdd1_C.exit.i:                           ; preds = %.lr.ph.i69.i.epil.preheader, %PredictorAdd1_C.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %i.az = sext i32 %i.b to i64                    ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.az
  br label %bb.d

bb.d:                                             ; preds = %PredictorAdd1_C.exit.i, %bb.c
  %.064.i = phi i32 [ 1, %PredictorAdd1_C.exit.i ], [ %1, %bb.c ] ; 11 uses
  %.062.i = phi ptr [ %i.ba, %PredictorAdd1_C.exit.i ], [ %3, %bb.c ] ; 7 uses
  %.060.i = phi ptr [ %i.bb, %PredictorAdd1_C.exit.i ], [ %4, %bb.c ] ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20 ; 3 uses
  %i.be = shl nuw i32 1, %i.bd                    ; 4 uses
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = add i32 %i.b, -1
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = lshr i32 %i.bh, %i.bd                   ; 2 uses
  %i.bj = icmp slt i32 %.064.i, %2
  br i1 %i.bj, label %.lr.ph84.i, label %PredictorInverseTransform_C.exit

.lr.ph84.i:                                       ; preds = %bb.d
  %i.bk = sext i32 %i.b to i64                    ; 15 uses
  %i.bl = sub nsw i64 0, %i.bk                    ; 4 uses
  %i.bm = icmp sgt i32 %i.b, 1
  %i.bn = sub i32 0, %i.be
  br i1 %i.bm, label %.lr.ph84.split.us.preheader.i, label %.lr.ph84.split.i.lver.check

.lr.ph84.split.i.lver.check:                      ; preds = %.lr.ph84.i
  %ident.check.not = icmp eq i32 %i.b, 1
  br i1 %ident.check.not, label %.lr.ph84.split.i.ph, label %.lr.ph84.split.i.lver.orig.preheader

.lr.ph84.split.i.lver.orig.preheader:             ; preds = %.lr.ph84.split.i.lver.check
  %i.bo = sub i32 %2, %.064.i
  %.neg = add i32 %.064.i, 1
  %xtraiter86 = and i32 %i.bo, 1
  %lcmp.mod87.not = icmp eq i32 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph84.split.i.lver.orig.prol.loopexit, label %.lr.ph84.split.i.lver.orig.prol

.lr.ph84.split.i.lver.orig.prol:                  ; preds = %.lr.ph84.split.i.lver.orig.preheader
  %i.bp = getelementptr inbounds [4 x i8], ptr %.060.i, i64 %i.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.br = load i32, ptr %.062.i, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.bs = and i32 %i.br, -16711936
  %i.bt = and i32 %i.bq, -16711936
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = and i32 %i.br, 16711935
  %i.bw = and i32 %i.bq, 16711935
  %i.bx = add nuw nsw i32 %i.bv, %i.bw
  %i.by = and i32 %i.bu, -16711936
  %i.bz = and i32 %i.bx, 16711935
  %i.ca = or disjoint i32 %i.by, %i.bz
  store i32 %i.ca, ptr %.060.i, align 4, !tbaa !9, !alias.scope !51
  %i.cb = getelementptr inbounds [4 x i8], ptr %.062.i, i64 %i.bk
  %i.cc = getelementptr inbounds [4 x i8], ptr %.060.i, i64 %i.bk
  %i.cd = add nsw i32 %.064.i, 1
  br label %.lr.ph84.split.i.lver.orig.prol.loopexit

.lr.ph84.split.i.lver.orig.prol.loopexit:         ; preds = %.lr.ph84.split.i.lver.orig.prol, %.lr.ph84.split.i.lver.orig.preheader
  %.05982.i.lver.orig.unr = phi i32 [ %.064.i, %.lr.ph84.split.i.lver.orig.preheader ], [ %i.cd, %.lr.ph84.split.i.lver.orig.prol ]
  %.16181.i.lver.orig.unr = phi ptr [ %.060.i, %.lr.ph84.split.i.lver.orig.preheader ], [ %i.cc, %.lr.ph84.split.i.lver.orig.prol ]
  %.16380.i.lver.orig.unr = phi ptr [ %.062.i, %.lr.ph84.split.i.lver.orig.preheader ], [ %i.cb, %.lr.ph84.split.i.lver.orig.prol ]
  %i.ce = icmp eq i32 %2, %.neg
  br i1 %i.ce, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i.lver.orig

.lr.ph84.split.i.lver.orig:                       ; preds = %.lr.ph84.split.i.lver.orig.prol.loopexit, %.lr.ph84.split.i.lver.orig
  %.05982.i.lver.orig = phi i32 [ %i.dd, %.lr.ph84.split.i.lver.orig ], [ %.05982.i.lver.orig.unr, %.lr.ph84.split.i.lver.orig.prol.loopexit ]
  %.16181.i.lver.orig = phi ptr [ %i.dc, %.lr.ph84.split.i.lver.orig ], [ %.16181.i.lver.orig.unr, %.lr.ph84.split.i.lver.orig.prol.loopexit ] ; 3 uses
  %.16380.i.lver.orig = phi ptr [ %i.db, %.lr.ph84.split.i.lver.orig ], [ %.16380.i.lver.orig.unr, %.lr.ph84.split.i.lver.orig.prol.loopexit ] ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %.16181.i.lver.orig, i64 %i.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.ch = load i32, ptr %.16380.i.lver.orig, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.ci = and i32 %i.ch, -16711936
  %i.cj = and i32 %i.cg, -16711936
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = and i32 %i.ch, 16711935
  %i.cm = and i32 %i.cg, 16711935
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  %i.co = and i32 %i.ck, -16711936                ; 2 uses
  %i.cp = and i32 %i.cn, 16711935                 ; 2 uses
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.16181.i.lver.orig, align 4, !tbaa !9, !alias.scope !51
  %i.cr = getelementptr inbounds [4 x i8], ptr %.16380.i.lver.orig, i64 %i.bk ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.16181.i.lver.orig, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !9, !noalias !52 ; 2 uses
  %i.cu = and i32 %i.ct, -16711936
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = and i32 %i.ct, 16711935
  %i.cx = add nuw nsw i32 %i.cw, %i.cp
  %i.cy = and i32 %i.cv, -16711936
  %i.cz = and i32 %i.cx, 16711935
  %i.da = or disjoint i32 %i.cy, %i.cz
  store i32 %i.da, ptr %i.cs, align 4, !tbaa !9, !alias.scope !52
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.bk
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.bk
  %i.dd = add nsw i32 %.05982.i.lver.orig, 2      ; 2 uses
  %exitcond.not.i.lver.orig.1 = icmp eq i32 %i.dd, %2
  br i1 %exitcond.not.i.lver.orig.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i.lver.orig, !llvm.loop !41

.lr.ph84.split.i.ph:                              ; preds = %.lr.ph84.split.i.lver.check
  %scevgep = getelementptr i8, ptr %.060.i, i64 -4
  %load_initial = load i32, ptr %scevgep, align 4 ; 3 uses
  %i.de = sub i32 %2, %.064.i
  %.neg90 = add i32 %.064.i, 1
  %xtraiter88 = and i32 %i.de, 1
  %lcmp.mod89.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph84.split.i.prol.loopexit, label %.lr.ph84.split.i.prol

.lr.ph84.split.i.prol:                            ; preds = %.lr.ph84.split.i.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.df = load i32, ptr %.062.i, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.dg = and i32 %i.df, -16711936
  %i.dh = and i32 %load_initial, -16711936
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = and i32 %i.df, 16711935
  %i.dk = and i32 %load_initial, 16711935
  %i.dl = add nuw nsw i32 %i.dj, %i.dk
  %i.dm = and i32 %i.di, -16711936
  %i.dn = and i32 %i.dl, 16711935
  %i.do = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  store i32 %i.do, ptr %.060.i, align 4, !tbaa !9, !alias.scope !51
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.eb = load i32, ptr %.16380.us.i, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.ec = and i32 %i.eb, -16711936
  %i.ed = and i32 %i.ea, -16711936
  %i.ee = add i32 %i.ec, %i.ed
  %i.ef = and i32 %i.eb, 16711935
  %i.eg = and i32 %i.ea, 16711935
  %i.eh = add nuw nsw i32 %i.ef, %i.eg
  %i.ei = and i32 %i.ee, -16711936
  %i.ej = and i32 %i.eh, 16711935
  %i.ek = or disjoint i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %.16181.us.i, align 4, !tbaa !9, !alias.scope !51
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
  tail call void %i.er(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ex, i32 noundef %i.ey, ptr noundef nonnull %i.ew) #11, !inline_history !42
  %i.ez = icmp slt i32 %i.et, %i.b
  br i1 %i.ez, label %PredictorAdd2_C.exit.us.i, label %PredictorAdd2_C.exit._crit_edge.us.i, !llvm.loop !43

PredictorAdd2_C.exit._crit_edge.us.i:             ; preds = %PredictorAdd2_C.exit.us.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.16380.us.i, i64 %i.bk
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.16181.us.i, i64 %i.bk
  %i.fc = add i32 %.05982.us.i, 1                 ; 3 uses
  %i.fd = and i32 %i.fc, %i.bf
  %i.fe = icmp eq i32 %i.fd, 0
  %narrow.us.i = select i1 %i.fe, i32 %i.bi, i32 0
  %.1.idx.us.i = sext i32 %narrow.us.i to i64
  %.1.us.i = getelementptr inbounds [4 x i8], ptr %.05883.us.i, i64 %.1.idx.us.i
  %exitcond86.not.i = icmp eq i32 %i.fc, %2
  br i1 %exitcond86.not.i, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.us.i, !llvm.loop !41

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i
  %store_forwarded = phi i32 [ %i.fy, %.lr.ph84.split.i ], [ %store_forwarded.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.05982.i = phi i32 [ %i.gb, %.lr.ph84.split.i ], [ %.05982.i.unr, %.lr.ph84.split.i.prol.loopexit ]
  %.16181.i = phi ptr [ %i.ga, %.lr.ph84.split.i ], [ %.16181.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  %.16380.i = phi ptr [ %i.fz, %.lr.ph84.split.i ], [ %.16380.i.unr, %.lr.ph84.split.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ff = load i32, ptr %.16380.i, align 4, !tbaa !9, !noalias !51 ; 2 uses
  %i.fg = and i32 %i.ff, -16711936
  %i.fh = and i32 %store_forwarded, -16711936
  %i.fi = add i32 %i.fg, %i.fh
  %i.fj = and i32 %i.ff, 16711935
  %i.fk = and i32 %store_forwarded, 16711935
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = and i32 %i.fi, -16711936                ; 2 uses
  %i.fn = and i32 %i.fl, 16711935                 ; 2 uses
  %i.fo = or disjoint i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %.16181.i, align 4, !tbaa !9, !alias.scope !51
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.16380.i, i64 %i.bk ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.16181.i, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !9, !noalias !53 ; 2 uses
  %i.fs = and i32 %i.fr, -16711936
  %i.ft = add i32 %i.fs, %i.fm
  %i.fu = and i32 %i.fr, 16711935
  %i.fv = add nuw nsw i32 %i.fu, %i.fn
  %i.fw = and i32 %i.ft, -16711936
  %i.fx = and i32 %i.fv, 16711935
  %i.fy = or disjoint i32 %i.fw, %i.fx            ; 2 uses
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !9, !alias.scope !53
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.bk
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.bk
  %i.gb = add nsw i32 %.05982.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.gb, %2
  br i1 %exitcond.not.i.1, label %PredictorInverseTransform_C.exit, label %.lr.ph84.split.i, !llvm.loop !41

PredictorInverseTransform_C.exit:                 ; preds = %.lr.ph84.split.i.lver.orig.prol.loopexit, %.lr.ph84.split.i.lver.orig, %.lr.ph84.split.i.prol.loopexit, %.lr.ph84.split.i, %PredictorAdd2_C.exit._crit_edge.us.i, %bb.d
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !54
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
  %i.hd = sext i32 %i.gs to i64
  %i.he = sext i32 %i.b to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %i.hh = sext i32 %i.gp to i64                   ; 2 uses
  %i.hi = sext i32 %i.gt to i64                   ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.hd, 2
  %i.hj = icmp sgt i32 %i.gs, 0
  br i1 %i.hj, label %.lr.ph.i.preheader.us, label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %.lr.ph62.i
  %i.hk = icmp sgt i32 %i.b, 0
  br label %._crit_edge.i

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph62.i, %bb.h
  %.04560.i.us = phi ptr [ %.1.i.us, %bb.h ], [ %i.hc, %.lr.ph62.i ] ; 2 uses
  %.04659.i.us = phi i32 [ %i.ig, %bb.h ], [ %1, %.lr.ph62.i ]
  %.04758.i.us = phi ptr [ %.2.i.us, %bb.h ], [ %4, %.lr.ph62.i ]
  %.04957.i.us = phi ptr [ %.251.i.us, %bb.h ], [ %3, %.lr.ph62.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.hl = getelementptr inbounds nuw i8, ptr %.04957.i.us, i64 %.idx.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.054.i.us = phi ptr [ %i.hm, %.lr.ph.i.us ], [ %.04560.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.14853.i.us = phi ptr [ %i.hv, %.lr.ph.i.us ], [ %.04758.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %.15052.i.us = phi ptr [ %i.hu, %.lr.ph.i.us ], [ %.04957.i.us, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.054.i.us, i64 4 ; 2 uses
  %i.hn = load i32, ptr %.054.i.us, align 4, !tbaa !9 ; 3 uses
  %i.ho = trunc i32 %i.hn to i8
  store i8 %i.ho, ptr %5, align 1, !tbaa !14
  %i.hp = lshr i32 %i.hn, 8
  %i.hq = trunc i32 %i.hp to i8
  store i8 %i.hq, ptr %i.hf, align 1, !tbaa !15
  %i.hr = lshr i32 %i.hn, 16
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr %i.hg, align 1, !tbaa !16
  %i.ht = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  call void %i.ht(ptr noundef nonnull %5, ptr noundef %.15052.i.us, i32 noundef %i.gp, ptr noundef %.14853.i.us) #11, !inline_history !45
  %i.hu = getelementptr inbounds [4 x i8], ptr %.15052.i.us, i64 %i.hh ; 6 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %.14853.i.us, i64 %i.hh ; 4 uses
  %i.hw = icmp ult ptr %i.hu, %i.hl
  br i1 %i.hw, label %.lr.ph.i.us, label %._crit_edge.i.loopexit.us, !llvm.loop !46

bb.g:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.hx = load i32, ptr %i.hm, align 4, !tbaa !9  ; 3 uses
  %i.hy = trunc i32 %i.hx to i8
  store i8 %i.hy, ptr %5, align 1, !tbaa !14
  %i.hz = lshr i32 %i.hx, 8
  %i.ia = trunc i32 %i.hz to i8
  store i8 %i.ia, ptr %i.hf, align 1, !tbaa !15
  %i.ib = lshr i32 %i.hx, 16
  %i.ic = trunc i32 %i.ib to i8
  store i8 %i.ic, ptr %i.hg, align 1, !tbaa !16
  %i.id = load ptr, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  call void %i.id(ptr noundef nonnull %5, ptr noundef nonnull %i.hu, i32 noundef %i.gt, ptr noundef nonnull %i.hv) #11, !inline_history !45
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hi
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.loopexit.us
  %.251.i.us = phi ptr [ %i.ie, %bb.g ], [ %i.hu, %._crit_edge.i.loopexit.us ]
  %.2.i.us = phi ptr [ %i.if, %bb.g ], [ %i.hv, %._crit_edge.i.loopexit.us ]
  %i.ig = add i32 %.04659.i.us, 1                 ; 3 uses
  %i.ih = and i32 %i.ig, %i.gq
  %i.ii = icmp eq i32 %i.ih, 0
  %narrow.i.us = select i1 %i.ii, i32 %i.gv, i32 0
  %.1.idx.i.us = sext i32 %narrow.i.us to i64
  %.1.i.us = getelementptr inbounds [4 x i8], ptr %.04560.i.us, i64 %.1.idx.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %exitcond.not.i53.us = icmp eq i32 %i.ig, %2
  br i1 %exitcond.not.i53.us, label %ColorSpaceInverseTransform_C.exit, label %.lr.ph.i.preheader.us, !llvm.loop !47

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph.i.us
  %i.ij = getelementptr inbounds [4 x i8], ptr %.04957.i.us, i64 %i.he
  %i.ik = icmp ult ptr %i.hu, %i.ij
  br i1 %i.ik, label %bb.g, label %bb.h

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %bb.j
  %.04560.i = phi ptr [ %.1.i, %bb.j ], [ %i.hc, %._crit_edge.i.preheader ] ; 2 uses
  %.04659.i = phi i32 [ %i.iu, %bb.j ], [ %1, %._crit_edge.i.preheader ]
  %.04758.i = phi ptr [ %.2.i, %bb.j ], [ %4, %._crit_edge.i.preheader ] ; 3 uses
  %.04957.i = phi ptr [ %.251.i, %bb.j ], [ %3, %._crit_edge.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.hk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.il = load i32, ptr %.04560.i, align 4, !tbaa !9 ; 3 uses
  %i.im = trunc i32 %i.il to i8
  store i8 %i.im, ptr %5, align 1, !tbaa !14
  %i.in = lshr i32 %i.il, 8
  %i.io = trunc i32 %i.in to i8
  store i8 %i.io, ptr %i.hf, align 1, !tbaa !15
  %i.ip = lshr i32 %i.il, 16
  %i.iq = trunc i32 %i.ip to i8
end_hunk_0

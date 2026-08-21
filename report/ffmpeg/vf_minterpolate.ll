Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_minterpolate?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@inject_frame:bb.a
  %i.aq = phi i32 [ %i.ax, %._crit_edge41 ], [ %i.am, %.preheader.lr.ph ]
  %i.ar = phi i32 [ %i.ay, %._crit_edge41 ], [ %i.ao, %.preheader.lr.ph ] ; 2 uses
  %.010442 = phi i32 [ %i.az, %._crit_edge41 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge41

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.010640 = phi i32 [ %i.au, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !126
  tail call fastcc void @search_mv(ptr noundef nonnull %.16.val.72.val, ptr noundef %i.at, i32 noundef %.010640, i32 noundef %.010442, i32 noundef 0)
  %i.au = add nuw nsw i32 %.010640, 1             ; 2 uses
  %i.av = load i32, ptr %i.af, align 8, !tbaa !84 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge41.loopexit, !llvm.loop !135

._crit_edge41.loopexit:                           ; preds = %.lr.ph
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !83
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.preheader
  %i.ax = phi i32 [ %.pre, %._crit_edge41.loopexit ], [ %i.aq, %.preheader ] ; 3 uses
  %i.ay = phi i32 [ %i.av, %._crit_edge41.loopexit ], [ %i.ar, %.preheader ]
  %i.az = add nuw nsw i32 %.010442, 1             ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ax
  br i1 %i.ba, label %.preheader, label %._crit_edge43.loopexit, !llvm.loop !136

._crit_edge43.loopexit:                           ; preds = %._crit_edge41
  %.pre85 = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre85, i64 64
  %.pre86 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %.preheader.lr.ph, %._crit_edge43.loopexit, %.preheader8
  %i.bb = phi i32 [ %i.am, %.preheader8 ], [ %i.ax, %._crit_edge43.loopexit ], [ %i.am, %.preheader.lr.ph ] ; 2 uses
  %i.bc = phi i32 [ %i.aj, %.preheader8 ], [ %.pre86, %._crit_edge43.loopexit ], [ %i.aj, %.preheader.lr.ph ]
  %i.bd = phi ptr [ %i.ah, %.preheader8 ], [ %.pre85, %._crit_edge43.loopexit ], [ %i.ah, %.preheader.lr.ph ]
  store i32 %i.bc, ptr %i.ac, align 8, !tbaa !132
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  store ptr %i.be, ptr %i.ab, align 8, !tbaa !133
  %i.bf = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 336
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  store ptr %i.bh, ptr %i.ad, align 8, !tbaa !134
  %i.bi = icmp sgt i32 %i.bb, 0
  br i1 %i.bi, label %.preheader.lr.ph.1, label %cluster_mvs.exit

.preheader.lr.ph.1:                               ; preds = %._crit_edge43
  %i.bj = load i32, ptr %i.af, align 8, !tbaa !84 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader.1, label %cluster_mvs.exit

.preheader.1:                                     ; preds = %.preheader.lr.ph.1, %._crit_edge41.1
  %i.bl = phi i32 [ %i.bs, %._crit_edge41.1 ], [ %i.bb, %.preheader.lr.ph.1 ]
  %i.bm = phi i32 [ %i.bt, %._crit_edge41.1 ], [ %i.bj, %.preheader.lr.ph.1 ] ; 2 uses
  %.010442.1 = phi i32 [ %i.bu, %._crit_edge41.1 ], [ 0, %.preheader.lr.ph.1 ] ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.1, label %._crit_edge41.1

.lr.ph.1:                                         ; preds = %.preheader.1, %.lr.ph.1
  %.010640.1 = phi i32 [ %i.bp, %.lr.ph.1 ], [ 0, %.preheader.1 ] ; 2 uses
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !126
  tail call fastcc void @search_mv(ptr noundef nonnull %.16.val.72.val, ptr noundef %i.bo, i32 noundef %.010640.1, i32 noundef %.010442.1, i32 noundef 1)
  %i.bp = add nuw nsw i32 %.010640.1, 1           ; 2 uses
  %i.bq = load i32, ptr %i.af, align 8, !tbaa !84 ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph.1, label %._crit_edge41.loopexit.1, !llvm.loop !135

._crit_edge41.loopexit.1:                         ; preds = %.lr.ph.1
  %.pre87 = load i32, ptr %i.ae, align 4, !tbaa !83
  br label %._crit_edge41.1

._crit_edge41.1:                                  ; preds = %._crit_edge41.loopexit.1, %.preheader.1
  %i.bs = phi i32 [ %.pre87, %._crit_edge41.loopexit.1 ], [ %i.bl, %.preheader.1 ] ; 2 uses
  %i.bt = phi i32 [ %i.bq, %._crit_edge41.loopexit.1 ], [ %i.bm, %.preheader.1 ]
  %i.bu = add nuw nsw i32 %.010442.1, 1           ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.bs
  br i1 %i.bv, label %.preheader.1, label %cluster_mvs.exit, !llvm.loop !136

bb.f:                                             ; preds = %bb.d
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %cluster_mvs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 24
  store i32 %i.by, ptr %i.ca, align 8, !tbaa !132
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !57
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !133
  %i.cd = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 320
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !51
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !134
  %i.ch = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3492 ; 5 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !83 ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.preheader27.lr.ph.i, label %bilateral_me.exit

.preheader27.lr.ph.i:                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3488 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !84 ; 5 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.preheader27.lr.ph.split.i, label %bilateral_me.exit

.preheader27.lr.ph.split.i:                       ; preds = %.preheader27.lr.ph.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3424 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.cp = zext nneg i32 %i.cl to i64              ; 3 uses
  %wide.trip.count39.i = zext nneg i32 %i.ci to i64
  %xtraiter = and i64 %i.cp, 1
  %i.cq = icmp eq i32 %i.cl, 1
  %unroll_iter = and i64 %i.cp, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod206 = trunc i32 %i.cl to i1
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %._crit_edge.i, %.preheader27.lr.ph.split.i
  %indvars.iv36.i = phi i64 [ 0, %.preheader27.lr.ph.split.i ], [ %indvars.iv.next37.i, %._crit_edge.i ] ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv36.i, %i.cp
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  br i1 %i.cq, label %.epil.preheader, label %.preheader27.i.new

.preheader27.i.new:                               ; preds = %.preheader27.i, %.preheader27.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader27.i.new ], [ 0, %.preheader27.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader27.i.new ], [ 0, %.preheader27.i ]
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %indvars.iv.i ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.cu, align 8, !tbaa !137
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 0, ptr %i.cv, align 8, !tbaa !91
  store i16 0, ptr %i.ct, align 8, !tbaa !94
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i16 0, ptr %i.cw, align 2, !tbaa !94
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %indvars.iv.i ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store i32 0, ptr %i.cz, align 8, !tbaa !137
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store i32 0, ptr %i.da, align 8, !tbaa !91
  store i16 0, ptr %i.cy, align 8, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 42
  store i16 0, ptr %i.db, align 2, !tbaa !94
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader27.i.new, !llvm.loop !138

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader27.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader27.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader27.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %indvars.iv.i.epil.init ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 0, ptr %i.dd, align 8, !tbaa !137
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i32 0, ptr %i.de, align 8, !tbaa !91
  store i16 0, ptr %i.dc, align 8, !tbaa !94
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i16 0, ptr %i.df, align 2, !tbaa !94
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %.preheader.i, label %.preheader27.i, !llvm.loop !139

.preheader.i:                                     ; preds = %._crit_edge.i, %._crit_edge31.i
  %i.dg = phi i32 [ %i.dn, %._crit_edge31.i ], [ %i.ci, %._crit_edge.i ]
  %i.dh = phi i32 [ %i.do, %._crit_edge31.i ], [ %i.cl, %._crit_edge.i ] ; 2 uses
  %.132.i = phi i32 [ %i.dp, %._crit_edge31.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i, label %._crit_edge31.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.12430.i = phi i32 [ %i.dk, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !20
  tail call fastcc void @search_mv(ptr noundef nonnull %.16.val.72.val, ptr noundef %i.dj, i32 noundef %.12430.i, i32 noundef %.132.i, i32 noundef 0)
  %i.dk = add nuw nsw i32 %.12430.i, 1            ; 2 uses
  %i.dl = load i32, ptr %i.ck, align 8, !tbaa !84 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge31.loopexit.i, !llvm.loop !140

._crit_edge31.loopexit.i:                         ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !83
  br label %._crit_edge31.i

._crit_edge31.i:                                  ; preds = %._crit_edge31.loopexit.i, %.preheader.i
  %i.dn = phi i32 [ %.pre.i, %._crit_edge31.loopexit.i ], [ %i.dg, %.preheader.i ] ; 3 uses
  %i.do = phi i32 [ %i.dl, %._crit_edge31.loopexit.i ], [ %i.dh, %.preheader.i ]
  %i.dp = add nuw nsw i32 %.132.i, 1              ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.dn
  br i1 %i.dq, label %.preheader.i, label %bilateral_me.exit, !llvm.loop !141

bilateral_me.exit:                                ; preds = %._crit_edge31.i, %.preheader27.lr.ph.i, %bb.g
  %i.dr = phi i32 [ %i.ci, %bb.g ], [ %i.ci, %.preheader27.lr.ph.i ], [ %i.dn, %._crit_edge31.i ] ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 260
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.du = icmp eq i32 %i.dt, 1
  %i.dv = icmp sgt i32 %i.dr, 0
  %or.cond = and i1 %i.du, %i.dv
  br i1 %or.cond, label %.preheader14.lr.ph, label %.loopexit

.preheader14.lr.ph:                               ; preds = %bilateral_me.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3488
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !84 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader14.lr.ph.split, label %.loopexit

.preheader14.lr.ph.split:                         ; preds = %.preheader14.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3424
  %i.ea = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3500
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !93 ; 2 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !20
  %i.ed = zext nneg i32 %i.dx to i64              ; 2 uses
  %wide.trip.count69 = zext nneg i32 %i.dr to i64
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader14.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.ef = shl i32 %i.ee, %i.eb                    ; 2 uses
  %i.eg = mul nuw nsw i64 %indvars.iv66, %i.ed
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %i.eg
  br label %bb.h

bb.h:                                             ; preds = %.preheader14, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader14 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32
  %i.ej = shl i32 %i.ei, %i.eb                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %indvars.iv ; 3 uses
  %i.el = load i16, ptr %i.ek, align 8, !tbaa !94
  %i.em = sext i16 %i.el to i32
  %i.en = add nsw i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !94
  %i.eq = sext i16 %i.ep to i32
  %i.er = add nsw i32 %i.ef, %i.eq
  %i.es = tail call fastcc i64 @get_sbad(ptr noundef nonnull %i.bz, i32 noundef %i.ej, i32 noundef %i.ef, i32 noundef %i.en, i32 noundef %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %i.es, ptr %i.et, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ed
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %.loopexit, label %.preheader14, !llvm.loop !143

.loopexit:                                        ; preds = %._crit_edge, %.preheader14.lr.ph, %bilateral_me.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 280
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !144
  %.not114 = icmp eq i32 %i.ev, 0
  br i1 %.not114, label %cluster_mvs.exit, label %.preheader13

.preheader13:                                     ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 352 ; 12 uses
  br label %bb.i

.preheader12:                                     ; preds = %bb.i
  %i.ex = icmp sgt i32 %i.dr, 0
  br i1 %i.ex, label %.preheader11.lr.ph, label %._crit_edge34.split.thread140

._crit_edge34.split.thread140:                    ; preds = %.preheader12
  %i.ey = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3496
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 368
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !145
  br label %cluster_mvs.exit

.preheader11.lr.ph:                               ; preds = %.preheader12
  %i.fb = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3488
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !84 ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 360 ; 2 uses
  br i1 %i.fd, label %.preheader11.lr.ph.split, label %.split.us.i

.preheader11.lr.ph.split:                         ; preds = %.preheader11.lr.ph
  %i.ff = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3424
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !20
  %.promoted35 = load i64, ptr %i.ew, align 8, !tbaa !63
  %.promoted = load i64, ptr %i.fe, align 8, !tbaa !63
  %i.fh = zext nneg i32 %i.fc to i64              ; 3 uses
  %wide.trip.count83 = zext nneg i32 %i.dr to i64
  %xtraiter208 = and i64 %i.fh, 3                 ; 3 uses
  %i.fi = icmp ult i32 %i.fc, 4
  %unroll_iter215 = and i64 %i.fh, 2147483644
  %lcmp.mod211.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod214 = icmp ne i64 %xtraiter208, 0
  br label %.preheader11

bb.i:                                             ; preds = %bb.i, %.preheader13
  %indvars.iv71 = phi i64 [ 0, %.preheader13 ], [ %indvars.iv.next72.7, %bb.i ] ; 9 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fj, i8 0, i64 20, i1 false)
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fl, i8 0, i64 20, i1 false)
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fn, i8 0, i64 20, i1 false)
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fp, i8 0, i64 20, i1 false)
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fr, i8 0, i64 20, i1 false)
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ft, i8 0, i64 20, i1 false)
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fv, i8 0, i64 20, i1 false)
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv71
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  %indvars.iv.next72.7 = add nuw nsw i64 %indvars.iv71, 8 ; 2 uses
  %exitcond74.not.7 = icmp eq i64 %indvars.iv.next72.7, 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fx, i8 0, i64 20, i1 false)
  br i1 %exitcond74.not.7, label %.preheader12, label %bb.i, !llvm.loop !147

.preheader11:                                     ; preds = %.preheader11.lr.ph.split, %._crit_edge29
  %indvars.iv80 = phi i64 [ 0, %.preheader11.lr.ph.split ], [ %indvars.iv.next81, %._crit_edge29 ] ; 2 uses
  %.lcssa3237 = phi i64 [ %.promoted, %.preheader11.lr.ph.split ], [ %.lcssa202, %._crit_edge29 ] ; 2 uses
  %.lcssa3036 = phi i64 [ %.promoted35, %.preheader11.lr.ph.split ], [ %.lcssa203, %._crit_edge29 ] ; 2 uses
  %i.fy = mul nuw nsw i64 %indvars.iv80, %i.fh
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fg, i64 %i.fy ; 5 uses
  br i1 %i.fi, label %.epil.preheader207, label %.preheader11.new

.preheader11.new:                                 ; preds = %.preheader11, %.preheader11.new
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %.preheader11.new ], [ 0, %.preheader11 ] ; 5 uses
  %i.ga = phi i64 [ %i.hk, %.preheader11.new ], [ %.lcssa3237, %.preheader11 ]
  %i.gb = phi i64 [ %i.hg, %.preheader11.new ], [ %.lcssa3036, %.preheader11 ]
  %niter216 = phi i64 [ %niter216.next.3, %.preheader11.new ], [ 0, %.preheader11 ]
  %i.gc = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %indvars.iv75 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 8, !tbaa !94
  %i.ge = sext i16 %i.gd to i64
  %i.gf = add nsw i64 %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !94
  %i.gi = sext i16 %i.gh to i64
  %i.gj = add nsw i64 %i.ga, %i.gi
  %i.gk = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %indvars.iv75 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !94
  %i.gn = sext i16 %i.gm to i64
  %i.go = add nsw i64 %i.gf, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 42
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !94
  %i.gr = sext i16 %i.gq to i64
  %i.gs = add nsw i64 %i.gj, %i.gr
  %i.gt = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %indvars.iv75 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.gv = load i16, ptr %i.gu, align 8, !tbaa !94
  %i.gw = sext i16 %i.gv to i64
  %i.gx = add nsw i64 %i.go, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 82
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !94
  %i.ha = sext i16 %i.gz to i64
  %i.hb = add nsw i64 %i.gs, %i.ha
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %indvars.iv75 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120
  %i.he = load i16, ptr %i.hd, align 8, !tbaa !94
  %i.hf = sext i16 %i.he to i64
  %i.hg = add nsw i64 %i.gx, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 122
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !94
  %i.hj = sext i16 %i.hi to i64
  %i.hk = add nsw i64 %i.hb, %i.hj                ; 3 uses
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %niter216.next.3 = add i64 %niter216, 4         ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %._crit_edge29.unr-lcssa, label %.preheader11.new, !llvm.loop !148

._crit_edge29.unr-lcssa:                          ; preds = %.preheader11.new
  br i1 %lcmp.mod211.not, label %._crit_edge29, label %.epil.preheader207

.epil.preheader207:                               ; preds = %._crit_edge29.unr-lcssa, %.preheader11
  %indvars.iv75.epil.init = phi i64 [ 0, %.preheader11 ], [ %indvars.iv.next76.3, %._crit_edge29.unr-lcssa ]
  %.epil.init = phi i64 [ %.lcssa3237, %.preheader11 ], [ %i.hk, %._crit_edge29.unr-lcssa ]
  %.epil.init210 = phi i64 [ %.lcssa3036, %.preheader11 ], [ %i.hg, %._crit_edge29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader207
  %indvars.iv75.epil = phi i64 [ %indvars.iv75.epil.init, %.epil.preheader207 ], [ %indvars.iv.next76.epil, %bb.j ] ; 2 uses
  %i.hl = phi i64 [ %.epil.init, %.epil.preheader207 ], [ %i.hu, %bb.j ]
  %i.hm = phi i64 [ %.epil.init210, %.epil.preheader207 ], [ %i.hq, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader207 ], [ %epil.iter.next, %bb.j ]
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %indvars.iv75.epil ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !94
  %i.hp = sext i16 %i.ho to i64
  %i.hq = add nsw i64 %i.hm, %i.hp                ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !94
  %i.ht = sext i16 %i.hs to i64
  %i.hu = add nsw i64 %i.hl, %i.ht                ; 2 uses
  %indvars.iv.next76.epil = add nuw nsw i64 %indvars.iv75.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter208
  br i1 %epil.iter.cmp.not, label %._crit_edge29, label %bb.j, !llvm.loop !149

._crit_edge29:                                    ; preds = %bb.j, %._crit_edge29.unr-lcssa
  %.lcssa203 = phi i64 [ %i.hg, %._crit_edge29.unr-lcssa ], [ %i.hq, %bb.j ] ; 2 uses
  %.lcssa202 = phi i64 [ %i.hk, %._crit_edge29.unr-lcssa ], [ %i.hu, %bb.j ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge34.split, label %.preheader11, !llvm.loop !150

._crit_edge34.split:                              ; preds = %._crit_edge29
  store i64 %.lcssa203, ptr %i.ew, align 8, !tbaa !63
  store i64 %.lcssa202, ptr %i.fe, align 8, !tbaa !63
  br label %.split.us.i

.split.us.i:                                      ; preds = %.preheader11.lr.ph, %._crit_edge34.split
  %i.hv = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3496
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !30
  %i.hx = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 368
  store i32 %i.hw, ptr %i.hx, align 8, !tbaa !145
  %i.hy = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3424 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3488 ; 3 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !84 ; 8 uses
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.split.us.split.us.i, label %cluster_mvs.exit

.split.us.split.us.i:                             ; preds = %.split.us.i
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !20 ; 5 uses
  %i.id = zext nneg i32 %i.ia to i64              ; 10 uses
  %i.ie = zext nneg i32 %i.dr to i64              ; 5 uses
  br label %.preheader214.us.us.us.i

.preheader214.us.us.us.i:                         ; preds = %.preheader214.us.us.us.i.backedge, %.split.us.split.us.i
  %indvars.iv304.i = phi i64 [ 0, %.split.us.split.us.i ], [ %indvars.iv304.i.be, %.preheader214.us.us.us.i.backedge ] ; 10 uses
  %indvars.iv293.i = phi i32 [ -1, %.split.us.split.us.i ], [ %indvars.iv293.i.be, %.preheader214.us.us.us.i.backedge ] ; 5 uses
  %.1170231.us.us.us.i = phi i32 [ 0, %.split.us.split.us.i ], [ %.3.us.us.us.i, %.preheader214.us.us.us.i.backedge ]
  %.0175230.us.us.us.i = phi i32 [ 0, %.split.us.split.us.i ], [ %.0175230.us.us.us.i.be, %.preheader214.us.us.us.i.backedge ]
  %i.if = mul nuw nsw i64 %indvars.iv304.i, %i.id
  %i.ig = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.if
  %smax297.i = tail call i32 @llvm.smax.i32(i32 %indvars.iv293.i, i32 0)
  %i.ih = zext nneg i32 %smax297.i to i64
  %i.ii = add nuw nsw i64 %indvars.iv304.i, 1     ; 3 uses
  %.not198.us.us.us.i = icmp samesign ult i64 %i.ii, %i.ie
  %i.ij = trunc i64 %indvars.iv304.i to i32       ; 4 uses
  %i.ik = add i32 %i.ij, 2
  %i.il = select i1 %.not198.us.us.us.i, i32 %i.ik, i32 %i.dr
  %i.im = sext i32 %i.il to i64                   ; 2 uses
  %.not333.i = icmp sgt i64 %indvars.iv304.i, %i.im
  %i.in = tail call i32 @llvm.smax.i32(i32 %indvars.iv293.i, i32 1)
  %smax297.1.i = add nsw i32 %i.in, -1
  %i.io = zext nneg i32 %smax297.1.i to i64
  %1 = add nsw i64 %indvars.iv304.i, -2
  %i.ip = add nuw nsw i64 %indvars.iv304.i, 2
  %2 = icmp samesign ult i64 %i.ip, %i.ie
  %i.iq = add i32 %i.ij, 3
  %i.ir = select i1 %2, i32 %i.iq, i32 %i.dr
  %i.is = sext i32 %i.ir to i64                   ; 2 uses
  %i.it = icmp slt i64 %1, %i.is
  %i.iu = tail call i32 @llvm.smax.i32(i32 %indvars.iv293.i, i32 2)
  %smax297.2.i = add nsw i32 %i.iu, -2
  %i.iv = zext nneg i32 %smax297.2.i to i64
  %3 = add nsw i64 %indvars.iv304.i, -3
  %i.iw = add nuw nsw i64 %indvars.iv304.i, 3
  %4 = icmp samesign ult i64 %i.iw, %i.ie
  %i.ix = add i32 %i.ij, 4
  %i.iy = select i1 %4, i32 %i.ix, i32 %i.dr
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = icmp slt i64 %3, %i.iz
  %i.jb = tail call i32 @llvm.smax.i32(i32 %indvars.iv293.i, i32 3)
  %smax297.3.i = add nsw i32 %i.jb, -3
  %i.jc = zext nneg i32 %smax297.3.i to i64
  %5 = add nsw i64 %indvars.iv304.i, -4
  %i.jd = add nuw nsw i64 %indvars.iv304.i, 4
  %6 = icmp samesign ult i64 %i.jd, %i.ie
  %i.je = add i32 %i.ij, 5
  %i.jf = select i1 %6, i32 %i.je, i32 %i.dr
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = icmp slt i64 %5, %i.jg
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.preheader214.us.us.us.i
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %bb.s ], [ 0, %.preheader214.us.us.us.i ] ; 14 uses
  %indvars.iv.i123 = phi i32 [ %indvars.iv.next.i124, %bb.s ], [ -1, %.preheader214.us.us.us.i ] ; 5 uses
  %.2227.us.us.us.i = phi i32 [ %.3.us.us.us.i, %bb.s ], [ %.1170231.us.us.us.i, %.preheader214.us.us.us.i ] ; 5 uses
  %.1176226.us.us.us.i = phi i32 [ %.2177.us.us.us.i, %bb.s ], [ %.0175230.us.us.us.i, %.preheader214.us.us.us.i ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [40 x i8], ptr %i.ig, i64 %indvars.iv301.i ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !137 ; 13 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.jl ; 5 uses
  %i.jn = load i16, ptr %i.ji, align 8, !tbaa !94 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !94 ; 2 uses
  %i.jq = sext i16 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 3 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !145 ; 2 uses
  %i.jt = icmp slt i32 %i.js, 2
  br i1 %i.jt, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ju = sext i16 %i.jn to i32
  %i.jv = load i64, ptr %i.jm, align 8, !tbaa !63
  %i.jw = zext nneg i32 %i.js to i64              ; 2 uses
  %i.jx = sdiv i64 %i.jv, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 3 uses
  %reass.sub = sub i32 %i.jy, %i.ju
  %i.ka = add i32 %reass.sub, -5
  %i.kb = icmp ult i32 %i.ka, -9
  br i1 %i.kb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kc = load i64, ptr %i.jz, align 8, !tbaa !63
  %i.kd = sdiv i64 %i.kc, %i.jw
  %i.ke = trunc i64 %i.kd to i32
  %reass.sub46 = sub i32 %i.ke, %i.jq
  %i.kf = add i32 %reass.sub46, -5
  %i.kg = icmp ult i32 %i.kf, -9
  br i1 %i.kg, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %smax.i = tail call i32 @llvm.smax.i32(i32 %indvars.iv.i123, i32 0)
  %i.kh = zext nneg i32 %smax.i to i64
  br i1 %.not333.i, label %._crit_edge222.us.us.us.i, label %.lr.ph221.us.us.us.i

._crit_edge222.us.us.us.i:                        ; preds = %._crit_edge.us.us.us.us.i, %.lr.ph221.us.us.us.i, %bb.n
  %.1172.lcssa.us.us.us.i = phi i32 [ %i.jk, %bb.n ], [ %i.jk, %.lr.ph221.us.us.us.i ], [ %.3174.us.us.us.us.i, %._crit_edge.us.us.us.us.i ] ; 3 uses
  %i.ki = tail call i32 @llvm.smax.i32(i32 %indvars.iv.i123, i32 1)
  %smax.1.i = add nsw i32 %i.ki, -1
  %i.kj = zext nneg i32 %smax.1.i to i64
  br i1 %i.it, label %.lr.ph221.us.us.us.1.i, label %._crit_edge222.us.us.us.1.i

.lr.ph221.us.us.us.1.i:                           ; preds = %._crit_edge222.us.us.us.i
  %i.kk = add nsw i64 %indvars.iv301.i, -2
  %7 = add nuw nsw i64 %indvars.iv301.i, 2
  %8 = icmp samesign ult i64 %7, %i.id
  %9 = trunc i64 %indvars.iv301.i to i32
  %i.kl = add i32 %9, 3
  %i.km = select i1 %8, i32 %i.kl, i32 %i.ia
  %i.kn = sext i32 %i.km to i64                   ; 2 uses
  %i.ko = icmp slt i64 %i.kk, %i.kn
  br i1 %i.ko, label %.lr.ph.us.us.us.us.1.i, label %._crit_edge222.us.us.us.1.i

.lr.ph.us.us.us.us.1.i:                           ; preds = %.lr.ph221.us.us.us.1.i, %._crit_edge.us.us.us.us.1.i
  %indvars.iv298.1.i = phi i64 [ %indvars.iv.next299.1.i, %._crit_edge.us.us.us.us.1.i ], [ %i.io, %.lr.ph221.us.us.us.1.i ] ; 2 uses
  %.1172218.us.us.us.us.1.i = phi i32 [ %.3174.us.us.us.us.1.i, %._crit_edge.us.us.us.us.1.i ], [ %.1172.lcssa.us.us.us.i, %.lr.ph221.us.us.us.1.i ]
  %i.kp = mul nuw nsw i64 %indvars.iv298.1.i, %i.id
  %invariant.gep344.i = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.kp
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us.1.i
  %indvars.iv290.1.i = phi i64 [ %indvars.iv.next291.1.i, %bb.o ], [ %i.kj, %.lr.ph.us.us.us.us.1.i ] ; 2 uses
  %.2173216.us.us.us.us.1.i = phi i32 [ %.3174.us.us.us.us.1.i, %bb.o ], [ %.1172218.us.us.us.us.1.i, %.lr.ph.us.us.us.us.1.i ] ; 3 uses
  %gep345.i = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep344.i, i64 %indvars.iv290.1.i
  %i.kq = getelementptr inbounds nuw i8, ptr %gep345.i, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !137 ; 3 uses
  %i.ks = icmp sgt i32 %i.kr, %i.jk
  %i.kt = icmp eq i32 %.2173216.us.us.us.us.1.i, %i.jk
  %i.ku = tail call i32 @llvm.smin.i32(i32 %i.kr, i32 %.2173216.us.us.us.us.1.i)
  %spec.select204.us.us.us.us.1.i = select i1 %i.kt, i32 %i.kr, i32 %i.ku
  %.3174.us.us.us.us.1.i = select i1 %i.ks, i32 %spec.select204.us.us.us.us.1.i, i32 %.2173216.us.us.us.us.1.i ; 3 uses
  %indvars.iv.next291.1.i = add nuw nsw i64 %indvars.iv290.1.i, 1 ; 2 uses
  %i.kv = icmp slt i64 %indvars.iv.next291.1.i, %i.kn
  br i1 %i.kv, label %bb.o, label %._crit_edge.us.us.us.us.1.i, !llvm.loop !151

._crit_edge.us.us.us.us.1.i:                      ; preds = %bb.o
  %indvars.iv.next299.1.i = add nuw nsw i64 %indvars.iv298.1.i, 1 ; 2 uses
  %i.kw = icmp slt i64 %indvars.iv.next299.1.i, %i.is
  br i1 %i.kw, label %.lr.ph.us.us.us.us.1.i, label %._crit_edge222.us.us.us.1.i, !llvm.loop !152

._crit_edge222.us.us.us.1.i:                      ; preds = %._crit_edge.us.us.us.us.1.i, %.lr.ph221.us.us.us.1.i, %._crit_edge222.us.us.us.i
  %.1172.lcssa.us.us.us.1.i = phi i32 [ %.1172.lcssa.us.us.us.i, %._crit_edge222.us.us.us.i ], [ %.1172.lcssa.us.us.us.i, %.lr.ph221.us.us.us.1.i ], [ %.3174.us.us.us.us.1.i, %._crit_edge.us.us.us.us.1.i ] ; 3 uses
  %i.kx = tail call i32 @llvm.smax.i32(i32 %indvars.iv.i123, i32 2)
  %smax.2.i = add nsw i32 %i.kx, -2
  %i.ky = zext nneg i32 %smax.2.i to i64
  br i1 %i.ja, label %.lr.ph221.us.us.us.2.i, label %._crit_edge222.us.us.us.2.i

.lr.ph221.us.us.us.2.i:                           ; preds = %._crit_edge222.us.us.us.1.i
  %i.kz = add nsw i64 %indvars.iv301.i, -3
  %10 = add nuw nsw i64 %indvars.iv301.i, 3
  %11 = icmp samesign ult i64 %10, %i.id
  %12 = trunc i64 %indvars.iv301.i to i32
  %i.la = add i32 %12, 4
  %i.lb = select i1 %11, i32 %i.la, i32 %i.ia
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  %i.ld = icmp slt i64 %i.kz, %i.lc
  br i1 %i.ld, label %.lr.ph.us.us.us.us.2.i, label %._crit_edge222.us.us.us.2.i

.lr.ph.us.us.us.us.2.i:                           ; preds = %.lr.ph221.us.us.us.2.i, %._crit_edge.us.us.us.us.2.i
  %indvars.iv298.2.i = phi i64 [ %indvars.iv.next299.2.i, %._crit_edge.us.us.us.us.2.i ], [ %i.iv, %.lr.ph221.us.us.us.2.i ] ; 2 uses
  %.1172218.us.us.us.us.2.i = phi i32 [ %.3174.us.us.us.us.2.i, %._crit_edge.us.us.us.us.2.i ], [ %.1172.lcssa.us.us.us.1.i, %.lr.ph221.us.us.us.2.i ]
  %i.le = mul nuw nsw i64 %indvars.iv298.2.i, %i.id
  %invariant.gep346.i = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.le
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.us.us.us.us.2.i
  %indvars.iv290.2.i = phi i64 [ %indvars.iv.next291.2.i, %bb.p ], [ %i.ky, %.lr.ph.us.us.us.us.2.i ] ; 2 uses
  %.2173216.us.us.us.us.2.i = phi i32 [ %.3174.us.us.us.us.2.i, %bb.p ], [ %.1172218.us.us.us.us.2.i, %.lr.ph.us.us.us.us.2.i ] ; 3 uses
  %gep347.i = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep346.i, i64 %indvars.iv290.2.i
  %i.lf = getelementptr inbounds nuw i8, ptr %gep347.i, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !137 ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, %i.jk
  %i.li = icmp eq i32 %.2173216.us.us.us.us.2.i, %i.jk
  %i.lj = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %.2173216.us.us.us.us.2.i)
  %spec.select204.us.us.us.us.2.i = select i1 %i.li, i32 %i.lg, i32 %i.lj
  %.3174.us.us.us.us.2.i = select i1 %i.lh, i32 %spec.select204.us.us.us.us.2.i, i32 %.2173216.us.us.us.us.2.i ; 3 uses
  %indvars.iv.next291.2.i = add nuw nsw i64 %indvars.iv290.2.i, 1 ; 2 uses
  %i.lk = icmp slt i64 %indvars.iv.next291.2.i, %i.lc
  br i1 %i.lk, label %bb.p, label %._crit_edge.us.us.us.us.2.i, !llvm.loop !151

._crit_edge.us.us.us.us.2.i:                      ; preds = %bb.p
  %indvars.iv.next299.2.i = add nuw nsw i64 %indvars.iv298.2.i, 1 ; 2 uses
  %i.ll = icmp slt i64 %indvars.iv.next299.2.i, %i.iz
  br i1 %i.ll, label %.lr.ph.us.us.us.us.2.i, label %._crit_edge222.us.us.us.2.i, !llvm.loop !152

._crit_edge222.us.us.us.2.i:                      ; preds = %._crit_edge.us.us.us.us.2.i, %.lr.ph221.us.us.us.2.i, %._crit_edge222.us.us.us.1.i
  %.1172.lcssa.us.us.us.2.i = phi i32 [ %.1172.lcssa.us.us.us.1.i, %._crit_edge222.us.us.us.1.i ], [ %.1172.lcssa.us.us.us.1.i, %.lr.ph221.us.us.us.2.i ], [ %.3174.us.us.us.us.2.i, %._crit_edge.us.us.us.us.2.i ] ; 3 uses
  %i.lm = tail call i32 @llvm.smax.i32(i32 %indvars.iv.i123, i32 3)
  %smax.3.i = add nsw i32 %i.lm, -3
  %i.ln = zext nneg i32 %smax.3.i to i64
  br i1 %i.jh, label %.lr.ph221.us.us.us.3.i, label %._crit_edge222.us.us.us.3.i

.lr.ph221.us.us.us.3.i:                           ; preds = %._crit_edge222.us.us.us.2.i
  %i.lo = add nsw i64 %indvars.iv301.i, -4
  %13 = add nuw nsw i64 %indvars.iv301.i, 4
  %14 = icmp samesign ult i64 %13, %i.id
  %15 = trunc i64 %indvars.iv301.i to i32
  %i.lp = add i32 %15, 5
  %i.lq = select i1 %14, i32 %i.lp, i32 %i.ia
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %i.ls = icmp slt i64 %i.lo, %i.lr
  br i1 %i.ls, label %.lr.ph.us.us.us.us.3.i, label %._crit_edge222.us.us.us.3.i

.lr.ph.us.us.us.us.3.i:                           ; preds = %.lr.ph221.us.us.us.3.i, %._crit_edge.us.us.us.us.3.i
  %indvars.iv298.3.i = phi i64 [ %indvars.iv.next299.3.i, %._crit_edge.us.us.us.us.3.i ], [ %i.jc, %.lr.ph221.us.us.us.3.i ] ; 2 uses
  %.1172218.us.us.us.us.3.i = phi i32 [ %.3174.us.us.us.us.3.i, %._crit_edge.us.us.us.us.3.i ], [ %.1172.lcssa.us.us.us.2.i, %.lr.ph221.us.us.us.3.i ]
  %i.lt = mul nuw nsw i64 %indvars.iv298.3.i, %i.id
  %invariant.gep348.i = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.lt
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.us.us.us.us.3.i
  %indvars.iv290.3.i = phi i64 [ %indvars.iv.next291.3.i, %bb.q ], [ %i.ln, %.lr.ph.us.us.us.us.3.i ] ; 2 uses
  %.2173216.us.us.us.us.3.i = phi i32 [ %.3174.us.us.us.us.3.i, %bb.q ], [ %.1172218.us.us.us.us.3.i, %.lr.ph.us.us.us.us.3.i ] ; 3 uses
  %gep349.i = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep348.i, i64 %indvars.iv290.3.i
  %i.lu = getelementptr inbounds nuw i8, ptr %gep349.i, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !137 ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, %i.jk
  %i.lx = icmp eq i32 %.2173216.us.us.us.us.3.i, %i.jk
  %i.ly = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %.2173216.us.us.us.us.3.i)
  %spec.select204.us.us.us.us.3.i = select i1 %i.lx, i32 %i.lv, i32 %i.ly
  %.3174.us.us.us.us.3.i = select i1 %i.lw, i32 %spec.select204.us.us.us.us.3.i, i32 %.2173216.us.us.us.us.3.i ; 3 uses
  %indvars.iv.next291.3.i = add nuw nsw i64 %indvars.iv290.3.i, 1 ; 2 uses
  %i.lz = icmp slt i64 %indvars.iv.next291.3.i, %i.lr
  br i1 %i.lz, label %bb.q, label %._crit_edge.us.us.us.us.3.i, !llvm.loop !151

._crit_edge.us.us.us.us.3.i:                      ; preds = %bb.q
  %indvars.iv.next299.3.i = add nuw nsw i64 %indvars.iv298.3.i, 1 ; 2 uses
  %i.ma = icmp slt i64 %indvars.iv.next299.3.i, %i.jg
  br i1 %i.ma, label %.lr.ph.us.us.us.us.3.i, label %._crit_edge222.us.us.us.3.i, !llvm.loop !152

._crit_edge222.us.us.us.3.i:                      ; preds = %._crit_edge.us.us.us.us.3.i, %.lr.ph221.us.us.us.3.i, %._crit_edge222.us.us.us.2.i
  %.1172.lcssa.us.us.us.3.i = phi i32 [ %.1172.lcssa.us.us.us.2.i, %._crit_edge222.us.us.us.2.i ], [ %.1172.lcssa.us.us.us.2.i, %.lr.ph221.us.us.us.3.i ], [ %.3174.us.us.us.us.3.i, %._crit_edge.us.us.us.us.3.i ] ; 2 uses
  %i.mb = icmp eq i32 %.1172.lcssa.us.us.us.3.i, %i.jk
  %i.mc = add nuw nsw i32 %.2227.us.us.us.i, 1
  %spec.select.us.us.us.i = select i1 %i.mb, i32 %i.mc, i32 %.1172.lcssa.us.us.us.3.i ; 4 uses
  %i.md = icmp sgt i32 %spec.select.us.us.us.i, 127
  br i1 %i.md, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge222.us.us.us.3.i
  %i.me = sext i32 %spec.select.us.us.us.i to i64
  %i.mf = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.me ; 4 uses
  %i.mg = sext i16 %i.jn to i64                   ; 2 uses
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !63
  %i.mi = add nsw i64 %i.mh, %i.mg
  store i64 %i.mi, ptr %i.mf, align 8, !tbaa !63
  %i.mj = sext i16 %i.jp to i64                   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !63
  %i.mm = add nsw i64 %i.ml, %i.mj
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !63
  %i.mn = load i64, ptr %i.jm, align 8, !tbaa !63
  %i.mo = sub nsw i64 %i.mn, %i.mg
  store i64 %i.mo, ptr %i.jm, align 8, !tbaa !63
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !63
  %i.mq = sub nsw i64 %i.mp, %i.mj
  store i64 %i.mq, ptr %i.jz, align 8, !tbaa !63
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !145
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 8, !tbaa !145
  %i.mu = load i32, ptr %i.jr, align 8, !tbaa !145
  %i.mv = add nsw i32 %i.mu, -1
  store i32 %i.mv, ptr %i.jr, align 8, !tbaa !145
  %i.mw = tail call i32 @llvm.smax.i32(i32 %.2227.us.us.us.i, i32 %spec.select.us.us.us.i)
  store i32 %spec.select.us.us.us.i, ptr %i.jj, align 8, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge222.us.us.us.3.i, %bb.m, %bb.k
  %.2177.us.us.us.i = phi i32 [ %.1176226.us.us.us.i, %bb.k ], [ %.1176226.us.us.us.i, %._crit_edge222.us.us.us.3.i ], [ 1, %bb.r ], [ %.1176226.us.us.us.i, %bb.m ] ; 3 uses
  %.3.us.us.us.i = phi i32 [ %.2227.us.us.us.i, %bb.k ], [ %.2227.us.us.us.i, %._crit_edge222.us.us.us.3.i ], [ %i.mw, %bb.r ], [ %.2227.us.us.us.i, %bb.m ] ; 2 uses
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %indvars.iv.next.i124 = add nsw i32 %indvars.iv.i123, 1
  %exitcond.not.i125 = icmp eq i64 %indvars.iv.next302.i, %i.id
  br i1 %exitcond.not.i125, label %._crit_edge.us240.us.us.i, label %bb.k, !llvm.loop !153

.lr.ph221.us.us.us.i:                             ; preds = %bb.n
  %i.mx = add nuw nsw i64 %indvars.iv301.i, 1
  %.not199.us.us.us.i = icmp samesign ult i64 %i.mx, %i.id
  %i.my = trunc i64 %indvars.iv301.i to i32
  %i.mz = add i32 %i.my, 2
  %i.na = select i1 %.not199.us.us.us.i, i32 %i.mz, i32 %i.ia
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %.not334.i = icmp sgt i64 %indvars.iv301.i, %i.nb
  br i1 %.not334.i, label %._crit_edge222.us.us.us.i, label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %.lr.ph221.us.us.us.i, %._crit_edge.us.us.us.us.i
  %indvars.iv298.i = phi i64 [ %indvars.iv.next299.i, %._crit_edge.us.us.us.us.i ], [ %i.ih, %.lr.ph221.us.us.us.i ] ; 2 uses
  %.1172218.us.us.us.us.i = phi i32 [ %.3174.us.us.us.us.i, %._crit_edge.us.us.us.us.i ], [ %i.jk, %.lr.ph221.us.us.us.i ]
  %i.nc = mul nuw nsw i64 %indvars.iv298.i, %i.id
  %invariant.gep.i = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.nc
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.us.us.us.us.i
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %bb.t ], [ %i.kh, %.lr.ph.us.us.us.us.i ] ; 2 uses
  %.2173216.us.us.us.us.i = phi i32 [ %.3174.us.us.us.us.i, %bb.t ], [ %.1172218.us.us.us.us.i, %.lr.ph.us.us.us.us.i ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep.i, i64 %indvars.iv290.i
  %i.nd = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !137 ; 3 uses
  %i.nf = icmp sgt i32 %i.ne, %i.jk
  %i.ng = icmp eq i32 %.2173216.us.us.us.us.i, %i.jk
  %i.nh = tail call i32 @llvm.smin.i32(i32 %i.ne, i32 %.2173216.us.us.us.us.i)
  %spec.select204.us.us.us.us.i = select i1 %i.ng, i32 %i.ne, i32 %i.nh
  %.3174.us.us.us.us.i = select i1 %i.nf, i32 %spec.select204.us.us.us.us.i, i32 %.2173216.us.us.us.us.i ; 3 uses
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %i.ni = icmp slt i64 %indvars.iv.next291.i, %i.nb
  br i1 %i.ni, label %bb.t, label %._crit_edge.us.us.us.us.i, !llvm.loop !151

._crit_edge.us.us.us.us.i:                        ; preds = %bb.t
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1 ; 2 uses
  %i.nj = icmp slt i64 %indvars.iv.next299.i, %i.im
  br i1 %i.nj, label %.lr.ph.us.us.us.us.i, label %._crit_edge222.us.us.us.i, !llvm.loop !152

._crit_edge.us240.us.us.i:                        ; preds = %bb.s
  %indvars.iv.next294.i = add nsw i32 %indvars.iv293.i, 1
  %exitcond308.not.i = icmp eq i64 %i.ii, %i.ie
  br i1 %exitcond308.not.i, label %._crit_edge233.split.us.us.us.i, label %.preheader214.us.us.us.i.backedge

.preheader214.us.us.us.i.backedge:                ; preds = %._crit_edge.us240.us.us.i, %._crit_edge233.split.us.us.us.i
  %indvars.iv304.i.be = phi i64 [ %i.ii, %._crit_edge.us240.us.us.i ], [ 0, %._crit_edge233.split.us.us.us.i ]
  %indvars.iv293.i.be = phi i32 [ %indvars.iv.next294.i, %._crit_edge.us240.us.us.i ], [ -1, %._crit_edge233.split.us.us.us.i ]
  %.0175230.us.us.us.i.be = phi i32 [ %.2177.us.us.us.i, %._crit_edge.us240.us.us.i ], [ 0, %._crit_edge233.split.us.us.us.i ]
  br label %.preheader214.us.us.us.i, !llvm.loop !154

._crit_edge233.split.us.us.us.i:                  ; preds = %._crit_edge.us240.us.us.i
  %.not.us.us.i = icmp eq i32 %.2177.us.us.us.i, 0
  br i1 %.not.us.us.i, label %.preheader.lr.ph.i118, label %.preheader214.us.us.us.i.backedge

.preheader.lr.ph.i118:                            ; preds = %._crit_edge233.split.us.us.us.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 3500 ; 2 uses
  br label %.preheader.i119

.preheader.i119:                                  ; preds = %.preheader.lr.ph.i118, %._crit_edge.i120
  %i.nl = phi i32 [ %i.rt, %._crit_edge.i120 ], [ %i.dr, %.preheader.lr.ph.i118 ] ; 4 uses
  %i.nm = phi i32 [ %i.ru, %._crit_edge.i120 ], [ %i.ia, %.preheader.lr.ph.i118 ] ; 2 uses
  %i.nn = phi i32 [ %i.rv, %._crit_edge.i120 ], [ %i.ia, %.preheader.lr.ph.i118 ] ; 3 uses
  %.1166271.i = phi i32 [ %i.rw, %._crit_edge.i120 ], [ 0, %.preheader.lr.ph.i118 ] ; 12 uses
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph270.i, label %._crit_edge.i120

.lr.ph270.i:                                      ; preds = %.preheader.i119
  %i.np = tail call i32 @llvm.smax.i32(i32 %.1166271.i, i32 1) ; 2 uses
  %i.nq = add nsw i32 %i.np, -1
  %i.nr = add nuw nsw i32 %.1166271.i, 2          ; 2 uses
  %i.ns = icmp eq i32 %.1166271.i, 0
  %factor.i = shl nuw i32 %.1166271.i, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge258.i, %.lr.ph270.i
  %i.nt = phi i32 [ %i.nl, %.lr.ph270.i ], [ %i.rn, %._crit_edge258.i ] ; 3 uses
  %i.nu = phi i32 [ %i.nm, %.lr.ph270.i ], [ %i.ro, %._crit_edge258.i ] ; 3 uses
  %i.nv = phi i32 [ %i.nl, %.lr.ph270.i ], [ %i.rp, %._crit_edge258.i ] ; 3 uses
  %i.nw = phi i32 [ %i.nl, %.lr.ph270.i ], [ %i.rq, %._crit_edge258.i ] ; 3 uses
  %i.nx = phi i32 [ %i.nn, %.lr.ph270.i ], [ %i.ro, %._crit_edge258.i ] ; 3 uses
  %.1168267.i = phi i32 [ 0, %.lr.ph270.i ], [ %i.rr, %._crit_edge258.i ] ; 14 uses
  %i.ny = load ptr, ptr %i.hy, align 8, !tbaa !20
  %i.nz = mul nsw i32 %i.nx, %.1166271.i
  %i.oa = add nsw i32 %i.nz, %.1168267.i
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [40 x i8], ptr %i.ny, i64 %i.ob ; 3 uses
  %.253.i = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.nw)
  %.not.i = icmp sgt i32 %i.np, %.253.i
  br i1 %.not.i, label %._crit_edge258.i, label %.lr.ph257.i

.lr.ph257.i:                                      ; preds = %bb.u
  %i.od = tail call i32 @llvm.smax.i32(i32 %.1168267.i, i32 1) ; 2 uses
  %i.oe = add nsw i32 %i.od, -1                   ; 2 uses
  %i.of = add nuw nsw i32 %.1168267.i, 2          ; 3 uses
  %i.og = icmp eq i32 %.1168267.i, 0
  %or.cond3.not209.i = or i1 %i.ns, %i.og
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %factor210.i = shl nuw i32 %.1168267.i, 1
  %or.cond3.not209.fr.i = freeze i1 %or.cond3.not209.i
  br i1 %or.cond3.not209.fr.i, label %._crit_edge258.i, label %.lr.ph257.split.i

.lr.ph257.split.i:                                ; preds = %.lr.ph257.i, %._crit_edge.split.i
  %i.oi = phi i32 [ %i.rg, %._crit_edge.split.i ], [ %i.nt, %.lr.ph257.i ]
  %i.oj = phi i32 [ %i.rh, %._crit_edge.split.i ], [ %i.nu, %.lr.ph257.i ] ; 3 uses
  %i.ok = phi i32 [ %i.ri, %._crit_edge.split.i ], [ %i.nv, %.lr.ph257.i ]
  %i.ol = phi i32 [ %i.rj, %._crit_edge.split.i ], [ %i.nx, %.lr.ph257.i ] ; 3 uses
  %i.om = phi i32 [ %i.rk, %._crit_edge.split.i ], [ %i.nx, %.lr.ph257.i ] ; 4 uses
  %.1254.i = phi i32 [ %i.rl, %._crit_edge.split.i ], [ %i.nq, %.lr.ph257.i ] ; 6 uses
  %.201248.i = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %i.om)
  %.not276.i = icmp sgt i32 %i.od, %.201248.i
  br i1 %.not276.i, label %._crit_edge.split.i, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph257.split.i
  %.not278.i = icmp eq i32 %.1254.i, %.1166271.i
  %i.on = sub i32 %factor.i, %.1254.i             ; 2 uses
  %i.oo = icmp ne i32 %.1254.i, %.1166271.i       ; 2 uses
  %.not278.i.fr = freeze i1 %.not278.i
  br i1 %.not278.i.fr, label %.lr.ph.i121.split.us, label %.lr.ph.i121.split

.lr.ph.i121.split.us:                             ; preds = %.lr.ph.i121, %bb.ab
  %i.op = phi i32 [ %i.px, %bb.ab ], [ %i.oj, %.lr.ph.i121 ] ; 4 uses
  %i.oq = phi i32 [ %i.py, %bb.ab ], [ %i.ol, %.lr.ph.i121 ] ; 4 uses
  %i.or = phi i32 [ %i.py, %bb.ab ], [ %i.om, %.lr.ph.i121 ] ; 3 uses
  %.1164249.i.us = phi i32 [ %i.pz, %bb.ab ], [ %i.oe, %.lr.ph.i121 ] ; 4 uses
  %.not277.i.us = icmp eq i32 %.1164249.i.us, %.1168267.i ; 2 uses
  %or.cond272.not.i.us = xor i1 %i.oo, %.not277.i.us
end_hunk_0

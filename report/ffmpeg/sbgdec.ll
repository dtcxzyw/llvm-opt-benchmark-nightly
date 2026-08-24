Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbgdec?download=true
inline.NumInlined: 102
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sbg_read_header:bb.a
  %i.fb = add nuw i64 %.fr124.i, 86399999999      ; 2 uses
  %i.fc = urem i64 %i.fb, 86400000000
  %i.fd = sub nuw i64 %i.fb, %i.fc
  %i.fe = call i64 @llvm.smax.i64(i64 %i.fd, i64 86400000000) ; 6 uses
  %i.ff = icmp sgt i32 %i.et, 0
  br i1 %i.ff, label %.lr.ph.i, label %._crit_edge.i67

.lr.ph.i:                                         ; preds = %bb.al
  %i.fg = xor i64 %i.fe, 9223372036854775807
  %i.fh = zext nneg i32 %i.et to i64              ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i74, %bb.ap ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %indvars.iv.i73 ; 4 uses
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i73, 1 ; 4 uses
  %i.fj = icmp ne i64 %indvars.iv.next.i74, %i.fh ; 3 uses
  %i.fk = select i1 %i.fj, i64 %indvars.iv.next.i74, i64 0
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fi, align 8, !tbaa !72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !75
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 42
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !76  ; 2 uses
  %.not127.i = icmp ne i8 %i.fp, 0
  %or.cond.i = select i1 %.not127.i, i1 true, i1 %i.fj
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = load i64, ptr %i.fl, align 8, !tbaa !72 ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, %i.fg
  br i1 %i.fr, label %encode_intervals.exit, label %.thread.i

bb.ao:                                            ; preds = %bb.am
  %.not129.i = icmp eq i8 %i.fp, 0
  br i1 %.not129.i, label %..thread_crit_edge.i, label %bb.ap

..thread_crit_edge.i:                             ; preds = %bb.ao
  %.pre.i = load i64, ptr %i.fl, align 8, !tbaa !72
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.an
  %i.fs = phi i64 [ %.pre.i, %..thread_crit_edge.i ], [ %i.fq, %bb.an ]
  %i.ft = select i1 %i.fj, i64 0, i64 %i.fe
  %i.fu = add nsw i64 %i.fs, %i.ft
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i, %bb.ao
  %i.fv = phi i64 [ %i.fu, %.thread.i ], [ %i.fm, %bb.ao ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !77
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i74, %i.fh
  br i1 %exitcond.not.i, label %.lr.ph141.i, label %bb.am, !llvm.loop !78

.lr.ph141.i:                                      ; preds = %bb.ap, %bb.ar
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %bb.ar ], [ 0, %bb.ap ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %indvars.iv156.i ; 4 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 3 uses
  %.not203.i = icmp eq i64 %indvars.iv.next157.i, %i.fh ; 3 uses
  %i.fy = select i1 %.not203.i, i64 0, i64 %indvars.iv.next157.i
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %i.fy ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 42
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !76
  %.not126.i = icmp eq i8 %i.gb, 0
  br i1 %.not126.i, label %bb.aq, label %.lr.ph141._crit_edge.i

.lr.ph141._crit_edge.i:                           ; preds = %.lr.ph141.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.pre175.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !75
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph141.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !75
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !77
  %i.gg = sub nsw i64 %i.gf, %i.eq
  %..i75 = call i64 @llvm.smax.i64(i64 %i.gd, i64 %i.gg)
  store i64 %..i75, ptr %i.ge, align 8, !tbaa !77
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !75
  %i.gl = add nsw i64 %i.gk, %i.eq
  %i.gm = call i64 @llvm.smin.i64(i64 %i.gi, i64 %i.gl) ; 2 uses
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !75
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph141._crit_edge.i
  %i.gn = phi i64 [ %.pre175.i, %.lr.ph141._crit_edge.i ], [ %i.gm, %bb.aq ]
  %i.go = select i1 %.not203.i, i64 %i.fe, i64 0
  %i.gp = add nsw i64 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !79
  br i1 %.not203.i, label %._crit_edge.i67, label %.lr.ph141.i, !llvm.loop !80

._crit_edge.i67:                                  ; preds = %bb.ar, %bb.al
  %.sroa.3.0..sroa_idx105 = getelementptr i8, ptr %i.ev, i64 -40
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx105, align 8, !tbaa !63
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -16
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -12
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !47 ; 5 uses
  %.sroa.18106.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -7
  %.sroa.18106.0.copyload = load i8, ptr %.sroa.18106.0..sroa_idx, align 1, !tbaa !81
  %.sroa.19.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -6
  %.sroa.19.0.copyload = load i8, ptr %.sroa.19.0..sroa_idx, align 2, !tbaa !81 ; 3 uses
  %i.gr = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.3.0.copyload, i64 range(i64 0, 9223372022400000001) %i.fe) ; 2 uses
  %i.gs = extractvalue { i64, i1 } %i.gr, 1
  %i.gt = extractvalue { i64, i1 } %i.gr, 0       ; 2 uses
  br i1 %i.gs, label %encode_intervals.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i67
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -24
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !63
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.ev, i64 -32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !63
  %i.gu = sub nsw i64 %.sroa.7.0.copyload, %i.fe  ; 2 uses
  %i.gv = sub nsw i64 %.sroa.11.0.copyload, %i.fe ; 2 uses
  %i.gw = icmp sgt i32 %i.et, -1                  ; 2 uses
  br i1 %i.gw, label %.lr.ph144.i, label %.preheader134.i

.lr.ph144.i:                                      ; preds = %bb.as
  %i.gx = sext i32 %i.en to i64                   ; 6 uses
  %i.gy = call i64 @av_rescale(i64 noundef %i.gt, i64 noundef %i.gx, i64 noundef 1000000) #15 ; 2 uses
  %i.gz = call i64 @av_rescale(i64 noundef %i.gu, i64 noundef %i.gx, i64 noundef 1000000) #15 ; 2 uses
  %i.ha = call i64 @av_rescale(i64 noundef %i.gv, i64 noundef %i.gx, i64 noundef 1000000) #15 ; 2 uses
  %exitcond161.peel.not.i = icmp eq i32 %i.et, 0
  br i1 %exitcond161.peel.not.i, label %.preheader134.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph144.i
  %i.hb = zext nneg i32 %i.et to i64
  br label %.peel.next.i

.preheader134.i:                                  ; preds = %.peel.next.i, %.lr.ph144.i, %bb.as
  %.sroa.3.0 = phi i64 [ %i.gy, %.lr.ph144.i ], [ %i.gt, %bb.as ], [ %i.gy, %.peel.next.i ]
  %.sroa.7.0 = phi i64 [ %i.gz, %.lr.ph144.i ], [ %i.gu, %bb.as ], [ %i.gz, %.peel.next.i ] ; 4 uses
  %.sroa.11.0 = phi i64 [ %i.ha, %.lr.ph144.i ], [ %i.gv, %bb.as ], [ %i.ha, %.peel.next.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !82 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph146.i, label %.preheader.i

.lr.ph146.i:                                      ; preds = %.preheader134.i
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !83
  %wide.trip.count166.i = zext nneg i32 %i.hd to i64
  br label %bb.at

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %indvars.iv = phi i64 [ 0, %.peel.next.i.preheader ], [ %indvars.iv.next, %.peel.next.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %indvars.iv ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !75
  %i.hk = call i64 @av_rescale(i64 noundef %i.hj, i64 noundef %i.gx, i64 noundef 1000000) #15
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !75
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !77
  %i.hn = call i64 @av_rescale(i64 noundef %i.hm, i64 noundef %i.gx, i64 noundef 1000000) #15
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !77
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !79
  %i.hq = call i64 @av_rescale(i64 noundef %i.hp, i64 noundef %i.gx, i64 noundef 1000000) #15
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next, %i.hb
  br i1 %exitcond161.not.i, label %.preheader134.i, label %.peel.next.i, !llvm.loop !84

.preheader.i:                                     ; preds = %bb.at, %.preheader134.i
  br i1 %i.gw, label %.lr.ph148.i, label %._crit_edge149.i.thread

.lr.ph148.i:                                      ; preds = %.preheader.i
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ia = ashr i64 %.sroa.11.0, 1
  %i.ib = and i64 %.sroa.11.0, 1
  %i.ic = icmp sgt i32 %.sroa.17.0.copyload, 0
  %i.id = ashr i64 %.sroa.7.0, 1
  %i.ie = add nsw i64 %i.id, %i.ia
  %i.if = and i64 %i.ib, %.sroa.7.0
  %i.ig = add nsw i64 %i.ie, %i.if
  br label %bb.au

bb.at:                                            ; preds = %bb.at, %.lr.ph146.i
  %indvars.iv163.i = phi i64 [ 0, %.lr.ph146.i ], [ %indvars.iv.next164.i, %bb.at ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %indvars.iv163.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x i32> splat (i32 -1), ptr %i.ii, align 4, !tbaa !47
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %wide.trip.count166.i
  br i1 %exitcond167.not.i, label %.preheader.i, label %bb.at, !llvm.loop !86

bb.au:                                            ; preds = %generate_transition.exit.i, %.lr.ph148.i
  %i.ij = phi i32 [ %i.et, %.lr.ph148.i ], [ %i.mx, %generate_transition.exit.i ]
  %.4147.i = phi i32 [ -1, %.lr.ph148.i ], [ %i.in, %generate_transition.exit.i ] ; 3 uses
  %i.ik = icmp slt i32 %.4147.i, 0                ; 7 uses
  %.pre176.i = load ptr, ptr %i.er, align 8, !tbaa !71 ; 2 uses
  %i.il = zext nneg i32 %.4147.i to i64
  %i.im = getelementptr inbounds nuw [48 x i8], ptr %.pre176.i, i64 %i.il ; 11 uses
  %i.in = add nsw i32 %.4147.i, 1                 ; 3 uses
  br i1 %i.ik, label %.cont115, label %.cont115.thread

.cont115:                                         ; preds = %bb.au
  %.sroa.gep85164 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %.sroa.gep88167 = getelementptr inbounds nuw i8, ptr %i.im, i64 36 ; 2 uses
  br i1 %i.ic, label %.lr.ph.i.i72, label %.loopexit.i.cont.thread

.cont115.thread:                                  ; preds = %bb.au
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.else.val150 = load i64, ptr %.sroa.gep83, align 8, !tbaa !75
  %.sroa.gep85 = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %.else.val146 = load i64, ptr %.sroa.gep85, align 8, !tbaa !77 ; 2 uses
  %.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.im, i64 36 ; 3 uses
  %.else.val118 = load i32, ptr %.sroa.gep88, align 4, !tbaa !87 ; 2 uses
  %i.io = icmp sgt i32 %.else.val118, 0
  br i1 %i.io, label %.lr.ph.i.i72, label %.loopexit.i.cont.else

.lr.ph.i.i72:                                     ; preds = %.cont115.thread, %.cont115
  %.sroa.gep85165168268 = phi ptr [ %.sroa.gep85, %.cont115.thread ], [ %.sroa.gep85164, %.cont115 ]
  %i.ip = phi i64 [ %.else.val150, %.cont115.thread ], [ %.sroa.3.0, %.cont115 ]
  %i.iq = phi i64 [ %.else.val146, %.cont115.thread ], [ %.sroa.7.0, %.cont115 ]
  %.sroa.gep88169267 = phi ptr [ %.sroa.gep88, %.cont115.thread ], [ %.sroa.gep88167, %.cont115 ] ; 3 uses
  %.sroa.gep103 = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  br label %.backedge

bb.av:                                            ; preds = %.cont127
  %i.ir = add nuw nsw i32 %.019.i.i, 1            ; 3 uses
  br i1 %i.ik, label %.cont123, label %.cont123.thread

.cont123:                                         ; preds = %bb.av
  %i.is = icmp slt i32 %i.ir, %.sroa.17.0.copyload
  br i1 %i.is, label %.backedge.backedge, label %.loopexit.i.cont.thread

.backedge.backedge:                               ; preds = %.cont123, %.cont123.thread
  br label %.backedge, !llvm.loop !88

.cont123.thread:                                  ; preds = %bb.av
  %.else.val126 = load i32, ptr %.sroa.gep88169267, align 4, !tbaa !87 ; 2 uses
  %i.it = icmp slt i32 %i.ir, %.else.val126
  br i1 %i.it, label %.backedge.backedge, label %.loopexit.i.thread

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i.i72
  %.019.i.i = phi i32 [ 0, %.lr.ph.i.i72 ], [ %i.ir, %.backedge.backedge ] ; 2 uses
  %i.iu = load ptr, ptr %i.hr, align 8, !tbaa !83
  br i1 %i.ik, label %.cont127, label %.else129

.else129:                                         ; preds = %.backedge
  %.else.val130 = load i32, ptr %.sroa.gep103, align 8, !tbaa !89
  br label %.cont127

.cont127:                                         ; preds = %.backedge, %.else129
  %i.iv = phi i32 [ %.sroa.15.0.copyload, %.backedge ], [ %.else.val130, %.else129 ]
  %i.iw = add nsw i32 %i.iv, %.019.i.i
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [24 x i8], ptr %i.iu, i64 %i.ix ; 2 uses
  %i.iz = call fastcc i32 @generate_interval(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %7, i64 noundef %i.ip, i64 noundef %i.iq, ptr noundef %i.iy, ptr noundef %i.iy, i32 noundef 0) ; 2 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %encode_intervals.exit, label %bb.av

.loopexit.i.thread:                               ; preds = %.cont123.thread
  %.pre177.i.else.val = load i64, ptr %.sroa.gep85165168268, align 8, !tbaa !77
  br label %.loopexit.i.cont.else

.loopexit.i.cont.thread:                          ; preds = %.cont123, %.cont115
  %.sroa.gep88169265 = phi ptr [ %.sroa.gep88167, %.cont115 ], [ %.sroa.gep88169267, %.cont123 ]
  %.sroa.gep94172 = getelementptr inbounds nuw i8, ptr %i.im, i64 42
  br label %.loopexit.i.cont.cont

.loopexit.i.cont.else:                            ; preds = %.cont115.thread, %.loopexit.i.thread
  %.sroa.gep88169264 = phi ptr [ %.sroa.gep88169267, %.loopexit.i.thread ], [ %.sroa.gep88, %.cont115.thread ]
  %i.jb = phi i64 [ %.pre177.i.else.val, %.loopexit.i.thread ], [ %.else.val146, %.cont115.thread ] ; 3 uses
  %i.jc = phi i32 [ %.else.val126, %.loopexit.i.thread ], [ %.else.val118, %.cont115.thread ]
  %.sroa.gep91171 = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %.else.val142 = load i64, ptr %.sroa.gep91171, align 8, !tbaa !79 ; 3 uses
  %i.jd = ashr i64 %i.jb, 1
  %i.je = ashr i64 %.else.val142, 1
  %i.jf = add nsw i64 %i.je, %i.jd
  %i.jg = and i64 %i.jb, 1
  %i.jh = and i64 %i.jg, %.else.val142
  %i.ji = add nsw i64 %i.jf, %i.jh
  %.sroa.gep94 = getelementptr inbounds nuw i8, ptr %i.im, i64 42 ; 2 uses
  %.else.val = load i8, ptr %.sroa.gep94, align 2, !tbaa !76
  %.sroa.gep97 = getelementptr inbounds nuw i8, ptr %i.im, i64 41
  %.else.val114 = load i8, ptr %.sroa.gep97, align 1, !tbaa !90
  br label %.loopexit.i.cont.cont

.loopexit.i.cont.cont:                            ; preds = %.loopexit.i.cont.thread, %.loopexit.i.cont.else
  %.sroa.gep88169263 = phi ptr [ %.sroa.gep88169265, %.loopexit.i.cont.thread ], [ %.sroa.gep88169264, %.loopexit.i.cont.else ] ; 2 uses
  %i.jj = phi i8 [ %.sroa.19.0.copyload, %.loopexit.i.cont.thread ], [ %.else.val, %.loopexit.i.cont.else ]
  %i.jk = phi i64 [ %.sroa.7.0, %.loopexit.i.cont.thread ], [ %i.jb, %.loopexit.i.cont.else ] ; 2 uses
  %i.jl = phi i32 [ %.sroa.17.0.copyload, %.loopexit.i.cont.thread ], [ %i.jc, %.loopexit.i.cont.else ]
  %i.jm = phi i64 [ %.sroa.11.0, %.loopexit.i.cont.thread ], [ %.else.val142, %.loopexit.i.cont.else ] ; 2 uses
  %i.jn = phi i64 [ %i.ig, %.loopexit.i.cont.thread ], [ %i.ji, %.loopexit.i.cont.else ] ; 2 uses
  %.sroa.gep94173176 = phi ptr [ %.sroa.gep94172, %.loopexit.i.cont.thread ], [ %.sroa.gep94, %.loopexit.i.cont.else ] ; 2 uses
  %i.jo = phi i8 [ %.sroa.18106.0.copyload, %.loopexit.i.cont.thread ], [ %.else.val114, %.loopexit.i.cont.else ]
  %.pn.in = srem i32 %i.in, %i.ij
  %.pn = zext i32 %.pn.in to i64
  %i.jp = getelementptr inbounds nuw [48 x i8], ptr %.pre176.i, i64 %.pn ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !91
  %i.js = and i8 %i.jr, %i.jo
  %i.jt = or i8 %i.js, %i.jj
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 36 ; 3 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !87
  %..i.i = call i32 @llvm.smax.i32(i32 %i.jl, i32 %i.jv) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.jw = icmp sgt i32 %..i.i, 0
  %.sroa.gep100 = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 32 ; 2 uses
  %i.jy = icmp eq i8 %i.jt, 3                     ; 2 uses
  br i1 %i.jw, label %.preheader.preheader.i.i, label %generate_transition.exit.i

.preheader.preheader.i.i:                         ; preds = %.loopexit.i.cont.cont, %bb.br
  %.078.i.i = phi i32 [ %i.ll, %bb.br ], [ 0, %.loopexit.i.cont.cont ] ; 6 uses
  br i1 %i.ik, label %.preheader.preheader.i.i.cont, label %.preheader.preheader.i.i.cont.thread

.preheader.preheader.i.i.cont:                    ; preds = %.preheader.preheader.i.i
  %i.jz = icmp slt i32 %.078.i.i, %.sroa.17.0.copyload
  br i1 %i.jz, label %bb.aw, label %bb.ax

.preheader.preheader.i.i.cont.thread:             ; preds = %.preheader.preheader.i.i
  %.else.val120 = load i32, ptr %.sroa.gep88169263, align 4, !tbaa !87
  %i.ka = icmp slt i32 %.078.i.i, %.else.val120
  br i1 %i.ka, label %.else137, label %bb.ax

bb.aw:                                            ; preds = %.preheader.preheader.i.i.cont
  %i.kb = load ptr, ptr %i.hr, align 8, !tbaa !83
  br label %.cont135

.else137:                                         ; preds = %.preheader.preheader.i.i.cont.thread
  %i.kc = load ptr, ptr %i.hr, align 8, !tbaa !83
  %.else.val138 = load i32, ptr %.sroa.gep100, align 8, !tbaa !89
  br label %.cont135

.cont135:                                         ; preds = %bb.aw, %.else137
  %i.kd = phi ptr [ %i.kb, %bb.aw ], [ %i.kc, %.else137 ]
  %i.ke = phi i32 [ %.sroa.15.0.copyload, %bb.aw ], [ %.else.val138, %.else137 ]
  %i.kf = add nsw i32 %i.ke, %.078.i.i
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [24 x i8], ptr %i.kd, i64 %i.kg
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader.preheader.i.i.cont.thread, %.cont135, %.preheader.preheader.i.i.cont
  %i.ki = phi ptr [ %i.kh, %.cont135 ], [ %1, %.preheader.preheader.i.i.cont ], [ %1, %.preheader.preheader.i.i.cont.thread ] ; 2 uses
  %i.kj = load i32, ptr %i.ju, align 4, !tbaa !87
  %i.kk = icmp slt i32 %.078.i.i, %i.kj
  br i1 %i.kk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kl = load ptr, ptr %i.hr, align 8, !tbaa !83
  %i.km = load i32, ptr %i.jx, align 8, !tbaa !89
  %i.kn = add nsw i32 %i.km, %.078.i.i
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [24 x i8], ptr %i.kl, i64 %i.ko
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kq = phi ptr [ %i.kp, %bb.ay ], [ %2, %bb.ax ] ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.ki, %1
  br i1 %.not.i.i68, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.ki, i64 24, i1 false), !tbaa.struct !92
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not73.i.i = icmp eq ptr %i.kq, %2
  br i1 %.not73.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %i.kq, i64 24, i1 false), !tbaa.struct !92
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.ik, label %.cont, label %.else

.else:                                            ; preds = %bb.bf
  %.else.val108 = load i8, ptr %.sroa.gep94173176, align 2, !tbaa !76
  br label %.cont

.cont:                                            ; preds = %bb.bf, %.else
  %i.kr = phi i8 [ %.sroa.19.0.copyload, %bb.bf ], [ %.else.val108, %.else ]
  %.not74.i.i = icmp eq i8 %i.kr, 0
  %.pre83.i.i = load i32, ptr %i.hs, align 4, !tbaa !93 ; 4 uses
  br i1 %.not74.i.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %.cont
  %i.ks = icmp eq i32 %.pre83.i.i, 0
  br i1 %i.ks, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  store i32 0, ptr %i.hv, align 4, !tbaa !96
  %.pre.i.i71 = load i32, ptr %i.hs, align 4, !tbaa !93
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.kt = load i32, ptr %i.ht, align 4, !tbaa !93
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  store i32 0, ptr %i.hu, align 4, !tbaa !96
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %.cont
  %i.kv = phi i32 [ %.pre.i.i71, %bb.bh ], [ %.pre83.i.i, %bb.bj ], [ %.pre83.i.i, %bb.bi ], [ %.pre83.i.i, %.cont ] ; 2 uses
  %i.kw = load i32, ptr %i.ht, align 4, !tbaa !93
  %i.kx = icmp eq i32 %i.kv, %i.kw
  %i.ky = icmp ne i32 %i.kv, 3
  %or.cond.i.i = and i1 %i.ky, %i.kx
  br i1 %or.cond.i.i, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.jy, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kz = load i32, ptr %1, align 4, !tbaa !97
  %i.la = load i32, ptr %2, align 4, !tbaa !97
  %i.lb = icmp eq i32 %i.kz, %i.la
  br i1 %i.lb, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.lc = load i32, ptr %i.hw, align 4, !tbaa !98
  %i.ld = load i32, ptr %i.hx, align 4, !tbaa !98
  %i.le = icmp eq i32 %i.lc, %i.ld
  br i1 %i.le, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.lf = call fastcc i32 @generate_interval(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %7, i64 noundef %i.jk, i64 noundef %i.jm, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 3) ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %generate_transition.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.li = load i64, ptr %i.hz, align 4
  store i64 %i.li, ptr %i.lh, align 4
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  store i32 0, ptr %i.hy, align 4, !tbaa !96
  %i.lj = call fastcc i32 @generate_interval(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %7, i64 noundef %i.jk, i64 noundef %i.jn, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 1) ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %generate_transition.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ll = add nuw nsw i32 %.078.i.i, 1            ; 2 uses
  %exitcond.not.i.i69 = icmp eq i32 %i.ll, %..i.i
  br i1 %exitcond.not.i.i69, label %._crit_edge.i.i70, label %.preheader.preheader.i.i, !llvm.loop !99

._crit_edge.i.i70:                                ; preds = %bb.br, %bb.cm
  %.078.1.i.i = phi i32 [ %i.mw, %bb.cm ], [ 0, %bb.br ] ; 6 uses
  br i1 %i.ik, label %._crit_edge.i.i70.cont, label %._crit_edge.i.i70.cont.thread

._crit_edge.i.i70.cont:                           ; preds = %._crit_edge.i.i70
  %i.lm = icmp slt i32 %.078.1.i.i, %.sroa.17.0.copyload
  br i1 %i.lm, label %bb.bs, label %bb.bt

._crit_edge.i.i70.cont.thread:                    ; preds = %._crit_edge.i.i70
  %.else.val122 = load i32, ptr %.sroa.gep88169263, align 4, !tbaa !87
  %i.ln = icmp slt i32 %.078.1.i.i, %.else.val122
  br i1 %i.ln, label %.else133, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i70.cont
  %i.lo = load ptr, ptr %i.hr, align 8, !tbaa !83
  br label %.cont131

.else133:                                         ; preds = %._crit_edge.i.i70.cont.thread
  %i.lp = load ptr, ptr %i.hr, align 8, !tbaa !83
  %.else.val134 = load i32, ptr %.sroa.gep100, align 8, !tbaa !89
  br label %.cont131

.cont131:                                         ; preds = %bb.bs, %.else133
  %i.lq = phi ptr [ %i.lo, %bb.bs ], [ %i.lp, %.else133 ]
  %i.lr = phi i32 [ %.sroa.15.0.copyload, %bb.bs ], [ %.else.val134, %.else133 ]
  %i.ls = add nsw i32 %i.lr, %.078.1.i.i
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [24 x i8], ptr %i.lq, i64 %i.lt
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i70.cont.thread, %.cont131, %._crit_edge.i.i70.cont
  %i.lv = phi ptr [ %i.lu, %.cont131 ], [ %1, %._crit_edge.i.i70.cont ], [ %1, %._crit_edge.i.i70.cont.thread ] ; 2 uses
  %i.lw = load i32, ptr %i.ju, align 4, !tbaa !87
  %i.lx = icmp slt i32 %.078.1.i.i, %i.lw
  br i1 %i.lx, label %bb.bu, label %bb.bv

end_hunk_0

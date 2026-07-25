inline.NumInlined: 105
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 77
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 210392 ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 210396 ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 210400 ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 210404 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 213572 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2876 ; 56 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 210408 ; 18 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 213576 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 213568 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 213556 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 207676 ; 54 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 213584 ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2924 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 213968 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 213992 ; 12 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 214064 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %i.er = getelementptr i8, ptr %0, i64 2908      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 214016 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 214040 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 234752 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 216248 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 199484 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 213484 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 210412 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 211436 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2900 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 252240 ; 86 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 252248 ; 40 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 215220
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 214448
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 215188 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 213548 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 252328 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 233724
  %.phi.trans.insert.i319 = getelementptr inbounds nuw i8, ptr %0, i64 215190
  %.not218 = icmp eq i32 %1, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 252296
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 252264
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 252280
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 252256
  %i.fq = zext i32 %2 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 215190 ; 2 uses
  br label %CheckErrors.exit333

CheckErrors.exit333:                              ; preds = %CheckErrors.exit333.backedge, %.preheader
  %.2199 = phi i32 [ %.1198, %.preheader ], [ %i.cmt, %CheckErrors.exit333.backedge ] ; 7 uses
  %i.fs = load i32, ptr %i.di, align 8, !tbaa !56
  %.not214 = icmp eq i32 %i.fs, 0
  br i1 %.not214, label %bb.bt, label %bb.r

bb.r:                                             ; preds = %CheckErrors.exit333
  %i.ft = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.fw = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.fx = tail call i32 %i.fv(ptr noundef %i.fw) #14, !inline_history !139
  store i32 %i.fx, ptr %i.dm, align 8, !tbaa !135
  %i.fy = load ptr, ptr %i.dn, align 8, !tbaa !136
  %i.fz = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.ga = tail call i32 %i.fy(ptr noundef %i.fz, ptr noundef nonnull %i.do) #14, !inline_history !139 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i, label %ReadMatchDistances.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = add i32 %i.ga, -2
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4  ; 5 uses
  %i.gf = load i32, ptr %i.dp, align 8, !tbaa !52
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.u, label %ReadMatchDistances.exit.i

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.gi = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.gj = tail call ptr %i.gh(ptr noundef %i.gi) #14, !inline_history !139
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -1 ; 2 uses
  %i.gl = add i32 %i.ga, -1
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = add i32 %i.go, 1
  %i.gq = load i32, ptr %i.dm, align 8, !tbaa !135
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 273) ; 3 uses
  %i.gr = zext i32 %i.gp to i64
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.gk, i64 %i.gs
  %i.gu = icmp ult i32 %i.ge, %spec.store.select.i.i
  br i1 %i.gu, label %.lr.ph.preheader.i.i, label %ReadMatchDistances.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.gv = zext nneg i32 %i.ge to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.gv, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv.i.i
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !21
  %i.ha = icmp eq i8 %i.gx, %i.gz
  br i1 %i.ha, label %bb.v, label %.critedge.loopexit.split.loop.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %spec.store.select.i.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %ReadMatchDistances.exit.i, label %.lr.ph.i.i, !llvm.loop !140

.critedge.loopexit.split.loop.exit.i.i:           ; preds = %.lr.ph.i.i
  %i.hb = trunc nuw i64 %indvars.iv.i.i to i32
  br label %ReadMatchDistances.exit.i

ReadMatchDistances.exit.i:                        ; preds = %bb.v, %.critedge.loopexit.split.loop.exit.i.i, %bb.u, %bb.t, %bb.s
  %.1.i.i = phi i32 [ 0, %bb.s ], [ %i.ge, %bb.t ], [ %i.ge, %bb.u ], [ %i.hb, %.critedge.loopexit.split.loop.exit.i.i ], [ %spec.store.select.i.i, %bb.v ]
  %i.hc = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.dj, align 4, !tbaa !89
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.he = load i32, ptr %i.dk, align 8, !tbaa !141
  %i.hf = load i32, ptr %i.dl, align 4, !tbaa !142
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %ReadMatchDistances.exit.i
  %.0193.i = phi i32 [ %i.ga, %ReadMatchDistances.exit.i ], [ %i.hf, %bb.w ] ; 4 uses
  %.0136.i = phi i32 [ %.1.i.i, %ReadMatchDistances.exit.i ], [ %i.he, %bb.w ] ; 7 uses
  %i.hg = load i32, ptr %i.dm, align 8, !tbaa !135
  %.fr257.i = freeze i32 %i.hg                    ; 3 uses
  %i.hh = icmp ult i32 %.fr257.i, 2
  br i1 %i.hh, label %GetOptimumFast.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.hj = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.hk = tail call ptr %i.hi(ptr noundef %i.hj) #14, !inline_history !143 ; 9 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -1 ; 13 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !21  ; 8 uses
  %.not258.i = icmp eq i32 %.fr257.i, 2           ; 2 uses
  br i1 %.not258.i, label %.split.preheader.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.y
  %umax.i = tail call i32 @llvm.umin.i32(i32 %.fr257.i, i32 273) ; 8 uses
  %i.hn = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.ho = add i32 %i.hn, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hl, i64 %i.hq ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !21
  %.not162.us.i = icmp eq i8 %i.hm, %i.hs
  br i1 %.not162.us.i, label %bb.z, label %.split.us.1.i

.split.preheader.i:                               ; preds = %bb.y
  %i.ht = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.hu = add i32 %i.ht, 1
  %i.hv = zext i32 %i.hu to i64
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hl, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !21
  %.not162.i = icmp eq i8 %i.hm, %i.hy
  br i1 %.not162.i, label %bb.aj, label %.split.1.i

bb.z:                                             ; preds = %.split.us.preheader.i
  %i.hz = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !21
  %.not163.us.i = icmp eq i8 %i.hz, %i.ib
  br i1 %.not163.us.i, label %.preheader.us.preheader.i, label %.split.us.1.i

.preheader.us.preheader.i:                        ; preds = %bb.z
  %wide.trip.count.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %4, %.preheader.us.preheader.i
  %indvars.iv.i227 = phi i64 [ 2, %.preheader.us.preheader.i ], [ %indvars.iv.next.i228, %4 ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.i227
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !21
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv.i227
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !21
  %i.ig = icmp eq i8 %i.id, %i.if
  br i1 %i.ig, label %4, label %.critedge.us.split.loop.exit.i

.critedge.us.split.loop.exit.i:                   ; preds = %.preheader.us.i
  %i.ih = trunc nuw nsw i64 %indvars.iv.i227 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %4, %.critedge.us.split.loop.exit.i
  %.0141.lcssa.us.i = phi i32 [ %i.ih, %.critedge.us.split.loop.exit.i ], [ %umax.i, %4 ] ; 3 uses
  %i.ii = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.i = icmp ult i32 %.0141.lcssa.us.i, %i.ii
  br i1 %.not164.us.i, label %.split.us.1.i, label %.split232.us.i

.split.us.1.i:                                    ; preds = %.critedge.us.i, %bb.z, %.split.us.preheader.i
  %.2152.ph.us.i = phi i32 [ 0, %bb.z ], [ 0, %.split.us.preheader.i ], [ %.0141.lcssa.us.i, %.critedge.us.i ] ; 4 uses
  %i.ij = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.ik = add i32 %i.ij, 1
  %i.il = zext i32 %i.ik to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.hl, i64 %i.im ; 3 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !21
  %.not162.us.1.i = icmp eq i8 %i.hm, %i.io
  br i1 %.not162.us.1.i, label %bb.aa, label %.split.us.2.i

bb.aa:                                            ; preds = %.split.us.1.i
  %i.ip = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !21
  %.not163.us.1.i = icmp eq i8 %i.ip, %i.ir
  br i1 %.not163.us.1.i, label %.preheader.us.preheader.1.i, label %.split.us.2.i

.preheader.us.preheader.1.i:                      ; preds = %bb.aa
  %wide.trip.count.1.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %bb.ab, %.preheader.us.preheader.1.i
  %indvars.iv.1.i = phi i64 [ 2, %.preheader.us.preheader.1.i ], [ %indvars.iv.next.1.i, %bb.ab ] ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.1.i
  %i.it = load i8, ptr %i.is, align 1, !tbaa !21
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.1.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !21
  %i.iw = icmp eq i8 %i.it, %i.iv
  br i1 %i.iw, label %bb.ab, label %.critedge.us.1.split.loop.exit319.i

bb.ab:                                            ; preds = %.preheader.us.1.i
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %.critedge.us.1.i, label %.preheader.us.1.i, !llvm.loop !144

.critedge.us.1.split.loop.exit319.i:              ; preds = %.preheader.us.1.i
  %i.ix = trunc nuw nsw i64 %indvars.iv.1.i to i32
  br label %.critedge.us.1.i

.critedge.us.1.i:                                 ; preds = %bb.ab, %.critedge.us.1.split.loop.exit319.i
  %.0141.lcssa.us.1.i = phi i32 [ %i.ix, %.critedge.us.1.split.loop.exit319.i ], [ %umax.i, %bb.ab ] ; 4 uses
  %i.iy = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.1.i = icmp ult i32 %.0141.lcssa.us.1.i, %i.iy
  br i1 %.not164.us.1.i, label %bb.ac, label %.split232.us.i

bb.ac:                                            ; preds = %.critedge.us.1.i
  %i.iz = icmp ugt i32 %.0141.lcssa.us.1.i, %.2152.ph.us.i
  %spec.select.us.1.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.1.i, i32 %.2152.ph.us.i)
  %spec.select165.us.1.i = zext i1 %i.iz to i32
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.ac, %bb.aa, %.split.us.1.i
  %.2152.ph.us.1.i = phi i32 [ %.2152.ph.us.i, %bb.aa ], [ %.2152.ph.us.i, %.split.us.1.i ], [ %spec.select.us.1.i, %bb.ac ] ; 4 uses
  %.2147.ph.us.1.i = phi i32 [ 0, %bb.aa ], [ 0, %.split.us.1.i ], [ %spec.select165.us.1.i, %bb.ac ] ; 3 uses
  %i.ja = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.jb = add i32 %i.ja, 1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.hl, i64 %i.jd ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !21
  %.not162.us.2.i = icmp eq i8 %i.hm, %i.jf
  br i1 %.not162.us.2.i, label %bb.ad, label %.split.us.3.i

bb.ad:                                            ; preds = %.split.us.2.i
  %i.jg = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !21
  %.not163.us.2.i = icmp eq i8 %i.jg, %i.ji
  br i1 %.not163.us.2.i, label %.preheader.us.preheader.2.i, label %.split.us.3.i

.preheader.us.preheader.2.i:                      ; preds = %bb.ad
  %wide.trip.count.2.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %bb.ae, %.preheader.us.preheader.2.i
  %indvars.iv.2.i = phi i64 [ 2, %.preheader.us.preheader.2.i ], [ %indvars.iv.next.2.i, %bb.ae ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.2.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.2.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !21
  %i.jn = icmp eq i8 %i.jk, %i.jm
  br i1 %i.jn, label %bb.ae, label %.critedge.us.2.split.loop.exit321.i

bb.ae:                                            ; preds = %.preheader.us.2.i
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %.critedge.us.2.i, label %.preheader.us.2.i, !llvm.loop !144

.critedge.us.2.split.loop.exit321.i:              ; preds = %.preheader.us.2.i
  %i.jo = trunc nuw nsw i64 %indvars.iv.2.i to i32
  br label %.critedge.us.2.i

.critedge.us.2.i:                                 ; preds = %bb.ae, %.critedge.us.2.split.loop.exit321.i
  %.0141.lcssa.us.2.i = phi i32 [ %i.jo, %.critedge.us.2.split.loop.exit321.i ], [ %umax.i, %bb.ae ] ; 4 uses
  %i.jp = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.2.i = icmp ult i32 %.0141.lcssa.us.2.i, %i.jp
  br i1 %.not164.us.2.i, label %bb.af, label %.split232.us.i

bb.af:                                            ; preds = %.critedge.us.2.i
  %i.jq = icmp ugt i32 %.0141.lcssa.us.2.i, %.2152.ph.us.1.i
  %spec.select.us.2.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.2.i, i32 %.2152.ph.us.1.i)
  %spec.select165.us.2.i = select i1 %i.jq, i32 2, i32 %.2147.ph.us.1.i
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.af, %bb.ad, %.split.us.2.i
  %.2152.ph.us.2.i = phi i32 [ %.2152.ph.us.1.i, %bb.ad ], [ %.2152.ph.us.1.i, %.split.us.2.i ], [ %spec.select.us.2.i, %bb.af ] ; 4 uses
  %.2147.ph.us.2.i = phi i32 [ %.2147.ph.us.1.i, %bb.ad ], [ %.2147.ph.us.1.i, %.split.us.2.i ], [ %spec.select165.us.2.i, %bb.af ] ; 3 uses
  %i.jr = load i32, ptr %i.du, align 4, !tbaa !4
  %i.js = add i32 %i.jr, 1
  %i.jt = zext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.hl, i64 %i.ju ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !21
  %.not162.us.3.i = icmp eq i8 %i.hm, %i.jw
  br i1 %.not162.us.3.i, label %bb.ag, label %.split235.us.i

bb.ag:                                            ; preds = %.split.us.3.i
  %i.jx = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !21
  %.not163.us.3.i = icmp eq i8 %i.jx, %i.jz
  br i1 %.not163.us.3.i, label %.preheader.us.preheader.3.i, label %.split235.us.i

.preheader.us.preheader.3.i:                      ; preds = %bb.ag
  %wide.trip.count.3.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.3.i

.preheader.us.3.i:                                ; preds = %bb.ah, %.preheader.us.preheader.3.i
  %indvars.iv.3.i = phi i64 [ 2, %.preheader.us.preheader.3.i ], [ %indvars.iv.next.3.i, %bb.ah ] ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.3.i
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv.3.i
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !21
  %i.ke = icmp eq i8 %i.kb, %i.kd
  br i1 %i.ke, label %bb.ah, label %.critedge.us.3.split.loop.exit323.i

bb.ah:                                            ; preds = %.preheader.us.3.i
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %.critedge.us.3.i, label %.preheader.us.3.i, !llvm.loop !144

.critedge.us.3.split.loop.exit323.i:              ; preds = %.preheader.us.3.i
  %i.kf = trunc nuw nsw i64 %indvars.iv.3.i to i32
  br label %.critedge.us.3.i

.critedge.us.3.i:                                 ; preds = %bb.ah, %.critedge.us.3.split.loop.exit323.i
  %.0141.lcssa.us.3.i = phi i32 [ %i.kf, %.critedge.us.3.split.loop.exit323.i ], [ %umax.i, %bb.ah ] ; 4 uses
  %i.kg = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.3.i = icmp ult i32 %.0141.lcssa.us.3.i, %i.kg
  br i1 %.not164.us.3.i, label %bb.ai, label %.split232.us.i

bb.ai:                                            ; preds = %.critedge.us.3.i
  %i.kh = icmp ugt i32 %.0141.lcssa.us.3.i, %.2152.ph.us.2.i
  %spec.select.us.3.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.3.i, i32 %.2152.ph.us.2.i)
  %spec.select165.us.3.i = select i1 %i.kh, i32 3, i32 %.2147.ph.us.2.i
  br label %.split235.us.i

4:                                                ; preds = %.preheader.us.i
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i227, 1 ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %indvars.iv.next.i228, %wide.trip.count.i
  br i1 %exitcond.not.i229, label %.critedge.us.i, label %.preheader.us.i, !llvm.loop !144

bb.aj:                                            ; preds = %.split.preheader.i
  %i.ki = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !21
  %.not163.i = icmp eq i8 %i.ki, %i.kk
  br i1 %.not163.i, label %.preheader.i, label %.split.1.i

.preheader.i:                                     ; preds = %bb.aj
  %i.kl = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.i = icmp ugt i32 %i.kl, 2
  br i1 %.not164.i, label %.split.1.i, label %MovePos.exit.sink.split.i

.split232.us.i:                                   ; preds = %.critedge.us.3.i, %.critedge.us.2.i, %.critedge.us.1.i, %.critedge.us.i
  %.us-phi.i = phi i32 [ 0, %.critedge.us.i ], [ 1, %.critedge.us.1.i ], [ 2, %.critedge.us.2.i ], [ 3, %.critedge.us.3.i ] ; 2 uses
  %.us-phi233.i = phi i32 [ %.0141.lcssa.us.i, %.critedge.us.i ], [ %.0141.lcssa.us.1.i, %.critedge.us.1.i ], [ %.0141.lcssa.us.2.i, %.critedge.us.2.i ], [ %.0141.lcssa.us.3.i, %.critedge.us.3.i ] ; 2 uses
  %i.km = add i32 %.us-phi233.i, -1               ; 2 uses
  %.not.i173.i = icmp eq i32 %i.km, 0
  br i1 %.not.i173.i, label %GetOptimumFast.exit.thread, label %MovePos.exit.sink.split.i

.split.1.i:                                       ; preds = %.preheader.i, %bb.aj, %.split.preheader.i
  %spec.select165.1.i = phi i32 [ 1, %bb.aj ], [ 1, %.split.preheader.i ], [ 0, %.preheader.i ]
  %.2152.ph.i = phi i32 [ 0, %bb.aj ], [ 0, %.split.preheader.i ], [ 2, %.preheader.i ] ; 2 uses
  %i.kn = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.ko = add i32 %i.kn, 1
  %i.kp = zext i32 %i.ko to i64
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.hl, i64 %i.kq ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !21
  %.not162.1.i = icmp eq i8 %i.hm, %i.ks
  br i1 %.not162.1.i, label %bb.ak, label %.split.2.i

bb.ak:                                            ; preds = %.split.1.i
  %i.kt = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !21
  %.not163.1.i = icmp eq i8 %i.kt, %i.kv
  br i1 %.not163.1.i, label %.preheader.1.i, label %.split.2.i

.preheader.1.i:                                   ; preds = %bb.ak
  %i.kw = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.1.i = icmp ugt i32 %i.kw, 2
  br i1 %.not164.1.i, label %.split.2.i, label %MovePos.exit.sink.split.i

.split.2.i:                                       ; preds = %.preheader.1.i, %bb.ak, %.split.1.i
  %.2152.ph.1.i = phi i32 [ %.2152.ph.i, %bb.ak ], [ %.2152.ph.i, %.split.1.i ], [ 2, %.preheader.1.i ] ; 3 uses
  %.2147.ph.1.i = phi i32 [ 0, %bb.ak ], [ 0, %.split.1.i ], [ %spec.select165.1.i, %.preheader.1.i ] ; 3 uses
  %i.kx = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.ky = add i32 %i.kx, 1
  %i.kz = zext i32 %i.ky to i64
  %i.la = sub nsw i64 0, %i.kz
  %i.lb = getelementptr inbounds i8, ptr %i.hl, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !21
  %.not162.2.i = icmp eq i8 %i.hm, %i.lc
  br i1 %.not162.2.i, label %bb.al, label %.split.3.i

bb.al:                                            ; preds = %.split.2.i
  %i.ld = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !21
  %.not163.2.i = icmp eq i8 %i.ld, %i.lf
  br i1 %.not163.2.i, label %.preheader.2.i, label %.split.3.i

.preheader.2.i:                                   ; preds = %bb.al
  %i.lg = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.2.i = icmp ugt i32 %i.lg, 2
  br i1 %.not164.2.i, label %bb.am, label %MovePos.exit.sink.split.i

bb.am:                                            ; preds = %.preheader.2.i
  %i.lh = icmp samesign ult i32 %.2152.ph.1.i, 2
  %spec.select165.2.i = select i1 %i.lh, i32 2, i32 %.2147.ph.1.i
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.am, %bb.al, %.split.2.i
  %.2152.ph.2.i = phi i32 [ %.2152.ph.1.i, %bb.al ], [ %.2152.ph.1.i, %.split.2.i ], [ 2, %bb.am ] ; 3 uses
  %.2147.ph.2.i = phi i32 [ %.2147.ph.1.i, %bb.al ], [ %.2147.ph.1.i, %.split.2.i ], [ %spec.select165.2.i, %bb.am ] ; 3 uses
  %i.li = load i32, ptr %i.du, align 4, !tbaa !4
  %i.lj = add i32 %i.li, 1
  %i.lk = zext i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.hl, i64 %i.ll ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !21
  %.not162.3.i = icmp eq i8 %i.hm, %i.ln
  br i1 %.not162.3.i, label %bb.an, label %.split235.us.i

bb.an:                                            ; preds = %.split.3.i
  %i.lo = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !21
  %.not163.3.i = icmp eq i8 %i.lo, %i.lq
  br i1 %.not163.3.i, label %.preheader.3.i, label %.split235.us.i

.preheader.3.i:                                   ; preds = %bb.an
  %i.lr = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.3.i = icmp ugt i32 %i.lr, 2
  br i1 %.not164.3.i, label %bb.ao, label %MovePos.exit.sink.split.i

bb.ao:                                            ; preds = %.preheader.3.i
  %i.ls = icmp samesign ult i32 %.2152.ph.2.i, 2
  %spec.select165.3.i = select i1 %i.ls, i32 3, i32 %.2147.ph.2.i
  br label %.split235.us.i

.split235.us.i:                                   ; preds = %bb.ao, %bb.an, %.split.3.i, %bb.ai, %bb.ag, %.split.us.3.i
  %.us-phi236.i = phi i32 [ %spec.select.us.3.i, %bb.ai ], [ %.2152.ph.us.2.i, %bb.ag ], [ %.2152.ph.us.2.i, %.split.us.3.i ], [ %.2152.ph.2.i, %bb.an ], [ %.2152.ph.2.i, %.split.3.i ], [ 2, %bb.ao ] ; 6 uses
  %.us-phi237.i = phi i32 [ %spec.select165.us.3.i, %bb.ai ], [ %.2147.ph.us.2.i, %bb.ag ], [ %.2147.ph.us.2.i, %.split.us.3.i ], [ %.2147.ph.2.i, %bb.an ], [ %.2147.ph.2.i, %.split.3.i ], [ %spec.select165.3.i, %bb.ao ]
  %i.lt = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not.i224 = icmp ult i32 %.0136.i, %i.lt
  br i1 %.not.i224, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.split235.us.i
  %i.lu = add i32 %.0193.i, -1
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4
  %i.ly = add i32 %i.lx, 4                        ; 2 uses
  %i.lz = add i32 %.0136.i, -1                    ; 2 uses
  %.not.i174.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i174.i, label %GetOptimumFast.exit, label %MovePos.exit.sink.split.i

bb.aq:                                            ; preds = %.split235.us.i
  %i.ma = icmp ugt i32 %.0136.i, 1
  br i1 %i.ma, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.mb = add i32 %.0193.i, -1
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mc
  %.0139238.i = load i32, ptr %i.md, align 4, !tbaa !4 ; 2 uses
  %i.me = icmp ugt i32 %.0193.i, 2
  br i1 %i.me, label %.lr.ph.preheader.i225, label %.critedge2.i

.lr.ph.preheader.i225:                            ; preds = %bb.ar
  %i.mf = zext i32 %.0193.i to i64
  br label %.lr.ph.i226

bb.as:                                            ; preds = %bb.at
  %indvars.iv.next277.i = add nsw i64 %indvars.iv276.i, -2 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next277.i to i32
  %i.mg = icmp ugt i32 %indvars.i, 2
  br i1 %i.mg, label %.lr.ph.i226, label %.critedge2.i, !llvm.loop !145

.lr.ph.i226:                                      ; preds = %bb.as, %.lr.ph.preheader.i225
  %indvars.iv276.i = phi i64 [ %i.mf, %.lr.ph.preheader.i225 ], [ %indvars.iv.next277.i, %bb.as ] ; 3 uses
  %.0139241.i = phi i32 [ %.0139238.i, %.lr.ph.preheader.i225 ], [ %i.mq, %bb.as ] ; 3 uses
  %.1137240.i = phi i32 [ %.0136.i, %.lr.ph.preheader.i225 ], [ %i.mk, %bb.as ] ; 3 uses
  %i.mh = add nsw i64 %indvars.iv276.i, 4294967292
  %i.mi = and i64 %i.mh, 4294967295
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4  ; 3 uses
  %i.ml = add i32 %i.mk, 1
  %i.mm = icmp eq i32 %.1137240.i, %i.ml
  br i1 %i.mm, label %bb.at, label %.critedge2.i

bb.at:                                            ; preds = %.lr.ph.i226
  %i.mn = lshr i32 %.0139241.i, 7
  %i.mo = getelementptr [4 x i8], ptr %i.do, i64 %indvars.iv276.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 -12
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4  ; 3 uses
  %i.mr = icmp ugt i32 %i.mn, %i.mq
  br i1 %i.mr, label %bb.as, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.at, %.lr.ph.i226, %bb.as, %bb.ar
  %.1137.lcssa.i = phi i32 [ %.0136.i, %bb.ar ], [ %.1137240.i, %.lr.ph.i226 ], [ %.1137240.i, %bb.at ], [ %i.mk, %bb.as ] ; 2 uses
  %.0139.lcssa.i = phi i32 [ %.0139238.i, %bb.ar ], [ %.0139241.i, %.lr.ph.i226 ], [ %.0139241.i, %bb.at ], [ %i.mq, %bb.as ] ; 2 uses
  %i.ms = icmp eq i32 %.1137.lcssa.i, 2
  %i.mt = icmp ugt i32 %.0139.lcssa.i, 127
  %or.cond.i = select i1 %i.ms, i1 %i.mt, i1 false
  %spec.store.select14.i = select i1 %or.cond.i, i32 1, i32 %.1137.lcssa.i
  br label %bb.au

bb.au:                                            ; preds = %.critedge2.i, %bb.aq
  %.1140.i = phi i32 [ %.0139.lcssa.i, %.critedge2.i ], [ 0, %bb.aq ] ; 6 uses
  %.2138.i = phi i32 [ %spec.store.select14.i, %.critedge2.i ], [ %.0136.i, %bb.aq ]
  %.2138.fr.i = freeze i32 %.2138.i               ; 11 uses
  %i.mu = icmp ugt i32 %.us-phi236.i, 1
  br i1 %i.mu, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.mv = add i32 %.us-phi236.i, 1
  %.not157.i = icmp ult i32 %i.mv, %.2138.fr.i
  br i1 %.not157.i, label %bb.aw, label %MovePos.exit177.i

bb.aw:                                            ; preds = %bb.av
  %i.mw = add i32 %.us-phi236.i, 2
  %i.mx = icmp uge i32 %i.mw, %.2138.fr.i
  %i.my = icmp ugt i32 %.1140.i, 511
  %or.cond5.i = select i1 %i.mx, i1 %i.my, i1 false
  br i1 %or.cond5.i, label %MovePos.exit177.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mz = add i32 %.us-phi236.i, 3
  %i.na = icmp uge i32 %i.mz, %.2138.fr.i
  %i.nb = icmp ugt i32 %.1140.i, 32767
  %or.cond7.i = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %or.cond7.i, label %MovePos.exit177.i, label %bb.ay

MovePos.exit177.i:                                ; preds = %bb.ax, %bb.aw, %bb.av
  %i.nc = add i32 %.us-phi236.i, -1
  br label %MovePos.exit.sink.split.i

bb.ay:                                            ; preds = %bb.ax, %bb.au
end_hunk_0

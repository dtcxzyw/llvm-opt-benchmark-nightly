inline.NumInlined: 105
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 77
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
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
  %.2199 = phi i32 [ %.1198, %.preheader ], [ %i.cmo, %CheckErrors.exit333.backedge ] ; 7 uses
  %i.fs = load i32, ptr %i.di, align 8, !tbaa !56
  %.not214 = icmp eq i32 %i.fs, 0
  br i1 %.not214, label %bb.bu, label %bb.r

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
  br i1 %.not162.i, label %bb.ak, label %.split.1.i

bb.z:                                             ; preds = %.split.us.preheader.i
  %i.hz = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !21
  %.not163.us.i = icmp eq i8 %i.hz, %i.ib
  br i1 %.not163.us.i, label %.preheader.us.preheader.i, label %.split.us.1.i

.preheader.us.preheader.i:                        ; preds = %bb.z
  %wide.trip.count.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.aa, %.preheader.us.preheader.i
  %indvars.iv.i227 = phi i64 [ 2, %.preheader.us.preheader.i ], [ %indvars.iv.next.i228, %bb.aa ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.i227
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !21
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv.i227
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !21
  %i.ig = icmp eq i8 %i.id, %i.if
  br i1 %i.ig, label %bb.aa, label %.critedge.us.split.loop.exit.i

bb.aa:                                            ; preds = %.preheader.us.i
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i227, 1 ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %indvars.iv.next.i228, %wide.trip.count.i
  br i1 %exitcond.not.i229, label %.critedge.us.i, label %.preheader.us.i, !llvm.loop !144

.critedge.us.split.loop.exit.i:                   ; preds = %.preheader.us.i
  %i.ih = trunc nuw nsw i64 %indvars.iv.i227 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.aa, %.critedge.us.split.loop.exit.i
  %.0141.lcssa.us.i = phi i32 [ %i.ih, %.critedge.us.split.loop.exit.i ], [ %umax.i, %bb.aa ] ; 3 uses
  %i.ii = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.i = icmp ult i32 %.0141.lcssa.us.i, %i.ii
  br i1 %.not164.us.i, label %.split.us.1.i, label %MovePos.exit.sink.split.sink.split.i

.split.us.1.i:                                    ; preds = %.critedge.us.i, %bb.z, %.split.us.preheader.i
  %.2152.ph.us.i = phi i32 [ 0, %bb.z ], [ 0, %.split.us.preheader.i ], [ %.0141.lcssa.us.i, %.critedge.us.i ] ; 4 uses
  %i.ij = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.ik = add i32 %i.ij, 1
  %i.il = zext i32 %i.ik to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.hl, i64 %i.im ; 3 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !21
  %.not162.us.1.i = icmp eq i8 %i.hm, %i.io
  br i1 %.not162.us.1.i, label %bb.ab, label %.split.us.2.i

bb.ab:                                            ; preds = %.split.us.1.i
  %i.ip = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !21
  %.not163.us.1.i = icmp eq i8 %i.ip, %i.ir
  br i1 %.not163.us.1.i, label %.preheader.us.preheader.1.i, label %.split.us.2.i

.preheader.us.preheader.1.i:                      ; preds = %bb.ab
  %wide.trip.count.1.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %bb.ac, %.preheader.us.preheader.1.i
  %indvars.iv.1.i = phi i64 [ 2, %.preheader.us.preheader.1.i ], [ %indvars.iv.next.1.i, %bb.ac ] ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.1.i
  %i.it = load i8, ptr %i.is, align 1, !tbaa !21
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.1.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !21
  %i.iw = icmp eq i8 %i.it, %i.iv
  br i1 %i.iw, label %bb.ac, label %.critedge.us.1.split.loop.exit319.i

bb.ac:                                            ; preds = %.preheader.us.1.i
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %.critedge.us.1.i, label %.preheader.us.1.i, !llvm.loop !144

.critedge.us.1.split.loop.exit319.i:              ; preds = %.preheader.us.1.i
  %i.ix = trunc nuw nsw i64 %indvars.iv.1.i to i32
  br label %.critedge.us.1.i

.critedge.us.1.i:                                 ; preds = %bb.ac, %.critedge.us.1.split.loop.exit319.i
  %.0141.lcssa.us.1.i = phi i32 [ %i.ix, %.critedge.us.1.split.loop.exit319.i ], [ %umax.i, %bb.ac ] ; 4 uses
  %i.iy = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.1.i = icmp ult i32 %.0141.lcssa.us.1.i, %i.iy
  br i1 %.not164.us.1.i, label %bb.ad, label %MovePos.exit.sink.split.sink.split.i

bb.ad:                                            ; preds = %.critedge.us.1.i
  %i.iz = icmp ugt i32 %.0141.lcssa.us.1.i, %.2152.ph.us.i
  %spec.select.us.1.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.1.i, i32 %.2152.ph.us.i)
  %spec.select165.us.1.i = zext i1 %i.iz to i32
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.ad, %bb.ab, %.split.us.1.i
  %.2152.ph.us.1.i = phi i32 [ %.2152.ph.us.i, %bb.ab ], [ %.2152.ph.us.i, %.split.us.1.i ], [ %spec.select.us.1.i, %bb.ad ] ; 4 uses
  %.2147.ph.us.1.i = phi i32 [ 0, %bb.ab ], [ 0, %.split.us.1.i ], [ %spec.select165.us.1.i, %bb.ad ] ; 3 uses
  %i.ja = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.jb = add i32 %i.ja, 1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.hl, i64 %i.jd ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !21
  %.not162.us.2.i = icmp eq i8 %i.hm, %i.jf
  br i1 %.not162.us.2.i, label %bb.ae, label %.split.us.3.i

bb.ae:                                            ; preds = %.split.us.2.i
  %i.jg = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !21
  %.not163.us.2.i = icmp eq i8 %i.jg, %i.ji
  br i1 %.not163.us.2.i, label %.preheader.us.preheader.2.i, label %.split.us.3.i

.preheader.us.preheader.2.i:                      ; preds = %bb.ae
  %wide.trip.count.2.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %bb.af, %.preheader.us.preheader.2.i
  %indvars.iv.2.i = phi i64 [ 2, %.preheader.us.preheader.2.i ], [ %indvars.iv.next.2.i, %bb.af ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.2.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.2.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !21
  %i.jn = icmp eq i8 %i.jk, %i.jm
  br i1 %i.jn, label %bb.af, label %.critedge.us.2.split.loop.exit321.i

bb.af:                                            ; preds = %.preheader.us.2.i
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %.critedge.us.2.i, label %.preheader.us.2.i, !llvm.loop !144

.critedge.us.2.split.loop.exit321.i:              ; preds = %.preheader.us.2.i
  %i.jo = trunc nuw nsw i64 %indvars.iv.2.i to i32
  br label %.critedge.us.2.i

.critedge.us.2.i:                                 ; preds = %bb.af, %.critedge.us.2.split.loop.exit321.i
  %.0141.lcssa.us.2.i = phi i32 [ %i.jo, %.critedge.us.2.split.loop.exit321.i ], [ %umax.i, %bb.af ] ; 4 uses
  %i.jp = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.2.i = icmp ult i32 %.0141.lcssa.us.2.i, %i.jp
  br i1 %.not164.us.2.i, label %bb.ag, label %MovePos.exit.sink.split.sink.split.i

bb.ag:                                            ; preds = %.critedge.us.2.i
  %i.jq = icmp ugt i32 %.0141.lcssa.us.2.i, %.2152.ph.us.1.i
  %spec.select.us.2.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.2.i, i32 %.2152.ph.us.1.i)
  %spec.select165.us.2.i = select i1 %i.jq, i32 2, i32 %.2147.ph.us.1.i
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.ag, %bb.ae, %.split.us.2.i
  %.2152.ph.us.2.i = phi i32 [ %.2152.ph.us.1.i, %bb.ae ], [ %.2152.ph.us.1.i, %.split.us.2.i ], [ %spec.select.us.2.i, %bb.ag ] ; 4 uses
  %.2147.ph.us.2.i = phi i32 [ %.2147.ph.us.1.i, %bb.ae ], [ %.2147.ph.us.1.i, %.split.us.2.i ], [ %spec.select165.us.2.i, %bb.ag ] ; 3 uses
  %i.jr = load i32, ptr %i.du, align 4, !tbaa !4
  %i.js = add i32 %i.jr, 1
  %i.jt = zext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.hl, i64 %i.ju ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !21
  %.not162.us.3.i = icmp eq i8 %i.hm, %i.jw
  br i1 %.not162.us.3.i, label %bb.ah, label %.split235.us.i

bb.ah:                                            ; preds = %.split.us.3.i
  %i.jx = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !21
  %.not163.us.3.i = icmp eq i8 %i.jx, %i.jz
  br i1 %.not163.us.3.i, label %.preheader.us.preheader.3.i, label %.split235.us.i

.preheader.us.preheader.3.i:                      ; preds = %bb.ah
  %wide.trip.count.3.i = zext nneg i32 %umax.i to i64
  br label %.preheader.us.3.i

.preheader.us.3.i:                                ; preds = %bb.ai, %.preheader.us.preheader.3.i
  %indvars.iv.3.i = phi i64 [ 2, %.preheader.us.preheader.3.i ], [ %indvars.iv.next.3.i, %bb.ai ] ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.3.i
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv.3.i
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !21
  %i.ke = icmp eq i8 %i.kb, %i.kd
  br i1 %i.ke, label %bb.ai, label %.critedge.us.3.split.loop.exit323.i

bb.ai:                                            ; preds = %.preheader.us.3.i
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i
  br i1 %exitcond.3.not.i, label %.critedge.us.3.i, label %.preheader.us.3.i, !llvm.loop !144

.critedge.us.3.split.loop.exit323.i:              ; preds = %.preheader.us.3.i
  %i.kf = trunc nuw nsw i64 %indvars.iv.3.i to i32
  br label %.critedge.us.3.i

.critedge.us.3.i:                                 ; preds = %bb.ai, %.critedge.us.3.split.loop.exit323.i
  %.0141.lcssa.us.3.i = phi i32 [ %i.kf, %.critedge.us.3.split.loop.exit323.i ], [ %umax.i, %bb.ai ] ; 4 uses
  %i.kg = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.us.3.i = icmp ult i32 %.0141.lcssa.us.3.i, %i.kg
  br i1 %.not164.us.3.i, label %bb.aj, label %MovePos.exit.sink.split.sink.split.i

bb.aj:                                            ; preds = %.critedge.us.3.i
  %i.kh = icmp ugt i32 %.0141.lcssa.us.3.i, %.2152.ph.us.2.i
  %spec.select.us.3.i = tail call i32 @llvm.umax.i32(i32 %.0141.lcssa.us.3.i, i32 %.2152.ph.us.2.i)
  %spec.select165.us.3.i = select i1 %i.kh, i32 3, i32 %.2147.ph.us.2.i
  br label %.split235.us.i

bb.ak:                                            ; preds = %.split.preheader.i
  %i.ki = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !21
  %.not163.i = icmp eq i8 %i.ki, %i.kk
  br i1 %.not163.i, label %.preheader.i, label %.split.1.i

.preheader.i:                                     ; preds = %bb.ak
  %i.kl = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.i = icmp ugt i32 %i.kl, 2
  br i1 %.not164.i, label %.split.1.i, label %MovePos.exit.sink.split.sink.split.i

.split.1.i:                                       ; preds = %.preheader.i, %bb.ak, %.split.preheader.i
  %spec.select165.1.i = phi i32 [ 1, %bb.ak ], [ 1, %.split.preheader.i ], [ 0, %.preheader.i ]
  %.2152.ph.i = phi i32 [ 0, %bb.ak ], [ 0, %.split.preheader.i ], [ 2, %.preheader.i ] ; 2 uses
  %i.km = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.kn = add i32 %i.km, 1
  %i.ko = zext i32 %i.kn to i64
  %i.kp = sub nsw i64 0, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.hl, i64 %i.kp ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !21
  %.not162.1.i = icmp eq i8 %i.hm, %i.kr
  br i1 %.not162.1.i, label %bb.al, label %.split.2.i

bb.al:                                            ; preds = %.split.1.i
  %i.ks = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !21
  %.not163.1.i = icmp eq i8 %i.ks, %i.ku
  br i1 %.not163.1.i, label %.preheader.1.i, label %.split.2.i

.preheader.1.i:                                   ; preds = %bb.al
  %i.kv = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.1.i = icmp ugt i32 %i.kv, 2
  br i1 %.not164.1.i, label %.split.2.i, label %MovePos.exit.sink.split.sink.split.i

.split.2.i:                                       ; preds = %.preheader.1.i, %bb.al, %.split.1.i
  %.2152.ph.1.i = phi i32 [ %.2152.ph.i, %bb.al ], [ %.2152.ph.i, %.split.1.i ], [ 2, %.preheader.1.i ] ; 3 uses
  %.2147.ph.1.i = phi i32 [ 0, %bb.al ], [ 0, %.split.1.i ], [ %spec.select165.1.i, %.preheader.1.i ] ; 3 uses
  %i.kw = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.kx = add i32 %i.kw, 1
  %i.ky = zext i32 %i.kx to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.hl, i64 %i.kz ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !21
  %.not162.2.i = icmp eq i8 %i.hm, %i.lb
  br i1 %.not162.2.i, label %bb.am, label %.split.3.i

bb.am:                                            ; preds = %.split.2.i
  %i.lc = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !21
  %.not163.2.i = icmp eq i8 %i.lc, %i.le
  br i1 %.not163.2.i, label %.preheader.2.i, label %.split.3.i

.preheader.2.i:                                   ; preds = %bb.am
  %i.lf = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.2.i = icmp ugt i32 %i.lf, 2
  br i1 %.not164.2.i, label %bb.an, label %MovePos.exit.sink.split.sink.split.i

bb.an:                                            ; preds = %.preheader.2.i
  %i.lg = icmp samesign ult i32 %.2152.ph.1.i, 2
  %spec.select165.2.i = select i1 %i.lg, i32 2, i32 %.2147.ph.1.i
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.an, %bb.am, %.split.2.i
  %.2152.ph.2.i = phi i32 [ %.2152.ph.1.i, %bb.am ], [ %.2152.ph.1.i, %.split.2.i ], [ 2, %bb.an ] ; 3 uses
  %.2147.ph.2.i = phi i32 [ %.2147.ph.1.i, %bb.am ], [ %.2147.ph.1.i, %.split.2.i ], [ %spec.select165.2.i, %bb.an ] ; 3 uses
  %i.lh = load i32, ptr %i.du, align 4, !tbaa !4
  %i.li = add i32 %i.lh, 1
  %i.lj = zext i32 %i.li to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.hl, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !21
  %.not162.3.i = icmp eq i8 %i.hm, %i.lm
  br i1 %.not162.3.i, label %bb.ao, label %.split235.us.i

bb.ao:                                            ; preds = %.split.3.i
  %i.ln = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !21
  %.not163.3.i = icmp eq i8 %i.ln, %i.lp
  br i1 %.not163.3.i, label %.preheader.3.i, label %.split235.us.i

.preheader.3.i:                                   ; preds = %bb.ao
  %i.lq = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not164.3.i = icmp ugt i32 %i.lq, 2
  br i1 %.not164.3.i, label %bb.ap, label %MovePos.exit.sink.split.sink.split.i

bb.ap:                                            ; preds = %.preheader.3.i
  %i.lr = icmp samesign ult i32 %.2152.ph.2.i, 2
  %spec.select165.3.i = select i1 %i.lr, i32 3, i32 %.2147.ph.2.i
  br label %.split235.us.i

.split235.us.i:                                   ; preds = %bb.ap, %bb.ao, %.split.3.i, %bb.aj, %bb.ah, %.split.us.3.i
  %.us-phi236.i = phi i32 [ %spec.select.us.3.i, %bb.aj ], [ %.2152.ph.us.2.i, %bb.ah ], [ %.2152.ph.us.2.i, %.split.us.3.i ], [ %.2152.ph.2.i, %bb.ao ], [ %.2152.ph.2.i, %.split.3.i ], [ 2, %bb.ap ] ; 7 uses
  %.us-phi237.i = phi i32 [ %spec.select165.us.3.i, %bb.aj ], [ %.2147.ph.us.2.i, %bb.ah ], [ %.2147.ph.us.2.i, %.split.us.3.i ], [ %.2147.ph.2.i, %bb.ao ], [ %.2147.ph.2.i, %.split.3.i ], [ %spec.select165.3.i, %bb.ap ] ; 3 uses
  %i.ls = load i32, ptr %i.dp, align 8, !tbaa !52
  %.not.i224 = icmp ult i32 %.0136.i, %i.ls
  br i1 %.not.i224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split235.us.i
  %i.lt = add i32 %.0193.i, -1
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !4
  %i.lx = add i32 %i.lw, 4                        ; 2 uses
  %i.ly = add i32 %.0136.i, -1                    ; 2 uses
  %.not.i174.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i174.i, label %GetOptimumFast.exit, label %MovePos.exit.sink.split.i

bb.ar:                                            ; preds = %.split235.us.i
  %i.lz = icmp ugt i32 %.0136.i, 1
  br i1 %i.lz, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ma = add i32 %.0193.i, -1
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mb
  %.0139238.i = load i32, ptr %i.mc, align 4, !tbaa !4 ; 2 uses
  %i.md = icmp ugt i32 %.0193.i, 2
  br i1 %i.md, label %.lr.ph.preheader.i225, label %.critedge2.i

.lr.ph.preheader.i225:                            ; preds = %bb.as
  %i.me = zext i32 %.0193.i to i64
  br label %.lr.ph.i226

bb.at:                                            ; preds = %bb.au
  %indvars.iv.next277.i = add nsw i64 %indvars.iv276.i, -2 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next277.i to i32
  %i.mf = icmp ugt i32 %indvars.i, 2
  br i1 %i.mf, label %.lr.ph.i226, label %.critedge2.i, !llvm.loop !145

.lr.ph.i226:                                      ; preds = %bb.at, %.lr.ph.preheader.i225
  %indvars.iv276.i = phi i64 [ %i.me, %.lr.ph.preheader.i225 ], [ %indvars.iv.next277.i, %bb.at ] ; 3 uses
  %.0139241.i = phi i32 [ %.0139238.i, %.lr.ph.preheader.i225 ], [ %i.mp, %bb.at ] ; 3 uses
  %.1137240.i = phi i32 [ %.0136.i, %.lr.ph.preheader.i225 ], [ %i.mj, %bb.at ] ; 3 uses
  %i.mg = add nsw i64 %indvars.iv276.i, 4294967292
  %i.mh = and i64 %i.mg, 4294967295
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !4  ; 3 uses
  %i.mk = add i32 %i.mj, 1
  %i.ml = icmp eq i32 %.1137240.i, %i.mk
  br i1 %i.ml, label %bb.au, label %.critedge2.i

bb.au:                                            ; preds = %.lr.ph.i226
  %i.mm = lshr i32 %.0139241.i, 7
  %i.mn = getelementptr [4 x i8], ptr %i.do, i64 %indvars.iv276.i
  %i.mo = getelementptr i8, ptr %i.mn, i64 -12
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4  ; 3 uses
  %i.mq = icmp ugt i32 %i.mm, %i.mp
  br i1 %i.mq, label %bb.at, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.au, %.lr.ph.i226, %bb.at, %bb.as
  %.1137.lcssa.i = phi i32 [ %.0136.i, %bb.as ], [ %.1137240.i, %.lr.ph.i226 ], [ %.1137240.i, %bb.au ], [ %i.mj, %bb.at ] ; 2 uses
  %.0139.lcssa.i = phi i32 [ %.0139238.i, %bb.as ], [ %.0139241.i, %.lr.ph.i226 ], [ %.0139241.i, %bb.au ], [ %i.mp, %bb.at ] ; 2 uses
  %i.mr = icmp eq i32 %.1137.lcssa.i, 2
  %i.ms = icmp ugt i32 %.0139.lcssa.i, 127
  %or.cond.i = select i1 %i.mr, i1 %i.ms, i1 false
  %spec.store.select14.i = select i1 %or.cond.i, i32 1, i32 %.1137.lcssa.i
  br label %bb.av

bb.av:                                            ; preds = %.critedge2.i, %bb.ar
  %.1140.i = phi i32 [ %.0139.lcssa.i, %.critedge2.i ], [ 0, %bb.ar ] ; 6 uses
  %.2138.i = phi i32 [ %spec.store.select14.i, %.critedge2.i ], [ %.0136.i, %bb.ar ]
  %.2138.fr.i = freeze i32 %.2138.i               ; 11 uses
  %i.mt = icmp ugt i32 %.us-phi236.i, 1
  br i1 %i.mt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.mu = add i32 %.us-phi236.i, 1
  %.not157.i = icmp ult i32 %i.mu, %.2138.fr.i
  br i1 %.not157.i, label %bb.ax, label %MovePos.exit.sink.split.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.mv = add i32 %.us-phi236.i, 2
  %i.mw = icmp uge i32 %i.mv, %.2138.fr.i
  %i.mx = icmp ugt i32 %.1140.i, 511
  %or.cond5.i = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %or.cond5.i, label %MovePos.exit.sink.split.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.my = add i32 %.us-phi236.i, 3
  %i.mz = icmp uge i32 %i.my, %.2138.fr.i
  %i.na = icmp ugt i32 %.1140.i, 32767
  %or.cond7.i = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %or.cond7.i, label %MovePos.exit.sink.split.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.nb = icmp ult i32 %.2138.fr.i, 2
  %or.cond9.i = or i1 %.not258.i, %i.nb
  br i1 %or.cond9.i, label %GetOptimumFast.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nc = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.nd = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.ne = tail call i32 %i.nc(ptr noundef %i.nd) #14, !inline_history !139
  store i32 %i.ne, ptr %i.dm, align 8, !tbaa !135
  %i.nf = load ptr, ptr %i.dn, align 8, !tbaa !136
  %i.ng = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.nh = tail call i32 %i.nf(ptr noundef %i.ng, ptr noundef nonnull %i.do) #14, !inline_history !139 ; 5 uses
  %.not.i178.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i178.i, label %ReadMatchDistances.exit188.thread.i, label %bb.bb

ReadMatchDistances.exit188.thread.i:              ; preds = %bb.ba
  %i.ni = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.nj = add i32 %i.ni, 1
  store i32 %i.nj, ptr %i.dj, align 4, !tbaa !89
  store i32 0, ptr %i.dl, align 4, !tbaa !4
  store i32 0, ptr %i.dk, align 8, !tbaa !141
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.nk = add i32 %i.nh, -2
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !4  ; 5 uses
  %i.no = load i32, ptr %i.dp, align 8, !tbaa !52
  %i.np = icmp eq i32 %i.nn, %i.no
  br i1 %i.np, label %bb.bc, label %ReadMatchDistances.exit188.i

bb.bc:                                            ; preds = %bb.bb
  %i.nq = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.nr = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.ns = tail call ptr %i.nq(ptr noundef %i.nr) #14, !inline_history !139
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -1 ; 2 uses
  %i.nu = add i32 %i.nh, -1
  %i.nv = zext i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !4
  %i.ny = add i32 %i.nx, 1
  %i.nz = load i32, ptr %i.dm, align 8, !tbaa !135
  %spec.store.select.i180.i = tail call i32 @llvm.umin.i32(i32 %i.nz, i32 273) ; 3 uses
  %i.oa = zext i32 %i.ny to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds i8, ptr %i.nt, i64 %i.ob
  %i.od = icmp ult i32 %i.nn, %spec.store.select.i180.i
  br i1 %i.od, label %.lr.ph.preheader.i181.i, label %ReadMatchDistances.exit188.i

.lr.ph.preheader.i181.i:                          ; preds = %bb.bc
  %i.oe = zext nneg i32 %i.nn to i64
  br label %.lr.ph.i182.i

.lr.ph.i182.i:                                    ; preds = %bb.bd, %.lr.ph.preheader.i181.i
  %indvars.iv.i183.i = phi i64 [ %i.oe, %.lr.ph.preheader.i181.i ], [ %indvars.iv.next.i185.i, %bb.bd ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nt, i64 %indvars.iv.i183.i
  %i.og = load i8, ptr %i.of, align 1, !tbaa !21
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %indvars.iv.i183.i
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !21
  %i.oj = icmp eq i8 %i.og, %i.oi
  br i1 %i.oj, label %bb.bd, label %.critedge.loopexit.split.loop.exit.i184.i

bb.bd:                                            ; preds = %.lr.ph.i182.i
  %indvars.iv.next.i185.i = add nuw nsw i64 %indvars.iv.i183.i, 1 ; 2 uses
  %lftr.wideiv.i186.i = trunc i64 %indvars.iv.next.i185.i to i32
  %exitcond.not.i187.i = icmp eq i32 %spec.store.select.i180.i, %lftr.wideiv.i186.i
  br i1 %exitcond.not.i187.i, label %ReadMatchDistances.exit188.i, label %.lr.ph.i182.i, !llvm.loop !140

.critedge.loopexit.split.loop.exit.i184.i:        ; preds = %.lr.ph.i182.i
  %i.ok = trunc nuw i64 %indvars.iv.i183.i to i32
  br label %ReadMatchDistances.exit188.i

ReadMatchDistances.exit188.i:                     ; preds = %bb.bd, %.critedge.loopexit.split.loop.exit.i184.i, %bb.bc, %bb.bb
  %.1.i179.i = phi i32 [ %i.ok, %.critedge.loopexit.split.loop.exit.i184.i ], [ %i.nn, %bb.bb ], [ %i.nn, %bb.bc ], [ %spec.store.select.i180.i, %bb.bd ] ; 6 uses
  %i.ol = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.dj, align 4, !tbaa !89
  store i32 %i.nh, ptr %i.dl, align 4, !tbaa !4
  store i32 %.1.i179.i, ptr %i.dk, align 8, !tbaa !141
  %i.on = icmp ugt i32 %.1.i179.i, 1
  br i1 %i.on, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %ReadMatchDistances.exit188.i
  %i.oo = add i32 %i.nh, -1
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !4  ; 3 uses
  %.not158.i = icmp uge i32 %.1.i179.i, %.2138.fr.i
  %i.os = icmp ult i32 %i.or, %.1140.i
  %or.cond166.i = select i1 %.not158.i, i1 %i.os, i1 false
  br i1 %or.cond166.i, label %GetOptimumFast.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = add i32 %.2138.fr.i, 1                  ; 2 uses
  %i.ou = icmp eq i32 %.1.i179.i, %i.ot
  %i.ov = lshr i32 %i.or, 7
  %i.ow = icmp ule i32 %i.ov, %.1140.i
  %or.cond168.not215.i = select i1 %i.ou, i1 %i.ow, i1 false
  %i.ox = icmp ugt i32 %.1.i179.i, %i.ot
  %or.cond212.i = or i1 %i.ox, %or.cond168.not215.i
  br i1 %or.cond212.i, label %GetOptimumFast.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oy = add i32 %.1.i179.i, 1
  %i.oz = icmp ult i32 %i.oy, %.2138.fr.i
  %i.pa = icmp ult i32 %.2138.fr.i, 3
  %or.cond11.not219.i = or i1 %i.pa, %i.oz
  %i.pb = lshr i32 %.1140.i, 7
  %i.pc = icmp ule i32 %i.pb, %i.or
  %or.cond170.not.i = select i1 %or.cond11.not219.i, i1 true, i1 %i.pc
  br i1 %or.cond170.not.i, label %bb.bh, label %GetOptimumFast.exit

bb.bh:                                            ; preds = %bb.bg, %ReadMatchDistances.exit188.i, %ReadMatchDistances.exit188.thread.i
  %i.pd = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.pe = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.pf = tail call ptr %i.pd(ptr noundef %i.pe) #14, !inline_history !143 ; 9 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -1 ; 12 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !21  ; 7 uses
  %i.pi = add i32 %.2138.fr.i, -1                 ; 5 uses
  %i.pj = icmp ugt i32 %i.pi, 2
  %i.pk = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.pl = add i32 %i.pk, 1
  %i.pm = zext i32 %i.pl to i64
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds i8, ptr %i.pg, i64 %i.pn ; 4 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !21
  %.not159.us.i = icmp eq i8 %i.ph, %i.pp         ; 2 uses
  br i1 %i.pj, label %.split253.us.preheader.i, label %.split253.preheader.i

.split253.preheader.i:                            ; preds = %bb.bh
  br i1 %.not159.us.i, label %bb.bq, label %select.unfold.i

.split253.us.preheader.i:                         ; preds = %bb.bh
  br i1 %.not159.us.i, label %bb.bi, label %select.unfold.us.i

bb.bi:                                            ; preds = %.split253.us.preheader.i
  %i.pq = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !21
  %.not160.us.i = icmp eq i8 %i.pq, %i.ps
  br i1 %.not160.us.i, label %.lr.ph250.us.preheader.i, label %select.unfold.us.i

.lr.ph250.us.preheader.i:                         ; preds = %bb.bi
  %wide.trip.count288.i = zext i32 %i.pi to i64
  br label %.lr.ph250.us.i

bb.bj:                                            ; preds = %.lr.ph250.us.i
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next285.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %GetOptimumFast.exit, label %.lr.ph250.us.i, !llvm.loop !146

.lr.ph250.us.i:                                   ; preds = %bb.bj, %.lr.ph250.us.preheader.i
  %indvars.iv284.i = phi i64 [ 2, %.lr.ph250.us.preheader.i ], [ %indvars.iv.next285.i, %bb.bj ] ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv284.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !21
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 %indvars.iv284.i
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = icmp eq i8 %i.pu, %i.pw
  br i1 %i.px, label %bb.bj, label %select.unfold.us.i

select.unfold.us.i:                               ; preds = %.lr.ph250.us.i, %bb.bi, %.split253.us.preheader.i
  %i.py = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.pz = add i32 %i.py, 1
  %i.qa = zext i32 %i.pz to i64
  %i.qb = sub nsw i64 0, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.pg, i64 %i.qb ; 3 uses
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !21
  %.not159.us.1.i = icmp eq i8 %i.ph, %i.qd
  br i1 %.not159.us.1.i, label %bb.bk, label %select.unfold.us.1.i

bb.bk:                                            ; preds = %select.unfold.us.i
  %i.qe = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !21
  %.not160.us.1.i = icmp eq i8 %i.qe, %i.qg
  br i1 %.not160.us.1.i, label %.lr.ph250.us.preheader.1.i, label %select.unfold.us.1.i

.lr.ph250.us.preheader.1.i:                       ; preds = %bb.bk
  %wide.trip.count288.1.i = zext i32 %i.pi to i64
  br label %.lr.ph250.us.1.i

.lr.ph250.us.1.i:                                 ; preds = %bb.bl, %.lr.ph250.us.preheader.1.i
  %indvars.iv284.1.i = phi i64 [ 2, %.lr.ph250.us.preheader.1.i ], [ %indvars.iv.next285.1.i, %bb.bl ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv284.1.i
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !21
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qc, i64 %indvars.iv284.1.i
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !21
  %i.ql = icmp eq i8 %i.qi, %i.qk
  br i1 %i.ql, label %bb.bl, label %select.unfold.us.1.i

select.unfold.us.1.i:                             ; preds = %.lr.ph250.us.1.i, %bb.bk, %select.unfold.us.i
  %i.qm = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.qn = add i32 %i.qm, 1
  %i.qo = zext i32 %i.qn to i64
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.pg, i64 %i.qp ; 3 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !21
  %.not159.us.2.i = icmp eq i8 %i.ph, %i.qr
  br i1 %.not159.us.2.i, label %bb.bm, label %select.unfold.us.2.i

bb.bl:                                            ; preds = %.lr.ph250.us.1.i
  %indvars.iv.next285.1.i = add nuw nsw i64 %indvars.iv284.1.i, 1 ; 2 uses
  %exitcond289.1.not.i = icmp eq i64 %indvars.iv.next285.1.i, %wide.trip.count288.1.i
  br i1 %exitcond289.1.not.i, label %GetOptimumFast.exit, label %.lr.ph250.us.1.i, !llvm.loop !146

bb.bm:                                            ; preds = %select.unfold.us.1.i
  %i.qs = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !21
  %.not160.us.2.i = icmp eq i8 %i.qs, %i.qu
  br i1 %.not160.us.2.i, label %.lr.ph250.us.preheader.2.i, label %select.unfold.us.2.i

.lr.ph250.us.preheader.2.i:                       ; preds = %bb.bm
  %wide.trip.count288.2.i = zext i32 %i.pi to i64
  br label %.lr.ph250.us.2.i

.lr.ph250.us.2.i:                                 ; preds = %bb.bn, %.lr.ph250.us.preheader.2.i
  %indvars.iv284.2.i = phi i64 [ 2, %.lr.ph250.us.preheader.2.i ], [ %indvars.iv.next285.2.i, %bb.bn ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv284.2.i
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !21
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 %indvars.iv284.2.i
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !21
  %i.qz = icmp eq i8 %i.qw, %i.qy
  br i1 %i.qz, label %bb.bn, label %select.unfold.us.2.i

select.unfold.us.2.i:                             ; preds = %.lr.ph250.us.2.i, %bb.bm, %select.unfold.us.1.i
  %i.ra = load i32, ptr %i.du, align 4, !tbaa !4
  %i.rb = add i32 %i.ra, 1
  %i.rc = zext i32 %i.rb to i64
  %i.rd = sub nsw i64 0, %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.pg, i64 %i.rd ; 3 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !21
  %.not159.us.3.i = icmp eq i8 %i.ph, %i.rf
  br i1 %.not159.us.3.i, label %bb.bo, label %.split255.us.i

bb.bn:                                            ; preds = %.lr.ph250.us.2.i
  %indvars.iv.next285.2.i = add nuw nsw i64 %indvars.iv284.2.i, 1 ; 2 uses
  %exitcond289.2.not.i = icmp eq i64 %indvars.iv.next285.2.i, %wide.trip.count288.2.i
  br i1 %exitcond289.2.not.i, label %GetOptimumFast.exit, label %.lr.ph250.us.2.i, !llvm.loop !146

bb.bo:                                            ; preds = %select.unfold.us.2.i
  %i.rg = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !21
  %.not160.us.3.i = icmp eq i8 %i.rg, %i.ri
  br i1 %.not160.us.3.i, label %.lr.ph250.us.preheader.3.i, label %.split255.us.i

.lr.ph250.us.preheader.3.i:                       ; preds = %bb.bo
  %wide.trip.count288.3.i = zext i32 %i.pi to i64
  br label %.lr.ph250.us.3.i

.lr.ph250.us.3.i:                                 ; preds = %bb.bp, %.lr.ph250.us.preheader.3.i
  %indvars.iv284.3.i = phi i64 [ 2, %.lr.ph250.us.preheader.3.i ], [ %indvars.iv.next285.3.i, %bb.bp ] ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv284.3.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !21
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv284.3.i
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !21
  %i.rn = icmp eq i8 %i.rk, %i.rm
  br i1 %i.rn, label %bb.bp, label %.split255.us.i

bb.bp:                                            ; preds = %.lr.ph250.us.3.i
  %indvars.iv.next285.3.i = add nuw nsw i64 %indvars.iv284.3.i, 1 ; 2 uses
  %exitcond289.3.not.i = icmp eq i64 %indvars.iv.next285.3.i, %wide.trip.count288.3.i
  br i1 %exitcond289.3.not.i, label %GetOptimumFast.exit, label %.lr.ph250.us.3.i, !llvm.loop !146

bb.bq:                                            ; preds = %.split253.preheader.i
  %i.ro = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.rp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !21
  %.not160.i = icmp eq i8 %i.ro, %i.rq
  br i1 %.not160.i, label %GetOptimumFast.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.bq, %.split253.preheader.i
  %i.rr = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.rs = add i32 %i.rr, 1
  %i.rt = zext i32 %i.rs to i64
  %i.ru = sub nsw i64 0, %i.rt
  %i.rv = getelementptr inbounds i8, ptr %i.pg, i64 %i.ru ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !21
  %.not159.1.i = icmp eq i8 %i.ph, %i.rw
  br i1 %.not159.1.i, label %bb.br, label %select.unfold.1.i

bb.br:                                            ; preds = %select.unfold.i
  %i.rx = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !21
  %.not160.1.i = icmp eq i8 %i.rx, %i.rz
  br i1 %.not160.1.i, label %GetOptimumFast.exit, label %select.unfold.1.i

select.unfold.1.i:                                ; preds = %bb.br, %select.unfold.i
  %i.sa = load i32, ptr %i.dt, align 8, !tbaa !4
  %i.sb = add i32 %i.sa, 1
  %i.sc = zext i32 %i.sb to i64
  %i.sd = sub nsw i64 0, %i.sc
  %i.se = getelementptr inbounds i8, ptr %i.pg, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !21
  %.not159.2.i = icmp eq i8 %i.ph, %i.sf
  br i1 %.not159.2.i, label %bb.bs, label %select.unfold.2.i

bb.bs:                                            ; preds = %select.unfold.1.i
  %i.sg = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 1
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !21
  %.not160.2.i = icmp eq i8 %i.sg, %i.si
  br i1 %.not160.2.i, label %GetOptimumFast.exit, label %select.unfold.2.i

select.unfold.2.i:                                ; preds = %bb.bs, %select.unfold.1.i
  %i.sj = load i32, ptr %i.du, align 4, !tbaa !4
  %i.sk = add i32 %i.sj, 1
  %i.sl = zext i32 %i.sk to i64
  %i.sm = sub nsw i64 0, %i.sl
  %i.sn = getelementptr inbounds i8, ptr %i.pg, i64 %i.sm ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !21
  %.not159.3.i = icmp eq i8 %i.ph, %i.so
  br i1 %.not159.3.i, label %bb.bt, label %.split255.us.i

bb.bt:                                            ; preds = %select.unfold.2.i
  %i.sp = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !21
  %.not160.3.i = icmp eq i8 %i.sp, %i.sr
  br i1 %.not160.3.i, label %GetOptimumFast.exit, label %.split255.us.i

.split255.us.i:                                   ; preds = %.lr.ph250.us.3.i, %bb.bt, %select.unfold.2.i, %bb.bo, %select.unfold.us.2.i
  %i.ss = add i32 %.1140.i, 4                     ; 2 uses
  %i.st = add i32 %.2138.fr.i, -2                 ; 2 uses
  %.not.i189.i = icmp eq i32 %i.st, 0
  br i1 %.not.i189.i, label %GetOptimumFast.exit.thread, label %MovePos.exit.sink.split.i

GetOptimumFast.exit.thread:                       ; preds = %.split255.us.i
  %4 = load i32, ptr %i.dv, align 4, !tbaa !90
  %5 = and i32 %4, %.2199
  br label %bb.hf

MovePos.exit.sink.split.sink.split.i:             ; preds = %bb.ay, %bb.ax, %bb.aw, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.i, %.critedge.us.3.i, %.critedge.us.2.i, %.critedge.us.1.i, %.critedge.us.i
  %.us-phi237.sink.i = phi i32 [ 3, %.critedge.us.3.i ], [ 3, %.preheader.3.i ], [ 0, %.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 0, %.critedge.us.i ], [ 1, %.critedge.us.1.i ], [ 2, %.critedge.us.2.i ], [ %.us-phi237.i, %bb.ay ], [ %.us-phi237.i, %bb.ax ], [ %.us-phi237.i, %bb.aw ]
  %.us-phi236.sink.i = phi i32 [ %.0141.lcssa.us.3.i, %.critedge.us.3.i ], [ 2, %.preheader.3.i ], [ 2, %.preheader.i ], [ 2, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ %.0141.lcssa.us.i, %.critedge.us.i ], [ %.0141.lcssa.us.1.i, %.critedge.us.1.i ], [ %.0141.lcssa.us.2.i, %.critedge.us.2.i ], [ %.us-phi236.i, %bb.ay ], [ %.us-phi236.i, %bb.ax ], [ %.us-phi236.i, %bb.aw ] ; 2 uses
  %6 = add i32 %.us-phi236.sink.i, -1
  br label %MovePos.exit.sink.split.i

MovePos.exit.sink.split.i:                        ; preds = %MovePos.exit.sink.split.sink.split.i, %.split255.us.i, %bb.aq
  %.1342 = phi i32 [ %.us-phi237.sink.i, %MovePos.exit.sink.split.sink.split.i ], [ %i.ss, %.split255.us.i ], [ %i.lx, %bb.aq ]
  %.sink323.i = phi i32 [ %6, %MovePos.exit.sink.split.sink.split.i ], [ %i.st, %.split255.us.i ], [ %i.ly, %bb.aq ] ; 2 uses
  %.6.ph.i = phi i32 [ %.us-phi236.sink.i, %MovePos.exit.sink.split.sink.split.i ], [ %.2138.fr.i, %.split255.us.i ], [ %.0136.i, %bb.aq ]
  %i.su = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.sv = add i32 %i.su, %.sink323.i
  store i32 %i.sv, ptr %i.dj, align 4, !tbaa !89
  %i.sw = load ptr, ptr %i.dw, align 8, !tbaa !147
  %i.sx = load ptr, ptr %i.df, align 8, !tbaa !116
  tail call void %i.sw(ptr noundef %i.sx, i32 noundef %.sink323.i) #14, !inline_history !143
  br label %GetOptimumFast.exit

bb.bu:                                            ; preds = %CheckErrors.exit333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.sy = load i32, ptr %i.dx, align 8, !tbaa !87
  %i.sz = load i32, ptr %i.dy, align 4, !tbaa !88 ; 3 uses
  %.not.i230 = icmp eq i32 %i.sy, %i.sz
  br i1 %.not.i230, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !148 ; 2 uses
  %i.te = sub i32 %i.td, %i.sz
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 28
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !150
  store i32 %i.td, ptr %i.dy, align 4, !tbaa !88
  br label %GetOptimum.exit

bb.bw:                                            ; preds = %bb.bu
  store i32 0, ptr %i.dx, align 8, !tbaa !87
  store i32 0, ptr %i.dy, align 4, !tbaa !88
  %i.th = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.tj = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.tk = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.tl = tail call i32 %i.tj(ptr noundef %i.tk) #14, !inline_history !151
  store i32 %i.tl, ptr %i.dm, align 8, !tbaa !135
  %i.tm = load ptr, ptr %i.dn, align 8, !tbaa !136
  %i.tn = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.to = tail call i32 %i.tm(ptr noundef %i.tn, ptr noundef nonnull %i.do) #14, !inline_history !151 ; 4 uses
  %.not.i.i255 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i255, label %ReadMatchDistances.exit.i256, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tp = add i32 %i.to, -2
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !4  ; 5 uses
  %i.tt = load i32, ptr %i.dp, align 8, !tbaa !52
  %i.tu = icmp eq i32 %i.ts, %i.tt
  br i1 %i.tu, label %bb.bz, label %ReadMatchDistances.exit.i256

bb.bz:                                            ; preds = %bb.by
  %i.tv = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.tw = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.tx = tail call ptr %i.tv(ptr noundef %i.tw) #14, !inline_history !151
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 -1 ; 2 uses
  %i.tz = add i32 %i.to, -1
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !4
  %i.ud = add i32 %i.uc, 1
  %i.ue = load i32, ptr %i.dm, align 8, !tbaa !135
  %spec.store.select.i.i258 = tail call i32 @llvm.umin.i32(i32 %i.ue, i32 273) ; 3 uses
  %i.uf = zext i32 %i.ud to i64
  %i.ug = sub nsw i64 0, %i.uf
  %i.uh = getelementptr inbounds i8, ptr %i.ty, i64 %i.ug
  %i.ui = icmp ult i32 %i.ts, %spec.store.select.i.i258
  br i1 %i.ui, label %.lr.ph.preheader.i.i259, label %ReadMatchDistances.exit.i256

.lr.ph.preheader.i.i259:                          ; preds = %bb.bz
  %i.uj = zext nneg i32 %i.ts to i64
  br label %.lr.ph.i.i260

.lr.ph.i.i260:                                    ; preds = %bb.ca, %.lr.ph.preheader.i.i259
  %indvars.iv.i.i261 = phi i64 [ %i.uj, %.lr.ph.preheader.i.i259 ], [ %indvars.iv.next.i.i263, %bb.ca ] ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ty, i64 %indvars.iv.i.i261
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !21
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %indvars.iv.i.i261
  %i.un = load i8, ptr %i.um, align 1, !tbaa !21
  %i.uo = icmp eq i8 %i.ul, %i.un
  br i1 %i.uo, label %bb.ca, label %.critedge.loopexit.split.loop.exit.i.i262

bb.ca:                                            ; preds = %.lr.ph.i.i260
  %indvars.iv.next.i.i263 = add nuw nsw i64 %indvars.iv.i.i261, 1 ; 2 uses
  %lftr.wideiv.i.i264 = trunc i64 %indvars.iv.next.i.i263 to i32
  %exitcond.not.i.i265 = icmp eq i32 %spec.store.select.i.i258, %lftr.wideiv.i.i264
  br i1 %exitcond.not.i.i265, label %ReadMatchDistances.exit.i256, label %.lr.ph.i.i260, !llvm.loop !140

.critedge.loopexit.split.loop.exit.i.i262:        ; preds = %.lr.ph.i.i260
  %i.up = trunc nuw i64 %indvars.iv.i.i261 to i32
  br label %ReadMatchDistances.exit.i256

ReadMatchDistances.exit.i256:                     ; preds = %bb.ca, %.critedge.loopexit.split.loop.exit.i.i262, %bb.bz, %bb.by, %bb.bx
  %.1.i.i257 = phi i32 [ 0, %bb.bx ], [ %i.ts, %bb.by ], [ %i.ts, %bb.bz ], [ %i.up, %.critedge.loopexit.split.loop.exit.i.i262 ], [ %spec.store.select.i.i258, %bb.ca ]
  %i.uq = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.ur = add i32 %i.uq, 1
  store i32 %i.ur, ptr %i.dj, align 4, !tbaa !89
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.us = load i32, ptr %i.dk, align 8, !tbaa !141
  %i.ut = load i32, ptr %i.dl, align 4, !tbaa !142
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %ReadMatchDistances.exit.i256
  %.0900.i = phi i32 [ %i.to, %ReadMatchDistances.exit.i256 ], [ %i.ut, %bb.cb ] ; 2 uses
  %.0696.i = phi i32 [ %.1.i.i257, %ReadMatchDistances.exit.i256 ], [ %i.us, %bb.cb ] ; 6 uses
  %i.uu = load i32, ptr %i.dm, align 8, !tbaa !135 ; 3 uses
  %i.uv = icmp ult i32 %i.uu, 2
  br i1 %i.uv, label %GetOptimum.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uw = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.ux = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.uy = tail call ptr %i.uw(ptr noundef %i.ux) #14, !inline_history !152 ; 6 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -1 ; 10 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !21  ; 6 uses
  %.not1059.i = icmp eq i32 %i.uu, 2              ; 4 uses
  %i.vb = tail call i32 @llvm.umax.i32(i32 %i.uu, i32 3)
  %umax.i231 = tail call i32 @llvm.umin.i32(i32 %i.vb, i32 273) ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa !4
  %i.vc = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.vd = add i32 %i.vc, 1
  %i.ve = zext i32 %i.vd to i64
  %i.vf = sub nsw i64 0, %i.ve
  %i.vg = getelementptr inbounds i8, ptr %i.uz, i64 %i.vf ; 3 uses
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !21
  %.not830.i = icmp eq i8 %i.va, %i.vh
  br i1 %.not830.i, label %bb.ce, label %.critedge.i

bb.ce:                                            ; preds = %bb.cd
  %i.vi = load i8, ptr %i.uy, align 1, !tbaa !21
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !21
  %.not831.i = icmp ne i8 %i.vi, %i.vk            ; 2 uses
  %brmerge.i = or i1 %.not1059.i, %.not831.i
  %.mux.i = select i1 %.not831.i, i32 0, i32 2
  br i1 %brmerge.i, label %.critedge.i, label %.lr.ph.preheader.i248

.lr.ph.preheader.i248:                            ; preds = %bb.ce
  %wide.trip.count.i249 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.cf, %.lr.ph.preheader.i248
  %indvars.iv.i251 = phi i64 [ 2, %.lr.ph.preheader.i248 ], [ %indvars.iv.next.i253, %bb.cf ] ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uz, i64 %indvars.iv.i251
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !21
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 %indvars.iv.i251
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !21
  %i.vp = icmp eq i8 %i.vm, %i.vo
  br i1 %i.vp, label %bb.cf, label %.critedge.loopexit.split.loop.exit.i252

bb.cf:                                            ; preds = %.lr.ph.i250
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %indvars.iv.next.i253, %wide.trip.count.i249
  br i1 %exitcond.not.i254, label %.critedge.i, label %.lr.ph.i250, !llvm.loop !153

.critedge.loopexit.split.loop.exit.i252:          ; preds = %.lr.ph.i250
  %i.vq = trunc nuw nsw i64 %indvars.iv.i251 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cf, %.critedge.loopexit.split.loop.exit.i252, %bb.ce, %bb.cd
  %storemerge1223.i = phi i32 [ 0, %bb.cd ], [ %.mux.i, %bb.ce ], [ %i.vq, %.critedge.loopexit.split.loop.exit.i252 ], [ %umax.i231, %bb.cf ] ; 5 uses
  store i32 %storemerge1223.i, ptr %i.b, align 16, !tbaa !4
  %i.vr = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.vs = add i32 %i.vr, 1
  %i.vt = zext i32 %i.vs to i64
  %i.vu = sub nsw i64 0, %i.vt
  %i.vv = getelementptr inbounds i8, ptr %i.uz, i64 %i.vu ; 3 uses
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !21
  %.not830.1.i = icmp eq i8 %i.va, %i.vw
  br i1 %.not830.1.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge.i
  %i.vx = load i8, ptr %i.uy, align 1, !tbaa !21
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !21
  %.not831.1.i = icmp eq i8 %i.vx, %i.vz
  br i1 %.not831.1.i, label %.preheader972.1.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  store i32 0, ptr %i.ea, align 4, !tbaa !4
  br label %bb.cj

.preheader972.1.i:                                ; preds = %bb.cg
  br i1 %.not1059.i, label %.critedge.1.i, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %.preheader972.1.i
  %wide.trip.count.1.i244 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ci, %.lr.ph.preheader.1.i
  %indvars.iv.1.i245 = phi i64 [ 2, %.lr.ph.preheader.1.i ], [ %indvars.iv.next.1.i246, %bb.ci ] ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uz, i64 %indvars.iv.1.i245
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !21
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 %indvars.iv.1.i245
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !21
  %i.we = icmp eq i8 %i.wb, %i.wd
  br i1 %i.we, label %bb.ci, label %.critedge.1.loopexit.split.loop.exit1249.i

bb.ci:                                            ; preds = %.lr.ph.1.i
  %indvars.iv.next.1.i246 = add nuw nsw i64 %indvars.iv.1.i245, 1 ; 2 uses
  %exitcond.1.not.i247 = icmp eq i64 %indvars.iv.next.1.i246, %wide.trip.count.1.i244
end_hunk_0
begin_hunk_1_@LzmaEnc_CodeOneBlock:bb.a
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gm, %bb.gl
  %.017.i888.i = phi i32 [ %i.bmc, %bb.gl ], [ %i.bme, %bb.gm ]
  %.016.i889.i = phi i32 [ %i.bmd, %bb.gl ], [ %i.bmt, %bb.gm ] ; 4 uses
  %.015.i890.i = phi i32 [ 0, %bb.gl ], [ %i.bms, %bb.gm ]
  %.0.i891.i = phi i32 [ 256, %bb.gl ], [ %i.bmw, %bb.gm ] ; 3 uses
  %i.bme = shl i32 %.017.i888.i, 1                ; 3 uses
  %i.bmf = and i32 %.0.i891.i, %i.bme
  %i.bmg = lshr i32 %.016.i889.i, 8
  %i.bmh = add nuw nsw i32 %.0.i891.i, %i.bmg
  %i.bmi = add nuw nsw i32 %i.bmh, %i.bmf
  %i.bmj = zext nneg i32 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw [2 x i8], ptr %i.blv, i64 %i.bmj
  %i.bml = load i16, ptr %i.bmk, align 2, !tbaa !23
  %i.bmm = zext i16 %i.bml to i64
  %.mask.i892.i = and i32 %.016.i889.i, 128
  %isneg.not.i893.i = icmp eq i32 %.mask.i892.i, 0
  %i.bmn = select i1 %isneg.not.i893.i, i64 0, i64 2032
  %i.bmo = xor i64 %i.bmn, %i.bmm
  %i.bmp = lshr i64 %i.bmo, 4
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bmp
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !4
  %i.bms = add i32 %i.bmr, %.015.i890.i           ; 2 uses
  %i.bmt = shl nuw nsw i32 %.016.i889.i, 1        ; 2 uses
  %i.bmu = xor i32 %i.bme, %i.bmt
  %i.bmv = xor i32 %i.bmu, -1
  %i.bmw = and i32 %.0.i891.i, %i.bmv
  %i.bmx = icmp samesign ult i32 %.016.i889.i, 32768
  br i1 %i.bmx, label %bb.gm, label %LitEnc_GetPriceMatched.exit894.i, !llvm.loop !168

LitEnc_GetPriceMatched.exit894.i:                 ; preds = %bb.gm
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.bkz
  %i.bmz = load i32, ptr %i.bmy, align 4, !tbaa !4
  %i.bna = add i32 %i.bky, 1
  %i.bnb = and i32 %i.bna, %i.bkx
  %i.bnc = zext i32 %i.bmz to i64                 ; 4 uses
  %i.bnd = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bnc
  %i.bne = zext i32 %i.bnb to i64                 ; 3 uses
  %i.bnf = getelementptr inbounds nuw [2 x i8], ptr %i.bnd, i64 %i.bne
  %i.bng = load i16, ptr %i.bnf, align 2, !tbaa !23
  %i.bnh = lshr i16 %i.bng, 4
  %i.bni = xor i16 %i.bnh, 127
  %i.bnj = zext nneg i16 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bnj
  %i.bnl = load i32, ptr %i.bnk, align 4, !tbaa !4
  %i.bnm = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.bnc
  %i.bnn = load i16, ptr %i.bnm, align 2, !tbaa !23
  %i.bno = lshr i16 %i.bnn, 4
  %i.bnp = xor i16 %i.bno, 127
  %i.bnq = zext nneg i16 %i.bnp to i64
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bnq
  %i.bns = load i32, ptr %i.bnr, align 4, !tbaa !4
  %i.bnt = add i32 %i.bjt, 1                      ; 2 uses
  %i.bnu = add i32 %i.bkt, %i.bnt                 ; 2 uses
  %i.bnv = icmp ult i32 %.10.i, %i.bnu
  br i1 %i.bnv, label %.lr.ph1046.preheader.i, label %._crit_edge1047.i

.lr.ph1046.preheader.i:                           ; preds = %LitEnc_GetPriceMatched.exit894.i
  %i.bnw = zext i32 %.10.i to i64                 ; 4 uses
  %i.bnx = add i32 %.0704.lcssa.i, %i.akr         ; 3 uses
  %wide.trip.count1164.i = zext i32 %i.bnx to i64 ; 3 uses
  %i.bny = sub nsw i64 %wide.trip.count1164.i, %i.bnw
  %xtraiter674 = and i64 %i.bny, 3                ; 2 uses
  %lcmp.mod675.not = icmp eq i64 %xtraiter674, 0
  br i1 %lcmp.mod675.not, label %.lr.ph1046.i.prol.loopexit, label %.lr.ph1046.i.prol

.lr.ph1046.i.prol:                                ; preds = %.lr.ph1046.preheader.i, %.lr.ph1046.i.prol
  %indvars.iv1160.i.prol = phi i64 [ %indvars.iv.next1161.i.prol, %.lr.ph1046.i.prol ], [ %i.bnw, %.lr.ph1046.preheader.i ]
  %prol.iter676 = phi i64 [ %prol.iter676.next, %.lr.ph1046.i.prol ], [ 0, %.lr.ph1046.preheader.i ]
  %indvars.iv.next1161.i.prol = add nuw nsw i64 %indvars.iv1160.i.prol, 1 ; 3 uses
  %i.bnz = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1161.i.prol
  store i32 1073741824, ptr %i.bnz, align 4, !tbaa !157
  %prol.iter676.next = add i64 %prol.iter676, 1   ; 2 uses
  %prol.iter676.cmp.not = icmp eq i64 %prol.iter676.next, %xtraiter674
  br i1 %prol.iter676.cmp.not, label %.lr.ph1046.i.prol.loopexit, label %.lr.ph1046.i.prol, !llvm.loop !185

.lr.ph1046.i.prol.loopexit:                       ; preds = %.lr.ph1046.i.prol, %.lr.ph1046.preheader.i
  %indvars.iv1160.i.unr = phi i64 [ %i.bnw, %.lr.ph1046.preheader.i ], [ %indvars.iv.next1161.i.prol, %.lr.ph1046.i.prol ]
  %i.boa = sub nsw i64 %i.bnw, %wide.trip.count1164.i
  %i.bob = icmp ugt i64 %i.boa, -4
  br i1 %i.bob, label %._crit_edge1047.i, label %.lr.ph1046.i

.lr.ph1046.i:                                     ; preds = %.lr.ph1046.i.prol.loopexit, %.lr.ph1046.i
  %indvars.iv1160.i = phi i64 [ %indvars.iv.next1161.i.3, %.lr.ph1046.i ], [ %indvars.iv1160.i.unr, %.lr.ph1046.i.prol.loopexit ] ; 4 uses
  %i.boc = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1160.i
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 48
  store i32 1073741824, ptr %i.bod, align 4, !tbaa !157
  %i.boe = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1160.i
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 96
  store i32 1073741824, ptr %i.bof, align 4, !tbaa !157
  %i.bog = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv1160.i
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 144
  store i32 1073741824, ptr %i.boh, align 4, !tbaa !157
  %indvars.iv.next1161.i.3 = add nuw nsw i64 %indvars.iv1160.i, 4 ; 3 uses
  %i.boi = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.next1161.i.3
  store i32 1073741824, ptr %i.boi, align 4, !tbaa !157
  %exitcond1165.not.i.3 = icmp eq i64 %indvars.iv.next1161.i.3, %wide.trip.count1164.i
  br i1 %exitcond1165.not.i.3, label %._crit_edge1047.i, label %.lr.ph1046.i, !llvm.loop !186

._crit_edge1047.i:                                ; preds = %.lr.ph1046.i.prol.loopexit, %.lr.ph1046.i, %LitEnc_GetPriceMatched.exit894.i
  %.11.lcssa.i = phi i32 [ %.10.i, %LitEnc_GetPriceMatched.exit894.i ], [ %i.bnx, %.lr.ph1046.i ], [ %i.bnx, %.lr.ph1046.i.prol.loopexit ] ; 2 uses
  %i.boj = getelementptr inbounds nuw [1088 x i8], ptr %i.eu, i64 %i.bne
  %i.bok = add i32 %i.bkt, -2
  %i.bol = zext i32 %i.bok to i64
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bol
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !4
  %i.boo = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bnc
  %i.bop = load i16, ptr %i.boo, align 2, !tbaa !23
  %i.boq = lshr i16 %i.bop, 4
  %i.bor = zext nneg i16 %i.boq to i64
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.bor
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !4
  %i.bou = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.bnc
  %i.bov = getelementptr inbounds nuw [2 x i8], ptr %i.bou, i64 %i.bne
  %i.bow = load i16, ptr %i.bov, align 2, !tbaa !23
  %i.box = lshr i16 %i.bow, 4
  %i.boy = xor i16 %i.box, 127
  %i.boz = zext nneg i16 %i.boy to i64
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.boz
  %i.bpb = load i32, ptr %i.bpa, align 4, !tbaa !4
  %i.bpc = add i32 %i.blh, %.0711.i
  %i.bpd = add i32 %i.bpc, %i.bms
  %i.bpe = add i32 %i.bpd, %i.bnl
  %i.bpf = add i32 %i.bpe, %i.bns
  %i.bpg = add i32 %i.bpf, %i.bon
  %i.bph = add i32 %i.bpg, %i.bot
  %i.bpi = add i32 %i.bph, %i.bpb                 ; 2 uses
  %i.bpj = zext i32 %i.bnu to i64
  %i.bpk = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.bpj ; 8 uses
  %i.bpl = load i32, ptr %i.bpk, align 4, !tbaa !157
  %i.bpm = icmp ult i32 %i.bpi, %i.bpl
  br i1 %i.bpm, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %._crit_edge1047.i
  store i32 %i.bpi, ptr %i.bpk, align 4, !tbaa !157
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpk, i64 24
  store i32 %i.bnt, ptr %i.bpn, align 4, !tbaa !148
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpk, i64 28
  store i32 0, ptr %i.bpo, align 4, !tbaa !150
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8
  store i32 1, ptr %i.bpp, align 4, !tbaa !158
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpk, i64 12
  store i32 1, ptr %i.bpq, align 4, !tbaa !164
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpk, i64 16
  store i32 %i.akr, ptr %i.bpr, align 4, !tbaa !166
  %i.bps = add i32 %.0722.i, 4
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpk, i64 20
  store i32 %i.bps, ptr %i.bpt, align 4, !tbaa !167
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge1047.i, %.critedge8.i
  %.12.i = phi i32 [ %.10.i, %.critedge8.i ], [ %.11.lcssa.i, %bb.gn ], [ %.11.lcssa.i, %._crit_edge1047.i ] ; 3 uses
  %i.bpu = add i32 %.1727.i, 2                    ; 3 uses
  %.not827.i = icmp eq i32 %i.bpu, %.0899.i
  br i1 %.not827.i, label %.thread945.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bpv = add i32 %.1727.i, 3
  %i.bpw = zext i32 %i.bpv to i64
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.bpw
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !4 ; 5 uses
  %i.bpz = icmp ugt i32 %i.bpy, 127
  br i1 %i.bpz, label %bb.gq, label %.thread928.i

bb.gq:                                            ; preds = %bb.gp
  %notsub825.i = add i32 %i.bpy, -524288
  %isneg.inv826.i = icmp slt i32 %notsub825.i, 0
  %i.bqa = select i1 %isneg.inv826.i, i32 6, i32 18 ; 2 uses
  %i.bqb = lshr i32 %i.bpy, %i.bqa
  %i.bqc = zext nneg i32 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bqc
  %i.bqe = load i8, ptr %i.bqd, align 1, !tbaa !21
  %i.bqf = zext i8 %i.bqe to i32
  %i.bqg = shl nuw nsw i32 %i.bqa, 1
  %i.bqh = add nuw nsw i32 %i.bqg, %i.bqf
  br label %.thread928.i

.thread928.i:                                     ; preds = %bb.gi, %bb.gq, %bb.gp
  %.14937.i = phi i32 [ %.12.i, %bb.gp ], [ %.12.i, %bb.gq ], [ %.10.i, %bb.gi ]
  %.4721936.i = phi i32 [ %.0717.i, %bb.gp ], [ %i.bqh, %bb.gq ], [ %.0717.i, %bb.gi ]
  %.3725935.i = phi i32 [ %i.bpy, %bb.gp ], [ %i.bpy, %bb.gq ], [ %.0722.i, %bb.gi ]
  %.3729934.i = phi i32 [ %i.bpu, %bb.gp ], [ %i.bpu, %bb.gq ], [ %.1727.i, %bb.gi ]
  %indvars.iv.next460 = add i32 %indvars.iv459, 1
  br label %bb.gd

.thread945.i:                                     ; preds = %bb.go, %bb.fz, %bb.fb
  %.16.i = phi i32 [ %.8.i, %bb.fz ], [ %.07051053.i, %bb.fb ], [ %.12.i, %bb.go ] ; 5 uses
  %i.bqi = add i32 %i.akr, 1                      ; 2 uses
  %i.bqj = icmp eq i32 %i.bqi, %.16.i
  %indvars.iv.next445 = add i32 %indvars.iv444, -1
  br i1 %i.bqj, label %._crit_edge1057.i, label %.lr.ph1056.i

GetOptimum.exit:                                  ; preds = %bb.de, %bb.cx, %bb.cc, %bb.bv, %bb.cs, %bb.ct, %bb.cv, %bb.cw, %Backward.exit.i, %Backward.exit870.i
  %.3344 = phi i32 [ %i.tg, %bb.bv ], [ -1, %bb.cc ], [ -1, %bb.cx ], [ %i.ako, %Backward.exit.i ], [ %i.ana, %Backward.exit870.i ], [ %i.yi, %bb.cv ], [ %i.yi, %bb.cw ], [ %.2699.3.i, %bb.cs ], [ %.2699.3.i, %bb.ct ], [ %i.abs, %bb.de ]
  %.2.i = phi i32 [ %i.te, %bb.bv ], [ 1, %bb.cc ], [ 1, %bb.cx ], [ %i.akp, %Backward.exit.i ], [ %i.anb, %Backward.exit870.i ], [ 1, %bb.cv ], [ %.0696.i, %bb.cw ], [ 1, %bb.cs ], [ %i.xw, %bb.ct ], [ 1, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %GetOptimumFast.exit

GetOptimumFast.exit:                              ; preds = %bb.bj, %bb.bl, %bb.bn, %bb.bp, %MovePos.exit.sink.split.i, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bg, %bb.bf, %bb.be, %bb.az, %bb.aq, %bb.x, %GetOptimum.exit
  %.0 = phi i32 [ %.3344, %GetOptimum.exit ], [ -1, %bb.x ], [ %.1342, %MovePos.exit.sink.split.i ], [ -1, %bb.az ], [ -1, %bb.bl ], [ -1, %bb.bn ], [ -1, %bb.bp ], [ -1, %bb.bg ], [ %i.lx, %bb.aq ], [ -1, %bb.bq ], [ -1, %bb.br ], [ -1, %bb.bs ], [ -1, %bb.bt ], [ -1, %bb.be ], [ -1, %bb.bf ], [ -1, %bb.bj ] ; 2 uses
  %.0205 = phi i32 [ %.2.i, %GetOptimum.exit ], [ 1, %bb.x ], [ %.6.ph.i, %MovePos.exit.sink.split.i ], [ 1, %bb.az ], [ 1, %bb.bl ], [ 1, %bb.bn ], [ 1, %bb.bp ], [ 1, %bb.bg ], [ 1, %bb.aq ], [ 1, %bb.bq ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bt ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %bb.bj ] ; 2 uses
  %i.bqk = load i32, ptr %i.dv, align 4, !tbaa !90
  %i.bql = and i32 %i.bqk, %.2199                 ; 2 uses
  %i.bqm = icmp eq i32 %.0205, 1                  ; 2 uses
  %i.bqn = icmp eq i32 %.0, -1
  %or.cond = select i1 %i.bqm, i1 %i.bqn, i1 false
  br i1 %or.cond, label %bb.gr, label %bb.hf

bb.gr:                                            ; preds = %GetOptimumFast.exit
  %i.bqo = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bqp = zext i32 %i.bqo to i64
  %i.bqq = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.bqp
  %i.bqr = zext i32 %i.bql to i64
  %i.bqs = getelementptr inbounds nuw [2 x i8], ptr %i.bqq, i64 %i.bqr ; 2 uses
  %i.bqt = load i16, ptr %i.bqs, align 2, !tbaa !23 ; 2 uses
  %i.bqu = zext i16 %i.bqt to i32                 ; 2 uses
  %i.bqv = load i32, ptr %i.fe, align 8, !tbaa !76
  %i.bqw = lshr i32 %i.bqv, 11
  %i.bqx = mul i32 %i.bqw, %i.bqu                 ; 3 uses
  %i.bqy = sub nsw i32 2048, %i.bqu
  %i.bqz = lshr i32 %i.bqy, 5
  store i32 %i.bqx, ptr %i.fe, align 8, !tbaa !76
  %i.bra = trunc i32 %i.bqz to i16
  %i.brb = add i16 %i.bqt, %i.bra
  store i16 %i.brb, ptr %i.bqs, align 2, !tbaa !23
  %i.brc = icmp ult i32 %i.bqx, 16777216
  br i1 %i.brc, label %bb.gs, label %RangeEnc_EncodeBit.exit267

bb.gs:                                            ; preds = %bb.gr
  %i.brd = shl nuw i32 %i.bqx, 8
  store i32 %i.brd, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit267

RangeEnc_EncodeBit.exit267:                       ; preds = %bb.gr, %bb.gs
  %i.bre = load ptr, ptr %i.dq, align 8, !tbaa !122
  %i.brf = load ptr, ptr %i.df, align 8, !tbaa !116
  %i.brg = tail call ptr %i.bre(ptr noundef %i.brf) #14
  %i.brh = load i32, ptr %i.dj, align 4, !tbaa !89
  %i.bri = zext i32 %i.brh to i64
  %i.brj = sub nsw i64 0, %i.bri
  %i.brk = getelementptr inbounds i8, ptr %i.brg, i64 %i.brj ; 3 uses
  %i.brl = load i8, ptr %i.brk, align 1, !tbaa !21
  %i.brm = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.brn = load i32, ptr %i.eg, align 8, !tbaa !91
  %i.bro = and i32 %i.brn, %.2199
  %i.brp = load i32, ptr %i.eh, align 4, !tbaa !53 ; 2 uses
  %i.brq = shl i32 %i.bro, %i.brp
  %i.brr = getelementptr inbounds i8, ptr %i.brk, i64 -1
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !21
  %i.brt = zext i8 %i.brs to i32
  %i.bru = sub i32 8, %i.brp
  %i.brv = lshr i32 %i.brt, %i.bru
  %i.brw = add i32 %i.brv, %i.brq
  %i.brx = mul i32 %i.brw, 768
  %i.bry = zext i32 %i.brx to i64
  %i.brz = getelementptr inbounds nuw [2 x i8], ptr %i.brm, i64 %i.bry ; 2 uses
  %i.bsa = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bsb = icmp ult i32 %i.bsa, 7
  %i.bsc = zext i8 %i.brl to i32                  ; 2 uses
  br i1 %i.bsb, label %bb.gt, label %bb.gz

bb.gt:                                            ; preds = %RangeEnc_EncodeBit.exit267
  %i.bsd = or disjoint i32 %i.bsc, 256
  br label %bb.gu

bb.gu:                                            ; preds = %RangeEnc_EncodeBit.exit.i271, %bb.gt
  %.0.i268 = phi i32 [ %i.bsd, %bb.gt ], [ %i.bta, %RangeEnc_EncodeBit.exit.i271 ] ; 4 uses
  %i.bse = lshr i32 %.0.i268, 8
  %i.bsf = zext nneg i32 %i.bse to i64
  %i.bsg = getelementptr inbounds nuw [2 x i8], ptr %i.brz, i64 %i.bsf ; 2 uses
  %i.bsh = load i16, ptr %i.bsg, align 2, !tbaa !23
  %i.bsi = zext i16 %i.bsh to i32                 ; 5 uses
  %i.bsj = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bsk = lshr i32 %i.bsj, 11
  %i.bsl = mul i32 %i.bsk, %i.bsi                 ; 3 uses
  %i.bsm = and i32 %.0.i268, 128
  %i.bsn = icmp eq i32 %i.bsm, 0
  br i1 %i.bsn, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.bso = sub nsw i32 2048, %i.bsi
  %i.bsp = lshr i32 %i.bso, 5
  %i.bsq = add nuw nsw i32 %i.bsp, %i.bsi
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %i.bsr = zext i32 %i.bsl to i64
  %i.bss = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bst = add i64 %i.bss, %i.bsr
  store i64 %i.bst, ptr %i.ff, align 8, !tbaa !75
  %i.bsu = sub i32 %i.bsj, %i.bsl
  %i.bsv = lshr i32 %i.bsi, 5
  %i.bsw = sub nsw i32 %i.bsi, %i.bsv
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.sink.i.i269 = phi i32 [ %i.bsl, %bb.gv ], [ %i.bsu, %bb.gw ] ; 3 uses
  %.0.i.i270 = phi i32 [ %i.bsq, %bb.gv ], [ %i.bsw, %bb.gw ]
  store i32 %.sink.i.i269, ptr %i.fe, align 8, !tbaa !76
  %i.bsx = trunc i32 %.0.i.i270 to i16
  store i16 %i.bsx, ptr %i.bsg, align 2, !tbaa !23
  %i.bsy = icmp ult i32 %.sink.i.i269, 16777216
  br i1 %i.bsy, label %bb.gy, label %RangeEnc_EncodeBit.exit.i271

bb.gy:                                            ; preds = %bb.gx
  %i.bsz = shl nuw i32 %.sink.i.i269, 8
  store i32 %i.bsz, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i271

RangeEnc_EncodeBit.exit.i271:                     ; preds = %bb.gy, %bb.gx
  %i.bta = shl nuw nsw i32 %.0.i268, 1
  %i.btb = icmp samesign ult i32 %.0.i268, 32768
  br i1 %i.btb, label %bb.gu, label %LitEnc_Encode.exit272, !llvm.loop !138

bb.gz:                                            ; preds = %RangeEnc_EncodeBit.exit267
  %i.btc = load i32, ptr %i.dr, align 8, !tbaa !4
  %i.btd = zext i32 %i.btc to i64
  %i.bte = sub nsw i64 0, %i.btd
  %i.btf = getelementptr inbounds i8, ptr %i.brk, i64 %i.bte
  %i.btg = getelementptr inbounds i8, ptr %i.btf, i64 -1
  %i.bth = load i8, ptr %i.btg, align 1, !tbaa !21
  %i.bti = zext i8 %i.bth to i32
  %i.btj = or disjoint i32 %i.bsc, 256
  br label %bb.ha

bb.ha:                                            ; preds = %RangeEnc_EncodeBit.exit.i276, %bb.gz
  %.014.i = phi i32 [ %i.btj, %bb.gz ], [ %i.buk, %RangeEnc_EncodeBit.exit.i276 ] ; 4 uses
  %.013.i = phi i32 [ %i.bti, %bb.gz ], [ %i.btk, %RangeEnc_EncodeBit.exit.i276 ]
  %.0.i273 = phi i32 [ 256, %bb.gz ], [ %i.bun, %RangeEnc_EncodeBit.exit.i276 ] ; 3 uses
  %i.btk = shl i32 %.013.i, 1                     ; 3 uses
  %i.btl = and i32 %i.btk, %.0.i273
  %i.btm = lshr i32 %.014.i, 8
  %i.btn = add nuw nsw i32 %.0.i273, %i.btm
  %i.bto = add nuw nsw i32 %i.btn, %i.btl
  %i.btp = zext nneg i32 %i.bto to i64
  %i.btq = getelementptr inbounds nuw [2 x i8], ptr %i.brz, i64 %i.btp ; 2 uses
  %i.btr = load i16, ptr %i.btq, align 2, !tbaa !23
  %i.bts = zext i16 %i.btr to i32                 ; 5 uses
  %i.btt = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.btu = lshr i32 %i.btt, 11
  %i.btv = mul i32 %i.btu, %i.bts                 ; 3 uses
  %i.btw = and i32 %.014.i, 128
  %i.btx = icmp eq i32 %i.btw, 0
  br i1 %i.btx, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bty = sub nsw i32 2048, %i.bts
  %i.btz = lshr i32 %i.bty, 5
  %i.bua = add nuw nsw i32 %i.btz, %i.bts
  br label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  %i.bub = zext i32 %i.btv to i64
  %i.buc = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bud = add i64 %i.buc, %i.bub
  store i64 %i.bud, ptr %i.ff, align 8, !tbaa !75
  %i.bue = sub i32 %i.btt, %i.btv
  %i.buf = lshr i32 %i.bts, 5
  %i.bug = sub nsw i32 %i.bts, %i.buf
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sink.i.i274 = phi i32 [ %i.btv, %bb.hb ], [ %i.bue, %bb.hc ] ; 3 uses
  %.0.i.i275 = phi i32 [ %i.bua, %bb.hb ], [ %i.bug, %bb.hc ]
  store i32 %.sink.i.i274, ptr %i.fe, align 8, !tbaa !76
  %i.buh = trunc i32 %.0.i.i275 to i16
  store i16 %i.buh, ptr %i.btq, align 2, !tbaa !23
  %i.bui = icmp ult i32 %.sink.i.i274, 16777216
  br i1 %i.bui, label %bb.he, label %RangeEnc_EncodeBit.exit.i276

bb.he:                                            ; preds = %bb.hd
  %i.buj = shl nuw i32 %.sink.i.i274, 8
  store i32 %i.buj, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit.i276

RangeEnc_EncodeBit.exit.i276:                     ; preds = %bb.he, %bb.hd
  %i.buk = shl nuw nsw i32 %.014.i, 1             ; 2 uses
  %i.bul = xor i32 %i.buk, %i.btk
  %i.bum = xor i32 %i.bul, -1
  %i.bun = and i32 %.0.i273, %i.bum
  %i.buo = icmp samesign ult i32 %.014.i, 32768
  br i1 %i.buo, label %bb.ha, label %LitEnc_Encode.exit272, !llvm.loop !187

LitEnc_Encode.exit272:                            ; preds = %RangeEnc_EncodeBit.exit.i276, %RangeEnc_EncodeBit.exit.i271
  %i.bup = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.buq = zext i32 %i.bup to i64
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.buq
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !4
  store i32 %i.bus, ptr %i.ed, align 8, !tbaa !25
  br label %bb.kh

bb.hf:                                            ; preds = %GetOptimumFast.exit.thread, %GetOptimumFast.exit
  %i.but = phi i1 [ false, %GetOptimumFast.exit.thread ], [ %i.bqm, %GetOptimumFast.exit ] ; 2 uses
  %i.buu = phi i32 [ %5, %GetOptimumFast.exit.thread ], [ %i.bql, %GetOptimumFast.exit ] ; 3 uses
  %.0205354 = phi i32 [ 2, %GetOptimumFast.exit.thread ], [ %.0205, %GetOptimumFast.exit ] ; 6 uses
  %.0352 = phi i32 [ %i.ss, %GetOptimumFast.exit.thread ], [ %.0, %GetOptimumFast.exit ] ; 8 uses
  %i.buv = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.buw = zext i32 %i.buv to i64
  %i.bux = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.buw
  %i.buy = zext i32 %i.buu to i64                 ; 2 uses
  %i.buz = getelementptr inbounds nuw [2 x i8], ptr %i.bux, i64 %i.buy ; 2 uses
  %i.bva = load i16, ptr %i.buz, align 2, !tbaa !23 ; 3 uses
  %i.bvb = zext i16 %i.bva to i32
  %i.bvc = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bvd = lshr i32 %i.bvc, 11
  %i.bve = mul i32 %i.bvd, %i.bvb                 ; 2 uses
  %i.bvf = zext i32 %i.bve to i64
  %i.bvg = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bvh = add i64 %i.bvg, %i.bvf
  store i64 %i.bvh, ptr %i.ff, align 8, !tbaa !75
  %i.bvi = sub i32 %i.bvc, %i.bve                 ; 3 uses
  %i.bvj = lshr i16 %i.bva, 5
  %i.bvk = sub i16 %i.bva, %i.bvj
  store i32 %i.bvi, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.bvk, ptr %i.buz, align 2, !tbaa !23
  %i.bvl = icmp ult i32 %i.bvi, 16777216
  br i1 %i.bvl, label %bb.hg, label %RangeEnc_EncodeBit.exit278

bb.hg:                                            ; preds = %bb.hf
  %i.bvm = shl nuw i32 %i.bvi, 8
  store i32 %i.bvm, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit278

RangeEnc_EncodeBit.exit278:                       ; preds = %bb.hf, %bb.hg
  %i.bvn = icmp ult i32 %.0352, 4
  %i.bvo = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bvp = zext i32 %i.bvo to i64                 ; 2 uses
  %i.bvq = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.bvp ; 3 uses
  %i.bvr = load i16, ptr %i.bvq, align 2, !tbaa !23 ; 4 uses
  %i.bvs = zext i16 %i.bvr to i32                 ; 2 uses
  %i.bvt = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bvu = lshr i32 %i.bvt, 11
  %i.bvv = mul i32 %i.bvu, %i.bvs                 ; 5 uses
  br i1 %i.bvn, label %bb.hh, label %bb.id

bb.hh:                                            ; preds = %RangeEnc_EncodeBit.exit278
  %i.bvw = zext i32 %i.bvv to i64
  %i.bvx = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bvy = add i64 %i.bvx, %i.bvw
  store i64 %i.bvy, ptr %i.ff, align 8, !tbaa !75
  %i.bvz = sub i32 %i.bvt, %i.bvv                 ; 3 uses
  %i.bwa = lshr i16 %i.bvr, 5
  %i.bwb = sub i16 %i.bvr, %i.bwa
  store i32 %i.bvz, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.bwb, ptr %i.bvq, align 2, !tbaa !23
  %i.bwc = icmp ult i32 %i.bvz, 16777216
  br i1 %i.bwc, label %bb.hi, label %RangeEnc_EncodeBit.exit280

bb.hi:                                            ; preds = %bb.hh
  %i.bwd = shl nuw i32 %i.bvz, 8
  store i32 %i.bwd, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit280

RangeEnc_EncodeBit.exit280:                       ; preds = %bb.hh, %bb.hi
  %i.bwe = icmp eq i32 %.0352, 0
  br i1 %i.bwe, label %bb.hj, label %bb.hp

bb.hj:                                            ; preds = %RangeEnc_EncodeBit.exit280
  %i.bwf = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bwg = zext i32 %i.bwf to i64                 ; 2 uses
  %i.bwh = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bwg ; 2 uses
  %i.bwi = load i16, ptr %i.bwh, align 2, !tbaa !23 ; 2 uses
  %i.bwj = zext i16 %i.bwi to i32                 ; 2 uses
  %i.bwk = load i32, ptr %i.fe, align 8, !tbaa !76
  %i.bwl = lshr i32 %i.bwk, 11
  %i.bwm = mul i32 %i.bwl, %i.bwj                 ; 3 uses
  %i.bwn = sub nsw i32 2048, %i.bwj
  %i.bwo = lshr i32 %i.bwn, 5
  %i.bwp = trunc i32 %i.bwo to i16
  %i.bwq = add i16 %i.bwi, %i.bwp
  store i16 %i.bwq, ptr %i.bwh, align 2, !tbaa !23
  %i.bwr = icmp ult i32 %i.bwm, 16777216
  br i1 %i.bwr, label %bb.hk, label %RangeEnc_EncodeBit.exit282

bb.hk:                                            ; preds = %bb.hj
  %i.bws = shl nuw i32 %i.bwm, 8
  store i32 %i.bws, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  %.pre474 = load i32, ptr %i.ed, align 8, !tbaa !25
  %.pre475 = load i32, ptr %i.fe, align 8, !tbaa !76
  %.pre481 = zext i32 %.pre474 to i64
  br label %RangeEnc_EncodeBit.exit282

RangeEnc_EncodeBit.exit282:                       ; preds = %bb.hj, %bb.hk
  %.pre-phi482 = phi i64 [ %i.bwg, %bb.hj ], [ %.pre481, %bb.hk ]
  %i.bwt = phi i32 [ %i.bwm, %bb.hj ], [ %.pre475, %bb.hk ] ; 2 uses
  %i.bwu = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.pre-phi482
  %i.bwv = getelementptr inbounds nuw [2 x i8], ptr %i.bwu, i64 %i.buy ; 2 uses
  %i.bww = load i16, ptr %i.bwv, align 2, !tbaa !23
  %i.bwx = zext i16 %i.bww to i32                 ; 5 uses
  %i.bwy = lshr i32 %i.bwt, 11
  %i.bwz = mul i32 %i.bwy, %i.bwx                 ; 3 uses
  br i1 %i.but, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %RangeEnc_EncodeBit.exit282
  %i.bxa = sub nsw i32 2048, %i.bwx
  %i.bxb = lshr i32 %i.bxa, 5
  %i.bxc = add nuw nsw i32 %i.bxb, %i.bwx
  br label %bb.hn

bb.hm:                                            ; preds = %RangeEnc_EncodeBit.exit282
  %i.bxd = zext i32 %i.bwz to i64
  %i.bxe = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bxf = add i64 %i.bxe, %i.bxd
  store i64 %i.bxf, ptr %i.ff, align 8, !tbaa !75
  %i.bxg = sub i32 %i.bwt, %i.bwz
  %i.bxh = lshr i32 %i.bwx, 5
  %i.bxi = sub nsw i32 %i.bwx, %i.bxh
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.sink.i = phi i32 [ %i.bwz, %bb.hl ], [ %i.bxg, %bb.hm ] ; 3 uses
  %.0.i283 = phi i32 [ %i.bxc, %bb.hl ], [ %i.bxi, %bb.hm ]
  store i32 %.sink.i, ptr %i.fe, align 8, !tbaa !76
  %i.bxj = trunc i32 %.0.i283 to i16
  store i16 %i.bxj, ptr %i.bwv, align 2, !tbaa !23
  %i.bxk = icmp ult i32 %.sink.i, 16777216
  br i1 %i.bxk, label %bb.ho, label %RangeEnc_EncodeBit.exit284

bb.ho:                                            ; preds = %bb.hn
  %i.bxl = shl nuw i32 %.sink.i, 8
  store i32 %i.bxl, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit284

bb.hp:                                            ; preds = %RangeEnc_EncodeBit.exit280
  %i.bxm = zext nneg i32 %.0352 to i64
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.bxm
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !4
  %i.bxp = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.bxq = zext i32 %i.bxp to i64
  %i.bxr = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.bxq ; 2 uses
  %i.bxs = load i16, ptr %i.bxr, align 2, !tbaa !23 ; 3 uses
  %i.bxt = zext i16 %i.bxs to i32
  %i.bxu = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bxv = lshr i32 %i.bxu, 11
  %i.bxw = mul i32 %i.bxv, %i.bxt                 ; 2 uses
  %i.bxx = zext i32 %i.bxw to i64
  %i.bxy = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.bxz = add i64 %i.bxy, %i.bxx
  store i64 %i.bxz, ptr %i.ff, align 8, !tbaa !75
  %i.bya = sub i32 %i.bxu, %i.bxw                 ; 3 uses
  %i.byb = lshr i16 %i.bxs, 5
  %i.byc = sub i16 %i.bxs, %i.byb
  store i32 %i.bya, ptr %i.fe, align 8, !tbaa !76
  store i16 %i.byc, ptr %i.bxr, align 2, !tbaa !23
  %i.byd = icmp ult i32 %i.bya, 16777216
  br i1 %i.byd, label %bb.hq, label %RangeEnc_EncodeBit.exit287

bb.hq:                                            ; preds = %bb.hp
  %i.bye = shl nuw i32 %i.bya, 8
  store i32 %i.bye, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit287

RangeEnc_EncodeBit.exit287:                       ; preds = %bb.hp, %bb.hq
  %i.byf = icmp eq i32 %.0352, 1
  %i.byg = load i32, ptr %i.ed, align 8, !tbaa !25
  %i.byh = zext i32 %i.byg to i64                 ; 2 uses
  %i.byi = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.byh ; 3 uses
  %i.byj = load i16, ptr %i.byi, align 2, !tbaa !23 ; 4 uses
  %i.byk = zext i16 %i.byj to i32                 ; 2 uses
  %i.byl = load i32, ptr %i.fe, align 8, !tbaa !76 ; 2 uses
  %i.bym = lshr i32 %i.byl, 11
  %i.byn = mul i32 %i.bym, %i.byk                 ; 5 uses
  br i1 %i.byf, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %RangeEnc_EncodeBit.exit287
  %i.byo = sub nsw i32 2048, %i.byk
  %i.byp = lshr i32 %i.byo, 5
  store i32 %i.byn, ptr %i.fe, align 8, !tbaa !76
  %i.byq = trunc i32 %i.byp to i16
  %i.byr = add i16 %i.byj, %i.byq
  store i16 %i.byr, ptr %i.byi, align 2, !tbaa !23
  %i.bys = icmp ult i32 %i.byn, 16777216
  br i1 %i.bys, label %bb.hs, label %RangeEnc_EncodeBit.exit290

bb.hs:                                            ; preds = %bb.hr
  %i.byt = shl nuw i32 %i.byn, 8
  store i32 %i.byt, ptr %i.fe, align 8, !tbaa !76
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.fe)
  br label %RangeEnc_EncodeBit.exit290

bb.ht:                                            ; preds = %RangeEnc_EncodeBit.exit287
  %i.byu = zext i32 %i.byn to i64
  %i.byv = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.byw = add i64 %i.byv, %i.byu
  store i64 %i.byw, ptr %i.ff, align 8, !tbaa !75
  %i.byx = sub i32 %i.byl, %i.byn                 ; 3 uses
  %i.byy = lshr i16 %i.byj, 5
  %i.byz = sub i16 %i.byj, %i.byy
  store i16 %i.byz, ptr %i.byi, align 2, !tbaa !23
  %i.bza = icmp ult i32 %i.byx, 16777216
  br i1 %i.bza, label %bb.hu, label %RangeEnc_EncodeBit.exit293
end_hunk_1

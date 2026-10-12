Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a

._crit_edge.i:                                    ; preds = %bb.ai, %.lr.ph757
  %i.fe = load i32, ptr %i.cc, align 8, !tbaa !76 ; 5 uses
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.cc, align 8, !tbaa !76
  %i.fg = mul nsw i32 %i.fe, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.fh ; 3 uses
  store i16 %i.ee, ptr %i.fi, align 2, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 %i.eh, ptr %i.fj, align 2, !tbaa !77
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i16 %i.ek, ptr %i.fk, align 2, !tbaa !77
  %i.fl = load i32, ptr %i.eo, align 4, !tbaa !76
  %i.fm = sext i32 %i.fe to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !76
  store i32 %i.fe, ptr %i.eo, align 4, !tbaa !76
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.ah, %._crit_edge.i
  %.2.in.i = phi i32 [ %i.fe, %._crit_edge.i ], [ %.03644.i, %bb.ah ]
  %i.fo = and i32 %.2.in.i, 65535                 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv969
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !76
  %i.fs = and i32 %i.fr, 65536
  %.not396 = icmp eq i32 %i.fs, 0
  br i1 %.not396, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZL9addVertextttPtPiS0_Ri.exit
  %i.ft = zext nneg i32 %i.fo to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ft
  store i8 1, ptr %i.fu, align 1, !tbaa !78
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZL9addVertextttPtPiS0_Ri.exit
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 2 uses
  %i.fv = load i32, ptr %i.dm, align 8, !tbaa !112
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next970, %i.fw
  br i1 %i.fx, label %.lr.ph757, label %._crit_edge758

._crit_edge763:                                   ; preds = %bb.an
  %.not389 = icmp eq i32 %.1335, 0
  br i1 %.not389, label %.loopexit601, label %bb.ao

.lr.ph762:                                        ; preds = %.lr.ph762.preheader, %bb.an
  %indvars.iv972 = phi i64 [ 0, %.lr.ph762.preheader ], [ %indvars.iv.next973, %bb.an ] ; 2 uses
  %.0334759 = phi i32 [ 0, %.lr.ph762.preheader ], [ %.1335, %bb.an ] ; 4 uses
  %.idx1111 = mul nuw nsw i64 %indvars.iv972, 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx1111 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !76 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !76 ; 3 uses
  %.not393 = icmp eq i32 %i.fz, %i.gb
  br i1 %.not393, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.lr.ph762
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !76 ; 3 uses
  %.not394 = icmp eq i32 %i.fz, %i.gd
  %.not395 = icmp eq i32 %i.gb, %i.gd
  %or.cond = or i1 %.not394, %.not395
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = sext i32 %i.fz to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !76
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = mul nsw i32 %.0334759, %2
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.gj ; 3 uses
  store i16 %i.gh, ptr %i.gk, align 2, !tbaa !77
  %i.gl = sext i32 %i.gb to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !76
  %i.go = trunc i32 %i.gn to i16
  %i.gp = getelementptr i8, ptr %i.gk, i64 2
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !77
  %i.gq = sext i32 %i.gd to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !76
  %i.gt = trunc i32 %i.gs to i16
  %i.gu = getelementptr i8, ptr %i.gk, i64 4
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !77
  %i.gv = add nsw i32 %.0334759, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.lr.ph762
  %.1335 = phi i32 [ %i.gv, %bb.am ], [ %.0334759, %.lr.ph762 ], [ %.0334759, %bb.al ] ; 6 uses
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %exitcond976.not = icmp eq i64 %indvars.iv.next973, %wide.trip.count975
  br i1 %exitcond976.not, label %._crit_edge763, label %.lr.ph762

bb.ao:                                            ; preds = %._crit_edge763
  %i.gw = icmp sgt i32 %.1335, 1
  %or.cond1957 = select i1 %i.dd, i1 %i.gw, i1 false
  br i1 %or.cond1957, label %.lr.ph783.preheader.preheader, label %.thread

.lr.ph783.preheader.preheader:                    ; preds = %bb.ao
  %i.gx = zext nneg i32 %.1335 to i64
  br label %.lr.ph783.preheader

.lr.ph783.preheader:                              ; preds = %.lr.ph783.preheader.preheader, %.preheader602
  %indvars.iv9871410.in = phi i32 [ %indvars.iv9871410, %.preheader602 ], [ %.1335, %.lr.ph783.preheader.preheader ]
  %indvars.iv9911409 = phi i64 [ %indvars.iv.next9921411, %.preheader602 ], [ %i.gx, %.lr.ph783.preheader.preheader ] ; 4 uses
  %indvars.iv9871410 = add i32 %indvars.iv9871410.in, -1 ; 2 uses
  %indvars.iv.next9921411 = add nsw i64 %indvars.iv9911409, -1 ; 4 uses
  %wide.trip.count989 = zext i32 %indvars.iv9871410 to i64
  %i.gy = load ptr, ptr %3, align 8, !tbaa !68    ; 7 uses
  %wide.trip.count982 = and i64 %indvars.iv9911409, 4294967295
  br label %.lr.ph.preheader.i.i.lr.ph

.loopexit600:                                     ; preds = %bb.ax
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1
  %exitcond990.not = icmp eq i64 %indvars.iv.next985, %wide.trip.count989
  br i1 %exitcond990.not, label %._crit_edge784, label %.lr.ph.preheader.i.i.lr.ph

._crit_edge784:                                   ; preds = %.loopexit600
  %i.gz = icmp sgt i32 %.2332, 0
  %i.ha = add nsw i32 %.2323, 1                   ; 3 uses
  %i.hb = add nsw i32 %.2, 1                      ; 3 uses
  br i1 %i.gz, label %.lr.ph.preheader.i.i412, label %.thread.loopexit.loopexit

.lr.ph.preheader.i.i.lr.ph:                       ; preds = %.loopexit600, %.lr.ph783.preheader
  %indvars.iv984 = phi i64 [ 0, %.lr.ph783.preheader ], [ %indvars.iv.next985, %.loopexit600 ] ; 3 uses
  %indvars.iv977 = phi i64 [ 1, %.lr.ph783.preheader ], [ %indvars.iv.next978, %.loopexit600 ] ; 2 uses
  %.0319780 = phi i32 [ 0, %.lr.ph783.preheader ], [ %.2, %.loopexit600 ]
  %.0321779 = phi i32 [ 0, %.lr.ph783.preheader ], [ %.2323, %.loopexit600 ]
  %.0324778 = phi i32 [ 0, %.lr.ph783.preheader ], [ %.2326, %.loopexit600 ]
  %.0327777 = phi i32 [ 0, %.lr.ph783.preheader ], [ %.2329, %.loopexit600 ]
  %.0330776 = phi i32 [ 0, %.lr.ph783.preheader ], [ %.2332, %.loopexit600 ]
  %i.hc = mul nuw nsw i64 %indvars.iv984, %wide.trip.count.i.i
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.hc ; 7 uses
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1 ; 2 uses
  %i.he = trunc nuw nsw i64 %indvars.iv984 to i32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.lr.ph, %bb.ax
  %indvars.iv979 = phi i64 [ %indvars.iv977, %.lr.ph.preheader.i.i.lr.ph ], [ %indvars.iv.next980, %bb.ax ] ; 3 uses
  %.1320769 = phi i32 [ %.0319780, %.lr.ph.preheader.i.i.lr.ph ], [ %.2, %bb.ax ]
  %.1322768 = phi i32 [ %.0321779, %.lr.ph.preheader.i.i.lr.ph ], [ %.2323, %bb.ax ]
  %.1325767 = phi i32 [ %.0324778, %.lr.ph.preheader.i.i.lr.ph ], [ %.2326, %bb.ax ]
  %.1328766 = phi i32 [ %.0327777, %.lr.ph.preheader.i.i.lr.ph ], [ %.2329, %bb.ax ]
  %.1331765 = phi i32 [ %.0330776, %.lr.ph.preheader.i.i.lr.ph ], [ %.2332, %bb.ax ] ; 2 uses
  %i.hf = mul nuw nsw i64 %indvars.iv979, %wide.trip.count.i.i
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.hf ; 6 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ap ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !77
  %i.hj = icmp eq i16 %i.hi, -1
  br i1 %i.hj, label %._crit_edge.loopexit.split.loop.exit15.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i92.i, label %.lr.ph.i.i

._crit_edge.loopexit.split.loop.exit15.i.i:       ; preds = %.lr.ph.i.i
  %i.hk = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.lr.ph.preheader.i92.i

.lr.ph.preheader.i92.i:                           ; preds = %bb.ap, %._crit_edge.loopexit.split.loop.exit15.i.i
  %i.hl = phi i32 [ %i.hk, %._crit_edge.loopexit.split.loop.exit15.i.i ], [ %2, %bb.ap ] ; 7 uses
  br label %.lr.ph.i94.i

.lr.ph.i94.i:                                     ; preds = %bb.aq, %.lr.ph.preheader.i92.i
  %indvars.iv.i95.i = phi i64 [ 0, %.lr.ph.preheader.i92.i ], [ %indvars.iv.next.i96.i, %bb.aq ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %indvars.iv.i95.i
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !77
  %i.ho = icmp eq i16 %i.hn, -1
  br i1 %i.ho, label %._crit_edge.loopexit.split.loop.exit15.i98.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i94.i
  %indvars.iv.next.i96.i = add nuw nsw i64 %indvars.iv.i95.i, 1 ; 2 uses
  %exitcond.not.i97.i = icmp eq i64 %indvars.iv.next.i96.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i97.i, label %_ZL14countPolyVertsPKti.exit99.i, label %.lr.ph.i94.i

._crit_edge.loopexit.split.loop.exit15.i98.i:     ; preds = %.lr.ph.i94.i
  %i.hp = trunc nuw nsw i64 %indvars.iv.i95.i to i32
  br label %_ZL14countPolyVertsPKti.exit99.i

_ZL14countPolyVertsPKti.exit99.i:                 ; preds = %bb.aq, %._crit_edge.loopexit.split.loop.exit15.i98.i
  %i.hq = phi i32 [ %i.hp, %._crit_edge.loopexit.split.loop.exit15.i98.i ], [ %2, %bb.aq ] ; 7 uses
  %i.hr = add i32 %i.hl, -2
  %i.hs = add i32 %i.hr, %i.hq
  %i.ht = icmp sgt i32 %i.hs, %2
  br i1 %i.ht, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZL14countPolyVertsPKti.exit99.i
  %i.hu = icmp sgt i32 %i.hl, 0
  br i1 %i.hu, label %.lr.ph.preheader.i, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.ar
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 0)
  %i.hv = zext nneg i32 %i.hl to i64
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %exitcond.not.i1404 = icmp slt i32 %i.hq, 1
  br label %.lr.ph.i408

._crit_edge.i410:                                 ; preds = %.loopexit.i
  %i.hw = icmp eq i32 %.1564, -1
  %i.hx = icmp eq i32 %i.ip, -1
  %or.cond139.i = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond139.i, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit, label %bb.at

.lr.ph.i408:                                      ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %.0563 = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.1564, %.loopexit.i ] ; 2 uses
  %.0560 = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.1561, %.loopexit.i ] ; 2 uses
  %i.hy = phi i32 [ -1, %.lr.ph.preheader.i ], [ %i.ip, %.loopexit.i ] ; 2 uses
  %indvars.iv127.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next128.i, %.loopexit.i ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %indvars.iv127.i
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !77 ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 3 uses
  %.not.i409 = icmp eq i64 %indvars.iv.next128.i, %i.hv ; 2 uses
  %i.ib = select i1 %.not.i409, i64 0, i64 %indvars.iv.next128.i
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !77 ; 2 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.ia, i16 %i.id)
  %spec.select114.i = tail call i16 @llvm.umax.i16(i16 %i.ia, i16 %i.id)
  br i1 %exitcond.not.i1404, label %.loopexit.i, label %.lr.ph1406

bb.as:                                            ; preds = %.lr.ph1406
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph1406

.lr.ph1406:                                       ; preds = %.lr.ph.i408, %bb.as
  %indvars.iv.i1405 = phi i64 [ %indvars.iv.next.i, %bb.as ], [ 0, %.lr.ph.i408 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %indvars.iv.i1405
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !77 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i1405, 1 ; 3 uses
  %i.ig = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ih = srem i32 %i.ig, %i.hq
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !77 ; 2 uses
  %spec.select115.i = tail call i16 @llvm.umin.i16(i16 %i.if, i16 %i.ik)
  %spec.select116.i = tail call i16 @llvm.umax.i16(i16 %i.if, i16 %i.ik)
  %i.il = icmp eq i16 %spec.select.i, %spec.select115.i
  %i.im = icmp eq i16 %spec.select114.i, %spec.select116.i
  %or.cond.i = and i1 %i.il, %i.im
  br i1 %or.cond.i, label %.critedge.i, label %bb.as

.critedge.i:                                      ; preds = %.lr.ph1406
  %i.in = trunc nuw nsw i64 %indvars.iv.i1405 to i32 ; 2 uses
  %i.io = trunc nuw nsw i64 %indvars.iv127.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.as, %.lr.ph.i408, %.critedge.i
  %.1564 = phi i32 [ %i.io, %.critedge.i ], [ %.0563, %.lr.ph.i408 ], [ %.0563, %bb.as ] ; 10 uses
  %.1561 = phi i32 [ %i.in, %.critedge.i ], [ %.0560, %.lr.ph.i408 ], [ %.0560, %bb.as ] ; 5 uses
  %i.ip = phi i32 [ %i.in, %.critedge.i ], [ %i.hy, %.lr.ph.i408 ], [ %i.hy, %bb.as ] ; 5 uses
  br i1 %.not.i409, label %._crit_edge.i410, label %.lr.ph.i408

bb.at:                                            ; preds = %._crit_edge.i410
  %i.iq = add nsw i32 %i.hl, -1
  %i.ir = add i32 %i.iq, %.1564
  %i.is = srem i32 %i.ir, %i.hl
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !77
  %i.iw = sext i32 %.1564 to i64
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !77
  %i.iz = add nsw i32 %i.ip, 2
  %i.ja = srem i32 %i.iz, %i.hq
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !77
  %i.je = zext i16 %i.iv to i64
  %.idx.i = mul nuw nsw i64 %i.je, 6
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx.i ; 2 uses
  %i.jg = zext i16 %i.iy to i64
  %.idx87.i = mul nuw nsw i64 %i.jg, 6
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx87.i ; 2 uses
  %i.ji = zext i16 %i.jd to i64
  %.idx88.i = mul nuw nsw i64 %i.ji, 6
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx88.i ; 2 uses
  %i.jk = load i16, ptr %i.jh, align 2, !tbaa !77
  %i.jl = zext i16 %i.jk to i32                   ; 2 uses
  %i.jm = load i16, ptr %i.jf, align 2, !tbaa !77
  %i.jn = zext i16 %i.jm to i32                   ; 2 uses
  %i.jo = sub nsw i32 %i.jl, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !77
  %i.jr = zext i16 %i.jq to i32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !77
  %i.ju = zext i16 %i.jt to i32                   ; 2 uses
  %i.jv = sub nsw i32 %i.jr, %i.ju
  %i.jw = mul nsw i32 %i.jv, %i.jo
  %i.jx = load i16, ptr %i.jj, align 2, !tbaa !77
  %i.jy = zext i16 %i.jx to i32
  %i.jz = sub nsw i32 %i.jy, %i.jn
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !77
  %i.kc = zext i16 %i.kb to i32                   ; 2 uses
  %.neg.i.i = sub nsw i32 %i.ju, %i.kc
  %.neg8.i.i = mul i32 %.neg.i.i, %i.jz
  %i.kd = add i32 %.neg8.i.i, %i.jw
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.au, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit

bb.au:                                            ; preds = %bb.at
  %i.kf = add i32 %i.hq, -1
  %i.kg = add i32 %i.kf, %i.ip
  %i.kh = srem i32 %i.kg, %i.hq
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !77
  %i.kl = sext i32 %i.ip to i64
  %i.km = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !77
  %i.ko = add nsw i32 %.1564, 2
  %i.kp = srem i32 %i.ko, %i.hl
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !77
  %i.kt = zext i16 %i.kk to i64
  %.idx89.i = mul nuw nsw i64 %i.kt, 6
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx89.i ; 2 uses
  %i.kv = zext i16 %i.kn to i64
  %.idx90.i = mul nuw nsw i64 %i.kv, 6
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx90.i ; 2 uses
  %i.kx = zext i16 %i.ks to i64
  %.idx91.i = mul nuw nsw i64 %i.kx, 6
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx91.i ; 2 uses
  %i.kz = load i16, ptr %i.kw, align 2, !tbaa !77
  %i.la = zext i16 %i.kz to i32
  %i.lb = load i16, ptr %i.ku, align 2, !tbaa !77
  %i.lc = zext i16 %i.lb to i32                   ; 2 uses
  %i.ld = sub nsw i32 %i.la, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !77
  %i.lg = zext i16 %i.lf to i32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !77
  %i.lj = zext i16 %i.li to i32                   ; 2 uses
  %i.lk = sub nsw i32 %i.lg, %i.lj
  %i.ll = mul nsw i32 %i.lk, %i.ld
  %i.lm = load i16, ptr %i.ky, align 2, !tbaa !77
  %i.ln = zext i16 %i.lm to i32
  %i.lo = sub nsw i32 %i.ln, %i.lc
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !77
  %i.lr = zext i16 %i.lq to i32
  %.neg.i100.i = sub nsw i32 %i.lj, %i.lr
  %.neg8.i101.i = mul i32 %.neg.i100.i, %i.lo
  %i.ls = add i32 %.neg8.i101.i, %i.ll
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %bb.av, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit

bb.av:                                            ; preds = %bb.au
  %i.lu = add nuw nsw i32 %.1564, 1
  %i.lv = srem i32 %i.lu, %i.hl
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !77
  %i.lz = zext i16 %i.ly to i64
  %.idx118.i = mul nuw nsw i64 %i.lz, 6
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx118.i ; 2 uses
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !77
  %i.mc = zext i16 %i.mb to i32
  %i.md = sub nsw i32 %i.jl, %i.mc                ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !77
  %i.mg = zext i16 %i.mf to i32
  %i.mh = sub nsw i32 %i.kc, %i.mg                ; 2 uses
  %i.mi = mul nsw i32 %i.md, %i.md
  %i.mj = mul nsw i32 %i.mh, %i.mh
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  br label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit

_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit:         ; preds = %_ZL14countPolyVertsPKti.exit99.i, %bb.ar, %._crit_edge.i410, %bb.at, %bb.au, %bb.av
  %.2565 = phi i32 [ undef, %_ZL14countPolyVertsPKti.exit99.i ], [ %.1564, %._crit_edge.i410 ], [ %.1564, %bb.av ], [ %.1564, %bb.au ], [ %.1564, %bb.at ], [ -1, %bb.ar ]
  %.2562 = phi i32 [ undef, %_ZL14countPolyVertsPKti.exit99.i ], [ %.1561, %._crit_edge.i410 ], [ %.1561, %bb.av ], [ %.1561, %bb.au ], [ %.1561, %bb.at ], [ -1, %bb.ar ]
  %.1.i = phi i32 [ -1, %_ZL14countPolyVertsPKti.exit99.i ], [ -1, %._crit_edge.i410 ], [ %i.mk, %bb.av ], [ -1, %bb.au ], [ -1, %bb.at ], [ -1, %bb.ar ] ; 2 uses
  %i.ml = icmp sgt i32 %.1.i, %.1331765
  br i1 %i.ml, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit
  %i.mm = trunc nuw nsw i64 %indvars.iv979 to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit
  %.2332 = phi i32 [ %.1.i, %bb.aw ], [ %.1331765, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit ] ; 3 uses
  %.2329 = phi i32 [ %i.he, %bb.aw ], [ %.1328766, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit ] ; 3 uses
  %.2326 = phi i32 [ %i.mm, %bb.aw ], [ %.1325767, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit ] ; 4 uses
  %.2323 = phi i32 [ %.2565, %bb.aw ], [ %.1322768, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit ] ; 3 uses
  %.2 = phi i32 [ %.2562, %bb.aw ], [ %.1320769, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit ] ; 3 uses
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 1 ; 2 uses
  %exitcond983.not = icmp eq i64 %indvars.iv.next980, %wide.trip.count982
  br i1 %exitcond983.not, label %.loopexit600, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i412:                          ; preds = %._crit_edge784
  %i.mn = mul nsw i32 %.2329, %2
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.mo ; 5 uses
end_hunk_0
begin_hunk_1_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a

bb.cv:                                            ; preds = %bb.cu
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.45, i32 noundef %.0335.i) #8
  br label %.critedge592

bb.cw:                                            ; preds = %bb.cu
  %i.amu = mul nsw i32 %.0335.i, %i.ws
  %i.amv = sext i32 %i.amu to i64                 ; 2 uses
  %i.amw = getelementptr inbounds [2 x i8], ptr %i.amn, i64 %i.amv ; 8 uses
  %i.amx = shl nsw i64 %i.amv, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.amn, i8 -1, i64 %i.amx, i1 false)
  %.not695.i = icmp eq i32 %.0335.i, 0
  br i1 %.not695.i, label %.loopexit.i447, label %.lr.ph656.i

._crit_edge657.i:                                 ; preds = %bb.db
  %.not403.i = icmp eq i32 %.1333.i, 0
  br i1 %.not403.i, label %.loopexit.i447, label %bb.dc

.lr.ph656.i:                                      ; preds = %bb.cw, %bb.db
  %indvars.iv742.i = phi i64 [ %indvars.iv.next743.i, %bb.db ], [ 0, %bb.cw ] ; 2 uses
  %.0332652.i = phi i32 [ %.1333.i, %bb.db ], [ 0, %bb.cw ] ; 5 uses
  %.idx823.i = mul nuw nsw i64 %indvars.iv742.i, 12
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ali, i64 %.idx823.i ; 3 uses
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !76 ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !76 ; 3 uses
  %.not408.i = icmp eq i32 %i.amz, %i.anb
  br i1 %.not408.i, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph656.i
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !76 ; 3 uses
  %.not409.i = icmp eq i32 %i.amz, %i.and
  %.not410.i = icmp eq i32 %i.anb, %i.and
  %or.cond.i445 = or i1 %.not409.i, %.not410.i
  br i1 %or.cond.i445, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ane = sext i32 %i.amz to i64                 ; 3 uses
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.ane
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !76
  %i.anh = trunc i32 %i.ang to i16
  %i.ani = mul nsw i32 %.0332652.i, %i.ws
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [2 x i8], ptr %i.amn, i64 %i.anj ; 3 uses
  store i16 %i.anh, ptr %i.ank, align 2, !tbaa !77
  %i.anl = sext i32 %i.anb to i64                 ; 2 uses
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.anl
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !76
  %i.ano = trunc i32 %i.ann to i16
  %i.anp = getelementptr i8, ptr %i.ank, i64 2
  store i16 %i.ano, ptr %i.anp, align 2, !tbaa !77
  %i.anq = sext i32 %i.and to i64                 ; 2 uses
  %i.anr = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.anq
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !76
  %i.ant = trunc i32 %i.ans to i16
  %i.anu = getelementptr i8, ptr %i.ank, i64 4
  store i16 %i.ant, ptr %i.anu, align 2, !tbaa !77
  %i.anv = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.ane
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !76 ; 3 uses
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.anl
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !76
  %.not411.i = icmp eq i32 %i.anw, %i.any
  br i1 %.not411.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.anz = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.anq
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !76
  %.not412.i = icmp eq i32 %i.anw, %i.aoa
  %i.aob = trunc i32 %i.anw to i16
  %spec.select845.i = select i1 %.not412.i, i16 %i.aob, i16 0
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sink.i = phi i16 [ 0, %bb.cy ], [ %spec.select845.i, %bb.cz ]
  %i.aoc = sext i32 %.0332652.i to i64            ; 2 uses
  %i.aod = getelementptr inbounds [2 x i8], ptr %i.ams, i64 %i.aoc
  store i16 %.sink.i, ptr %i.aod, align 2, !tbaa !77
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.yj, i64 %i.ane
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !76
  %i.aog = trunc i32 %i.aof to i8
  %i.aoh = getelementptr inbounds i8, ptr %i.amt, i64 %i.aoc
  store i8 %i.aog, ptr %i.aoh, align 1, !tbaa !78
  %i.aoi = add nsw i32 %.0332652.i, 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cx, %.lr.ph656.i
  %.1333.i = phi i32 [ %i.aoi, %bb.da ], [ %.0332652.i, %.lr.ph656.i ], [ %.0332652.i, %bb.cx ] ; 6 uses
  %indvars.iv.next743.i = add nuw nsw i64 %indvars.iv742.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next743.i, %i.amq
  br i1 %exitcond746.not.i, label %._crit_edge657.i, label %.lr.ph656.i

bb.dc:                                            ; preds = %._crit_edge657.i
  %i.aoj = icmp sgt i32 %i.ws, 3
  br i1 %i.aoj, label %.preheader.i448, label %.thread.i446

.preheader.i448:                                  ; preds = %bb.dc
  %wide.trip.count.i.i.i = zext nneg i32 %i.ws to i64 ; 6 uses
  %i.aok = shl nuw i32 %i.ws, 1
  %i.aol = zext i32 %i.aok to i64                 ; 2 uses
  %i.aom = shl nuw nsw i64 %i.xa, 1
  %i.aon = icmp sgt i32 %.1333.i, 1
  br i1 %i.aon, label %.lr.ph679.preheader.i.preheader, label %.thread.i446

.lr.ph679.preheader.i.preheader:                  ; preds = %.preheader.i448
  %i.aoo = zext nneg i32 %.1333.i to i64
  br label %.lr.ph679.preheader.i

.lr.ph679.preheader.i:                            ; preds = %.lr.ph679.preheader.i.preheader, %bb.du
  %indvars.iv761.i804 = phi i64 [ %indvars.iv.next762.i806, %bb.du ], [ %i.aoo, %.lr.ph679.preheader.i.preheader ] ; 4 uses
  %indvars.iv.next762.i806 = add nsw i64 %indvars.iv761.i804, -1 ; 5 uses
  %wide.trip.count759.i = and i64 %indvars.iv.next762.i806, 4294967295
  %i.aop = load ptr, ptr %3, align 8, !tbaa !68   ; 7 uses
  %wide.trip.count752.i = and i64 %indvars.iv761.i804, 4294967295
  br label %.lr.ph666.i

.loopexit581.i:                                   ; preds = %bb.dm
  %indvars.iv.next755.i = add nuw nsw i64 %indvars.iv754.i, 1 ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1
  %exitcond760.not.i = icmp eq i64 %indvars.iv.next755.i, %wide.trip.count759.i
  br i1 %exitcond760.not.i, label %._crit_edge680.i, label %.lr.ph666.i

._crit_edge680.i:                                 ; preds = %.loopexit581.i
  %i.aoq = icmp sgt i32 %.2330.i, 0
  %i.aor = add nsw i32 %.2321.i, 1                ; 3 uses
  %i.aos = add nsw i32 %.2.i449, 1                ; 3 uses
  br i1 %i.aoq, label %.lr.ph.preheader.i.i.i, label %.thread.loopexit.i.loopexit

.lr.ph666.i:                                      ; preds = %.loopexit581.i, %.lr.ph679.preheader.i
  %indvars.iv754.i = phi i64 [ 0, %.lr.ph679.preheader.i ], [ %indvars.iv.next755.i, %.loopexit581.i ] ; 3 uses
  %indvars.iv747.i = phi i64 [ 1, %.lr.ph679.preheader.i ], [ %indvars.iv.next748.i, %.loopexit581.i ] ; 2 uses
  %.0318676.i = phi i32 [ 0, %.lr.ph679.preheader.i ], [ %.2.i449, %.loopexit581.i ]
  %.0319675.i = phi i32 [ 0, %.lr.ph679.preheader.i ], [ %.2321.i, %.loopexit581.i ]
  %.0322674.i = phi i32 [ 0, %.lr.ph679.preheader.i ], [ %.2324.i, %.loopexit581.i ]
  %.0325673.i = phi i32 [ 0, %.lr.ph679.preheader.i ], [ %.2327.i, %.loopexit581.i ]
  %.0328672.i = phi i32 [ 0, %.lr.ph679.preheader.i ], [ %.2330.i, %.loopexit581.i ]
  %i.aot = mul nuw nsw i64 %indvars.iv754.i, %wide.trip.count.i.i.i
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.amn, i64 %i.aot ; 7 uses
  %i.aov = trunc nuw nsw i64 %indvars.iv754.i to i32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dm, %.lr.ph666.i
  %indvars.iv749.i = phi i64 [ %indvars.iv747.i, %.lr.ph666.i ], [ %indvars.iv.next750.i, %bb.dm ] ; 3 uses
  %.1663.i = phi i32 [ %.0318676.i, %.lr.ph666.i ], [ %.2.i449, %bb.dm ]
  %.1320662.i = phi i32 [ %.0319675.i, %.lr.ph666.i ], [ %.2321.i, %bb.dm ]
  %.1323661.i = phi i32 [ %.0322674.i, %.lr.ph666.i ], [ %.2324.i, %bb.dm ]
  %.1326660.i = phi i32 [ %.0325673.i, %.lr.ph666.i ], [ %.2327.i, %bb.dm ]
  %.1329659.i = phi i32 [ %.0328672.i, %.lr.ph666.i ], [ %.2330.i, %bb.dm ] ; 2 uses
  %i.aow = mul nuw nsw i64 %indvars.iv749.i, %wide.trip.count.i.i.i
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.amn, i64 %i.aow ; 6 uses
  br label %.lr.ph.i.i502

.lr.ph.i.i502:                                    ; preds = %bb.dd, %bb.de
  %indvars.iv.i.i503 = phi i64 [ %indvars.iv.next.i.i504, %bb.de ], [ 0, %bb.dd ] ; 3 uses
  %i.aoy = getelementptr inbounds nuw [2 x i8], ptr %i.aou, i64 %indvars.iv.i.i503
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !77
  %i.apa = icmp eq i16 %i.aoz, -1
  br i1 %i.apa, label %._crit_edge.loopexit.split.loop.exit15.i.i512, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i502
  %indvars.iv.next.i.i504 = add nuw nsw i64 %indvars.iv.i.i503, 1 ; 2 uses
  %exitcond.not.i.i505 = icmp eq i64 %indvars.iv.next.i.i504, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i505, label %.lr.ph.preheader.i92.i506, label %.lr.ph.i.i502

._crit_edge.loopexit.split.loop.exit15.i.i512:    ; preds = %.lr.ph.i.i502
  %i.apb = trunc nuw nsw i64 %indvars.iv.i.i503 to i32
  br label %.lr.ph.preheader.i92.i506

.lr.ph.preheader.i92.i506:                        ; preds = %bb.de, %._crit_edge.loopexit.split.loop.exit15.i.i512
  %i.apc = phi i32 [ %i.apb, %._crit_edge.loopexit.split.loop.exit15.i.i512 ], [ %i.ws, %bb.de ] ; 7 uses
  br label %.lr.ph.i94.i507

.lr.ph.i94.i507:                                  ; preds = %bb.df, %.lr.ph.preheader.i92.i506
  %indvars.iv.i95.i508 = phi i64 [ 0, %.lr.ph.preheader.i92.i506 ], [ %indvars.iv.next.i96.i509, %bb.df ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.aox, i64 %indvars.iv.i95.i508
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !77
  %i.apf = icmp eq i16 %i.ape, -1
  br i1 %i.apf, label %._crit_edge.loopexit.split.loop.exit15.i98.i511, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i94.i507
  %indvars.iv.next.i96.i509 = add nuw nsw i64 %indvars.iv.i95.i508, 1 ; 2 uses
  %exitcond.not.i97.i510 = icmp eq i64 %indvars.iv.next.i96.i509, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i97.i510, label %_ZL14countPolyVertsPKti.exit99.i467, label %.lr.ph.i94.i507

._crit_edge.loopexit.split.loop.exit15.i98.i511:  ; preds = %.lr.ph.i94.i507
  %i.apg = trunc nuw nsw i64 %indvars.iv.i95.i508 to i32
  br label %_ZL14countPolyVertsPKti.exit99.i467

_ZL14countPolyVertsPKti.exit99.i467:              ; preds = %bb.df, %._crit_edge.loopexit.split.loop.exit15.i98.i511
  %i.aph = phi i32 [ %i.apg, %._crit_edge.loopexit.split.loop.exit15.i98.i511 ], [ %i.ws, %bb.df ] ; 7 uses
  %i.api = add i32 %i.apc, -2
  %i.apj = add i32 %i.api, %i.aph
  %i.apk = icmp sgt i32 %i.apj, %i.ws
  br i1 %i.apk, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513, label %bb.dg

bb.dg:                                            ; preds = %_ZL14countPolyVertsPKti.exit99.i467
  %i.apl = icmp sgt i32 %i.apc, 0
  br i1 %i.apl, label %.lr.ph.preheader.i470, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513

.lr.ph.preheader.i470:                            ; preds = %bb.dg
  %smax.i471 = tail call i32 @llvm.smax.i32(i32 %i.aph, i32 0)
  %i.apm = zext nneg i32 %i.apc to i64
  %wide.trip.count.i472 = zext nneg i32 %smax.i471 to i64
  %exitcond.not.i4801413 = icmp slt i32 %i.aph, 1
  br label %.lr.ph.i473

._crit_edge.i487:                                 ; preds = %.loopexit.i486
  %i.apn = icmp eq i32 %.1567, -1
  %i.apo = icmp eq i32 %i.aqg, -1
  %or.cond139.i488 = select i1 %i.apn, i1 true, i1 %i.apo
  br i1 %or.cond139.i488, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513, label %bb.di

.lr.ph.i473:                                      ; preds = %.loopexit.i486, %.lr.ph.preheader.i470
  %.0569 = phi i32 [ -1, %.lr.ph.preheader.i470 ], [ %.1570, %.loopexit.i486 ] ; 2 uses
  %.0566 = phi i32 [ -1, %.lr.ph.preheader.i470 ], [ %.1567, %.loopexit.i486 ] ; 2 uses
  %i.app = phi i32 [ -1, %.lr.ph.preheader.i470 ], [ %i.aqg, %.loopexit.i486 ] ; 2 uses
  %indvars.iv127.i474 = phi i64 [ 0, %.lr.ph.preheader.i470 ], [ %indvars.iv.next128.i475, %.loopexit.i486 ] ; 3 uses
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.aou, i64 %indvars.iv127.i474
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !77 ; 2 uses
  %indvars.iv.next128.i475 = add nuw nsw i64 %indvars.iv127.i474, 1 ; 3 uses
  %.not.i476 = icmp eq i64 %indvars.iv.next128.i475, %i.apm ; 2 uses
  %i.aps = select i1 %.not.i476, i64 0, i64 %indvars.iv.next128.i475
  %i.apt = getelementptr inbounds nuw [2 x i8], ptr %i.aou, i64 %i.aps
  %i.apu = load i16, ptr %i.apt, align 2, !tbaa !77 ; 2 uses
  %spec.select.i477 = tail call i16 @llvm.umin.i16(i16 %i.apr, i16 %i.apu)
  %spec.select114.i478 = tail call i16 @llvm.umax.i16(i16 %i.apr, i16 %i.apu)
  br i1 %exitcond.not.i4801413, label %.loopexit.i486, label %.lr.ph1415

bb.dh:                                            ; preds = %.lr.ph1415
  %exitcond.not.i480 = icmp eq i64 %indvars.iv.next.i481, %wide.trip.count.i472
  br i1 %exitcond.not.i480, label %.loopexit.i486, label %.lr.ph1415

.lr.ph1415:                                       ; preds = %.lr.ph.i473, %bb.dh
  %indvars.iv.i4791414 = phi i64 [ %indvars.iv.next.i481, %bb.dh ], [ 0, %.lr.ph.i473 ] ; 3 uses
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.aox, i64 %indvars.iv.i4791414
  %i.apw = load i16, ptr %i.apv, align 2, !tbaa !77 ; 2 uses
  %indvars.iv.next.i481 = add nuw nsw i64 %indvars.iv.i4791414, 1 ; 3 uses
  %i.apx = trunc nuw i64 %indvars.iv.next.i481 to i32
  %i.apy = srem i32 %i.apx, %i.aph
  %i.apz = zext nneg i32 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [2 x i8], ptr %i.aox, i64 %i.apz
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !77 ; 2 uses
  %spec.select115.i482 = tail call i16 @llvm.umin.i16(i16 %i.apw, i16 %i.aqb)
  %spec.select116.i483 = tail call i16 @llvm.umax.i16(i16 %i.apw, i16 %i.aqb)
  %i.aqc = icmp eq i16 %spec.select.i477, %spec.select115.i482
  %i.aqd = icmp eq i16 %spec.select114.i478, %spec.select116.i483
  %or.cond.i484 = and i1 %i.aqc, %i.aqd
  br i1 %or.cond.i484, label %.critedge.i485, label %bb.dh

.critedge.i485:                                   ; preds = %.lr.ph1415
  %i.aqe = trunc nuw nsw i64 %indvars.iv.i4791414 to i32 ; 2 uses
  %i.aqf = trunc nuw nsw i64 %indvars.iv127.i474 to i32
  br label %.loopexit.i486

.loopexit.i486:                                   ; preds = %bb.dh, %.lr.ph.i473, %.critedge.i485
  %.1570 = phi i32 [ %i.aqe, %.critedge.i485 ], [ %.0569, %.lr.ph.i473 ], [ %.0569, %bb.dh ] ; 5 uses
  %.1567 = phi i32 [ %i.aqf, %.critedge.i485 ], [ %.0566, %.lr.ph.i473 ], [ %.0566, %bb.dh ] ; 10 uses
  %i.aqg = phi i32 [ %i.aqe, %.critedge.i485 ], [ %i.app, %.lr.ph.i473 ], [ %i.app, %bb.dh ] ; 5 uses
  br i1 %.not.i476, label %._crit_edge.i487, label %.lr.ph.i473

bb.di:                                            ; preds = %._crit_edge.i487
  %i.aqh = add nsw i32 %i.apc, -1
  %i.aqi = add i32 %i.aqh, %.1567
  %i.aqj = srem i32 %i.aqi, %i.apc
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = getelementptr inbounds [2 x i8], ptr %i.aou, i64 %i.aqk
  %i.aqm = load i16, ptr %i.aql, align 2, !tbaa !77
  %i.aqn = sext i32 %.1567 to i64
  %i.aqo = getelementptr inbounds [2 x i8], ptr %i.aou, i64 %i.aqn
  %i.aqp = load i16, ptr %i.aqo, align 2, !tbaa !77
  %i.aqq = add nsw i32 %i.aqg, 2
  %i.aqr = srem i32 %i.aqq, %i.aph
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds [2 x i8], ptr %i.aox, i64 %i.aqs
  %i.aqu = load i16, ptr %i.aqt, align 2, !tbaa !77
  %i.aqv = zext i16 %i.aqm to i64
  %.idx.i489 = mul nuw nsw i64 %i.aqv, 6
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i489 ; 2 uses
  %i.aqx = zext i16 %i.aqp to i64
  %.idx87.i490 = mul nuw nsw i64 %i.aqx, 6
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx87.i490 ; 2 uses
  %i.aqz = zext i16 %i.aqu to i64
  %.idx88.i491 = mul nuw nsw i64 %i.aqz, 6
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx88.i491 ; 2 uses
  %i.arb = load i16, ptr %i.aqy, align 2, !tbaa !77
  %i.arc = zext i16 %i.arb to i32                 ; 2 uses
  %i.ard = load i16, ptr %i.aqw, align 2, !tbaa !77
  %i.are = zext i16 %i.ard to i32                 ; 2 uses
  %i.arf = sub nsw i32 %i.arc, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !77
  %i.ari = zext i16 %i.arh to i32
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqw, i64 4
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !77
  %i.arl = zext i16 %i.ark to i32                 ; 2 uses
  %i.arm = sub nsw i32 %i.ari, %i.arl
  %i.arn = mul nsw i32 %i.arm, %i.arf
  %i.aro = load i16, ptr %i.ara, align 2, !tbaa !77
  %i.arp = zext i16 %i.aro to i32
  %i.arq = sub nsw i32 %i.arp, %i.are
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  %i.ars = load i16, ptr %i.arr, align 2, !tbaa !77
  %i.art = zext i16 %i.ars to i32                 ; 2 uses
  %.neg.i.i492 = sub nsw i32 %i.arl, %i.art
  %.neg8.i.i493 = mul i32 %.neg.i.i492, %i.arq
  %i.aru = add i32 %.neg8.i.i493, %i.arn
  %i.arv = icmp slt i32 %i.aru, 0
  br i1 %i.arv, label %bb.dj, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513

bb.dj:                                            ; preds = %bb.di
  %i.arw = add i32 %i.aph, -1
  %i.arx = add i32 %i.arw, %i.aqg
  %i.ary = srem i32 %i.arx, %i.aph
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr inbounds [2 x i8], ptr %i.aox, i64 %i.arz
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !77
  %i.asc = sext i32 %i.aqg to i64
  %i.asd = getelementptr inbounds [2 x i8], ptr %i.aox, i64 %i.asc
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !77
  %i.asf = add nsw i32 %.1567, 2
  %i.asg = srem i32 %i.asf, %i.apc
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr inbounds [2 x i8], ptr %i.aou, i64 %i.ash
  %i.asj = load i16, ptr %i.asi, align 2, !tbaa !77
  %i.ask = zext i16 %i.asb to i64
  %.idx89.i494 = mul nuw nsw i64 %i.ask, 6
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx89.i494 ; 2 uses
  %i.asm = zext i16 %i.ase to i64
  %.idx90.i495 = mul nuw nsw i64 %i.asm, 6
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx90.i495 ; 2 uses
  %i.aso = zext i16 %i.asj to i64
  %.idx91.i496 = mul nuw nsw i64 %i.aso, 6
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx91.i496 ; 2 uses
  %i.asq = load i16, ptr %i.asn, align 2, !tbaa !77
  %i.asr = zext i16 %i.asq to i32
  %i.ass = load i16, ptr %i.asl, align 2, !tbaa !77
  %i.ast = zext i16 %i.ass to i32                 ; 2 uses
  %i.asu = sub nsw i32 %i.asr, %i.ast
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asp, i64 4
  %i.asw = load i16, ptr %i.asv, align 2, !tbaa !77
  %i.asx = zext i16 %i.asw to i32
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asl, i64 4
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !77
  %i.ata = zext i16 %i.asz to i32                 ; 2 uses
  %i.atb = sub nsw i32 %i.asx, %i.ata
  %i.atc = mul nsw i32 %i.atb, %i.asu
  %i.atd = load i16, ptr %i.asp, align 2, !tbaa !77
  %i.ate = zext i16 %i.atd to i32
  %i.atf = sub nsw i32 %i.ate, %i.ast
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !77
  %i.ati = zext i16 %i.ath to i32
  %.neg.i100.i497 = sub nsw i32 %i.ata, %i.ati
  %.neg8.i101.i498 = mul i32 %.neg.i100.i497, %i.atf
  %i.atj = add i32 %.neg8.i101.i498, %i.atc
  %i.atk = icmp slt i32 %i.atj, 0
  br i1 %i.atk, label %bb.dk, label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513

bb.dk:                                            ; preds = %bb.dj
  %i.atl = add nuw nsw i32 %.1567, 1
  %i.atm = srem i32 %i.atl, %i.apc
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds [2 x i8], ptr %i.aou, i64 %i.atn
  %i.atp = load i16, ptr %i.ato, align 2, !tbaa !77
  %i.atq = zext i16 %i.atp to i64
  %.idx118.i499 = mul nuw nsw i64 %i.atq, 6
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx118.i499 ; 2 uses
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !77
  %i.att = zext i16 %i.ats to i32
  %i.atu = sub nsw i32 %i.arc, %i.att             ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atr, i64 4
  %i.atw = load i16, ptr %i.atv, align 2, !tbaa !77
  %i.atx = zext i16 %i.atw to i32
  %i.aty = sub nsw i32 %i.art, %i.atx             ; 2 uses
  %i.atz = mul nsw i32 %i.atu, %i.atu
  %i.aua = mul nsw i32 %i.aty, %i.aty
  %i.aub = add nuw nsw i32 %i.aua, %i.atz
  br label %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513

_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513:      ; preds = %_ZL14countPolyVertsPKti.exit99.i467, %bb.dg, %._crit_edge.i487, %bb.di, %bb.dj, %bb.dk
  %.2571 = phi i32 [ undef, %_ZL14countPolyVertsPKti.exit99.i467 ], [ %.1570, %._crit_edge.i487 ], [ %.1570, %bb.dk ], [ %.1570, %bb.dj ], [ %.1570, %bb.di ], [ -1, %bb.dg ]
  %.2568 = phi i32 [ undef, %_ZL14countPolyVertsPKti.exit99.i467 ], [ %.1567, %._crit_edge.i487 ], [ %.1567, %bb.dk ], [ %.1567, %bb.dj ], [ %.1567, %bb.di ], [ -1, %bb.dg ]
  %.1.i469 = phi i32 [ -1, %_ZL14countPolyVertsPKti.exit99.i467 ], [ -1, %._crit_edge.i487 ], [ %i.aub, %bb.dk ], [ -1, %bb.dj ], [ -1, %bb.di ], [ -1, %bb.dg ] ; 2 uses
  %i.auc = icmp sgt i32 %.1.i469, %.1329659.i
  br i1 %i.auc, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513
  %i.aud = trunc nuw nsw i64 %indvars.iv749.i to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513
  %.2330.i = phi i32 [ %.1.i469, %bb.dl ], [ %.1329659.i, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513 ] ; 3 uses
  %.2327.i = phi i32 [ %i.aov, %bb.dl ], [ %.1326660.i, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513 ] ; 4 uses
  %.2324.i = phi i32 [ %i.aud, %bb.dl ], [ %.1323661.i, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513 ] ; 4 uses
  %.2321.i = phi i32 [ %.2568, %bb.dl ], [ %.1320662.i, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513 ] ; 3 uses
  %.2.i449 = phi i32 [ %.2571, %bb.dl ], [ %.1663.i, %_ZL17getPolyMergeValuePtS_PKtRiS2_i.exit513 ] ; 3 uses
  %indvars.iv.next750.i = add nuw nsw i64 %indvars.iv749.i, 1 ; 2 uses
  %exitcond753.not.i = icmp eq i64 %indvars.iv.next750.i, %wide.trip.count752.i
  br i1 %exitcond753.not.i, label %.loopexit581.i, label %bb.dd

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge680.i
  %i.aue = mul nsw i32 %.2327.i, %i.ws
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [2 x i8], ptr %i.amn, i64 %i.auf ; 5 uses
end_hunk_1
begin_hunk_2_@_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh:bb.a
  %i.bbe = zext i16 %i.bbd to i32
  %i.bbf = icmp eq i32 %i.azw, %i.bbe
  br i1 %i.bbf, label %._crit_edge1027.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.bbg = zext i16 %i.bau to i32
  %i.bbh = icmp eq i32 %i.azu, %i.bbg
  br i1 %i.bbh, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bbi = load i16, ptr %i.bat, align 2, !tbaa !77
  %i.bbj = zext i16 %i.bbi to i32
  %i.bbk = icmp eq i32 %i.azu, %i.bbj
  br i1 %i.bbk, label %._crit_edge1027.sink.split, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bbl = icmp eq i16 %i.baz, 0
  br i1 %i.bbl, label %bb.ep, label %._crit_edge1027

bb.ep:                                            ; preds = %bb.eo
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !77
  %i.bbo = icmp eq i16 %i.bbn, 0
  br i1 %i.bbo, label %._crit_edge1027.sink.split, label %._crit_edge1027

._crit_edge1027.sink.split:                       ; preds = %bb.ep, %bb.en, %bb.el, %bb.ej
  %.sink1264 = phi i16 [ -32768, %bb.ej ], [ -32767, %bb.el ], [ -32766, %bb.en ], [ -32765, %bb.ep ]
  store i16 %.sink1264, ptr %gep, align 2, !tbaa !77
  br label %._crit_edge1027

._crit_edge1027:                                  ; preds = %._crit_edge1027.sink.split, %bb.ee, %bb.ep, %bb.eo
  %exitcond1017.not = icmp eq i64 %i.bak, %i.bab
  br i1 %exitcond1017.not, label %._crit_edge818, label %bb.ed

._crit_edge818:                                   ; preds = %._crit_edge1027, %bb.ed
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1023.not = icmp eq i64 %indvars.iv.next1019, %wide.trip.count1022
  br i1 %exitcond1023.not, label %.loopexit, label %.lr.ph817

.loopexit:                                        ; preds = %._crit_edge818, %bb.ec, %.lr.ph822, %bb.eb
  %i.bbp = sext i32 %.pre1026 to i64
  %i.bbq = shl nsw i64 %i.bbp, 1
  %i.bbr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbq, i32 noundef 0) #8 ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bbr, ptr %i.bbs, align 8, !tbaa !82
  %.not400 = icmp eq ptr %i.bbr, null
  %i.bbt = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  br i1 %.not400, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %i.bbt) #8
  br label %bb.ev

bb.er:                                            ; preds = %.loopexit
  %i.bbu = sext i32 %i.bbt to i64
  %i.bbv = shl nsw i64 %i.bbu, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bbr, i8 0, i64 %i.bbv, i1 false)
  %i.bbw = load i32, ptr %i.cc, align 8, !tbaa !72 ; 2 uses
  %i.bbx = icmp sgt i32 %i.bbw, 65535
  br i1 %i.bbx, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef %i.bbw, i32 noundef 65535) #8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.bby = load i32, ptr %i.cd, align 4, !tbaa !73 ; 2 uses
  %i.bbz = icmp sgt i32 %i.bby, 65535
  br i1 %i.bbz, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.17, i32 noundef %i.bby, i32 noundef 65535) #8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.dz, %bb.bf, %bb.ea, %bb.eq, %bb.eu, %bb.et, %bb.aa
  %.9 = phi i1 [ false, %bb.aa ], [ false, %bb.bf ], [ false, %bb.eq ], [ false, %bb.ea ], [ false, %bb.dz ], [ true, %bb.eu ], [ true, %bb.et ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cw) #8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.y
  %.10 = phi i1 [ %.9, %bb.ev ], [ false, %bb.y ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cr) #8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.w
  %.11 = phi i1 [ %.10, %bb.ew ], [ false, %bb.w ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cp) #8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.v
  %.12 = phi i1 [ %.11, %bb.ex ], [ false, %bb.v ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cm) #8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.t
  %.13 = phi i1 [ %.12, %bb.ey ], [ false, %bb.t ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cl) #8
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.14 = phi i1 [ %.13, %bb.ez ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ]
  tail call void @_Z6rcFreePv(ptr noundef %i.bm) #8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.i
  %.15 = phi i1 [ false, %bb.i ], [ %.14, %bb.fa ]
  %i.bca = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.bcb = trunc nuw i8 %i.bca to i1
  br i1 %i.bcb, label %bb.fc, label %_ZN13rcScopedTimerD2Ev.exit

bb.fc:                                            ; preds = %bb.fb
  %i.bcc = load ptr, ptr %0, align 8, !tbaa !21
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 48
  %i.bce = load ptr, ptr %i.bcd, align 8
  tail call void %i.bce(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 11) #8, !call_target !83, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.fb, %bb.fc
  ret i1 %.15
}

declare void @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 -2147483647, -2147483648) i32 @_ZL11triangulateiPKiPiS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge186

.preheader168:                                    ; preds = %bb.c
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %.preheader167.preheader, label %._crit_edge186

.preheader167.preheader:                          ; preds = %.preheader168
  %scevgep198 = getelementptr i8, ptr %2, i64 4
  %i.c = add nsw i32 %0, -2
  %i.d = zext nneg i32 %0 to i64
  %i.e = add nsw i32 %0, -4
  br label %.preheader167

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0145171 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = add nuw nsw i32 %.0145171, 1             ; 4 uses
  %i.g = icmp slt i32 %i.f, %0
  %i.h = select i1 %i.g, i32 %i.f, i32 0          ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp slt i32 %i.i, %0
  %i.k = select i1 %i.j, i32 %i.i, i32 0
  %i.l = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKiPi(i32 noundef %.0145171, i32 noundef %i.k, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  %i.p = or i32 %i.o, -2147483648
  store i32 %i.p, ptr %i.n, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %.preheader168, label %.lr.ph

.preheader167:                                    ; preds = %.preheader167.preheader, %bb.q
  %indvars.iv203 = phi i64 [ %i.d, %.preheader167.preheader ], [ %indvars.iv.next204, %bb.q ] ; 13 uses
  %.0146185 = phi ptr [ %3, %.preheader167.preheader ], [ %i.ij, %bb.q ] ; 4 uses
  %.0148184 = phi i32 [ 0, %.preheader167.preheader ], [ %i.ik, %bb.q ] ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.q = icmp eq i32 %.2, -1
  br i1 %i.q, label %.lr.ph178, label %bb.p

bb.e:                                             ; preds = %.preheader167, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader167 ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0138173 = phi i32 [ -1, %.preheader167 ], [ %.2, %bb.g ] ; 2 uses
  %.0139172 = phi i32 [ -1, %.preheader167 ], [ %.2141, %bb.g ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %indvars.iv203
  %i.s = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.t = select i1 %i.r, i32 %i.s, i32 0          ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  %.not158 = icmp sgt i32 %i.w, -1
  br i1 %.not158, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %i.z = shl i32 %i.y, 2
  %i.aa = and i32 %i.z, 1073741820
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = add nuw nsw i32 %i.t, 1                 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ugt i64 %indvars.iv203, %i.ae
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = select i1 %i.af, i64 %i.ag, i64 0
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !76
  %i.ak = shl i32 %i.aj, 2
  %i.al = and i32 %i.ak, 1073741820
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !76
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !76
  %i.aq = sub nsw i32 %i.ao, %i.ap                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76
  %i.av = sub nsw i32 %i.as, %i.au                ; 2 uses
  %i.aw = mul nsw i32 %i.aq, %i.aq
  %i.ax = mul nsw i32 %i.av, %i.av
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 2 uses
  %i.az = icmp slt i32 %.0139172, 0
  %i.ba = icmp slt i32 %i.ay, %.0139172
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba   ; 2 uses
  %.1140 = select i1 %or.cond, i32 %i.ay, i32 %.0139172
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %or.cond, i32 %i.bb, i32 %.0138173
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2141 = phi i32 [ %.1140, %bb.f ], [ %.0139172, %bb.e ]
  %.2 = phi i32 [ %.1, %bb.f ], [ %.0138173, %bb.e ] ; 3 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next, %indvars.iv203
  br i1 %exitcond192.not, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_ZL13diagonalLooseiiiPKiPi.exit.thread
  %i.bc = icmp eq i32 %.5, -1
  br i1 %i.bc, label %.thread, label %bb.p

.lr.ph178:                                        ; preds = %bb.d, %_ZL13diagonalLooseiiiPKiPi.exit.thread
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %_ZL13diagonalLooseiiiPKiPi.exit.thread ], [ 0, %bb.d ] ; 7 uses
  %.3176 = phi i32 [ %.5, %_ZL13diagonalLooseiiiPKiPi.exit.thread ], [ -1, %bb.d ] ; 5 uses
  %.3142175 = phi i32 [ %.5144, %_ZL13diagonalLooseiiiPKiPi.exit.thread ], [ -1, %bb.d ] ; 7 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 4 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next194, %indvars.iv203
  %i.be = trunc nuw nsw i64 %indvars.iv.next194 to i32
  %i.bf = select i1 %i.bd, i32 %i.be, i32 0       ; 2 uses
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ugt i64 %indvars.iv203, %i.bh
  %i.bj = select i1 %i.bi, i32 %i.bg, i32 0       ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv193
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !76
  %i.bm = shl i32 %i.bl, 2
  %i.bn = and i32 %i.bm, 1073741820
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo ; 2 uses
  %i.bq = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !76
  %i.bt = shl i32 %i.bs, 2
  %i.bu = and i32 %i.bt, 1073741820
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv ; 3 uses
  %i.bx = zext nneg i32 %i.bf to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !76
  %i.ca = shl i32 %i.bz, 2
  %i.cb = and i32 %i.ca, 1073741820
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc ; 2 uses
  %.not166 = icmp eq i64 %indvars.iv193, 0
  %i.ce = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.cf = select i1 %.not166, i64 %indvars.iv203, i64 %indvars.iv193
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !76
  %i.cj = shl i32 %i.ci, 2
  %i.ck = and i32 %i.cj, 1073741820
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.bp, align 4, !tbaa !76 ; 12 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !76 ; 4 uses
  %i.cp = sub nsw i32 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !76 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !76 ; 3 uses
  %i.cu = sub nsw i32 %i.cr, %i.ct
  %i.cv = mul nsw i32 %i.cu, %i.cp
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !76 ; 3 uses
  %i.cx = sub nsw i32 %i.cw, %i.co
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !76 ; 12 uses
  %.neg.i.i.i.i = sub i32 %i.ct, %i.cz            ; 2 uses
  %.neg8.i.i.i.i = mul i32 %.neg.i.i.i.i, %i.cx
  %i.da = add i32 %.neg8.i.i.i.i, %i.cv
  %i.db = icmp slt i32 %i.da, 1
  %i.dc = load i32, ptr %i.bw, align 4, !tbaa !76 ; 8 uses
  %i.dd = sub nsw i32 %i.dc, %i.cn                ; 4 uses
  br i1 %i.db, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph178
  %i.de = mul nsw i32 %i.dd, %.neg.i.i.i.i
  %i.df = sub nsw i32 %i.co, %i.cn
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !76 ; 4 uses
  %.neg.i.i29.i.i = sub i32 %i.cz, %i.dh          ; 2 uses
  %.neg8.i.i30.i.i = mul i32 %.neg.i.i29.i.i, %i.df
  %i.di = add i32 %.neg8.i.i30.i.i, %i.de
  %i.dj = icmp slt i32 %i.di, 1
  br i1 %i.dj, label %.split.i, label %_ZL13diagonalLooseiiiPKiPi.exit.thread

.split.i:                                         ; preds = %bb.h
  %i.dk = sub i32 %i.cn, %i.dc                    ; 2 uses
  %i.dl = sub nsw i32 %i.cr, %i.dh
  %i.dm = mul nsw i32 %i.dl, %i.dk
  %i.dn = sub nsw i32 %i.cw, %i.dc
  %.neg.i.i31.i.i = sub i32 %i.dh, %i.cz
  %.neg8.i.i32.i.i = mul i32 %.neg.i.i31.i.i, %i.dn
  %i.do = add i32 %.neg8.i.i32.i.i, %i.dm
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %_ZL11inConeLooseiiiPKiPi.exit.thread.i, label %_ZL13diagonalLooseiiiPKiPi.exit.thread

bb.i:                                             ; preds = %.lr.ph178
  %i.dq = sub nsw i32 %i.cr, %i.cz
  %i.dr = mul nsw i32 %i.dd, %i.dq
  %i.ds = sub nsw i32 %i.cw, %i.cn
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !76 ; 5 uses
  %.neg.i.i33.i.i = sub i32 %i.cz, %i.du          ; 3 uses
  %.neg8.i.i34.i.i = mul i32 %.neg.i.i33.i.i, %i.ds
  %i.dv = add i32 %.neg8.i.i34.i.i, %i.dr
  %i.dw = icmp slt i32 %i.dv, 1
  %i.dx = sub i32 %i.cn, %i.dc                    ; 3 uses
  br i1 %i.dw, label %_ZL11inConeLooseiiiPKiPi.exit.i, label %_ZL11inConeLooseiiiPKiPi.exit.thread.i

_ZL11inConeLooseiiiPKiPi.exit.i:                  ; preds = %bb.i
  %i.dy = sub nsw i32 %i.ct, %i.du
  %i.dz = mul nsw i32 %i.dy, %i.dx
  %i.ea = sub nsw i32 %i.co, %i.dc
  %.neg.i.i35.i.i = sub i32 %i.du, %i.cz
  %.neg8.i.i36.i.i = mul i32 %.neg.i.i35.i.i, %i.ea
  %i.eb = add i32 %.neg8.i.i36.i.i, %i.dz
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %_ZL11inConeLooseiiiPKiPi.exit.thread.i, label %_ZL13diagonalLooseiiiPKiPi.exit.thread

_ZL11inConeLooseiiiPKiPi.exit.thread.i:           ; preds = %_ZL11inConeLooseiiiPKiPi.exit.i, %bb.i, %.split.i
  %.neg.i.i.i.i.i.pre-phi = phi i32 [ %.neg.i.i33.i.i, %_ZL11inConeLooseiiiPKiPi.exit.i ], [ %.neg.i.i33.i.i, %bb.i ], [ %.neg.i.i29.i.i, %.split.i ] ; 2 uses
  %.neg.i.i.i9.pre-phi.i = phi i32 [ %i.dx, %_ZL11inConeLooseiiiPKiPi.exit.i ], [ %i.dx, %bb.i ], [ %i.dk, %.split.i ] ; 2 uses
  %.val54.pre.i.i = phi i32 [ %i.du, %_ZL11inConeLooseiiiPKiPi.exit.i ], [ %i.du, %bb.i ], [ %i.dh, %.split.i ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread76.i.i, %_ZL11inConeLooseiiiPKiPi.exit.thread.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZL11inConeLooseiiiPKiPi.exit.thread.i ], [ %indvars.iv.next.i.i, %.thread76.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.ed = icmp samesign ult i64 %indvars.iv.next.i.i, %indvars.iv203
  %i.ee = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.ef = select i1 %i.ed, i32 %i.ee, i32 0       ; 2 uses
  %i.eg = icmp eq i64 %indvars.iv.i.i, %indvars.iv193
  %i.eh = zext i32 %i.ef to i64                   ; 2 uses
  %i.ei = icmp eq i64 %indvars.iv193, %i.eh
  %or.cond.i.i = or i1 %i.eg, %i.ei
  %i.ej = icmp eq i64 %indvars.iv.i.i, %i.bq
  %or.cond49.i.i = or i1 %i.ej, %or.cond.i.i
  %i.ek = icmp eq i32 %i.ef, %i.bj
  %or.cond50.i.i = or i1 %i.ek, %or.cond49.i.i
  br i1 %or.cond50.i.i, label %.thread76.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !76
  %i.en = shl i32 %i.em, 2
  %i.eo = and i32 %i.en, 1073741820
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eh
  %i.es = load i32, ptr %i.er, align 4, !tbaa !76
  %i.et = shl i32 %i.es, 2
  %i.eu = and i32 %i.et, 1073741820
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ev ; 4 uses
  %i.ex = load i32, ptr %i.eq, align 4, !tbaa !76 ; 7 uses
  %i.ey = icmp eq i32 %i.cn, %i.ex
  br i1 %i.ey, label %_ZL6vequalPKiS0_.exit.i.i, label %_ZL6vequalPKiS0_.exit.thread.i.i

_ZL6vequalPKiS0_.exit.i.i:                        ; preds = %bb.k
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !76
  %i.fb = icmp eq i32 %i.cz, %i.fa
  br i1 %i.fb, label %.thread76.i.i, label %_ZL6vequalPKiS0_.exit.thread.i.i

_ZL6vequalPKiS0_.exit.thread.i.i:                 ; preds = %_ZL6vequalPKiS0_.exit.i.i, %bb.k
  %i.fc = icmp eq i32 %i.dc, %i.ex
  br i1 %i.fc, label %_ZL6vequalPKiS0_.exit57.i.i, label %_ZL6vequalPKiS0_.exit57.thread.i.i

_ZL6vequalPKiS0_.exit57.i.i:                      ; preds = %_ZL6vequalPKiS0_.exit.thread.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !76
  %i.ff = icmp eq i32 %.val54.pre.i.i, %i.fe
  br i1 %i.ff, label %.thread76.i.i, label %_ZL6vequalPKiS0_.exit57.thread.i.i

_ZL6vequalPKiS0_.exit57.thread.i.i:               ; preds = %_ZL6vequalPKiS0_.exit57.i.i, %_ZL6vequalPKiS0_.exit.thread.i.i
  %i.fg = load i32, ptr %i.ew, align 4, !tbaa !76 ; 5 uses
  %i.fh = icmp eq i32 %i.cn, %i.fg
  br i1 %i.fh, label %_ZL6vequalPKiS0_.exit58.i.i, label %_ZL6vequalPKiS0_.exit58.thread.i.i

_ZL6vequalPKiS0_.exit58.i.i:                      ; preds = %_ZL6vequalPKiS0_.exit57.thread.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !76
  %i.fk = icmp eq i32 %i.cz, %i.fj
  br i1 %i.fk, label %.thread76.i.i, label %_ZL6vequalPKiS0_.exit58.thread.i.i

_ZL6vequalPKiS0_.exit58.thread.i.i:               ; preds = %_ZL6vequalPKiS0_.exit58.i.i, %_ZL6vequalPKiS0_.exit57.thread.i.i
  %i.fl = icmp eq i32 %i.dc, %i.fg
  br i1 %i.fl, label %_ZL6vequalPKiS0_.exit59.i.i, label %_ZL6vequalPKiS0_.exit59.thread.i.i

_ZL6vequalPKiS0_.exit59.i.i:                      ; preds = %_ZL6vequalPKiS0_.exit58.thread.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !76
  %i.fo = icmp eq i32 %.val54.pre.i.i, %i.fn
  br i1 %i.fo, label %.thread76.i.i, label %_ZL6vequalPKiS0_.exit59.thread.i.i

_ZL6vequalPKiS0_.exit59.thread.i.i:               ; preds = %_ZL6vequalPKiS0_.exit59.i.i, %_ZL6vequalPKiS0_.exit58.thread.i.i
  %i.fp = getelementptr i8, ptr %i.eq, i64 8
  %.val56.i.i = load i32, ptr %i.fp, align 4, !tbaa !76 ; 4 uses
  %i.fq = sub nsw i32 %.val56.i.i, %i.cz          ; 2 uses
  %.neg3.i.i.i.i = mul i32 %i.fq, %.neg.i.i.i9.pre-phi.i
  %i.fr = sub nsw i32 %i.ex, %i.cn
  %.neg8.i.i.i.i.i = mul i32 %i.fr, %.neg.i.i.i.i.i.pre-phi ; 2 uses
  %i.fs = icmp eq i32 %.neg8.i.i.i.i.i, %.neg3.i.i.i.i
  br i1 %i.fs, label %.thread76.i.i, label %bb.l

bb.l:                                             ; preds = %_ZL6vequalPKiS0_.exit59.thread.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !76 ; 2 uses
  %i.fv = sub nsw i32 %i.fu, %i.cz                ; 2 uses
  %.neg3.i26.i.i.i = mul i32 %i.fv, %.neg.i.i.i9.pre-phi.i
  %i.fw = sub nsw i32 %i.fg, %i.cn
  %.neg8.i.i28.i.i.i = mul i32 %i.fw, %.neg.i.i.i.i.i.pre-phi ; 2 uses
  %i.fx = icmp eq i32 %.neg8.i.i28.i.i.i, %.neg3.i26.i.i.i
  br i1 %i.fx, label %.thread76.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg.i29.i.i.i = sub i32 %i.ex, %i.fg          ; 2 uses
  %i.fy = sub nsw i32 %i.cz, %.val56.i.i          ; 2 uses
  %.neg3.i30.i.i.i = mul i32 %i.fy, %.neg.i29.i.i.i
  %i.fz = sub nsw i32 %i.cn, %i.ex
  %.neg.i.i31.i.i.i = sub i32 %.val56.i.i, %i.fu  ; 2 uses
  %.neg8.i.i32.i.i.i = mul i32 %.neg.i.i31.i.i.i, %i.fz ; 2 uses
  %i.ga = icmp eq i32 %.neg8.i.i32.i.i.i, %.neg3.i30.i.i.i
  br i1 %i.ga, label %.thread76.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gb = sub nsw i32 %.val54.pre.i.i, %.val56.i.i ; 2 uses
  %.neg3.i34.i.i.i = mul i32 %i.gb, %.neg.i29.i.i.i
  %i.gc = sub nsw i32 %i.dc, %i.ex
  %.neg8.i.i36.i.i.i = mul i32 %.neg.i.i31.i.i.i, %i.gc ; 2 uses
  %i.gd = icmp eq i32 %.neg8.i.i36.i.i.i, %.neg3.i34.i.i.i
  br i1 %i.gd, label %.thread76.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ge = mul nsw i32 %i.fq, %i.dd
  %i.gf = add i32 %i.ge, %.neg8.i.i.i.i.i
  %i.gg = mul nsw i32 %i.fv, %i.dd
  %i.gh = add i32 %i.gg, %.neg8.i.i28.i.i.i
  %i.gi = xor i32 %i.gh, %i.gf
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i, label %.thread76.i.i

_ZL13intersectPropPKiS0_S0_S0_.exit.i.i:          ; preds = %bb.o
  %i.gk = sub nsw i32 %i.fg, %i.ex                ; 2 uses
  %i.gl = mul nsw i32 %i.fy, %i.gk
  %i.gm = add i32 %.neg8.i.i32.i.i.i, %i.gl
  %i.gn = mul nsw i32 %i.gb, %i.gk
  %i.go = add i32 %.neg8.i.i36.i.i.i, %i.gn
  %i.gp = xor i32 %i.gm, %i.go
  %.fr.i.i = freeze i32 %i.gp
  %i.gq = icmp slt i32 %.fr.i.i, 0
  br i1 %i.gq, label %_ZL13diagonalLooseiiiPKiPi.exit.thread, label %.thread76.i.i

.thread76.i.i:                                    ; preds = %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i, %bb.o, %bb.n, %bb.m, %bb.l, %_ZL6vequalPKiS0_.exit59.thread.i.i, %_ZL6vequalPKiS0_.exit59.i.i, %_ZL6vequalPKiS0_.exit58.i.i, %_ZL6vequalPKiS0_.exit57.i.i, %_ZL6vequalPKiS0_.exit.i.i, %bb.j
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv203
  br i1 %exitcond.not.i.i, label %_ZL13diagonalLooseiiiPKiPi.exit, label %bb.j

_ZL13diagonalLooseiiiPKiPi.exit:                  ; preds = %.thread76.i.i
  %i.gr = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = icmp samesign ugt i64 %indvars.iv203, %i.gs
  %i.gu = sext i32 %i.gr to i64
  %i.gv = select i1 %i.gt, i64 %i.gu, i64 0
  %i.gw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !76
  %i.gy = shl i32 %i.gx, 2
  %i.gz = and i32 %i.gy, 1073741820
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !76
  %i.hd = sub nsw i32 %i.hc, %i.cn                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !76
  %i.hg = sub nsw i32 %i.hf, %i.cz                ; 2 uses
  %i.hh = mul nsw i32 %i.hd, %i.hd
  %i.hi = mul nsw i32 %i.hg, %i.hg
  %i.hj = add nuw nsw i32 %i.hi, %i.hh            ; 2 uses
  %i.hk = icmp slt i32 %.3142175, 0
  %i.hl = icmp slt i32 %i.hj, %.3142175
  %or.cond159 = select i1 %i.hk, i1 true, i1 %i.hl ; 2 uses
  %.4143 = select i1 %or.cond159, i32 %i.hj, i32 %.3142175
  %.4 = select i1 %or.cond159, i32 %i.ce, i32 %.3176
  br label %_ZL13diagonalLooseiiiPKiPi.exit.thread

_ZL13diagonalLooseiiiPKiPi.exit.thread:           ; preds = %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i, %bb.h, %.split.i, %_ZL11inConeLooseiiiPKiPi.exit.i, %_ZL13diagonalLooseiiiPKiPi.exit
  %.5144 = phi i32 [ %.4143, %_ZL13diagonalLooseiiiPKiPi.exit ], [ %.3142175, %_ZL11inConeLooseiiiPKiPi.exit.i ], [ %.3142175, %.split.i ], [ %.3142175, %bb.h ], [ %.3142175, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i ]
  %.5 = phi i32 [ %.4, %_ZL13diagonalLooseiiiPKiPi.exit ], [ %.3176, %_ZL11inConeLooseiiiPKiPi.exit.i ], [ %.3176, %.split.i ], [ %.3176, %bb.h ], [ %.3176, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i ] ; 3 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %indvars.iv203
  br i1 %exitcond197.not, label %._crit_edge, label %.lr.ph178

.thread:                                          ; preds = %._crit_edge
  %i.hm = sub nsw i32 0, %.0148184
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge, %bb.d
  %.6 = phi i32 [ %.5, %._crit_edge ], [ %.2, %bb.d ] ; 2 uses
  %i.hn = add nuw nsw i32 %.6, 1                  ; 4 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = icmp sgt i64 %indvars.iv203, %i.ho
  %i.hq = select i1 %i.hp, i32 %i.hn, i32 0       ; 5 uses
  %i.hr = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp sgt i64 %indvars.iv203, %i.hs
  %i.hu = sext i32 %.6 to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !76
  %i.hx = and i32 %i.hw, 268435455
  %i.hy = getelementptr inbounds nuw i8, ptr %.0146185, i64 4
  store i32 %i.hx, ptr %.0146185, align 4, !tbaa !76
  %i.hz = sext i32 %i.hq to i64                   ; 3 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !76
  %i.ic = and i32 %i.ib, 268435455
  %i.id = getelementptr inbounds nuw i8, ptr %.0146185, i64 8
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !76
  %i.ie = sext i32 %i.hr to i64
  %i.if = select i1 %i.ht, i64 %i.ie, i64 0
  %i.ig = getelementptr inbounds [4 x i8], ptr %2, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !76
  %i.ii = and i32 %i.ih, 268435455
  %i.ij = getelementptr inbounds nuw i8, ptr %.0146185, i64 12 ; 2 uses
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !76
  %i.ik = add nuw nsw i32 %.0148184, 1
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, -1 ; 5 uses
  %i.il = icmp sgt i64 %indvars.iv.next204, %i.hz
  br i1 %i.il, label %._crit_edge182, label %._crit_edge182.thread

._crit_edge182.thread:                            ; preds = %bb.p
  %i.im = trunc nuw nsw i64 %indvars.iv.next204 to i32 ; 2 uses
  br label %bb.q

._crit_edge182:                                   ; preds = %bb.p
  %i.in = shl nsw i64 %i.hz, 2                    ; 2 uses
end_hunk_2

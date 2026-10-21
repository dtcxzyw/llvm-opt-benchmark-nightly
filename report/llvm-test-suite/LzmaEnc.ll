Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzmaEnc?download=true
inline.NumInlined: 106
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 67
begin_hunk_0_@LzmaEnc_CodeOneBlock:bb.a
  %i.cd = lshr i32 %.0.i223, 8
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !23
  %i.ch = zext i16 %i.cg to i32                   ; 5 uses
  %i.ci = load i32, ptr %i.az, align 8, !tbaa !66 ; 2 uses
  %i.cj = lshr i32 %i.ci, 11
  %i.ck = mul i32 %i.cj, %i.ch                    ; 3 uses
  %i.cl = and i32 %.0.i223, 128
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = sub nsw i32 2048, %i.ch
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add nuw nsw i32 %i.co, %i.ch
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cq = zext i32 %i.ck to i64
  %i.cr = load i64, ptr %i.cc, align 8, !tbaa !65
  %i.cs = add i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.cc, align 8, !tbaa !65
  %i.ct = sub i32 %i.ci, %i.ck
  %i.cu = lshr i32 %i.ch, 5
  %i.cv = sub nsw i32 %i.ch, %i.cu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i.i = phi i32 [ %i.ck, %bb.l ], [ %i.ct, %bb.m ] ; 3 uses
  %.0.i.i = phi i32 [ %i.cp, %bb.l ], [ %i.cv, %bb.m ]
  store i32 %.sink.i.i, ptr %i.az, align 8, !tbaa !66
  %i.cw = trunc i32 %.0.i.i to i16
  store i16 %i.cw, ptr %i.cf, align 2, !tbaa !23
  %i.cx = icmp ult i32 %.sink.i.i, 16777216
  br i1 %i.cx, label %bb.o, label %RangeEnc_EncodeBit.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cy = shl nuw i32 %.sink.i.i, 8
  store i32 %i.cy, ptr %i.az, align 8, !tbaa !66
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %i.az)
  br label %RangeEnc_EncodeBit.exit.i

RangeEnc_EncodeBit.exit.i:                        ; preds = %bb.o, %bb.n
  %i.cz = shl nuw nsw i32 %.0.i223, 1
  %i.da = icmp samesign ult i32 %.0.i223, 32768
  br i1 %i.da, label %bb.k, label %bb.p, !llvm.loop !143

bb.p:                                             ; preds = %RangeEnc_EncodeBit.exit.i
  %i.db = load i32, ptr %i.aw, align 4, !tbaa !76
  %i.dc = add i32 %i.db, -1
  store i32 %i.dc, ptr %i.aw, align 4, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %CheckErrors.exit
  %.1204 = phi i32 [ 1, %bb.p ], [ %i.u, %CheckErrors.exit ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 22 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.dh = tail call i32 %i.de(ptr noundef %i.dg) #14
  %.not213 = icmp eq i32 %i.dh, 0
  br i1 %.not213, label %CheckErrors.exit336.thread367, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 252232 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 210388 ; 21 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2868 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 11 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 208188 ; 27 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 210384 ; 16 uses
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
  %.phi.trans.insert.i322 = getelementptr inbounds nuw i8, ptr %0, i64 215190
  %.not218 = icmp eq i32 %1, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 252296
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 252264
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 252280
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 252256
  %i.fq = zext i32 %2 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 215190 ; 2 uses
  br label %CheckErrors.exit336

CheckErrors.exit336:                              ; preds = %CheckErrors.exit336.backedge, %.preheader
  %.2205 = phi i32 [ %.1204, %.preheader ], [ %i.cmr, %CheckErrors.exit336.backedge ] ; 7 uses
  %i.fs = load i32, ptr %i.di, align 8, !tbaa !55
  %.not214 = icmp eq i32 %i.fs, 0
  br i1 %.not214, label %bb.bu, label %bb.r

bb.r:                                             ; preds = %CheckErrors.exit336
  %i.ft = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.fw = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.fx = tail call i32 %i.fv(ptr noundef %i.fw) #14, !inline_history !144
  store i32 %i.fx, ptr %i.dm, align 8, !tbaa !181
  %i.fy = load ptr, ptr %i.dn, align 8, !tbaa !182
  %i.fz = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.ga = tail call i32 %i.fy(ptr noundef %i.fz, ptr noundef nonnull %i.do) #14, !inline_history !144 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i, label %ReadMatchDistances.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = add i32 %i.ga, -2
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !14 ; 5 uses
  %i.gf = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.u, label %ReadMatchDistances.exit.i

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.gi = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.gj = tail call ptr %i.gh(ptr noundef %i.gi) #14, !inline_history !144
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -1 ; 2 uses
  %i.gl = add i32 %i.ga, -1
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !14
  %i.gp = add i32 %i.go, 1
  %i.gq = load i32, ptr %i.dm, align 8, !tbaa !181
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
  br i1 %exitcond.not.i.i, label %ReadMatchDistances.exit.i, label %.lr.ph.i.i, !llvm.loop !145

.critedge.loopexit.split.loop.exit.i.i:           ; preds = %.lr.ph.i.i
  %i.hb = trunc nuw i64 %indvars.iv.i.i to i32
  br label %ReadMatchDistances.exit.i

ReadMatchDistances.exit.i:                        ; preds = %bb.v, %.critedge.loopexit.split.loop.exit.i.i, %bb.u, %bb.t, %bb.s
  %.1.i.i = phi i32 [ 0, %bb.s ], [ %i.ge, %bb.t ], [ %i.ge, %bb.u ], [ %i.hb, %.critedge.loopexit.split.loop.exit.i.i ], [ %spec.store.select.i.i, %bb.v ]
  %i.hc = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.dj, align 4, !tbaa !76
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.he = load i32, ptr %i.dk, align 8, !tbaa !184
  %i.hf = load i32, ptr %i.dl, align 4, !tbaa !185
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %ReadMatchDistances.exit.i
  %.0193.i = phi i32 [ %i.ga, %ReadMatchDistances.exit.i ], [ %i.hf, %bb.w ] ; 4 uses
  %.0147.i = phi i32 [ %.1.i.i, %ReadMatchDistances.exit.i ], [ %i.he, %bb.w ] ; 7 uses
  %i.hg = load i32, ptr %i.dm, align 8, !tbaa !181
  %.fr256.i = freeze i32 %i.hg                    ; 3 uses
  %i.hh = icmp ult i32 %.fr256.i, 2
  br i1 %i.hh, label %GetOptimumFast.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.hj = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.hk = tail call ptr %i.hi(ptr noundef %i.hj) #14, !inline_history !146 ; 9 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -1 ; 13 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !21  ; 8 uses
  %.not257.i = icmp eq i32 %.fr256.i, 2           ; 2 uses
  br i1 %.not257.i, label %.split.preheader.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.y
  %umax.i = tail call i32 @llvm.umin.i32(i32 %.fr256.i, i32 273) ; 8 uses
  %i.hn = load i32, ptr %i.dr, align 8, !tbaa !14
  %i.ho = add i32 %i.hn, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hl, i64 %i.hq ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !21
  %.not162.us.i = icmp eq i8 %i.hm, %i.hs
  br i1 %.not162.us.i, label %bb.z, label %.split.us.1.i

.split.preheader.i:                               ; preds = %bb.y
  %i.ht = load i32, ptr %i.dr, align 8, !tbaa !14
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
  br i1 %exitcond.not.i229, label %.critedge.us.i, label %.preheader.us.i, !llvm.loop !147

.critedge.us.split.loop.exit.i:                   ; preds = %.preheader.us.i
  %i.ih = trunc nuw nsw i64 %indvars.iv.i227 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.aa, %.critedge.us.split.loop.exit.i
  %.0135.lcssa.us.i = phi i32 [ %i.ih, %.critedge.us.split.loop.exit.i ], [ %umax.i, %bb.aa ] ; 3 uses
  %i.ii = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not164.us.i = icmp ult i32 %.0135.lcssa.us.i, %i.ii
  br i1 %.not164.us.i, label %.split.us.1.i, label %MovePos.exit.sink.split.sink.split.i

.split.us.1.i:                                    ; preds = %.critedge.us.i, %bb.z, %.split.us.preheader.i
  %.2141.ph.us.i = phi i32 [ 0, %bb.z ], [ 0, %.split.us.preheader.i ], [ %.0135.lcssa.us.i, %.critedge.us.i ] ; 4 uses
  %i.ij = load i32, ptr %i.ds, align 4, !tbaa !14
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
  br i1 %i.iw, label %bb.ac, label %.critedge.us.1.split.loop.exit313.i

bb.ac:                                            ; preds = %.preheader.us.1.i
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %.critedge.us.1.i, label %.preheader.us.1.i, !llvm.loop !147

.critedge.us.1.split.loop.exit313.i:              ; preds = %.preheader.us.1.i
  %i.ix = trunc nuw nsw i64 %indvars.iv.1.i to i32
  br label %.critedge.us.1.i

.critedge.us.1.i:                                 ; preds = %bb.ac, %.critedge.us.1.split.loop.exit313.i
  %.0135.lcssa.us.1.i = phi i32 [ %i.ix, %.critedge.us.1.split.loop.exit313.i ], [ %umax.i, %bb.ac ] ; 4 uses
  %i.iy = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not164.us.1.i = icmp ult i32 %.0135.lcssa.us.1.i, %i.iy
  br i1 %.not164.us.1.i, label %bb.ad, label %MovePos.exit.sink.split.sink.split.i

bb.ad:                                            ; preds = %.critedge.us.1.i
  %i.iz = icmp ugt i32 %.0135.lcssa.us.1.i, %.2141.ph.us.i
  %spec.select.us.1.i = zext i1 %i.iz to i32
  %spec.select165.us.1.i = tail call i32 @llvm.umax.i32(i32 %.0135.lcssa.us.1.i, i32 %.2141.ph.us.i)
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.ad, %bb.ab, %.split.us.1.i
  %.2144.ph.us.1.i = phi i32 [ 0, %bb.ab ], [ 0, %.split.us.1.i ], [ %spec.select.us.1.i, %bb.ad ] ; 3 uses
  %.2141.ph.us.1.i = phi i32 [ %.2141.ph.us.i, %bb.ab ], [ %.2141.ph.us.i, %.split.us.1.i ], [ %spec.select165.us.1.i, %bb.ad ] ; 4 uses
  %i.ja = load i32, ptr %i.dt, align 8, !tbaa !14
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
  br i1 %i.jn, label %bb.af, label %.critedge.us.2.split.loop.exit315.i

bb.af:                                            ; preds = %.preheader.us.2.i
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.2.i
  br i1 %exitcond.2.not.i, label %.critedge.us.2.i, label %.preheader.us.2.i, !llvm.loop !147

.critedge.us.2.split.loop.exit315.i:              ; preds = %.preheader.us.2.i
  %i.jo = trunc nuw nsw i64 %indvars.iv.2.i to i32
  br label %.critedge.us.2.i

.critedge.us.2.i:                                 ; preds = %bb.af, %.critedge.us.2.split.loop.exit315.i
  %.0135.lcssa.us.2.i = phi i32 [ %i.jo, %.critedge.us.2.split.loop.exit315.i ], [ %umax.i, %bb.af ] ; 4 uses
  %i.jp = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not164.us.2.i = icmp ult i32 %.0135.lcssa.us.2.i, %i.jp
  br i1 %.not164.us.2.i, label %bb.ag, label %MovePos.exit.sink.split.sink.split.i

bb.ag:                                            ; preds = %.critedge.us.2.i
  %i.jq = icmp ugt i32 %.0135.lcssa.us.2.i, %.2141.ph.us.1.i
  %spec.select.us.2.i = select i1 %i.jq, i32 2, i32 %.2144.ph.us.1.i
  %spec.select165.us.2.i = tail call i32 @llvm.umax.i32(i32 %.0135.lcssa.us.2.i, i32 %.2141.ph.us.1.i)
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.ag, %bb.ae, %.split.us.2.i
  %.2144.ph.us.2.i = phi i32 [ %.2144.ph.us.1.i, %bb.ae ], [ %.2144.ph.us.1.i, %.split.us.2.i ], [ %spec.select.us.2.i, %bb.ag ] ; 3 uses
  %.2141.ph.us.2.i = phi i32 [ %.2141.ph.us.1.i, %bb.ae ], [ %.2141.ph.us.1.i, %.split.us.2.i ], [ %spec.select165.us.2.i, %bb.ag ] ; 4 uses
  %i.jr = load i32, ptr %i.du, align 4, !tbaa !14
  %i.js = add i32 %i.jr, 1
  %i.jt = zext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.hl, i64 %i.ju ; 3 uses
end_hunk_0
begin_hunk_1_@LzmaEnc_CodeOneBlock:bb.a

bb.an:                                            ; preds = %.preheader.2.i
  %i.lg = icmp samesign ult i32 %.2141.ph.1.i, 2
  %spec.select.2.i = select i1 %i.lg, i32 2, i32 %.2144.ph.1.i
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.an, %bb.am, %.split.2.i
  %.2144.ph.2.i = phi i32 [ %.2144.ph.1.i, %bb.am ], [ %.2144.ph.1.i, %.split.2.i ], [ %spec.select.2.i, %bb.an ] ; 3 uses
  %.2141.ph.2.i = phi i32 [ %.2141.ph.1.i, %bb.am ], [ %.2141.ph.1.i, %.split.2.i ], [ 2, %bb.an ] ; 3 uses
  %i.lh = load i32, ptr %i.du, align 4, !tbaa !14
  %i.li = add i32 %i.lh, 1
  %i.lj = zext i32 %i.li to i64
  %i.lk = sub nsw i64 0, %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.hl, i64 %i.lk ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !21
  %.not162.3.i = icmp eq i8 %i.hm, %i.lm
  br i1 %.not162.3.i, label %bb.ao, label %.split234.us.i

bb.ao:                                            ; preds = %.split.3.i
  %i.ln = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !21
  %.not163.3.i = icmp eq i8 %i.ln, %i.lp
  br i1 %.not163.3.i, label %.preheader.3.i, label %.split234.us.i

.preheader.3.i:                                   ; preds = %bb.ao
  %i.lq = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not164.3.i = icmp ugt i32 %i.lq, 2
  br i1 %.not164.3.i, label %bb.ap, label %MovePos.exit.sink.split.sink.split.i

bb.ap:                                            ; preds = %.preheader.3.i
  %i.lr = icmp samesign ult i32 %.2141.ph.2.i, 2
  %spec.select.3.i = select i1 %i.lr, i32 3, i32 %.2144.ph.2.i
  br label %.split234.us.i

.split234.us.i:                                   ; preds = %bb.ap, %bb.ao, %.split.3.i, %bb.aj, %bb.ah, %.split.us.3.i
  %.us-phi235.i = phi i32 [ %spec.select.us.3.i, %bb.aj ], [ %.2144.ph.us.2.i, %bb.ah ], [ %.2144.ph.us.2.i, %.split.us.3.i ], [ %.2144.ph.2.i, %bb.ao ], [ %.2144.ph.2.i, %.split.3.i ], [ %spec.select.3.i, %bb.ap ] ; 3 uses
  %.us-phi236.i = phi i32 [ %spec.select165.us.3.i, %bb.aj ], [ %.2141.ph.us.2.i, %bb.ah ], [ %.2141.ph.us.2.i, %.split.us.3.i ], [ %.2141.ph.2.i, %bb.ao ], [ %.2141.ph.2.i, %.split.3.i ], [ 2, %bb.ap ] ; 7 uses
  %i.ls = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not.i224 = icmp ult i32 %.0147.i, %i.ls
  br i1 %.not.i224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split234.us.i
  %i.lt = add i32 %.0193.i, -1
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !14
  %i.lx = add i32 %i.lw, 4                        ; 2 uses
  %i.ly = add i32 %.0147.i, -1                    ; 2 uses
  %.not.i174.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i174.i, label %GetOptimumFast.exit, label %MovePos.exit.sink.split.i

bb.ar:                                            ; preds = %.split234.us.i
  %i.lz = icmp ugt i32 %.0147.i, 1
  br i1 %i.lz, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ma = add i32 %.0193.i, -1
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mb
  %.0145237.i = load i32, ptr %i.mc, align 4, !tbaa !14 ; 2 uses
  %i.md = icmp ugt i32 %.0193.i, 2
  br i1 %i.md, label %.lr.ph.preheader.i225, label %.critedge2.i

.lr.ph.preheader.i225:                            ; preds = %bb.as
  %i.me = zext i32 %.0193.i to i64
  br label %.lr.ph.i226

bb.at:                                            ; preds = %bb.au
  %indvars.iv.next276.i = add nsw i64 %indvars.iv275.i, -2 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next276.i to i32
  %i.mf = icmp ugt i32 %indvars.i, 2
  br i1 %i.mf, label %.lr.ph.i226, label %.critedge2.i, !llvm.loop !148

.lr.ph.i226:                                      ; preds = %bb.at, %.lr.ph.preheader.i225
  %indvars.iv275.i = phi i64 [ %i.me, %.lr.ph.preheader.i225 ], [ %indvars.iv.next276.i, %bb.at ] ; 3 uses
  %.0145240.i = phi i32 [ %.0145237.i, %.lr.ph.preheader.i225 ], [ %i.mp, %bb.at ] ; 3 uses
  %.1148239.i = phi i32 [ %.0147.i, %.lr.ph.preheader.i225 ], [ %i.mj, %bb.at ] ; 3 uses
  %i.mg = add nsw i64 %indvars.iv275.i, 4294967292
  %i.mh = and i64 %i.mg, 4294967295
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !14 ; 3 uses
  %i.mk = add i32 %i.mj, 1
  %i.ml = icmp eq i32 %.1148239.i, %i.mk
  br i1 %i.ml, label %bb.au, label %.critedge2.i

bb.au:                                            ; preds = %.lr.ph.i226
  %i.mm = lshr i32 %.0145240.i, 7
  %i.mn = getelementptr [4 x i8], ptr %i.do, i64 %indvars.iv275.i
  %i.mo = getelementptr i8, ptr %i.mn, i64 -12
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !14 ; 3 uses
  %i.mq = icmp ugt i32 %i.mm, %i.mp
  br i1 %i.mq, label %bb.at, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.au, %.lr.ph.i226, %bb.at, %bb.as
  %.1148.lcssa.i = phi i32 [ %.0147.i, %bb.as ], [ %.1148239.i, %.lr.ph.i226 ], [ %.1148239.i, %bb.au ], [ %i.mj, %bb.at ] ; 2 uses
  %.0145.lcssa.i = phi i32 [ %.0145237.i, %bb.as ], [ %.0145240.i, %.lr.ph.i226 ], [ %.0145240.i, %bb.au ], [ %i.mp, %bb.at ] ; 2 uses
  %i.mr = icmp eq i32 %.1148.lcssa.i, 2
  %i.ms = icmp ugt i32 %.0145.lcssa.i, 127
  %or.cond.i = select i1 %i.mr, i1 %i.ms, i1 false
  %spec.store.select14.i = select i1 %or.cond.i, i32 1, i32 %.1148.lcssa.i
  br label %bb.av

bb.av:                                            ; preds = %.critedge2.i, %bb.ar
  %.2149.i = phi i32 [ %spec.store.select14.i, %.critedge2.i ], [ %.0147.i, %bb.ar ]
  %.1146.i = phi i32 [ %.0145.lcssa.i, %.critedge2.i ], [ 0, %bb.ar ] ; 6 uses
  %.2149.fr.i = freeze i32 %.2149.i               ; 11 uses
  %i.mt = icmp ugt i32 %.us-phi236.i, 1
  br i1 %i.mt, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.mu = add i32 %.us-phi236.i, 1
  %.not157.i = icmp ult i32 %i.mu, %.2149.fr.i
  br i1 %.not157.i, label %bb.ax, label %MovePos.exit.sink.split.sink.split.i

bb.ax:                                            ; preds = %bb.aw
  %i.mv = add i32 %.us-phi236.i, 2
  %i.mw = icmp uge i32 %i.mv, %.2149.fr.i
  %i.mx = icmp ugt i32 %.1146.i, 511
  %or.cond5.i = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %or.cond5.i, label %MovePos.exit.sink.split.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.my = add i32 %.us-phi236.i, 3
  %i.mz = icmp uge i32 %i.my, %.2149.fr.i
  %i.na = icmp ugt i32 %.1146.i, 32767
  %or.cond7.i = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %or.cond7.i, label %MovePos.exit.sink.split.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.nb = icmp ult i32 %.2149.fr.i, 2
  %or.cond9.i = or i1 %.not257.i, %i.nb
  br i1 %or.cond9.i, label %GetOptimumFast.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nc = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.nd = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.ne = tail call i32 %i.nc(ptr noundef %i.nd) #14, !inline_history !144
  store i32 %i.ne, ptr %i.dm, align 8, !tbaa !181
  %i.nf = load ptr, ptr %i.dn, align 8, !tbaa !182
  %i.ng = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.nh = tail call i32 %i.nf(ptr noundef %i.ng, ptr noundef nonnull %i.do) #14, !inline_history !144 ; 5 uses
  %.not.i178.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i178.i, label %ReadMatchDistances.exit188.thread.i, label %bb.bb

ReadMatchDistances.exit188.thread.i:              ; preds = %bb.ba
  %i.ni = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.nj = add i32 %i.ni, 1
  store i32 %i.nj, ptr %i.dj, align 4, !tbaa !76
  store i32 0, ptr %i.dl, align 4, !tbaa !14
  store i32 0, ptr %i.dk, align 8, !tbaa !184
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.nk = add i32 %i.nh, -2
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !14 ; 5 uses
  %i.no = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.np = icmp eq i32 %i.nn, %i.no
  br i1 %i.np, label %bb.bc, label %ReadMatchDistances.exit188.i

bb.bc:                                            ; preds = %bb.bb
  %i.nq = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.nr = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.ns = tail call ptr %i.nq(ptr noundef %i.nr) #14, !inline_history !144
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -1 ; 2 uses
  %i.nu = add i32 %i.nh, -1
  %i.nv = zext i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !14
  %i.ny = add i32 %i.nx, 1
  %i.nz = load i32, ptr %i.dm, align 8, !tbaa !181
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
  br i1 %exitcond.not.i187.i, label %ReadMatchDistances.exit188.i, label %.lr.ph.i182.i, !llvm.loop !145

.critedge.loopexit.split.loop.exit.i184.i:        ; preds = %.lr.ph.i182.i
  %i.ok = trunc nuw i64 %indvars.iv.i183.i to i32
  br label %ReadMatchDistances.exit188.i

ReadMatchDistances.exit188.i:                     ; preds = %bb.bd, %.critedge.loopexit.split.loop.exit.i184.i, %bb.bc, %bb.bb
  %.1.i179.i = phi i32 [ %i.ok, %.critedge.loopexit.split.loop.exit.i184.i ], [ %i.nn, %bb.bb ], [ %i.nn, %bb.bc ], [ %spec.store.select.i180.i, %bb.bd ] ; 6 uses
  %i.ol = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.dj, align 4, !tbaa !76
  store i32 %i.nh, ptr %i.dl, align 4, !tbaa !14
  store i32 %.1.i179.i, ptr %i.dk, align 8, !tbaa !184
  %i.on = icmp ugt i32 %.1.i179.i, 1
  br i1 %i.on, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %ReadMatchDistances.exit188.i
  %i.oo = add i32 %i.nh, -1
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !14 ; 3 uses
  %.not158.i = icmp uge i32 %.1.i179.i, %.2149.fr.i
  %i.os = icmp ult i32 %i.or, %.1146.i
  %or.cond166.i = select i1 %.not158.i, i1 %i.os, i1 false
  br i1 %or.cond166.i, label %GetOptimumFast.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = add i32 %.2149.fr.i, 1                  ; 2 uses
  %i.ou = icmp eq i32 %.1.i179.i, %i.ot
  %i.ov = lshr i32 %i.or, 7
  %i.ow = icmp ule i32 %i.ov, %.1146.i
  %or.cond168.not214.i = select i1 %i.ou, i1 %i.ow, i1 false
  %i.ox = icmp ugt i32 %.1.i179.i, %i.ot
  %or.cond211.i = or i1 %i.ox, %or.cond168.not214.i
  br i1 %or.cond211.i, label %GetOptimumFast.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oy = add i32 %.1.i179.i, 1
  %i.oz = icmp ult i32 %i.oy, %.2149.fr.i
  %i.pa = icmp ult i32 %.2149.fr.i, 3
  %or.cond11.not218.i = or i1 %i.pa, %i.oz
  %i.pb = lshr i32 %.1146.i, 7
  %i.pc = icmp ule i32 %i.pb, %i.or
  %or.cond170.not.i = select i1 %or.cond11.not218.i, i1 true, i1 %i.pc
  br i1 %or.cond170.not.i, label %bb.bh, label %GetOptimumFast.exit

bb.bh:                                            ; preds = %bb.bg, %ReadMatchDistances.exit188.i, %ReadMatchDistances.exit188.thread.i
  %i.pd = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.pe = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.pf = tail call ptr %i.pd(ptr noundef %i.pe) #14, !inline_history !146 ; 9 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -1 ; 12 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !21  ; 7 uses
  %i.pi = add i32 %.2149.fr.i, -1                 ; 5 uses
  %i.pj = icmp ugt i32 %i.pi, 2
  %i.pk = load i32, ptr %i.dr, align 8, !tbaa !14
  %i.pl = add i32 %i.pk, 1
  %i.pm = zext i32 %i.pl to i64
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds i8, ptr %i.pg, i64 %i.pn ; 4 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !21
  %.not159.us.i = icmp eq i8 %i.ph, %i.pp         ; 2 uses
  br i1 %i.pj, label %.split252.us.preheader.i, label %.split252.preheader.i

.split252.preheader.i:                            ; preds = %bb.bh
  br i1 %.not159.us.i, label %bb.bq, label %select.unfold.i

.split252.us.preheader.i:                         ; preds = %bb.bh
  br i1 %.not159.us.i, label %bb.bi, label %select.unfold.us.i

bb.bi:                                            ; preds = %.split252.us.preheader.i
  %i.pq = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !21
  %.not160.us.i = icmp eq i8 %i.pq, %i.ps
  br i1 %.not160.us.i, label %.lr.ph249.us.preheader.i, label %select.unfold.us.i

.lr.ph249.us.preheader.i:                         ; preds = %bb.bi
  %wide.trip.count287.i = zext i32 %i.pi to i64
  br label %.lr.ph249.us.i

bb.bj:                                            ; preds = %.lr.ph249.us.i
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %exitcond288.not.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count287.i
  br i1 %exitcond288.not.i, label %GetOptimumFast.exit, label %.lr.ph249.us.i, !llvm.loop !149

.lr.ph249.us.i:                                   ; preds = %bb.bj, %.lr.ph249.us.preheader.i
  %indvars.iv283.i = phi i64 [ 2, %.lr.ph249.us.preheader.i ], [ %indvars.iv.next284.i, %bb.bj ] ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv283.i
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !21
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 %indvars.iv283.i
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = icmp eq i8 %i.pu, %i.pw
  br i1 %i.px, label %bb.bj, label %select.unfold.us.i

select.unfold.us.i:                               ; preds = %.lr.ph249.us.i, %bb.bi, %.split252.us.preheader.i
  %i.py = load i32, ptr %i.ds, align 4, !tbaa !14
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
  br i1 %.not160.us.1.i, label %.lr.ph249.us.preheader.1.i, label %select.unfold.us.1.i

.lr.ph249.us.preheader.1.i:                       ; preds = %bb.bk
  %wide.trip.count287.1.i = zext i32 %i.pi to i64
  br label %.lr.ph249.us.1.i

.lr.ph249.us.1.i:                                 ; preds = %bb.bl, %.lr.ph249.us.preheader.1.i
  %indvars.iv283.1.i = phi i64 [ 2, %.lr.ph249.us.preheader.1.i ], [ %indvars.iv.next284.1.i, %bb.bl ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv283.1.i
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !21
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qc, i64 %indvars.iv283.1.i
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !21
  %i.ql = icmp eq i8 %i.qi, %i.qk
  br i1 %i.ql, label %bb.bl, label %select.unfold.us.1.i

select.unfold.us.1.i:                             ; preds = %.lr.ph249.us.1.i, %bb.bk, %select.unfold.us.i
  %i.qm = load i32, ptr %i.dt, align 8, !tbaa !14
  %i.qn = add i32 %i.qm, 1
  %i.qo = zext i32 %i.qn to i64
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.pg, i64 %i.qp ; 3 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !21
  %.not159.us.2.i = icmp eq i8 %i.ph, %i.qr
  br i1 %.not159.us.2.i, label %bb.bm, label %select.unfold.us.2.i

bb.bl:                                            ; preds = %.lr.ph249.us.1.i
  %indvars.iv.next284.1.i = add nuw nsw i64 %indvars.iv283.1.i, 1 ; 2 uses
  %exitcond288.1.not.i = icmp eq i64 %indvars.iv.next284.1.i, %wide.trip.count287.1.i
  br i1 %exitcond288.1.not.i, label %GetOptimumFast.exit, label %.lr.ph249.us.1.i, !llvm.loop !149

bb.bm:                                            ; preds = %select.unfold.us.1.i
  %i.qs = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !21
  %.not160.us.2.i = icmp eq i8 %i.qs, %i.qu
  br i1 %.not160.us.2.i, label %.lr.ph249.us.preheader.2.i, label %select.unfold.us.2.i

.lr.ph249.us.preheader.2.i:                       ; preds = %bb.bm
  %wide.trip.count287.2.i = zext i32 %i.pi to i64
  br label %.lr.ph249.us.2.i

.lr.ph249.us.2.i:                                 ; preds = %bb.bn, %.lr.ph249.us.preheader.2.i
  %indvars.iv283.2.i = phi i64 [ 2, %.lr.ph249.us.preheader.2.i ], [ %indvars.iv.next284.2.i, %bb.bn ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv283.2.i
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !21
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 %indvars.iv283.2.i
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !21
  %i.qz = icmp eq i8 %i.qw, %i.qy
  br i1 %i.qz, label %bb.bn, label %select.unfold.us.2.i

select.unfold.us.2.i:                             ; preds = %.lr.ph249.us.2.i, %bb.bm, %select.unfold.us.1.i
  %i.ra = load i32, ptr %i.du, align 4, !tbaa !14
  %i.rb = add i32 %i.ra, 1
  %i.rc = zext i32 %i.rb to i64
  %i.rd = sub nsw i64 0, %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.pg, i64 %i.rd ; 3 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !21
  %.not159.us.3.i = icmp eq i8 %i.ph, %i.rf
  br i1 %.not159.us.3.i, label %bb.bo, label %.split254.us.i

bb.bn:                                            ; preds = %.lr.ph249.us.2.i
  %indvars.iv.next284.2.i = add nuw nsw i64 %indvars.iv283.2.i, 1 ; 2 uses
  %exitcond288.2.not.i = icmp eq i64 %indvars.iv.next284.2.i, %wide.trip.count287.2.i
  br i1 %exitcond288.2.not.i, label %GetOptimumFast.exit, label %.lr.ph249.us.2.i, !llvm.loop !149

bb.bo:                                            ; preds = %select.unfold.us.2.i
  %i.rg = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !21
  %.not160.us.3.i = icmp eq i8 %i.rg, %i.ri
  br i1 %.not160.us.3.i, label %.lr.ph249.us.preheader.3.i, label %.split254.us.i

.lr.ph249.us.preheader.3.i:                       ; preds = %bb.bo
  %wide.trip.count287.3.i = zext i32 %i.pi to i64
  br label %.lr.ph249.us.3.i

.lr.ph249.us.3.i:                                 ; preds = %bb.bp, %.lr.ph249.us.preheader.3.i
  %indvars.iv283.3.i = phi i64 [ 2, %.lr.ph249.us.preheader.3.i ], [ %indvars.iv.next284.3.i, %bb.bp ] ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv283.3.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !21
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv283.3.i
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !21
  %i.rn = icmp eq i8 %i.rk, %i.rm
  br i1 %i.rn, label %bb.bp, label %.split254.us.i

bb.bp:                                            ; preds = %.lr.ph249.us.3.i
  %indvars.iv.next284.3.i = add nuw nsw i64 %indvars.iv283.3.i, 1 ; 2 uses
  %exitcond288.3.not.i = icmp eq i64 %indvars.iv.next284.3.i, %wide.trip.count287.3.i
  br i1 %exitcond288.3.not.i, label %GetOptimumFast.exit, label %.lr.ph249.us.3.i, !llvm.loop !149

bb.bq:                                            ; preds = %.split252.preheader.i
  %i.ro = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.rp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !21
  %.not160.i = icmp eq i8 %i.ro, %i.rq
  br i1 %.not160.i, label %GetOptimumFast.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.bq, %.split252.preheader.i
  %i.rr = load i32, ptr %i.ds, align 4, !tbaa !14
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
  %i.sa = load i32, ptr %i.dt, align 8, !tbaa !14
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
  %i.sj = load i32, ptr %i.du, align 4, !tbaa !14
  %i.sk = add i32 %i.sj, 1
  %i.sl = zext i32 %i.sk to i64
  %i.sm = sub nsw i64 0, %i.sl
  %i.sn = getelementptr inbounds i8, ptr %i.pg, i64 %i.sm ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !21
  %.not159.3.i = icmp eq i8 %i.ph, %i.so
  br i1 %.not159.3.i, label %bb.bt, label %.split254.us.i

bb.bt:                                            ; preds = %select.unfold.2.i
  %i.sp = load i8, ptr %i.pf, align 1, !tbaa !21
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !21
  %.not160.3.i = icmp eq i8 %i.sp, %i.sr
  br i1 %.not160.3.i, label %GetOptimumFast.exit, label %.split254.us.i

.split254.us.i:                                   ; preds = %.lr.ph249.us.3.i, %bb.bt, %select.unfold.2.i, %bb.bo, %select.unfold.us.2.i
  %i.ss = add i32 %.1146.i, 4                     ; 2 uses
  %i.st = add i32 %.2149.fr.i, -2                 ; 2 uses
  %.not.i189.i = icmp eq i32 %i.st, 0
  br i1 %.not.i189.i, label %GetOptimumFast.exit.thread, label %MovePos.exit.sink.split.i

GetOptimumFast.exit.thread:                       ; preds = %.split254.us.i
  %i.su = load i32, ptr %i.dv, align 4, !tbaa !77
  %i.sv = and i32 %i.su, %.2205
  br label %bb.hf

MovePos.exit.sink.split.sink.split.i:             ; preds = %bb.ay, %bb.ax, %bb.aw, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.i, %.critedge.us.3.i, %.critedge.us.2.i, %.critedge.us.1.i, %.critedge.us.i
  %.us-phi235.sink.i = phi i32 [ 3, %.critedge.us.3.i ], [ 3, %.preheader.3.i ], [ 0, %.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 0, %.critedge.us.i ], [ 1, %.critedge.us.1.i ], [ 2, %.critedge.us.2.i ], [ %.us-phi235.i, %bb.ay ], [ %.us-phi235.i, %bb.ax ], [ %.us-phi235.i, %bb.aw ]
  %.us-phi236.sink.i = phi i32 [ %.0135.lcssa.us.3.i, %.critedge.us.3.i ], [ 2, %.preheader.3.i ], [ 2, %.preheader.i ], [ 2, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ %.0135.lcssa.us.i, %.critedge.us.i ], [ %.0135.lcssa.us.1.i, %.critedge.us.1.i ], [ %.0135.lcssa.us.2.i, %.critedge.us.2.i ], [ %.us-phi236.i, %bb.ay ], [ %.us-phi236.i, %bb.ax ], [ %.us-phi236.i, %bb.aw ] ; 2 uses
  %i.sw = add i32 %.us-phi236.sink.i, -1
  br label %MovePos.exit.sink.split.i

MovePos.exit.sink.split.i:                        ; preds = %MovePos.exit.sink.split.sink.split.i, %.split254.us.i, %bb.aq
  %.1345 = phi i32 [ %.us-phi235.sink.i, %MovePos.exit.sink.split.sink.split.i ], [ %i.ss, %.split254.us.i ], [ %i.lx, %bb.aq ]
  %.sink322.i = phi i32 [ %i.sw, %MovePos.exit.sink.split.sink.split.i ], [ %i.st, %.split254.us.i ], [ %i.ly, %bb.aq ] ; 2 uses
  %.6.ph.i = phi i32 [ %.us-phi236.sink.i, %MovePos.exit.sink.split.sink.split.i ], [ %.2149.fr.i, %.split254.us.i ], [ %.0147.i, %bb.aq ]
  %i.sx = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.sy = add i32 %i.sx, %.sink322.i
  store i32 %i.sy, ptr %i.dj, align 4, !tbaa !76
  %i.sz = load ptr, ptr %i.dw, align 8, !tbaa !186
  %i.ta = load ptr, ptr %i.df, align 8, !tbaa !88
  tail call void %i.sz(ptr noundef %i.ta, i32 noundef %.sink322.i) #14, !inline_history !146
  br label %GetOptimumFast.exit

bb.bu:                                            ; preds = %CheckErrors.exit336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.tb = load i32, ptr %i.dx, align 8, !tbaa !74
  %i.tc = load i32, ptr %i.dy, align 4, !tbaa !75 ; 3 uses
  %.not.i230 = icmp eq i32 %i.tb, %i.tc
  br i1 %.not.i230, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.td ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !188 ; 2 uses
  %i.th = sub i32 %i.tg, %i.tc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 28
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !189
  store i32 %i.tg, ptr %i.dy, align 4, !tbaa !75
  br label %GetOptimum.exit

bb.bw:                                            ; preds = %bb.bu
  store i32 0, ptr %i.dx, align 8, !tbaa !74
  store i32 0, ptr %i.dy, align 4, !tbaa !75
  %i.tk = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.tm = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.tn = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.to = tail call i32 %i.tm(ptr noundef %i.tn) #14, !inline_history !150
  store i32 %i.to, ptr %i.dm, align 8, !tbaa !181
  %i.tp = load ptr, ptr %i.dn, align 8, !tbaa !182
  %i.tq = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.tr = tail call i32 %i.tp(ptr noundef %i.tq, ptr noundef nonnull %i.do) #14, !inline_history !150 ; 4 uses
  %.not.i.i258 = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i258, label %ReadMatchDistances.exit.i259, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ts = add i32 %i.tr, -2
  %i.tt = zext i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !14 ; 5 uses
  %i.tw = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.tx = icmp eq i32 %i.tv, %i.tw
  br i1 %i.tx, label %bb.bz, label %ReadMatchDistances.exit.i259

bb.bz:                                            ; preds = %bb.by
  %i.ty = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.tz = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.ua = tail call ptr %i.ty(ptr noundef %i.tz) #14, !inline_history !150
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -1 ; 2 uses
  %i.uc = add i32 %i.tr, -1
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !14
  %i.ug = add i32 %i.uf, 1
  %i.uh = load i32, ptr %i.dm, align 8, !tbaa !181
  %spec.store.select.i.i261 = tail call i32 @llvm.umin.i32(i32 %i.uh, i32 273) ; 3 uses
  %i.ui = zext i32 %i.ug to i64
  %i.uj = sub nsw i64 0, %i.ui
  %i.uk = getelementptr inbounds i8, ptr %i.ub, i64 %i.uj
  %i.ul = icmp ult i32 %i.tv, %spec.store.select.i.i261
  br i1 %i.ul, label %.lr.ph.preheader.i.i262, label %ReadMatchDistances.exit.i259

.lr.ph.preheader.i.i262:                          ; preds = %bb.bz
  %i.um = zext nneg i32 %i.tv to i64
  br label %.lr.ph.i.i263

.lr.ph.i.i263:                                    ; preds = %bb.ca, %.lr.ph.preheader.i.i262
  %indvars.iv.i.i264 = phi i64 [ %i.um, %.lr.ph.preheader.i.i262 ], [ %indvars.iv.next.i.i266, %bb.ca ] ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ub, i64 %indvars.iv.i.i264
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !21
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 %indvars.iv.i.i264
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !21
  %i.ur = icmp eq i8 %i.uo, %i.uq
  br i1 %i.ur, label %bb.ca, label %.critedge.loopexit.split.loop.exit.i.i265

bb.ca:                                            ; preds = %.lr.ph.i.i263
  %indvars.iv.next.i.i266 = add nuw nsw i64 %indvars.iv.i.i264, 1 ; 2 uses
  %lftr.wideiv.i.i267 = trunc i64 %indvars.iv.next.i.i266 to i32
  %exitcond.not.i.i268 = icmp eq i32 %spec.store.select.i.i261, %lftr.wideiv.i.i267
  br i1 %exitcond.not.i.i268, label %ReadMatchDistances.exit.i259, label %.lr.ph.i.i263, !llvm.loop !145

.critedge.loopexit.split.loop.exit.i.i265:        ; preds = %.lr.ph.i.i263
  %i.us = trunc nuw i64 %indvars.iv.i.i264 to i32
  br label %ReadMatchDistances.exit.i259

ReadMatchDistances.exit.i259:                     ; preds = %bb.ca, %.critedge.loopexit.split.loop.exit.i.i265, %bb.bz, %bb.by, %bb.bx
  %.1.i.i260 = phi i32 [ 0, %bb.bx ], [ %i.tv, %bb.by ], [ %i.tv, %bb.bz ], [ %i.us, %.critedge.loopexit.split.loop.exit.i.i265 ], [ %spec.store.select.i.i261, %bb.ca ]
  %i.ut = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.uu = add i32 %i.ut, 1
  store i32 %i.uu, ptr %i.dj, align 4, !tbaa !76
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.uv = load i32, ptr %i.dk, align 8, !tbaa !184
  %i.uw = load i32, ptr %i.dl, align 4, !tbaa !185
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %ReadMatchDistances.exit.i259
  %.0900.i = phi i32 [ %i.tr, %ReadMatchDistances.exit.i259 ], [ %i.uw, %bb.cb ] ; 2 uses
  %.0736.i = phi i32 [ %.1.i.i260, %ReadMatchDistances.exit.i259 ], [ %i.uv, %bb.cb ] ; 6 uses
  %i.ux = load i32, ptr %i.dm, align 8, !tbaa !181 ; 3 uses
  %i.uy = icmp ult i32 %i.ux, 2
  br i1 %i.uy, label %GetOptimum.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uz = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.va = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.vb = tail call ptr %i.uz(ptr noundef %i.va) #14, !inline_history !151 ; 6 uses
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -1 ; 10 uses
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !21  ; 6 uses
  %.not1059.i = icmp eq i32 %i.ux, 2              ; 4 uses
  %i.ve = tail call i32 @llvm.umax.i32(i32 %i.ux, i32 3)
  %umax.i231 = tail call i32 @llvm.umin.i32(i32 %i.ve, i32 273) ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa !14
  %i.vf = load i32, ptr %i.dr, align 8, !tbaa !14
  %i.vg = add i32 %i.vf, 1
  %i.vh = zext i32 %i.vg to i64
  %i.vi = sub nsw i64 0, %i.vh
  %i.vj = getelementptr inbounds i8, ptr %i.vc, i64 %i.vi ; 3 uses
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !21
  %.not830.i = icmp eq i8 %i.vd, %i.vk
  br i1 %.not830.i, label %bb.ce, label %.critedge.i

bb.ce:                                            ; preds = %bb.cd
  %i.vl = load i8, ptr %i.vb, align 1, !tbaa !21
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !21
  %.not831.i = icmp ne i8 %i.vl, %i.vn            ; 2 uses
  %brmerge.i = or i1 %.not1059.i, %.not831.i
  %.mux.i = select i1 %.not831.i, i32 0, i32 2
  br i1 %brmerge.i, label %.critedge.i, label %.lr.ph.preheader.i251

.lr.ph.preheader.i251:                            ; preds = %bb.ce
  %wide.trip.count.i252 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.cf, %.lr.ph.preheader.i251
  %indvars.iv.i254 = phi i64 [ 2, %.lr.ph.preheader.i251 ], [ %indvars.iv.next.i256, %bb.cf ] ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vc, i64 %indvars.iv.i254
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 %indvars.iv.i254
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !21
  %i.vs = icmp eq i8 %i.vp, %i.vr
  br i1 %i.vs, label %bb.cf, label %.critedge.loopexit.split.loop.exit.i255

bb.cf:                                            ; preds = %.lr.ph.i253
  %indvars.iv.next.i256 = add nuw nsw i64 %indvars.iv.i254, 1 ; 2 uses
  %exitcond.not.i257 = icmp eq i64 %indvars.iv.next.i256, %wide.trip.count.i252
  br i1 %exitcond.not.i257, label %.critedge.i, label %.lr.ph.i253, !llvm.loop !152

.critedge.loopexit.split.loop.exit.i255:          ; preds = %.lr.ph.i253
  %i.vt = trunc nuw nsw i64 %indvars.iv.i254 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cf, %.critedge.loopexit.split.loop.exit.i255, %bb.ce, %bb.cd
  %storemerge1223.i = phi i32 [ 0, %bb.cd ], [ %.mux.i, %bb.ce ], [ %i.vt, %.critedge.loopexit.split.loop.exit.i255 ], [ %umax.i231, %bb.cf ] ; 5 uses
  store i32 %storemerge1223.i, ptr %i.b, align 16, !tbaa !14
  %i.vu = load i32, ptr %i.ds, align 4, !tbaa !14
  %i.vv = add i32 %i.vu, 1
  %i.vw = zext i32 %i.vv to i64
  %i.vx = sub nsw i64 0, %i.vw
  %i.vy = getelementptr inbounds i8, ptr %i.vc, i64 %i.vx ; 3 uses
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !21
  %.not830.1.i = icmp eq i8 %i.vd, %i.vz
  br i1 %.not830.1.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge.i
  %i.wa = load i8, ptr %i.vb, align 1, !tbaa !21
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !21
  %.not831.1.i = icmp eq i8 %i.wa, %i.wc
  br i1 %.not831.1.i, label %.preheader972.1.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  store i32 0, ptr %i.ea, align 4, !tbaa !14
  br label %bb.cj

.preheader972.1.i:                                ; preds = %bb.cg
  br i1 %.not1059.i, label %.critedge.1.i, label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %.preheader972.1.i
  %wide.trip.count.1.i246 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ci, %.lr.ph.preheader.1.i
  %indvars.iv.1.i247 = phi i64 [ 2, %.lr.ph.preheader.1.i ], [ %indvars.iv.next.1.i249, %bb.ci ] ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vc, i64 %indvars.iv.1.i247
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !21
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 %indvars.iv.1.i247
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !21
  %i.wh = icmp eq i8 %i.we, %i.wg
  br i1 %i.wh, label %bb.ci, label %.critedge.1.loopexit.split.loop.exit1249.i

bb.ci:                                            ; preds = %.lr.ph.1.i
  %indvars.iv.next.1.i249 = add nuw nsw i64 %indvars.iv.1.i247, 1 ; 2 uses
  %exitcond.1.not.i250 = icmp eq i64 %indvars.iv.next.1.i249, %wide.trip.count.1.i246
  br i1 %exitcond.1.not.i250, label %.critedge.1.i, label %.lr.ph.1.i, !llvm.loop !152

.critedge.1.loopexit.split.loop.exit1249.i:       ; preds = %.lr.ph.1.i
  %i.wi = trunc nuw nsw i64 %indvars.iv.1.i247 to i32
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.ci, %.critedge.1.loopexit.split.loop.exit1249.i, %.preheader972.1.i
  %.0746.lcssa.1.i = phi i32 [ 2, %.preheader972.1.i ], [ %i.wi, %.critedge.1.loopexit.split.loop.exit1249.i ], [ %umax.i231, %bb.ci ] ; 3 uses
  store i32 %.0746.lcssa.1.i, ptr %i.ea, align 4, !tbaa !14
  %i.wj = icmp ugt i32 %.0746.lcssa.1.i, %storemerge1223.i
  %spec.select.1.i248 = zext i1 %i.wj to i32
  br label %bb.cj

bb.cj:                                            ; preds = %.critedge.1.i, %bb.ch
  %i.wk = phi i32 [ 0, %bb.ch ], [ %.0746.lcssa.1.i, %.critedge.1.i ] ; 2 uses
  %.2745.1.i = phi i32 [ 0, %bb.ch ], [ %spec.select.1.i248, %.critedge.1.i ] ; 3 uses
  %i.wl = load i32, ptr %i.dt, align 8, !tbaa !14
  %i.wm = add i32 %i.wl, 1
  %i.wn = zext i32 %i.wm to i64
  %i.wo = sub nsw i64 0, %i.wn
  %i.wp = getelementptr inbounds i8, ptr %i.vc, i64 %i.wo ; 3 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !21
  %.not830.2.i = icmp eq i8 %i.vd, %i.wq
  br i1 %.not830.2.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.wr = load i8, ptr %i.vb, align 1, !tbaa !21
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !21
  %.not831.2.i = icmp eq i8 %i.wr, %i.wt
  br i1 %.not831.2.i, label %.preheader972.2.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 0, ptr %i.eb, align 8, !tbaa !14
  br label %bb.cn

.preheader972.2.i:                                ; preds = %bb.ck
  br i1 %.not1059.i, label %.critedge.2.i, label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %.preheader972.2.i
  %wide.trip.count.2.i241 = zext nneg i32 %umax.i231 to i64
  br label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.cm, %.lr.ph.preheader.2.i
  %indvars.iv.2.i242 = phi i64 [ 2, %.lr.ph.preheader.2.i ], [ %indvars.iv.next.2.i244, %bb.cm ] ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vc, i64 %indvars.iv.2.i242
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !21
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wp, i64 %indvars.iv.2.i242
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !21
  %i.wy = icmp eq i8 %i.wv, %i.wx
  br i1 %i.wy, label %bb.cm, label %.critedge.2.loopexit.split.loop.exit1251.i

bb.cm:                                            ; preds = %.lr.ph.2.i
  %indvars.iv.next.2.i244 = add nuw nsw i64 %indvars.iv.2.i242, 1 ; 2 uses
  %exitcond.2.not.i245 = icmp eq i64 %indvars.iv.next.2.i244, %wide.trip.count.2.i241
  br i1 %exitcond.2.not.i245, label %.critedge.2.i, label %.lr.ph.2.i, !llvm.loop !152

.critedge.2.loopexit.split.loop.exit1251.i:       ; preds = %.lr.ph.2.i
  %i.wz = trunc nuw nsw i64 %indvars.iv.2.i242 to i32
  br label %.critedge.2.i

.critedge.2.i:                                    ; preds = %bb.cm, %.critedge.2.loopexit.split.loop.exit1251.i, %.preheader972.2.i
  %.0746.lcssa.2.i = phi i32 [ 2, %.preheader972.2.i ], [ %i.wz, %.critedge.2.loopexit.split.loop.exit1251.i ], [ %umax.i231, %bb.cm ] ; 3 uses
  store i32 %.0746.lcssa.2.i, ptr %i.eb, align 8, !tbaa !14
  %i.xa = zext nneg i32 %.2745.1.i to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !14
  %i.xd = icmp ugt i32 %.0746.lcssa.2.i, %i.xc
  %spec.select.2.i243 = select i1 %i.xd, i32 2, i32 %.2745.1.i
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.2.i, %bb.cl
  %i.xe = phi i32 [ 0, %bb.cl ], [ %.0746.lcssa.2.i, %.critedge.2.i ] ; 2 uses
  %.2745.2.i = phi i32 [ %.2745.1.i, %bb.cl ], [ %spec.select.2.i243, %.critedge.2.i ] ; 4 uses
  %i.xf = load i32, ptr %i.du, align 4, !tbaa !14
  %i.xg = add i32 %i.xf, 1
  %i.xh = zext i32 %i.xg to i64
  %i.xi = sub nsw i64 0, %i.xh
  %i.xj = getelementptr inbounds i8, ptr %i.vc, i64 %i.xi ; 3 uses
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !21
  %.not830.3.i = icmp eq i8 %i.vd, %i.xk
  br i1 %.not830.3.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xl = load i8, ptr %i.vb, align 1, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 1
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !21
end_hunk_1
begin_hunk_2_@LzmaEnc_CodeOneBlock:bb.a
  %i.aig = select i1 %i.aif, i32 %i.aia, i32 3    ; 2 uses
  %i.aih = icmp ult i32 %i.ahz, 128
  br i1 %i.aih, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aii = zext i32 %i.aig to i64
  %i.aij = getelementptr inbounds nuw [512 x i8], ptr %i.ez, i64 %i.aii
  %i.aik = zext nneg i32 %i.ahz to i64
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !14
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %notsub.i = add i32 %i.ahz, -524288
  %isneg.inv.i = icmp slt i32 %notsub.i, 0
  %i.ain = select i1 %isneg.inv.i, i32 6, i32 18  ; 2 uses
  %i.aio = lshr i32 %i.ahz, %i.ain
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !21
  %i.ais = zext i8 %i.air to i32
  %i.ait = shl nuw nsw i32 %i.ain, 1
  %i.aiu = add nuw nsw i32 %i.ait, %i.ais
  %i.aiv = and i32 %i.ahz, 15
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.aiw
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !14
  %i.aiz = zext i32 %i.aig to i64
  %i.aja = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %i.aiz
  %i.ajb = zext nneg i32 %i.aiu to i64
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.ajb
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !14
  %i.aje = add i32 %i.ajd, %i.aiy
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn.i = phi i32 [ %i.aim, %bb.ds ], [ %i.aje, %bb.dt ]
  %.0737.i = add i32 %i.aie, %.pn.i               ; 2 uses
  %i.ajf = zext i32 %.1756.i to i64
  %i.ajg = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ajf ; 5 uses
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !191
  %i.aji = icmp ult i32 %.0737.i, %i.ajh
  br i1 %i.aji, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %.0737.i, ptr %i.ajg, align 4, !tbaa !191
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 24
  store i32 0, ptr %i.ajj, align 4, !tbaa !188
  %i.ajk = add i32 %i.ahz, 4
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajg, i64 28
  store i32 %i.ajk, ptr %i.ajl, align 4, !tbaa !189
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  store i32 0, ptr %i.ajm, align 4, !tbaa !192
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ajn = zext i32 %.1739.i to i64
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !14
  %i.ajq = icmp ne i32 %.1756.i, %i.ajp           ; 2 uses
  %i.ajr = add i32 %.1739.i, 2                    ; 2 uses
  %i.ajs = icmp ne i32 %i.ajr, %.0900.i
  %.not959.i = select i1 %i.ajq, i1 true, i1 %i.ajs
  br i1 %.not959.i, label %bb.dx, label %.lr.ph1056.i.preheader

bb.dx:                                            ; preds = %bb.dw
  %.3741.i = select i1 %i.ajq, i32 %.1739.i, i32 %i.ajr
  %i.ajt = add i32 %.1756.i, 1
  br label %bb.dr

._crit_edge1057.i:                                ; preds = %.thread945.i
  %i.aju = zext i32 %.16.i to i64
  %i.ajv = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.aju ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !188
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 28
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !189
  store i32 %.16.i, ptr %i.dx, align 8, !tbaa !74
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %._crit_edge1057.i
  %.046.i.i = phi i32 [ %i.ajz, %._crit_edge1057.i ], [ %i.akp, %bb.eb ]
  %.045.i.i = phi i32 [ %i.ajx, %._crit_edge1057.i ], [ %i.ako, %bb.eb ] ; 4 uses
  %.0.i844.i = phi i32 [ %.16.i, %._crit_edge1057.i ], [ %.045.i.i, %bb.eb ] ; 2 uses
  %i.aka = zext i32 %.0.i844.i to i64
  %i.akb = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.aka ; 3 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !192
  %.not.i845.i = icmp eq i32 %i.akd, 0
  %.phi.trans.insert.i.i = zext i32 %.045.i.i to i64
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %.phi.trans.insert.i.i ; 4 uses
  %.phi.trans.insert50.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 28 ; 2 uses
  br i1 %.not.i845.i, label %._crit_edge.i.i, label %bb.dz

._crit_edge.i.i:                                  ; preds = %bb.dy
  %.pre.i.i = load i32, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !189
  %.phi.trans.insert53.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  %.pre54.i.i = load i32, ptr %.phi.trans.insert53.i.i, align 4, !tbaa !188
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.ake = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 8
  store i32 0, ptr %i.ake, align 4, !tbaa !192
  %i.akf = add i32 %.045.i.i, -1                  ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akb, i64 12
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !194
  %.not47.i.i = icmp eq i32 %i.akh, 0
  br i1 %.not47.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aki = zext i32 %i.akf to i64
  %i.akj = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.aki ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  store i32 0, ptr %i.akk, align 4, !tbaa !192
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akj, i64 24
  %i.akn = load <2 x i32>, ptr %i.akl, align 4, !tbaa !14
  store <2 x i32> %i.akn, ptr %i.akm, align 4, !tbaa !14
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i
  %i.ako = phi i32 [ %.pre54.i.i, %._crit_edge.i.i ], [ %i.akf, %bb.dz ], [ %i.akf, %bb.ea ]
  %i.akp = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ -1, %bb.dz ], [ -1, %bb.ea ]
  %i.akq = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i.i, i64 24
  store i32 %.046.i.i, ptr %.phi.trans.insert50.i.i, align 4, !tbaa !189
  store i32 %.0.i844.i, ptr %i.akq, align 4, !tbaa !188
  %.not48.i.i = icmp eq i32 %.045.i.i, 0
  br i1 %.not48.i.i, label %Backward.exit.i, label %bb.dy, !llvm.loop !159

Backward.exit.i:                                  ; preds = %bb.eb
  %i.akr = load i32, ptr %i.fc, align 8, !tbaa !189
  %i.aks = load i32, ptr %i.fd, align 4, !tbaa !188 ; 2 uses
  store i32 %i.aks, ptr %i.dy, align 4, !tbaa !75
  br label %GetOptimum.exit

.lr.ph1056.i:                                     ; preds = %.lr.ph1056.i.preheader, %.thread945.i
  %indvars.iv447 = phi i32 [ %indvars.iv.next448, %.thread945.i ], [ 4094, %.lr.ph1056.i.preheader ] ; 5 uses
  %i.akt = phi i32 [ %i.apu, %.thread945.i ], [ %i.yr, %.lr.ph1056.i.preheader ] ; 2 uses
  %i.aku = phi i32 [ %i.bql, %.thread945.i ], [ 1, %.lr.ph1056.i.preheader ] ; 21 uses
  %.06971054.i = phi i32 [ %i.anf, %.thread945.i ], [ %.2205, %.lr.ph1056.i.preheader ] ; 2 uses
  %.07541050.i = phi i32 [ %i.aku, %.thread945.i ], [ 0, %.lr.ph1056.i.preheader ] ; 5 uses
  %.07571049.i = phi i32 [ %.16.i, %.thread945.i ], [ %..0736.i, %.lr.ph1056.i.preheader ] ; 7 uses
  %i.akv = zext i32 %indvars.iv447 to i64         ; 2 uses
  %i.akw = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.akx = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.aky = tail call i32 %i.akw(ptr noundef %i.akx) #14, !inline_history !150
  store i32 %i.aky, ptr %i.dm, align 8, !tbaa !181
  %i.akz = load ptr, ptr %i.dn, align 8, !tbaa !182
  %i.ala = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.alb = tail call i32 %i.akz(ptr noundef %i.ala, ptr noundef nonnull %i.do) #14, !inline_history !150 ; 5 uses
  %.not.i846.i = icmp eq i32 %i.alb, 0
  br i1 %.not.i846.i, label %ReadMatchDistances.exit856.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph1056.i
  %i.alc = add i32 %i.alb, -2
  %i.ald = zext i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ald
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !14 ; 5 uses
  %i.alg = load i32, ptr %i.dp, align 8, !tbaa !51
  %i.alh = icmp eq i32 %i.alf, %i.alg
  br i1 %i.alh, label %bb.ed, label %ReadMatchDistances.exit856.i

bb.ed:                                            ; preds = %bb.ec
  %i.ali = load ptr, ptr %i.dq, align 8, !tbaa !94
  %i.alj = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.alk = tail call ptr %i.ali(ptr noundef %i.alj) #14, !inline_history !150
  %i.all = getelementptr inbounds i8, ptr %i.alk, i64 -1 ; 2 uses
  %i.alm = add i32 %i.alb, -1
  %i.aln = zext i32 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aln
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !14
  %i.alq = add i32 %i.alp, 1
  %i.alr = load i32, ptr %i.dm, align 8, !tbaa !181
  %spec.store.select.i848.i = tail call i32 @llvm.umin.i32(i32 %i.alr, i32 273) ; 3 uses
  %i.als = zext i32 %i.alq to i64
  %i.alt = sub nsw i64 0, %i.als
  %i.alu = getelementptr inbounds i8, ptr %i.all, i64 %i.alt
  %i.alv = icmp ult i32 %i.alf, %spec.store.select.i848.i
  br i1 %i.alv, label %.lr.ph.preheader.i849.i, label %ReadMatchDistances.exit856.i

.lr.ph.preheader.i849.i:                          ; preds = %bb.ed
  %i.alw = zext nneg i32 %i.alf to i64
  br label %.lr.ph.i850.i

.lr.ph.i850.i:                                    ; preds = %bb.ee, %.lr.ph.preheader.i849.i
  %indvars.iv.i851.i = phi i64 [ %i.alw, %.lr.ph.preheader.i849.i ], [ %indvars.iv.next.i853.i, %bb.ee ] ; 4 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.all, i64 %indvars.iv.i851.i
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !21
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 %indvars.iv.i851.i
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !21
  %i.amb = icmp eq i8 %i.aly, %i.ama
  br i1 %i.amb, label %bb.ee, label %.critedge.loopexit.split.loop.exit.i852.i

bb.ee:                                            ; preds = %.lr.ph.i850.i
  %indvars.iv.next.i853.i = add nuw nsw i64 %indvars.iv.i851.i, 1 ; 2 uses
  %lftr.wideiv.i854.i = trunc i64 %indvars.iv.next.i853.i to i32
  %exitcond.not.i855.i = icmp eq i32 %spec.store.select.i848.i, %lftr.wideiv.i854.i
  br i1 %exitcond.not.i855.i, label %ReadMatchDistances.exit856.i, label %.lr.ph.i850.i, !llvm.loop !145

.critedge.loopexit.split.loop.exit.i852.i:        ; preds = %.lr.ph.i850.i
  %i.amc = trunc nuw i64 %indvars.iv.i851.i to i32
  br label %ReadMatchDistances.exit856.i

ReadMatchDistances.exit856.i:                     ; preds = %bb.ee, %.critedge.loopexit.split.loop.exit.i852.i, %bb.ed, %bb.ec, %.lr.ph1056.i
  %.1.i847.i = phi i32 [ 0, %.lr.ph1056.i ], [ %i.alf, %bb.ec ], [ %i.alf, %bb.ed ], [ %i.amc, %.critedge.loopexit.split.loop.exit.i852.i ], [ %spec.store.select.i848.i, %bb.ee ] ; 5 uses
  %i.amd = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.ame = add i32 %i.amd, 1
  store i32 %i.ame, ptr %i.dj, align 4, !tbaa !76
  %i.amf = load i32, ptr %i.dp, align 8, !tbaa !51
  %.not811.i = icmp ult i32 %.1.i847.i, %i.amf
  br i1 %.not811.i, label %bb.ek, label %bb.ef

bb.ef:                                            ; preds = %ReadMatchDistances.exit856.i
  store i32 %i.alb, ptr %i.dl, align 4, !tbaa !185
  store i32 %.1.i847.i, ptr %i.dk, align 8, !tbaa !184
  %i.amg = zext i32 %i.aku to i64
  %i.amh = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.amg ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 24
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !188
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amh, i64 28
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !189
  store i32 %i.aku, ptr %i.dx, align 8, !tbaa !74
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ej, %bb.ef
  %.046.i857.i = phi i32 [ %i.aml, %bb.ef ], [ %i.anb, %bb.ej ]
  %.045.i858.i = phi i32 [ %i.amj, %bb.ef ], [ %i.ana, %bb.ej ] ; 4 uses
  %.0.i859.i = phi i32 [ %i.aku, %bb.ef ], [ %.045.i858.i, %bb.ej ] ; 2 uses
  %i.amm = zext i32 %.0.i859.i to i64
  %i.amn = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.amm ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !192
  %.not.i860.i = icmp eq i32 %i.amp, 0
  %.phi.trans.insert.i861.i = zext i32 %.045.i858.i to i64
  %.phi.trans.insert49.i862.i = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %.phi.trans.insert.i861.i ; 4 uses
  %.phi.trans.insert50.i863.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i862.i, i64 28 ; 2 uses
  br i1 %.not.i860.i, label %._crit_edge.i866.i, label %bb.eh

._crit_edge.i866.i:                               ; preds = %bb.eg
  %.pre.i867.i = load i32, ptr %.phi.trans.insert50.i863.i, align 4, !tbaa !189
  %.phi.trans.insert53.i868.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i862.i, i64 24
  %.pre54.i869.i = load i32, ptr %.phi.trans.insert53.i868.i, align 4, !tbaa !188
  br label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.amq = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i862.i, i64 8
  store i32 0, ptr %i.amq, align 4, !tbaa !192
  %i.amr = add i32 %.045.i858.i, -1               ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amn, i64 12
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !194
  %.not47.i864.i = icmp eq i32 %i.amt, 0
  br i1 %.not47.i864.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.amu = zext i32 %i.amr to i64
  %i.amv = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.amu ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  store i32 0, ptr %i.amw, align 4, !tbaa !192
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amn, i64 16
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 24
  %i.amz = load <2 x i32>, ptr %i.amx, align 4, !tbaa !14
  store <2 x i32> %i.amz, ptr %i.amy, align 4, !tbaa !14
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %._crit_edge.i866.i
  %i.ana = phi i32 [ %.pre54.i869.i, %._crit_edge.i866.i ], [ %i.amr, %bb.eh ], [ %i.amr, %bb.ei ]
  %i.anb = phi i32 [ %.pre.i867.i, %._crit_edge.i866.i ], [ -1, %bb.eh ], [ -1, %bb.ei ]
  %i.anc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert49.i862.i, i64 24
  store i32 %.046.i857.i, ptr %.phi.trans.insert50.i863.i, align 4, !tbaa !189
  store i32 %.0.i859.i, ptr %i.anc, align 4, !tbaa !188
  %.not48.i865.i = icmp eq i32 %.045.i858.i, 0
  br i1 %.not48.i865.i, label %Backward.exit870.i, label %bb.eg, !llvm.loop !159

Backward.exit870.i:                               ; preds = %bb.ej
  %i.and = load i32, ptr %i.fc, align 8, !tbaa !189
  %i.ane = load i32, ptr %i.fd, align 4, !tbaa !188 ; 2 uses
  store i32 %i.ane, ptr %i.dy, align 4, !tbaa !75
  br label %GetOptimum.exit

bb.ek:                                            ; preds = %ReadMatchDistances.exit856.i
  %i.anf = add i32 %.06971054.i, 1                ; 5 uses
  %i.ang = zext i32 %i.aku to i64
  %i.anh = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.ang ; 12 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 24
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !188 ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !192
  %.not812.i = icmp eq i32 %i.anl, 0
  br i1 %.not812.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.anm = add i32 %i.anj, -1                     ; 3 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anh, i64 12
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !194
  %.not813.i = icmp eq i32 %i.ano, 0
  br i1 %.not813.i, label %.thread.thread.i, label %.thread.i232

.thread.i232:                                     ; preds = %bb.el
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !195
  %i.anr = zext i32 %i.anq to i64                 ; 3 uses
  %i.ans = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.anr
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !190
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anh, i64 20
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !196 ; 3 uses
  %i.anx = icmp ult i32 %i.anw, 4                 ; 2 uses
  %i.any = zext i32 %i.anu to i64
  %kRepNextStates.kMatchNextStates.i = select i1 %i.anx, ptr @kRepNextStates, ptr @kMatchNextStates
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %kRepNextStates.kMatchNextStates.i, i64 %i.any
  %.0728.i = load i32, ptr %i.anz, align 4, !tbaa !14
  %i.aoa = zext i32 %.0728.i to i64
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.aoa
  %.1729903.i = load i32, ptr %i.aob, align 4, !tbaa !14 ; 2 uses
  %i.aoc = icmp eq i32 %i.anm, %.07541050.i
  br i1 %i.aoc, label %bb.en, label %.thread907.i

bb.em:                                            ; preds = %bb.ek
  %i.aod = zext i32 %i.anj to i64                 ; 2 uses
  %i.aoe = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.aod
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 4
  %.1729.i = load i32, ptr %i.aof, align 4, !tbaa !14 ; 2 uses
  %i.aog = icmp eq i32 %i.anj, %.07541050.i
  br i1 %i.aog, label %bb.en, label %.thread907.thread.i

.thread.thread.i:                                 ; preds = %bb.el
  %i.aoh = zext i32 %i.anm to i64                 ; 2 uses
  %i.aoi = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %i.aoh
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  %.07281226.i = load i32, ptr %i.aoj, align 4, !tbaa !14
  %i.aok = zext i32 %.07281226.i to i64
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.aok
  %.17299031227.i = load i32, ptr %i.aol, align 4, !tbaa !14 ; 2 uses
  %i.aom = icmp eq i32 %i.anm, %.07541050.i
  br i1 %i.aom, label %bb.en, label %.thread907.thread.i

bb.en:                                            ; preds = %.thread.thread.i, %bb.em, %.thread.i232
  %.1729906.i = phi i32 [ %.1729903.i, %.thread.i232 ], [ %.1729.i, %bb.em ], [ %.17299031227.i, %.thread.thread.i ]
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anh, i64 28
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !189
  %i.aop = icmp eq i32 %i.aoo, 0
  %i.aoq = zext i32 %.1729906.i to i64            ; 2 uses
  br i1 %i.aop, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr @kShortRepNextStates, i64 %i.aoq
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !14
  br label %.loopexit.i

bb.ep:                                            ; preds = %bb.en
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr @kLiteralNextStates, i64 %i.aoq
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !14
  br label %.loopexit.i

.thread907.i:                                     ; preds = %.thread.i232
  %i.aov = zext i32 %.1729903.i to i64
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr @kRepNextStates, i64 %i.aov
  %.2730.i = load i32, ptr %i.aow, align 4, !tbaa !14 ; 2 uses
  br i1 %i.anx, label %bb.eq, label %.loopexit.loopexit1061.i

.thread907.thread.i:                              ; preds = %.thread.thread.i, %bb.em
  %.pre-phi486 = phi i64 [ %i.aoh, %.thread.thread.i ], [ %i.aod, %bb.em ] ; 2 uses
  %.1729905911.i = phi i32 [ %.17299031227.i, %.thread.thread.i ], [ %.1729.i, %bb.em ]
  %i.aox = getelementptr inbounds nuw i8, ptr %i.anh, i64 28
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !189 ; 3 uses
  %i.aoz = icmp ult i32 %i.aoy, 4
  %i.apa = zext i32 %.1729905911.i to i64         ; 2 uses
  br i1 %i.aoz, label %.thread914.i, label %.thread921.i

.thread914.i:                                     ; preds = %.thread907.thread.i
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr @kRepNextStates, i64 %i.apa
  %.2730918.i = load i32, ptr %i.apb, align 4, !tbaa !14
  br label %bb.eq

.thread921.i:                                     ; preds = %.thread907.thread.i
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr @kMatchNextStates, i64 %i.apa
  %.2730925.i = load i32, ptr %i.apc, align 4, !tbaa !14
  br label %.loopexit.loopexit1061.i

bb.eq:                                            ; preds = %.thread907.i, %.thread914.i
  %.pn960.i = phi i64 [ %.pre-phi486, %.thread914.i ], [ %i.anr, %.thread907.i ] ; 2 uses
  %.2730920.i = phi i32 [ %.2730918.i, %.thread914.i ], [ %.2730.i, %.thread907.i ] ; 2 uses
  %.0721919.i = phi i32 [ %i.aoy, %.thread914.i ], [ %i.anw, %.thread907.i ] ; 5 uses
  %i.apd = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %.pn960.i
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 32 ; 2 uses
  %i.apf = zext nneg i32 %.0721919.i to i64       ; 2 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.ape, i64 %i.apf
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !14 ; 2 uses
  store i32 %i.aph, ptr %i.a, align 16, !tbaa !14
  %.not816996.i = icmp eq i32 %.0721919.i, 0
  br i1 %.not816996.i, label %.lr.ph1001.preheader.i, label %.preheader964.i

.preheader964.i:                                  ; preds = %bb.eq
  %i.api = shl nuw nsw i64 %i.apf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fa, ptr nonnull align 4 %i.ape, i64 %i.api, i1 false), !tbaa !14
  %narrow.i = add nuw nsw i32 %.0721919.i, 1
  %i.apj = icmp samesign ult i32 %.0721919.i, 3
  br i1 %i.apj, label %.lr.ph1001.preheader.i, label %.loopexit.i

.lr.ph1001.preheader.i:                           ; preds = %.preheader964.i, %bb.eq
  %.0719.lcssa1231.i = phi i32 [ %narrow.i, %.preheader964.i ], [ 1, %bb.eq ]
end_hunk_2

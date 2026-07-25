inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@decode_mcu:bb.a
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bx ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch ; 3 uses
  %i.cj = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef %i.ci)
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.cf, align 4, !tbaa !3
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cl) ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cp)
  %.not155 = icmp eq i32 %i.cq, 0
  br i1 %.not155, label %.loopexit172, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !64 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20 ; 2 uses
  %i.ct = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cs)
  %.not156181 = icmp eq i32 %i.ct, 0
  br i1 %.not156181, label %.loopexit172, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 21 ; 2 uses
  %i.cv = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cu)
  %.not156 = icmp eq i32 %i.cv, 0
  br i1 %.not156, label %.loopexit172, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 22 ; 2 uses
  %i.cx = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cw)
  %.not156.1 = icmp eq i32 %i.cx, 0
  br i1 %.not156.1, label %.loopexit172, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 23 ; 2 uses
  %i.cz = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cy)
  %.not156.2 = icmp eq i32 %i.cz, 0
  br i1 %.not156.2, label %.loopexit172, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.db = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.da)
  %.not156.3 = icmp eq i32 %i.db, 0
  br i1 %.not156.3, label %.loopexit172, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 25 ; 2 uses
  %i.dd = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.dc)
  %.not156.4 = icmp eq i32 %i.dd, 0
  br i1 %.not156.4, label %.loopexit172, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 26 ; 2 uses
  %i.df = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.de)
  %.not156.5 = icmp eq i32 %i.df, 0
  br i1 %.not156.5, label %.loopexit172, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 27 ; 2 uses
  %i.dh = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.dg)
  %.not156.6 = icmp eq i32 %i.dh, 0
  br i1 %.not156.6, label %.loopexit172, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 28 ; 2 uses
  %i.dj = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.di)
  %.not156.7 = icmp eq i32 %i.dj, 0
  br i1 %.not156.7, label %.loopexit172, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 29 ; 2 uses
  %i.dl = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.dk)
  %.not156.8 = icmp eq i32 %i.dl, 0
  br i1 %.not156.8, label %.loopexit172, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 30 ; 2 uses
  %i.dn = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.dm)
  %.not156.9 = icmp eq i32 %i.dn, 0
  br i1 %.not156.9, label %.loopexit172, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 31 ; 2 uses
  %i.dp = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.do)
  %.not156.10 = icmp eq i32 %i.dp, 0
  br i1 %.not156.10, label %.loopexit172, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.dr = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.dq)
  %.not156.11 = icmp eq i32 %i.dr, 0
  br i1 %.not156.11, label %.loopexit172, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 33 ; 2 uses
  %i.dt = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.ds)
  %.not156.12 = icmp eq i32 %i.dt, 0
  br i1 %.not156.12, label %.loopexit172, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 34 ; 2 uses
  %i.dv = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.du)
  %.not156.13 = icmp eq i32 %i.dv, 0
  br i1 %.not156.13, label %.loopexit172, label %.loopexit174.sink.split

.loopexit172:                                     ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %bb.q, %bb.p
  %.1138 = phi ptr [ %i.cp, %bb.p ], [ %i.cs, %bb.q ], [ %i.cu, %.lr.ph.preheader ], [ %i.cw, %.lr.ph.1 ], [ %i.cy, %.lr.ph.2 ], [ %i.da, %.lr.ph.3 ], [ %i.dc, %.lr.ph.4 ], [ %i.de, %.lr.ph.5 ], [ %i.dg, %.lr.ph.6 ], [ %i.di, %.lr.ph.7 ], [ %i.dk, %.lr.ph.8 ], [ %i.dm, %.lr.ph.9 ], [ %i.do, %.lr.ph.10 ], [ %i.dq, %.lr.ph.11 ], [ %i.ds, %.lr.ph.12 ], [ %i.du, %.lr.ph.13 ]
  %.1 = phi i32 [ 0, %bb.p ], [ 1, %bb.q ], [ 2, %.lr.ph.preheader ], [ 4, %.lr.ph.1 ], [ 8, %.lr.ph.2 ], [ 16, %.lr.ph.3 ], [ 32, %.lr.ph.4 ], [ 64, %.lr.ph.5 ], [ 128, %.lr.ph.6 ], [ 256, %.lr.ph.7 ], [ 512, %.lr.ph.8 ], [ 1024, %.lr.ph.9 ], [ 2048, %.lr.ph.10 ], [ 4096, %.lr.ph.11 ], [ 8192, %.lr.ph.12 ], [ 16384, %.lr.ph.13 ] ; 5 uses
  %i.dw = getelementptr inbounds i8, ptr %i.bm, i64 %i.cc
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !39
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = lshr i64 %i.dz, 1
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = icmp slt i32 %.1, %i.eb
  br i1 %i.ec, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.loopexit172
  %i.ed = getelementptr inbounds i8, ptr %i.bn, i64 %i.cc
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !39
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = lshr i64 %i.eg, 1
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = icmp sgt i32 %.1, %i.ei
  %i.ek = shl nuw nsw i32 %i.cm, 2                ; 2 uses
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.el = add nuw nsw i32 %i.ek, 12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.em = add nuw nsw i32 %i.ek, 4
  br label %bb.u

bb.u:                                             ; preds = %.loopexit172, %bb.s, %bb.t
  %.sink = phi i32 [ %i.el, %bb.s ], [ %i.em, %bb.t ], [ 0, %.loopexit172 ]
  store i32 %.sink, ptr %i.cf, align 4, !tbaa !3
  %i.en = getelementptr inbounds nuw i8, ptr %.1138, i64 14
  %i.eo = lshr i32 %.1, 1                         ; 2 uses
  %.not157185 = icmp eq i32 %i.eo, 0
  br i1 %.not157185, label %._crit_edge, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.u, %.lr.ph187
  %i.ep = phi i32 [ %i.es, %.lr.ph187 ], [ %i.eo, %bb.u ] ; 2 uses
  %.0127186 = phi i32 [ %spec.select, %.lr.ph187 ], [ %.1, %bb.u ]
  %i.eq = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.en)
  %.not159 = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not159, i32 0, i32 %i.ep
  %spec.select = or i32 %i.er, %.0127186          ; 2 uses
  %i.es = lshr i32 %i.ep, 1                       ; 2 uses
  %.not157 = icmp eq i32 %i.es, 0
  br i1 %.not157, label %._crit_edge, label %.lr.ph187, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph187, %bb.u
  %.0127.lcssa = phi i32 [ %.1, %bb.u ], [ %spec.select, %.lr.ph187 ] ; 2 uses
  %i.et = add nsw i32 %.0127.lcssa, 1
  %.not158 = icmp eq i32 %i.cm, 0
  %i.eu = xor i32 %.0127.lcssa, -1
  %spec.select169 = select i1 %.not158, i32 %i.et, i32 %i.eu
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bx ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = add nsw i32 %i.ew, %spec.select169
  %i.ey = and i32 %i.ex, 65535
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.o
  %.not160 = icmp eq ptr %i.bu, null              ; 2 uses
  br i1 %.not160, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bx
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = trunc i32 %i.fa to i16
  store i16 %i.fb, ptr %i.bu, align 2, !tbaa !80
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !65
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.br, i64 %i.fe
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.ae
  %.0133202 = phi i32 [ 1, %bb.x ], [ %i.hq, %bb.ae ] ; 3 uses
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !64
  %i.fi = mul i32 %.0133202, 3
  %i.fj = add i32 %i.fi, -3
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk ; 2 uses
  %i.fm = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef %i.fl)
  %.not161 = icmp eq i32 %i.fm, 0
  br i1 %.not161, label %.preheader.preheader, label %bb.af

.preheader.preheader:                             ; preds = %bb.y
  %smax = tail call i32 @llvm.smax.i32(i32 %.0133202, i32 63)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.z
  %.2139 = phi ptr [ %i.fq, %bb.z ], [ %i.fl, %.preheader.preheader ] ; 3 uses
  %.1134 = phi i32 [ %i.fr, %bb.z ], [ %.0133202, %.preheader.preheader ] ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.2139, i64 1
  %i.fo = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef nonnull %i.fn)
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %.2139, i64 3
  %i.fr = add i32 %.1134, 1
  %exitcond = icmp eq i32 %.1134, %smax
  br i1 %exitcond, label %.loopexit174.sink.split, label %.preheader, !llvm.loop !89

bb.aa:                                            ; preds = %.preheader
  %i.fs = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef nonnull %i.bq)
  %i.ft = getelementptr inbounds nuw i8, ptr %.2139, i64 2 ; 2 uses
  %i.fu = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef nonnull %i.ft)
  %.not162 = icmp eq i32 %i.fu, 0
  br i1 %.not162, label %._crit_edge200, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef nonnull %i.ft)
  %.not163 = icmp eq i32 %i.fv, 0
  br i1 %.not163, label %._crit_edge200, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = load ptr, ptr %i.ff, align 8, !tbaa !64
  %i.fx = load i8, ptr %i.fg, align 1, !tbaa !39
  %i.fy = zext i8 %i.fx to i32
  %.not164 = icmp sgt i32 %.1134, %i.fy
  %i.fz = select i1 %.not164, i64 217, i64 189
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fz ; 15 uses
  %i.gb = tail call fastcc i32 @arith_decode(ptr noundef %0, ptr noundef nonnull %i.ga)
  %.not165189 = icmp eq i32 %i.gb, 0
  br i1 %.not165189, label %.lr.ph199.preheader, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.gd = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gc)
  %.not165 = icmp eq i32 %i.gd, 0
  br i1 %.not165, label %.lr.ph199.preheader, label %.lr.ph193.1

.lr.ph193.1:                                      ; preds = %.lr.ph193.preheader
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 2 ; 2 uses
  %i.gf = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.ge)
  %.not165.1 = icmp eq i32 %i.gf, 0
  br i1 %.not165.1, label %.lr.ph199.preheader, label %.lr.ph193.2

.lr.ph193.2:                                      ; preds = %.lr.ph193.1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 3 ; 2 uses
  %i.gh = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gg)
  %.not165.2 = icmp eq i32 %i.gh, 0
  br i1 %.not165.2, label %.lr.ph199.preheader, label %.lr.ph193.3

.lr.ph193.3:                                      ; preds = %.lr.ph193.2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gj = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gi)
  %.not165.3 = icmp eq i32 %i.gj, 0
  br i1 %.not165.3, label %.lr.ph199.preheader, label %.lr.ph193.4

.lr.ph193.4:                                      ; preds = %.lr.ph193.3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 5 ; 2 uses
  %i.gl = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gk)
  %.not165.4 = icmp eq i32 %i.gl, 0
  br i1 %.not165.4, label %.lr.ph199.preheader, label %.lr.ph193.5

.lr.ph193.5:                                      ; preds = %.lr.ph193.4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 6 ; 2 uses
  %i.gn = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gm)
  %.not165.5 = icmp eq i32 %i.gn, 0
  br i1 %.not165.5, label %.lr.ph199.preheader, label %.lr.ph193.6

.lr.ph193.6:                                      ; preds = %.lr.ph193.5
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 7 ; 2 uses
  %i.gp = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.go)
  %.not165.6 = icmp eq i32 %i.gp, 0
  br i1 %.not165.6, label %.lr.ph199.preheader, label %.lr.ph193.7

.lr.ph193.7:                                      ; preds = %.lr.ph193.6
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gr = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gq)
  %.not165.7 = icmp eq i32 %i.gr, 0
  br i1 %.not165.7, label %.lr.ph199.preheader, label %.lr.ph193.8

.lr.ph193.8:                                      ; preds = %.lr.ph193.7
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ga, i64 9 ; 2 uses
  %i.gt = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gs)
  %.not165.8 = icmp eq i32 %i.gt, 0
  br i1 %.not165.8, label %.lr.ph199.preheader, label %.lr.ph193.9

.lr.ph193.9:                                      ; preds = %.lr.ph193.8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 10 ; 2 uses
  %i.gv = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gu)
  %.not165.9 = icmp eq i32 %i.gv, 0
  br i1 %.not165.9, label %.lr.ph199.preheader, label %.lr.ph193.10

.lr.ph193.10:                                     ; preds = %.lr.ph193.9
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 11 ; 2 uses
  %i.gx = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gw)
  %.not165.10 = icmp eq i32 %i.gx, 0
  br i1 %.not165.10, label %.lr.ph199.preheader, label %.lr.ph193.11

.lr.ph193.11:                                     ; preds = %.lr.ph193.10
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ga, i64 12 ; 2 uses
  %i.gz = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.gy)
  %.not165.11 = icmp eq i32 %i.gz, 0
  br i1 %.not165.11, label %.lr.ph199.preheader, label %.lr.ph193.12

.lr.ph193.12:                                     ; preds = %.lr.ph193.11
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ga, i64 13 ; 2 uses
  %i.hb = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.ha)
  %.not165.12 = icmp eq i32 %i.hb, 0
  br i1 %.not165.12, label %.lr.ph199.preheader, label %.loopexit174.sink.split

.lr.ph199.preheader:                              ; preds = %bb.ac, %.lr.ph193.preheader, %.lr.ph193.1, %.lr.ph193.2, %.lr.ph193.3, %.lr.ph193.4, %.lr.ph193.5, %.lr.ph193.6, %.lr.ph193.7, %.lr.ph193.8, %.lr.ph193.9, %.lr.ph193.10, %.lr.ph193.11, %.lr.ph193.12
  %.4141.ph = phi ptr [ %i.ha, %.lr.ph193.12 ], [ %i.gy, %.lr.ph193.11 ], [ %i.gw, %.lr.ph193.10 ], [ %i.gu, %.lr.ph193.9 ], [ %i.gs, %.lr.ph193.8 ], [ %i.gq, %.lr.ph193.7 ], [ %i.go, %.lr.ph193.6 ], [ %i.gm, %.lr.ph193.5 ], [ %i.gk, %.lr.ph193.4 ], [ %i.gi, %.lr.ph193.3 ], [ %i.gg, %.lr.ph193.2 ], [ %i.ge, %.lr.ph193.1 ], [ %i.gc, %.lr.ph193.preheader ], [ %i.ga, %bb.ac ]
  %.4.ph = phi i32 [ 16384, %.lr.ph193.12 ], [ 8192, %.lr.ph193.11 ], [ 4096, %.lr.ph193.10 ], [ 2048, %.lr.ph193.9 ], [ 1024, %.lr.ph193.8 ], [ 512, %.lr.ph193.7 ], [ 256, %.lr.ph193.6 ], [ 128, %.lr.ph193.5 ], [ 64, %.lr.ph193.4 ], [ 32, %.lr.ph193.3 ], [ 16, %.lr.ph193.2 ], [ 8, %.lr.ph193.1 ], [ 4, %.lr.ph193.preheader ], [ 2, %bb.ac ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.4141.ph, i64 14
  %i.hd = lshr exact i32 %.4.ph, 1
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %.lr.ph199
  %i.he = phi i32 [ %i.hh, %.lr.ph199 ], [ %i.hd, %.lr.ph199.preheader ] ; 2 uses
  %.3130197 = phi i32 [ %spec.select170, %.lr.ph199 ], [ %.4.ph, %.lr.ph199.preheader ]
  %i.hf = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.hc)
  %.not168 = icmp eq i32 %i.hf, 0
  %i.hg = select i1 %.not168, i32 0, i32 %i.he
  %spec.select170 = or i32 %i.hg, %.3130197       ; 2 uses
  %i.hh = lshr i32 %i.he, 1                       ; 2 uses
  %.not166 = icmp eq i32 %i.hh, 0
  br i1 %.not166, label %._crit_edge200, label %.lr.ph199, !llvm.loop !90

._crit_edge200:                                   ; preds = %.lr.ph199, %bb.aa, %bb.ab
  %.3130.lcssa = phi i32 [ 1, %bb.ab ], [ 0, %bb.aa ], [ %spec.select170, %.lr.ph199 ] ; 2 uses
  br i1 %.not160, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge200
  %.not167 = icmp eq i32 %i.fs, 0
  %i.hi = add nsw i32 %.3130.lcssa, 1
  %i.hj = xor i32 %.3130.lcssa, -1
  %spec.select171 = select i1 %.not167, i32 %i.hi, i32 %i.hj
  %i.hk = trunc i32 %spec.select171 to i16
  %i.hl = sext i32 %.1134 to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.ho
  store i16 %i.hk, ptr %i.hp, align 2, !tbaa !80
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge200, %bb.ad
  %i.hq = add nsw i32 %.1134, 1
  %i.hr = icmp slt i32 %.1134, 63
  br i1 %i.hr, label %bb.y, label %bb.af, !llvm.loop !91

bb.af:                                            ; preds = %bb.ae, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hs = load i32, ptr %i.bf, align 8, !tbaa !76
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %indvars.iv.next, %i.ht
  br i1 %i.hu, label %bb.l, label %.loopexit174, !llvm.loop !92

.loopexit174.sink.split:                          ; preds = %.lr.ph.13, %.lr.ph193.12, %bb.z
  %i.hv = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store i32 117, ptr %i.hw, align 8, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !57
  tail call void %i.hy(ptr noundef nonnull %0, i32 noundef -1) #3
  store i32 -1, ptr %i.bc, align 8, !tbaa !67
  br label %.loopexit174

.loopexit174:                                     ; preds = %bb.af, %.loopexit174.sink.split, %.preheader173, %bb.k
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @arith_decode(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = icmp slt i64 %i.d, 32768
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 6 uses
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre75 = load i32, ptr %i.f, align 8, !tbaa !67
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.j = phi i32 [ %.pre, %.lr.ph ], [ %i.bc, %bb.l ] ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !67
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !94
  %.not66 = icmp eq i32 %i.m, 0
end_hunk_0

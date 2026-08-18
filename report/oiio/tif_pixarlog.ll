inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PixarLogDecode:bb.a
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !92  ; 2 uses
  %.not138 = icmp eq i32 %.pr, 0
  br i1 %.not138, label %.thread218, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !93
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.12, i32 noundef %i.ao, i32 noundef %.pr) #7
  br label %.thread.sink.split

.thread218:                                       ; preds = %bb.k, %bb.l
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !87
  store ptr %i.ap, ptr %i.p, align 8, !tbaa !90
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !89
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %i.s, align 8, !tbaa !88
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !81  ; 3 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94
  %i.aw = and i32 %i.av, 128
  %.not139 = icmp eq i32 %i.aw, 0
  br i1 %.not139, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread218
  tail call void @TIFFSwabArrayOfShort(ptr noundef %i.as, i64 noundef %.0125) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread218
  %i.ax = sext i32 %i.o to i64                    ; 20 uses
  %i.ay = srem i64 %.0125, %i.ax                  ; 2 uses
  %.not140 = icmp eq i64 %i.ay, 0
  br i1 %.not140, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.13, i32 noundef %i.o, i64 noundef %.0125) #7
  %i.az = sub nsw i64 %.0125, %i.ay
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1126 = phi i64 [ %i.az, %bb.p ], [ %.0125, %bb.o ] ; 2 uses
  %i.ba = icmp sgt i64 %.1126, 0
  br i1 %i.ba, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.o, 4           ; 6 uses
  %i.bd = icmp samesign ugt i32 %i.o, 3           ; 6 uses
  %i.be = shl nsw i64 %i.ax, 1                    ; 21 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.bh = shl nsw i64 %i.ax, 2                    ; 7 uses
  %i.bi = mul nsw i64 %i.ax, -2
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %horizontalAccumulateF.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %horizontalAccumulateF.exit ] ; 2 uses
  %.0122258 = phi ptr [ %i.as, %.lr.ph ], [ %i.ahr, %horizontalAccumulateF.exit ] ; 59 uses
  %.0123257 = phi ptr [ %1, %.lr.ph ], [ %i.ahp, %horizontalAccumulateF.exit ] ; 65 uses
  %.0127256 = phi i64 [ 0, %.lr.ph ], [ %i.ahq, %horizontalAccumulateF.exit ]
  %.0123257401 = ptrtoaddr ptr %.0123257 to i64
  %i.bj = mul i64 %i.bi, %indvar
  %i.bk = sub i64 %i.bj, %i.at
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.bl, label %bb.av [
    i32 5, label %bb.s
    i32 4, label %bb.x
    i32 3, label %bb.ac
    i32 2, label %bb.ah
    i32 0, label %bb.al
    i32 1, label %bb.aq
  ]

bb.s:                                             ; preds = %bb.r
  %i.bm = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.bn = zext i16 %i.bm to i32                   ; 5 uses
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 16 uses
  %.not.i = icmp slt i32 %i.o, %i.bn
  br i1 %.not.i, label %horizontalAccumulateF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i16 %i.bm, label %.preheader137.i [
    i16 3, label %bb.u
    i16 4, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bp = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.bq = and i16 %i.bp, 2047                     ; 2 uses
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !59
  %i.bw = and i16 %i.bv, 2047                     ; 2 uses
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !59
  %i.cc = and i16 %i.cb, 2047                     ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !52
  store float %i.bt, ptr %.0123257, align 4, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.bz, ptr %i.cg, align 4, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.cf, ptr %i.ch, align 4, !tbaa !52
  br i1 %i.bd, label %.lr.ph156.preheader.i, label %horizontalAccumulateF.exit

.lr.ph156.preheader.i:                            ; preds = %bb.u
  %i.ci = zext nneg i16 %i.cc to i32
  %i.cj = zext nneg i16 %i.bw to i32
  %i.ck = zext nneg i16 %i.bq to i32
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.preheader.i
  %.0117155.i = phi ptr [ %i.cl, %.lr.ph156.i ], [ %.0122258, %.lr.ph156.preheader.i ] ; 3 uses
  %.0119154.i = phi i32 [ %i.df, %.lr.ph156.i ], [ %i.ci, %.lr.ph156.preheader.i ]
  %.0121153.i = phi i32 [ %i.cx, %.lr.ph156.i ], [ %i.cj, %.lr.ph156.preheader.i ]
  %.0123152.i = phi i32 [ %i.cp, %.lr.ph156.i ], [ %i.ck, %.lr.ph156.preheader.i ]
  %.0125.in151.i = phi i32 [ %.0125.i, %.lr.ph156.i ], [ %i.o, %.lr.ph156.preheader.i ] ; 2 uses
  %.0128150.i = phi ptr [ %i.cm, %.lr.ph156.i ], [ %.0123257, %.lr.ph156.preheader.i ] ; 3 uses
  %.0125.i = add nsw i32 %.0125.in151.i, -3
  %i.cl = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 6 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 12 ; 2 uses
  %i.cn = load i16, ptr %i.cl, align 2, !tbaa !59
  %i.co = zext i16 %i.cn to i32
  %i.cp = add i32 %.0123152.i, %i.co              ; 2 uses
  %i.cq = and i32 %i.cp, 2047
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !52
  %i.cu = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !59
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add i32 %.0121153.i, %i.cw              ; 2 uses
  %i.cy = and i32 %i.cx, 2047
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !52
  %i.dc = getelementptr inbounds nuw i8, ptr %.0117155.i, i64 10
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !59
  %i.de = zext i16 %i.dd to i32
  %i.df = add i32 %.0119154.i, %i.de              ; 2 uses
  %i.dg = and i32 %i.df, 2047
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  store float %i.ct, ptr %i.cm, align 4, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 16
  store float %i.db, ptr %i.dk, align 4, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %.0128150.i, i64 20
  store float %i.dj, ptr %i.dl, align 4, !tbaa !52
  %i.dm = icmp samesign ugt i32 %.0125.in151.i, 6
  br i1 %i.dm, label %.lr.ph156.i, label %horizontalAccumulateF.exit

bb.v:                                             ; preds = %bb.t
  %i.dn = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.do = and <4 x i16> %i.dn, splat (i16 2047)   ; 5 uses
  %i.dp = extractelement <4 x i16> %i.do, i64 0
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52
  %i.dt = extractelement <4 x i16> %i.do, i64 1
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !52
  %i.dx = extractelement <4 x i16> %i.do, i64 2
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !52
  %i.eb = extractelement <4 x i16> %i.do, i64 3
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !52
  store float %i.ds, ptr %.0123257, align 4, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store float %i.dw, ptr %i.ef, align 4, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %.0123257, i64 8
  store float %i.ea, ptr %i.eg, align 4, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %.0123257, i64 12
  store float %i.ee, ptr %i.eh, align 4, !tbaa !52
  br i1 %i.bc, label %.lr.ph.preheader.i, label %horizontalAccumulateF.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ei = zext nneg <4 x i16> %i.do to <4 x i32>
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.1149.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %.0122258, %.lr.ph.preheader.i ]
  %.1126.in144.i = phi i32 [ %.1126.i, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.1129143.i = phi ptr [ %i.el, %.lr.ph.i ], [ %.0123257, %.lr.ph.preheader.i ] ; 4 uses
  %i.ej = phi <4 x i32> [ %i.eo, %.lr.ph.i ], [ %i.ei, %.lr.ph.preheader.i ]
  %.1126.i = add nsw i32 %.1126.in144.i, -4
  %i.ek = getelementptr inbounds nuw i8, ptr %.1149.i, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 16 ; 2 uses
  %i.em = load <4 x i16>, ptr %i.ek, align 2, !tbaa !59
  %i.en = zext <4 x i16> %i.em to <4 x i32>
  %i.eo = add <4 x i32> %i.ej, %i.en              ; 5 uses
  %4 = extractelement <4 x i32> %i.eo, i64 0
  %5 = and i32 %4, 2047
  %i.ep = zext nneg i32 %5 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !52
  %i.es = extractelement <4 x i32> %i.eo, i64 1
  %6 = and i32 %i.es, 2047
  %i.et = zext nneg i32 %6 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !52
  %i.ew = extractelement <4 x i32> %i.eo, i64 2
  %i.ex = and i32 %i.ew, 2047
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !52
  %i.fb = extractelement <4 x i32> %i.eo, i64 3
  %i.fc = and i32 %i.fb, 2047
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !52
  store float %i.er, ptr %i.el, align 4, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 20
  store float %i.ev, ptr %i.fg, align 4, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 24
  store float %i.fa, ptr %i.fh, align 4, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %.1129143.i, i64 28
  store float %i.ff, ptr %i.fi, align 4, !tbaa !52
  %i.fj = icmp samesign ugt i32 %.1126.in144.i, 8
  br i1 %i.fj, label %.lr.ph.i, label %horizontalAccumulateF.exit

.preheader137.i:                                  ; preds = %bb.t, %.preheader137.i
  %.2130.i = phi ptr [ %i.fr, %.preheader137.i ], [ %.0123257, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.fq, %.preheader137.i ], [ %.0122258, %bb.t ] ; 2 uses
  %.0116.i = phi i32 [ %i.fk, %.preheader137.i ], [ %i.bn, %bb.t ] ; 2 uses
  %i.fk = add nsw i32 %.0116.i, -1
  %i.fl = load i16, ptr %.2.i, align 2, !tbaa !59
  %i.fm = and i16 %i.fl, 2047
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !52
  store float %i.fp, ptr %.2130.i, align 4, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.2130.i, i64 4 ; 2 uses
  %i.fs = icmp samesign ugt i32 %.0116.i, 1
  br i1 %i.fs, label %.preheader137.i, label %.preheader135.i

.preheader135.i:                                  ; preds = %.preheader137.i
  %.2127157.i = sub nsw i32 %i.o, %i.bn           ; 2 uses
  %i.ft = icmp sgt i32 %.2127157.i, 0
  br i1 %i.ft, label %.preheader.lr.ph.i, label %horizontalAccumulateF.exit

.preheader.lr.ph.i:                               ; preds = %.preheader135.i
  %i.fu = zext i16 %i.bm to i64
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.w
  %.2127.i = sub nsw i32 %.2127160.i, %i.bn       ; 2 uses
  %i.fv = icmp sgt i32 %.2127.i, 0
  br i1 %i.fv, label %.preheader.i, label %horizontalAccumulateF.exit

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %.2127160.i = phi i32 [ %.2127157.i, %.preheader.lr.ph.i ], [ %.2127.i, %.loopexit.i ]
  %.3159.i = phi ptr [ %i.fq, %.preheader.lr.ph.i ], [ %i.gg, %.loopexit.i ]
  %.3131158.i = phi ptr [ %i.fr, %.preheader.lr.ph.i ], [ %i.gh, %.loopexit.i ]
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i
  %.4132.i = phi ptr [ %i.gh, %bb.w ], [ %.3131158.i, %.preheader.i ] ; 2 uses
  %.4.i = phi ptr [ %i.gg, %bb.w ], [ %.3159.i, %.preheader.i ] ; 4 uses
  %.0.i = phi i32 [ %i.fw, %bb.w ], [ %i.bn, %.preheader.i ] ; 2 uses
  %i.fw = add nsw i32 %.0.i, -1
  %i.fx = load i16, ptr %.4.i, align 2, !tbaa !59
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.4.i, i64 %i.fu ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !59
  %i.ga = add i16 %i.fz, %i.fx
  store i16 %i.ga, ptr %i.fy, align 2, !tbaa !59
  %i.gb = load i16, ptr %.4.i, align 2, !tbaa !59
  %i.gc = and i16 %i.gb, 2047
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !52
  store float %i.gf, ptr %.4132.i, align 4, !tbaa !52
  %i.gg = getelementptr inbounds nuw i8, ptr %.4.i, i64 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.4132.i, i64 4 ; 2 uses
  %i.gi = icmp sgt i32 %.0.i, 1
  br i1 %i.gi, label %bb.w, label %.loopexit.i

bb.x:                                             ; preds = %bb.r
  %i.gj = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.gk = zext i16 %i.gj to i32                   ; 5 uses
  %i.gl = load ptr, ptr %i.bg, align 8, !tbaa !69 ; 16 uses
  %.not.i142 = icmp slt i32 %i.o, %i.gk
  br i1 %.not.i142, label %horizontalAccumulateF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i16 %i.gj, label %.preheader123.i [
    i16 3, label %bb.z
    i16 4, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.gm = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.gn = and i16 %i.gm, 2047                     ; 2 uses
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !59
  store i16 %i.gq, ptr %.0123257, align 2, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !59
  %i.gt = and i16 %i.gs, 2047                     ; 2 uses
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !59
  %i.gx = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !59
  %i.gy = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !59
  %i.ha = and i16 %i.gz, 2047                     ; 2 uses
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !59
  %i.he = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph142.preheader.i, label %horizontalAccumulateF.exit

.lr.ph142.preheader.i:                            ; preds = %bb.z
  %i.hf = zext nneg i16 %i.ha to i32
  %i.hg = zext nneg i16 %i.gt to i32
  %i.hh = zext nneg i16 %i.gn to i32
  br label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %.lr.ph142.i, %.lr.ph142.preheader.i
  %.0103141.i = phi ptr [ %i.hi, %.lr.ph142.i ], [ %.0122258, %.lr.ph142.preheader.i ] ; 3 uses
  %.0105140.i = phi i32 [ %i.id, %.lr.ph142.i ], [ %i.hf, %.lr.ph142.preheader.i ]
  %.0107139.i = phi i32 [ %i.hu, %.lr.ph142.i ], [ %i.hg, %.lr.ph142.preheader.i ]
  %.0109138.i = phi i32 [ %i.hm, %.lr.ph142.i ], [ %i.hh, %.lr.ph142.preheader.i ]
  %.0111.in137.i = phi i32 [ %.0111.i, %.lr.ph142.i ], [ %i.o, %.lr.ph142.preheader.i ] ; 2 uses
  %.0114136.i = phi ptr [ %i.hj, %.lr.ph142.i ], [ %.0123257, %.lr.ph142.preheader.i ] ; 3 uses
  %.0111.i = add nsw i32 %.0111.in137.i, -3
  %i.hi = getelementptr inbounds nuw i8, ptr %.0103141.i, i64 6 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0114136.i, i64 6 ; 2 uses
  %i.hk = load i16, ptr %i.hi, align 2, !tbaa !59
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add i32 %.0109138.i, %i.hl              ; 2 uses
  %i.hn = and i32 %i.hm, 2047
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !59
  store i16 %i.hq, ptr %i.hj, align 2, !tbaa !59
  %i.hr = getelementptr inbounds nuw i8, ptr %.0103141.i, i64 8
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !59
  %i.ht = zext i16 %i.hs to i32
  %i.hu = add i32 %.0107139.i, %i.ht              ; 2 uses
  %i.hv = and i32 %i.hu, 2047
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !59
  %i.hz = getelementptr inbounds nuw i8, ptr %.0114136.i, i64 8
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !59
  %i.ia = getelementptr inbounds nuw i8, ptr %.0103141.i, i64 10
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !59
  %i.ic = zext i16 %i.ib to i32
  %i.id = add i32 %.0105140.i, %i.ic              ; 2 uses
  %i.ie = and i32 %i.id, 2047
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !59
  %i.ii = getelementptr inbounds nuw i8, ptr %.0114136.i, i64 10
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !59
  %i.ij = icmp samesign ugt i32 %.0111.in137.i, 6
  br i1 %i.ij, label %.lr.ph142.i, label %horizontalAccumulateF.exit

bb.aa:                                            ; preds = %bb.y
  %i.ik = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.il = and i16 %i.ik, 2047                     ; 2 uses
  %i.im = zext nneg i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !59
  store i16 %i.io, ptr %.0123257, align 2, !tbaa !59
  %i.ip = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !59
  %i.ir = and i16 %i.iq, 2047                     ; 2 uses
  %i.is = zext nneg i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !59
  %i.iv = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !59
  %i.iw = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !59
  %i.iy = and i16 %i.ix, 2047                     ; 2 uses
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !59
  %i.jc = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.jb, ptr %i.jc, align 2, !tbaa !59
  %i.jd = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !59
  %i.jf = and i16 %i.je, 2047                     ; 2 uses
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !59
  %i.jj = getelementptr inbounds nuw i8, ptr %.0123257, i64 6
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i143, label %horizontalAccumulateF.exit

.lr.ph.preheader.i143:                            ; preds = %bb.aa
  %i.jk = zext nneg i16 %i.jf to i32
  %i.jl = zext nneg i16 %i.iy to i32
end_hunk_0
begin_hunk_1_@PixarLogDecode:bb.a
  %.2.i145 = phi ptr [ %i.lf, %.preheader123.i ], [ %.0122258, %bb.y ] ; 2 uses
  %.0102.i = phi i32 [ %i.kz, %.preheader123.i ], [ %i.gk, %bb.y ] ; 2 uses
  %i.kz = add nsw i32 %.0102.i, -1
  %i.la = load i16, ptr %.2.i145, align 2, !tbaa !59
  %i.lb = and i16 %i.la, 2047
  %i.lc = zext nneg i16 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !59
  store i16 %i.le, ptr %.2116.i, align 2, !tbaa !59
  %i.lf = getelementptr inbounds nuw i8, ptr %.2.i145, i64 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.2116.i, i64 2 ; 2 uses
  %i.lh = icmp samesign ugt i32 %.0102.i, 1
  br i1 %i.lh, label %.preheader123.i, label %.preheader121.i

.preheader121.i:                                  ; preds = %.preheader123.i
  %.2113143.i = sub nsw i32 %i.o, %i.gk           ; 2 uses
  %i.li = icmp sgt i32 %.2113143.i, 0
  br i1 %i.li, label %.preheader.lr.ph.i146, label %horizontalAccumulateF.exit

.preheader.lr.ph.i146:                            ; preds = %.preheader121.i
  %i.lj = zext i16 %i.gj to i64
  br label %.preheader.i147

.loopexit.i150:                                   ; preds = %bb.ab
  %.2113.i = sub nsw i32 %.2113146.i, %i.gk       ; 2 uses
  %i.lk = icmp sgt i32 %.2113.i, 0
  br i1 %i.lk, label %.preheader.i147, label %horizontalAccumulateF.exit

.preheader.i147:                                  ; preds = %.loopexit.i150, %.preheader.lr.ph.i146
  %.2113146.i = phi i32 [ %.2113143.i, %.preheader.lr.ph.i146 ], [ %.2113.i, %.loopexit.i150 ]
  %.3145.i = phi ptr [ %i.lf, %.preheader.lr.ph.i146 ], [ %i.lv, %.loopexit.i150 ]
  %.3117144.i = phi ptr [ %i.lg, %.preheader.lr.ph.i146 ], [ %i.lw, %.loopexit.i150 ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader.i147
  %.4118.i = phi ptr [ %i.lw, %bb.ab ], [ %.3117144.i, %.preheader.i147 ] ; 2 uses
  %.4.i148 = phi ptr [ %i.lv, %bb.ab ], [ %.3145.i, %.preheader.i147 ] ; 4 uses
  %.0.i149 = phi i32 [ %i.ll, %bb.ab ], [ %i.gk, %.preheader.i147 ] ; 2 uses
  %i.ll = add nsw i32 %.0.i149, -1
  %i.lm = load i16, ptr %.4.i148, align 2, !tbaa !59
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %.4.i148, i64 %i.lj ; 2 uses
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !59
  %i.lp = add i16 %i.lo, %i.lm
  store i16 %i.lp, ptr %i.ln, align 2, !tbaa !59
  %i.lq = load i16, ptr %.4.i148, align 2, !tbaa !59
  %i.lr = and i16 %i.lq, 2047
  %i.ls = zext nneg i16 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !59
  store i16 %i.lu, ptr %.4118.i, align 2, !tbaa !59
  %i.lv = getelementptr inbounds nuw i8, ptr %.4.i148, i64 2 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.4118.i, i64 2 ; 2 uses
  %i.lx = icmp sgt i32 %.0.i149, 1
  br i1 %i.lx, label %bb.ab, label %.loopexit.i150

bb.ac:                                            ; preds = %bb.r
  %i.ly = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.lz = zext i16 %i.ly to i32                   ; 5 uses
  %i.ma = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 16 uses
  %.not.i151 = icmp slt i32 %i.o, %i.lz
  br i1 %.not.i151, label %horizontalAccumulateF.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i16 %i.ly, label %.preheader156.i [
    i16 3, label %bb.ae
    i16 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.mb = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.mc = and i16 %i.mb, 2047                     ; 2 uses
  %i.md = zext nneg i16 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !52
  %i.mg = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !59
  %i.mi = and i16 %i.mh, 2047                     ; 2 uses
  %i.mj = zext nneg i16 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mj
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !52
  %i.mm = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !59
  %i.mo = and i16 %i.mn, 2047                     ; 2 uses
  %i.mp = zext nneg i16 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mp
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !52
  %i.ms = fmul float %i.mr, 2.048000e+03          ; 2 uses
  %i.mt = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.ml, i64 1
  %i.mv = fmul <2 x float> %i.mu, splat (float 2.048000e+03) ; 2 uses
  %i.mw = fcmp olt <2 x float> %i.mv, splat (float 3.071000e+03)
  %i.mx = select <2 x i1> %i.mw, <2 x float> %i.mv, <2 x float> splat (float 3.071000e+03)
  %i.my = fptoui <2 x float> %i.mx to <2 x i16>
  store <2 x i16> %i.my, ptr %.0123257, align 2, !tbaa !59
  %i.mz = fcmp olt float %i.ms, 3.071000e+03
  %i.na = select i1 %i.mz, float %i.ms, float 3.071000e+03
  %i.nb = fptoui float %i.na to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.nb, ptr %i.nc, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph175.preheader.i, label %horizontalAccumulateF.exit

.lr.ph175.preheader.i:                            ; preds = %bb.ae
  %i.nd = zext nneg i16 %i.mo to i32
  %i.ne = zext nneg i16 %i.mi to i32
  %i.nf = zext nneg i16 %i.mc to i32
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i, %.lr.ph175.preheader.i
  %.0136174.i = phi ptr [ %i.ng, %.lr.ph175.i ], [ %.0122258, %.lr.ph175.preheader.i ] ; 3 uses
  %.0138173.i = phi i32 [ %i.oa, %.lr.ph175.i ], [ %i.nd, %.lr.ph175.preheader.i ]
  %.0140172.i = phi i32 [ %i.ns, %.lr.ph175.i ], [ %i.ne, %.lr.ph175.preheader.i ]
  %.0142171.i = phi i32 [ %i.nk, %.lr.ph175.i ], [ %i.nf, %.lr.ph175.preheader.i ]
  %.0144.in170.i = phi i32 [ %.0144.i, %.lr.ph175.i ], [ %i.o, %.lr.ph175.preheader.i ] ; 2 uses
  %.0147169.i = phi ptr [ %i.nh, %.lr.ph175.i ], [ %.0123257, %.lr.ph175.preheader.i ] ; 2 uses
  %.0144.i = add nsw i32 %.0144.in170.i, -3
  %i.ng = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 6 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 6 ; 2 uses
  %i.ni = load i16, ptr %i.ng, align 2, !tbaa !59
  %i.nj = zext i16 %i.ni to i32
  %i.nk = add i32 %.0142171.i, %i.nj              ; 2 uses
  %i.nl = and i32 %i.nk, 2047
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !52
  %i.np = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 8
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !59
  %i.nr = zext i16 %i.nq to i32
  %i.ns = add i32 %.0140172.i, %i.nr              ; 2 uses
  %i.nt = and i32 %i.ns, 2047
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.nu
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !52
  %i.nx = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 10
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !59
  %i.nz = zext i16 %i.ny to i32
  %i.oa = add i32 %.0138173.i, %i.nz              ; 2 uses
  %i.ob = and i32 %i.oa, 2047
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !52
  %i.of = fmul float %i.oe, 2.048000e+03          ; 2 uses
  %i.og = insertelement <2 x float> poison, float %i.no, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %i.nw, i64 1
  %i.oi = fmul <2 x float> %i.oh, splat (float 2.048000e+03) ; 2 uses
  %i.oj = fcmp olt <2 x float> %i.oi, splat (float 3.071000e+03)
  %i.ok = select <2 x i1> %i.oj, <2 x float> %i.oi, <2 x float> splat (float 3.071000e+03)
  %i.ol = fptoui <2 x float> %i.ok to <2 x i16>
  store <2 x i16> %i.ol, ptr %i.nh, align 2, !tbaa !59
  %i.om = fcmp olt float %i.of, 3.071000e+03
  %i.on = select i1 %i.om, float %i.of, float 3.071000e+03
  %i.oo = fptoui float %i.on to i16
  %i.op = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 10
  store i16 %i.oo, ptr %i.op, align 2, !tbaa !59
  %i.oq = icmp samesign ugt i32 %.0144.in170.i, 6
  br i1 %i.oq, label %.lr.ph175.i, label %horizontalAccumulateF.exit

bb.af:                                            ; preds = %bb.ad
  %i.or = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.os = and <4 x i16> %i.or, splat (i16 2047)   ; 5 uses
  %i.ot = extractelement <4 x i16> %i.os, i64 0
  %i.ou = zext nneg i16 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !52
  %i.ox = extractelement <4 x i16> %i.os, i64 1
  %i.oy = zext nneg i16 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !52
  %i.pb = extractelement <4 x i16> %i.os, i64 2
  %i.pc = zext nneg i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !52
  %i.pf = extractelement <4 x i16> %i.os, i64 3
  %i.pg = zext nneg i16 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !52
  %i.pj = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.pk = insertelement <4 x float> %i.pj, float %i.pa, i64 1
  %i.pl = insertelement <4 x float> %i.pk, float %i.pe, i64 2
  %i.pm = insertelement <4 x float> %i.pl, float %i.pi, i64 3
  %i.pn = fmul <4 x float> %i.pm, splat (float 2.048000e+03) ; 2 uses
  %i.po = fcmp olt <4 x float> %i.pn, splat (float 3.071000e+03)
  %i.pp = select <4 x i1> %i.po, <4 x float> %i.pn, <4 x float> splat (float 3.071000e+03)
  %i.pq = fptoui <4 x float> %i.pp to <4 x i16>
  store <4 x i16> %i.pq, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i152, label %horizontalAccumulateF.exit

.lr.ph.preheader.i152:                            ; preds = %bb.af
  %i.pr = zext nneg <4 x i16> %i.os to <4 x i32>
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.preheader.i152
  %.1168.i = phi ptr [ %i.pt, %.lr.ph.i153 ], [ %.0122258, %.lr.ph.preheader.i152 ]
  %.1145.in163.i = phi i32 [ %.1145.i, %.lr.ph.i153 ], [ %i.o, %.lr.ph.preheader.i152 ] ; 2 uses
  %.1148162.i = phi ptr [ %i.pu, %.lr.ph.i153 ], [ %.0123257, %.lr.ph.preheader.i152 ]
  %i.ps = phi <4 x i32> [ %i.px, %.lr.ph.i153 ], [ %i.pr, %.lr.ph.preheader.i152 ]
  %.1145.i = add nsw i32 %.1145.in163.i, -4
  %i.pt = getelementptr inbounds nuw i8, ptr %.1168.i, i64 8 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.1148162.i, i64 8 ; 2 uses
  %i.pv = load <4 x i16>, ptr %i.pt, align 2, !tbaa !59
  %i.pw = zext <4 x i16> %i.pv to <4 x i32>
  %i.px = add <4 x i32> %i.ps, %i.pw              ; 5 uses
  %7 = extractelement <4 x i32> %i.px, i64 0
  %8 = and i32 %7, 2047
  %i.py = zext nneg i32 %8 to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.py
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !52
  %i.qb = extractelement <4 x i32> %i.px, i64 1
  %9 = and i32 %i.qb, 2047
  %i.qc = zext nneg i32 %9 to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !52
  %i.qf = extractelement <4 x i32> %i.px, i64 2
  %i.qg = and i32 %i.qf, 2047
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.qh
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !52
  %i.qk = extractelement <4 x i32> %i.px, i64 3
  %i.ql = and i32 %i.qk, 2047
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.qm
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !52
  %i.qp = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qq = insertelement <4 x float> %i.qp, float %i.qe, i64 1
  %i.qr = insertelement <4 x float> %i.qq, float %i.qj, i64 2
  %i.qs = insertelement <4 x float> %i.qr, float %i.qo, i64 3
  %i.qt = fmul <4 x float> %i.qs, splat (float 2.048000e+03) ; 2 uses
  %i.qu = fcmp olt <4 x float> %i.qt, splat (float 3.071000e+03)
  %i.qv = select <4 x i1> %i.qu, <4 x float> %i.qt, <4 x float> splat (float 3.071000e+03)
  %i.qw = fptoui <4 x float> %i.qv to <4 x i16>
  store <4 x i16> %i.qw, ptr %i.pu, align 2, !tbaa !59
  %i.qx = icmp samesign ugt i32 %.1145.in163.i, 8
  br i1 %i.qx, label %.lr.ph.i153, label %horizontalAccumulateF.exit

.preheader156.i:                                  ; preds = %bb.ad, %.preheader156.i
  %.2149.i = phi ptr [ %i.rj, %.preheader156.i ], [ %.0123257, %bb.ad ] ; 2 uses
  %.2.i154 = phi ptr [ %i.ri, %.preheader156.i ], [ %.0122258, %bb.ad ] ; 2 uses
  %.0135.i = phi i32 [ %i.qy, %.preheader156.i ], [ %i.lz, %bb.ad ] ; 2 uses
  %i.qy = add nsw i32 %.0135.i, -1
  %i.qz = load i16, ptr %.2.i154, align 2, !tbaa !59
  %i.ra = and i16 %i.qz, 2047
  %i.rb = zext nneg i16 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !52
  %i.re = fmul float %i.rd, 2.048000e+03          ; 2 uses
  %i.rf = fcmp olt float %i.re, 3.071000e+03
  %i.rg = select i1 %i.rf, float %i.re, float 3.071000e+03
  %i.rh = fptoui float %i.rg to i16
  store i16 %i.rh, ptr %.2149.i, align 2, !tbaa !59
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.i154, i64 2 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.2149.i, i64 2 ; 2 uses
  %i.rk = icmp samesign ugt i32 %.0135.i, 1
  br i1 %i.rk, label %.preheader156.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader156.i
  %.2146176.i = sub nsw i32 %i.o, %i.lz           ; 2 uses
  %i.rl = icmp sgt i32 %.2146176.i, 0
  br i1 %i.rl, label %.preheader.lr.ph.i155, label %horizontalAccumulateF.exit

.preheader.lr.ph.i155:                            ; preds = %.preheader154.i
  %i.rm = zext i16 %i.ly to i64
  br label %.preheader.i156

.loopexit.i159:                                   ; preds = %bb.ag
  %.2146.i = sub nsw i32 %.2146179.i, %i.lz       ; 2 uses
  %i.rn = icmp sgt i32 %.2146.i, 0
  br i1 %i.rn, label %.preheader.i156, label %horizontalAccumulateF.exit

.preheader.i156:                                  ; preds = %.loopexit.i159, %.preheader.lr.ph.i155
  %.2146179.i = phi i32 [ %.2146176.i, %.preheader.lr.ph.i155 ], [ %.2146.i, %.loopexit.i159 ]
  %.3178.i = phi ptr [ %i.ri, %.preheader.lr.ph.i155 ], [ %i.sb, %.loopexit.i159 ]
  %.3150177.i = phi ptr [ %i.rj, %.preheader.lr.ph.i155 ], [ %i.sc, %.loopexit.i159 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader.i156
  %.4151.i = phi ptr [ %i.sc, %bb.ag ], [ %.3150177.i, %.preheader.i156 ] ; 2 uses
  %.4.i157 = phi ptr [ %i.sb, %bb.ag ], [ %.3178.i, %.preheader.i156 ] ; 3 uses
  %.0.i158 = phi i32 [ %i.ro, %bb.ag ], [ %i.lz, %.preheader.i156 ] ; 2 uses
  %i.ro = add nsw i32 %.0.i158, -1
  %i.rp = load i16, ptr %.4.i157, align 2, !tbaa !59
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %.4.i157, i64 %i.rm ; 2 uses
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !59
  %i.rs = add i16 %i.rr, %i.rp                    ; 2 uses
  store i16 %i.rs, ptr %i.rq, align 2, !tbaa !59
  %i.rt = and i16 %i.rs, 2047
  %i.ru = zext nneg i16 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ru
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !52
  %i.rx = fmul float %i.rw, 2.048000e+03          ; 2 uses
  %i.ry = fcmp olt float %i.rx, 3.071000e+03
  %i.rz = select i1 %i.ry, float %i.rx, float 3.071000e+03
  %i.sa = fptoui float %i.rz to i16
  store i16 %i.sa, ptr %.4151.i, align 2, !tbaa !59
  %i.sb = getelementptr inbounds nuw i8, ptr %.4.i157, i64 2 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.4151.i, i64 2 ; 2 uses
  %i.sd = icmp sgt i32 %.0.i158, 1
  br i1 %i.sd, label %bb.ag, label %.loopexit.i159

bb.ah:                                            ; preds = %bb.r
  %i.se = load i16, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.sf = zext i16 %i.se to i32                   ; 15 uses
  %.not.i160 = icmp slt i32 %i.o, %i.sf
  br i1 %.not.i160, label %horizontalAccumulateF.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.se, label %iter.check [
    i16 3, label %bb.aj
    i16 4, label %bb.ak
  ]

iter.check:                                       ; preds = %bb.ai
  %i.sg = icmp ne i16 %i.se, 0
  %umin.neg = sext i1 %i.sg to i32
  %i.sh = add nsw i32 %umin.neg, %i.sf            ; 3 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = add nuw nsw i64 %i.si, 1                ; 5 uses
  %min.iters.check403 = icmp ult i32 %i.sh, 3
  br i1 %min.iters.check403, label %.preheader107.i.preheader, label %vector.memcheck400

vector.memcheck400:                               ; preds = %iter.check
  %i.sk = add i64 %i.bk, %.0123257401
  %i.sl = add i64 %i.sk, -1
  %diff.check = icmp ult i64 %i.sl, 31
  br i1 %diff.check, label %.preheader107.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck400
  %min.iters.check404 = icmp ult i32 %i.sh, 15
  br i1 %min.iters.check404, label %vec.epilog.ph, label %vector.ph405

vector.ph405:                                     ; preds = %vector.main.loop.iter.check
  %i.sm = and i64 %i.sj, 12
  %n.vec406 = and i64 %i.sj, 8589934576           ; 5 uses
  %i.sn = shl nuw nsw i64 %n.vec406, 1            ; 2 uses
  %i.so = getelementptr i8, ptr %.0123257, i64 %i.sn ; 2 uses
  %i.sp = getelementptr i8, ptr %.0122258, i64 %i.sn ; 2 uses
  %i.sq = trunc i64 %n.vec406 to i32
  %i.sr = sub i32 %i.sf, %i.sq
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body407 ] ; 2 uses
  %i.ss = shl i64 %index408, 1                    ; 2 uses
  %next.gep409 = getelementptr i8, ptr %.0123257, i64 %i.ss ; 2 uses
  %next.gep410 = getelementptr i8, ptr %.0122258, i64 %i.ss ; 2 uses
  %i.st = getelementptr i8, ptr %next.gep410, i64 16
  %wide.load411 = load <8 x i16>, ptr %next.gep410, align 2, !tbaa !59
  %wide.load412 = load <8 x i16>, ptr %i.st, align 2, !tbaa !59
  %i.su = and <8 x i16> %wide.load411, splat (i16 2047)
  %i.sv = and <8 x i16> %wide.load412, splat (i16 2047)
  %i.sw = getelementptr i8, ptr %next.gep409, i64 16
  store <8 x i16> %i.su, ptr %next.gep409, align 2, !tbaa !59
  store <8 x i16> %i.sv, ptr %i.sw, align 2, !tbaa !59
  %index.next413 = add nuw i64 %index408, 16      ; 2 uses
  %i.sx = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.sx, label %middle.block414, label %vector.body407, !llvm.loop !95

middle.block414:                                  ; preds = %vector.body407
  %cmp.n415 = icmp eq i64 %i.sj, %n.vec406
  br i1 %cmp.n415, label %.preheader105.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block414
  %min.epilog.iters.check = icmp eq i64 %i.sm, 0
  br i1 %min.epilog.iters.check, label %.preheader107.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec406, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec419 = and i64 %i.sj, 8589934588           ; 4 uses
  %i.sy = shl nuw nsw i64 %n.vec419, 1            ; 2 uses
  %i.sz = getelementptr i8, ptr %.0123257, i64 %i.sy ; 2 uses
  %i.ta = getelementptr i8, ptr %.0122258, i64 %i.sy ; 2 uses
  %i.tb = trunc i64 %n.vec419 to i32
  %i.tc = sub i32 %i.sf, %i.tb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index420 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next424, %vec.epilog.vector.body ] ; 2 uses
  %i.td = shl i64 %index420, 1                    ; 2 uses
  %next.gep421 = getelementptr i8, ptr %.0123257, i64 %i.td
  %next.gep422 = getelementptr i8, ptr %.0122258, i64 %i.td
  %wide.load423 = load <4 x i16>, ptr %next.gep422, align 2, !tbaa !59
  %i.te = and <4 x i16> %wide.load423, splat (i16 2047)
  store <4 x i16> %i.te, ptr %next.gep421, align 2, !tbaa !59
  %index.next424 = add nuw i64 %index420, 4       ; 2 uses
  %i.tf = icmp eq i64 %index.next424, %n.vec419
  br i1 %i.tf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n425 = icmp eq i64 %i.sj, %n.vec419
  br i1 %cmp.n425, label %.preheader105.i, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %vector.memcheck400, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.297.i.ph = phi ptr [ %.0123257, %iter.check ], [ %.0123257, %vector.memcheck400 ], [ %i.so, %vec.epilog.iter.check ], [ %i.sz, %vec.epilog.middle.block ]
  %.2.i163.ph = phi ptr [ %.0122258, %iter.check ], [ %.0122258, %vector.memcheck400 ], [ %i.sp, %vec.epilog.iter.check ], [ %i.ta, %vec.epilog.middle.block ]
  %.086.i.ph = phi i32 [ %i.sf, %iter.check ], [ %i.sf, %vector.memcheck400 ], [ %i.sr, %vec.epilog.iter.check ], [ %i.tc, %vec.epilog.middle.block ]
  br label %.preheader107.i

bb.aj:                                            ; preds = %bb.ai
  %i.tg = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.tg, ptr %.0123257, align 2, !tbaa !59
  %i.th = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !59
  %i.tj = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.ti, ptr %i.tj, align 2, !tbaa !59
  %i.tk = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !59 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.tl, ptr %i.tm, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph126.preheader.i, label %horizontalAccumulateF.exit

.lr.ph126.preheader.i:                            ; preds = %bb.aj
end_hunk_1
begin_hunk_2_@PixarLogDecode:bb.a
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !59
  %i.abg = zext i16 %i.abf to i32
  %i.abh = add i32 %.0104134.i173, %i.abg         ; 2 uses
  %i.abi = and i32 %i.abh, 2047
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !64
  %i.abm = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 7
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !64
  %i.abn = icmp samesign ugt i32 %.1112.in130.i177, 8
  br i1 %i.abn, label %.lr.ph.i171, label %horizontalAccumulateF.exit

.preheader123.i189:                               ; preds = %bb.am, %.preheader123.i189
  %.2116.i190 = phi ptr [ %i.abv, %.preheader123.i189 ], [ %.0123257, %bb.am ] ; 2 uses
  %.2.i191 = phi ptr [ %i.abu, %.preheader123.i189 ], [ %.0122258, %bb.am ] ; 2 uses
  %.0102.i192 = phi i32 [ %i.abo, %.preheader123.i189 ], [ %i.wz, %bb.am ] ; 2 uses
  %i.abo = add nsw i32 %.0102.i192, -1
  %i.abp = load i16, ptr %.2.i191, align 2, !tbaa !59
  %i.abq = and i16 %i.abp, 2047
  %i.abr = zext nneg i16 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !64
  store i8 %i.abt, ptr %.2116.i190, align 1, !tbaa !64
  %i.abu = getelementptr inbounds nuw i8, ptr %.2.i191, i64 2 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.2116.i190, i64 1 ; 2 uses
  %i.abw = icmp samesign ugt i32 %.0102.i192, 1
  br i1 %i.abw, label %.preheader123.i189, label %.preheader121.i193

.preheader121.i193:                               ; preds = %.preheader123.i189
  %.2113143.i194 = sub nsw i32 %i.o, %i.wz        ; 2 uses
  %i.abx = icmp sgt i32 %.2113143.i194, 0
  br i1 %i.abx, label %.preheader.lr.ph.i195, label %horizontalAccumulateF.exit

.preheader.lr.ph.i195:                            ; preds = %.preheader121.i193
  %i.aby = zext i16 %i.wy to i64
  br label %.preheader.i196

.loopexit.i203:                                   ; preds = %bb.ap
  %.2113.i204 = sub nsw i32 %.2113146.i197, %i.wz ; 2 uses
  %i.abz = icmp sgt i32 %.2113.i204, 0
  br i1 %i.abz, label %.preheader.i196, label %horizontalAccumulateF.exit

.preheader.i196:                                  ; preds = %.loopexit.i203, %.preheader.lr.ph.i195
  %.2113146.i197 = phi i32 [ %.2113143.i194, %.preheader.lr.ph.i195 ], [ %.2113.i204, %.loopexit.i203 ]
  %.3145.i198 = phi ptr [ %i.abu, %.preheader.lr.ph.i195 ], [ %i.ack, %.loopexit.i203 ]
  %.3117144.i199 = phi ptr [ %i.abv, %.preheader.lr.ph.i195 ], [ %i.acl, %.loopexit.i203 ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.preheader.i196
  %.4118.i200 = phi ptr [ %i.acl, %bb.ap ], [ %.3117144.i199, %.preheader.i196 ] ; 2 uses
  %.4.i201 = phi ptr [ %i.ack, %bb.ap ], [ %.3145.i198, %.preheader.i196 ] ; 4 uses
  %.0.i202 = phi i32 [ %i.aca, %bb.ap ], [ %i.wz, %.preheader.i196 ] ; 2 uses
  %i.aca = add nsw i32 %.0.i202, -1
  %i.acb = load i16, ptr %.4.i201, align 2, !tbaa !59
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %.4.i201, i64 %i.aby ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !59
  %i.ace = add i16 %i.acd, %i.acb
  store i16 %i.ace, ptr %i.acc, align 2, !tbaa !59
  %i.acf = load i16, ptr %.4.i201, align 2, !tbaa !59
  %i.acg = and i16 %i.acf, 2047
  %i.ach = zext nneg i16 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !64
  store i8 %i.acj, ptr %.4118.i200, align 1, !tbaa !64
  %i.ack = getelementptr inbounds nuw i8, ptr %.4.i201, i64 2 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.4118.i200, i64 1 ; 2 uses
  %i.acm = icmp sgt i32 %.0.i202, 1
  br i1 %i.acm, label %bb.ap, label %.loopexit.i203

bb.aq:                                            ; preds = %bb.r
  %i.acn = load i16, ptr %i.j, align 8, !tbaa !79 ; 3 uses
  %i.aco = zext i16 %i.acn to i32                 ; 5 uses
  %i.acp = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 16 uses
  %.not.i205 = icmp slt i32 %i.o, %i.aco
  br i1 %.not.i205, label %horizontalAccumulateF.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  switch i16 %i.acn, label %.preheader139.i [
    i16 3, label %bb.as
    i16 4, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %.0123257, align 1, !tbaa !64
  %i.acq = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !59
  %i.acs = and i16 %i.acr, 2047                   ; 2 uses
  %i.act = zext nneg i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !64
  %i.acw = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.acx = load i16, ptr %i.acw, align 2, !tbaa !59
  %i.acy = and i16 %i.acx, 2047                   ; 2 uses
  %i.acz = zext nneg i16 %i.acy to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acz
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !64
  %i.adc = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.add = and i16 %i.adc, 2047                   ; 2 uses
  %i.ade = zext nneg i16 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !64
  %i.adh = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.acv, ptr %i.adh, align 1, !tbaa !64
  %i.adi = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.adb, ptr %i.adi, align 1, !tbaa !64
  %i.adj = getelementptr inbounds nuw i8, ptr %.0123257, i64 3
  store i8 %i.adg, ptr %i.adj, align 1, !tbaa !64
  br i1 %i.bd, label %.lr.ph158.preheader.i, label %horizontalAccumulateF.exit

.lr.ph158.preheader.i:                            ; preds = %bb.as
  %i.adk = zext nneg i16 %i.add to i32
  %i.adl = zext nneg i16 %i.acy to i32
  %i.adm = zext nneg i16 %i.acs to i32
  br label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i, %.lr.ph158.preheader.i
  %.0119157.i = phi ptr [ %i.adn, %.lr.ph158.i ], [ %.0122258, %.lr.ph158.preheader.i ] ; 3 uses
  %.0121156.i = phi i32 [ %i.ads, %.lr.ph158.i ], [ %i.adm, %.lr.ph158.preheader.i ]
  %.0123155.i = phi i32 [ %i.aea, %.lr.ph158.i ], [ %i.adl, %.lr.ph158.preheader.i ]
  %.0125154.i = phi i32 [ %i.aeh, %.lr.ph158.i ], [ %i.adk, %.lr.ph158.preheader.i ]
  %.0127.in153.i = phi i32 [ %.0127.i, %.lr.ph158.i ], [ %i.o, %.lr.ph158.preheader.i ] ; 2 uses
  %.0130152.i = phi ptr [ %i.ado, %.lr.ph158.i ], [ %.0123257, %.lr.ph158.preheader.i ] ; 4 uses
  %.0127.i = add nsw i32 %.0127.in153.i, -3
  %i.adn = getelementptr inbounds nuw i8, ptr %.0119157.i, i64 6 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.0130152.i, i64 4 ; 2 uses
  store i8 0, ptr %i.ado, align 1, !tbaa !64
  %i.adp = getelementptr inbounds nuw i8, ptr %.0119157.i, i64 10
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !59
  %i.adr = zext i16 %i.adq to i32
  %i.ads = add i32 %.0121156.i, %i.adr            ; 2 uses
  %i.adt = and i32 %i.ads, 2047
  %i.adu = zext nneg i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !64
  %i.adx = getelementptr inbounds nuw i8, ptr %.0119157.i, i64 8
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !59
  %i.adz = zext i16 %i.ady to i32
  %i.aea = add i32 %.0123155.i, %i.adz            ; 2 uses
  %i.aeb = and i32 %i.aea, 2047
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !64
  %i.aef = load i16, ptr %i.adn, align 2, !tbaa !59
  %i.aeg = zext i16 %i.aef to i32
  %i.aeh = add i32 %.0125154.i, %i.aeg            ; 2 uses
  %i.aei = and i32 %i.aeh, 2047
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !64
  %i.aem = getelementptr inbounds nuw i8, ptr %.0130152.i, i64 5
  store i8 %i.adw, ptr %i.aem, align 1, !tbaa !64
  %i.aen = getelementptr inbounds nuw i8, ptr %.0130152.i, i64 6
  store i8 %i.aee, ptr %i.aen, align 1, !tbaa !64
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0130152.i, i64 7
  store i8 %i.ael, ptr %i.aeo, align 1, !tbaa !64
  %i.aep = icmp samesign ugt i32 %.0127.in153.i, 6
  br i1 %i.aep, label %.lr.ph158.i, label %horizontalAccumulateF.exit

bb.at:                                            ; preds = %bb.ar
  %i.aeq = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.aer = and <4 x i16> %i.aeq, splat (i16 2047) ; 5 uses
  %i.aes = extractelement <4 x i16> %i.aer, i64 3
  %i.aet = zext nneg i16 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !64
  %i.aew = extractelement <4 x i16> %i.aer, i64 2
  %i.aex = zext nneg i16 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.aex
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !64
  %i.afa = extractelement <4 x i16> %i.aer, i64 1
  %i.afb = zext nneg i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !64
  %i.afe = extractelement <4 x i16> %i.aer, i64 0
  %i.aff = zext nneg i16 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.aff
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !64
  store i8 %i.aev, ptr %.0123257, align 1, !tbaa !64
  %i.afi = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.aez, ptr %i.afi, align 1, !tbaa !64
  %i.afj = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.afd, ptr %i.afj, align 1, !tbaa !64
  %i.afk = getelementptr inbounds nuw i8, ptr %.0123257, i64 3
  store i8 %i.afh, ptr %i.afk, align 1, !tbaa !64
  br i1 %i.bc, label %.lr.ph.preheader.i206, label %horizontalAccumulateF.exit

.lr.ph.preheader.i206:                            ; preds = %bb.at
  %i.afl = zext nneg <4 x i16> %i.aer to <4 x i32>
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207, %.lr.ph.preheader.i206
  %.1151.i = phi ptr [ %i.afn, %.lr.ph.i207 ], [ %.0122258, %.lr.ph.preheader.i206 ]
  %.1128.in146.i = phi i32 [ %.1128.i, %.lr.ph.i207 ], [ %i.o, %.lr.ph.preheader.i206 ] ; 2 uses
  %.1131145.i = phi ptr [ %i.afo, %.lr.ph.i207 ], [ %.0123257, %.lr.ph.preheader.i206 ] ; 4 uses
  %i.afm = phi <4 x i32> [ %i.afr, %.lr.ph.i207 ], [ %i.afl, %.lr.ph.preheader.i206 ]
  %.1128.i = add nsw i32 %.1128.in146.i, -4
  %i.afn = getelementptr inbounds nuw i8, ptr %.1151.i, i64 8 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.1131145.i, i64 4 ; 2 uses
  %i.afp = load <4 x i16>, ptr %i.afn, align 2, !tbaa !59
  %i.afq = zext <4 x i16> %i.afp to <4 x i32>
  %i.afr = add <4 x i32> %i.afm, %i.afq           ; 5 uses
  %10 = extractelement <4 x i32> %i.afr, i64 3
  %11 = and i32 %10, 2047
  %i.afs = zext nneg i32 %11 to i64
  %i.aft = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !64
  %i.afv = extractelement <4 x i32> %i.afr, i64 2
  %12 = and i32 %i.afv, 2047
  %i.afw = zext nneg i32 %12 to i64
  %i.afx = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.afw
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !64
  %i.afz = extractelement <4 x i32> %i.afr, i64 1
  %i.aga = and i32 %i.afz, 2047
  %i.agb = zext nneg i32 %i.aga to i64
  %i.agc = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !64
  %i.age = extractelement <4 x i32> %i.afr, i64 0
  %i.agf = and i32 %i.age, 2047
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !64
  store i8 %i.afu, ptr %i.afo, align 1, !tbaa !64
  %i.agj = getelementptr inbounds nuw i8, ptr %.1131145.i, i64 5
  store i8 %i.afy, ptr %i.agj, align 1, !tbaa !64
  %i.agk = getelementptr inbounds nuw i8, ptr %.1131145.i, i64 6
  store i8 %i.agd, ptr %i.agk, align 1, !tbaa !64
  %i.agl = getelementptr inbounds nuw i8, ptr %.1131145.i, i64 7
  store i8 %i.agi, ptr %i.agl, align 1, !tbaa !64
  %i.agm = icmp samesign ugt i32 %.1128.in146.i, 8
  br i1 %i.agm, label %.lr.ph.i207, label %horizontalAccumulateF.exit

.preheader139.i:                                  ; preds = %bb.ar, %.preheader139.i
  %.2132.i = phi ptr [ %i.agu, %.preheader139.i ], [ %.0123257, %bb.ar ] ; 2 uses
  %.2.i208 = phi ptr [ %i.agt, %.preheader139.i ], [ %.0122258, %bb.ar ] ; 2 uses
  %.0118.i = phi i32 [ %i.agn, %.preheader139.i ], [ %i.aco, %bb.ar ] ; 2 uses
  %i.agn = add nsw i32 %.0118.i, -1
  %i.ago = load i16, ptr %.2.i208, align 2, !tbaa !59
  %i.agp = and i16 %i.ago, 2047
  %i.agq = zext nneg i16 %i.agp to i64
  %i.agr = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.agq
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !64
  store i8 %i.ags, ptr %.2132.i, align 1, !tbaa !64
  %i.agt = getelementptr inbounds nuw i8, ptr %.2.i208, i64 2 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.2132.i, i64 1 ; 2 uses
  %i.agv = icmp samesign ugt i32 %.0118.i, 1
  br i1 %i.agv, label %.preheader139.i, label %.preheader137.i209

.preheader137.i209:                               ; preds = %.preheader139.i
  %.2129159.i = sub nsw i32 %i.o, %i.aco          ; 2 uses
  %i.agw = icmp sgt i32 %.2129159.i, 0
  br i1 %i.agw, label %.preheader.lr.ph.i210, label %horizontalAccumulateF.exit

.preheader.lr.ph.i210:                            ; preds = %.preheader137.i209
  %i.agx = zext i16 %i.acn to i64
  br label %.preheader.i211

.loopexit.i214:                                   ; preds = %bb.au
  %.2129.i = sub nsw i32 %.2129162.i, %i.aco      ; 2 uses
  %i.agy = icmp sgt i32 %.2129.i, 0
  br i1 %i.agy, label %.preheader.i211, label %horizontalAccumulateF.exit

.preheader.i211:                                  ; preds = %.loopexit.i214, %.preheader.lr.ph.i210
  %.2129162.i = phi i32 [ %.2129159.i, %.preheader.lr.ph.i210 ], [ %.2129.i, %.loopexit.i214 ]
  %.3161.i = phi ptr [ %i.agt, %.preheader.lr.ph.i210 ], [ %i.ahj, %.loopexit.i214 ]
  %.3133160.i = phi ptr [ %i.agu, %.preheader.lr.ph.i210 ], [ %i.ahk, %.loopexit.i214 ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i211
  %.4134.i = phi ptr [ %i.ahk, %bb.au ], [ %.3133160.i, %.preheader.i211 ] ; 2 uses
  %.4.i212 = phi ptr [ %i.ahj, %bb.au ], [ %.3161.i, %.preheader.i211 ] ; 4 uses
  %.0.i213 = phi i32 [ %i.agz, %bb.au ], [ %i.aco, %.preheader.i211 ] ; 2 uses
  %i.agz = add nsw i32 %.0.i213, -1
  %i.aha = load i16, ptr %.4.i212, align 2, !tbaa !59
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %.4.i212, i64 %i.agx ; 2 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !59
  %i.ahd = add i16 %i.ahc, %i.aha
  store i16 %i.ahd, ptr %i.ahb, align 2, !tbaa !59
  %i.ahe = load i16, ptr %.4.i212, align 2, !tbaa !59
  %i.ahf = and i16 %i.ahe, 2047
  %i.ahg = zext nneg i16 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.ahg
  %i.ahi = load i8, ptr %i.ahh, align 1, !tbaa !64
  store i8 %i.ahi, ptr %.4134.i, align 1, !tbaa !64
  %i.ahj = getelementptr inbounds nuw i8, ptr %.4.i212, i64 2 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.4134.i, i64 1 ; 2 uses
  %i.ahl = icmp sgt i32 %.0.i213, 1
  br i1 %i.ahl, label %bb.au, label %.loopexit.i214

bb.av:                                            ; preds = %bb.r
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ahn = load i16, ptr %i.ahm, align 4, !tbaa !83
  %i.aho = zext i16 %i.ahn to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.14, i32 noundef %i.aho) #7
  br label %.thread.sink.split

horizontalAccumulateF.exit:                       ; preds = %.lr.ph.i207, %.lr.ph158.i, %.loopexit.i214, %.lr.ph.i171, %.lr.ph142.i181, %.loopexit.i203, %.lr.ph.i162, %.lr.ph126.i, %.loopexit.i168, %.lr.ph.i153, %.lr.ph175.i, %.loopexit.i159, %.lr.ph.i144, %.lr.ph142.i, %.loopexit.i150, %.lr.ph.i, %.lr.ph156.i, %.loopexit.i, %.preheader137.i209, %bb.at, %bb.as, %bb.aq, %.preheader121.i193, %bb.ao, %bb.an, %bb.al, %.preheader105.i, %bb.ak, %bb.aj, %bb.ah, %.preheader154.i, %bb.af, %bb.ae, %bb.ac, %.preheader121.i, %bb.aa, %bb.z, %bb.x, %.preheader135.i, %bb.v, %bb.u, %bb.s
  %.sink = phi i64 [ %i.ax, %.preheader121.i193 ], [ %i.bh, %.preheader135.i ], [ %i.be, %.preheader121.i ], [ %i.be, %.preheader154.i ], [ %i.be, %.preheader105.i ], [ %i.ax, %.loopexit.i214 ], [ %i.ax, %.lr.ph.i171 ], [ %i.ax, %.preheader137.i209 ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %bb.v ], [ %i.bh, %.lr.ph156.i ], [ %i.bh, %.loopexit.i ], [ %i.ax, %.lr.ph158.i ], [ %i.be, %bb.x ], [ %i.be, %bb.z ], [ %i.be, %bb.aa ], [ %i.be, %.lr.ph142.i ], [ %i.be, %.loopexit.i150 ], [ %i.bh, %.lr.ph.i ], [ %i.be, %bb.ac ], [ %i.be, %bb.ae ], [ %i.be, %bb.af ], [ %i.be, %.lr.ph175.i ], [ %i.be, %.loopexit.i159 ], [ %i.be, %.lr.ph.i144 ], [ %i.be, %bb.ah ], [ %i.be, %bb.aj ], [ %i.be, %bb.ak ], [ %i.be, %.lr.ph126.i ], [ %i.be, %.loopexit.i168 ], [ %i.be, %.lr.ph.i153 ], [ %i.ax, %bb.al ], [ %i.ax, %bb.an ], [ %i.ax, %bb.ao ], [ %i.ax, %.lr.ph142.i181 ], [ %i.ax, %.loopexit.i203 ], [ %i.be, %.lr.ph.i162 ], [ %i.ax, %bb.aq ], [ %i.ax, %bb.as ], [ %i.ax, %bb.at ], [ %i.ax, %.lr.ph.i207 ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0123257, i64 %.sink
  %i.ahq = add nsw i64 %.0127256, %i.ax           ; 2 uses
  %i.ahr = getelementptr inbounds [2 x i8], ptr %.0122258, i64 %i.ax
  %i.ahs = icmp slt i64 %i.ahq, %.1126
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ahs, label %bb.r, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.f, %bb.h, %bb.m, %bb.av, %bb.i, %bb.j
  %.sink341 = phi ptr [ %1, %bb.j ], [ %1, %bb.i ], [ %.0123257, %bb.av ], [ %1, %bb.m ], [ %1, %bb.h ], [ %1, %bb.f ], [ %1, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sink341, i8 0, i64 %2, i1 false)
  br label %.thread

.thread:                                          ; preds = %horizontalAccumulateF.exit, %.thread.sink.split, %bb.q
  %.2 = phi i32 [ 0, %.thread.sink.split ], [ 1, %bb.q ], [ 1, %horizontalAccumulateF.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogSetupEncode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.d = load i16, ptr %i.c, align 2, !tbaa !77
  %i.e = icmp eq i16 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.g = load i16, ptr %i.f, align 2, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i16 [ %i.g, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i16 %i.h, ptr %i.i, align 8, !tbaa !79
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.j, i64 noundef range(i64 0, 4294967296) %i.m, ptr noundef null) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.n, i64 noundef range(i64 0, 4294967296) %i.q, ptr noundef null) #7
  %i.s = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.r, i64 noundef 2, ptr noundef null) #7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.s) #7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr %i.u, ptr %i.v, align 8, !tbaa !81
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 116
  %.val = load i16, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 118
  %.val28 = load i16, ptr %i.ab, align 2, !tbaa !84 ; 7 uses
  switch i16 %.val, label %.thread32 [
    i16 32, label %bb.g
    i16 16, label %bb.h
    i16 12, label %bb.i
    i16 11, label %bb.j
    i16 8, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i16 %.val28, 3
  br i1 %i.ac, label %.thread35, label %.thread32

bb.h:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]

bb.i:                                             ; preds = %bb.f
  %i.ad = add i16 %.val28, -2
  %switch.and.i = and i16 %i.ad, -3
  %switch.selectcmp18.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp18.i, label %.thread35, label %.thread32

bb.j:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]

.thread35:                                        ; preds = %bb.j, %bb.j, %bb.h, %bb.h, %bb.g, %bb.i
  %.0.i.ph = phi i32 [ 5, %bb.g ], [ 2, %bb.j ], [ 4, %bb.h ], [ 3, %bb.i ], [ 4, %bb.h ], [ 2, %bb.j ]
  store i32 %.0.i.ph, ptr %i.x, align 8, !tbaa !32
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %switch.selectcmp.case122.i = icmp ne i16 %.val28, 4
  %switch.selectcmp.case223.i = icmp ne i16 %.val28, 1
  %switch.selectcmp24.not.i = and i1 %switch.selectcmp.case122.i, %switch.selectcmp.case223.i
  %i.ae = sext i1 %switch.selectcmp24.not.i to i32
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !32
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread
    i16 1, label %.thread
  ]
end_hunk_2

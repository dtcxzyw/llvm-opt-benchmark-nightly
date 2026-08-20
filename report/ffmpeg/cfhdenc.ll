inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cfhd_encode_init:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21) #7
  br label %.loopexit268

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.c, align 8, !tbaa !29
  %i.p = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.o) #7 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 3 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !32
  %.not259271 = icmp sgt i32 %i.p, 0
  br i1 %.not259271, label %.lr.ph, label %.critedge266.preheader

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.g

.critedge266.preheader:                           ; preds = %.critedge, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8356 ; 3 uses
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv286 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next287, %.critedge ] ; 3 uses
  %i.t = load i32, ptr %i.i, align 4, !tbaa !30
  %i.u = add nsw i32 %i.t, 7
  %i.v = and i32 %i.u, -8                         ; 2 uses
  %.not256 = icmp eq i64 %indvars.iv286, 0
  %i.w = load i32, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  br i1 %.not256, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sub nsw i32 0, %i.w
  %i.y = load i32, ptr %i.e, align 8, !tbaa !37
  %i.z = ashr i32 %i.x, %i.y
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !38
  %i.ac = ashr i32 %i.v, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i32 [ %i.aa, %bb.h ], [ %i.w, %bb.g ]
  %i.ae = phi i32 [ %i.ac, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ae, i64 1
  %i.ah = sdiv <2 x i32> %i.ag, splat (i32 8)     ; 3 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 0
  %i.aj = add nsw i32 %i.ai, 64                   ; 7 uses
  %i.ak = extractelement <2 x i32> %i.ah, i64 1   ; 4 uses
  %i.al = mul i32 %i.aj, %i.ak                    ; 3 uses
  %i.am = shl i32 %i.al, 6
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 2) #7
  %i.ap = getelementptr inbounds nuw [592 x i8], ptr %i.r, i64 %indvars.iv286 ; 19 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !39
  %i.ar = tail call noalias ptr @av_calloc(i64 noundef %i.an, i64 noundef 2) #7 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !41
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 11 uses
  %.not257 = icmp eq ptr %i.at, null
  %.not258 = icmp eq ptr %i.ar, null
  %or.cond = select i1 %.not257, i1 true, i1 %.not258
  br i1 %or.cond, label %.loopexit268, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = shl nsw i32 %i.ak, 2                    ; 3 uses
  %i.av = shl nsw i32 %i.aj, 2                    ; 2 uses
  %i.aw = shl nsw i32 %i.ak, 1                    ; 3 uses
  %i.ax = shl nsw i32 %i.aj, 1                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !42
  %i.az = mul nsw i32 %i.ax, %i.ak
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !42
  %i.bd = sext i32 %i.al to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !42
  %i.bg = mul i32 %i.al, 3
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !42
  %i.bk = mul nsw i32 %i.av, %i.aw
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !42
  %i.bo = mul nsw i32 %i.ax, %i.aw
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !42
  %i.bs = mul nsw i32 %i.aj, 6
  %i.bt = mul nsw i32 %i.bs, %i.aw
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !42
  %i.bx = shl nsw i32 %i.aj, 3
  %i.by = mul nsw i32 %i.bx, %i.au
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !42
  %i.cc = mul nsw i32 %i.av, %i.au
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !42
  %i.cg = mul nsw i32 %i.aj, 12
  %i.ch = mul nsw i32 %i.cg, %i.au
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !42
  %i.cl = shufflevector <2 x i32> %i.ah, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %.preheader267

.preheader267:                                    ; preds = %bb.j, %bb.k
  %indvars.iv282 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next283, %bb.k ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %indvars.iv282
  %i.cn = trunc i64 %indvars.iv282 to i32
  %i.co = trunc nsw i64 %indvars.iv282 to i32     ; 2 uses
  %i.cp = sub i32 3, %i.cn
  %i.cq = ashr i32 %i.ae, %i.cp
  %i.cr = shl nsw i32 %i.aj, %i.co
  %i.cs = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %i.cu = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.cv = shl nsw <4 x i32> %i.cl, %i.cu
  %i.cw = shufflevector <4 x i32> %i.ct, <4 x i32> %i.cv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.cq, i64 3
  br label %bb.l

.critedge:                                        ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store ptr %i.ar, ptr %i.cy, align 8, !tbaa !42
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.ba
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  store ptr %i.ar, ptr %i.db, align 8, !tbaa !42
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.bl
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  store ptr %i.ar, ptr %i.de, align 8, !tbaa !42
  %i.df = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.bz
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !42
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.dh = load i32, ptr %i.q, align 4, !tbaa !32
  %i.di = sext i32 %i.dh to i64
  %.not259 = icmp slt i64 %indvars.iv.next287, %i.di
  br i1 %.not259, label %bb.g, label %.critedge266.preheader, !llvm.loop !43

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next283, 3
  br i1 %exitcond285.not, label %.critedge, label %.preheader267, !llvm.loop !45

bb.l:                                             ; preds = %.preheader267, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader267 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  store <4 x i32> %i.cx, ptr %i.dk, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !47

bb.m:                                             ; preds = %.critedge266
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 12452
  store i32 51465123, ptr %i.dl, align 4, !tbaa !48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 12456
  store i32 26, ptr %i.dm, align 4, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 4504
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 4512
  store i32 0, ptr %i.do, align 8, !tbaa !51
  br label %bb.r

bb.n:                                             ; preds = %.critedge266.preheader, %.critedge266
  %indvars.iv289 = phi i64 [ 0, %.critedge266.preheader ], [ %indvars.iv.next290, %.critedge266 ] ; 7 uses
  %.not263 = icmp samesign ult i64 %indvars.iv289, 256
  %i.dp = trunc nuw nsw i64 %indvars.iv289 to i32 ; 2 uses
  %i.dq = or i32 %i.dp, -256
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = select i1 %.not263, i32 %i.dp, i32 %i.dr ; 2 uses
  %.not264 = icmp eq i32 %i.ds, 0
  br i1 %.not264, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 255)
  %i.dt = zext nneg i32 %spec.select to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @codebook, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !46
  %i.dx = shl i32 %i.dw, 1
  %1 = icmp eq i64 %indvars.iv289, 0
  %i.dy = zext i1 %1 to i32
  %i.dz = or disjoint i32 %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv289
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !48
  %i.eb = load i32, ptr %i.du, align 8, !tbaa !46
  %i.ec = add i32 %i.eb, 1
  br label %.critedge266

bb.p:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv289
  store i32 0, ptr %i.ed, align 4, !tbaa !48
  br label %.critedge266

.critedge266:                                     ; preds = %bb.p, %bb.o
  %.sink = phi i32 [ 1, %bb.p ], [ %i.ec, %bb.o ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv289
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %.sink, ptr %i.ef, align 4, !tbaa !50
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next290, 512
  br i1 %exitcond292.not, label %bb.m, label %bb.n, !llvm.loop !53

.loopexit:                                        ; preds = %bb.s, %bb.r
  %.1240.lcssa = phi i32 [ %.0239276, %bb.r ], [ %i.es, %bb.s ] ; 2 uses
  %i.eg = icmp samesign ult i32 %.1240.lcssa, 320
  %i.eh = icmp samesign ult i64 %indvars.iv297, 16
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %bb.r, label %bb.q, !llvm.loop !54

bb.q:                                             ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8344
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8348
  store i32 7077, ptr %i.ek, align 4, !tbaa !55
  store i32 13, ptr %i.ej, align 8, !tbaa !56
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8352
  store i32 320, ptr %i.el, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 2456 ; 2 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.m, %.loopexit
  %i.en = phi i16 [ 1, %bb.m ], [ %i.er, %.loopexit ]
  %indvars.iv297 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next298, %.loopexit ] ; 3 uses
  %.0239276 = phi i32 [ 1, %bb.m ], [ %.1240.lcssa, %.loopexit ] ; 3 uses
  %i.eo = zext i16 %i.en to i32
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [6 x i8], ptr @runbook, i64 %indvars.iv.next298
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !57 ; 3 uses
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = icmp samesign ult i32 %.0239276, %i.es
  br i1 %i.et, label %.lr.ph275, label %.loopexit

.lr.ph275:                                        ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw [6 x i8], ptr @runbook, i64 %indvars.iv297
  %i.ev = load <2 x i16>, ptr %i.eu, align 2, !tbaa !57
  %i.ew = zext <2 x i16> %i.ev to <2 x i32>
  %i.ex = zext nneg i32 %.0239276 to i64
  %wide.trip.count = zext i16 %i.er to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph275, %bb.s
  %indvars.iv293 = phi i64 [ %i.ex, %.lr.ph275 ], [ %indvars.iv.next294, %bb.s ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv293 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 %i.eo, ptr %i.ez, align 4, !tbaa !51
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  store <2 x i32> %i.ew, ptr %i.ey, align 4, !tbaa !46
  %exitcond296.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count
  br i1 %exitcond296.not, label %.loopexit, label %bb.s, !llvm.loop !59

bb.t:                                             ; preds = %bb.q, %bb.t
  %indvars.iv300 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next301, %bb.t ] ; 6 uses
  %i.fa = mul nuw nsw i64 %indvars.iv300, 768
  %i.fb = mul nuw nsw i64 %i.fa, %indvars.iv300
  %i.fc = mul nuw nsw i64 %i.fb, %indvars.iv300
  %i.fd = lshr i64 %i.fc, 24
  %i.fe = trunc i64 %indvars.iv300 to i16
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv300
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fd
  store i16 %i.fe, ptr %i.fg, align 2, !tbaa !57
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next301, 256
  br i1 %exitcond303.not, label %.preheader, label %bb.t, !llvm.loop !60

bb.u:                                             ; preds = %bb.w
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 12472
  tail call void @ff_cfhdencdsp_init(ptr noundef nonnull %i.fh) #7
  %i.fi = load i32, ptr %i.q, align 4, !tbaa !32
  %.not260 = icmp eq i32 %i.fi, 4
  br i1 %.not260, label %bb.x, label %.loopexit268

.preheader:                                       ; preds = %bb.t, %bb.w
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %bb.w ], [ 0, %bb.t ] ; 2 uses
  %.0247279 = phi i16 [ %.1248, %bb.w ], [ 0, %bb.t ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv304 ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !57 ; 2 uses
  %.not262 = icmp eq i16 %i.fk, 0
  br i1 %.not262, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader
  store i16 %.0247279, ptr %i.fj, align 2, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %bb.v
  %.1248 = phi i16 [ %.0247279, %bb.v ], [ %i.fk, %.preheader ]
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next305, 1024
  br i1 %exitcond306.not, label %bb.u, label %.preheader, !llvm.loop !61

bb.x:                                             ; preds = %bb.u
  %i.fl = load i32, ptr %i.l, align 8, !tbaa !31
  %i.fm = load i32, ptr %i.i, align 4, !tbaa !30
  %i.fn = mul nsw i32 %i.fm, %i.fl
  %i.fo = sext i32 %i.fn to i64
  %i.fp = tail call noalias ptr @av_calloc(i64 noundef %i.fo, i64 noundef 2) #7 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 12464
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !62
  %.not261 = icmp eq ptr %i.fp, null
  %. = select i1 %.not261, i32 -12, i32 0
  br label %.loopexit268

.loopexit268:                                     ; preds = %bb.i, %bb.x, %bb.u, %bb.a, %bb.e, %bb.c
  %.3 = phi i32 [ %., %bb.x ], [ -1094995529, %bb.c ], [ -1094995529, %bb.e ], [ %i.g, %bb.a ], [ 0, %bb.u ], [ -12, %bb.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cfhd_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12472 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 231 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8356
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4504 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2456
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 11 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.._crit_edge987_crit_edge

.._crit_edge987_crit_edge:                        ; preds = %bb.a
  %.pre1184 = sext i32 %i.j to i64
  br label %._crit_edge987

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12464
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12480 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

._crit_edge987:                                   ; preds = %.loopexit, %.._crit_edge987_crit_edge
  %.pre-phi1185 = phi i64 [ %.pre1184, %.._crit_edge987_crit_edge ], [ %i.he, %.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = add nsw i32 %i.y, 15
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.w, %i.aa
  %i.ac = add nsw i64 %i.ab, 2048
  %i.ad = mul nsw i64 %i.ac, %.pre-phi1185
  %i.ae = add nsw i64 %i.ad, 256
  %i.af = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.ae) #7 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.ga, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv1080 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1081, %.loopexit ] ; 7 uses
  %.not524 = icmp eq i64 %indvars.iv1080, 0
  br i1 %.not524, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi i32 [ %i.ah, %bb.c ], [ 0, %bb.b ]
  %i.aj = getelementptr inbounds nuw [592 x i8], ptr %i.m, i64 %indvars.iv1080 ; 25 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 476
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 472 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 484
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !66
  %i.aq = icmp eq i64 %indvars.iv1080, 1
  %i.ar = icmp eq i64 %indvars.iv1080, 2
  %i.as = select i1 %i.ar, i64 1, i64 %indvars.iv1080
  %i.at = select i1 %i.aq, i64 2, i64 %i.as       ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 192 ; 2 uses
end_hunk_0

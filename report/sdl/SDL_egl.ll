Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_egl?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0_@SDL_EGL_PrivateChooseConfig:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %i.ah, %bb.h ], [ %.2141, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not150 = icmp eq i32 %i.ak, 0
  br i1 %.not150, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = zext nneg i32 %.3 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  store i32 12326, ptr %i.am, align 4
  %i.an = add nuw nsw i32 %.3, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.ak, ptr %i.ao, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4 = phi i32 [ %i.an, %bb.j ], [ %.3, %bb.i ]  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not151 = icmp eq i32 %i.aq, 0
  br i1 %.not151, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = zext nneg i32 %.4 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  store i32 12338, ptr %i.as, align 4
  %i.at = add nuw nsw i32 %.4, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.aq, ptr %i.au, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5 = phi i32 [ %i.at, %bb.l ], [ %.4, %bb.k ]  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %.not152 = icmp eq i32 %i.aw, 0
  br i1 %.not152, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = zext nneg i32 %.5 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  store i32 12337, ptr %i.ay, align 4
  %i.az = add nuw nsw i32 %.5, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.aw, ptr %i.ba, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.6 = phi i32 [ %i.az, %bb.n ], [ %.5, %bb.m ]  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.bc = load i32, ptr %i.bb, align 4
  %.not153 = icmp eq i32 %i.bc, 0
  br i1 %.not153, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = zext nneg i32 %.6 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  store i32 13113, ptr %i.be, align 4
  %i.bf = add nuw nsw i32 %.6, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 13115, ptr %i.bg, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.7 = phi i32 [ %i.bf, %bb.p ], [ %.6, %bb.o ]  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 12 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  %i.bk = load i8, ptr %i.bj, align 4, !range !10, !noundef !7
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = zext nneg i32 %.7 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  store i32 12339, ptr %i.bn, align 4
  %i.bo = add nuw nsw i32 %.7, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 1, ptr %i.bp, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.8 = phi i32 [ %i.bo, %bb.r ], [ %.7, %bb.q ]  ; 4 uses
  %i.bq = add nuw nsw i32 %.8, 1                  ; 3 uses
  %i.br = zext nneg i32 %.8 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br ; 2 uses
  store i32 12352, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %i.bu, 4
  br i1 %i.bv, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 2
  br i1 %i.by, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bz = tail call zeroext i1 @SDL_EGL_HasExtension(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.23)
  br i1 %i.bz, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u
  %i.ca = zext nneg i32 %i.bq to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ca
  store i32 64, ptr %i.cb, align 4
  br label %bb.z

thread-pre-split:                                 ; preds = %bb.u
  %.pr = load i32, ptr %i.bw, align 4
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split, %bb.t
  %i.cc = phi i32 [ %.pr, %thread-pre-split ], [ %i.bx, %bb.t ]
  %i.cd = icmp sgt i32 %i.cc, 1
  %i.ce = zext nneg i32 %i.bq to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 4, ptr %i.cf, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  store i32 1, ptr %i.cf, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %i.cg = load ptr, ptr %i.bh, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s
  %i.ch = zext nneg i32 %i.bq to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ch
  store i32 8, ptr %i.ci, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink195 = phi ptr [ %i.bi, %bb.aa ], [ %i.cg, %bb.z ]
  %.sink = phi i32 [ 12450, %bb.aa ], [ 12448, %bb.z ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink195, i64 200
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i32 %i.ck(i32 noundef %.sink) #6 ; 0 uses
  %.10 = add nuw nsw i32 %.8, 2                   ; 2 uses
  %i.cm = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %.not154 = icmp eq i32 %i.co, 0
  br i1 %.not154, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = zext nneg i32 %.10 to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cp
  store i32 12339, ptr %i.cq, align 4
  %i.cr = add nuw nsw i32 %.8, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.co, ptr %i.cs, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.11 = phi i32 [ %i.cr, %bb.ac ], [ %.10, %bb.ab ]
  %i.ct = zext nneg i32 %.11 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ct
  store i32 12344, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call i32 %i.cw(ptr noundef %i.cy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef 128, ptr noundef nonnull %i.b) #6
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = load i32, ptr %i.b, align 4             ; 3 uses
  %i.dc = icmp ne i32 %i.db, 0
  %or.cond.not = select i1 %i.da, i1 %i.dc, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.ae, label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load i32, ptr %i.de, align 8
  %.not155 = icmp ne i32 %i.df, 0
  %i.dg = icmp sgt i32 %i.db, 0
  %or.cond175 = select i1 %.not155, i1 %i.dg, i1 false
  br i1 %or.cond175, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ae, %.lr.ph
  %i.dh = phi ptr [ %i.dp, %.lr.ph ], [ %i.dd, %bb.ae ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 176
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call i32 %i.dj(ptr noundef %i.dl, ptr noundef %i.dn, i32 noundef 12334, ptr noundef nonnull %i.e) #6 ; 0 uses
  %i.dp = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = load i32, ptr %i.e, align 4
  %2 = icmp eq i32 %i.dr, %i.ds                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %.pre.pre = load i32, ptr %i.b, align 4         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dt = sext i32 %.pre.pre to i64
  %3 = icmp sge i64 %indvars.iv.next, %i.dt
  %or.cond198.not = select i1 %2, i1 true, i1 %3
  br i1 %or.cond198.not, label %.loopexit, label %.lr.ph, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %bb.ae
  %i.du = phi i32 [ %i.db, %bb.ae ], [ %.pre.pre, %.lr.ph ]
  %.2144 = phi i1 [ false, %bb.ae ], [ %2, %.lr.ph ]
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph172, label %._crit_edge

.lr.ph172:                                        ; preds = %.loopexit, %bb.at
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.at ], [ 0, %.loopexit ] ; 4 uses
  %.0130171 = phi i32 [ %.2, %bb.at ], [ -1, %.loopexit ] ; 3 uses
  %.0132170 = phi i32 [ %.2134, %bb.at ], [ -1, %.loopexit ] ; 5 uses
  %.0135169 = phi i32 [ %.2137, %bb.at ], [ -1, %.loopexit ] ; 4 uses
  %.pre183 = load ptr, ptr %i.bh, align 8         ; 5 uses
  br i1 %.2144, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph172
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre183, i64 48
  %i.dx = load i32, ptr %i.dw, align 8
  %.not156 = icmp eq i32 %i.dx, 0
  br i1 %.not156, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre183, i64 176
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre183, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv180
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call i32 %i.dz(ptr noundef %i.eb, ptr noundef %i.ed, i32 noundef 12334, ptr noundef nonnull %i.f) #6 ; 0 uses
  %i.ef = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = load i32, ptr %i.f, align 4
  %.not157 = icmp eq i32 %i.eh, %i.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br i1 %.not157, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph172
  %i.ej = phi ptr [ %i.ef, %bb.ag ], [ %.pre183, %bb.af ], [ %.pre183, %.lr.ph172 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 176
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv180 ; 5 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call i32 %i.el(ptr noundef %i.en, ptr noundef %i.ep, i32 noundef 12324, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.er = load i32, ptr %i.c, align 4
  %i.es = icmp eq i32 %i.er, 8
  br i1 %i.es, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.et = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load ptr, ptr %i.eo, align 8
  %i.ez = call i32 %i.ev(ptr noundef %i.ex, ptr noundef %i.ey, i32 noundef 12323, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.fa = load i32, ptr %i.c, align 4
  %i.fb = icmp eq i32 %i.fa, 8
  br i1 %i.fb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 176
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.eo, align 8
  %i.fi = call i32 %i.fe(ptr noundef %i.fg, ptr noundef %i.fh, i32 noundef 12322, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.fj = load i32, ptr %i.c, align 4
  %i.fk = icmp eq i32 %i.fj, 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0127 = phi i1 [ false, %bb.ah ], [ %i.fk, %bb.aj ], [ false, %bb.ai ]
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %indvars.iv177 = phi i64 [ 0, %bb.ak ], [ %indvars.iv.next178, %bb.ao ] ; 3 uses
  %.0167 = phi i32 [ 0, %bb.ak ], [ %.1, %bb.ao ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv177 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8            ; 3 uses
  %i.fn = icmp eq i32 %i.fm, 12344
  br i1 %i.fn, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %.not158 = icmp ne i32 %i.fp, -1
  %.off = add i32 %i.fm, -12321
  %switch = icmp ult i32 %.off, 6
  %or.cond = and i1 %switch, %.not158
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fq = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load ptr, ptr %i.eo, align 8
  %i.fw = call i32 %i.fs(ptr noundef %i.fu, ptr noundef %i.fv, i32 noundef %i.fm, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.fx = load i32, ptr %i.c, align 4
  %i.fy = load i32, ptr %i.fo, align 4
  %i.fz = add i32 %i.fx, %.0167
  %i.ga = sub i32 %i.fz, %i.fy
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.1 = phi i32 [ %i.ga, %bb.an ], [ %.0167, %bb.am ] ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 2
  %i.gb = icmp samesign ult i64 %indvars.iv177, 61
  br i1 %i.gb, label %bb.al, label %bb.ap, !llvm.loop !12

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.0.lcssa = phi i32 [ %.0167, %bb.al ], [ %.1, %bb.ao ] ; 4 uses
  %i.gc = icmp slt i32 %.0.lcssa, %.0135169
  %i.gd = icmp eq i32 %.0135169, -1
  %or.cond3 = or i1 %i.gd, %i.gc
  br i1 %or.cond3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ge = load ptr, ptr %i.eo, align 8
  %i.gf = load ptr, ptr %i.bh, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.ge, ptr %i.gg, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.1136 = phi i32 [ %.0.lcssa, %bb.aq ], [ %.0135169, %bb.ap ] ; 2 uses
  br i1 %.0127, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gh = icmp slt i32 %.0.lcssa, %.0132170
  %i.gi = icmp eq i32 %.0132170, -1
  %or.cond5 = or i1 %i.gi, %i.gh                  ; 2 uses
  %spec.select161 = select i1 %or.cond5, i32 %.0.lcssa, i32 %.0132170
  %i.gj = trunc nuw nsw i64 %indvars.iv180 to i32
  %spec.select162 = select i1 %or.cond5, i32 %i.gj, i32 %.0130171
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ag
  %.2137 = phi i32 [ %.0135169, %bb.ag ], [ %.1136, %bb.ar ], [ %.1136, %bb.as ]
  %.2134 = phi i32 [ %.0132170, %bb.ag ], [ %.0132170, %bb.ar ], [ %spec.select161, %bb.as ]
  %.2 = phi i32 [ %.0130171, %bb.ag ], [ %.0130171, %bb.ar ], [ %spec.select162, %bb.as ] ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.gk = load i32, ptr %i.b, align 4
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next181, %i.gl
  br i1 %i.gm, label %.lr.ph172, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.at, %.loopexit
  %.0130.lcssa = phi i32 [ -1, %.loopexit ], [ %.2, %bb.at ] ; 2 uses
  %i.gn = load i32, ptr %i.g, align 8
  %i.go = load i32, ptr %i.m, align 8
  %i.gp = add nsw i32 %i.go, %i.gn
  %i.gq = load i32, ptr %i.h, align 4
  %i.gr = add nsw i32 %i.gp, %i.gq
  %i.gs = icmp slt i32 %i.gr, 17
  %i.gt = icmp ne i32 %.0130.lcssa, -1
  %or.cond7 = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond7, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge
  %i.gu = sext i32 %.0130.lcssa to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = load ptr, ptr %i.bh, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.gw, ptr %i.gy, align 8
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 %or.cond.not
}

declare void @SDL_Log_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_EGL_CreateContext(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [33 x i32], align 16              ; 15 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.e, 4                      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0

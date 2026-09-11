Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11window?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@X11_CreateWindow:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 11 uses
  %i.be = and i64 %i.ax, 1073741824
  %i.bf = icmp ne i64 %i.be, 0                    ; 2 uses
  %i.bg = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.6) #12 ; 3 uses
  %i.bh = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.7) #12 ; 2 uses
  %.not265 = icmp eq ptr %i.bg, null
  br i1 %.not265, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge326
  %i.bi = load i8, ptr %i.bg, align 1
  %.not266 = icmp eq i8 %i.bi, 0
  br i1 %.not266, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %i.bj = tail call i64 @SDL_strtol_REAL(ptr noundef nonnull %i.bg, ptr noundef null, i32 noundef 0) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load ptr, ptr @X11_XGetVisualInfo, align 8
  %i.bm = call ptr %i.bl(ptr noundef %i.bb, i64 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %i.g) #12 ; 4 uses
  %.not272.not = icmp eq ptr %i.bm, null
  br i1 %.not272.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = load ptr, ptr @X11_XFree, align 8
  %i.br = call i32 %i.bq(ptr noundef nonnull %i.bm) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %._crit_edge326
  %i.bs = load i64, ptr %i.bd, align 8
  %i.bt = and i64 %i.bs, 2
  %.not267 = icmp eq i64 %i.bt, 0
  br i1 %.not267, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not268 = icmp eq ptr %i.bh, null
  br i1 %.not268, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i8, ptr %i.bh, align 1
  %.not269 = icmp eq i8 %i.bu, 0
  br i1 %.not269, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, 4
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.8, i1 noundef zeroext false) #12
  br i1 %i.by, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ca = load ptr, ptr %i.bz, align 8
  %.not270 = icmp eq ptr %i.ca, null
  br i1 %.not270, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call zeroext i1 @X11_GL_UseEGL(ptr noundef nonnull %0) #12
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cc = tail call ptr @X11_GLES_GetVisual(ptr noundef nonnull %0, ptr noundef %i.bb, i32 noundef %i.bc, i1 noundef zeroext %i.bf) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.cd = tail call ptr @X11_GL_GetVisual(ptr noundef nonnull %0, ptr noundef %i.bb, i32 noundef %i.bc, i1 noundef zeroext %i.bf) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0246 = phi ptr [ %i.cc, %bb.s ], [ %i.cd, %bb.t ] ; 4 uses
  %.not271.not = icmp eq ptr %.0246, null
  br i1 %.not271.not, label %.critedge293, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %.0246, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.0246, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = load ptr, ptr @X11_XFree, align 8
  %i.ci = tail call i32 %i.ch(ptr noundef nonnull %.0246) #12 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.n, %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.k, %bb.w
  %.2254 = phi ptr [ %i.bn, %bb.k ], [ %i.ck, %bb.w ], [ %i.ce, %bb.v ] ; 8 uses
  %.2251 = phi i32 [ %i.bp, %bb.k ], [ %i.cm, %bb.w ], [ %i.cg, %bb.v ]
  %i.cn = load i64, ptr %i.bd, align 8
  %i.co = and i64 %i.cn, 786432
  %or.cond = icmp ne i64 %i.co, 0
  %narrow = select i1 %or.cond, i1 true, i1 %i.au
  %i.cp = zext i1 %narrow to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.cr, align 8
  store i64 0, ptr %4, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.2254, i64 16
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = icmp eq i32 %i.cu, 5
  %i.cw = load ptr, ptr @X11_XCreateColormap, align 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = sext i32 %i.bc to i64
  %i.da = getelementptr inbounds [128 x i8], ptr %i.cy, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  br i1 %i.cv, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.de = call i64 %i.cw(ptr noundef %i.bb, i64 noundef %i.dc, ptr noundef nonnull %.2254, i32 noundef 1) #12 ; 2 uses
  store i64 %i.de, ptr %i.dd, align 8
  %.not275 = icmp eq i64 %i.de, 0
  br i1 %.not275, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9) #12
  br label %.critedge293

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.2254, i64 52 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 4
  %i.dk = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.dj) #12 ; 4 uses
  %.not276 = icmp eq ptr %i.dk, null
  br i1 %.not276, label %.critedge293, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load i32, ptr %i.dg, align 4            ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.2254, i64 24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = trunc i64 %i.dn to i32                  ; 3 uses
  %i.dp = and i32 %i.do, 1
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0241302 = phi i32 [ %i.dr, %.lr.ph ], [ 0, %bb.ab ]
  %.0244301 = phi i32 [ %i.ds, %.lr.ph ], [ %i.do, %bb.ab ] ; 2 uses
  %i.dr = add nuw nsw i32 %.0241302, 1            ; 2 uses
  %i.ds = ashr exact i32 %.0244301, 1             ; 2 uses
  %i.dt = and i32 %.0244301, 2
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.ab
  %.0244.lcssa = phi i32 [ %i.do, %bb.ab ], [ %i.ds, %.lr.ph ]
  %.0241.lcssa = phi i32 [ 0, %bb.ab ], [ %i.dr, %.lr.ph ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.2254, i64 32
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = trunc i64 %i.dw to i32                  ; 3 uses
  %i.dy = and i32 %i.dx, 1
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph307, label %._crit_edge308

.lr.ph307:                                        ; preds = %._crit_edge, %.lr.ph307
  %.0240305 = phi i32 [ %i.ea, %.lr.ph307 ], [ 0, %._crit_edge ]
  %.0243304 = phi i32 [ %i.eb, %.lr.ph307 ], [ %i.dx, %._crit_edge ] ; 2 uses
  %i.ea = add nuw nsw i32 %.0240305, 1            ; 2 uses
  %i.eb = ashr exact i32 %.0243304, 1             ; 2 uses
  %i.ec = and i32 %.0243304, 2
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph307, label %._crit_edge308, !llvm.loop !12

._crit_edge308:                                   ; preds = %.lr.ph307, %._crit_edge
  %.0243.lcssa = phi i32 [ %i.dx, %._crit_edge ], [ %i.eb, %.lr.ph307 ]
  %.0240.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ea, %.lr.ph307 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.2254, i64 40
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = trunc i64 %i.ef to i32                  ; 3 uses
  %i.eh = and i32 %i.eg, 1
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph314, label %.preheader

.preheader:                                       ; preds = %.lr.ph314, %._crit_edge308
  %.0242.lcssa = phi i32 [ %i.eg, %._crit_edge308 ], [ %i.em, %.lr.ph314 ]
  %.0239.lcssa = phi i32 [ 0, %._crit_edge308 ], [ %i.el, %.lr.ph314 ]
  %i.ej = icmp sgt i32 %i.dl, 0
  br i1 %i.ej, label %.lr.ph318, label %._crit_edge319

.lr.ph318:                                        ; preds = %.preheader
  %i.ek = add nsw i32 %i.dl, -1                   ; 4 uses
  %wide.trip.count = zext nneg i32 %i.dl to i64
  br label %bb.ac

.lr.ph314:                                        ; preds = %._crit_edge308, %.lr.ph314
  %.0239312 = phi i32 [ %i.el, %.lr.ph314 ], [ 0, %._crit_edge308 ]
  %.0242311 = phi i32 [ %i.em, %.lr.ph314 ], [ %i.eg, %._crit_edge308 ] ; 2 uses
  %i.el = add nuw nsw i32 %.0239312, 1            ; 2 uses
  %i.em = ashr exact i32 %.0242311, 1             ; 2 uses
  %i.en = and i32 %.0242311, 2
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph314, label %.preheader, !llvm.loop !13

bb.ac:                                            ; preds = %.lr.ph318, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next, %bb.ac ] ; 6 uses
  %i.ep = trunc i64 %indvars.iv to i32
  %6 = mul i32 %i.ep, 65535
  %7 = sdiv i32 %6, %i.ek
  %i.eq = trunc i64 %indvars.iv to i32
  %i.er = mul i32 %.0244.lcssa, %i.eq
  %8 = sdiv i32 %i.er, %i.ek
  %9 = trunc i64 %indvars.iv to i32
  %i.es = mul i32 %.0243.lcssa, %9
  %10 = sdiv i32 %i.es, %i.ek
  %11 = trunc i64 %indvars.iv to i32
  %12 = mul i32 %.0242.lcssa, %11
  %13 = sdiv i32 %12, %i.ek
  %i.et = shl i32 %8, %.0241.lcssa
  %i.eu = shl i32 %10, %.0240.lcssa
  %i.ev = or i32 %i.eu, %i.et
  %i.ew = shl i32 %13, %.0239.lcssa
  %i.ex = or i32 %i.ev, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv ; 5 uses
  store i64 %i.ey, ptr %i.ez, align 8
  %14 = trunc i32 %7 to i16                       ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i16 %14, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 10
  store i16 %14, ptr %i.fb, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i16 %14, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 14
  store i8 7, ptr %i.fd, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge319, label %bb.ac, !llvm.loop !14

._crit_edge319:                                   ; preds = %bb.ac, %.preheader
  %i.fe = load ptr, ptr @X11_XStoreColors, align 8
  %i.ff = load i64, ptr %i.dd, align 8
  %i.fg = call i32 %i.fe(ptr noundef nonnull %i.bb, i64 noundef %i.ff, ptr noundef nonnull %i.dk, i32 noundef %i.dl) #12 ; 0 uses
  call void @SDL_free_REAL(ptr noundef nonnull %i.dk) #12
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x
  %i.fh = call i64 %i.cw(ptr noundef %i.bb, i64 noundef %i.dc, ptr noundef nonnull %.2254, i32 noundef 0) #12
  store i64 %i.fh, ptr %i.dd, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge319, %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.fj = load i8, ptr %i.fi, align 1, !range !7, !noundef !8
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 158
  %i.fm = load i8, ptr %i.fl, align 2, !range !7, !noundef !8
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = call i32 @SDL_GetPrimaryDisplay_REAL() #12
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0247 = phi i1 [ false, %bb.ae ], [ %i.fr, %bb.ag ], [ false, %bb.af ]
  %i.fs = load i64, ptr %i.bd, align 8
  %i.ft = and i64 %i.fs, 786432
  %.not277 = icmp eq i64 %i.ft, 0
  br i1 %.not277, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @X11_ConstrainPopup(ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fx = load i32, ptr %i.fw, align 8
  call void @SDL_RelativeToGlobalForWindow(ptr noundef nonnull %1, i32 noundef %i.fv, i32 noundef %i.fx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12
  %i.fy = load ptr, ptr @X11_XCreateWindow, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bb, i64 232 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = sext i32 %i.bc to i64                   ; 3 uses
  %i.gc = getelementptr inbounds [128 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = load i32, ptr %i.e, align 4
  %i.gg = load i32, ptr %i.f, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = call i64 %i.fy(ptr noundef nonnull %i.bb, i64 noundef %i.ge, i32 noundef %i.gf, i32 noundef %i.gg, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef 0, i32 noundef %.2251, i32 noundef 1, ptr noundef nonnull %.2254, i64 noundef 8777, ptr noundef nonnull %4) #12 ; 13 uses
  %.not278 = icmp eq i64 %i.gl, 0
  br i1 %.not278, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #12
  br label %.critedge293

bb.al:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = and i64 %i.go, 1
  %.not279 = icmp eq i64 %i.gp, 0
  br i1 %.not279, label %bb.am, label %SetWindowBordered.exit

bb.am:                                            ; preds = %bb.al
  %i.gq = load i64, ptr %i.bd, align 8
  %i.gr = load ptr, ptr @X11_XInternAtom, align 8
  %i.gs = call i64 %i.gr(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.47, i32 noundef 1) #12, !inline_history !0 ; 3 uses
  %.not.i294 = icmp eq i64 %i.gs, 0
  br i1 %.not.i294, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i64 2, ptr %3, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gv = lshr i64 %i.gq, 4
  %.lobit = and i64 %i.gv, 1
  %i.gw = xor i64 %.lobit, 1
  store i64 %i.gw, ptr %i.gu, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  %i.gy = load ptr, ptr @X11_XChangeProperty, align 8
  %i.gz = call i32 %i.gy(ptr noundef nonnull %i.bb, i64 noundef %i.gl, i64 noundef %i.gs, i64 noundef %i.gs, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 5) #12, !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %SetWindowBordered.exit

bb.ao:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr @X11_XSetTransientForHint, align 8
  %i.hb = load ptr, ptr %i.fz, align 8
  %i.hc = getelementptr inbounds [128 x i8], ptr %i.hb, i64 %i.gb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = call i32 %i.ha(ptr noundef nonnull %i.bb, i64 noundef %i.gl, i64 noundef %i.he) #12, !inline_history !0 ; 0 uses
  br label %SetWindowBordered.exit

SetWindowBordered.exit:                           ; preds = %bb.ao, %bb.an, %bb.al
  %i.hg = load ptr, ptr @X11_XAllocSizeHints, align 8
  %i.hh = call ptr %i.hg() #12                    ; 11 uses
  store i64 0, ptr %i.hh, align 8
  %i.hi = load i64, ptr %i.bd, align 8
  %i.hj = and i64 %i.hi, 32
  %.not281 = icmp eq i64 %i.hj, 0
  br i1 %.not281, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %SetWindowBordered.exit
  %i.hk = load i32, ptr %i.gh, align 4            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store i32 %i.hk, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store i32 %i.hk, ptr %i.hm, align 8
  %i.hn = load i32, ptr %i.gj, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  store i32 %i.hn, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  store i32 %i.hn, ptr %i.hp, align 4
  store i64 48, ptr %i.hh, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %SetWindowBordered.exit
  %i.hq = phi i64 [ 49, %bb.ap ], [ 1, %SetWindowBordered.exit ]
  br i1 %.0247, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hr = load i32, ptr %i.e, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i32 %i.hr, ptr %i.hs, align 8
  %i.ht = load i32, ptr %i.f, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 %i.ht, ptr %i.hu, align 4
  store i64 %i.hq, ptr %i.hh, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hv = load ptr, ptr @X11_XAllocWMHints, align 8
  %i.hw = call ptr %i.hv() #12                    ; 5 uses
  %i.hx = load i64, ptr %i.bd, align 8
  %i.hy = and i64 %i.hx, 2147483648
  %.not282 = icmp eq i64 %i.hy, 0
  %i.hz = zext i1 %.not282 to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %i.hz, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store i64 %i.ic, ptr %i.id, align 8
  store i64 65, ptr %i.hw, align 8
  %i.ie = load ptr, ptr @X11_XAllocClassHint, align 8
  %i.if = call ptr %i.ie() #12                    ; 4 uses
  %i.ig = call ptr @SDL_GetExeName() #12
  store ptr %i.ig, ptr %i.if, align 8
  %i.ih = call ptr @SDL_GetAppID() #12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.ih, ptr %i.ii, align 8
  %i.ij = load ptr, ptr @X11_XSetWMProperties, align 8
  call void %i.ij(ptr noundef nonnull %i.bb, i64 noundef %i.gl, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.if) #12
  %i.ik = load ptr, ptr @X11_XFree, align 8
  %i.il = call i32 %i.ik(ptr noundef nonnull %i.hh) #12 ; 0 uses
  %i.im = load ptr, ptr @X11_XFree, align 8
  %i.in = call i32 %i.im(ptr noundef nonnull %i.hw) #12 ; 0 uses
  %i.io = load ptr, ptr @X11_XFree, align 8
  %i.ip = call i32 %i.io(ptr noundef nonnull %i.if) #12 ; 0 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ir = load i32, ptr %i.iq, align 8            ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.it = zext nneg i32 %i.ir to i64
  store i64 %i.it, ptr %i.h, align 8
  %i.iu = load ptr, ptr @X11_XInternAtom, align 8
  %i.iv = call i64 %i.iu(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.11, i32 noundef 0) #12
  %i.iw = load ptr, ptr @X11_XChangeProperty, align 8
  %i.ix = call i32 %i.iw(ptr noundef nonnull %i.bb, i64 noundef %i.gl, i64 noundef %i.iv, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.h, i32 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.iy = load i64, ptr %i.bd, align 8
  call void @X11_SetNetWMState(ptr noundef nonnull %0, i64 noundef %i.gl, i64 noundef %i.iy)
end_hunk_0

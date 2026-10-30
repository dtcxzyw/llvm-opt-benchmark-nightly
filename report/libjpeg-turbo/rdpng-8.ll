Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdpng-8?download=true
inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@start_input_png:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 1028, ptr %i.au, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !34
  call void %i.av(ptr noundef %0) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !74 ; 3 uses
  %.not223 = icmp ne i32 %i.ax, 0
  %.pre243 = load i32, ptr %2, align 4, !tbaa !72 ; 2 uses
  %.pre245 = load i32, ptr %i.aj, align 4, !tbaa !75 ; 2 uses
  %i.ay = zext i32 %.pre243 to i64
  %i.az = zext i32 %.pre245 to i64
  %i.ba = mul nuw i64 %i.az, %i.ay
  %i.bb = zext i32 %i.ax to i64
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  %or.cond275 = select i1 %.not223, i1 %i.bc, i1 false
  br i1 %or.cond275, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 41, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !33
  %i.bg = load ptr, ptr %0, align 8, !tbaa !27
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  call void %i.bh(ptr noundef %0) #7
  %.pre242 = load i32, ptr %2, align 4, !tbaa !72
  %.pre244 = load i32, ptr %i.aj, align 4, !tbaa !75
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi i32 [ %.pre244, %bb.l ], [ %.pre245, %bb.k ] ; 4 uses
  %i.bj = phi i32 [ %.pre242, %bb.l ], [ %.pre243, %bb.k ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !76
  %i.bm = load i8, ptr %i.ar, align 4, !tbaa !73  ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 5 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !77  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !78
  switch i8 %i.bp, label %bb.bi [
    i8 4, label %bb.n
    i8 0, label %bb.n
    i8 2, label %bb.ac
    i8 6, label %bb.ac
    i8 3, label %bb.ap
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !48
  switch i32 %i.bs, label %bb.p [
    i32 0, label %bb.o
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  store i32 1, ptr %i.br, align 4, !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  store i32 %i.bj, ptr %i.bu, align 4, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i32 %i.bi, ptr %i.bv, align 4, !tbaa !49
  %i.bw = zext i8 %i.bm to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 52
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 1032, ptr %i.by, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !79
  call void %i.ca(ptr noundef nonnull %0, i32 noundef 1) #7
  %i.cb = load i32, ptr %i.br, align 4, !tbaa !48 ; 3 uses
  switch i32 %i.cb, label %bb.u [
    i32 1, label %bb.q
    i32 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  %i.cc = load i8, ptr %i.bo, align 1, !tbaa !77
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !26
  %i.cg = load i8, ptr %i.ar, align 4, !tbaa !73
  %i.ch = zext i8 %i.cg to i32
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_raw_row, ptr %i.cj, align 8, !tbaa !80
  br label %bb.z

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_gray_row, ptr %i.ck, align 8, !tbaa !80
  br label %bb.z

bb.u:                                             ; preds = %bb.p
  %i.cl = add i32 %i.cb, -6
  %or.cond231 = icmp ult i32 %i.cl, 10
  br i1 %or.cond231, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_gray_rgb_row, ptr %i.cm, align 8, !tbaa !80
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %i.cb, 4
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_gray_cmyk_row, ptr %i.co, align 8, !tbaa !80
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i32 9, ptr %i.cq, align 8, !tbaa !32
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !34
  call void %i.cr(ptr noundef nonnull %0) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.s, %bb.t
  %.0205 = phi i32 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.y ] ; 2 uses
  %i.cs = load i8, ptr %i.bo, align 1, !tbaa !77
  %i.ct = icmp eq i8 %i.cs, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.cu, align 4, !tbaa !50
  br label %bb.bj

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %i.cu, align 4, !tbaa !50
  br label %bb.bj

bb.ac:                                            ; preds = %bb.m, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !48
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 6, ptr %i.cv, align 4, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.cy = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i32 %i.bj, ptr %i.cz, align 4, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store i32 %i.bi, ptr %i.da, align 4, !tbaa !49
  %i.db = zext i8 %i.bm to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i32 1033, ptr %i.dd, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !79
  call void %i.df(ptr noundef nonnull %0, i32 noundef 1) #7
  %i.dg = load i8, ptr %i.bo, align 1, !tbaa !77  ; 3 uses
  %i.dh = icmp eq i8 %i.dg, 2
  br i1 %i.dh, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !26
  %i.dk = load i8, ptr %i.ar, align 4, !tbaa !73
  %i.dl = zext i8 %i.dk to i32
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i32, ptr %i.cv, align 4, !tbaa !48 ; 2 uses
  switch i32 %i.dn, label %.thread.a [
    i32 6, label %.thread258
    i32 2, label %.thread258
  ]

.thread258:                                       ; preds = %bb.ag, %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_raw_row, ptr %i.do, align 8, !tbaa !80
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.pr = load i32, ptr %i.cv, align 4, !tbaa !48  ; 2 uses
  %3 = icmp eq i32 %.pr, 2
  br i1 %3, label %bb.ai, label %.thread.a

.thread.a:                                        ; preds = %bb.ag, %bb.ah
  %i.dp = phi i32 [ %.pr, %bb.ah ], [ %i.dn, %bb.ag ] ; 2 uses
  %i.dq = add i32 %i.dp, -6
  %or.cond232 = icmp ult i32 %i.dq, 10
  br i1 %or.cond232, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread.a, %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_rgb_row, ptr %i.dr, align 8, !tbaa !80
  br label %bb.am

bb.aj:                                            ; preds = %.thread.a
  %i.ds = icmp eq i32 %i.dp, 4
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_rgb_cmyk_row, ptr %i.dt, align 8, !tbaa !80
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.du = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store i32 9, ptr %i.dv, align 8, !tbaa !32
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !34
  call void %i.dw(ptr noundef nonnull %0) #7
  %.pre247 = load i8, ptr %i.bo, align 1, !tbaa !77
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %bb.ak
  %i.dx = phi i8 [ %.pre247, %bb.al ], [ %i.dg, %bb.ai ], [ %i.dg, %bb.ak ]
  %i.dy = icmp eq i8 %i.dx, 6
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 1, ptr %i.dz, align 4, !tbaa !50
  br label %bb.bj

bb.ao:                                            ; preds = %.thread258, %bb.am
  %.1206260 = phi i32 [ 1, %.thread258 ], [ 0, %bb.am ]
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.ea, align 4, !tbaa !50
  br label %bb.bj

bb.ap:                                            ; preds = %bb.m
  %i.eb = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store i32 %i.bj, ptr %i.ec, align 4, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store i32 %i.bi, ptr %i.ed, align 4, !tbaa !49
  %i.ee = zext i8 %i.bm to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 52
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store i32 1034, ptr %i.eg, align 8, !tbaa !32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !79
  call void %i.ei(ptr noundef nonnull %0, i32 noundef 1) #7
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.el = call i32 @spng_get_plte(ptr noundef %i.ej, ptr noundef nonnull %i.ek) #7 ; 2 uses
  %.not224 = icmp eq i32 %i.el, 0
  br i1 %.not224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i32 1030, ptr %i.en, align 8, !tbaa !32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 44
  %i.ep = call ptr @spng_strerror(i32 noundef %i.el) #7
  %i.eq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.eo, ptr noundef nonnull dereferenceable(1) %i.ep, i64 noundef 79) #7 ; 0 uses
  %i.er = load ptr, ptr %0, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 123
  store i8 0, ptr %i.es, align 1, !tbaa !33
  %i.et = load ptr, ptr %0, align 8, !tbaa !27
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34
  call void %i.eu(ptr noundef nonnull %0) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ev = load i8, ptr %i.bn, align 8, !tbaa !47
  %.not225 = icmp eq i8 %i.ev, 8
  br i1 %.not225, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ew = load i32, ptr %i.ek, align 8, !tbaa !51 ; 2 uses
  %i.ex = icmp ugt i32 %i.ew, 256
  br i1 %i.ex, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ey = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i32 1031, ptr %i.ez, align 8, !tbaa !32
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !34
  call void %i.fa(ptr noundef nonnull %0) #7
  %.pre246 = load i32, ptr %i.ek, align 8, !tbaa !51
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fb = phi i32 [ %.pre246, %bb.at ], [ %i.ew, %bb.as ] ; 4 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.fb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fe = icmp eq i32 %i.fb, 1
  br i1 %i.fe, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bb ] ; 3 uses
  %.0202238 = phi i32 [ 1, %.lr.ph.new ], [ %.1.1, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bb ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv ; 3 uses
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !53  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !54
  %.not226 = icmp eq i8 %i.fg, %i.fi
  br i1 %.not226, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !55
  %.not227 = icmp eq i8 %i.fg, %i.fk
  br i1 %.not227, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.1 = phi i32 [ 0, %bb.ax ], [ %.0202238, %bb.aw ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !53  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 5
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !54
  %.not226.1 = icmp eq i8 %i.fn, %i.fp
  br i1 %.not226.1, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !55
  %.not227.1 = icmp eq i8 %i.fn, %i.fr
  br i1 %.not227.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1.1 = phi i32 [ 0, %bb.ba ], [ %.1, %bb.az ]  ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.av, !llvm.loop !68

._crit_edge.unr-lcssa:                            ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0202238.epil.init = phi i32 [ 1, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod278 = trunc i32 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.epil.init ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 4, !tbaa !53  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !54
  %.not226.epil = icmp eq i8 %i.ft, %i.fv
  br i1 %.not226.epil, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.epil.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !55
  %.not227.epil = icmp eq i8 %i.ft, %i.fx
  br i1 %.not227.epil, label %._crit_edge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.epil.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bc, %bb.bd, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ 0, %bb.bd ], [ %.0202238.epil.init, %bb.bc ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !48 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bf, label %bb.be

._crit_edge.thread:                               ; preds = %bb.au
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !48 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread234, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.ge = phi i32 [ %i.gc, %._crit_edge.thread ], [ %i.fz, %._crit_edge ] ; 2 uses
  %i.gf = phi ptr [ %i.gb, %._crit_edge.thread ], [ %i.fy, %._crit_edge ]
  %.0202.lcssa262 = phi i32 [ 1, %._crit_edge.thread ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.gg = icmp eq i32 %i.ge, 2
  %i.gh = icmp ne i32 %.0202.lcssa262, 0
  %or.cond9 = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond9, label %.thread234, label %bb.bg
end_hunk_0

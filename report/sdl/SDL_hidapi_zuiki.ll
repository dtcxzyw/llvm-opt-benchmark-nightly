Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_zuiki?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@HIDAPI_DriverZUIKI_UpdateDevice:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 177 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 180 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 224 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 225 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 15 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  br i1 %.not, label %.backedge.us, label %.lr.ph.split

.backedge.us:                                     ; preds = %.lr.ph, %.backedge.us
  %i.br = load ptr, ptr %i.u, align 8
  %i.bs = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.br, ptr noundef nonnull %i.k, i64 noundef 64, i32 noundef 0) #7 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.backedge.us, label %._crit_edge, !llvm.loop !5

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.bu = phi i32 [ %i.rv, %.backedge ], [ %i.w, %.lr.ph ]
  %i.bv = load i16, ptr %i.y, align 2
  switch i16 %i.bv, label %.backedge [
    i16 23, label %bb.c
    i16 29, label %bb.ac
    i16 6, label %bb.ac
    i16 28, label %bb.ac
  ]

bb.c:                                             ; preds = %.lr.ph.split
  %i.bw = call i64 @SDL_GetTicksNS_REAL() #7      ; 22 uses
  %i.bx = load i16, ptr %i.ac, align 1
  %i.by = uitofp i16 %i.bx to float
  %i.bz = call float @HIDAPI_RemapVal(float noundef %i.by, float noundef 0.000000e+00, float noundef 6.553500e+04, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.ca = fptosi float %i.bz to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i16 noundef signext %i.ca) #7
  %i.cb = load i16, ptr %i.ad, align 1
  %i.cc = uitofp i16 %i.cb to float
  %i.cd = call float @HIDAPI_RemapVal(float noundef %i.cc, float noundef 0.000000e+00, float noundef 6.553500e+04, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.ce = fptosi float %i.cd to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 1, i16 noundef signext %i.ce) #7
  %i.cf = load i16, ptr %i.af, align 1
  %i.cg = uitofp i16 %i.cf to float
  %i.ch = call float @HIDAPI_RemapVal(float noundef %i.cg, float noundef 0.000000e+00, float noundef 6.553500e+04, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.ci = fptosi float %i.ch to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 2, i16 noundef signext %i.ci) #7
  %i.cj = load i16, ptr %i.ba, align 1
  %i.ck = uitofp i16 %i.cj to float
  %i.cl = call float @HIDAPI_RemapVal(float noundef %i.ck, float noundef 0.000000e+00, float noundef 6.553500e+04, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.cm = fptosi float %i.cl to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 3, i16 noundef signext %i.cm) #7
  %i.cn = load i16, ptr %i.bb, align 1
  %i.co = uitofp i16 %i.cn to float
  %i.cp = call float @HIDAPI_RemapVal(float noundef %i.co, float noundef 0.000000e+00, float noundef 1.023000e+03, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.cq = fptosi float %i.cp to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 4, i16 noundef signext %i.cq) #7
  %i.cr = load i16, ptr %i.bc, align 1
  %i.cs = uitofp i16 %i.cr to float
  %i.ct = call float @HIDAPI_RemapVal(float noundef %i.cs, float noundef 0.000000e+00, float noundef 1.023000e+03, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.cu = fptosi float %i.ct to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 5, i16 noundef signext %i.cu) #7
  %i.cv = load i8, ptr %i.bd, align 1
  %i.cw = load i8, ptr %i.be, align 1             ; 2 uses
  %.not.i = icmp eq i8 %i.cv, %i.cw
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx = add i8 %i.cw, -1             ; 2 uses
  %i.cx = icmp ult i8 %switch.tableidx, 8
  %switch.cast = zext i8 %switch.tableidx to i64
  %switch.shiftamt = shl nuw nsw i64 %switch.cast, 3
  %switch.downshift = lshr i64 650783357575234305, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %.0.i = select i1 %i.cx, i8 %switch.masked, i8 0
  call void @SDL_SendJoystickHat(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i8 noundef zeroext %.0.i) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cy = load i8, ptr %i.bf, align 2
  %i.cz = load i8, ptr %i.aw, align 2             ; 2 uses
  %.not102.i = icmp eq i8 %i.cy, %i.cz
  br i1 %.not102.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = trunc i8 %i.cz to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i1 noundef zeroext %i.da) #7
  %i.db = load i8, ptr %i.aw, align 2
  %i.dc = and i8 %i.db, 2
  %i.dd = icmp ne i8 %i.dc, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 1, i1 noundef zeroext %i.dd) #7
  %i.de = load i8, ptr %i.aw, align 2
  %i.df = and i8 %i.de, 8
  %i.dg = icmp ne i8 %i.df, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 2, i1 noundef zeroext %i.dg) #7
  %i.dh = load i8, ptr %i.aw, align 2
  %i.di = and i8 %i.dh, 16
  %i.dj = icmp ne i8 %i.di, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 3, i1 noundef zeroext %i.dj) #7
  %i.dk = load i8, ptr %i.aw, align 2
  %i.dl = and i8 %i.dk, 64
  %i.dm = icmp ne i8 %i.dl, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 9, i1 noundef zeroext %i.dm) #7
  %i.dn = load i8, ptr %i.aw, align 2
  %i.do = icmp slt i8 %i.dn, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 10, i1 noundef zeroext %i.do) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dp = load i8, ptr %i.bg, align 1
  %i.dq = load i8, ptr %i.bh, align 1             ; 2 uses
  %.not103.i = icmp eq i8 %i.dp, %i.dq
  br i1 %.not103.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dr = and i8 %i.dq, 4
  %i.ds = icmp ne i8 %i.dr, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 4, i1 noundef zeroext %i.ds) #7
  %i.dt = load i8, ptr %i.bh, align 1
  %i.du = and i8 %i.dt, 8
  %i.dv = icmp ne i8 %i.du, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 6, i1 noundef zeroext %i.dv) #7
  %i.dw = load i8, ptr %i.bh, align 1
  %i.dx = and i8 %i.dw, 16
  %i.dy = icmp ne i8 %i.dx, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 5, i1 noundef zeroext %i.dy) #7
  %i.dz = load i8, ptr %i.bh, align 1
  %i.ea = and i8 %i.dz, 32
  %i.eb = icmp ne i8 %i.ea, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 7, i1 noundef zeroext %i.eb) #7
  %i.ec = load i8, ptr %i.bh, align 1
  %i.ed = and i8 %i.ec, 64
  %i.ee = icmp ne i8 %i.ed, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.bw, ptr noundef nonnull %i.t, i8 noundef zeroext 8, i1 noundef zeroext %i.ee) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ef = load i8, ptr %i.ah, align 8, !range !3, !noundef !4
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.j, label %.backedge.sink.split

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.eh = load i16, ptr %i.bi, align 1
  %i.ei = sitofp i16 %i.eh to float
  %i.ej = fmul nnan float %i.ei, f0x3A0EFA35
  %i.ek = load i8, ptr %i.ak, align 8
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.el
  store float %i.ej, ptr %i.em, align 4
  %i.en = load i8, ptr %i.ak, align 8
  %i.eo = zext i8 %i.en to i16
  %i.ep = add nuw nsw i16 %i.eo, 1
  %i.eq = urem i16 %i.ep, 11
  %i.er = trunc nuw nsw i16 %i.eq to i8
  store i8 %i.er, ptr %i.ak, align 8
  %i.es = load i8, ptr %i.al, align 1             ; 4 uses
  %i.et = icmp ult i8 %i.es, 11
  br i1 %i.et, label %bb.k, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.h, ptr noundef nonnull align 4 dereferenceable(44) %i.ai, i64 44, i1 false)
  br label %.preheader.preheader.i.i

bb.k:                                             ; preds = %bb.j
  %i.eu = add nuw nsw i8 %i.es, 1                 ; 2 uses
  store i8 %i.eu, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.h, ptr noundef nonnull align 4 dereferenceable(44) %i.ai, i64 44, i1 false)
  %.not.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i, label %median_filter_update.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.k, %.thread.i.i
  %i.ev = phi i8 [ %i.es, %.thread.i.i ], [ %i.eu, %bb.k ] ; 2 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  %wide.trip.count36.i.i = zext nneg i32 %i.ex to i64
  %wide.trip.count.i.i = zext i8 %i.ev to i64     ; 3 uses
  %i.ey = add nsw i64 %wide.trip.count.i.i, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %indvars.iv33.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next34.i.i, %._crit_edge.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv33.i.i ; 6 uses
  %.pre38.i.i = load float, ptr %i.ez, align 4    ; 4 uses
  %i.fa = sub nsw i64 %indvars.iv33.i.i, %wide.trip.count.i.i
  %i.fb = and i64 %i.fa, 1
  %lcmp.mod119.not.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod119.not.not, label %.prol.preheader116, label %.prol.loopexit117

.prol.preheader116:                               ; preds = %.lr.ph.i.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4          ; 3 uses
  %i.fe = fcmp ogt float %.pre38.i.i, %i.fd
  br i1 %i.fe, label %bb.l, label %.prol.loopexit117.unr-lcssa

bb.l:                                             ; preds = %.prol.preheader116
  store float %i.fd, ptr %i.ez, align 4
  store float %.pre38.i.i, ptr %i.fc, align 4
  br label %.prol.loopexit117.unr-lcssa

.prol.loopexit117.unr-lcssa:                      ; preds = %bb.l, %.prol.preheader116
  %i.ff = phi float [ %.pre38.i.i, %.prol.preheader116 ], [ %i.fd, %bb.l ]
  %indvars.iv.next31.i.i.prol = add nuw nsw i64 %indvars.iv.i.i, 1
  br label %.prol.loopexit117

.prol.loopexit117:                                ; preds = %.prol.loopexit117.unr-lcssa, %.lr.ph.i.i
  %.unr120 = phi float [ %.pre38.i.i, %.lr.ph.i.i ], [ %i.ff, %.prol.loopexit117.unr-lcssa ]
  %indvars.iv30.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next31.i.i.prol, %.prol.loopexit117.unr-lcssa ]
  %i.fg = icmp eq i64 %i.ey, %indvars.iv33.i.i
  br i1 %i.fg, label %._crit_edge.i.i, label %.lr.ph.i.i.new

._crit_edge.i.i:                                  ; preds = %bb.p, %.prol.loopexit117
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond37.not.i.i = icmp eq i64 %indvars.iv.next34.i.i, %wide.trip.count36.i.i
  br i1 %exitcond37.not.i.i, label %median_filter_update.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !6

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit117, %bb.p
  %i.fh = phi float [ %i.fq, %bb.p ], [ %.unr120, %.prol.loopexit117 ] ; 3 uses
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i.1, %bb.p ], [ %indvars.iv30.i.i.unr, %.prol.loopexit117 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv30.i.i ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4          ; 2 uses
  %i.fk = fcmp ogt float %i.fh, %i.fj
  br i1 %i.fk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.new
  store float %i.fj, ptr %i.ez, align 4
  store float %i.fh, ptr %i.fi, align 4
  %.pre.i.i = load float, ptr %i.ez, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.new
  %i.fl = phi float [ %i.fh, %.lr.ph.i.i.new ], [ %.pre.i.i, %bb.m ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv30.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4          ; 2 uses
  %i.fp = fcmp ogt float %i.fl, %i.fo
  br i1 %i.fp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.fo, ptr %i.ez, align 4
  store float %i.fl, ptr %i.fn, align 4
  %.pre.i.i.1 = load float, ptr %i.ez, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fq = phi float [ %i.fl, %bb.n ], [ %.pre.i.i.1, %bb.o ]
  %indvars.iv.next31.i.i.1 = add nuw nsw i64 %indvars.iv30.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next31.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.new, !llvm.loop !7

median_filter_update.exit.loopexit.i:             ; preds = %._crit_edge.i.i
  %i.fr = lshr i32 %i.ew, 1
  %i.fs = zext nneg i32 %i.fr to i64
  br label %median_filter_update.exit.i

median_filter_update.exit.i:                      ; preds = %median_filter_update.exit.loopexit.i, %bb.k
  %i.ft = phi i64 [ 0, %bb.k ], [ %i.fs, %median_filter_update.exit.loopexit.i ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  store float %i.fv, ptr %i.i, align 4
  %i.fw = load i16, ptr %i.bj, align 1
  %i.fx = sitofp i16 %i.fw to float
  %i.fy = fmul nnan float %i.fx, f0x3A0EFA35
  %i.fz = load i8, ptr %i.ao, align 8
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ga
  store float %i.fy, ptr %i.gb, align 4
  %i.gc = load i8, ptr %i.ao, align 8
  %i.gd = zext i8 %i.gc to i16
  %i.ge = add nuw nsw i16 %i.gd, 1
  %i.gf = urem i16 %i.ge, 11
  %i.gg = trunc nuw nsw i16 %i.gf to i8
  store i8 %i.gg, ptr %i.ao, align 8
  %i.gh = load i8, ptr %i.ap, align 1             ; 4 uses
  %i.gi = icmp ult i8 %i.gh, 11
  br i1 %i.gi, label %bb.q, label %.thread.i104.i

.thread.i104.i:                                   ; preds = %median_filter_update.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.g, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  br label %.preheader.preheader.i105.i

bb.q:                                             ; preds = %median_filter_update.exit.i
  %i.gj = add nuw nsw i8 %i.gh, 1                 ; 2 uses
  store i8 %i.gj, ptr %i.ap, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.g, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  %.not.i120.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i120.i, label %median_filter_update.exit121.i, label %.preheader.preheader.i105.i

.preheader.preheader.i105.i:                      ; preds = %bb.q, %.thread.i104.i
  %i.gk = phi i8 [ %i.gh, %.thread.i104.i ], [ %i.gj, %bb.q ] ; 2 uses
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = add nsw i32 %i.gl, -1
  %wide.trip.count36.i106.i = zext nneg i32 %i.gm to i64
  %wide.trip.count.i107.i = zext i8 %i.gk to i64  ; 3 uses
  %i.gn = add nsw i64 %wide.trip.count.i107.i, -2
  br label %.lr.ph.i108.i

.lr.ph.i108.i:                                    ; preds = %._crit_edge.i116.i, %.preheader.preheader.i105.i
  %indvars.iv33.i109.i = phi i64 [ 0, %.preheader.preheader.i105.i ], [ %indvars.iv.next34.i111.i, %._crit_edge.i116.i ] ; 4 uses
  %indvars.iv.i110.i = phi i64 [ 1, %.preheader.preheader.i105.i ], [ %indvars.iv.next.i117.i, %._crit_edge.i116.i ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv33.i109.i ; 6 uses
  %.pre38.i112.i = load float, ptr %i.go, align 4 ; 4 uses
  %i.gp = sub nsw i64 %indvars.iv33.i109.i, %wide.trip.count.i107.i
  %i.gq = and i64 %i.gp, 1
  %lcmp.mod124.not.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod124.not.not, label %.prol.preheader121, label %.prol.loopexit122

.prol.preheader121:                               ; preds = %.lr.ph.i108.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i110.i ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4          ; 3 uses
  %i.gt = fcmp ogt float %.pre38.i112.i, %i.gs
  br i1 %i.gt, label %bb.r, label %.prol.loopexit122.unr-lcssa

bb.r:                                             ; preds = %.prol.preheader121
  store float %i.gs, ptr %i.go, align 4
  store float %.pre38.i112.i, ptr %i.gr, align 4
  br label %.prol.loopexit122.unr-lcssa

.prol.loopexit122.unr-lcssa:                      ; preds = %bb.r, %.prol.preheader121
  %i.gu = phi float [ %.pre38.i112.i, %.prol.preheader121 ], [ %i.gs, %bb.r ]
  %indvars.iv.next31.i114.i.prol = add nuw nsw i64 %indvars.iv.i110.i, 1
  br label %.prol.loopexit122

.prol.loopexit122:                                ; preds = %.prol.loopexit122.unr-lcssa, %.lr.ph.i108.i
  %.unr125 = phi float [ %.pre38.i112.i, %.lr.ph.i108.i ], [ %i.gu, %.prol.loopexit122.unr-lcssa ]
  %indvars.iv30.i113.i.unr = phi i64 [ %indvars.iv.i110.i, %.lr.ph.i108.i ], [ %indvars.iv.next31.i114.i.prol, %.prol.loopexit122.unr-lcssa ]
  %i.gv = icmp eq i64 %i.gn, %indvars.iv33.i109.i
  br i1 %i.gv, label %._crit_edge.i116.i, label %.lr.ph.i108.i.new

._crit_edge.i116.i:                               ; preds = %bb.v, %.prol.loopexit122
  %indvars.iv.next34.i111.i = add nuw nsw i64 %indvars.iv33.i109.i, 1 ; 2 uses
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i110.i, 1
  %exitcond37.not.i118.i = icmp eq i64 %indvars.iv.next34.i111.i, %wide.trip.count36.i106.i
  br i1 %exitcond37.not.i118.i, label %median_filter_update.exit121.loopexit.i, label %.lr.ph.i108.i, !llvm.loop !6

.lr.ph.i108.i.new:                                ; preds = %.prol.loopexit122, %bb.v
  %i.gw = phi float [ %i.hf, %bb.v ], [ %.unr125, %.prol.loopexit122 ] ; 3 uses
  %indvars.iv30.i113.i = phi i64 [ %indvars.iv.next31.i114.i.1, %bb.v ], [ %indvars.iv30.i113.i.unr, %.prol.loopexit122 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv30.i113.i ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4          ; 2 uses
  %i.gz = fcmp ogt float %i.gw, %i.gy
  br i1 %i.gz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i108.i.new
  store float %i.gy, ptr %i.go, align 4
  store float %i.gw, ptr %i.gx, align 4
  %.pre.i119.i = load float, ptr %i.go, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i108.i.new
  %i.ha = phi float [ %i.gw, %.lr.ph.i108.i.new ], [ %.pre.i119.i, %bb.s ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv30.i113.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4          ; 2 uses
  %i.he = fcmp ogt float %i.ha, %i.hd
  br i1 %i.he, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.hd, ptr %i.go, align 4
  store float %i.ha, ptr %i.hc, align 4
  %.pre.i119.i.1 = load float, ptr %i.go, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hf = phi float [ %i.ha, %bb.t ], [ %.pre.i119.i.1, %bb.u ]
  %indvars.iv.next31.i114.i.1 = add nuw nsw i64 %indvars.iv30.i113.i, 2 ; 2 uses
  %exitcond.not.i115.i.1 = icmp eq i64 %indvars.iv.next31.i114.i.1, %wide.trip.count.i107.i
  br i1 %exitcond.not.i115.i.1, label %._crit_edge.i116.i, label %.lr.ph.i108.i.new, !llvm.loop !7

median_filter_update.exit121.loopexit.i:          ; preds = %._crit_edge.i116.i
  %i.hg = lshr i32 %i.gl, 1
  %i.hh = zext nneg i32 %i.hg to i64
  br label %median_filter_update.exit121.i

median_filter_update.exit121.i:                   ; preds = %median_filter_update.exit121.loopexit.i, %bb.q
  %i.hi = phi i64 [ 0, %bb.q ], [ %i.hh, %median_filter_update.exit121.loopexit.i ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  store float %i.hk, ptr %i.bk, align 4
  %i.hl = load i16, ptr %i.bl, align 1
  %i.hm = sext i16 %i.hl to i32
  %i.hn = sub nsw i32 0, %i.hm
  %i.ho = sitofp i32 %i.hn to float
  %i.hp = fmul nnan float %i.ho, f0x3A0EFA35
  %i.hq = load i8, ptr %i.at, align 8
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.hr
  store float %i.hp, ptr %i.hs, align 4
  %i.ht = load i8, ptr %i.at, align 8
  %i.hu = zext i8 %i.ht to i16
  %i.hv = add nuw nsw i16 %i.hu, 1
  %i.hw = urem i16 %i.hv, 11
  %i.hx = trunc nuw nsw i16 %i.hw to i8
  store i8 %i.hx, ptr %i.at, align 8
  %i.hy = load i8, ptr %i.au, align 1             ; 4 uses
  %i.hz = icmp ult i8 %i.hy, 11
  br i1 %i.hz, label %bb.w, label %.thread.i122.i

.thread.i122.i:                                   ; preds = %median_filter_update.exit121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.f, ptr noundef nonnull align 4 dereferenceable(44) %i.ar, i64 44, i1 false)
  br label %.preheader.preheader.i123.i

bb.w:                                             ; preds = %median_filter_update.exit121.i
  %i.ia = add nuw nsw i8 %i.hy, 1                 ; 2 uses
  store i8 %i.ia, ptr %i.au, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.f, ptr noundef nonnull align 4 dereferenceable(44) %i.ar, i64 44, i1 false)
  %.not.i138.i = icmp eq i8 %i.hy, 0
  br i1 %.not.i138.i, label %median_filter_update.exit139.i, label %.preheader.preheader.i123.i

.preheader.preheader.i123.i:                      ; preds = %bb.w, %.thread.i122.i
  %i.ib = phi i8 [ %i.hy, %.thread.i122.i ], [ %i.ia, %bb.w ] ; 2 uses
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  %i.id = add nsw i32 %i.ic, -1
  %wide.trip.count36.i124.i = zext nneg i32 %i.id to i64
  %wide.trip.count.i125.i = zext i8 %i.ib to i64  ; 3 uses
  %i.ie = add nsw i64 %wide.trip.count.i125.i, -2
  br label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %._crit_edge.i134.i, %.preheader.preheader.i123.i
  %indvars.iv33.i127.i = phi i64 [ 0, %.preheader.preheader.i123.i ], [ %indvars.iv.next34.i129.i, %._crit_edge.i134.i ] ; 4 uses
  %indvars.iv.i128.i = phi i64 [ 1, %.preheader.preheader.i123.i ], [ %indvars.iv.next.i135.i, %._crit_edge.i134.i ] ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv33.i127.i ; 6 uses
  %.pre38.i130.i = load float, ptr %i.if, align 4 ; 4 uses
  %i.ig = sub nsw i64 %indvars.iv33.i127.i, %wide.trip.count.i125.i
  %i.ih = and i64 %i.ig, 1
  %lcmp.mod129.not.not = icmp eq i64 %i.ih, 0
  br i1 %lcmp.mod129.not.not, label %.prol.preheader126, label %.prol.loopexit127

.prol.preheader126:                               ; preds = %.lr.ph.i126.i
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i128.i ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4          ; 3 uses
  %i.ik = fcmp ogt float %.pre38.i130.i, %i.ij
  br i1 %i.ik, label %bb.x, label %.prol.loopexit127.unr-lcssa

bb.x:                                             ; preds = %.prol.preheader126
  store float %i.ij, ptr %i.if, align 4
  store float %.pre38.i130.i, ptr %i.ii, align 4
  br label %.prol.loopexit127.unr-lcssa

.prol.loopexit127.unr-lcssa:                      ; preds = %bb.x, %.prol.preheader126
  %i.il = phi float [ %.pre38.i130.i, %.prol.preheader126 ], [ %i.ij, %bb.x ]
  %indvars.iv.next31.i132.i.prol = add nuw nsw i64 %indvars.iv.i128.i, 1
  br label %.prol.loopexit127

.prol.loopexit127:                                ; preds = %.prol.loopexit127.unr-lcssa, %.lr.ph.i126.i
  %.unr130 = phi float [ %.pre38.i130.i, %.lr.ph.i126.i ], [ %i.il, %.prol.loopexit127.unr-lcssa ]
  %indvars.iv30.i131.i.unr = phi i64 [ %indvars.iv.i128.i, %.lr.ph.i126.i ], [ %indvars.iv.next31.i132.i.prol, %.prol.loopexit127.unr-lcssa ]
  %i.im = icmp eq i64 %i.ie, %indvars.iv33.i127.i
  br i1 %i.im, label %._crit_edge.i134.i, label %.lr.ph.i126.i.new

._crit_edge.i134.i:                               ; preds = %bb.ab, %.prol.loopexit127
  %indvars.iv.next34.i129.i = add nuw nsw i64 %indvars.iv33.i127.i, 1 ; 2 uses
  %indvars.iv.next.i135.i = add nuw nsw i64 %indvars.iv.i128.i, 1
  %exitcond37.not.i136.i = icmp eq i64 %indvars.iv.next34.i129.i, %wide.trip.count36.i124.i
  br i1 %exitcond37.not.i136.i, label %median_filter_update.exit139.loopexit.i, label %.lr.ph.i126.i, !llvm.loop !6

.lr.ph.i126.i.new:                                ; preds = %.prol.loopexit127, %bb.ab
  %i.in = phi float [ %i.iw, %bb.ab ], [ %.unr130, %.prol.loopexit127 ] ; 3 uses
  %indvars.iv30.i131.i = phi i64 [ %indvars.iv.next31.i132.i.1, %bb.ab ], [ %indvars.iv30.i131.i.unr, %.prol.loopexit127 ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv30.i131.i ; 2 uses
  %i.ip = load float, ptr %i.io, align 4          ; 2 uses
  %i.iq = fcmp ogt float %i.in, %i.ip
  br i1 %i.iq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i126.i.new
  store float %i.ip, ptr %i.if, align 4
  store float %i.in, ptr %i.io, align 4
  %.pre.i137.i = load float, ptr %i.if, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i126.i.new
  %i.ir = phi float [ %i.in, %.lr.ph.i126.i.new ], [ %.pre.i137.i, %bb.y ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv30.i131.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4          ; 2 uses
  %i.iv = fcmp ogt float %i.ir, %i.iu
  br i1 %i.iv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.iu, ptr %i.if, align 4
  store float %i.ir, ptr %i.it, align 4
  %.pre.i137.i.1 = load float, ptr %i.if, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.iw = phi float [ %i.ir, %bb.z ], [ %.pre.i137.i.1, %bb.aa ]
  %indvars.iv.next31.i132.i.1 = add nuw nsw i64 %indvars.iv30.i131.i, 2 ; 2 uses
  %exitcond.not.i133.i.1 = icmp eq i64 %indvars.iv.next31.i132.i.1, %wide.trip.count.i125.i
  br i1 %exitcond.not.i133.i.1, label %._crit_edge.i134.i, label %.lr.ph.i126.i.new, !llvm.loop !7

median_filter_update.exit139.loopexit.i:          ; preds = %._crit_edge.i134.i
  %i.ix = lshr i32 %i.ic, 1
  %i.iy = zext nneg i32 %i.ix to i64
  br label %median_filter_update.exit139.i

median_filter_update.exit139.i:                   ; preds = %median_filter_update.exit139.loopexit.i, %bb.w
  %i.iz = phi i64 [ 0, %bb.w ], [ %i.iy, %median_filter_update.exit139.loopexit.i ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  store float %i.jb, ptr %i.bm, align 4
  call void @SDL_SendJoystickSensor(i64 noundef %i.bw, ptr noundef nonnull %i.t, i32 noundef 2, i64 noundef %i.bw, ptr noundef nonnull %i.i, i32 noundef 3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.jc = load <2 x i16>, ptr %i.bn, align 1
  %i.jd = load i16, ptr %i.bo, align 1
  %i.je = sext i16 %i.jd to i32
  %i.jf = sub nsw i32 0, %i.je
  %i.jg = sitofp i32 %i.jf to float
  %i.jh = fmul nnan float %i.jg, f0x3B1CE80A
  store float %i.jh, ptr %i.bp, align 8
  %i.ji = load i16, ptr %i.bq, align 1
  %i.jj = insertelement <2 x i16> %i.jc, i16 %i.ji, i64 1
  %i.jk = sitofp <2 x i16> %i.jj to <2 x float>
  %i.jl = fmul nnan <2 x float> %i.jk, splat (float f0x3B1CE80A)
  store <2 x float> %i.jl, ptr %i.j, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.bw, ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef %i.bw, ptr noundef nonnull %i.j, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %.backedge.sink.split

bb.ac:                                            ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split
  %i.jm = call i64 @SDL_GetTicksNS_REAL() #7      ; 23 uses
  %i.jn = load i8, ptr %i.z, align 2
  %i.jo = load i8, ptr %i.aa, align 2             ; 3 uses
  %.not.i22 = icmp eq i8 %i.jn, %i.jo
  br i1 %.not.i22, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = icmp ult i8 %i.jo, 8
  %switch.cast99 = zext i8 %i.jo to i64
  %switch.shiftamt100 = shl nuw nsw i64 %switch.cast99, 3
  %switch.downshift101 = lshr i64 650783357575234305, %switch.shiftamt100
  %switch.masked102 = trunc i64 %switch.downshift101 to i8
  %.0.i23 = select i1 %i.jp, i8 %switch.masked102, i8 0
  call void @SDL_SendJoystickHat(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i8 noundef zeroext %.0.i23) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jq = load i8, ptr %i.m, align 8
  %i.jr = load i8, ptr %i.k, align 16             ; 2 uses
  %.not105.i = icmp eq i8 %i.jq, %i.jr
  br i1 %.not105.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.js = trunc i8 %i.jr to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 3, i1 noundef zeroext %i.js) #7
  %i.jt = load i8, ptr %i.k, align 16
  %i.ju = and i8 %i.jt, 2
  %i.jv = icmp ne i8 %i.ju, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 1, i1 noundef zeroext %i.jv) #7
  %i.jw = load i8, ptr %i.k, align 16
  %i.jx = and i8 %i.jw, 4
  %i.jy = icmp ne i8 %i.jx, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i1 noundef zeroext %i.jy) #7
  %i.jz = load i8, ptr %i.k, align 16
  %i.ka = and i8 %i.jz, 8
  %i.kb = icmp ne i8 %i.ka, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 2, i1 noundef zeroext %i.kb) #7
  %i.kc = load i8, ptr %i.k, align 16
  %i.kd = and i8 %i.kc, 16
  %i.ke = icmp ne i8 %i.kd, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 9, i1 noundef zeroext %i.ke) #7
  %i.kf = load i8, ptr %i.k, align 16
  %i.kg = and i8 %i.kf, 32
  %i.kh = icmp ne i8 %i.kg, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 10, i1 noundef zeroext %i.kh) #7
  %i.ki = load i8, ptr %i.k, align 16
  %i.kj = and i8 %i.ki, 64
  %.not106.i = icmp eq i8 %i.kj, 0
  %i.kk = select i1 %.not106.i, i16 -32768, i16 32767
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 4, i16 noundef signext %i.kk) #7
  %i.kl = load i8, ptr %i.k, align 16
  %.not107.i = icmp sgt i8 %i.kl, -1
  %i.km = select i1 %.not107.i, i16 -32768, i16 32767
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 5, i16 noundef signext %i.km) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kn = load i8, ptr %i.ab, align 1
  %i.ko = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not108.i = icmp eq i8 %i.kn, %i.ko
  br i1 %.not108.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kp = trunc i8 %i.ko to i1
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 4, i1 noundef zeroext %i.kp) #7
  %i.kq = load i8, ptr %i.ac, align 1
  %i.kr = and i8 %i.kq, 2
  %i.ks = icmp ne i8 %i.kr, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 6, i1 noundef zeroext %i.ks) #7
  %i.kt = load i8, ptr %i.ac, align 1
  %i.ku = and i8 %i.kt, 4
  %i.kv = icmp ne i8 %i.ku, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 7, i1 noundef zeroext %i.kv) #7
  %i.kw = load i8, ptr %i.ac, align 1
  %i.kx = and i8 %i.kw, 8
  %i.ky = icmp ne i8 %i.kx, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 8, i1 noundef zeroext %i.ky) #7
  %i.kz = load i8, ptr %i.ac, align 1
  %i.la = and i8 %i.kz, 16
  %i.lb = icmp ne i8 %i.la, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 5, i1 noundef zeroext %i.lb) #7
  %i.lc = load i8, ptr %i.ac, align 1
  %i.ld = and i8 %i.lc, 32
  %i.le = icmp ne i8 %i.ld, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 15, i1 noundef zeroext %i.le) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.lf = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.lg = icmp eq i8 %i.lf, 127
  br i1 %i.lg, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lh = zext i8 %i.lf to i32
  %i.li = add nsw i32 %i.lh, -127
  %i.lj = sitofp i32 %i.li to float
  %i.lk = call float @HIDAPI_RemapVal(float noundef %i.lj, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.ll = fptosi float %i.lk to i16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.lm = phi i16 [ %i.ll, %bb.aj ], [ 0, %bb.ai ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 0, i16 noundef signext %i.lm) #7
  %i.ln = load i8, ptr %i.ae, align 4             ; 2 uses
  %i.lo = icmp eq i8 %i.ln, 127
  br i1 %i.lo, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lp = zext i8 %i.ln to i32
  %i.lq = add nsw i32 %i.lp, -127
  %i.lr = sitofp i32 %i.lq to float
  %i.ls = call float @HIDAPI_RemapVal(float noundef %i.lr, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.lt = fptosi float %i.ls to i16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.lu = phi i16 [ %i.lt, %bb.al ], [ 0, %bb.ak ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 1, i16 noundef signext %i.lu) #7
  %i.lv = load i8, ptr %i.af, align 1             ; 2 uses
  %i.lw = icmp eq i8 %i.lv, 127
  br i1 %i.lw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lx = zext i8 %i.lv to i32
  %i.ly = add nsw i32 %i.lx, -127
  %i.lz = sitofp i32 %i.ly to float
  %i.ma = call float @HIDAPI_RemapVal(float noundef %i.lz, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.mb = fptosi float %i.ma to i16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.mc = phi i16 [ %i.mb, %bb.an ], [ 0, %bb.am ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 2, i16 noundef signext %i.mc) #7
  %i.md = load i8, ptr %i.ag, align 2             ; 2 uses
  %i.me = icmp eq i8 %i.md, 127
  br i1 %i.me, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mf = zext i8 %i.md to i32
  %i.mg = add nsw i32 %i.mf, -127
  %i.mh = sitofp i32 %i.mg to float
  %i.mi = call float @HIDAPI_RemapVal(float noundef %i.mh, float noundef -1.270000e+02, float noundef 1.280000e+02, float noundef -3.276800e+04, float noundef 3.276700e+04) #7
  %i.mj = fptosi float %i.mi to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.mk = phi i16 [ %i.mj, %bb.ap ], [ 0, %bb.ao ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.jm, ptr noundef nonnull %i.t, i8 noundef zeroext 3, i16 noundef signext %i.mk) #7
  %i.ml = load i8, ptr %i.ah, align 8, !range !3, !noundef !4
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.ar, label %.backedge.sink.split

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.mn = load i16, ptr %i.aj, align 8
  %i.mo = sitofp i16 %i.mn to float
  %i.mp = fmul nnan float %i.mo, f0x3A0EFA35
  %i.mq = load i8, ptr %i.ak, align 8
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.mr
  store float %i.mp, ptr %i.ms, align 4
  %i.mt = load i8, ptr %i.ak, align 8
  %i.mu = zext i8 %i.mt to i16
  %i.mv = add nuw nsw i16 %i.mu, 1
  %i.mw = urem i16 %i.mv, 11
  %i.mx = trunc nuw nsw i16 %i.mw to i8
  store i8 %i.mx, ptr %i.ak, align 8
  %i.my = load i8, ptr %i.al, align 1             ; 4 uses
  %i.mz = icmp ult i8 %i.my, 11
  br i1 %i.mz, label %bb.as, label %.thread.i.i24

.thread.i.i24:                                    ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.c, ptr noundef nonnull align 4 dereferenceable(44) %i.ai, i64 44, i1 false)
  br label %.preheader.preheader.i.i25

bb.as:                                            ; preds = %bb.ar
  %i.na = add nuw nsw i8 %i.my, 1                 ; 2 uses
  store i8 %i.na, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.c, ptr noundef nonnull align 4 dereferenceable(44) %i.ai, i64 44, i1 false)
  %.not.i.i42 = icmp eq i8 %i.my, 0
  br i1 %.not.i.i42, label %median_filter_update.exit.i40, label %.preheader.preheader.i.i25

.preheader.preheader.i.i25:                       ; preds = %bb.as, %.thread.i.i24
  %i.nb = phi i8 [ %i.my, %.thread.i.i24 ], [ %i.na, %bb.as ] ; 2 uses
  %i.nc = zext i8 %i.nb to i32                    ; 2 uses
  %i.nd = add nsw i32 %i.nc, -1
  %wide.trip.count36.i.i26 = zext nneg i32 %i.nd to i64
  %wide.trip.count.i.i27 = zext i8 %i.nb to i64   ; 3 uses
  %i.ne = add nsw i64 %wide.trip.count.i.i27, -2
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %._crit_edge.i.i35, %.preheader.preheader.i.i25
  %indvars.iv33.i.i29 = phi i64 [ 0, %.preheader.preheader.i.i25 ], [ %indvars.iv.next34.i.i36, %._crit_edge.i.i35 ] ; 4 uses
  %indvars.iv.i.i30 = phi i64 [ 1, %.preheader.preheader.i.i25 ], [ %indvars.iv.next.i.i37, %._crit_edge.i.i35 ] ; 4 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv33.i.i29 ; 6 uses
  %.pre38.i.i31 = load float, ptr %i.nf, align 4  ; 4 uses
  %i.ng = sub nsw i64 %indvars.iv33.i.i29, %wide.trip.count.i.i27
  %i.nh = and i64 %i.ng, 1
  %lcmp.mod.not.not = icmp eq i64 %i.nh, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.i.i28
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i30 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4          ; 3 uses
  %i.nk = fcmp ogt float %.pre38.i.i31, %i.nj
  br i1 %i.nk, label %bb.at, label %.prol.loopexit.unr-lcssa

bb.at:                                            ; preds = %.prol.preheader
  store float %i.nj, ptr %i.nf, align 4
  store float %.pre38.i.i31, ptr %i.ni, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.at, %.prol.preheader
  %i.nl = phi float [ %.pre38.i.i31, %.prol.preheader ], [ %i.nj, %bb.at ]
  %indvars.iv.next31.i.i33.prol = add nuw nsw i64 %indvars.iv.i.i30, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i28
  %.unr = phi float [ %.pre38.i.i31, %.lr.ph.i.i28 ], [ %i.nl, %.prol.loopexit.unr-lcssa ]
  %indvars.iv30.i.i32.unr = phi i64 [ %indvars.iv.i.i30, %.lr.ph.i.i28 ], [ %indvars.iv.next31.i.i33.prol, %.prol.loopexit.unr-lcssa ]
  %i.nm = icmp eq i64 %i.ne, %indvars.iv33.i.i29
  br i1 %i.nm, label %._crit_edge.i.i35, label %.lr.ph.i.i28.new

._crit_edge.i.i35:                                ; preds = %bb.ax, %.prol.loopexit
  %indvars.iv.next34.i.i36 = add nuw nsw i64 %indvars.iv33.i.i29, 1 ; 2 uses
  %indvars.iv.next.i.i37 = add nuw nsw i64 %indvars.iv.i.i30, 1
  %exitcond37.not.i.i38 = icmp eq i64 %indvars.iv.next34.i.i36, %wide.trip.count36.i.i26
  br i1 %exitcond37.not.i.i38, label %median_filter_update.exit.loopexit.i39, label %.lr.ph.i.i28, !llvm.loop !6

.lr.ph.i.i28.new:                                 ; preds = %.prol.loopexit, %bb.ax
  %i.nn = phi float [ %i.nw, %bb.ax ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv30.i.i32 = phi i64 [ %indvars.iv.next31.i.i33.1, %bb.ax ], [ %indvars.iv30.i.i32.unr, %.prol.loopexit ] ; 3 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv30.i.i32 ; 2 uses
  %i.np = load float, ptr %i.no, align 4          ; 2 uses
  %i.nq = fcmp ogt float %i.nn, %i.np
  br i1 %i.nq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.i28.new
  store float %i.np, ptr %i.nf, align 4
  store float %i.nn, ptr %i.no, align 4
  %.pre.i.i41 = load float, ptr %i.nf, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.i28.new
  %i.nr = phi float [ %i.nn, %.lr.ph.i.i28.new ], [ %.pre.i.i41, %bb.au ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv30.i.i32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4          ; 2 uses
  %i.nv = fcmp ogt float %i.nr, %i.nu
  br i1 %i.nv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store float %i.nu, ptr %i.nf, align 4
  store float %i.nr, ptr %i.nt, align 4
  %.pre.i.i41.1 = load float, ptr %i.nf, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.nw = phi float [ %i.nr, %bb.av ], [ %.pre.i.i41.1, %bb.aw ]
  %indvars.iv.next31.i.i33.1 = add nuw nsw i64 %indvars.iv30.i.i32, 2 ; 2 uses
  %exitcond.not.i.i34.1 = icmp eq i64 %indvars.iv.next31.i.i33.1, %wide.trip.count.i.i27
  br i1 %exitcond.not.i.i34.1, label %._crit_edge.i.i35, label %.lr.ph.i.i28.new, !llvm.loop !7

median_filter_update.exit.loopexit.i39:           ; preds = %._crit_edge.i.i35
  %i.nx = lshr i32 %i.nc, 1
  %i.ny = zext nneg i32 %i.nx to i64
  br label %median_filter_update.exit.i40

median_filter_update.exit.i40:                    ; preds = %median_filter_update.exit.loopexit.i39, %bb.as
  %i.nz = phi i64 [ 0, %bb.as ], [ %i.ny, %median_filter_update.exit.loopexit.i39 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nz
  %i.ob = load float, ptr %i.oa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store float %i.ob, ptr %i.d, align 4
  %i.oc = load i16, ptr %i.an, align 4
  %i.od = sitofp i16 %i.oc to float
  %i.oe = fmul nnan float %i.od, f0x3A0EFA35
  %i.of = load i8, ptr %i.ao, align 8
  %i.og = zext i8 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.og
  store float %i.oe, ptr %i.oh, align 4
  %i.oi = load i8, ptr %i.ao, align 8
  %i.oj = zext i8 %i.oi to i16
  %i.ok = add nuw nsw i16 %i.oj, 1
  %i.ol = urem i16 %i.ok, 11
  %i.om = trunc nuw nsw i16 %i.ol to i8
  store i8 %i.om, ptr %i.ao, align 8
  %i.on = load i8, ptr %i.ap, align 1             ; 4 uses
  %i.oo = icmp ult i8 %i.on, 11
  br i1 %i.oo, label %bb.ay, label %.thread.i109.i

.thread.i109.i:                                   ; preds = %median_filter_update.exit.i40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.b, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  br label %.preheader.preheader.i110.i

bb.ay:                                            ; preds = %median_filter_update.exit.i40
  %i.op = add nuw nsw i8 %i.on, 1                 ; 2 uses
  store i8 %i.op, ptr %i.ap, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.b, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  %.not.i125.i = icmp eq i8 %i.on, 0
  br i1 %.not.i125.i, label %median_filter_update.exit126.i, label %.preheader.preheader.i110.i

.preheader.preheader.i110.i:                      ; preds = %bb.ay, %.thread.i109.i
  %i.oq = phi i8 [ %i.on, %.thread.i109.i ], [ %i.op, %bb.ay ] ; 2 uses
  %i.or = zext i8 %i.oq to i32                    ; 2 uses
  %i.os = add nsw i32 %i.or, -1
  %wide.trip.count36.i111.i = zext nneg i32 %i.os to i64
  %wide.trip.count.i112.i = zext i8 %i.oq to i64  ; 3 uses
  %i.ot = add nsw i64 %wide.trip.count.i112.i, -2
  br label %.lr.ph.i113.i

.lr.ph.i113.i:                                    ; preds = %._crit_edge.i121.i, %.preheader.preheader.i110.i
  %indvars.iv33.i114.i = phi i64 [ 0, %.preheader.preheader.i110.i ], [ %indvars.iv.next34.i116.i, %._crit_edge.i121.i ] ; 4 uses
  %indvars.iv.i115.i = phi i64 [ 1, %.preheader.preheader.i110.i ], [ %indvars.iv.next.i122.i, %._crit_edge.i121.i ] ; 4 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv33.i114.i ; 6 uses
  %.pre38.i117.i = load float, ptr %i.ou, align 4 ; 4 uses
  %i.ov = sub nsw i64 %indvars.iv33.i114.i, %wide.trip.count.i112.i
  %i.ow = and i64 %i.ov, 1
  %lcmp.mod109.not.not = icmp eq i64 %i.ow, 0
  br i1 %lcmp.mod109.not.not, label %.prol.preheader106, label %.prol.loopexit107

.prol.preheader106:                               ; preds = %.lr.ph.i113.i
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i115.i ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4          ; 3 uses
  %i.oz = fcmp ogt float %.pre38.i117.i, %i.oy
  br i1 %i.oz, label %bb.az, label %.prol.loopexit107.unr-lcssa

bb.az:                                            ; preds = %.prol.preheader106
  store float %i.oy, ptr %i.ou, align 4
  store float %.pre38.i117.i, ptr %i.ox, align 4
  br label %.prol.loopexit107.unr-lcssa

.prol.loopexit107.unr-lcssa:                      ; preds = %bb.az, %.prol.preheader106
  %i.pa = phi float [ %.pre38.i117.i, %.prol.preheader106 ], [ %i.oy, %bb.az ]
  %indvars.iv.next31.i119.i.prol = add nuw nsw i64 %indvars.iv.i115.i, 1
  br label %.prol.loopexit107

.prol.loopexit107:                                ; preds = %.prol.loopexit107.unr-lcssa, %.lr.ph.i113.i
  %.unr110 = phi float [ %.pre38.i117.i, %.lr.ph.i113.i ], [ %i.pa, %.prol.loopexit107.unr-lcssa ]
  %indvars.iv30.i118.i.unr = phi i64 [ %indvars.iv.i115.i, %.lr.ph.i113.i ], [ %indvars.iv.next31.i119.i.prol, %.prol.loopexit107.unr-lcssa ]
  %i.pb = icmp eq i64 %i.ot, %indvars.iv33.i114.i
  br i1 %i.pb, label %._crit_edge.i121.i, label %.lr.ph.i113.i.new

._crit_edge.i121.i:                               ; preds = %bb.bd, %.prol.loopexit107
  %indvars.iv.next34.i116.i = add nuw nsw i64 %indvars.iv33.i114.i, 1 ; 2 uses
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i115.i, 1
  %exitcond37.not.i123.i = icmp eq i64 %indvars.iv.next34.i116.i, %wide.trip.count36.i111.i
  br i1 %exitcond37.not.i123.i, label %median_filter_update.exit126.loopexit.i, label %.lr.ph.i113.i, !llvm.loop !6

.lr.ph.i113.i.new:                                ; preds = %.prol.loopexit107, %bb.bd
  %i.pc = phi float [ %i.pl, %bb.bd ], [ %.unr110, %.prol.loopexit107 ] ; 3 uses
  %indvars.iv30.i118.i = phi i64 [ %indvars.iv.next31.i119.i.1, %bb.bd ], [ %indvars.iv30.i118.i.unr, %.prol.loopexit107 ] ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv30.i118.i ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4          ; 2 uses
  %i.pf = fcmp ogt float %i.pc, %i.pe
  br i1 %i.pf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i113.i.new
  store float %i.pe, ptr %i.ou, align 4
  store float %i.pc, ptr %i.pd, align 4
  %.pre.i124.i = load float, ptr %i.ou, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i113.i.new
  %i.pg = phi float [ %i.pc, %.lr.ph.i113.i.new ], [ %.pre.i124.i, %bb.ba ] ; 3 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv30.i118.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4          ; 2 uses
  %i.pk = fcmp ogt float %i.pg, %i.pj
  br i1 %i.pk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store float %i.pj, ptr %i.ou, align 4
  store float %i.pg, ptr %i.pi, align 4
  %.pre.i124.i.1 = load float, ptr %i.ou, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.pl = phi float [ %i.pg, %bb.bb ], [ %.pre.i124.i.1, %bb.bc ]
  %indvars.iv.next31.i119.i.1 = add nuw nsw i64 %indvars.iv30.i118.i, 2 ; 2 uses
  %exitcond.not.i120.i.1 = icmp eq i64 %indvars.iv.next31.i119.i.1, %wide.trip.count.i112.i
  br i1 %exitcond.not.i120.i.1, label %._crit_edge.i121.i, label %.lr.ph.i113.i.new, !llvm.loop !7

median_filter_update.exit126.loopexit.i:          ; preds = %._crit_edge.i121.i
  %i.pm = lshr i32 %i.or, 1
  %i.pn = zext nneg i32 %i.pm to i64
  br label %median_filter_update.exit126.i

median_filter_update.exit126.i:                   ; preds = %median_filter_update.exit126.loopexit.i, %bb.ay
  %i.po = phi i64 [ 0, %bb.ay ], [ %i.pn, %median_filter_update.exit126.loopexit.i ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store float %i.pq, ptr %i.aq, align 4
  %i.pr = load i16, ptr %i.as, align 2
  %i.ps = sext i16 %i.pr to i32
  %i.pt = sub nsw i32 0, %i.ps
  %i.pu = sitofp i32 %i.pt to float
  %i.pv = fmul nnan float %i.pu, f0x3A0EFA35
  %i.pw = load i8, ptr %i.at, align 8
  %i.px = zext i8 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.px
  store float %i.pv, ptr %i.py, align 4
  %i.pz = load i8, ptr %i.at, align 8
  %i.qa = zext i8 %i.pz to i16
  %i.qb = add nuw nsw i16 %i.qa, 1
  %i.qc = urem i16 %i.qb, 11
  %i.qd = trunc nuw nsw i16 %i.qc to i8
  store i8 %i.qd, ptr %i.at, align 8
  %i.qe = load i8, ptr %i.au, align 1             ; 4 uses
  %i.qf = icmp ult i8 %i.qe, 11
  br i1 %i.qf, label %bb.be, label %.thread.i127.i

.thread.i127.i:                                   ; preds = %median_filter_update.exit126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, ptr noundef nonnull align 4 dereferenceable(44) %i.ar, i64 44, i1 false)
  br label %.preheader.preheader.i128.i

bb.be:                                            ; preds = %median_filter_update.exit126.i
  %i.qg = add nuw nsw i8 %i.qe, 1                 ; 2 uses
  store i8 %i.qg, ptr %i.au, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, ptr noundef nonnull align 4 dereferenceable(44) %i.ar, i64 44, i1 false)
  %.not.i143.i = icmp eq i8 %i.qe, 0
  br i1 %.not.i143.i, label %median_filter_update.exit144.i, label %.preheader.preheader.i128.i

.preheader.preheader.i128.i:                      ; preds = %bb.be, %.thread.i127.i
  %i.qh = phi i8 [ %i.qe, %.thread.i127.i ], [ %i.qg, %bb.be ] ; 2 uses
  %i.qi = zext i8 %i.qh to i32                    ; 2 uses
  %i.qj = add nsw i32 %i.qi, -1
  %wide.trip.count36.i129.i = zext nneg i32 %i.qj to i64
  %wide.trip.count.i130.i = zext i8 %i.qh to i64  ; 3 uses
  %i.qk = add nsw i64 %wide.trip.count.i130.i, -2
  br label %.lr.ph.i131.i

.lr.ph.i131.i:                                    ; preds = %._crit_edge.i139.i, %.preheader.preheader.i128.i
  %indvars.iv33.i132.i = phi i64 [ 0, %.preheader.preheader.i128.i ], [ %indvars.iv.next34.i134.i, %._crit_edge.i139.i ] ; 4 uses
  %indvars.iv.i133.i = phi i64 [ 1, %.preheader.preheader.i128.i ], [ %indvars.iv.next.i140.i, %._crit_edge.i139.i ] ; 4 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv33.i132.i ; 6 uses
  %.pre38.i135.i = load float, ptr %i.ql, align 4 ; 4 uses
  %i.qm = sub nsw i64 %indvars.iv33.i132.i, %wide.trip.count.i130.i
  %i.qn = and i64 %i.qm, 1
  %lcmp.mod114.not.not = icmp eq i64 %i.qn, 0
  br i1 %lcmp.mod114.not.not, label %.prol.preheader111, label %.prol.loopexit112

.prol.preheader111:                               ; preds = %.lr.ph.i131.i
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i133.i ; 2 uses
  %i.qp = load float, ptr %i.qo, align 4          ; 3 uses
  %i.qq = fcmp ogt float %.pre38.i135.i, %i.qp
  br i1 %i.qq, label %bb.bf, label %.prol.loopexit112.unr-lcssa

bb.bf:                                            ; preds = %.prol.preheader111
  store float %i.qp, ptr %i.ql, align 4
  store float %.pre38.i135.i, ptr %i.qo, align 4
  br label %.prol.loopexit112.unr-lcssa

.prol.loopexit112.unr-lcssa:                      ; preds = %bb.bf, %.prol.preheader111
  %i.qr = phi float [ %.pre38.i135.i, %.prol.preheader111 ], [ %i.qp, %bb.bf ]
  %indvars.iv.next31.i137.i.prol = add nuw nsw i64 %indvars.iv.i133.i, 1
  br label %.prol.loopexit112

.prol.loopexit112:                                ; preds = %.prol.loopexit112.unr-lcssa, %.lr.ph.i131.i
  %.unr115 = phi float [ %.pre38.i135.i, %.lr.ph.i131.i ], [ %i.qr, %.prol.loopexit112.unr-lcssa ]
  %indvars.iv30.i136.i.unr = phi i64 [ %indvars.iv.i133.i, %.lr.ph.i131.i ], [ %indvars.iv.next31.i137.i.prol, %.prol.loopexit112.unr-lcssa ]
  %i.qs = icmp eq i64 %i.qk, %indvars.iv33.i132.i
  br i1 %i.qs, label %._crit_edge.i139.i, label %.lr.ph.i131.i.new

._crit_edge.i139.i:                               ; preds = %bb.bj, %.prol.loopexit112
  %indvars.iv.next34.i134.i = add nuw nsw i64 %indvars.iv33.i132.i, 1 ; 2 uses
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i133.i, 1
  %exitcond37.not.i141.i = icmp eq i64 %indvars.iv.next34.i134.i, %wide.trip.count36.i129.i
  br i1 %exitcond37.not.i141.i, label %median_filter_update.exit144.loopexit.i, label %.lr.ph.i131.i, !llvm.loop !6

.lr.ph.i131.i.new:                                ; preds = %.prol.loopexit112, %bb.bj
  %i.qt = phi float [ %i.rc, %bb.bj ], [ %.unr115, %.prol.loopexit112 ] ; 3 uses
  %indvars.iv30.i136.i = phi i64 [ %indvars.iv.next31.i137.i.1, %bb.bj ], [ %indvars.iv30.i136.i.unr, %.prol.loopexit112 ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv30.i136.i ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4          ; 2 uses
  %i.qw = fcmp ogt float %i.qt, %i.qv
  br i1 %i.qw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i131.i.new
  store float %i.qv, ptr %i.ql, align 4
  store float %i.qt, ptr %i.qu, align 4
  %.pre.i142.i = load float, ptr %i.ql, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.i131.i.new
  %i.qx = phi float [ %i.qt, %.lr.ph.i131.i.new ], [ %.pre.i142.i, %bb.bg ] ; 3 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv30.i136.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4          ; 2 uses
  %i.rb = fcmp ogt float %i.qx, %i.ra
  br i1 %i.rb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store float %i.ra, ptr %i.ql, align 4
  store float %i.qx, ptr %i.qz, align 4
  %.pre.i142.i.1 = load float, ptr %i.ql, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.rc = phi float [ %i.qx, %bb.bh ], [ %.pre.i142.i.1, %bb.bi ]
  %indvars.iv.next31.i137.i.1 = add nuw nsw i64 %indvars.iv30.i136.i, 2 ; 2 uses
  %exitcond.not.i138.i.1 = icmp eq i64 %indvars.iv.next31.i137.i.1, %wide.trip.count.i130.i
  br i1 %exitcond.not.i138.i.1, label %._crit_edge.i139.i, label %.lr.ph.i131.i.new, !llvm.loop !7

median_filter_update.exit144.loopexit.i:          ; preds = %._crit_edge.i139.i
  %i.rd = lshr i32 %i.qi, 1
  %i.re = zext nneg i32 %i.rd to i64
  br label %median_filter_update.exit144.i

median_filter_update.exit144.i:                   ; preds = %median_filter_update.exit144.loopexit.i, %bb.be
  %i.rf = phi i64 [ 0, %bb.be ], [ %i.re, %median_filter_update.exit144.loopexit.i ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rf
  %i.rh = load float, ptr %i.rg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store float %i.rh, ptr %i.av, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ri = load <2 x i16>, ptr %i.aw, align 2
  %i.rj = load i16, ptr %i.ax, align 16
  %i.rk = sext i16 %i.rj to i32
  %i.rl = sub nsw i32 0, %i.rk
  %i.rm = sitofp i32 %i.rl to float
  %i.rn = fmul nnan float %i.rm, f0x3B1CE80A
  store float %i.rn, ptr %i.ay, align 8
  %i.ro = load i16, ptr %i.az, align 2
  %i.rp = insertelement <2 x i16> %i.ri, i16 %i.ro, i64 1
  %i.rq = sitofp <2 x i16> %i.rp to <2 x float>
  %i.rr = fmul nnan <2 x float> %i.rq, splat (float f0x3B1CE80A)
  store <2 x float> %i.rr, ptr %i.e, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.jm, ptr noundef nonnull %i.t, i32 noundef 2, i64 noundef %i.jm, ptr noundef nonnull %i.d, i32 noundef 3) #7
  call void @SDL_SendJoystickSensor(i64 noundef %i.jm, ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef %i.jm, ptr noundef nonnull %i.e, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %median_filter_update.exit144.i, %bb.aq, %median_filter_update.exit139.i, %bb.i
  %i.rs = call i32 @llvm.umin.i32(i32 range(i32 1, -2147483648) %i.bu, i32 64)
  %i.rt = zext nneg i32 %i.rs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.k, i64 %i.rt, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %.lr.ph.split
  %i.ru = load ptr, ptr %i.u, align 8
  %i.rv = call i32 @SDL_hid_read_timeout_REAL(ptr noundef %i.ru, ptr noundef nonnull %i.k, i64 noundef 64, i32 noundef 0) #7 ; 3 uses
  %i.rw = icmp sgt i32 %i.rv, 0
  br i1 %i.rw, label %.lr.ph.split, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %bb.b
  %.lcssa = phi i32 [ %i.w, %bb.b ], [ %i.bs, %.backedge.us ], [ %i.rv, %.backedge ] ; 2 uses
  %i.rx = icmp slt i32 %.lcssa, 0
  br i1 %i.rx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %._crit_edge
  %i.ry = load ptr, ptr %i.q, align 8
  %i.rz = load i32, ptr %i.ry, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.rz) #7
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge
  %i.sa = icmp eq i32 %.lcssa, 0
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.bl
  %.0 = phi i1 [ %i.sa, %bb.bl ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverZUIKI_OpenJoystick(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((68, 72), (96, 100), (112, 116)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  tail call void @SDL_AssertJoysticksLocked() #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 11, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 6, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load i8, ptr %i.f, align 8, !range !3, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.j = load float, ptr %i.i, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 2, float noundef %i.j) #7
  %i.k = load float, ptr %i.i, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 1, float noundef %i.k) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverZUIKI_RumbleJoystick(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %i.b = lshr i16 %2, 8
  %i.c = trunc nuw i16 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.c, ptr %i.d, align 4
  %i.e = lshr i16 %3, 8
  %i.f = trunc nuw i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.f, ptr %i.g, align 1
  %i.h = call i32 @SDL_HIDAPI_SendRumble(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 8) #7
  %.not = icmp eq i32 %i.h, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverZUIKI_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #7
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @HIDAPI_DriverZUIKI_GetJoystickCapabilities(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret i32 16
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverZUIKI_SetJoystickLED(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #7
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverZUIKI_SendJoystickEffect(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @SDL_HIDAPI_SendRumble(ptr noundef %0, ptr noundef %2, i32 noundef %3) #7
  %.not = icmp eq i32 %i.a, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverZUIKI_SetJoystickSensorsEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i8, ptr %i.c, align 8, !range !3, !noundef !4
end_hunk_0

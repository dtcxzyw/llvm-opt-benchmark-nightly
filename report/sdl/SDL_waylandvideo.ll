Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandvideo?download=true
inline.NumInlined: 108
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Wayland_VideoInit:bb.a

Wayland_LoadLibdecor.exit:                        ; preds = %bb.l, %bb.m, %bb.j, %should_use_libdecor.exit.i
  %i.ap = load ptr, ptr @WAYLAND_wl_display_roundtrip, align 8
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = tail call i32 %i.ap(ptr noundef %i.aq) #13 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 304 ; 9 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 10 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = sext i32 %i.av to i64
  tail call void @SDL_qsort_REAL(ptr noundef %i.at, i64 noundef %i.aw, i64 noundef 8, ptr noundef nonnull @Wayland_DisplayPositionCompare) #13
  %i.ax = tail call ptr @SDL_DBus_GetContext() #13 ; 10 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.critedge.i.i.i, label %bb.n

bb.n:                                             ; preds = %Wayland_LoadLibdecor.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call ptr %i.ba(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51) #13, !inline_history !22 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.thread89.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = tail call ptr %i.bd(ptr noundef %i.be, ptr noundef nonnull %i.bb, i32 noundef -1, ptr noundef null) #13, !inline_history !22 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 328 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull %i.bb) #13, !inline_history !22
  %.not44.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not44.i.i.i.i, label %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.thread89.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i32 %i.bj(ptr noundef nonnull %i.bf, ptr noundef nonnull %1) #13, !inline_history !22 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 312 ; 9 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i32 %i.bm(ptr noundef nonnull %1) #13, !inline_history !22
  %.not45.i.i.i.i = icmp eq i32 %i.bn, 117
  br i1 %.not45.i.i.i.i, label %bb.q, label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 296 ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 %i.bp(ptr noundef nonnull %1) #13, !inline_history !22 ; 0 uses
  %i.br = load ptr, ptr %i.bl, align 8
  %i.bs = call i32 %i.br(ptr noundef nonnull %1) #13, !inline_history !22
  %.not46.i.i.i.i = icmp eq i32 %i.bs, 97
  br i1 %.not46.i.i.i.i, label %bb.r, label %.loopexit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = call i32 %i.bt(ptr noundef nonnull %1) #13, !inline_history !22 ; 0 uses
  %i.bv = load ptr, ptr %i.bl, align 8
  %i.bw = call i32 %i.bv(ptr noundef nonnull %1) #13, !inline_history !22
  %.not47.i.i.i.i = icmp eq i32 %i.bw, 97
  br i1 %.not47.i.i.i.i, label %bb.s, label %.loopexit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 320 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  call void %i.by(ptr noundef nonnull %1, ptr noundef nonnull %i.bz) #13, !inline_history !22
  %i.ca = load ptr, ptr %i.bl, align 8
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bz) #13, !inline_history !22
  %.not48.i.i.i.i = icmp eq i32 %i.cb, 114
  br i1 %.not48.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 13 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 304 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ce = load ptr, ptr %i.bx, align 8
  call void %i.ce(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cc) #13, !inline_history !22
  %i.cf = load ptr, ptr %i.bl, align 8
  %i.cg = call i32 %i.cf(ptr noundef nonnull %i.cc) #13, !inline_history !22
  %.not49.i.i.i.i = icmp eq i32 %i.cg, 105
  br i1 %.not49.i.i.i.i, label %bb.u, label %.thread58.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.cd, align 8
  call void %i.ch(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.b) #13, !inline_history !22
  %i.ci = load ptr, ptr %i.bo, align 8
  %i.cj = call i32 %i.ci(ptr noundef nonnull %i.cc) #13, !inline_history !22 ; 0 uses
  %i.ck = load ptr, ptr %i.bl, align 8
  %i.cl = call i32 %i.ck(ptr noundef nonnull %i.cc) #13, !inline_history !22
  %.not50.i.i.i.i = icmp eq i32 %i.cl, 105
  br i1 %.not50.i.i.i.i, label %bb.v, label %.thread58.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.cd, align 8
  call void %i.cm(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.c) #13, !inline_history !22
  %i.cn = load ptr, ptr %i.bo, align 8
  %i.co = call i32 %i.cn(ptr noundef nonnull %i.cc) #13, !inline_history !22 ; 0 uses
  %i.cp = load ptr, ptr %i.bl, align 8
  %i.cq = call i32 %i.cp(ptr noundef nonnull %i.cc) #13, !inline_history !22
  %.not51.i.i.i.i = icmp eq i32 %i.cq, 100
  br i1 %.not51.i.i.i.i, label %bb.w, label %.thread58.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.bo, align 8
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.cc) #13, !inline_history !22 ; 0 uses
  %i.ct = load ptr, ptr %i.bl, align 8
  %i.cu = call i32 %i.ct(ptr noundef nonnull %i.cc) #13, !inline_history !22
  %.not52.i.i.i.i = icmp eq i32 %i.cu, 117
  br i1 %.not52.i.i.i.i, label %bb.x, label %.thread58.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.bo, align 8
  %i.cw = call i32 %i.cv(ptr noundef nonnull %i.cc) #13, !inline_history !22 ; 0 uses
  %i.cx = load ptr, ptr %i.bl, align 8
  %i.cy = call i32 %i.cx(ptr noundef nonnull %i.cc) #13, !inline_history !22
  %.not53.i.i.i.i = icmp eq i32 %i.cy, 98
  br i1 %.not53.i.i.i.i, label %bb.y, label %.thread58.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %i.cd, align 8
  call void %i.cz(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.d) #13, !inline_history !22
  %i.da = load i32, ptr %i.d, align 4
  %.not54.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not54.i.i.i.i, label %bb.z, label %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.i.i.i

.thread58.i.i.i.i:                                ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.loopexit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.db = load ptr, ptr %i.bo, align 8
  %i.dc = call i32 %i.db(ptr noundef nonnull %i.bz) #13, !inline_history !22
  %.not55.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not55.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.t, !llvm.loop !23

.loopexit.i.i.i.i:                                ; preds = %bb.z, %.thread58.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.dd = load ptr, ptr %i.bg, align 8
  call void %i.dd(ptr noundef nonnull %i.bf) #13, !inline_history !22
  br label %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.thread89.i.i.i

Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.thread89.i.i.i: ; preds = %.loopexit.i.i.i.i, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %.critedge.i.i.i

Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.i.i.i: ; preds = %bb.y
  %i.de = load i32, ptr %i.b, align 4
  %i.df = load i32, ptr %i.c, align 4
  %i.dg = load ptr, ptr %i.bg, align 8
  call void %i.dg(ptr noundef nonnull %i.bf) #13, !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.dh = load i32, ptr %i.au, align 8            ; 2 uses
  %.not7495.i.i.i = icmp sgt i32 %i.dh, 0
  br i1 %.not7495.i.i.i, label %.lr.ph.i.i.i, label %Wayland_GetPrimaryDisplay.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.i.i.i
  %i.di = load ptr, ptr %i.as, align 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.dh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ac ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.i.i
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp eq i32 %i.dm, %i.de
  br i1 %i.dn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = icmp eq i32 %i.dp, %i.df
  br i1 %i.dq, label %.loopexit.loopexit106.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %bb.aa, !llvm.loop !24

.critedge.i.i.i:                                  ; preds = %bb.ac, %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.thread89.i.i.i, %Wayland_LoadLibdecor.exit
  %.pr.i.i = load i32, ptr %i.au, align 8
  %i.dr = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.dr, label %.lr.ph105.i.i.i, label %Wayland_GetPrimaryDisplay.exit.thread.i.i

.lr.ph105.i.i.i:                                  ; preds = %.critedge.i.i.i, %.critedge79.i.i.i
  %indvars.iv109.i.i.i = phi i64 [ %indvars.iv.next110.i.i.i, %.critedge79.i.i.i ], [ 0, %.critedge.i.i.i ] ; 3 uses
  %.052103.i.i.i = phi i32 [ %.1.i.i.i, %.critedge79.i.i.i ], [ 0, %.critedge.i.i.i ] ; 5 uses
  %.053102.i.i.i = phi i1 [ %.154.i.i.i, %.critedge79.i.i.i ], [ false, %.critedge.i.i.i ] ; 5 uses
  %.055101.i.i.i = phi i32 [ %.156.i.i.i, %.critedge79.i.i.i ], [ 0, %.critedge.i.i.i ] ; 6 uses
  %.057100.i.i.i = phi float [ %.158.i.i.i, %.critedge79.i.i.i ], [ 0.000000e+00, %.critedge.i.i.i ] ; 7 uses
  %.05999.i.i.i = phi double [ %.160.i.i.i, %.critedge79.i.i.i ], [ 0.000000e+00, %.critedge.i.i.i ] ; 6 uses
  %.06198.i.i.i = phi i32 [ %.162.i.i.i, %.critedge79.i.i.i ], [ 0, %.critedge.i.i.i ] ; 7 uses
  %.06397.i.i.i = phi i32 [ %.164.i.i.i, %.critedge79.i.i.i ], [ 0, %.critedge.i.i.i ] ; 7 uses
  %i.ds = load ptr, ptr %i.as, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv109.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8            ; 11 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 84
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = add i32 %i.dw, -5
  %spec.select.i.i.i = icmp ult i32 %i.dx, -2     ; 3 uses
  %.not.i.i.i = xor i1 %.053102.i.i.i, true       ; 2 uses
  %or.cond.i.i.i = and i1 %spec.select.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %.critedge81.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph105.i.i.i
  %or.cond4.i.i.i = or i1 %spec.select.i.i.i, %.not.i.i.i
  br i1 %or.cond4.i.i.i, label %bb.ae, label %.critedge79.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 60
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %.06397.i.i.i
  br i1 %i.ea, label %.critedge81.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, %.06198.i.i.i
  br i1 %i.ed, label %.critedge81.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = icmp eq i32 %i.dz, %.06397.i.i.i
  %i.ef = icmp eq i32 %i.ec, %.06198.i.i.i
  %or.cond76.i.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond76.i.i.i, label %bb.ah, label %.critedge79.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.eh = load float, ptr %i.eg, align 8          ; 2 uses
  %i.ei = fcmp ogt float %i.eh, %.057100.i.i.i
  br i1 %i.ei, label %.critedge81.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = fcmp oeq float %i.eh, %.057100.i.i.i
  br i1 %i.ej, label %bb.aj, label %.critedge79.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = sub nsw i32 %i.el, %.055101.i.i.i       ; 2 uses
  %i.en = icmp sgt i32 %i.em, 4000
  br i1 %i.en, label %.critedge81.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fcmp olt double %i.ep, %.05999.i.i.i
  br i1 %i.eq, label %bb.al, label %.critedge79.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.er = call i32 @SDL_abs_REAL(i32 noundef %i.em) #13
  %i.es = icmp slt i32 %i.er, 4001
  br i1 %i.es, label %.critedge81.i.i.i, label %.critedge79.i.i.i

.critedge81.i.i.i:                                ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ae, %.lr.ph105.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.du, i64 60
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ey = load double, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.fa = load float, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = trunc nuw nsw i64 %indvars.iv109.i.i.i to i32
  br label %.critedge79.i.i.i

.critedge79.i.i.i:                                ; preds = %.critedge81.i.i.i, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ad
  %.164.i.i.i = phi i32 [ %i.eu, %.critedge81.i.i.i ], [ %.06397.i.i.i, %bb.al ], [ %.06397.i.i.i, %bb.ag ], [ %.06397.i.i.i, %bb.ai ], [ %.06397.i.i.i, %bb.ak ], [ %.06397.i.i.i, %bb.ad ]
  %.162.i.i.i = phi i32 [ %i.ew, %.critedge81.i.i.i ], [ %.06198.i.i.i, %bb.al ], [ %.06198.i.i.i, %bb.ag ], [ %.06198.i.i.i, %bb.ai ], [ %.06198.i.i.i, %bb.ak ], [ %.06198.i.i.i, %bb.ad ]
  %.160.i.i.i = phi double [ %i.ey, %.critedge81.i.i.i ], [ %.05999.i.i.i, %bb.al ], [ %.05999.i.i.i, %bb.ag ], [ %.05999.i.i.i, %bb.ai ], [ %.05999.i.i.i, %bb.ak ], [ %.05999.i.i.i, %bb.ad ]
  %.158.i.i.i = phi float [ %i.fa, %.critedge81.i.i.i ], [ %.057100.i.i.i, %bb.al ], [ %.057100.i.i.i, %bb.ag ], [ %.057100.i.i.i, %bb.ai ], [ %.057100.i.i.i, %bb.ak ], [ %.057100.i.i.i, %bb.ad ]
  %.156.i.i.i = phi i32 [ %i.fc, %.critedge81.i.i.i ], [ %.055101.i.i.i, %bb.al ], [ %.055101.i.i.i, %bb.ag ], [ %.055101.i.i.i, %bb.ai ], [ %.055101.i.i.i, %bb.ak ], [ %.055101.i.i.i, %bb.ad ]
  %.154.i.i.i = phi i1 [ %spec.select.i.i.i, %.critedge81.i.i.i ], [ %.053102.i.i.i, %bb.al ], [ %.053102.i.i.i, %bb.ag ], [ %.053102.i.i.i, %bb.ai ], [ %.053102.i.i.i, %bb.ak ], [ true, %bb.ad ]
  %.1.i.i.i = phi i32 [ %i.fd, %.critedge81.i.i.i ], [ %.052103.i.i.i, %bb.al ], [ %.052103.i.i.i, %bb.ag ], [ %.052103.i.i.i, %bb.ai ], [ %.052103.i.i.i, %bb.ak ], [ %.052103.i.i.i, %bb.ad ] ; 2 uses
  %indvars.iv.next110.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i, 1 ; 2 uses
  %i.fe = load i32, ptr %i.au, align 8
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next110.i.i.i, %i.ff
  br i1 %i.fg, label %.lr.ph105.i.i.i, label %Wayland_GetPrimaryDisplay.exit.i.i, !llvm.loop !25

.loopexit.loopexit106.i.i.i:                      ; preds = %bb.ab
  %i.fh = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %Wayland_GetPrimaryDisplay.exit.i.i

Wayland_GetPrimaryDisplay.exit.i.i:               ; preds = %.critedge79.i.i.i, %.loopexit.loopexit106.i.i.i
  %.168.i.i.i = phi i32 [ %i.fh, %.loopexit.loopexit106.i.i.i ], [ %.1.i.i.i, %.critedge79.i.i.i ] ; 2 uses
  %.not.i.i30 = icmp eq i32 %.168.i.i.i, 0
  br i1 %.not.i.i30, label %Wayland_GetPrimaryDisplay.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %Wayland_GetPrimaryDisplay.exit.i.i
  %i.fi = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.fj = sext i32 %.168.i.i.i to i64             ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = shl nsw i64 %i.fj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 8 %i.fi, i64 %i.fn, i1 false)
  %i.fo = load ptr, ptr %i.as, align 8
  store ptr %i.fl, ptr %i.fo, align 8
  br label %Wayland_GetPrimaryDisplay.exit.thread.i.i

Wayland_GetPrimaryDisplay.exit.thread.i.i:        ; preds = %bb.am, %Wayland_GetPrimaryDisplay.exit.i.i, %.critedge.i.i.i, %Wayland_GetGNOMEPrimaryDisplayCoordinates.exit.i.i.i
  %i.fp = call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.52) #13 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i11.i.i, label %Wayland_SortOutputs.exit.i, label %bb.an

bb.an:                                            ; preds = %Wayland_GetPrimaryDisplay.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fq = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.fp) #13 ; 3 uses
  %i.fr = load i32, ptr %i.au, align 8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 3
  %i.fu = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ft) #13 ; 7 uses
  %i.fv = icmp ne ptr %i.fq, null
  %i.fw = icmp ne ptr %i.fu, null
  %or.cond.i12.i.i = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond.i12.i.i, label %bb.ao, label %bb.az

bb.ao:                                            ; preds = %bb.an
  %i.fx = call ptr @SDL_strtok_r_REAL(ptr noundef nonnull %i.fq, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not4759.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not4759.i.i.i, label %.preheader.i.i.i, label %.preheader54.i.i.i

.preheader54.i.i.i:                               ; preds = %bb.ao, %.loopexit.i.i.i
  %.03861.i.i.i = phi ptr [ %i.gu, %.loopexit.i.i.i ], [ %i.fx, %bb.ao ]
  %.03960.i.i.i = phi i32 [ %.3.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.ao ] ; 4 uses
  %i.fy = load i32, ptr %i.au, align 8            ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i15.i.i, label %.loopexit.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit.i.i.i, %bb.ao
  %.039.lcssa.i.i.i = phi i32 [ 0, %bb.ao ], [ %.3.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.ga = load i32, ptr %i.au, align 8            ; 5 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  %i.gc = load ptr, ptr %i.as, align 8            ; 4 uses
  br i1 %i.gb, label %.lr.ph64.i.i.i, label %._crit_edge.i.i.i

.lr.ph64.i.i.i:                                   ; preds = %.preheader.i.i.i
  %wide.trip.count.i13.i.i = zext nneg i32 %i.ga to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i13.i.i, 1
  %i.gd = icmp eq i32 %i.ga, 1
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph64.i.i.i.new

.lr.ph64.i.i.i.new:                               ; preds = %.lr.ph64.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i13.i.i, 2147483646
  br label %bb.au

.lr.ph.i15.i.i:                                   ; preds = %.preheader54.i.i.i, %bb.as
  %i.ge = phi i32 [ %i.gr, %bb.as ], [ %i.fy, %.preheader54.i.i.i ] ; 2 uses
  %indvars.iv.i16.i.i = phi i64 [ %indvars.iv.next.i17.i.i, %bb.as ], [ 0, %.preheader54.i.i.i ] ; 3 uses
  %i.gf = load ptr, ptr %i.as, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i16.i.i
  %i.gh = load ptr, ptr %i.gg, align 8            ; 3 uses
  %.not49.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not49.i.i.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i15.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %.not50.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not50.i.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %.03861.i.i.i, ptr noundef nonnull %i.gj) #13
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ar, label %._crit_edge73.i.i.i

._crit_edge73.i.i.i:                              ; preds = %bb.aq
  %.pre.i.i.i = load i32, ptr %i.au, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = add nsw i32 %.03960.i.i.i, 1
  %i.gn = sext i32 %.03960.i.i.i to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gn
  store ptr %i.gh, ptr %i.go, align 8
  %i.gp = load ptr, ptr %i.as, align 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i16.i.i
  store ptr null, ptr %i.gq, align 8
  br label %.loopexit.i.i.i

bb.as:                                            ; preds = %._crit_edge73.i.i.i, %bb.ap, %.lr.ph.i15.i.i
  %i.gr = phi i32 [ %.pre.i.i.i, %._crit_edge73.i.i.i ], [ %i.ge, %bb.ap ], [ %i.ge, %.lr.ph.i15.i.i ] ; 2 uses
  %indvars.iv.next.i17.i.i = add nuw nsw i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next.i17.i.i, %i.gs
  br i1 %i.gt, label %.lr.ph.i15.i.i, label %.loopexit.i.i.i, !llvm.loop !26

.loopexit.i.i.i:                                  ; preds = %bb.as, %bb.ar, %.preheader54.i.i.i
  %.3.i.i.i = phi i32 [ %i.gm, %bb.ar ], [ %.03960.i.i.i, %.preheader54.i.i.i ], [ %.03960.i.i.i, %bb.as ] ; 2 uses
  %i.gu = call ptr @SDL_strtok_r_REAL(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not47.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not47.i.i.i, label %.preheader.i.i.i, label %.preheader54.i.i.i, !llvm.loop !27

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph64.i.i.i
  %indvars.iv70.i.i.i.epil.init = phi i64 [ 0, %.lr.ph64.i.i.i ], [ %indvars.iv.next71.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.462.i.i.i.epil.init = phi i32 [ %.039.lcssa.i.i.i, %.lr.ph64.i.i.i ], [ %.5.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i32 %i.ga to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv70.i.i.i.epil.init
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not48.i.i.i.epil = icmp eq ptr %i.gw, null
  br i1 %.not48.i.i.i.epil, label %._crit_edge.i.i.i, label %bb.at

bb.at:                                            ; preds = %.epil.preheader
  %i.gx = sext i32 %.462.i.i.i.epil.init to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gx
  store ptr %i.gw, ptr %i.gy, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.at, %.epil.preheader, %.preheader.i.i.i
  %i.gz = sext i32 %i.ga to i64
  %i.ha = shl nsw i64 %i.gz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gc, ptr nonnull align 8 %i.fu, i64 %i.ha, i1 false)
  br label %bb.az

bb.au:                                            ; preds = %bb.ay, %.lr.ph64.i.i.i.new
  %indvars.iv70.i.i.i = phi i64 [ 0, %.lr.ph64.i.i.i.new ], [ %indvars.iv.next71.i.i.i.1, %bb.ay ] ; 3 uses
  %.462.i.i.i = phi i32 [ %.039.lcssa.i.i.i, %.lr.ph64.i.i.i.new ], [ %.5.i.i.i.1, %bb.ay ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph64.i.i.i.new ], [ %niter.next.1, %bb.ay ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv70.i.i.i
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.not48.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not48.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hd = add nsw i32 %.462.i.i.i, 1
  %i.he = sext i32 %.462.i.i.i to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.he
  store ptr %i.hc, ptr %i.hf, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.5.i.i.i = phi i32 [ %i.hd, %bb.av ], [ %.462.i.i.i, %bb.au ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv70.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not48.i.i.i.1 = icmp eq ptr %i.hi, null
  br i1 %.not48.i.i.i.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hj = add nsw i32 %.5.i.i.i, 1
  %i.hk = sext i32 %.5.i.i.i to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.hk
  store ptr %i.hi, ptr %i.hl, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.5.i.i.i.1 = phi i32 [ %i.hj, %bb.ax ], [ %.5.i.i.i, %bb.aw ] ; 2 uses
  %indvars.iv.next71.i.i.i.1 = add nuw nsw i64 %indvars.iv70.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %bb.au, !llvm.loop !28

bb.az:                                            ; preds = %._crit_edge.i.i.i, %bb.an
  call void @SDL_free_REAL(ptr noundef %i.fq) #13
  call void @SDL_free_REAL(ptr noundef %i.fu) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %Wayland_SortOutputs.exit.i

Wayland_SortOutputs.exit.i:                       ; preds = %bb.az, %Wayland_GetPrimaryDisplay.exit.thread.i.i
  %i.hm = load i32, ptr %i.au, align 8
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i, label %Wayland_FinalizeDisplays.exit

.lr.ph.i:                                         ; preds = %Wayland_SortOutputs.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %Wayland_SortOutputs.exit.i ] ; 2 uses
  %i.ho = load ptr, ptr %i.as, align 8
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i
end_hunk_0

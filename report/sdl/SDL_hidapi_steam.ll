Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_steam?download=true
inline.NumInlined: 51
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@HIDAPI_DriverSteam_UpdateDevice:bb.a
bb.f:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.034.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.ai, %bb.g ]
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.af, ptr noundef nonnull %i.b, i64 noundef 65) #8
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %SetPairingState.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @SDL_DelayNS_REAL(i64 noundef 500000) #8
  %i.ai = add nuw nsw i32 %.034.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ai, 50
  br i1 %exitcond.not.i.i.i, label %SetPairingState.exit.i, label %bb.f, !llvm.loop !0

SetPairingState.exit.i:                           ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  store i64 %i.q, ptr %i.o, align 8
  br label %HIDAPI_DriverSteam_RenewPairingState.exit

HIDAPI_DriverSteam_RenewPairingState.exit:        ; preds = %SetPairingState.exit.i, %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.al = load ptr, ptr %i.aj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %i.ak, i8 0, i64 127, i1 false)
  store i8 3, ptr %i.d, align 16
  %i.am = call i32 @SDL_hid_read_REAL(ptr noundef %i.al, ptr noundef nonnull %i.d, i64 noundef 128) #8 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %HIDAPI_DriverSteam_RenewPairingState.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 180 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 196 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 34 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 200 ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 228 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 230 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 205
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 206
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 207
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 220 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 212 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 214
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 238 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 244 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 57 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 240 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 61 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 242 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 234
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 236 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 222
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 35 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread
  %i.ce = phi i32 [ %i.am, %.lr.ph ], [ %i.mk, %.thread ] ; 6 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cg = load ptr, ptr %i.f, align 8
  %i.ch = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.ch, null
  br i1 %.not.i123, label %.thread139, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = load i32, ptr %i.ch, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.ci) #8
  br label %.thread139

.thread139:                                       ; preds = %bb.j, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 0, ptr %i.cj, align 8
  br label %._crit_edge

bb.k:                                             ; preds = %bb.h
  %i.ck = load i8, ptr %i.ap, align 8, !range !4, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.cm = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = and i32 %i.cn, 7                        ; 4 uses
  %i.cp = load i8, ptr %i.d, align 16
  %.not.i124 = icmp eq i8 %i.cp, 3
  br i1 %.not.i124, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not29.i = icmp eq i32 %i.ce, 20
  br i1 %.not29.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @SDL_Log_REAL(ptr noundef nonnull @.str.5, i32 noundef range(i32 1, -2147483648) %i.ce) #8
  call void @HIDAPI_DumpPacket(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, i32 noundef range(i32 1, -2147483648) %i.ce) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.ao, i8 0, i64 145, i1 false)
  store i32 0, ptr %i.aq, align 4
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %.not30.i = icmp sgt i8 %i.cm, -1
  br i1 %.not30.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load i32, ptr %i.aq, align 4
  %.not31.i = icmp eq i32 %i.co, %i.cq
  br i1 %.not31.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.ao, i8 0, i64 145, i1 false)
  store i32 0, ptr %i.aq, align 4
  %.not32.i = icmp eq i32 %i.co, 0
  br i1 %.not32.i, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = mul nuw nsw i32 %i.co, 18
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ct, ptr noundef nonnull align 2 dereferenceable(18) %i.ar, i64 18, i1 false)
  %i.cu = and i32 %i.cn, 64
  %.not33.i = icmp eq i32 %i.cu, 0
  br i1 %.not33.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.aq, align 4
  br label %WriteSegmentToSteamControllerPacketAssembler.exit

bb.t:                                             ; preds = %bb.r
  %i.cv = add nuw nsw i32 %i.co, 1
  store i32 %i.cv, ptr %i.aq, align 4
  br label %.thread

bb.u:                                             ; preds = %bb.k
  %i.cw = zext nneg i32 %i.ce to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.cw, i1 false)
  %i.cx = icmp samesign ugt i32 %i.ce, 4
  br label %WriteSegmentToSteamControllerPacketAssembler.exit

WriteSegmentToSteamControllerPacketAssembler.exit: ; preds = %bb.u, %bb.s
  %.1.i = phi i1 [ %i.cx, %bb.u ], [ true, %bb.s ] ; 4 uses
  %i.cy = load i16, ptr %i.ao, align 8            ; 5 uses
  %.not.i125 = icmp eq i16 %i.cy, 1
  %i.cz = trunc i16 %i.cy to i8                   ; 2 uses
  %i.da = lshr i16 %i.cy, 8                       ; 2 uses
  br i1 %.not.i125, label %bb.an, label %bb.v

bb.v:                                             ; preds = %WriteSegmentToSteamControllerPacketAssembler.exit
  %i.db = and i16 %i.cy, 15
  %i.dc = icmp eq i16 %i.db, 4
  br i1 %i.dc, label %bb.w, label %UpdateSteamControllerState.exit

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.at, align 4
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.at, align 4
  %.mask = and i16 %i.cy, 244
  %i.df = zext nneg i16 %.mask to i32             ; 3 uses
  %i.dg = zext nneg i16 %i.da to i32              ; 5 uses
  %i.dh = and i32 %i.df, 16
  %.not.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.av, ptr noundef nonnull readonly align 2 dereferenceable(3) %i.au, i64 3, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ %i.aw, %bb.x ], [ %i.au, %bb.w ] ; 4 uses
  %i.di = and i32 %i.df, 32
  %.not87.i.i = icmp eq i32 %i.di, 0
  br i1 %.not87.i.i, label %bb.z, label %RemapValClamped.exit.i.i

RemapValClamped.exit.i.i:                         ; preds = %bb.y
  %i.dj = load i8, ptr %.0.i.i, align 1
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = shl nuw nsw i32 %i.dk, 7
  %i.dm = or i32 %i.dl, %i.dk
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = fdiv float %i.dn, 2.600000e+04          ; 2 uses
  %i.dp = fcmp ogt float %i.do, 1.000000e+00
  %1 = fmul nnan float %i.do, 3.276700e+04
  %i.dq = select i1 %i.dp, float 3.276700e+04, float %1
  %i.dr = fptoui float %i.dq to i16
  store i16 %i.dr, ptr %i.ax, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  %i.dv = shl nuw nsw i32 %i.du, 7
  %i.dw = or i32 %i.dv, %i.du
  %i.dx = uitofp nneg i32 %i.dw to float
  %i.dy = fdiv float %i.dx, 2.600000e+04          ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 1.000000e+00
  %2 = fmul nnan float %i.dy, 3.276700e+04
  %i.ea = select i1 %i.dz, float 3.276700e+04, float %2
  %i.eb = fptoui float %i.ea to i16
  store i16 %i.eb, ptr %i.ay, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  br label %bb.z

bb.z:                                             ; preds = %RemapValClamped.exit.i.i, %bb.y
  %.1.i.i = phi ptr [ %i.ec, %RemapValClamped.exit.i.i ], [ %.0.i.i, %bb.y ] ; 5 uses
  %i.ed = and i32 %i.df, 64
  %.not88.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not88.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.ef = load i8, ptr %.1.i.i, align 1
  store i8 %i.ef, ptr %i.az, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  %i.eh = load i8, ptr %i.ee, align 1
  store i8 %i.eh, ptr %i.ba, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 3
  %i.ej = load i8, ptr %i.eg, align 1
  store i8 %i.ej, ptr %i.bb, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2.i.i = phi ptr [ %i.ei, %bb.aa ], [ %.1.i.i, %bb.z ] ; 3 uses
  %.not89.i.i = icmp sgt i8 %i.cz, -1
  br i1 %.not89.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i32, ptr %.2.i.i, align 1
  store i32 %i.ek, ptr %i.bc, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3.i.i = phi ptr [ %i.el, %bb.ac ], [ %.2.i.i, %bb.ab ] ; 3 uses
  %i.em = and i32 %i.dg, 1
  %.not90.i.i = icmp eq i32 %i.em, 0
  br i1 %.not90.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = load i32, ptr %.3.i.i, align 1          ; 3 uses
  store i32 %i.en, ptr %i.bd, align 8
  %i.eo = load i64, ptr %i.av, align 8
  %i.ep = and i64 %i.eo, 524288
  %.not91.i.i = icmp eq i64 %i.ep, 0
  %..i.i = select i1 %.not91.i.i, i32 0, i32 1000
  %i.eq = trunc i32 %i.en to i16
  %i.er = lshr i32 %i.en, 16
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.eu = sitofp i16 %i.eq to float
  %i.ev = call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.ew = sitofp i16 %i.es to float               ; 2 uses
  %i.ex = fneg float %i.ew
  %i.ey = call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.ez = call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.fa = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ez, i64 1
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.ew, i64 1
  %i.fe = fmul <2 x float> %i.fb, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.ey, i64 1
  %i.fh = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fe)
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>
  %i.fl = insertelement <2 x i32> poison, i32 %..i.i, i64 0
  %i.fm = shufflevector <2 x i32> %i.fl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fn = add nsw <2 x i32> %i.fm, %i.fk
  %i.fo = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fn, <2 x i32> splat (i32 -32768))
  %i.fp = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fo, <2 x i32> splat (i32 32767))
  %i.fq = trunc nsw <2 x i32> %i.fp to <2 x i16>
  store <2 x i16> %i.fq, ptr %i.bd, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.4.i.i = phi ptr [ %i.fr, %bb.ae ], [ %.3.i.i, %bb.ad ] ; 3 uses
  %i.fs = and i32 %i.dg, 2
  %.not92.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not92.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ft = load i32, ptr %.4.i.i, align 1          ; 3 uses
  store i32 %i.ft, ptr %i.be, align 4
  %i.fu = load i64, ptr %i.av, align 8
  %i.fv = and i64 %i.fu, 1048576
  %.not93.i.i = icmp eq i64 %i.fv, 0
  %.97.i.i = select i1 %.not93.i.i, i32 0, i32 1000
  %i.fw = trunc i32 %i.ft to i16
  %i.fx = lshr i32 %i.ft, 16
  %i.fy = trunc nuw i32 %i.fx to i16
  %i.fz = call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.ga = sitofp i16 %i.fw to float
  %i.gb = call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.gc = sitofp i16 %i.fy to float               ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.gf = call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.gg = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gf, i64 1
  %i.gi = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gc, i64 1
  %i.gk = fmul <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.ge, i64 1
  %i.gn = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.go, <2 x float> %i.gk)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>
  %i.gr = insertelement <2 x i32> poison, i32 %.97.i.i, i64 0
  %i.gs = shufflevector <2 x i32> %i.gr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gt = add nsw <2 x i32> %i.gs, %i.gq
  %i.gu = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gt, <2 x i32> splat (i32 -32768))
  %i.gv = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gu, <2 x i32> splat (i32 32767))
  %i.gw = trunc nsw <2 x i32> %i.gv to <2 x i16>
  store <2 x i16> %i.gw, ptr %i.be, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.5.i.i = phi ptr [ %i.gx, %bb.ag ], [ %.4.i.i, %bb.af ] ; 3 uses
  %i.gy = and i32 %i.dg, 4
  %.not94.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not94.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) %.5.i.i, i64 6, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.6.i.i = phi ptr [ %i.gz, %bb.ai ], [ %.5.i.i, %bb.ah ] ; 3 uses
  %i.ha = and i32 %i.dg, 8
  %.not95.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not95.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bh, ptr noundef nonnull align 1 dereferenceable(6) %.6.i.i, i64 6, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.7.i.i = phi ptr [ %i.hb, %bb.ak ], [ %.6.i.i, %bb.aj ]
  %i.hc = and i32 %i.dg, 16
  %.not96.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not96.i.i, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 1 dereferenceable(16) %.7.i.i, i64 16, i1 false)
  br label %bb.av

bb.an:                                            ; preds = %WriteSegmentToSteamControllerPacketAssembler.exit
  %i.hd = load i8, ptr %i.au, align 2
  switch i8 %i.hd, label %UpdateSteamControllerState.exit.thread [
    i8 1, label %bb.ao
    i8 7, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.he = load i32, ptr %i.at, align 4
  %i.hf = load i32, ptr %i.bj, align 4
  %.not72.i = icmp eq i32 %i.he, %i.hf
  br i1 %.not72.i, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @FormatStatePacketUntilGyro(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %i.bj)
  %i.hg = load <4 x i16>, ptr %i.bs, align 8
  %i.hh = sitofp <4 x i16> %i.hg to <4 x float>
  store <4 x float> %i.hh, ptr %i.bi, align 4
  %i.hi = load <4 x i16>, ptr %i.br, align 4
  store <4 x i16> %i.hi, ptr %i.bg, align 8
  %i.hj = load <2 x i16>, ptr %i.bt, align 4
  store <2 x i16> %i.hj, ptr %i.bm, align 8
  br label %bb.av

bb.aq:                                            ; preds = %bb.an
  %i.hk = load i32, ptr %i.at, align 4
  %i.hl = load i32, ptr %i.bj, align 4
  %.not71.i = icmp eq i32 %i.hk, %i.hl
  br i1 %.not71.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @FormatStatePacketUntilGyro(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %i.bj)
  %i.hm = load i8, ptr %i.bk, align 8
  switch i8 %i.hm, label %bb.av [
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hn = load <4 x i16>, ptr %i.bl, align 1
  %i.ho = sitofp <4 x i16> %i.hn to <4 x float>
  store <4 x float> %i.ho, ptr %i.bi, align 4
  br label %bb.av

end_hunk_0
begin_hunk_1_@ControllerConnected:bb.a
  %i.q = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 65) #8
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %HIDAPI_DriverSteam_CommitPairing.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @SDL_DelayNS_REAL(i64 noundef 500000) #8
  %i.s = add nuw nsw i32 %.034.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.s, 50
  br i1 %exitcond.not.i.i.i, label %HIDAPI_DriverSteam_CommitPairing.exit, label %bb.c, !llvm.loop !0

HIDAPI_DriverSteam_CommitPairing.exit:            ; preds = %bb.c, %bb.d, %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.v) #8
  store ptr %i.w, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %HIDAPI_DriverSteam_CommitPairing.exit
  ret void
}

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @HIDAPI_JoystickDisconnected(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_Log_REAL(ptr noundef, ...) local_unnamed_addr #2

declare void @HIDAPI_DumpPacket(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @FormatStatePacketUntilGyro(ptr nofree noundef captures(none) initializes((0, 70)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(70) %0, i8 0, i64 70, i1 false)
  store i32 2, ptr %0, align 8
  %i.a = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.e = load i64, ptr %i.d, align 1              ; 3 uses
  %i.f = and i64 %i.e, -1099494850561             ; 5 uses
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %i.d, align 1
  %i.h = and i64 %i.g, 524288
  %.not = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i16, ptr %i.i, align 1              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.j, ptr %i.m, align 8
  %i.n = load i16, ptr %i.k, align 1              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 %i.n, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.n, ptr %i.p, align 2
  %i.q = load i64, ptr %i.d, align 1
  %i.r = and i64 %i.q, 8388608
  %.not76 = icmp eq i64 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  br i1 %.not76, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load <2 x i16>, ptr %i.s, align 4
  store <2 x i16> %i.u, ptr %i.t, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  store i16 0, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 0, ptr %i.v, align 2
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.j, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.j, ptr %i.x, align 4
  %i.y = load i16, ptr %i.k, align 1              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 %i.y, ptr %i.aa, align 2
  %i.ab = load i64, ptr %i.d, align 1
  %i.ac = and i64 %i.ab, 8388608
  %.not74 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i16, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ah, ptr %i.ai, align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i16 0, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 0, ptr %i.aj, align 2
  %i.ak = and i64 %i.e, 131072
  %.not75 = icmp eq i64 %i.ak, 0
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.e, -1099499175937
  %i.am = or disjoint i64 %i.al, 4194304          ; 2 uses
  store i64 %i.am, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.c, %bb.d
  %i.an = phi i16 [ %i.ah, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.n, %bb.c ], [ %i.n, %bb.d ]
  %i.ao = phi i16 [ %i.ae, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.j, %bb.c ], [ %i.j, %bb.d ]
  %i.ap = phi i64 [ %i.f, %bb.f ], [ %i.am, %bb.h ], [ %i.f, %bb.g ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  %i.aq = load i64, ptr %i.d, align 1
  %i.ar = and i64 %i.aq, 8388608
  %.not77 = icmp eq i64 %i.ar, 0
  br i1 %.not77, label %RemapValClamped.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = or i64 %i.ap, 524288
  store i64 %i.as, ptr %i.c, align 8
  br label %RemapValClamped.exit

RemapValClamped.exit:                             ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i16, ptr %i.at, align 1            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ax = load i16, ptr %i.aw, align 1            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = tail call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.bb = tail call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.bc = tail call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.bd = tail call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.be = tail call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.bf = tail call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.bg = insertelement <2 x i16> poison, i16 %i.an, i64 0
  %i.bh = insertelement <2 x i16> %i.bg, i16 %i.ax, i64 1
  %i.bi = sitofp <2 x i16> %i.bh to <2 x float>   ; 2 uses
  %i.bj = fneg <2 x float> %i.bi
  %i.bk = tail call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.bl = tail call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.bm = load i64, ptr %i.c, align 8
  %i.bn = insertelement <4 x i16> poison, i16 %i.ao, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.au, i64 1
  %i.bp = shufflevector <4 x i16> %i.bo, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bq = sitofp <4 x i16> %i.bp to <4 x float>
  %i.br = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bd, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bf, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bl, i64 3
  %i.bv = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bw = fmul <4 x float> %i.bu, %i.bv
  %i.bx = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bc, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.be, i64 2
  %i.ca = insertelement <4 x float> %i.bz, float %i.bk, i64 3
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.bq, <4 x float> %i.bw)
  %i.cc = fptosi <4 x float> %i.cb to <4 x i32>
  %i.cd = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cf = and <2 x i64> %i.ce, <i64 524288, i64 1048576>
  %i.cg = icmp eq <2 x i64> %i.cf, zeroinitializer
  %i.ch = shufflevector <2 x i1> %i.cg, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ci = select <4 x i1> %i.ch, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1000)
  %i.cj = add nsw <4 x i32> %i.ci, %i.cc
  %i.ck = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cj, <4 x i32> splat (i32 -32768))
  %i.cl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ck, <4 x i32> splat (i32 32767))
  %i.cm = trunc nsw <4 x i32> %i.cl to <4 x i16>
  store <4 x i16> %i.cm, ptr %i.az, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = shl nuw nsw i32 %i.cp, 7
  %i.cr = or i32 %i.cq, %i.cp
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = fdiv float %i.cs, 2.600000e+04          ; 2 uses
  %i.cu = fcmp ogt float %i.ct, 1.000000e+00
  %2 = fmul nnan float %i.ct, 3.276700e+04
  %i.cv = select i1 %i.cu, float 3.276700e+04, float %2
  %i.cw = fptoui float %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.cw, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = shl nuw nsw i32 %i.da, 7
  %i.dc = or i32 %i.db, %i.da
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = fdiv float %i.dd, 2.600000e+04          ; 2 uses
  %i.df = fcmp ogt float %i.de, 1.000000e+00
  %3 = fmul nnan float %i.de, 3.276700e+04
  %i.dg = select i1 %i.df, float 3.276700e+04, float %3
  %i.dh = fptoui float %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %i.dh, ptr %i.di, align 2
  ret void
}

declare float @SDL_cosf_REAL(float noundef) local_unnamed_addr #2

declare float @SDL_sinf_REAL(float noundef) local_unnamed_addr #2

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #2

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @SDL_HomeLEDHintChanged(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = alloca [65 x i8], align 16               ; 8 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %3, align 1
  %.not9 = icmp eq i8 %i.c, 0
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %3, i32 noundef 46) #8
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call double @SDL_atof_REAL(ptr noundef nonnull %3) #8
  %i.f = fmul double %i.e, 1.000000e+02
  %i.g = fptosi double %i.f to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.g, i32 255)
  %i.h = trunc i32 %spec.store.select to i8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @SDL_GetStringBoolean(ptr noundef nonnull %3, i1 noundef zeroext true) #8
  %. = select i1 %i.i, i8 100, i8 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i8 [ %i.h, %bb.d ], [ %., %bb.e ]
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.b, i8 0, i64 65, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 -121, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 45, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %.0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 3, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.p = load i8, ptr %i.o, align 4, !range !4, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i8 3, ptr %i.a, align 16
  store i8 -64, ptr %i.s, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) %i.k, i64 5, i1 false)
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.v, ptr noundef nonnull %i.a, i64 noundef 20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %SetFeatureReport.exit.thread.i, label %SetHomeLED.exit

bb.g:                                             ; preds = %bb.h, %.preheader.i.i
  %.034.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ab, %bb.h ]
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.y, ptr noundef nonnull %i.b, i64 noundef 65) #8
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %SetHomeLED.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @SDL_DelayNS_REAL(i64 noundef 500000) #8
  %i.ab = add nuw nsw i32 %.034.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ab, 50
  br i1 %exitcond.not.i.i, label %SetFeatureReport.exit.thread.i, label %bb.g, !llvm.loop !0

SetFeatureReport.exit.thread.i:                   ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15) #8 ; 0 uses
  br label %SetHomeLED.exit

SetHomeLED.exit:                                  ; preds = %bb.g, %.lr.ph.i.i, %SetFeatureReport.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.i

bb.i:                                             ; preds = %SetHomeLED.exit, %bb.b, %bb.a
  ret void
}

declare i32 @SDL_hid_get_feature_report_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SDL_strchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @SDL_atof_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !6}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
end_hunk_1

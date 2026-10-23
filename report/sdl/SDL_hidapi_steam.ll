Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_steam?download=true
inline.NumInlined: 51
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@HIDAPI_DriverSteam_UpdateDevice:bb.a

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @SDL_GetTicks_REAL() #8    ; 2 uses
  %i.r = load i64, ptr %i.o, align 8
  %i.s = add i64 %i.r, 60000
  %.not.i = icmp ult i64 %i.q, %i.s
  br i1 %.not.i, label %HIDAPI_DriverSteam_RenewPairingState.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.b, i8 0, i64 65, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store <4 x i8> <i8 -83, i8 2, i8 1, i8 60>, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  %i.w = load i8, ptr %i.v, align 4, !range !4, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  br label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i8 3, ptr %i.a, align 16
  store i8 -64, ptr %i.z, align 1
  %i.ac = load i32, ptr %i.u, align 1
  store i32 %i.ac, ptr %i.aa, align 2
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.ad, ptr noundef nonnull %i.a, i64 noundef 20) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %SetPairingState.exit.i

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
  %i.ce = phi i32 [ %i.am, %.lr.ph ], [ %i.mi, %.thread ] ; 6 uses
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
  %i.cz = trunc i16 %i.cy to i8                   ; 3 uses
  %i.da = lshr i16 %i.cy, 8                       ; 3 uses
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
  %i.dq = call float @llvm.fmuladd.f32(float %i.do, float 3.276700e+04, float 0.000000e+00)
  %i.dr = select i1 %i.dp, float 3.276700e+04, float %i.dq
  %i.ds = fptoui float %i.dr to i16
  store i16 %i.ds, ptr %i.ax, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = shl nuw nsw i32 %i.dv, 7
  %i.dx = or i32 %i.dw, %i.dv
  %i.dy = uitofp nneg i32 %i.dx to float
  %i.dz = fdiv float %i.dy, 2.600000e+04          ; 2 uses
  %i.ea = fcmp ogt float %i.dz, 1.000000e+00
  %i.eb = call float @llvm.fmuladd.f32(float %i.dz, float 3.276700e+04, float 0.000000e+00)
  %i.ec = select i1 %i.ea, float 3.276700e+04, float %i.eb
  %i.ed = fptoui float %i.ec to i16
  store i16 %i.ed, ptr %i.ay, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  br label %bb.z

bb.z:                                             ; preds = %RemapValClamped.exit.i.i, %bb.y
  %.1.i.i = phi ptr [ %i.ee, %RemapValClamped.exit.i.i ], [ %.0.i.i, %bb.y ] ; 5 uses
  %i.ef = and i32 %i.df, 64
  %.not88.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not88.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.eh = load i8, ptr %.1.i.i, align 1
  store i8 %i.eh, ptr %i.az, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  %i.ej = load i8, ptr %i.eg, align 1
  store i8 %i.ej, ptr %i.ba, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 3
  %i.el = load i8, ptr %i.ei, align 1
  store i8 %i.el, ptr %i.bb, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2.i.i = phi ptr [ %i.ek, %bb.aa ], [ %.1.i.i, %bb.z ] ; 3 uses
  %.not89.i.i = icmp sgt i8 %i.cz, -1
  br i1 %.not89.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = load i32, ptr %.2.i.i, align 1
  store i32 %i.em, ptr %i.bc, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3.i.i = phi ptr [ %i.en, %bb.ac ], [ %.2.i.i, %bb.ab ] ; 3 uses
  %i.eo = and i32 %i.dg, 1
  %.not90.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not90.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load i32, ptr %.3.i.i, align 1          ; 3 uses
  store i32 %i.ep, ptr %i.bd, align 8
  %i.eq = load i64, ptr %i.av, align 8
  %i.er = and i64 %i.eq, 524288
  %.not91.i.i = icmp eq i64 %i.er, 0
  %..i.i = select i1 %.not91.i.i, i32 0, i32 1000
  %i.es = trunc i32 %i.ep to i16
  %i.et = lshr i32 %i.ep, 16
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.ew = sitofp i16 %i.es to float
  %i.ex = call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.ey = sitofp i16 %i.eu to float               ; 2 uses
  %i.ez = fneg float %i.ey
  %i.fa = call float @SDL_sinf_REAL(float noundef -2.617990e-01) #8
  %i.fb = call float @SDL_cosf_REAL(float noundef -2.617990e-01) #8
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fb, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.ey, i64 1
  %i.fg = fmul <2 x float> %i.fd, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fa, i64 1
  %i.fj = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fk, <2 x float> %i.fg)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i32>
  %i.fn = insertelement <2 x i32> poison, i32 %..i.i, i64 0
  %i.fo = shufflevector <2 x i32> %i.fn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fp = add nsw <2 x i32> %i.fo, %i.fm
  %i.fq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fp, <2 x i32> splat (i32 -32768))
  %i.fr = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fq, <2 x i32> splat (i32 32767))
  %i.fs = trunc nsw <2 x i32> %i.fr to <2 x i16>
  store <2 x i16> %i.fs, ptr %i.bd, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.4.i.i = phi ptr [ %i.ft, %bb.ae ], [ %.3.i.i, %bb.ad ] ; 3 uses
  %i.fu = and i32 %i.dg, 2
  %.not92.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not92.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = load i32, ptr %.4.i.i, align 1          ; 3 uses
  store i32 %i.fv, ptr %i.be, align 4
  %i.fw = load i64, ptr %i.av, align 8
  %i.fx = and i64 %i.fw, 1048576
  %.not93.i.i = icmp eq i64 %i.fx, 0
  %.97.i.i = select i1 %.not93.i.i, i32 0, i32 1000
  %i.fy = trunc i32 %i.fv to i16
  %i.fz = lshr i32 %i.fv, 16
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.gc = sitofp i16 %i.fy to float
  %i.gd = call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.ge = sitofp i16 %i.ga to float               ; 2 uses
  %i.gf = fneg float %i.ge
  %i.gg = call float @SDL_sinf_REAL(float noundef 2.617990e-01) #8
  %i.gh = call float @SDL_cosf_REAL(float noundef 2.617990e-01) #8
  %i.gi = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gh, i64 1
  %i.gk = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.ge, i64 1
  %i.gm = fmul <2 x float> %i.gj, %i.gl
  %i.gn = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gg, i64 1
  %i.gp = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gq, <2 x float> %i.gm)
  %i.gs = fptosi <2 x float> %i.gr to <2 x i32>
  %i.gt = insertelement <2 x i32> poison, i32 %.97.i.i, i64 0
  %i.gu = shufflevector <2 x i32> %i.gt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gv = add nsw <2 x i32> %i.gu, %i.gs
  %i.gw = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gv, <2 x i32> splat (i32 -32768))
  %i.gx = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gw, <2 x i32> splat (i32 32767))
  %i.gy = trunc nsw <2 x i32> %i.gx to <2 x i16>
  store <2 x i16> %i.gy, ptr %i.be, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.5.i.i = phi ptr [ %i.gz, %bb.ag ], [ %.4.i.i, %bb.af ] ; 3 uses
  %i.ha = and i32 %i.dg, 4
  %.not94.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not94.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) %.5.i.i, i64 6, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.6.i.i = phi ptr [ %i.hb, %bb.ai ], [ %.5.i.i, %bb.ah ] ; 3 uses
  %i.hc = and i32 %i.dg, 8
  %.not95.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not95.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bh, ptr noundef nonnull align 1 dereferenceable(6) %.6.i.i, i64 6, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.6.i.i, i64 6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.7.i.i = phi ptr [ %i.hd, %bb.ak ], [ %.6.i.i, %bb.aj ]
  %i.he = and i32 %i.dg, 16
  %.not96.i.i = icmp eq i32 %i.he, 0
  br i1 %.not96.i.i, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 1 dereferenceable(16) %.7.i.i, i64 16, i1 false)
  br label %bb.av

bb.an:                                            ; preds = %WriteSegmentToSteamControllerPacketAssembler.exit
  %i.hf = load i8, ptr %i.au, align 2             ; 2 uses
  switch i8 %i.hf, label %UpdateSteamControllerState.exit.thread [
    i8 1, label %bb.ao
    i8 7, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hg = load i32, ptr %i.at, align 4
  %i.hh = load i32, ptr %i.bj, align 4
  %.not72.i = icmp eq i32 %i.hg, %i.hh
  br i1 %.not72.i, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @FormatStatePacketUntilGyro(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %i.bj)
  %i.hi = load <4 x i16>, ptr %i.bs, align 8
  %i.hj = sitofp <4 x i16> %i.hi to <4 x float>
  store <4 x float> %i.hj, ptr %i.bi, align 4
  %i.hk = load <4 x i16>, ptr %i.br, align 4
  store <4 x i16> %i.hk, ptr %i.bg, align 8
  %i.hl = load <2 x i16>, ptr %i.bt, align 4
  store <2 x i16> %i.hl, ptr %i.bm, align 8
  br label %bb.av

bb.aq:                                            ; preds = %bb.an
  %i.hm = load i32, ptr %i.at, align 4
  %i.hn = load i32, ptr %i.bj, align 4
  %.not71.i = icmp eq i32 %i.hm, %i.hn
  br i1 %.not71.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @FormatStatePacketUntilGyro(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %i.bj)
  %i.ho = load i8, ptr %i.bk, align 8
  switch i8 %i.ho, label %bb.av [
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hp = load <4 x i16>, ptr %i.bl, align 1
  %i.hq = sitofp <4 x i16> %i.hp to <4 x float>
  store <4 x float> %i.hq, ptr %i.bi, align 4
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.hr = load <2 x i16>, ptr %i.bl, align 1
  store <2 x i16> %i.hr, ptr %i.bg, align 8
  %i.hs = load i16, ptr %i.bn, align 1
  store i16 %i.hs, ptr %i.bq, align 4
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.ht = load <2 x i16>, ptr %i.bl, align 1
  store <2 x i16> %i.ht, ptr %i.bh, align 2
  %i.hu = load i16, ptr %i.bn, align 1
  store i16 %i.hu, ptr %i.bo, align 2
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.am, %bb.ao, %bb.aq, %bb.ap, %bb.as, %bb.at, %bb.au, %bb.al
  %i.hv = call i64 @SDL_GetTicksNS_REAL() #8      ; 22 uses
  %i.hw = load i8, ptr %i.bu, align 8, !range !4, !noundef !5
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @ControllerConnected(ptr noundef %0, ptr noundef %i.c)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hy = load ptr, ptr %i.c, align 8             ; 23 uses
  %.not117.not = icmp eq ptr %i.hy, null
  br i1 %.not117.not, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hz = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ia = load i64, ptr %i.bw, align 8
  %.not118 = icmp eq i64 %i.hz, %i.ia
  br i1 %.not118, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ib = and i64 %i.hz, 128
  %i.ic = icmp ne i64 %i.ib, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 0, i1 noundef zeroext %i.ic) #8
  %i.id = load i64, ptr %i.av, align 8
  %i.ie = and i64 %i.id, 32
  %i.if = icmp ne i64 %i.ie, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 1, i1 noundef zeroext %i.if) #8
  %i.ig = load i64, ptr %i.av, align 8
  %i.ih = and i64 %i.ig, 64
  %i.ii = icmp ne i64 %i.ih, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 2, i1 noundef zeroext %i.ii) #8
  %i.ij = load i64, ptr %i.av, align 8
  %i.ik = and i64 %i.ij, 16
  %i.il = icmp ne i64 %i.ik, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 3, i1 noundef zeroext %i.il) #8
  %i.im = load i64, ptr %i.av, align 8
  %i.in = and i64 %i.im, 8
  %i.io = icmp ne i64 %i.in, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 9, i1 noundef zeroext %i.io) #8
  %i.ip = load i64, ptr %i.av, align 8
  %i.iq = and i64 %i.ip, 4
  %i.ir = icmp ne i64 %i.iq, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 10, i1 noundef zeroext %i.ir) #8
  %i.is = load i64, ptr %i.av, align 8
  %i.it = and i64 %i.is, 4096
  %i.iu = icmp ne i64 %i.it, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 4, i1 noundef zeroext %i.iu) #8
  %i.iv = load i64, ptr %i.av, align 8
  %i.iw = and i64 %i.iv, 16384
  %i.ix = icmp ne i64 %i.iw, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 6, i1 noundef zeroext %i.ix) #8
  %i.iy = load i64, ptr %i.av, align 8
  %i.iz = and i64 %i.iy, 8192
  %i.ja = icmp ne i64 %i.iz, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 5, i1 noundef zeroext %i.ja) #8
  %i.jb = load i64, ptr %i.av, align 8
  %i.jc = and i64 %i.jb, 4194304
  %i.jd = icmp ne i64 %i.jc, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 7, i1 noundef zeroext %i.jd) #8
  %i.je = load i64, ptr %i.av, align 8
  %i.jf = and i64 %i.je, 32768
  %i.jg = icmp ne i64 %i.jf, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 12, i1 noundef zeroext %i.jg) #8
  %i.jh = load i64, ptr %i.av, align 8
  %i.ji = and i64 %i.jh, 65536
  %i.jj = icmp ne i64 %i.ji, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 11, i1 noundef zeroext %i.jj) #8
  %i.jk = load i64, ptr %i.av, align 8
  %i.jl = and i64 %i.jk, 262144
  %i.jm = icmp ne i64 %i.jl, 0
  call void @SDL_SendJoystickButton(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 8, i1 noundef zeroext %i.jm) #8
  %i.jn = load i64, ptr %i.av, align 8            ; 3 uses
  %i.jo = lshr i64 %i.jn, 8
  %i.jp = trunc i64 %i.jo to i8                   ; 2 uses
  %spec.select = and i8 %i.jp, 1
  %i.jq = lshr i64 %i.jn, 9
  %i.jr = trunc i64 %i.jq to i8
  %i.js = and i8 %i.jr, 4
  %.1 = or disjoint i8 %spec.select, %i.js
  %i.jt = lshr i64 %i.jn, 7
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = and i8 %i.ju, 8
  %.2 = or disjoint i8 %.1, %i.jv
  %i.jw = and i8 %i.jp, 2
  %.3 = or disjoint i8 %.2, %i.jw
  call void @SDL_SendJoystickHat(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 0, i8 noundef zeroext %.3) #8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jx = load i16, ptr %i.ax, align 4
  %i.jy = shl i16 %i.jx, 1
  %i.jz = xor i16 %i.jy, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 4, i16 noundef signext %i.jz) #8
  %i.ka = load i16, ptr %i.ay, align 2
  %i.kb = shl i16 %i.ka, 1
  %i.kc = xor i16 %i.kb, -32768
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 5, i16 noundef signext %i.kc) #8
  %i.kd = load i16, ptr %i.bc, align 4
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 0, i16 noundef signext %i.kd) #8
  %i.ke = load i16, ptr %i.bx, align 2
  %i.kf = xor i16 %i.ke, -1
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 1, i16 noundef signext %i.kf) #8
  %i.kg = load i16, ptr %i.be, align 4
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 2, i16 noundef signext %i.kg) #8
  %i.kh = load i16, ptr %i.bf, align 2
  %i.ki = xor i16 %i.kh, -1
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i8 noundef zeroext 3, i16 noundef signext %i.ki) #8
  %i.kj = load i8, ptr %i.by, align 1, !range !4, !noundef !5
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.kl = load i32, ptr %i.bz, align 4
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw nsw i64 %i.km, 1000
  %i.ko = load i64, ptr %i.ca, align 8
  %i.kp = add i64 %i.kn, %i.ko                    ; 2 uses
  store i64 %i.kp, ptr %i.ca, align 8
  %i.kq = load i16, ptr %i.bh, align 2
  %i.kr = load i16, ptr %i.bo, align 2
  %i.ks = insertelement <2 x i16> poison, i16 %i.kq, i64 0
  %i.kt = insertelement <2 x i16> %i.ks, i16 %i.kr, i64 1
  %i.ku = sitofp <2 x i16> %i.kt to <2 x float>
  %i.kv = fmul nnan <2 x float> %i.ku, splat (float f0x38000000)
  %i.kw = fmul nnan <2 x float> %i.kv, splat (float f0x420BA058)
  store <2 x float> %i.kw, ptr %i.e, align 8
  %i.kx = load i16, ptr %i.bm, align 8
  %i.ky = sitofp i16 %i.kx to float
  %i.kz = fmul nnan float %i.ky, f0x38000000
  %i.la = fmul nnan float %i.kz, f0x420BA058
  store float %i.la, ptr %i.cb, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i32 noundef 2, i64 noundef %i.kp, ptr noundef nonnull %i.e, i32 noundef 3) #8
  %i.lb = load i16, ptr %i.bg, align 8
  %i.lc = load i16, ptr %i.bq, align 4
  %i.ld = insertelement <2 x i16> poison, i16 %i.lb, i64 0
  %i.le = insertelement <2 x i16> %i.ld, i16 %i.lc, i64 1
  %i.lf = sitofp <2 x i16> %i.le to <2 x float>
  %i.lg = fmul nnan <2 x float> %i.lf, splat (float f0x38000000)
  %i.lh = fmul nnan <2 x float> %i.lg, splat (float 2.000000e+00)
  %i.li = fmul nnan <2 x float> %i.lh, splat (float 9.806650e+00)
  store <2 x float> %i.li, ptr %i.e, align 8
  %i.lj = load i16, ptr %i.bp, align 2
  %i.lk = sext i16 %i.lj to i32
  %i.ll = sub nsw i32 0, %i.lk
  %i.lm = sitofp i32 %i.ll to float
  %i.ln = fmul nnan float %i.lm, f0x38000000
  %i.lo = fmul nnan float %i.ln, 2.000000e+00
  %i.lp = fmul nnan float %i.lo, 9.806650e+00
  store float %i.lp, ptr %i.cb, align 8
  %i.lq = load i64, ptr %i.ca, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.hv, ptr noundef nonnull %i.hy, i32 noundef 1, i64 noundef %i.lq, ptr noundef nonnull %i.e, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bv, ptr noundef nonnull align 8 dereferenceable(88) %i.as, i64 88, i1 false)
  br label %.thread

UpdateSteamControllerState.exit:                  ; preds = %bb.v
  %i.lr = load i8, ptr %i.bu, align 8, !range !4, !noundef !5 ; 2 uses
  %i.ls = icmp eq i8 %i.lr, 0
  %or.cond163.a = and i1 %.1.i, %i.ls
  br i1 %or.cond163.a, label %bb.bd, label %bb.bh

UpdateSteamControllerState.exit.thread:           ; preds = %bb.an
  %i.lt = load i8, ptr %i.bu, align 8, !range !4, !noundef !5 ; 2 uses
  %.not155 = icmp eq i8 %i.lt, 0
  %or.cond156 = and i1 %.1.i, %.not155
  br i1 %or.cond156, label %.thread158, label %.thread159

bb.bd:                                            ; preds = %UpdateSteamControllerState.exit
  %1 = icmp eq i8 %i.cz, 1
  %2 = icmp eq i16 %i.da, 0
  %or.cond163 = and i1 %1, %2
  br i1 %or.cond163, label %.thread158thread-pre-split, label %.thread

.thread158thread-pre-split:                       ; preds = %bb.bd
  %.pr = load i8, ptr %i.au, align 2
  br label %.thread158

.thread158:                                       ; preds = %.thread158thread-pre-split, %UpdateSteamControllerState.exit.thread
  %3 = phi i8 [ %.pr, %.thread158thread-pre-split ], [ %i.hf, %UpdateSteamControllerState.exit.thread ]
  %i.lu = icmp eq i8 %3, 3
  br i1 %i.lu, label %bb.be, label %.thread

bb.be:                                            ; preds = %.thread158
  %i.lv = load i8, ptr %i.cc, align 1
  %.not114 = icmp eq i8 %i.lv, 0
  br i1 %.not114, label %.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lw = load i8, ptr %i.bj, align 4
  %.not115 = icmp eq i8 %i.lw, 1
  br i1 %.not115, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @ControllerConnected(ptr noundef %0, ptr noundef %i.c)
  br label %.thread

bb.bh:                                            ; preds = %UpdateSteamControllerState.exit
  %4 = trunc nuw i8 %i.lr to i1
  %5 = icmp eq i8 %i.cz, 1
  %6 = and i1 %5, %4
  %7 = icmp eq i16 %i.da, 0
  %i.lx = and i1 %6, %7
  %or.cond165 = and i1 %i.lx, %.1.i
  br i1 %or.cond165, label %.thread162, label %.thread

.thread159:                                       ; preds = %UpdateSteamControllerState.exit.thread
  %8 = trunc nuw i8 %i.lt to i1
  %or.cond3160 = and i1 %.1.i, %8
  br i1 %or.cond3160, label %.thread162, label %.thread

.thread162:                                       ; preds = %bb.bh, %.thread159
  %i.ly = load i8, ptr %i.au, align 2
  %i.lz = icmp eq i8 %i.ly, 3
  br i1 %i.lz, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %.thread162
  %i.ma = load i8, ptr %i.cc, align 1
  %.not116 = icmp eq i8 %i.ma, 0
  br i1 %.not116, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mb = load i8, ptr %i.bj, align 4
  %i.mc = icmp eq i8 %i.mb, 1
  br i1 %i.mc, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.md = load ptr, ptr %i.f, align 8
  %i.me = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.me, null
  br i1 %.not.i126, label %ControllerDisconnected.exit127, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mf = load i32, ptr %i.me, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.mf) #8
  br label %ControllerDisconnected.exit127

ControllerDisconnected.exit127:                   ; preds = %bb.bk, %bb.bl
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i8 0, ptr %i.mg, align 8
  store ptr null, ptr %i.c, align 8
  br label %.thread

.thread:                                          ; preds = %.thread159, %bb.t, %bb.q, %bb.o, %bb.n, %bb.l, %bb.bd, %.thread158, %bb.be, %bb.bf, %bb.ax, %bb.bh, %.thread162, %bb.bi, %bb.bj, %ControllerDisconnected.exit127, %bb.bg, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.mh = load ptr, ptr %i.aj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %i.ak, i8 0, i64 127, i1 false)
  store i8 3, ptr %i.d, align 16
  %i.mi = call i32 @SDL_hid_read_REAL(ptr noundef %i.mh, ptr noundef nonnull %i.d, i64 noundef 128) #8 ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %.thread, %HIDAPI_DriverSteam_RenewPairingState.exit, %.thread139
  %i.mk = phi i1 [ false, %.thread139 ], [ true, %HIDAPI_DriverSteam_RenewPairingState.exit ], [ true, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i1 %i.mk
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverSteam_OpenJoystick(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = alloca [20 x i8], align 16               ; 7 uses
  %i.c = alloca [20 x i8], align 16               ; 7 uses
  %i.d = alloca [21 x i8], align 16               ; 11 uses
  %2 = alloca %struct.SteamControllerPacketAssembler, align 4 ; 11 uses
  %i.e = alloca [20 x i8], align 16               ; 7 uses
  %i.f = alloca [65 x i8], align 16               ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8              ; 7 uses
  tail call void @SDL_AssertJoysticksLocked() #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(156) %i.j, i8 0, i64 156, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.k, i8 0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.f, i8 0, i64 65, i1 false)
  store i8 -125, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.o = load i8, ptr %i.n, align 4, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  store i8 3, ptr %i.e, align 16
  store i8 -64, ptr %i.r, align 1
  store i8 -125, ptr %i.s, align 2
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.u, ptr noundef nonnull %i.e, i64 noundef 20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.loopexit27, label %SetFeatureReport.exit.thread103.i

bb.b:                                             ; preds = %bb.c, %.preheader.i.i
  %.034.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.aa, %bb.c ]
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.x, ptr noundef nonnull %i.f, i64 noundef 65) #8
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %SetFeatureReport.exit.thread103.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @SDL_DelayNS_REAL(i64 noundef 500000) #8
  %i.aa = add nuw nsw i32 %.034.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, 50
  br i1 %exitcond.not.i.i, label %.loopexit27, label %bb.b, !llvm.loop !0

SetFeatureReport.exit.thread103.i:                ; preds = %bb.b, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %SetFeatureReport.exit.thread103.i
  %.01032.i.i = phi i32 [ 0, %SetFeatureReport.exit.thread103.i ], [ %i.bj, %.thread.i.i ]
  %i.ag = load i8, ptr %i.n, align 4, !range !4, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i8 1, ptr %i.ac, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(145) %2, i8 0, i64 145, i1 false)
  store i32 0, ptr %i.ad, align 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i, %bb.e
  %.02950.i.i.i = phi i32 [ 0, %bb.e ], [ %.1.i.i.i, %.thread.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %i.d, i8 0, i64 21, i1 false)
  store i8 3, ptr %i.d, align 16
  %i.ai = load ptr, ptr %i.ab, align 8
  %i.aj = call i32 @SDL_hid_get_feature_report_REAL(ptr noundef %i.ai, ptr noundef nonnull %i.d, i64 noundef 20) #8 ; 7 uses
  %i.ak = icmp slt i32 %i.aj, 3
  %i.al = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.al, -1             ; 2 uses
  %or.cond39.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.i.i
  %i.am = add nsw i32 %.02950.i.i.i, 1
  %.1.i.i.i = select i1 %or.cond39.i.i.i, i32 %i.am, i32 0 ; 3 uses
  %i.an = icmp sgt i32 %i.aj, 0
  br i1 %i.an, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 4, !range !4, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.aq = zext i8 %i.al to i32                    ; 2 uses
  %i.ar = and i32 %i.aq, 7                        ; 4 uses
  %i.as = load i8, ptr %i.d, align 16
  %.not.i.i.i.i = icmp eq i8 %i.as, 3
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not29.i.i.i.i = icmp eq i32 %i.aj, 20
  br i1 %.not29.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @SDL_Log_REAL(ptr noundef nonnull @.str.5, i32 noundef range(i32 1, -2147483648) %i.aj) #8
  call void @HIDAPI_DumpPacket(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, i32 noundef range(i32 1, -2147483648) %i.aj) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(145) %2, i8 0, i64 145, i1 false)
  br label %.thread.sink.split.i.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.ad, align 4
  %.not31.i.i.i.i = icmp eq i32 %i.ar, %i.at
  br i1 %.not31.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(145) %2, i8 0, i64 145, i1 false)
  store i32 0, ptr %i.ad, align 4
  %.not32.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not32.i.i.i.i, label %bb.n, label %.thread.i.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = mul nuw nsw i32 %i.ar, 18               ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.aw, ptr noundef nonnull align 2 dereferenceable(18) %i.af, i64 18, i1 false)
  %i.ax = and i32 %i.aq, 64
  %.not33.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not33.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ad, align 4
  %i.ay = add nuw nsw i32 %i.au, 18
  br label %WriteSegmentToSteamControllerPacketAssembler.exit.i.i.i

bb.p:                                             ; preds = %bb.n
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_steam_triton?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@HIDAPI_DriverSteamTriton_UpdateDevice:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 30 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 42 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 34 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 38 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit
  %i.bz = phi i32 [ %i.be, %.lr.ph ], [ %i.kc, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit ] ; 5 uses
  %.161112 = phi ptr [ %.060100, %.lr.ph ], [ %.5, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit ] ; 16 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !range !3, !noundef !4
  %.not.i76 = icmp eq i8 %i.cc, 0
  br i1 %.not.i76, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.cb, align 8
  %i.cd = load i32, ptr %i.k, align 4
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.bh, align 8
  %i.cg = load i32, ptr %i.cf, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.cg) #6
  br label %.loopexit

bb.n:                                             ; preds = %bb.j
  %i.ch = load i8, ptr %i.h, align 16
  switch i8 %i.ch, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit [
    i8 66, label %bb.o
    i8 69, label %bb.o
    i8 71, label %bb.ac
    i8 67, label %bb.aq
    i8 70, label %bb.as
    i8 121, label %bb.as
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %.not69 = icmp eq ptr %.161112, null
  br i1 %.not69, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !range !3, !noundef !4
  %.not.i77.not = icmp eq i8 %i.cj, 0
  br i1 %.not.i77.not, label %bb.q, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit78

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ck = call zeroext i1 @HIDAPI_JoystickConnected(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit78

HIDAPI_DriverSteamTriton_SetControllerConnected.exit78: ; preds = %bb.q, %bb.p
  %i.cl = load i32, ptr %i.k, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.r:                                             ; preds = %HIDAPI_DriverSteamTriton_SetControllerConnected.exit78
  %i.cn = load ptr, ptr %i.bh, align 8
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.co) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2 = phi ptr [ %.161112, %bb.o ], [ %i.cp, %bb.r ] ; 8 uses
  %i.cq = icmp ne ptr %.2, null
  %i.cr = icmp samesign ugt i32 %i.bz, 45
  %or.cond4 = and i1 %i.cr, %i.cq
  br i1 %or.cond4, label %bb.t, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.i, align 8             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.cs = call i64 @SDL_GetTicksNS_REAL() #6      ; 5 uses
  call fastcc void @HIDAPI_DriverSteamTriton_HandleGenericState(ptr noundef %.val, ptr noundef nonnull %.2, i64 noundef %i.cs, ptr noundef nonnull readonly %i.bg)
  %i.ct = load i32, ptr %i.bi, align 2            ; 2 uses
  %i.cu = and i32 %i.ct, 33554432                 ; 2 uses
  %i.cv = icmp ne i32 %i.cu, 0                    ; 2 uses
  %.lobit.i = lshr exact i32 %i.cu, 25
  %i.cw = trunc nuw nsw i32 %.lobit.i to i8
  %i.cx = and i32 %i.ct, 2097152                  ; 2 uses
  %i.cy = icmp ne i32 %i.cx, 0                    ; 2 uses
  %.lobit58.i = lshr exact i32 %i.cx, 21
  %i.cz = trunc nuw nsw i32 %.lobit58.i to i8
  br i1 %i.cv, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.db = load i8, ptr %i.da, align 8, !range !3, !noundef !4
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %._crit_edge.i, label %bb.w

._crit_edge.i:                                    ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.pre2.i = load float, ptr %.phi.trans.insert1.i, align 8
  br label %bb.v

.critedge.i:                                      ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.de = load <2 x i16>, ptr %i.bx, align 2
  %i.df = sitofp <2 x i16> %i.de to <2 x float>
  %i.dg = fmul nnan <2 x float> %i.df, splat (float f0x37800000) ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = fadd float %i.dh, 5.000000e-01          ; 2 uses
  store float %i.di, ptr %i.dd, align 4
  %i.dj = extractelement <2 x float> %i.dg, i64 1
  %i.dk = fsub float 5.000000e-01, %i.dj          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 56
  store float %i.dk, ptr %i.dl, align 8
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %._crit_edge.i
  %i.dm = phi float [ %.pre2.i, %._crit_edge.i ], [ %i.dk, %.critedge.i ]
  %i.dn = phi float [ %.pre.i, %._crit_edge.i ], [ %i.di, %.critedge.i ]
  %i.do = load i16, ptr %i.bk, align 2
  %i.dp = uitofp i16 %i.do to float
  %i.dq = fmul nnan float %i.dp, f0x38000000
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.cs, ptr noundef nonnull %.2, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.cv, float noundef %i.dn, float noundef %i.dm, float noundef %i.dq) #6
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store i8 %i.cw, ptr %i.dr, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.cy, label %.critedge60.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.dt = load i8, ptr %i.ds, align 4, !range !3, !noundef !4
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %._crit_edge3.i, label %bb.z

._crit_edge3.i:                                   ; preds = %bb.x
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %.pre5.i = load float, ptr %.phi.trans.insert4.i, align 8
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %.val, i64 68
  %.pre7.i = load float, ptr %.phi.trans.insert6.i, align 4
  br label %bb.y

.critedge60.i:                                    ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.dw = load <2 x i16>, ptr %i.bl, align 8
  %i.dx = sitofp <2 x i16> %i.dw to <2 x float>
  %i.dy = fmul nnan <2 x float> %i.dx, splat (float f0x37800000) ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = fadd float %i.dz, 5.000000e-01          ; 2 uses
  store float %i.ea, ptr %i.dv, align 8
  %i.eb = extractelement <2 x float> %i.dy, i64 1
  %i.ec = fsub float 5.000000e-01, %i.eb          ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 68
  store float %i.ec, ptr %i.ed, align 4
  br label %bb.y

bb.y:                                             ; preds = %.critedge60.i, %._crit_edge3.i
  %i.ee = phi float [ %.pre7.i, %._crit_edge3.i ], [ %i.ec, %.critedge60.i ]
  %i.ef = phi float [ %.pre5.i, %._crit_edge3.i ], [ %i.ea, %.critedge60.i ]
  %i.eg = load i16, ptr %i.bn, align 4
  %i.eh = uitofp i16 %i.eg to float
  %i.ei = fmul nnan float %i.eh, f0x38000000
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.cs, ptr noundef nonnull %.2, i32 noundef 1, i32 noundef 0, i1 noundef zeroext %i.cy, float noundef %i.ef, float noundef %i.ee, float noundef %i.ei) #6
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 60
  store i8 %i.cz, ptr %i.ej, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !range !3, !noundef !4
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.aa, label %HIDAPI_DriverSteamTriton_HandleState.exit

bb.aa:                                            ; preds = %bb.z
  %i.en = load i32, ptr %i.bo, align 2            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %.not.i79 = icmp eq i32 %i.en, %i.ep
  br i1 %.not.i79, label %HIDAPI_DriverSteamTriton_HandleState.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = sub i32 %i.en, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = mul nuw nsw i64 %i.er, 1000
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add i64 %i.eu, %i.es                    ; 2 uses
  store i64 %i.ev, ptr %i.et, align 8
  %1 = load <2 x i16>, ptr %i.bq, align 8
  %i.ew = load i16, ptr %i.br, align 4
  %i.ex = insertelement <2 x i16> %1, i16 %i.ew, i64 1
  %i.ey = sitofp <2 x i16> %i.ex to <2 x float>
  %i.ez = fmul nnan <2 x float> %i.ey, splat (float f0x38000000)
  %i.fa = fmul nnan <2 x float> %i.ez, splat (float f0x420BA058)
  store <2 x float> %i.fa, ptr %i.d, align 8
  %i.fb = load i16, ptr %i.bs, align 2
  %i.fc = sext i16 %i.fb to i32
  %i.fd = sub nsw i32 0, %i.fc
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = fmul nnan float %i.fe, f0x38000000
  %i.fg = fmul nnan float %i.ff, f0x420BA058
  store float %i.fg, ptr %i.by, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.cs, ptr noundef nonnull %.2, i32 noundef 2, i64 noundef %i.ev, ptr noundef nonnull %i.d, i32 noundef 3) #6
  %2 = load <2 x i16>, ptr %i.bu, align 2
  %i.fh = load i16, ptr %i.bv, align 2
  %i.fi = insertelement <2 x i16> %2, i16 %i.fh, i64 1
  %i.fj = sitofp <2 x i16> %i.fi to <2 x float>
  %i.fk = fmul nnan <2 x float> %i.fj, splat (float f0x38000000)
  %i.fl = fmul nnan <2 x float> %i.fk, splat (float 2.000000e+00)
  %i.fm = fmul nnan <2 x float> %i.fl, splat (float 9.806650e+00)
  store <2 x float> %i.fm, ptr %i.d, align 8
  %i.fn = load i16, ptr %i.bw, align 4
  %i.fo = sext i16 %i.fn to i32
  %i.fp = sub nsw i32 0, %i.fo
  %i.fq = sitofp i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x38000000
  %i.fs = fmul nnan float %i.fr, 2.000000e+00
  %i.ft = fmul nnan float %i.fs, 9.806650e+00
  store float %i.ft, ptr %i.by, align 8
  %i.fu = load i64, ptr %i.et, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.cs, ptr noundef nonnull %.2, i32 noundef 1, i64 noundef %i.fu, ptr noundef nonnull %i.d, i32 noundef 3) #6
  %i.fv = load i32, ptr %i.bo, align 2
  store i32 %i.fv, ptr %i.eo, align 4
  br label %HIDAPI_DriverSteamTriton_HandleState.exit

HIDAPI_DriverSteamTriton_HandleState.exit:        ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.ac:                                            ; preds = %bb.n
  %.not68 = icmp eq ptr %.161112, null
  br i1 %.not68, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 8, !range !3, !noundef !4
  %.not.i80.not = icmp eq i8 %i.fx, 0
  br i1 %.not.i80.not, label %bb.ae, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit82

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.fw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.fy = call zeroext i1 @HIDAPI_JoystickConnected(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit82

HIDAPI_DriverSteamTriton_SetControllerConnected.exit82: ; preds = %bb.ae, %bb.ad
  %i.fz = load i32, ptr %i.k, align 4
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.af, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.af:                                            ; preds = %HIDAPI_DriverSteamTriton_SetControllerConnected.exit82
  %i.gb = load ptr, ptr %i.bh, align 8
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = call ptr @SDL_GetJoystickFromID_REAL(i32 noundef %i.gc) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.3 = phi ptr [ %.161112, %bb.ac ], [ %i.gd, %bb.af ] ; 8 uses
  %i.ge = icmp ne ptr %.3, null
  %i.gf = icmp samesign ugt i32 %i.bz, 45
  %or.cond7 = and i1 %i.gf, %i.ge
  br i1 %or.cond7, label %bb.ah, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.ah:                                            ; preds = %bb.ag
  %.val72 = load ptr, ptr %i.i, align 8           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.gg = call i64 @SDL_GetTicksNS_REAL() #6      ; 5 uses
  call fastcc void @HIDAPI_DriverSteamTriton_HandleGenericState(ptr noundef %.val72, ptr noundef nonnull %.3, i64 noundef %i.gg, ptr noundef nonnull readonly %i.bg)
  %i.gh = load i32, ptr %i.bi, align 2            ; 2 uses
  %i.gi = and i32 %i.gh, 33554432                 ; 2 uses
  %i.gj = icmp ne i32 %i.gi, 0                    ; 2 uses
  %.lobit.i83 = lshr exact i32 %i.gi, 25
  %i.gk = trunc nuw nsw i32 %.lobit.i83 to i8
  %i.gl = and i32 %i.gh, 2097152                  ; 2 uses
  %i.gm = icmp ne i32 %i.gl, 0                    ; 2 uses
  %.lobit58.i84 = lshr exact i32 %i.gl, 21
  %i.gn = trunc nuw nsw i32 %.lobit58.i84 to i8
  br i1 %i.gj, label %.critedge.i97, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %.val72, i64 48
  %i.gp = load i8, ptr %i.go, align 8, !range !3, !noundef !4
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %._crit_edge.i92, label %bb.ak

._crit_edge.i92:                                  ; preds = %bb.ai
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %.val72, i64 52
  %.pre.i94 = load float, ptr %.phi.trans.insert.i93, align 4
  %.phi.trans.insert1.i95 = getelementptr inbounds nuw i8, ptr %.val72, i64 56
  %.pre2.i96 = load float, ptr %.phi.trans.insert1.i95, align 8
  br label %bb.aj

.critedge.i97:                                    ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %.val72, i64 52
  %i.gs = load <2 x i16>, ptr %i.bj, align 4
  %i.gt = sitofp <2 x i16> %i.gs to <2 x float>
  %i.gu = fmul nnan <2 x float> %i.gt, splat (float f0x37800000) ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = fadd float %i.gv, 5.000000e-01          ; 2 uses
  store float %i.gw, ptr %i.gr, align 4
  %i.gx = extractelement <2 x float> %i.gu, i64 1
  %i.gy = fsub float 5.000000e-01, %i.gx          ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val72, i64 56
  store float %i.gy, ptr %i.gz, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge.i97, %._crit_edge.i92
  %i.ha = phi float [ %.pre2.i96, %._crit_edge.i92 ], [ %i.gy, %.critedge.i97 ]
  %i.hb = phi float [ %.pre.i94, %._crit_edge.i92 ], [ %i.gw, %.critedge.i97 ]
  %i.hc = load i16, ptr %i.bl, align 8
  %i.hd = uitofp i16 %i.hc to float
  %i.he = fmul nnan float %i.hd, f0x38000000
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.gg, ptr noundef nonnull %.3, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %i.gj, float noundef %i.hb, float noundef %i.ha, float noundef %i.he) #6
  %i.hf = getelementptr inbounds nuw i8, ptr %.val72, i64 48
  store i8 %i.gk, ptr %i.hf, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.gm, label %.critedge60.i91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = getelementptr inbounds nuw i8, ptr %.val72, i64 60
  %i.hh = load i8, ptr %i.hg, align 4, !range !3, !noundef !4
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %._crit_edge3.i86, label %bb.an

._crit_edge3.i86:                                 ; preds = %bb.al
  %.phi.trans.insert4.i87 = getelementptr inbounds nuw i8, ptr %.val72, i64 64
  %.pre5.i88 = load float, ptr %.phi.trans.insert4.i87, align 8
  %.phi.trans.insert6.i89 = getelementptr inbounds nuw i8, ptr %.val72, i64 68
  %.pre7.i90 = load float, ptr %.phi.trans.insert6.i89, align 4
  br label %bb.am

.critedge60.i91:                                  ; preds = %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %.val72, i64 64
  %i.hk = load <2 x i16>, ptr %i.bm, align 2
  %i.hl = sitofp <2 x i16> %i.hk to <2 x float>
  %i.hm = fmul nnan <2 x float> %i.hl, splat (float f0x37800000) ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 0
  %i.ho = fadd float %i.hn, 5.000000e-01          ; 2 uses
  store float %i.ho, ptr %i.hj, align 8
  %i.hp = extractelement <2 x float> %i.hm, i64 1
  %i.hq = fsub float 5.000000e-01, %i.hp          ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.val72, i64 68
  store float %i.hq, ptr %i.hr, align 4
  br label %bb.am

bb.am:                                            ; preds = %.critedge60.i91, %._crit_edge3.i86
  %i.hs = phi float [ %.pre7.i90, %._crit_edge3.i86 ], [ %i.hq, %.critedge60.i91 ]
  %i.ht = phi float [ %.pre5.i88, %._crit_edge3.i86 ], [ %i.ho, %.critedge60.i91 ]
  %i.hu = load i16, ptr %i.bo, align 2
  %i.hv = uitofp i16 %i.hu to float
  %i.hw = fmul nnan float %i.hv, f0x38000000
  call void @SDL_SendJoystickTouchpad(i64 noundef %i.gg, ptr noundef nonnull %.3, i32 noundef 1, i32 noundef 0, i1 noundef zeroext %i.gm, float noundef %i.ht, float noundef %i.hs, float noundef %i.hw) #6
  %i.hx = getelementptr inbounds nuw i8, ptr %.val72, i64 60
  store i8 %i.gn, ptr %i.hx, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %.val72, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !range !3, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ao, label %HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit

bb.ao:                                            ; preds = %bb.an
  %i.ib = load i16, ptr %i.bp, align 16           ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val72, i64 2 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2            ; 2 uses
  %.not.i85 = icmp eq i16 %i.ib, %i.id
  br i1 %.not.i85, label %HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = zext i16 %i.id to i64
  %i.if = zext i16 %i.ib to i64
  %i.ig = sub nsw i64 %i.if, %i.ie
  %i.ih = shl nsw i64 %i.ig, 5
  %i.ii = and i64 %i.ih, 4294967264
  %i.ij = mul nuw nsw i64 %i.ii, 1000
  %i.ik = getelementptr inbounds nuw i8, ptr %.val72, i64 8 ; 3 uses
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = add i64 %i.il, %i.ij                    ; 2 uses
  store i64 %i.im, ptr %i.ik, align 8
  %3 = load <2 x i16>, ptr %i.bq, align 8
  %i.in = load i16, ptr %i.br, align 4
  %i.io = insertelement <2 x i16> %3, i16 %i.in, i64 1
  %i.ip = sitofp <2 x i16> %i.io to <2 x float>
  %i.iq = fmul nnan <2 x float> %i.ip, splat (float f0x38000000)
  %i.ir = fmul nnan <2 x float> %i.iq, splat (float f0x420BA058)
  store <2 x float> %i.ir, ptr %i.b, align 8
  %i.is = load i16, ptr %i.bs, align 2
  %i.it = sext i16 %i.is to i32
  %i.iu = sub nsw i32 0, %i.it
  %i.iv = sitofp i32 %i.iu to float
  %i.iw = fmul nnan float %i.iv, f0x38000000
  %i.ix = fmul nnan float %i.iw, f0x420BA058
  store float %i.ix, ptr %i.bt, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.gg, ptr noundef nonnull %.3, i32 noundef 2, i64 noundef %i.im, ptr noundef nonnull %i.b, i32 noundef 3) #6
  %4 = load <2 x i16>, ptr %i.bu, align 2
  %i.iy = load i16, ptr %i.bv, align 2
  %i.iz = insertelement <2 x i16> %4, i16 %i.iy, i64 1
  %i.ja = sitofp <2 x i16> %i.iz to <2 x float>
  %i.jb = fmul nnan <2 x float> %i.ja, splat (float f0x38000000)
  %i.jc = fmul nnan <2 x float> %i.jb, splat (float 2.000000e+00)
  %i.jd = fmul nnan <2 x float> %i.jc, splat (float 9.806650e+00)
  store <2 x float> %i.jd, ptr %i.b, align 8
  %i.je = load i16, ptr %i.bw, align 4
  %i.jf = sext i16 %i.je to i32
  %i.jg = sub nsw i32 0, %i.jf
  %i.jh = sitofp i32 %i.jg to float
  %i.ji = fmul nnan float %i.jh, f0x38000000
  %i.jj = fmul nnan float %i.ji, 2.000000e+00
  %i.jk = fmul nnan float %i.jj, 9.806650e+00
  store float %i.jk, ptr %i.bt, align 8
  %i.jl = load i64, ptr %i.ik, align 8
  call void @SDL_SendJoystickSensor(i64 noundef %i.gg, ptr noundef nonnull %.3, i32 noundef 1, i64 noundef %i.jl, ptr noundef nonnull %i.b, i32 noundef 3) #6
  %i.jm = load i16, ptr %i.bp, align 16
  store i16 %i.jm, ptr %i.ic, align 2
  br label %HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit

HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.aq:                                            ; preds = %bb.n
  %i.jn = icmp ne ptr %.161112, null
  %i.jo = icmp samesign ugt i32 %i.bz, 14
  %or.cond10 = and i1 %i.jn, %i.jo
  br i1 %or.cond10, label %bb.ar, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.ar:                                            ; preds = %bb.aq
  %.val73 = load i8, ptr %i.bg, align 1
  %.val74 = load i8, ptr %i.bi, align 2
  %switch.tableidx = add i8 %.val73, -1           ; 2 uses
  %i.jp = icmp ult i8 %switch.tableidx, 4
  br i1 %i.jp, label %switch.lookup, label %HIDAPI_DriverSteamTriton_HandleBatteryStatus.exit

switch.lookup:                                    ; preds = %bb.ar
  %i.jq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.HIDAPI_DriverSteamTriton_UpdateDevice, i64 %i.jq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %HIDAPI_DriverSteamTriton_HandleBatteryStatus.exit

HIDAPI_DriverSteamTriton_HandleBatteryStatus.exit: ; preds = %bb.ar, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.ar ]
  %i.jr = zext i8 %.val74 to i32
  call void @SDL_SendJoystickPowerInfo(ptr noundef nonnull %.161112, i32 noundef %.0.i, i32 noundef %i.jr) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.as:                                            ; preds = %bb.n, %bb.n
  %.not67 = icmp eq i32 %i.bz, 1
  br i1 %.not67, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val75 = load i8, ptr %i.bg, align 1
  switch i8 %.val75, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit [
    i8 2, label %bb.au
    i8 1, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.js = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.jt = load i8, ptr %i.js, align 8, !range !3, !noundef !4
  %.not.i.not.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.not.i, label %bb.av, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.js, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ju = call zeroext i1 @HIDAPI_JoystickConnected(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.aw:                                            ; preds = %bb.at
  %i.jv = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 8, !range !3, !noundef !4
  %.not.i3.i = icmp eq i8 %i.jw, 0
  br i1 %.not.i3.i, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.jv, align 8
  %i.jx = load i32, ptr %i.k, align 4
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %bb.ay, label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

bb.ay:                                            ; preds = %bb.ax
  %i.jz = load ptr, ptr %i.bh, align 8
  %i.ka = load i32, ptr %i.jz, align 4
  call void @HIDAPI_JoystickDisconnected(ptr noundef nonnull %0, i32 noundef %i.ka) #6
  br label %HIDAPI_DriverSteamTriton_SetControllerConnected.exit

HIDAPI_DriverSteamTriton_SetControllerConnected.exit: ; preds = %HIDAPI_DriverSteamTriton_SetControllerConnected.exit82, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit78, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %HIDAPI_DriverSteamTriton_HandleState.exit, %bb.s, %HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit, %bb.ag, %HIDAPI_DriverSteamTriton_HandleBatteryStatus.exit, %bb.aq, %bb.as, %bb.n
  %.5 = phi ptr [ %.161112, %bb.av ], [ %.161112, %bb.as ], [ %.161112, %bb.n ], [ %.2, %HIDAPI_DriverSteamTriton_HandleState.exit ], [ %.2, %bb.s ], [ %.3, %HIDAPI_DriverSteamTriton_HandleState_Timestamp.exit ], [ %.3, %bb.ag ], [ %.161112, %HIDAPI_DriverSteamTriton_HandleBatteryStatus.exit ], [ %.161112, %bb.aq ], [ null, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit78 ], [ %.161112, %bb.aw ], [ %.161112, %bb.ax ], [ %.161112, %bb.ay ], [ %.161112, %bb.au ], [ %.161112, %bb.at ], [ null, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.kb = load ptr, ptr %i.bc, align 8
  %i.kc = call i32 @SDL_hid_read_REAL(ptr noundef %i.kb, ptr noundef nonnull %i.h, i64 noundef 64) #6 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %.loopexit, label %bb.j

.loopexit:                                        ; preds = %HIDAPI_DriverSteamTriton_SetControllerConnected.exit, %.thread, %bb.k, %bb.l, %bb.m
  %i.ke = phi i1 [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.l ], [ true, %.thread ], [ true, %HIDAPI_DriverSteamTriton_SetControllerConnected.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  ret i1 %i.ke
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverSteamTriton_OpenJoystick(ptr nofree readnone captures(none) %0, ptr noundef initializes((68, 72), (96, 100), (112, 116)) %1) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 22, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 6, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.c, align 8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %1, i32 noundef 2, float noundef f0x43780410) #6
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef %1, i32 noundef 1, float noundef f0x43780410) #6
  tail call void @SDL_PrivateJoystickAddTouchpad(ptr noundef %1, i32 noundef 1) #6
  tail call void @SDL_PrivateJoystickAddTouchpad(ptr noundef %1, i32 noundef 1) #6
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @HIDAPI_DriverSteamTriton_RumbleJoystick(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i16 %3, ptr %i.e, align 2
  %i.f = tail call i64 @SDL_GetTicks_REAL() #6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 -128, ptr %i.a, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %2, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i16 %3, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call i32 @SDL_hid_write_REAL(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef 10) #6 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call ptr @SDL_GetError_REAL() #6
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 7, ptr noundef nonnull @.str.3, i32 noundef %i.p, ptr noundef %i.r) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 %i.q
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSteamTriton_RumbleJoystickTriggers(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i16 zeroext %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @HIDAPI_DriverSteamTriton_GetJoystickCapabilities(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret i32 16
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSteamTriton_SetJoystickLED(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_DriverSteamTriton_SendJoystickEffect(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = icmp eq i32 %3, 64
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @SDL_hid_send_feature_report_REAL(ptr noundef %i.c, ptr noundef %2, i64 noundef 64) #6
  %.not = icmp eq i32 %i.d, 64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0

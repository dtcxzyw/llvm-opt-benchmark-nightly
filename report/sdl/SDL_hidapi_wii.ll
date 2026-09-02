Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_wii?download=true
inline.NumInlined: 88
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@HandleButtonData:bb.a
  %i.se = fptosi float %i.sd to i16
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.sf = add nuw nsw i32 %i.ru, %i.rr            ; 2 uses
  %i.sg = icmp samesign ult i32 %i.sf, %i.rj
  br i1 %i.sg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.sh = trunc nuw nsw i32 %i.sf to i16          ; 2 uses
  %i.si = sub i16 %i.rq, %i.sh
  %i.sj = sub nuw nsw i16 %i.rg, %i.sh
  %i.sk = uitofp nneg i16 %i.sj to float
  %i.sl = uitofp i16 %i.si to float
  %i.sm = fdiv float %i.sk, %i.sl
  %i.sn = fmul float %i.sm, 3.276700e+04
  %i.so = fptosi float %i.sn to i16
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.0.i45.i = phi i16 [ %i.se, %bb.cz ], [ %i.so, %bb.db ], [ 0, %bb.da ] ; 2 uses
  %i.sp = icmp ne i16 %.0.i45.i, 0
  %i.sq = sext i1 %i.sp to i16
  %spec.select.i.i48 = xor i16 %.0.i45.i, %i.sq
  call void @SDL_SendJoystickAxis(i64 noundef %i.re, ptr noundef nonnull %1, i8 noundef zeroext 1, i16 noundef signext %spec.select.i.i48) #6
  %.pre55.i = load i64, ptr %i.oo, align 8
  br label %PostStickCalibrated.exit46.i

PostStickCalibrated.exit46.i:                     ; preds = %bb.dc, %bb.ct
  %i.sr = phi i64 [ %i.re, %bb.ct ], [ %.pre55.i, %bb.dc ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.st = zext nneg i8 %i.pr to i16               ; 9 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %i.sv = load i16, ptr %i.su, align 2            ; 2 uses
  %.not.i47.i = icmp eq i16 %i.sv, 0
  br i1 %.not.i47.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %PostStickCalibrated.exit46.i
  store i16 %i.st, ptr %i.su, align 2
  br label %PostStickCalibrated.exit50.i

bb.de:                                            ; preds = %PostStickCalibrated.exit46.i
  %i.sw = zext nneg i8 %i.pr to i32               ; 2 uses
  %i.sx = load i16, ptr %i.ss, align 2            ; 2 uses
  %i.sy = icmp ugt i16 %i.sx, %i.st
  br i1 %i.sy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i16 %i.st, ptr %i.ss, align 2
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sz = phi i16 [ %i.st, %bb.df ], [ %i.sx, %bb.de ]
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.tb = load i16, ptr %i.ta, align 4            ; 2 uses
  %i.tc = icmp ult i16 %i.tb, %i.st
  br i1 %i.tc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i16 %i.st, ptr %i.ta, align 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.td = phi i16 [ %i.st, %bb.dh ], [ %i.tb, %bb.dg ]
  %i.te = zext i16 %i.sv to i32                   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.tg = load i16, ptr %i.tf, align 8
  %i.th = zext i16 %i.tg to i32                   ; 2 uses
  %i.ti = sub nsw i32 %i.te, %i.th                ; 2 uses
  %i.tj = icmp sgt i32 %i.ti, %i.sw
  br i1 %i.tj, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.tk = trunc nuw i32 %i.ti to i16              ; 2 uses
  %i.tl = sub i16 %i.tk, %i.sz
  %i.tm = sub nuw i16 %i.tk, %i.st
  %i.tn = uitofp i16 %i.tm to float
  %i.to = uitofp i16 %i.tl to float
  %i.tp = fdiv float %i.tn, %i.to
  %i.tq = fmul float %i.tp, -3.276800e+04
  %i.tr = fptosi float %i.tq to i16
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di
  %i.ts = add nuw nsw i32 %i.th, %i.te            ; 2 uses
  %i.tt = icmp samesign ult i32 %i.ts, %i.sw
  br i1 %i.tt, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.tu = trunc nuw nsw i32 %i.ts to i16          ; 2 uses
  %i.tv = sub i16 %i.td, %i.tu
  %i.tw = sub nuw nsw i16 %i.st, %i.tu
  %i.tx = uitofp nneg i16 %i.tw to float
  %i.ty = uitofp i16 %i.tv to float
  %i.tz = fdiv float %i.tx, %i.ty
  %i.ua = fmul float %i.tz, 3.276700e+04
  %i.ub = fptosi float %i.ua to i16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %.0.i48.i = phi i16 [ %i.tr, %bb.dj ], [ %i.ub, %bb.dl ], [ 0, %bb.dk ]
  call void @SDL_SendJoystickAxis(i64 noundef %i.sr, ptr noundef nonnull %1, i8 noundef zeroext 2, i16 noundef signext %.0.i48.i) #6
  %.pre56.i = load i64, ptr %i.oo, align 8
  br label %PostStickCalibrated.exit50.i

PostStickCalibrated.exit50.i:                     ; preds = %bb.dm, %bb.dd
  %i.uc = phi i64 [ %i.sr, %bb.dd ], [ %.pre56.i, %bb.dm ]
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.ue = zext nneg i8 %i.ps to i16               ; 9 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 2            ; 2 uses
  %.not.i51.i = icmp eq i16 %i.ug, 0
  br i1 %.not.i51.i, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %PostStickCalibrated.exit50.i
  store i16 %i.ue, ptr %i.uf, align 2
  br label %HandleWiiRemoteButtonDataAsMainController.exit

bb.do:                                            ; preds = %PostStickCalibrated.exit50.i
  %i.uh = zext nneg i8 %i.ps to i32               ; 2 uses
  %i.ui = load i16, ptr %i.ud, align 2            ; 2 uses
  %i.uj = icmp ugt i16 %i.ui, %i.ue
  br i1 %i.uj, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i16 %i.ue, ptr %i.ud, align 2
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.uk = phi i16 [ %i.ue, %bb.dp ], [ %i.ui, %bb.do ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.um = load i16, ptr %i.ul, align 4            ; 2 uses
  %i.un = icmp ult i16 %i.um, %i.ue
  br i1 %i.un, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i16 %i.ue, ptr %i.ul, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.uo = phi i16 [ %i.ue, %bb.dr ], [ %i.um, %bb.dq ]
  %i.up = zext i16 %i.ug to i32                   ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ur = load i16, ptr %i.uq, align 8
  %i.us = zext i16 %i.ur to i32                   ; 2 uses
  %i.ut = sub nsw i32 %i.up, %i.us                ; 2 uses
  %i.uu = icmp sgt i32 %i.ut, %i.uh
  br i1 %i.uu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.uv = trunc nuw i32 %i.ut to i16              ; 2 uses
  %i.uw = sub i16 %i.uv, %i.uk
  %i.ux = sub nuw i16 %i.uv, %i.ue
  %i.uy = uitofp i16 %i.ux to float
  %i.uz = uitofp i16 %i.uw to float
  %i.va = fdiv float %i.uy, %i.uz
  %i.vb = fmul float %i.va, -3.276800e+04
  %i.vc = fptosi float %i.vb to i16
  br label %bb.dw

bb.du:                                            ; preds = %bb.ds
  %i.vd = add nuw nsw i32 %i.us, %i.up            ; 2 uses
  %i.ve = icmp samesign ult i32 %i.vd, %i.uh
  br i1 %i.ve, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.vf = trunc nuw nsw i32 %i.vd to i16          ; 2 uses
  %i.vg = sub i16 %i.uo, %i.vf
  %i.vh = sub nuw nsw i16 %i.ue, %i.vf
  %i.vi = uitofp nneg i16 %i.vh to float
  %i.vj = uitofp i16 %i.vg to float
  %i.vk = fdiv float %i.vi, %i.vj
  %i.vl = fmul float %i.vk, 3.276700e+04
  %i.vm = fptosi float %i.vl to i16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.0.i52.i = phi i16 [ %i.vc, %bb.dt ], [ %i.vm, %bb.dv ], [ 0, %bb.du ] ; 2 uses
  %i.vn = icmp ne i16 %.0.i52.i, 0
  %i.vo = sext i1 %i.vn to i16
  %spec.select.i53.i = xor i16 %.0.i52.i, %i.vo
  call void @SDL_SendJoystickAxis(i64 noundef %i.uc, ptr noundef nonnull %1, i8 noundef zeroext 3, i16 noundef signext %spec.select.i53.i) #6
  br label %HandleWiiRemoteButtonDataAsMainController.exit

HandleWiiRemoteButtonDataAsMainController.exit:   ; preds = %bb.dw, %bb.dn, %bb.cf, %bb.ce, %HandleNunchuckButtonData.exit, %HandleWiiRemoteButtonData.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.vq = load i8, ptr %i.vp, align 1, !range !5, !noundef !6
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.dx, label %HandleWiiRemoteAccelData.exit

bb.dx:                                            ; preds = %HandleWiiRemoteButtonDataAsMainController.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = zext i8 %i.vt to i16
  %i.vv = shl nuw nsw i16 %i.vu, 2
  %i.vw = load i8, ptr %2, align 1
  %i.vx = lshr i8 %i.vw, 5
  %i.vy = and i8 %i.vx, 3
  %i.vz = zext nneg i8 %i.vy to i16
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.wb = load i8, ptr %i.wa, align 1
  %3 = zext i8 %i.wb to i16
  %4 = shl nuw nsw i16 %3, 2
  %i.wc = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.wd = load i8, ptr %i.wc, align 1             ; 2 uses
  %5 = lshr i8 %i.wd, 4
  %6 = and i8 %5, 2
  %7 = zext nneg i8 %6 to i16
  %8 = add nsw i16 %4, -512
  %9 = or disjoint i16 %8, %7
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.wf = load i8, ptr %i.we, align 1
  %10 = zext i8 %i.wf to i16
  %11 = shl nuw nsw i16 %10, 2
  %12 = lshr i8 %i.wd, 5
  %13 = and i8 %12, 2
  %14 = zext nneg i8 %13 to i16
  %15 = or disjoint i16 %14, -512
  %16 = add nsw i16 %i.vv, -512
  %i.wg = add nsw i16 %15, %11
  %i.wh = or disjoint i16 %16, %i.vz
  %i.wi = insertelement <2 x i16> poison, i16 %i.wh, i64 0
  %i.wj = insertelement <2 x i16> %i.wi, i16 %i.wg, i64 1
  %i.wk = sitofp <2 x i16> %i.wj to <2 x float>
  %i.wl = fdiv nnan <2 x float> %i.wk, <float -1.000000e+02, float 1.000000e+02>
  %i.wm = fmul nnan <2 x float> %i.wl, splat (float 9.806650e+00)
  store <2 x float> %i.wm, ptr %i.a, align 8
  %i.wn = sitofp i16 %9 to float
  %i.wo = fdiv nnan float %i.wn, 1.000000e+02
  %i.wp = fmul nnan float %i.wo, 9.806650e+00
  %i.wq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.wp, ptr %i.wq, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ws = load i64, ptr %i.wr, align 8            ; 2 uses
  call void @SDL_SendJoystickSensor(i64 noundef %i.ws, ptr noundef nonnull %1, i32 noundef 1, i64 noundef %i.ws, ptr noundef nonnull %i.a, i32 noundef 3) #6
  br label %HandleWiiRemoteAccelData.exit

HandleWiiRemoteAccelData.exit:                    ; preds = %HandleWiiRemoteButtonDataAsMainController.exit, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %HandleWiiUProButtonData.exit

HandleWiiUProButtonData.exit:                     ; preds = %UpdatePowerLevelWiiU.exit.i, %bb.b, %bb.au, %HandleWiiRemoteAccelData.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PostPackedButtonData(i64 noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 2, 4) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.q
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 8 uses
  %i.c = load i8, ptr %i.a, align 1               ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = load i8, ptr %i.b, align 1
  %i.e = and i8 %i.d, 1
  %.not18 = icmp eq i8 %i.e, 0
  %.v = select i1 %.not18, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.c, i1 noundef zeroext %.v) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not.1 = icmp eq i8 %i.g, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.b, align 1
  %i.i = and i8 %i.h, 2
  %.not18.1 = icmp eq i8 %i.i, 0
  %.v.1 = select i1 %.not18.1, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.g, i1 noundef zeroext %.v.1) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.2 = icmp eq i8 %i.k, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.b, align 1
  %i.m = and i8 %i.l, 4
  %.not18.2 = icmp eq i8 %i.m, 0
  %.v.2 = select i1 %.not18.2, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.k, i1 noundef zeroext %.v.2) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not.3 = icmp eq i8 %i.o, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %i.b, align 1
  %i.q = and i8 %i.p, 8
  %.not18.3 = icmp eq i8 %i.q, 0
  %.v.3 = select i1 %.not18.3, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.o, i1 noundef zeroext %.v.3) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not.4 = icmp eq i8 %i.s, -1
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %i.b, align 1
  %i.u = and i8 %i.t, 16
  %.not18.4 = icmp eq i8 %i.u, 0
  %.v.4 = select i1 %.not18.4, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.s, i1 noundef zeroext %.v.4) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %.not.5 = icmp eq i8 %i.w, -1
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %i.b, align 1
  %i.y = and i8 %i.x, 32
  %.not18.5 = icmp eq i8 %i.y, 0
  %.v.5 = select i1 %.not18.5, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.w, i1 noundef zeroext %.v.5) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %.not.6 = icmp eq i8 %i.aa, -1
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i8, ptr %i.b, align 1
  %i.ac = and i8 %i.ab, 64
  %.not18.6 = icmp eq i8 %i.ac, 0
  %.v.6 = select i1 %.not18.6, i1 %6, i1 %5
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.aa, i1 noundef zeroext %.v.6) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not.7 = icmp eq i8 %i.ae, -1
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %i.b, align 1
  %.not18.730 = icmp slt i8 %i.af, 0
  %.v.7 = select i1 %.not18.730, i1 %5, i1 %6
  tail call void @SDL_SendJoystickButton(i64 noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %i.ae, i1 noundef zeroext %.v.7) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.r, label %.preheader, !llvm.loop !9

bb.r:                                             ; preds = %bb.q
  ret void
}

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #2

declare void @SDL_SendJoystickPowerInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare i32 @SDL_GetJoystickPlayerIndex_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @SDL_PlayerLEDHintChanged(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = tail call zeroext i1 @SDL_GetStringBoolean(ptr noundef %3, i1 noundef zeroext true) #6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %i.e = zext i1 %i.b to i8                       ; 2 uses
  %.not = icmp eq i8 %i.d, %i.e
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6 ; 3 uses
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4              ; 6 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp sgt i32 %i.i, 3
  %or.cond.i = or i1 %i.j, %i.k
  %i.l = or disjoint i8 %i.g, 16
  %.0.i = select i1 %or.cond.i, i8 %i.l, i8 %i.g  ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 1, label %bb.d
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.m = or disjoint i8 %.0.i, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i8 [ %i.m, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  switch i32 %i.i, label %bb.g [
    i32 2, label %bb.f
    i32 5, label %bb.f
  ]
end_hunk_0

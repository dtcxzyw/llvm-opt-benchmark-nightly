Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/truetype?download=true
inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@TT_RunIns:bb.a
  store i16 %i.rf, ptr %i.az, align 2, !tbaa !625
  %i.rg = load i64, ptr %i.hi, align 8, !tbaa !259
  %i.rh = sdiv i64 %i.rg, 4
  %i.ri = trunc i64 %i.rh to i16
  store i16 %i.ri, ptr %i.ev, align 8, !tbaa !626
  br label %Normalize.exit.i430

Normalize.exit.i430:                              ; preds = %bb.dj, %.Normalize.exit_crit_edge.i
  %i.rj = phi i16 [ %.pre.i434, %.Normalize.exit_crit_edge.i ], [ %i.rf, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.rk = icmp eq i16 %i.rj, 16384                ; 2 uses
  br i1 %i.rk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %Normalize.exit.i430
  %i.rl = load i16, ptr %i.es, align 2, !tbaa !228 ; 2 uses
  %i.rm = sext i16 %i.rl to i64                   ; 2 uses
  store i64 %i.rm, ptr %i.cs, align 8, !tbaa !229
  br label %bb.do

bb.dl:                                            ; preds = %Normalize.exit.i430
  %i.rn = load i16, ptr %i.ev, align 8, !tbaa !230 ; 2 uses
  %i.ro = icmp eq i16 %i.rn, 16384
  br i1 %i.ro, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.rp = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.rq = sext i16 %i.rp to i64                   ; 2 uses
  store i64 %i.rq, ptr %i.cs, align 8, !tbaa !229
  %.pre.i.i433 = load i16, ptr %i.es, align 2, !tbaa !228
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.rr = load i16, ptr %i.es, align 2, !tbaa !228 ; 2 uses
  %i.rs = sext i16 %i.rr to i64
  %i.rt = sext i16 %i.rj to i64
  %i.ru = mul nsw i64 %i.rs, %i.rt
  %i.rv = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.rw = sext i16 %i.rv to i64
  %i.rx = sext i16 %i.rn to i64
  %i.ry = mul nsw i64 %i.rw, %i.rx
  %i.rz = add nsw i64 %i.ry, %i.ru
  %i.sa = ashr i64 %i.rz, 14                      ; 2 uses
  store i64 %i.sa, ptr %i.cs, align 8, !tbaa !229
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dk
  %i.sb = phi i64 [ %i.rq, %bb.dm ], [ %i.sa, %bb.dn ], [ %i.rm, %bb.dk ] ; 2 uses
  %i.sc = phi i16 [ %.pre.i.i433, %bb.dm ], [ %i.rr, %bb.dn ], [ %i.rl, %bb.dk ]
  %i.sd = icmp eq i16 %i.sc, 16384
  br i1 %i.sd, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.se = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.sf = icmp eq i16 %i.se, 16384
  %Project_y.Project1239 = select i1 %i.sf, ptr @Project_y, ptr @Project
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %Project.sink1227 = phi ptr [ @Project_x, %bb.do ], [ %Project_y.Project1239, %bb.dp ]
  store ptr %Project.sink1227, ptr %i.ew, align 8, !tbaa !232
  %i.sg = load i16, ptr %i.ci, align 2, !tbaa !233
  %i.sh = icmp eq i16 %i.sg, 16384
  br i1 %i.sh, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.si = load i16, ptr %i.ep, align 8, !tbaa !235
  %i.sj = icmp eq i16 %i.si, 16384
  %Project_y.Dual_Project1240 = select i1 %i.sj, ptr @Project_y, ptr @Dual_Project
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %Dual_Project.sink1228 = phi ptr [ @Project_x, %bb.dq ], [ %Project_y.Dual_Project1240, %bb.dr ]
  store ptr %Dual_Project.sink1228, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.cq, align 8, !tbaa !179
  %i.sk = icmp eq i64 %i.sb, 16384
  br i1 %i.sk, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.rk, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store <2 x ptr> <ptr @Direct_Move_X, ptr @Direct_Move_Orig_X>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVFS.exit

bb.dv:                                            ; preds = %bb.dt
  %i.sl = load i16, ptr %i.ev, align 8, !tbaa !230
  %i.sm = icmp eq i16 %i.sl, 16384
  br i1 %i.sm, label %bb.dw, label %Ins_SFVFS.exit

bb.dw:                                            ; preds = %bb.dv
  store <2 x ptr> <ptr @Direct_Move_Y, ptr @Direct_Move_Orig_Y>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVFS.exit

bb.dx:                                            ; preds = %bb.ds
  %i.sn = add nsw i64 %i.sb, 1023
  %i.so = icmp ult i64 %i.sn, 2047
  br i1 %i.so, label %bb.dy, label %Ins_SFVFS.exit

bb.dy:                                            ; preds = %bb.dx
  store i64 16384, ptr %i.cs, align 8, !tbaa !229
  br label %Ins_SFVFS.exit

Ins_SFVFS.exit:                                   ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy
  store i64 0, ptr %i.an, align 8, !tbaa !222
  br label %Ins_SPVTL.exitthread-pre-split

bb.dz:                                            ; preds = %bb.ao
  %i.sp = load <2 x i16>, ptr %i.es, align 2, !tbaa !120
  %i.sq = sext <2 x i16> %i.sp to <2 x i64>
  store <2 x i64> %i.sq, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.ea:                                            ; preds = %bb.ao
  %i.sr = load <2 x i16>, ptr %i.az, align 2, !tbaa !120
  %i.ss = sext <2 x i16> %i.sr to <2 x i64>
  store <2 x i64> %i.ss, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.eb:                                            ; preds = %bb.ao
  %i.st = load i32, ptr %i.es, align 2            ; 3 uses
  store i32 %i.st, ptr %i.az, align 2
  %i.su = trunc i32 %i.st to i16                  ; 2 uses
  %i.sv = icmp eq i16 %i.su, 16384                ; 2 uses
  %i.sw = lshr i32 %i.st, 16                      ; 3 uses
  %i.sx = zext nneg i32 %i.sw to i64
  br i1 %i.sv, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sy = icmp eq i32 %i.sw, 16384
  br i1 %i.sy, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sz = sext i16 %i.su to i64                   ; 2 uses
  %i.ta = mul nsw i64 %i.sz, %i.sz
  %sext.i435 = shl nuw i64 %i.sx, 48
  %i.tb = ashr exact i64 %sext.i435, 48           ; 2 uses
  %i.tc = mul nsw i64 %i.tb, %i.tb
  %i.td = add nuw nsw i64 %i.tc, %i.ta
  %i.te = lshr i64 %i.td, 14
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %.sink.i436 = phi i64 [ %i.te, %bb.ed ], [ 16384, %bb.eb ], [ 16384, %bb.ec ] ; 3 uses
  %Project.sink.i = phi ptr [ @Project, %bb.ed ], [ @Project_x, %bb.eb ], [ @Project_y, %bb.ec ]
  store i64 %.sink.i436, ptr %i.cs, align 8, !tbaa !229
  store ptr %Project.sink.i, ptr %i.ew, align 8, !tbaa !232
  %i.tf = load i16, ptr %i.ci, align 2, !tbaa !233
  %i.tg = icmp eq i16 %i.tf, 16384
  br i1 %i.tg, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.th = load i16, ptr %i.ep, align 8, !tbaa !235
  %i.ti = icmp eq i16 %i.th, 16384
  %Project_y.Dual_Project1241 = select i1 %i.ti, ptr @Project_y, ptr @Dual_Project
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %Dual_Project.sink1229 = phi ptr [ @Project_x, %bb.ee ], [ %Project_y.Dual_Project1241, %bb.ef ]
  store ptr %Dual_Project.sink1229, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.cq, align 8, !tbaa !179
  %i.tj = icmp eq i64 %.sink.i436, 16384
  br i1 %i.tj, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.sv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store <2 x ptr> <ptr @Direct_Move_X, ptr @Direct_Move_Orig_X>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVTPV.exit

bb.ej:                                            ; preds = %bb.eh
  %i.tk = icmp eq i32 %i.sw, 16384
  br i1 %i.tk, label %bb.ek, label %Ins_SFVTPV.exit

bb.ek:                                            ; preds = %bb.ej
  store <2 x ptr> <ptr @Direct_Move_Y, ptr @Direct_Move_Orig_Y>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVTPV.exit

bb.el:                                            ; preds = %bb.eg
  %i.tl = icmp samesign ult i64 %.sink.i436, 1024
  br i1 %i.tl, label %bb.em, label %Ins_SFVTPV.exit

bb.em:                                            ; preds = %bb.el
  store i64 16384, ptr %i.cs, align 8, !tbaa !229
  br label %Ins_SFVTPV.exit

Ins_SFVTPV.exit:                                  ; preds = %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em
  store i64 0, ptr %i.an, align 8, !tbaa !222
  br label %Ins_SPVTL.exitthread-pre-split

bb.en:                                            ; preds = %bb.ao
  %i.tm = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !176 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !176 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !176 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !176 ; 2 uses
  %i.tv = load i16, ptr %i.fn, align 4, !tbaa !260 ; 2 uses
  %11 = trunc i64 %i.ts to i16
  %.not.i = icmp ugt i16 %i.tv, %11
  %12 = trunc i64 %i.tu to i16
  %.not95.i = icmp ugt i16 %i.tv, %12
  %or.cond.i = select i1 %.not.i, i1 %.not95.i, i1 false
  br i1 %or.cond.i, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.tw = load i16, ptr %i.ek, align 4, !tbaa !257 ; 2 uses
  %13 = trunc i64 %i.to to i16
  %.not96.i = icmp ugt i16 %i.tw, %13
  %14 = trunc i64 %i.tq to i16
  %.not97.i = icmp ugt i16 %i.tw, %14
  %or.cond102.i = select i1 %.not96.i, i1 %.not97.i, i1 false
  br i1 %or.cond102.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.tx = load i16, ptr %i.el, align 4, !tbaa !623
  %15 = trunc i64 %i.tm to i16
  %.not98.i = icmp ugt i16 %i.tx, %15
  br i1 %.not98.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.ty = load i8, ptr %i.do, align 1, !tbaa !187
  %.not99.i = icmp eq i8 %i.ty, 0
  br i1 %.not99.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.er:                                            ; preds = %bb.ep
  %i.tz = load ptr, ptr %i.fo, align 8, !tbaa !261 ; 2 uses
  %i.ua = and i64 %i.tu, 65535                    ; 2 uses
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %i.ua ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !203
  %i.ud = and i64 %i.ts, 65535                    ; 2 uses
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %i.ud ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !203 ; 2 uses
  %i.ug = sub i64 %i.uc, %i.uf                    ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !259
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !259 ; 2 uses
  %i.ul = sub i64 %i.ui, %i.uk                    ; 2 uses
  %i.um = load ptr, ptr %i.eq, align 8, !tbaa !258 ; 2 uses
  %i.un = and i64 %i.tq, 65535                    ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %i.um, i64 %i.un ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !203
  %i.uq = and i64 %i.to, 65535                    ; 3 uses
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.um, i64 %i.uq ; 2 uses
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !203 ; 2 uses
  %i.ut = sub i64 %i.up, %i.us                    ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !259
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !259 ; 2 uses
  %i.uy = sub i64 %i.uv, %i.ux                    ; 3 uses
  %i.uz = sub i64 0, %i.ul                        ; 2 uses
  %i.va = call i64 @FT_MulDiv(i64 noundef %i.ut, i64 noundef %i.uz, i64 noundef 64) #22
  %i.vb = call i64 @FT_MulDiv(i64 noundef %i.uy, i64 noundef %i.ug, i64 noundef 64) #22
  %i.vc = add i64 %i.vb, %i.va                    ; 3 uses
  %i.vd = call i64 @FT_MulDiv(i64 noundef %i.ut, i64 noundef %i.ug, i64 noundef 64) #22
  %i.ve = call i64 @FT_MulDiv(i64 noundef %i.uy, i64 noundef %i.ul, i64 noundef 64) #22
  %i.vf = add i64 %i.ve, %i.vd
  %i.vg = call i64 @llvm.abs.i64(i64 %i.vc, i1 true)
  %i.vh = mul i64 %i.vg, 19
  %i.vi = call i64 @llvm.abs.i64(i64 %i.vf, i1 true)
  %i.vj = icmp sgt i64 %i.vh, %i.vi
  br i1 %i.vj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.vk = sub i64 %i.uk, %i.ux
  %i.vl = sub i64 %i.uf, %i.us
  %i.vm = call i64 @FT_MulDiv(i64 noundef %i.vl, i64 noundef %i.uz, i64 noundef 64) #22
  %i.vn = call i64 @FT_MulDiv(i64 noundef %i.vk, i64 noundef %i.ug, i64 noundef 64) #22
  %i.vo = add i64 %i.vn, %i.vm                    ; 2 uses
  %i.vp = call i64 @FT_MulDiv(i64 noundef %i.vo, i64 noundef %i.ut, i64 noundef %i.vc) #22
  %i.vq = call i64 @FT_MulDiv(i64 noundef %i.vo, i64 noundef %i.uy, i64 noundef %i.vc) #22
  %i.vr = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.uq ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !203
  %i.vu = add i64 %i.vt, %i.vp
  %i.vv = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.vw = and i64 %i.tm, 65535                    ; 2 uses
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vv, i64 %i.vw ; 2 uses
  store i64 %i.vu, ptr %i.vx, align 8, !tbaa !203
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !259
  %i.wa = add i64 %i.vz, %i.vq
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.wb = load ptr, ptr %i.eq, align 8, !tbaa !258 ; 2 uses
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.uq
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.un
  %i.we = load ptr, ptr %i.fo, align 8, !tbaa !261 ; 2 uses
  %i.wf = getelementptr inbounds nuw [16 x i8], ptr %i.we, i64 %i.ud
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.we, i64 %i.ua
  %i.wh = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.wi = and i64 %i.tm, 65535                    ; 2 uses
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.wi ; 2 uses
  %i.wk = load <2 x i64>, ptr %i.wc, align 8, !tbaa !176
  %i.wl = load <2 x i64>, ptr %i.wd, align 8, !tbaa !176
  %i.wm = load <2 x i64>, ptr %i.wf, align 8, !tbaa !176
  %i.wn = load <2 x i64>, ptr %i.wg, align 8, !tbaa !176
  %i.wo = add <2 x i64> %i.wl, %i.wk
  %i.wp = add <2 x i64> %i.wo, %i.wm
  %i.wq = add <2 x i64> %i.wp, %i.wn
  %i.wr = sdiv <2 x i64> %i.wq, splat (i64 4)     ; 2 uses
  %i.ws = extractelement <2 x i64> %i.wr, i64 0
  store i64 %i.ws, ptr %i.wj, align 8, !tbaa !203
  %i.wt = extractelement <2 x i64> %i.wr, i64 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sink104.i = phi ptr [ %i.wj, %bb.et ], [ %i.vx, %bb.es ]
  %.sink.i438 = phi i64 [ %i.wt, %bb.et ], [ %i.wa, %bb.es ]
  %.pre-phi.i = phi i64 [ %i.wi, %bb.et ], [ %i.vw, %bb.es ]
  %i.wu = getelementptr inbounds nuw i8, ptr %.sink104.i, i64 8
  store i64 %.sink.i438, ptr %i.wu, align 8, !tbaa !259
  %i.wv = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.pre-phi.i ; 2 uses
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !177
  %i.wy = or i8 %i.wx, 24
  store i8 %i.wy, ptr %i.ww, align 1, !tbaa !177
  br label %Ins_SPVTL.exitthread-pre-split

bb.ev:                                            ; preds = %bb.ao
  %.val377 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.wz = trunc i64 %.val377 to i16
  store i16 %i.wz, ptr %i.gf, align 8, !tbaa !262
  br label %Ins_SPVTL.exitthread-pre-split

bb.ew:                                            ; preds = %bb.ao
  %.val378 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xa = trunc i64 %.val378 to i16
  store i16 %i.xa, ptr %i.gg, align 2, !tbaa !263
  br label %Ins_SPVTL.exitthread-pre-split

bb.ex:                                            ; preds = %bb.ao
  %.val379 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xb = trunc i64 %.val379 to i16
  store i16 %i.xb, ptr %i.gi, align 4, !tbaa !264
  br label %Ins_SPVTL.exitthread-pre-split

bb.ey:                                            ; preds = %bb.ao
  %i.xc = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xd = trunc i64 %i.xc to i32
  switch i32 %i.xd, label %bb.fa [
    i32 0, label %bb.fb
    i32 1, label %bb.ez
  ]

bb.ez:                                            ; preds = %bb.ey
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.xe = load i8, ptr %i.do, align 1, !tbaa !187
  %.not.i439 = icmp eq i8 %i.xe, 0
  br i1 %.not.i439, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %.sink10.i = phi i64 [ 264, %bb.ez ], [ 328, %bb.ey ]
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gd, ptr noundef nonnull align 8 dereferenceable(64) %i.xf, i64 64, i1 false)
  %i.xg = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xh = trunc i64 %i.xg to i16
  store i16 %i.xh, ptr %i.fp, align 4, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.fc:                                            ; preds = %bb.ao
  %i.xi = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xj = trunc i64 %i.xi to i32
  switch i32 %i.xj, label %bb.fe [
    i32 0, label %bb.ff
    i32 1, label %bb.fd
  ]

bb.fd:                                            ; preds = %bb.fc
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.xk = load i8, ptr %i.do, align 1, !tbaa !187
  %.not.i441 = icmp eq i8 %i.xk, 0
  br i1 %.not.i441, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ff:                                            ; preds = %bb.fd, %bb.fc
  %.sink10.i440 = phi i64 [ 264, %bb.fd ], [ 328, %bb.fc ]
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gh, ptr noundef nonnull align 8 dereferenceable(64) %i.xl, i64 64, i1 false)
  %i.xm = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xn = trunc i64 %i.xm to i16
  store i16 %i.xn, ptr %i.fq, align 2, !tbaa !266
  br label %Ins_SPVTL.exitthread-pre-split

bb.fg:                                            ; preds = %bb.ao
  %i.xo = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xp = trunc i64 %i.xo to i32
  switch i32 %i.xp, label %bb.fi [
    i32 0, label %bb.fj
    i32 1, label %bb.fh
  ]

bb.fh:                                            ; preds = %bb.fg
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.xq = load i8, ptr %i.do, align 1, !tbaa !187
  %.not.i443 = icmp eq i8 %i.xq, 0
  br i1 %.not.i443, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.fj:                                            ; preds = %bb.fh, %bb.fg
  %.sink10.i442 = phi i64 [ 264, %bb.fh ], [ 328, %bb.fg ]
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10.i442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %i.xr, i64 64, i1 false)
  %i.xs = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xt = trunc i64 %i.xs to i16
  store i16 %i.xt, ptr %i.fx, align 8, !tbaa !267
  br label %Ins_SPVTL.exitthread-pre-split

bb.fk:                                            ; preds = %bb.ao
  %i.xu = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xv = trunc i64 %i.xu to i32
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a
  store i8 %i.yi, ptr %i.dj, align 8, !tbaa !244
  %i.yj = zext i8 %i.yi to i64
  %i.yk = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !177
  %i.ym = sext i8 %i.yl to i32                    ; 3 uses
  store i32 %i.ym, ptr %i.dk, align 4, !tbaa !622
  %i.yn = and i8 %i.yi, -2
  %i.yo = icmp eq i8 %i.yn, 64
  br i1 %i.yo, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.yp = add nsw i64 %i.yf, 1                    ; 2 uses
  %.not.i.i445 = icmp slt i64 %i.yp, %i.yb
  br i1 %.not.i.i445, label %bb.fx, label %.loopexit.sink.split

bb.fx:                                            ; preds = %bb.fw
  %i.yq = getelementptr inbounds i8, ptr %i.ho, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !177
  %i.ys = zext i8 %i.yr to i32
  %i.yt = mul nsw i32 %i.ys, %i.ym
  %i.yu = sub nsw i32 2, %i.yt                    ; 2 uses
  store i32 %i.yu, ptr %i.dk, align 4, !tbaa !622
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %i.yv = phi i32 [ %i.yu, %bb.fx ], [ %i.ym, %bb.fv ] ; 2 uses
  %i.yw = sext i32 %i.yv to i64
  %i.yx = add nsw i64 %i.yf, %i.yw
  %.not23.i.i = icmp sgt i64 %i.yx, %i.yb
  br i1 %.not23.i.i, label %.loopexit.sink.split, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  switch i8 %i.yi, label %bb.gc [
    i8 88, label %bb.ga
    i8 89, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.yy = add nsw i32 %.0.i, 1
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %i.yz = add nsw i32 %.0.i, -1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %.1.i = phi i32 [ %.0.i, %bb.fz ], [ %i.yy, %bb.ga ], [ %i.yz, %bb.gb ] ; 2 uses
  %.not4.i = icmp eq i32 %.1.i, 0
  br i1 %.not4.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.fu, !llvm.loop !559

bb.gd:                                            ; preds = %bb.ao
  %i.za = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.zb = or i64 %i.za, %i.iv
  %or.cond = icmp eq i64 %i.zb, 0
  br i1 %or.cond, label %.sink.split.i446, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zc = load i64, ptr %i.di, align 8, !tbaa !241
  %i.zd = add i64 %i.zc, %i.za                    ; 3 uses
  store i64 %i.zd, ptr %i.di, align 8, !tbaa !241
  %i.ze = icmp slt i64 %i.zd, 0
  br i1 %i.ze, label %.sink.split.i446, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.zf = load i32, ptr %i.dw, align 8, !tbaa !270 ; 2 uses
  %i.zg = icmp sgt i32 %i.zf, 0
  br i1 %i.zg, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.zh = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.zi = zext nneg i32 %i.zf to i64
  %i.zj = getelementptr [32 x i8], ptr %i.zh, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 -8
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !272
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !628
  %i.zo = icmp sgt i64 %i.zd, %i.zn
  br i1 %i.zo, label %.sink.split.i446, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  %i.zp = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.zq = icmp slt i64 %i.zp, 0
  br i1 %i.zq, label %bb.gi, label %Ins_SPVTL.exitthread-pre-split

bb.gi:                                            ; preds = %bb.gh
  %i.zr = load i64, ptr %i.x, align 8, !tbaa !614
  %i.zs = add i64 %i.zr, 1                        ; 2 uses
  store i64 %i.zs, ptr %i.x, align 8, !tbaa !614
  %i.zt = load i64, ptr %i.am, align 8, !tbaa !616
  %i.zu = icmp ugt i64 %i.zs, %i.zt
  br i1 %i.zu, label %.sink.split.i446, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i446:                                 ; preds = %bb.gd, %bb.gi, %bb.gg, %bb.ge
  %.sink.i447 = phi i32 [ 132, %bb.ge ], [ 132, %bb.gd ], [ 132, %bb.gg ], [ 139, %bb.gi ] ; 2 uses
  store i32 %.sink.i447, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit

bb.gj:                                            ; preds = %bb.ao
  %.val382 = load i64, ptr %i.jk, align 8, !tbaa !176
  store i64 %.val382, ptr %i.ge, align 8, !tbaa !274
  br label %Ins_SPVTL.exitthread-pre-split

bb.gk:                                            ; preds = %bb.ao
  %.val383 = load i64, ptr %i.jk, align 8, !tbaa !176
  store i64 %.val383, ptr %i.hg, align 8, !tbaa !275
  br label %Ins_SPVTL.exitthread-pre-split

bb.gl:                                            ; preds = %bb.ao
  %.val384 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.zv = load i64, ptr %i.fi, align 8, !tbaa !629
  %sext.i448 = shl i64 %.val384, 32
  %i.zw = ashr exact i64 %sext.i448, 32
  %sext1.i = shl i64 %i.zv, 32
  %i.zx = ashr exact i64 %sext1.i, 32
  %i.zy = mul nsw i64 %i.zx, %i.zw                ; 2 uses
  %i.zz = ashr i64 %i.zy, 63
  %i.aaa = add nsw i64 %i.zy, 32768
  %i.aab = add nsw i64 %i.aaa, %i.zz
  %i.aac = shl i64 %i.aab, 16
  %i.aad = ashr i64 %i.aac, 32
  store i64 %i.aad, ptr %i.hf, align 8, !tbaa !276
  br label %Ins_SPVTL.exitthread-pre-split

bb.gm:                                            ; preds = %bb.ao
  %i.aae = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %i.aae, ptr %i.aaf, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.gn:                                            ; preds = %bb.ao
  store i64 0, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.go:                                            ; preds = %bb.ao
  %i.aag = load <2 x i64>, ptr %i.jk, align 8, !tbaa !176
  %i.aah = shufflevector <2 x i64> %i.aag, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aah, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.gp:                                            ; preds = %bb.ao
  %.val385 = load i64, ptr %i.dm, align 8, !tbaa !245
  store i64 %.val385, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.gq:                                            ; preds = %bb.ao
  %i.aai = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.aaj = icmp slt i64 %i.aai, 1
  %i.aak = icmp sgt i64 %i.aai, %i.iv
  %or.cond796 = or i1 %i.aaj, %i.aak
  br i1 %or.cond796, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.aal = load i8, ptr %i.do, align 1, !tbaa !187
  %.not.i449 = icmp eq i8 %i.aal, 0
  br i1 %.not.i449, label %Ins_CINDEX.exit, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_CINDEX.exit

bb.gt:                                            ; preds = %bb.gq
  %i.aam = sub nuw nsw i64 %i.iv, %i.aai
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.aam
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !176
  br label %Ins_CINDEX.exit

Ins_CINDEX.exit:                                  ; preds = %bb.gr, %bb.gs, %bb.gt
  %storemerge.i = phi i64 [ %i.aao, %bb.gt ], [ 0, %bb.gs ], [ 0, %bb.gr ]
  store i64 %storemerge.i, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.gu:                                            ; preds = %bb.ao
  %.val386 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 4 uses
  %i.aap = icmp slt i64 %.val386, 1
  %i.aaq = icmp sgt i64 %.val386, %i.iv
  %or.cond797 = or i1 %i.aap, %i.aaq
  br i1 %or.cond797, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.aar = load i8, ptr %i.do, align 1, !tbaa !187
  %.not.i450 = icmp eq i8 %i.aar, 0
  br i1 %.not.i450, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.gw:                                            ; preds = %bb.gu
  %i.aas = sub nuw nsw i64 %i.iv, %.val386
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.aas ; 3 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !176
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aaw = shl i64 %.val386, 3
  %i.aax = add i64 %i.aaw, -8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aat, ptr nonnull align 8 %i.aav, i64 %i.aax, i1 false)
  %i.aay = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.aaz = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.aba = getelementptr [8 x i8], ptr %i.aay, i64 %i.aaz
  %i.abb = getelementptr i8, ptr %i.aba, i64 -8
  store i64 %i.aau, ptr %i.abb, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.gx:                                            ; preds = %bb.ao
  %.val387 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.jk, i64 8
  %.val388 = load i64, ptr %i.abc, align 8, !tbaa !176 ; 2 uses
  %i.abd = trunc i64 %.val387 to i16              ; 2 uses
  %i.abe = trunc i64 %.val388 to i16              ; 2 uses
  %i.abf = load i16, ptr %i.ek, align 4, !tbaa !257
  %.not.i451 = icmp ugt i16 %i.abf, %i.abd
  br i1 %.not.i451, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.abg = load i16, ptr %i.fn, align 4, !tbaa !260
  %.not28.i = icmp ugt i16 %i.abg, %i.abe
  br i1 %.not28.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.abh = load i8, ptr %i.do, align 1, !tbaa !187
  %.not29.i = icmp eq i8 %i.abh, 0
  br i1 %.not29.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ha:                                            ; preds = %bb.gy
  %i.abi = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.abj = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.abk = and i64 %.val388, 65535
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.abj, i64 %i.abk ; 2 uses
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !203
  %i.abn = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.abo = and i64 %.val387, 65535
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.abn, i64 %i.abo ; 2 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !203
  %i.abr = sub i64 %i.abm, %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !259
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !259
  %i.abw = sub i64 %i.abt, %i.abv
  %i.abx = call i64 %i.abi(ptr noundef nonnull %0, i64 noundef %i.abr, i64 noundef %i.abw) #22, !inline_history !560
  %i.aby = sdiv i64 %i.abx, 2                     ; 2 uses
  %i.abz = load ptr, ptr %i.cq, align 8, !tbaa !236
  call void %i.abz(ptr noundef nonnull %0, ptr noundef nonnull %i.gh, i16 noundef zeroext %i.abd, i64 noundef %i.aby) #22, !inline_history !560
  %i.aca = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.acb = sub nsw i64 0, %i.aby
  call void %i.aca(ptr noundef nonnull %0, ptr noundef nonnull %i.gd, i16 noundef zeroext %i.abe, i64 noundef %i.acb) #22, !inline_history !560
  br label %Ins_SPVTL.exitthread-pre-split

bb.hb:                                            ; preds = %bb.ao
  %i.acc = load ptr, ptr %i.du, align 8, !tbaa !277 ; 4 uses
  %.not.i452 = icmp eq ptr %i.acc, null
  br i1 %.not.i452, label %._crit_edge.i453, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.acd = load i32, ptr %i.dv, align 8, !tbaa !278 ; 2 uses
  %i.ace = zext i32 %i.acd to i64
  %.idx.i = shl nuw nsw i64 %i.ace, 5
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 %.idx.i
  %.not41.i = icmp eq i32 %i.acd, 0
  br i1 %.not41.i, label %._crit_edge.i453, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.hc, %bb.hm
  %.032.i = phi ptr [ %i.adj, %bb.hm ], [ %i.acc, %bb.hc ] ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.ach = load i32, ptr %i.acg, align 8, !tbaa !279
  %i.aci = and i32 %i.ach, 255
  %i.acj = icmp eq i32 %i.aci, 40
  br i1 %i.acj, label %bb.hd, label %bb.hm

bb.hd:                                            ; preds = %.lr.ph.i
  %i.ack = getelementptr inbounds nuw i8, ptr %.032.i, i64 28
  %i.acl = load i8, ptr %i.ack, align 4, !tbaa !280
  %.not29.i454 = icmp eq i8 %i.acl, 0
  br i1 %.not29.i454, label %bb.hm, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acm = load i32, ptr %i.dw, align 8, !tbaa !270 ; 3 uses
  %i.acn = load i32, ptr %i.dx, align 4, !tbaa !169
  %.not30.i = icmp slt i32 %i.acm, %i.acn
  br i1 %.not30.i, label %bb.hf, label %.loopexit.sink.split

bb.hf:                                            ; preds = %bb.he
  %i.aco = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.acp = add nsw i32 %i.acm, 1
  store i32 %i.acp, ptr %i.dw, align 8, !tbaa !270
  %i.acq = sext i32 %i.acm to i64
  %i.acr = getelementptr inbounds [32 x i8], ptr %i.aco, i64 %i.acq ; 4 uses
  %i.acs = load i32, ptr %i.aw, align 4, !tbaa !225
  store i32 %i.acs, ptr %i.acr, align 8, !tbaa !281
  %i.act = load i64, ptr %i.di, align 8, !tbaa !241
  %i.acu = add nsw i64 %i.act, 1
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  store i64 %i.acu, ptr %i.acv, align 8, !tbaa !282
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  store i64 1, ptr %i.acw, align 8, !tbaa !283
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  store ptr %.032.i, ptr %i.acx, align 8, !tbaa !272
  %i.acy = load i32, ptr %.032.i, align 8, !tbaa !284 ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !285 ; 2 uses
  %i.adb = add i32 %i.acy, -4
  %or.cond.i.i455 = icmp ult i32 %i.adb, -3
  br i1 %or.cond.i.i455, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i32 132, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i

bb.hh:                                            ; preds = %bb.hf
  %i.adc = zext nneg i32 %i.acy to i64
  %i.add = getelementptr [16 x i8], ptr %0, i64 %i.adc ; 2 uses
  %i.ade = getelementptr i8, ptr %i.add, i64 776
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !287 ; 2 uses
  %.not.i.i456 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i456, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i32 138, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i

bb.hj:                                            ; preds = %bb.hh
  %i.adg = getelementptr i8, ptr %i.add, i64 784
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !288 ; 2 uses
  %i.adi = icmp sgt i64 %i.ada, %i.adh
  br i1 %i.adi, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store i32 131, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i

bb.hl:                                            ; preds = %bb.hj
  store ptr %i.adf, ptr %i.dh, align 8, !tbaa !243
  store i64 %i.adh, ptr %i.dl, align 8, !tbaa !242
  store i64 %i.ada, ptr %i.di, align 8, !tbaa !241
  store i32 %i.acy, ptr %i.aw, align 4, !tbaa !225
  br label %Ins_Goto_CodeRange.exit.i

Ins_Goto_CodeRange.exit.i:                        ; preds = %bb.hl, %bb.hk, %bb.hi, %bb.hg
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  br label %Ins_SPVTL.exitthread-pre-split

bb.hm:                                            ; preds = %bb.hd, %.lr.ph.i
  %i.adj = getelementptr inbounds nuw i8, ptr %.032.i, i64 32 ; 2 uses
  %i.adk = icmp ult ptr %i.adj, %i.acf
  br i1 %i.adk, label %.lr.ph.i, label %._crit_edge.i453, !llvm.loop !0

._crit_edge.i453:                                 ; preds = %bb.hm, %bb.hc, %bb.hb
  store i32 128, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit.thread788

bb.hn:                                            ; preds = %bb.ao
  %.val389 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.adl = load i16, ptr %i.fn, align 4, !tbaa !260
  %16 = trunc i64 %.val389 to i16
  %.not.i457 = icmp ugt i16 %i.adl, %16
  br i1 %.not.i457, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.adm = load i8, ptr %i.do, align 1, !tbaa !187
  %.not13.i = icmp eq i8 %i.adm, 0
  br i1 %.not13.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.hp:                                            ; preds = %bb.hn
  %i.adn = load i16, ptr %i.az, align 2, !tbaa !227
  %.not11.i = icmp eq i16 %i.adn, 0
  %spec.select.i458 = select i1 %.not11.i, i8 -1, i8 -9 ; 2 uses
  %i.ado = load i16, ptr %i.ev, align 8, !tbaa !230
  %.not12.i = icmp eq i16 %i.ado, 0
  %i.adp = and i8 %spec.select.i458, -17
  %.1.i459 = select i1 %.not12.i, i8 %spec.select.i458, i8 %i.adp
  %i.adq = load ptr, ptr %i.he, align 8, !tbaa !289
  %i.adr = and i64 %.val389, 65535
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adr ; 2 uses
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !177
  %i.adu = and i8 %.1.i459, %i.adt
  store i8 %i.adu, ptr %i.ads, align 1, !tbaa !177
  br label %Ins_SPVTL.exitthread-pre-split

bb.hq:                                            ; preds = %bb.ao
  %i.adv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !176 ; 4 uses
  %i.adx = load i32, ptr %i.hd, align 8, !tbaa !630
  %i.ady = add i32 %i.adx, 1                      ; 2 uses
  %i.adz = zext i32 %i.ady to i64
  %.not.i460 = icmp ult i64 %i.adw, %i.adz
  br i1 %.not.i460, label %bb.hr, label %.sink.split.i461

bb.hr:                                            ; preds = %bb.hq
  %i.aea = load ptr, ptr %i.ha, align 8, !tbaa !290 ; 6 uses
  %.not52.i = icmp eq ptr %i.aea, null
  %i.aeb = load i32, ptr %i.hb, align 8, !tbaa !291 ; 2 uses
  %.not53.i = icmp eq i32 %i.ady, %i.aeb
  br i1 %.not53.i, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aec = getelementptr inbounds nuw [32 x i8], ptr %i.aea, i64 %i.adw ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  %i.aee = load i32, ptr %i.aed, align 8, !tbaa !279
  %i.aef = zext i32 %i.aee to i64
  %.not54.i = icmp eq i64 %i.adw, %i.aef
  br i1 %.not54.i, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.aeg = zext i32 %i.aeb to i64
  %i.aeh = getelementptr inbounds nuw [32 x i8], ptr %i.aea, i64 %i.aeg
  %i.aei = select i1 %.not52.i, ptr null, ptr %i.aeh ; 3 uses
  %i.aej = icmp ult ptr %i.aea, %i.aei
  br i1 %i.aej, label %.lr.ph.i468, label %.critedge.i

.lr.ph.i468:                                      ; preds = %bb.ht, %bb.hu
  %.04759.i = phi ptr [ %i.aen, %bb.hu ], [ %i.aea, %bb.ht ] ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.04759.i, i64 24
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !279
  %i.aem = zext i32 %i.ael to i64
  %.not56.i = icmp eq i64 %i.adw, %i.aem
  br i1 %.not56.i, label %.critedge.i, label %bb.hu

bb.hu:                                            ; preds = %.lr.ph.i468
  %i.aen = getelementptr inbounds nuw i8, ptr %.04759.i, i64 32 ; 3 uses
  %i.aeo = icmp ult ptr %i.aen, %i.aei
  br i1 %i.aeo, label %.lr.ph.i468, label %.critedge.i, !llvm.loop !561

.critedge.i:                                      ; preds = %bb.hu, %.lr.ph.i468, %bb.ht
  %.047.lcssa.i = phi ptr [ %i.aea, %bb.ht ], [ %.04759.i, %.lr.ph.i468 ], [ %i.aen, %bb.hu ] ; 2 uses
  %i.aep = icmp eq ptr %.047.lcssa.i, %i.aei
  br i1 %i.aep, label %.sink.split.i461, label %bb.hv

bb.hv:                                            ; preds = %.critedge.i, %bb.hs
  %.1.i463 = phi ptr [ %.047.lcssa.i, %.critedge.i ], [ %i.aec, %bb.hs ] ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.1.i463, i64 28
  %i.aer = load i8, ptr %i.aeq, align 4, !tbaa !280
  %.not57.i = icmp eq i8 %i.aer, 0
  br i1 %.not57.i, label %.sink.split.i461, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aes = load i32, ptr %i.dw, align 8, !tbaa !270 ; 3 uses
  %i.aet = load i32, ptr %i.dx, align 4, !tbaa !169
  %.not58.i = icmp slt i32 %i.aes, %i.aet
  br i1 %.not58.i, label %bb.hx, label %.sink.split.i461

bb.hx:                                            ; preds = %bb.hw
  %i.aeu = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.aev = icmp sgt i64 %i.aeu, 0
  br i1 %i.aev, label %bb.hy, label %Ins_SPVTL.exitthread-pre-split

bb.hy:                                            ; preds = %bb.hx
  %i.aew = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.aex = sext i32 %i.aes to i64
  %i.aey = getelementptr inbounds [32 x i8], ptr %i.aew, i64 %i.aex ; 4 uses
  %i.aez = load i32, ptr %i.aw, align 4, !tbaa !225
  store i32 %i.aez, ptr %i.aey, align 8, !tbaa !281
  %i.afa = load i64, ptr %i.di, align 8, !tbaa !241
  %i.afb = add nsw i64 %i.afa, 1
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  store i64 %i.afb, ptr %i.afc, align 8, !tbaa !282
  %i.afd = load i64, ptr %i.jk, align 8, !tbaa !176
  %sext.i464 = shl i64 %i.afd, 32
  %i.afe = ashr exact i64 %sext.i464, 32
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store i64 %i.afe, ptr %i.aff, align 8, !tbaa !283
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  store ptr %.1.i463, ptr %i.afg, align 8, !tbaa !272
  %i.afh = add nsw i32 %i.aes, 1
  store i32 %i.afh, ptr %i.dw, align 8, !tbaa !270
  %i.afi = load i32, ptr %.1.i463, align 8, !tbaa !284 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.1.i463, i64 8
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !285 ; 2 uses
  %i.afl = add i32 %i.afi, -4
  %or.cond.i.i465 = icmp ult i32 %i.afl, -3
  br i1 %or.cond.i.i465, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 132, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i467

bb.ia:                                            ; preds = %bb.hy
  %i.afm = zext nneg i32 %i.afi to i64
  %i.afn = getelementptr [16 x i8], ptr %0, i64 %i.afm ; 2 uses
  %i.afo = getelementptr i8, ptr %i.afn, i64 776
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !287 ; 2 uses
  %.not.i.i466 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i466, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i32 138, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i467

bb.ic:                                            ; preds = %bb.ia
  %i.afq = getelementptr i8, ptr %i.afn, i64 784
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !288 ; 2 uses
  %i.afs = icmp sgt i64 %i.afk, %i.afr
  br i1 %i.afs, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i32 131, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i467

bb.ie:                                            ; preds = %bb.ic
  store ptr %i.afp, ptr %i.dh, align 8, !tbaa !243
  store i64 %i.afr, ptr %i.dl, align 8, !tbaa !242
  store i64 %i.afk, ptr %i.di, align 8, !tbaa !241
  store i32 %i.afi, ptr %i.aw, align 4, !tbaa !225
  br label %Ins_Goto_CodeRange.exit.i467

Ins_Goto_CodeRange.exit.i467:                     ; preds = %bb.ie, %bb.id, %bb.ib, %bb.hz
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  %i.aft = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.afu = load i64, ptr %i.w, align 8, !tbaa !613
  %i.afv = add i64 %i.afu, %i.aft                 ; 2 uses
  store i64 %i.afv, ptr %i.w, align 8, !tbaa !613
  %i.afw = load i64, ptr %i.ah, align 8, !tbaa !615
  %i.afx = icmp ugt i64 %i.afv, %i.afw
  br i1 %i.afx, label %.sink.split.i461, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i461:                                 ; preds = %Ins_Goto_CodeRange.exit.i467, %bb.hw, %bb.hv, %.critedge.i, %bb.hq
  %.sink.i462 = phi i32 [ 130, %bb.hw ], [ 139, %Ins_Goto_CodeRange.exit.i467 ], [ 134, %.critedge.i ], [ 134, %bb.hv ], [ 134, %bb.hq ] ; 2 uses
  store i32 %.sink.i462, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit

bb.if:                                            ; preds = %bb.ao
  %.val390 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 4 uses
  %i.afy = load i32, ptr %i.hd, align 8, !tbaa !630
  %i.afz = add i32 %i.afy, 1                      ; 2 uses
  %i.aga = zext i32 %i.afz to i64
  %.not.i469 = icmp ult i64 %.val390, %i.aga
  br i1 %.not.i469, label %bb.ig, label %.loopexit.sink.split

bb.ig:                                            ; preds = %bb.if
  %i.agb = load ptr, ptr %i.ha, align 8, !tbaa !290 ; 5 uses
  %.not43.i = icmp eq ptr %i.agb, null
  br i1 %.not43.i, label %.loopexit.sink.split, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.agc = load i32, ptr %i.hb, align 8, !tbaa !291 ; 3 uses
  %.not44.i = icmp eq i32 %i.afz, %i.agc
  br i1 %.not44.i, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.agd = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %.val390 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !279
  %i.agg = zext i32 %i.agf to i64
  %.not45.i = icmp eq i64 %.val390, %i.agg
  br i1 %.not45.i, label %bb.il, label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.agh = zext i32 %i.agc to i64
  %.idx.i470 = shl nuw nsw i64 %i.agh, 5
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agb, i64 %.idx.i470 ; 2 uses
  %.not4.i471 = icmp eq i32 %i.agc, 0
  br i1 %.not4.i471, label %.critedge.i473, label %.lr.ph.i472

.lr.ph.i472:                                      ; preds = %bb.ij, %bb.ik
  %.0391.i = phi ptr [ %i.agm, %bb.ik ], [ %i.agb, %bb.ij ] ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.0391.i, i64 24
end_hunk_1
begin_hunk_2_@TT_RunIns:bb.a

bb.iu:                                            ; preds = %bb.ao
  %i.aho = load i32, ptr %i.ay, align 8, !tbaa !226
  %i.ahp = icmp eq i32 %i.aho, 3
  br i1 %i.ahp, label %.loopexit.sink.split, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ahq = load ptr, ptr %i.ha, align 8, !tbaa !290 ; 4 uses
  %.not.i478 = icmp eq ptr %i.ahq, null
  br i1 %.not.i478, label %._crit_edge.thread.i, label %bb.iw

._crit_edge.thread.i:                             ; preds = %bb.iv
  %i.ahr = load i64, ptr %i.jk, align 8, !tbaa !176
  %.pre986.a = load i32, ptr %i.hb, align 8, !tbaa !291
  br label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.ahs = load i32, ptr %i.hb, align 8, !tbaa !291 ; 3 uses
  %i.aht = zext i32 %i.ahs to i64
  %.idx.i479 = shl nuw nsw i64 %i.aht, 5
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %.idx.i479 ; 3 uses
  %i.ahv = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %.not61.i = icmp eq i32 %i.ahs, 0
  br i1 %.not61.i, label %._crit_edge.i481, label %.lr.ph.i480

.lr.ph.i480:                                      ; preds = %bb.iw, %bb.ix
  %.042.i = phi ptr [ %i.aia, %bb.ix ], [ %i.ahq, %bb.iw ] ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.ahx = load i32, ptr %i.ahw, align 8, !tbaa !279
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = icmp eq i64 %i.ahv, %i.ahy
  br i1 %i.ahz, label %._crit_edge.i481, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph.i480
  %i.aia = getelementptr inbounds nuw i8, ptr %.042.i, i64 32 ; 3 uses
  %i.aib = icmp ult ptr %i.aia, %i.ahu
  br i1 %i.aib, label %.lr.ph.i480, label %._crit_edge.i481, !llvm.loop !563

._crit_edge.i481:                                 ; preds = %bb.ix, %.lr.ph.i480, %bb.iw
  %.0.lcssa.i = phi ptr [ %i.ahq, %bb.iw ], [ %.042.i, %.lr.ph.i480 ], [ %i.aia, %bb.ix ] ; 2 uses
  %i.aic = icmp eq ptr %.0.lcssa.i, %i.ahu
  br i1 %i.aic, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %._crit_edge.i481, %._crit_edge.thread.i
  %i.aid = phi i32 [ %.pre986.a, %._crit_edge.thread.i ], [ %i.ahs, %._crit_edge.i481 ] ; 2 uses
  %.0.lcssa58.i = phi ptr [ null, %._crit_edge.thread.i ], [ %i.ahu, %._crit_edge.i481 ]
  %i.aie = phi i64 [ %i.ahr, %._crit_edge.thread.i ], [ %i.ahv, %._crit_edge.i481 ]
  %i.aif = load i32, ptr %i.hc, align 4, !tbaa !631
  %.not38.i = icmp ult i32 %i.aid, %i.aif
  br i1 %.not38.i, label %bb.iz, label %.loopexit.sink.split

bb.iz:                                            ; preds = %bb.iy
  %i.aig = add nuw i32 %i.aid, 1
  store i32 %i.aig, ptr %i.hb, align 8, !tbaa !291
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %._crit_edge.i481
  %.0.lcssa57.i = phi ptr [ %.0.lcssa58.i, %bb.iz ], [ %.0.lcssa.i, %._crit_edge.i481 ] ; 5 uses
  %i.aih = phi i64 [ %i.aie, %bb.iz ], [ %i.ahv, %._crit_edge.i481 ] ; 3 uses
  %i.aii = icmp ugt i64 %i.aih, 65535
  br i1 %i.aii, label %.loopexit.sink.split, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aij = load i32, ptr %i.aw, align 4, !tbaa !225
  store i32 %i.aij, ptr %.0.lcssa57.i, align 8, !tbaa !284
  %i.aik = trunc nuw nsw i64 %i.aih to i32        ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 24
  store i32 %i.aik, ptr %i.ail, align 8, !tbaa !279
  %i.aim = load i64, ptr %i.di, align 8, !tbaa !241 ; 2 uses
  %i.ain = add nsw i64 %i.aim, 1
  %i.aio = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 8
  store i64 %i.ain, ptr %i.aio, align 8, !tbaa !285
  %i.aip = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 28
  store i8 1, ptr %i.aip, align 4, !tbaa !280
  %i.aiq = load i32, ptr %i.hd, align 8, !tbaa !630
  %i.air = zext i32 %i.aiq to i64
  %i.ais = icmp samesign ugt i64 %i.aih, %i.air
  br i1 %i.ais, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  store i32 %i.aik, ptr %i.hd, align 8, !tbaa !630
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.ait = load i64, ptr %i.dl, align 8, !tbaa !242 ; 3 uses
  br label %bb.je

bb.je:                                            ; preds = %bb.jj, %bb.jd
  %i.aiu = phi i64 [ %i.aix, %bb.jj ], [ %i.aim, %bb.jd ]
  %i.aiv = phi i32 [ %i.ajn, %bb.jj ], [ %i.id, %bb.jd ]
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = add nsw i64 %i.aiu, %i.aiw             ; 7 uses
  store i64 %i.aix, ptr %i.di, align 8, !tbaa !241
  %i.aiy = icmp slt i64 %i.aix, %i.ait
  br i1 %i.aiy, label %bb.jf, label %.loopexit.sink.split

bb.jf:                                            ; preds = %bb.je
  %i.aiz = getelementptr inbounds i8, ptr %i.ho, i64 %i.aix
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !177 ; 4 uses
  store i8 %i.aja, ptr %i.dj, align 8, !tbaa !244
  %i.ajb = zext i8 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw i8, ptr @opcode_length, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !177
  %i.aje = sext i8 %i.ajd to i32                  ; 3 uses
  store i32 %i.aje, ptr %i.dk, align 4, !tbaa !622
  %i.ajf = and i8 %i.aja, -2
  %i.ajg = icmp eq i8 %i.ajf, 64
  br i1 %i.ajg, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  %i.ajh = add nsw i64 %i.aix, 1                  ; 2 uses
  %.not.i.i485 = icmp slt i64 %i.ajh, %i.ait
  br i1 %.not.i.i485, label %bb.jh, label %.loopexit.sink.split

bb.jh:                                            ; preds = %bb.jg
  %i.aji = getelementptr inbounds i8, ptr %i.ho, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !177
  %i.ajk = zext i8 %i.ajj to i32
  %i.ajl = mul nsw i32 %i.ajk, %i.aje
  %i.ajm = sub nsw i32 2, %i.ajl                  ; 2 uses
  store i32 %i.ajm, ptr %i.dk, align 4, !tbaa !622
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jf
  %i.ajn = phi i32 [ %i.ajm, %bb.jh ], [ %i.aje, %bb.jf ] ; 2 uses
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = add nsw i64 %i.aix, %i.ajo
  %.not23.i.i484 = icmp sgt i64 %i.ajp, %i.ait
  br i1 %.not23.i.i484, label %.loopexit.sink.split, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  switch i8 %i.aja, label %bb.je [
    i8 -119, label %.loopexit.sink.split
    i8 44, label %.loopexit.sink.split
    i8 45, label %bb.jk
  ], !llvm.loop !564

bb.jk:                                            ; preds = %bb.jj
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0.lcssa57.i, i64 16
  store i64 %i.aix, ptr %i.ajq, align 8, !tbaa !628
  br label %Ins_SPVTL.exitthread-pre-split

bb.jl:                                            ; preds = %bb.ao
  %i.ajr = load i32, ptr %i.dw, align 8, !tbaa !270 ; 3 uses
  %i.ajs = icmp slt i32 %i.ajr, 1
  br i1 %i.ajs, label %.loopexit.sink.split, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ajt = add nsw i32 %i.ajr, -1                 ; 2 uses
  store i32 %i.ajt, ptr %i.dw, align 8, !tbaa !270
  %i.aju = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.ajv = zext nneg i32 %i.ajt to i64
  %i.ajw = getelementptr inbounds nuw [32 x i8], ptr %i.aju, i64 %i.ajv ; 4 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16 ; 2 uses
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !283 ; 2 uses
  %i.ajz = add nsw i64 %i.ajy, -1
  store i64 %i.ajz, ptr %i.ajx, align 8, !tbaa !283
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  %i.aka = icmp sgt i64 %i.ajy, 1
  br i1 %i.aka, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  store i32 %i.ajr, ptr %i.dw, align 8, !tbaa !270
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajw, i64 24
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !272
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !285
  store i64 %i.ake, ptr %i.di, align 8, !tbaa !241
  br label %Ins_SPVTL.exitthread-pre-split

bb.jo:                                            ; preds = %bb.jm
  %i.akf = load i32, ptr %i.ajw, align 8, !tbaa !281 ; 3 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !282 ; 2 uses
  %i.aki = add i32 %i.akf, -4
  %or.cond.i.i486 = icmp ult i32 %i.aki, -3
  br i1 %or.cond.i.i486, label %.loopexit.sink.split, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.akj = zext nneg i32 %i.akf to i64
  %i.akk = getelementptr [16 x i8], ptr %0, i64 %i.akj ; 2 uses
  %i.akl = getelementptr i8, ptr %i.akk, i64 776
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !287 ; 2 uses
  %.not.i.i487 = icmp eq ptr %i.akm, null
  br i1 %.not.i.i487, label %.loopexit.sink.split, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.akn = getelementptr i8, ptr %i.akk, i64 784
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !288 ; 2 uses
  %i.akp = icmp sgt i64 %i.akh, %i.ako
  br i1 %i.akp, label %.loopexit.sink.split, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  store ptr %i.akm, ptr %i.dh, align 8, !tbaa !243
  store i64 %i.ako, ptr %i.dl, align 8, !tbaa !242
  store i64 %i.akh, ptr %i.di, align 8, !tbaa !241
  store i32 %i.akf, ptr %i.aw, align 4, !tbaa !225
  br label %Ins_SPVTL.exitthread-pre-split

bb.js:                                            ; preds = %bb.ao, %bb.ao
  %.val391 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.akq = trunc i64 %.val391 to i16              ; 4 uses
  %i.akr = load i16, ptr %i.fn, align 4, !tbaa !260
  %.not.i489 = icmp ugt i16 %i.akr, %i.akq
  br i1 %.not.i489, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aks = load i8, ptr %i.do, align 1, !tbaa !187
  %.not25.i = icmp eq i8 %i.aks, 0
  br i1 %.not25.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.ju:                                            ; preds = %bb.js
  %i.akt = and i8 %i.hq, 1
  %.not24.i = icmp eq i8 %i.akt, 0
  br i1 %.not24.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aku = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.akv = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.akw = and i64 %.val391, 65535
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %i.akv, i64 %i.akw ; 2 uses
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !203
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !259
  %i.alb = call i64 %i.aku(ptr noundef nonnull %0, i64 noundef %i.aky, i64 noundef %i.ala) #22, !inline_history !565 ; 2 uses
  %i.alc = load ptr, ptr %i.fc, align 8, !tbaa !238
  %i.ald = call i64 %i.alc(ptr noundef nonnull %0, i64 noundef %i.alb, i32 noundef 3) #22, !inline_history !565
  %i.ale = sub i64 %i.ald, %i.alb
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.0.i490 = phi i64 [ %i.ale, %bb.jv ], [ 0, %bb.ju ]
  %i.alf = load ptr, ptr %i.cq, align 8, !tbaa !236
  call void %i.alf(ptr noundef nonnull %0, ptr noundef nonnull %i.gd, i16 noundef zeroext %i.akq, i64 noundef %.0.i490) #22, !inline_history !565
  store i16 %i.akq, ptr %i.gf, align 8, !tbaa !262
  store i16 %i.akq, ptr %i.gg, align 2, !tbaa !263
  br label %Ins_SPVTL.exitthread-pre-split

bb.jx:                                            ; preds = %bb.ao, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.alg = load ptr, ptr %0, align 8, !tbaa !220
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 176
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !41
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 120
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !26
  %i.all = icmp eq i32 %i.alk, 40
  br i1 %i.all, label %bb.jy, label %bb.ke

bb.jy:                                            ; preds = %bb.jx
  %i.alm = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not.i497 = icmp eq i8 %i.alm, 0
  br i1 %.not.i497, label %bb.ke, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aln = load i8, ptr %i.df, align 4, !tbaa !239
  %.not68.i = icmp eq i8 %i.aln, 0
  br i1 %.not68.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.alo = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not69.i = icmp eq i8 %i.alo, 0
  br i1 %.not69.i, label %bb.kb, label %Ins_IUP.exit

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.alp = and i8 %i.hq, 1
  %.not70.i = icmp eq i8 %i.alp, 0
  br i1 %.not70.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  store i8 1, ptr %i.df, align 4, !tbaa !239
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  store i8 1, ptr %i.dg, align 1, !tbaa !240
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %bb.jy, %bb.jx
  %i.alq = load i16, ptr %i.gr, align 2, !tbaa !292
  %i.alr = icmp eq i16 %i.alq, 0
  br i1 %i.alr, label %Ins_IUP.exit, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.als = and i8 %i.hq, 1
  %.not71.i = icmp eq i8 %i.als, 0
  %i.alt = load ptr, ptr %i.gs, align 8, !tbaa !632 ; 2 uses
  br i1 %.not71.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.alu = load ptr, ptr %i.gt, align 8, !tbaa !633
  %i.alv = load ptr, ptr %i.gu, align 8, !tbaa !634
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alx = load ptr, ptr %i.gt, align 8, !tbaa !633
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load ptr, ptr %i.gu, align 8, !tbaa !634
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 8
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.sink103.i = phi ptr [ %i.alw, %bb.kh ], [ %i.alt, %bb.kg ] ; 6 uses
  %.sink102.i = phi ptr [ %i.aly, %bb.kh ], [ %i.alu, %bb.kg ] ; 16 uses
  %.sink.i491 = phi ptr [ %i.ama, %bb.kh ], [ %i.alv, %bb.kg ] ; 4 uses
  %.065.i = phi i32 [ 16, %bb.kh ], [ 8, %bb.kg ] ; 2 uses
  store ptr %.sink103.i, ptr %6, align 8, !tbaa !294
  store ptr %.sink102.i, ptr %i.gv, align 8, !tbaa !295
  store ptr %.sink.i491, ptr %i.gw, align 8, !tbaa !296
  %i.amb = load i16, ptr %i.k, align 4, !tbaa !218
  %i.amc = zext i16 %i.amb to i32                 ; 3 uses
  store i32 %i.amc, ptr %i.gx, align 8, !tbaa !297
  br label %bb.kj

bb.kj:                                            ; preds = %.critedge77.i, %bb.ki
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %.critedge77.i ], [ 0, %bb.ki ] ; 2 uses
  %.061.i = phi i32 [ %.3.i, %.critedge77.i ], [ 0, %bb.ki ] ; 8 uses
  %i.amd = load ptr, ptr %i.gy, align 8, !tbaa !635
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.amd, i64 %indvars.iv99.i
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !120
  %i.amg = zext i16 %i.amf to i32
  %i.amh = load i16, ptr %i.gz, align 8, !tbaa !636
  %i.ami = zext i16 %i.amh to i32
  %i.amj = sub nsw i32 %i.amg, %i.ami             ; 2 uses
  %i.amk = load i16, ptr %i.k, align 4, !tbaa !218
  %i.aml = zext i16 %i.amk to i32                 ; 2 uses
  %.not72.i = icmp ult i32 %i.amj, %i.aml
  %i.amm = add nsw i32 %i.aml, -1
  %spec.select.i492 = select i1 %.not72.i, i32 %i.amj, i32 %i.amm ; 7 uses
  %.not7384.i = icmp ugt i32 %.061.i, %spec.select.i492
  br i1 %.not7384.i, label %.critedge77.i, label %.lr.ph.i493

.lr.ph.i493:                                      ; preds = %bb.kj
  %i.amn = load ptr, ptr %i.fa, align 8, !tbaa !637
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kl, %.lr.ph.i493
  %indvar = phi i32 [ %indvar.next, %bb.kl ], [ 0, %.lr.ph.i493 ] ; 3 uses
  %.185.i = phi i32 [ %i.amu, %bb.kl ], [ %.061.i, %.lr.ph.i493 ] ; 10 uses
  %i.amo = zext i32 %.185.i to i64                ; 6 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 %i.amo
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !177
  %i.amr = zext i8 %i.amq to i32
  %i.ams = and i32 %.065.i, %i.amr
  %i.amt = icmp eq i32 %i.ams, 0
  %i.amu = add i32 %.185.i, 1                     ; 6 uses
  %.not73.i = icmp ugt i32 %i.amu, %spec.select.i492 ; 3 uses
  br i1 %i.amt, label %bb.kl, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.kk
  br i1 %.not73.i, label %.critedge._crit_edge.thread.i, label %.lr.ph91.i

bb.kl:                                            ; preds = %bb.kk
  %indvar.next = add i32 %indvar, 1
  br i1 %.not73.i, label %.critedge77.i, label %bb.kk, !llvm.loop !566

.lr.ph91.i:                                       ; preds = %.critedge.preheader.i, %iup_worker_interpolate_.exit.i
  %.290.i = phi i32 [ %.2.i, %iup_worker_interpolate_.exit.i ], [ %i.amu, %.critedge.preheader.i ] ; 8 uses
  %.2.in89.i = phi i32 [ %.290.i, %iup_worker_interpolate_.exit.i ], [ %.185.i, %.critedge.preheader.i ] ; 3 uses
  %.06288.i = phi i32 [ %.163.i, %iup_worker_interpolate_.exit.i ], [ %.185.i, %.critedge.preheader.i ] ; 4 uses
  %i.amv = load ptr, ptr %i.fa, align 8, !tbaa !637
  %i.amw = zext i32 %.290.i to i64                ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !177
  %i.amz = zext i8 %i.amy to i32
  %i.ana = and i32 %.065.i, %i.amz
  %.not76.i = icmp eq i32 %i.ana, 0
  br i1 %.not76.i, label %iup_worker_interpolate_.exit.i, label %bb.km

bb.km:                                            ; preds = %.lr.ph91.i
  %i.anb = add i32 %.06288.i, 1                   ; 3 uses
  %i.anc = icmp ugt i32 %i.anb, %.2.in89.i
  br i1 %i.anc, label %iup_worker_interpolate_.exit.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.not.i.i494 = icmp ult i32 %.06288.i, %i.amc
  %.not104.i.i = icmp ult i32 %.290.i, %i.amc
  %or.cond.i.i495 = and i1 %.not104.i.i, %.not.i.i494
  br i1 %or.cond.i.i495, label %bb.ko, label %iup_worker_interpolate_.exit.i

bb.ko:                                            ; preds = %bb.kn
  %i.and = zext nneg i32 %.06288.i to i64         ; 3 uses
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %.sink.i491, i64 %i.and
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !203 ; 4 uses
  %i.ang = getelementptr inbounds nuw [16 x i8], ptr %.sink.i491, i64 %i.amw
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !203 ; 4 uses
  %i.ani = icmp sgt i64 %i.anf, %i.anh
  br i1 %i.ani, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %.pre-phi125.i.i = phi i64 [ %i.and, %bb.kp ], [ %i.amw, %bb.ko ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %i.amw, %bb.kp ], [ %i.and, %bb.ko ] ; 2 uses
  %.086.i.i = phi i64 [ %i.anh, %bb.kp ], [ %i.anf, %bb.ko ] ; 2 uses
  %.085.i.i = phi i64 [ %i.anf, %bb.kp ], [ %i.anh, %bb.ko ]
  %i.anj = getelementptr inbounds nuw [16 x i8], ptr %.sink103.i, i64 %.pre-phi.i.i
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !203 ; 3 uses
  %i.anl = getelementptr inbounds nuw [16 x i8], ptr %.sink103.i, i64 %.pre-phi125.i.i
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !203 ; 3 uses
  %i.ann = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %.pre-phi.i.i
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !203 ; 5 uses
  %i.anp = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %.pre-phi125.i.i
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !203 ; 3 uses
end_hunk_2
begin_hunk_3_@TT_RunIns:bb.a
  %i.aox = add i32 %.188118.i.i, 1                ; 2 uses
  %.not105.i.i = icmp ugt i32 %i.aox, %.2.in89.i
  br i1 %.not105.i.i, label %iup_worker_interpolate_.exit.i, label %bb.kr, !llvm.loop !2

iup_worker_interpolate_.exit.i:                   ; preds = %bb.ky, %.lr.ph123.i.i, %bb.kn, %bb.km, %.lr.ph91.i
  %.163.i = phi i32 [ %.06288.i, %.lr.ph91.i ], [ %.290.i, %bb.km ], [ %.290.i, %bb.kn ], [ %.290.i, %.lr.ph123.i.i ], [ %.290.i, %bb.ky ] ; 5 uses
  %.2.i = add i32 %.290.i, 1                      ; 5 uses
  %.not74.i = icmp ugt i32 %.2.i, %spec.select.i492
  br i1 %.not74.i, label %.critedge._crit_edge.i, label %.lr.ph91.i, !llvm.loop !567

.critedge._crit_edge.i:                           ; preds = %iup_worker_interpolate_.exit.i
  %i.aoy = icmp eq i32 %.163.i, %.185.i
  br i1 %i.aoy, label %.critedge._crit_edge.thread.i, label %bb.kz

.critedge._crit_edge.thread.i:                    ; preds = %.critedge._crit_edge.i, %.critedge.preheader.i
  %.2.lcssa116.i = phi i32 [ %.2.i, %.critedge._crit_edge.i ], [ %i.amu, %.critedge.preheader.i ] ; 4 uses
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %i.amo
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !203 ; 2 uses
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %.sink103.i, i64 %i.amo
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !203 ; 2 uses
  %i.apd = sub i64 %i.apa, %i.apc                 ; 10 uses
  %.not.i79.i = icmp eq i64 %i.apa, %i.apc
  br i1 %.not.i79.i, label %.critedge77.i, label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %.critedge._crit_edge.thread.i
  %i.ape = icmp ult i32 %.061.i, %.185.i
  br i1 %i.ape, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader1.i.i
  %i.apf = zext i32 %.061.i to i64                ; 4 uses
  %i.apg = sub nsw i64 %i.amo, %i.apf
  %xtraiter1398 = and i64 %i.apg, 3               ; 2 uses
  %lcmp.mod1399.not = icmp eq i64 %xtraiter1398, 0
  br i1 %lcmp.mod1399.not, label %.lr.ph.i80.i.prol.loopexit, label %.lr.ph.i80.i.prol

.lr.ph.i80.i.prol:                                ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i80.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i80.i.prol ], [ %i.apf, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i80.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.aph = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.api = load i64, ptr %i.aph, align 8, !tbaa !203
  %i.apj = add i64 %i.api, %i.apd
  store i64 %i.apj, ptr %i.aph, align 8, !tbaa !203
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1398
  br i1 %prol.iter.cmp.not, label %.lr.ph.i80.i.prol.loopexit, label %.lr.ph.i80.i.prol, !llvm.loop !568

.lr.ph.i80.i.prol.loopexit:                       ; preds = %.lr.ph.i80.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.apf, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i80.i.prol ]
  %i.apk = sub nsw i64 %i.apf, %i.amo
  %i.apl = icmp ugt i64 %i.apk, -4
  br i1 %i.apl, label %.preheader.i.i, label %.lr.ph.i80.i

.preheader.i.i:                                   ; preds = %.lr.ph.i80.i.prol.loopexit, %.lr.ph.i80.i, %.preheader1.i.i
  br i1 %.not73.i, label %.critedge77.i, label %.lr.ph6.i.preheader.i

.lr.ph6.i.preheader.i:                            ; preds = %.preheader.i.i
  %i.apm = zext i32 %i.amu to i64                 ; 2 uses
  %i.apn = add nuw nsw i32 %spec.select.i492, 1
  %i.apo = add i32 %.061.i, %indvar
  %i.app = sub i32 %spec.select.i492, %i.apo
  %xtraiter1401 = and i32 %i.app, 3               ; 2 uses
  %lcmp.mod1402.not.a = icmp eq i32 %xtraiter1401, 0
  br i1 %lcmp.mod1402.not.a, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol

.lr.ph6.i.i.prol:                                 ; preds = %.lr.ph6.i.preheader.i, %.lr.ph6.i.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ], [ %i.apm, %.lr.ph6.i.preheader.i ] ; 2 uses
  %prol.iter1403 = phi i32 [ %prol.iter1403.next, %.lr.ph6.i.i.prol ], [ 0, %.lr.ph6.i.preheader.i ]
  %i.apq = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !203
  %i.aps = add i64 %i.apr, %i.apd
  store i64 %i.aps, ptr %i.apq, align 8, !tbaa !203
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1403.next = add i32 %prol.iter1403, 1 ; 2 uses
  %prol.iter1403.cmp.not = icmp eq i32 %prol.iter1403.next, %xtraiter1401
  br i1 %prol.iter1403.cmp.not, label %.lr.ph6.i.i.prol.loopexit, label %.lr.ph6.i.i.prol, !llvm.loop !569

.lr.ph6.i.i.prol.loopexit:                        ; preds = %.lr.ph6.i.i.prol, %.lr.ph6.i.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.apm, %.lr.ph6.i.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph6.i.i.prol ]
  %i.apt = sub i32 %.061.i, %spec.select.i492
  %i.apu = add i32 %i.apt, %indvar
  %i.apv = icmp ugt i32 %i.apu, -4
  br i1 %i.apv, label %.critedge77.i, label %.lr.ph6.i.i

.lr.ph.i80.i:                                     ; preds = %.lr.ph.i80.i.prol.loopexit, %.lr.ph.i80.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i80.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i80.i.prol.loopexit ] ; 5 uses
  %i.apw = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.i ; 2 uses
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !203
  %i.apy = add i64 %i.apx, %i.apd
  store i64 %i.apy, ptr %i.apw, align 8, !tbaa !203
  %i.apz = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 16 ; 2 uses
  %i.aqb = load i64, ptr %i.aqa, align 8, !tbaa !203
  %i.aqc = add i64 %i.aqb, %i.apd
  store i64 %i.aqc, ptr %i.aqa, align 8, !tbaa !203
  %i.aqd = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.i
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 32 ; 2 uses
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !203
  %i.aqg = add i64 %i.aqf, %i.apd
  store i64 %i.aqg, ptr %i.aqe, align 8, !tbaa !203
  %i.aqh = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 48 ; 2 uses
  %i.aqj = load i64, ptr %i.aqi, align 8, !tbaa !203
  %i.aqk = add i64 %i.aqj, %i.apd
  store i64 %i.aqk, ptr %i.aqi, align 8, !tbaa !203
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.amo
  br i1 %exitcond.not.i.i.3, label %.preheader.i.i, label %.lr.ph.i80.i, !llvm.loop !570

.lr.ph6.i.i:                                      ; preds = %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph6.i.i ], [ %indvars.iv.i.unr, %.lr.ph6.i.i.prol.loopexit ] ; 5 uses
  %i.aql = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i ; 2 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !203
  %i.aqn = add i64 %i.aqm, %i.apd
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !203
  %i.aqo = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 16 ; 2 uses
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !203
  %i.aqr = add i64 %i.aqq, %i.apd
  store i64 %i.aqr, ptr %i.aqp, align 8, !tbaa !203
  %i.aqs = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 32 ; 2 uses
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !203
  %i.aqv = add i64 %i.aqu, %i.apd
  store i64 %i.aqv, ptr %i.aqt, align 8, !tbaa !203
  %i.aqw = getelementptr inbounds nuw [16 x i8], ptr %.sink102.i, i64 %indvars.iv.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 48 ; 2 uses
  %i.aqy = load i64, ptr %i.aqx, align 8, !tbaa !203
  %i.aqz = add i64 %i.aqy, %i.apd
  store i64 %i.aqz, ptr %i.aqx, align 8, !tbaa !203
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %i.apn, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %.critedge77.i, label %.lr.ph6.i.i, !llvm.loop !571

bb.kz:                                            ; preds = %.critedge._crit_edge.i
  %i.ara = add i32 %.163.i, 1
  %i.arb = and i32 %i.ara, 65535
  call fastcc void @iup_worker_interpolate_(ptr noundef %6, i32 noundef %i.arb, i32 noundef %spec.select.i492, i32 noundef %.163.i, i32 noundef %.185.i)
  %.not75.i = icmp eq i32 %.185.i, 0
  br i1 %.not75.i, label %.critedge77.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.arc = add i32 %.185.i, -1
  call fastcc void @iup_worker_interpolate_(ptr noundef %6, i32 noundef %.061.i, i32 noundef %i.arc, i32 noundef %.163.i, i32 noundef %.185.i)
  br label %.critedge77.i

.critedge77.i:                                    ; preds = %bb.kl, %.lr.ph6.i.i.prol.loopexit, %.lr.ph6.i.i, %bb.la, %bb.kz, %.preheader.i.i, %.critedge._crit_edge.thread.i, %bb.kj
  %.3.i = phi i32 [ %.2.lcssa116.i, %.lr.ph6.i.i.prol.loopexit ], [ %.2.i, %bb.la ], [ %.2.i, %bb.kz ], [ %.2.lcssa116.i, %.critedge._crit_edge.thread.i ], [ %.2.lcssa116.i, %.preheader.i.i ], [ %.061.i, %bb.kj ], [ %.2.lcssa116.i, %.lr.ph6.i.i ], [ %i.amu, %bb.kl ]
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.ard = load i16, ptr %i.gr, align 2, !tbaa !292
  %i.are = sext i16 %i.ard to i64
  %i.arf = icmp slt i64 %indvars.iv.next100.i, %i.are
  br i1 %i.arf, label %bb.kj, label %Ins_IUP.exit, !llvm.loop !572

Ins_IUP.exit:                                     ; preds = %.critedge77.i, %bb.ka, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %Ins_SPVTL.exitthread-pre-split

bb.lb:                                            ; preds = %bb.ao, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.arg = load i64, ptr %i.dm, align 8, !tbaa !245
  %i.arh = load i64, ptr %i.fb, align 8, !tbaa !268
  %i.ari = icmp slt i64 %i.arg, %i.arh
  br i1 %i.ari, label %bb.lc, label %bb.le

bb.lc:                                            ; preds = %bb.lb
  %i.arj = load i8, ptr %i.do, align 1, !tbaa !187
  %.not20.i = icmp eq i8 %i.arj, 0
  br i1 %.not20.i, label %.loopexit.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %.loopexit.i

bb.le:                                            ; preds = %bb.lb
  %i.ark = call fastcc zeroext i8 @Compute_Point_Displacement(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %5, ptr noundef %i.h)
  %.not.i498 = icmp eq i8 %i.ark, 0
  br i1 %.not.i498, label %thread-pre-split.i, label %Ins_SHP.exit

thread-pre-split.i:                               ; preds = %bb.le
  %.pr.i = load i64, ptr %i.fb, align 8, !tbaa !268
  %i.arl = icmp sgt i64 %.pr.i, 0
  br i1 %i.arl, label %.lr.ph.i499, label %.loopexit.i

.lr.ph.i499:                                      ; preds = %thread-pre-split.i
  %i.arm = load i64, ptr %i.i, align 8
  %i.arn = load i64, ptr %i.j, align 8
  br label %bb.lf

bb.lf:                                            ; preds = %Move_Zp2_Point.exit.i, %.lr.ph.i499
  %i.aro = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.arp = add nsw i64 %i.aro, -1                 ; 2 uses
  store i64 %i.arp, ptr %i.dn, align 8, !tbaa !246
  %i.arq = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %i.arp
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !176 ; 5 uses
  %i.art = load i16, ptr %i.el, align 4, !tbaa !623
  %17 = trunc i64 %i.ars to i16
  %.not18.i = icmp ugt i16 %i.art, %17
  br i1 %.not18.i, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aru = load i8, ptr %i.do, align 1, !tbaa !187
  %.not19.i = icmp eq i8 %i.aru, 0
  br i1 %.not19.i, label %Move_Zp2_Point.exit.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SHP.exit

bb.li:                                            ; preds = %bb.lf
  %i.arv = load i16, ptr %i.az, align 2, !tbaa !227
  %.not.i.i500 = icmp eq i16 %i.arv, 0
  br i1 %.not.i.i500, label %bb.ln, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.arw = load ptr, ptr %0, align 8, !tbaa !220
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 176
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !41
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 120
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !26
  %i.asb = icmp eq i32 %i.asa, 40
  br i1 %i.asb, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.asc = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not23.i.i503 = icmp eq i8 %i.asc, 0
  br i1 %.not23.i.i503, label %bb.ll, label %._crit_edge.i504

._crit_edge.i504:                                 ; preds = %bb.lk
  %.pre22.i = and i64 %i.ars, 65535
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.asd = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.ase = and i64 %i.ars, 65535                  ; 2 uses
  %i.asf = getelementptr inbounds nuw [16 x i8], ptr %i.asd, i64 %i.ase ; 2 uses
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !203
  %i.ash = add i64 %i.asg, %i.arm
  store i64 %i.ash, ptr %i.asf, align 8, !tbaa !203
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %._crit_edge.i504
  %.pre-phi23.i = phi i64 [ %.pre22.i, %._crit_edge.i504 ], [ %i.ase, %bb.ll ]
  %i.asi = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 %.pre-phi23.i ; 2 uses
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !177
  %i.asl = or i8 %i.ask, 8
  store i8 %i.asl, ptr %i.asj, align 1, !tbaa !177
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.li
  %i.asm = load i16, ptr %i.ev, align 8, !tbaa !230
  %.not25.i.i = icmp eq i16 %i.asm, 0
  br i1 %.not25.i.i, label %Move_Zp2_Point.exit.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.asn = load ptr, ptr %0, align 8, !tbaa !220
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 176
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !41
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 120
  %i.asr = load i32, ptr %i.asq, align 8, !tbaa !26
  %i.ass = icmp eq i32 %i.asr, 40
  br i1 %i.ass, label %bb.lp, label %bb.ls

bb.lp:                                            ; preds = %bb.lo
  %i.ast = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not26.i.i = icmp eq i8 %i.ast, 0
  br i1 %.not26.i.i, label %bb.ls, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.asu = load i8, ptr %i.df, align 4, !tbaa !239
  %.not27.i.i = icmp eq i8 %i.asu, 0
  br i1 %.not27.i.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.asv = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not28.i.i = icmp eq i8 %i.asv, 0
  br i1 %.not28.i.i, label %bb.ls, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.lr
  %.pre.i502 = and i64 %i.ars, 65535
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %bb.lp, %bb.lo
  %i.asw = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.asx = and i64 %i.ars, 65535                  ; 2 uses
  %i.asy = getelementptr inbounds nuw [16 x i8], ptr %i.asw, i64 %i.asx
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 8 ; 2 uses
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !259
  %i.atb = add i64 %i.ata, %i.arn
  store i64 %i.atb, ptr %i.asz, align 8, !tbaa !259
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %._crit_edge21.i
  %.pre-phi.i501 = phi i64 [ %.pre.i502, %._crit_edge21.i ], [ %i.asx, %bb.ls ]
  %i.atc = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 %.pre-phi.i501 ; 2 uses
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !177
  %i.atf = or i8 %i.ate, 16
  store i8 %i.atf, ptr %i.atd, align 1, !tbaa !177
  br label %Move_Zp2_Point.exit.i

Move_Zp2_Point.exit.i:                            ; preds = %bb.lt, %bb.ln, %bb.lg
  %i.atg = load i64, ptr %i.fb, align 8, !tbaa !268 ; 2 uses
  %i.ath = add nsw i64 %i.atg, -1
  store i64 %i.ath, ptr %i.fb, align 8, !tbaa !268
  %i.ati = icmp sgt i64 %i.atg, 1
  br i1 %i.ati, label %bb.lf, label %.loopexit.i, !llvm.loop !573

.loopexit.i:                                      ; preds = %Move_Zp2_Point.exit.i, %thread-pre-split.i, %bb.ld, %bb.lc
  store i64 1, ptr %i.fb, align 8, !tbaa !268
  %i.atj = load i64, ptr %i.dn, align 8, !tbaa !246
  store i64 %i.atj, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SHP.exit

Ins_SHP.exit:                                     ; preds = %bb.le, %bb.lh, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %Ins_SPVTL.exitthread-pre-split

bb.lu:                                            ; preds = %bb.ao, %bb.ao
  %.val392 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.atk = trunc i64 %.val392 to i16              ; 2 uses
  %i.atl = load i16, ptr %i.fx, align 8, !tbaa !267
  %i.atm = icmp eq i16 %i.atl, 0
  br i1 %i.atm, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.atn = load i16, ptr %i.gm, align 2, !tbaa !638
  %i.ato = sext i16 %i.atn to i32
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.atp = phi i32 [ %i.ato, %bb.lv ], [ 1, %bb.lu ]
  %i.atq = sext i16 %i.atk to i32
  %.not.i505 = icmp ugt i32 %i.atp, %i.atq
  br i1 %.not.i505, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.atr = load i8, ptr %i.do, align 1, !tbaa !187
  %.not32.i = icmp eq i8 %i.atr, 0
  br i1 %.not32.i, label %Ins_SHC.exit, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SHC.exit

bb.lz:                                            ; preds = %bb.lw
  %i.ats = call fastcc zeroext i8 @Compute_Point_Displacement(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %4, ptr noundef %i.e)
  %.not28.i507 = icmp eq i8 %i.ats, 0
  br i1 %.not28.i507, label %bb.ma, label %Ins_SHC.exit

bb.ma:                                            ; preds = %bb.lz
  %i.att = icmp eq i16 %i.atk, 0
  br i1 %i.att, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.atu = load ptr, ptr %i.gn, align 8, !tbaa !639
  %sext.i508 = shl i64 %.val392, 48
  %i.atv = ashr exact i64 %sext.i508, 47
  %i.atw = getelementptr i8, ptr %i.atu, i64 %i.atv
  %i.atx = getelementptr i8, ptr %i.atw, i64 -2
  %i.aty = load i16, ptr %i.atx, align 2, !tbaa !120
  %i.atz = add i16 %i.aty, 1
  %i.aua = load i16, ptr %i.gp, align 8, !tbaa !640
  %i.aub = sub i16 %i.atz, %i.aua
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.025.i = phi i16 [ %i.aub, %bb.mb ], [ 0, %bb.ma ] ; 2 uses
  %i.auc = load i16, ptr %i.fx, align 8, !tbaa !267
  %i.aud = icmp eq i16 %i.auc, 0
  br i1 %i.aud, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.aue = load i16, ptr %i.el, align 4, !tbaa !623
  br label %bb.mf

bb.me:                                            ; preds = %bb.mc
  %i.auf = load ptr, ptr %i.gn, align 8, !tbaa !639
  %sext29.i = shl i64 %.val392, 48
  %i.aug = ashr exact i64 %sext29.i, 47
  %i.auh = getelementptr inbounds i8, ptr %i.auf, i64 %i.aug
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !120
  %i.auj = load i16, ptr %i.gp, align 8, !tbaa !640
  %i.auk = add i16 %i.aui, 1
  %i.aul = sub i16 %i.auk, %i.auj
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.024.i = phi i16 [ %i.aue, %bb.md ], [ %i.aul, %bb.me ] ; 2 uses
  %i.aum = icmp ult i16 %.025.i, %.024.i
end_hunk_3
begin_hunk_4_@TT_RunIns:bb.a
  %i.bcb = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not26.i.i533 = icmp eq i8 %i.bcb, 0
  br i1 %.not26.i.i533, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bcc = load i8, ptr %i.df, align 4, !tbaa !239
  %.not27.i.i534 = icmp eq i8 %i.bcc, 0
  br i1 %.not27.i.i534, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bcd = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not28.i.i535 = icmp eq i8 %i.bcd, 0
  br i1 %.not28.i.i535, label %bb.nu, label %Move_Zp2_Point.exit.i532

bb.nu:                                            ; preds = %bb.nt, %bb.ns, %bb.nr, %bb.nq
  %i.bce = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv66.i
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 8 ; 2 uses
  %i.bcg = load i64, ptr %i.bcf, align 8, !tbaa !259
  %i.bch = add i64 %i.bcg, %i.aws
  store i64 %i.bch, ptr %i.bcf, align 8, !tbaa !259
  br label %Move_Zp2_Point.exit.i532

Move_Zp2_Point.exit.i532:                         ; preds = %bb.nu, %bb.nt, %bb.np, %.lr.ph.split.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %Ins_SHZ.exit, label %.lr.ph.split.i, !llvm.loop !575

Ins_SHZ.exit.loopexit1315.unr-lcssa:              ; preds = %Move_Zp2_Point.exit.us.us.i.1
  %lcmp.mod1394.not = icmp eq i64 %xtraiter1392, 0
  br i1 %lcmp.mod1394.not, label %Ins_SHZ.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Ins_SHZ.exit.loopexit1315.unr-lcssa, %.lr.ph.split.us.split.us.split.i
  %indvars.iv61.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.split.i ], [ %indvars.iv.next62.i.1, %Ins_SHZ.exit.loopexit1315.unr-lcssa ]
  %lcmp.mod1395 = trunc i16 %.016.i to i1
  call void @llvm.assume(i1 %lcmp.mod1395)
  br i1 %i.axc, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %.epil.preheader
  %i.bci = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not23.i.us.us.i.epil = icmp eq i8 %i.bci, 0
  br i1 %.not23.i.us.us.i.epil, label %bb.nw, label %Ins_SHZ.exit

bb.nw:                                            ; preds = %bb.nv, %.epil.preheader
  %i.bcj = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv61.i.epil.init ; 2 uses
  %i.bck = load i64, ptr %i.bcj, align 8, !tbaa !203
  %i.bcl = add i64 %i.bck, %i.awr
  store i64 %i.bcl, ptr %i.bcj, align 8, !tbaa !203
  br label %Ins_SHZ.exit

Ins_SHZ.exit.loopexit1316.unr-lcssa:              ; preds = %Move_Zp2_Point.exit.us.us3.us.us.i
  %lcmp.mod1388.not = icmp eq i64 %xtraiter1386, 0
  br i1 %lcmp.mod1388.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.us.i.epil.preheader

Move_Zp2_Point.exit.us.us3.us.us.i.epil.preheader: ; preds = %Ins_SHZ.exit.loopexit1316.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.us.preheader.i
  %indvars.iv56.i.epil.init = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.us.preheader.i ], [ %indvars.iv.next57.i.3, %Ins_SHZ.exit.loopexit1316.unr-lcssa ]
  %lcmp.mod1389 = icmp ne i64 %xtraiter1386, 0
  call void @llvm.assume(i1 %lcmp.mod1389)
  br label %Move_Zp2_Point.exit.us.us3.us.us.i.epil

Move_Zp2_Point.exit.us.us3.us.us.i.epil:          ; preds = %Move_Zp2_Point.exit.us.us3.us.us.i.epil, %Move_Zp2_Point.exit.us.us3.us.us.i.epil.preheader
  %indvars.iv56.i.epil = phi i64 [ %indvars.iv56.i.epil.init, %Move_Zp2_Point.exit.us.us3.us.us.i.epil.preheader ], [ %indvars.iv.next57.i.epil, %Move_Zp2_Point.exit.us.us3.us.us.i.epil ] ; 2 uses
  %epil.iter1387 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.us.i.epil.preheader ], [ %epil.iter1387.next, %Move_Zp2_Point.exit.us.us3.us.us.i.epil ]
  %i.bcm = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv56.i.epil
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8 ; 2 uses
  %i.bco = load i64, ptr %i.bcn, align 8, !tbaa !259
  %i.bcp = add i64 %i.bco, %i.aws
  store i64 %i.bcp, ptr %i.bcn, align 8, !tbaa !259
  %indvars.iv.next57.i.epil = add nuw nsw i64 %indvars.iv56.i.epil, 1
  %epil.iter1387.next = add i64 %epil.iter1387, 1 ; 2 uses
  %epil.iter1387.cmp.not = icmp eq i64 %epil.iter1387.next, %xtraiter1386
  br i1 %epil.iter1387.cmp.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.us.i.epil, !llvm.loop !578

Ins_SHZ.exit.loopexit1317.unr-lcssa:              ; preds = %Move_Zp2_Point.exit.us.us3.us.us14.i
  %lcmp.mod1382.not = icmp eq i64 %xtraiter1380, 0
  br i1 %lcmp.mod1382.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.us14.i.epil.preheader

Move_Zp2_Point.exit.us.us3.us.us14.i.epil.preheader: ; preds = %Ins_SHZ.exit.loopexit1317.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.us14.preheader.i
  %indvars.iv51.i.epil.init = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.us14.preheader.i ], [ %indvars.iv.next52.i.3, %Ins_SHZ.exit.loopexit1317.unr-lcssa ]
  %lcmp.mod1383 = icmp ne i64 %xtraiter1380, 0
  call void @llvm.assume(i1 %lcmp.mod1383)
  br label %Move_Zp2_Point.exit.us.us3.us.us14.i.epil

Move_Zp2_Point.exit.us.us3.us.us14.i.epil:        ; preds = %Move_Zp2_Point.exit.us.us3.us.us14.i.epil, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil.preheader
  %indvars.iv51.i.epil = phi i64 [ %indvars.iv51.i.epil.init, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil.preheader ], [ %indvars.iv.next52.i.epil, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil ] ; 2 uses
  %epil.iter1381 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil.preheader ], [ %epil.iter1381.next, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil ]
  %i.bcq = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv51.i.epil
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8 ; 2 uses
  %i.bcs = load i64, ptr %i.bcr, align 8, !tbaa !259
  %i.bct = add i64 %i.bcs, %i.aws
  store i64 %i.bct, ptr %i.bcr, align 8, !tbaa !259
  %indvars.iv.next52.i.epil = add nuw nsw i64 %indvars.iv51.i.epil, 1
  %epil.iter1381.next = add i64 %epil.iter1381, 1 ; 2 uses
  %epil.iter1381.cmp.not = icmp eq i64 %epil.iter1381.next, %xtraiter1380
  br i1 %epil.iter1381.cmp.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.us14.i.epil, !llvm.loop !579

Ins_SHZ.exit.loopexit1318.unr-lcssa:              ; preds = %Move_Zp2_Point.exit.us.us3.us.i
  %lcmp.mod1376.not = icmp eq i64 %xtraiter1374, 0
  br i1 %lcmp.mod1376.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.i.epil.preheader

Move_Zp2_Point.exit.us.us3.us.i.epil.preheader:   ; preds = %Ins_SHZ.exit.loopexit1318.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.preheader.i ], [ %indvars.iv.next47.i.3, %Ins_SHZ.exit.loopexit1318.unr-lcssa ]
  %lcmp.mod1377 = icmp ne i64 %xtraiter1374, 0
  call void @llvm.assume(i1 %lcmp.mod1377)
  br label %Move_Zp2_Point.exit.us.us3.us.i.epil

Move_Zp2_Point.exit.us.us3.us.i.epil:             ; preds = %Move_Zp2_Point.exit.us.us3.us.i.epil, %Move_Zp2_Point.exit.us.us3.us.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %Move_Zp2_Point.exit.us.us3.us.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %Move_Zp2_Point.exit.us.us3.us.i.epil ] ; 2 uses
  %epil.iter1375 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.us.i.epil.preheader ], [ %epil.iter1375.next, %Move_Zp2_Point.exit.us.us3.us.i.epil ]
  %i.bcu = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv46.i.epil
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 8 ; 2 uses
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !259
  %i.bcx = add i64 %i.bcw, %i.aws
  store i64 %i.bcx, ptr %i.bcv, align 8, !tbaa !259
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter1375.next = add i64 %epil.iter1375, 1 ; 2 uses
  %epil.iter1375.cmp.not = icmp eq i64 %epil.iter1375.next, %xtraiter1374
  br i1 %epil.iter1375.cmp.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.us.i.epil, !llvm.loop !580

Ins_SHZ.exit.loopexit1319.unr-lcssa:              ; preds = %Move_Zp2_Point.exit.us.us3.i
  %lcmp.mod1370.not = icmp eq i64 %xtraiter1368, 0
  br i1 %lcmp.mod1370.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.i.epil.preheader

Move_Zp2_Point.exit.us.us3.i.epil.preheader:      ; preds = %Ins_SHZ.exit.loopexit1319.unr-lcssa, %Move_Zp2_Point.exit.us.us3.preheader.i
  %indvars.iv41.i.epil.init = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.preheader.i ], [ %indvars.iv.next42.i.3, %Ins_SHZ.exit.loopexit1319.unr-lcssa ]
  %lcmp.mod1371 = icmp ne i64 %xtraiter1368, 0
  call void @llvm.assume(i1 %lcmp.mod1371)
  br label %Move_Zp2_Point.exit.us.us3.i.epil

Move_Zp2_Point.exit.us.us3.i.epil:                ; preds = %Move_Zp2_Point.exit.us.us3.i.epil, %Move_Zp2_Point.exit.us.us3.i.epil.preheader
  %indvars.iv41.i.epil = phi i64 [ %indvars.iv41.i.epil.init, %Move_Zp2_Point.exit.us.us3.i.epil.preheader ], [ %indvars.iv.next42.i.epil, %Move_Zp2_Point.exit.us.us3.i.epil ] ; 2 uses
  %epil.iter1369 = phi i64 [ 0, %Move_Zp2_Point.exit.us.us3.i.epil.preheader ], [ %epil.iter1369.next, %Move_Zp2_Point.exit.us.us3.i.epil ]
  %i.bcy = getelementptr inbounds nuw [16 x i8], ptr %i.awq, i64 %indvars.iv41.i.epil
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 8 ; 2 uses
  %i.bda = load i64, ptr %i.bcz, align 8, !tbaa !259
  %i.bdb = add i64 %i.bda, %i.aws
  store i64 %i.bdb, ptr %i.bcz, align 8, !tbaa !259
  %indvars.iv.next42.i.epil = add nuw nsw i64 %indvars.iv41.i.epil, 1
  %epil.iter1369.next = add i64 %epil.iter1369, 1 ; 2 uses
  %epil.iter1369.cmp.not = icmp eq i64 %epil.iter1369.next, %xtraiter1368
  br i1 %epil.iter1369.cmp.not, label %Ins_SHZ.exit, label %Move_Zp2_Point.exit.us.us3.i.epil, !llvm.loop !581

Ins_SHZ.exit:                                     ; preds = %Move_Zp2_Point.exit.us.i, %Move_Zp2_Point.exit.us.us9.i, %Ins_SHZ.exit.loopexit1319.unr-lcssa, %Move_Zp2_Point.exit.us.us3.i.epil, %Ins_SHZ.exit.loopexit1318.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.i.epil, %Ins_SHZ.exit.loopexit1317.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.us14.i.epil, %Ins_SHZ.exit.loopexit1316.unr-lcssa, %Move_Zp2_Point.exit.us.us3.us.us.i.epil, %Ins_SHZ.exit.loopexit1315.unr-lcssa, %bb.nw, %bb.nv, %Move_Zp2_Point.exit.i532, %middle.block, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.mz, %bb.nb, %.lr.ph.split.us.split.us.i, %.lr.ph.split.us.split.split.us.split.us.split.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %Ins_SPVTL.exitthread-pre-split

bb.nx:                                            ; preds = %bb.ao
  %i.bdc = load i16, ptr %i.fp, align 4, !tbaa !265
  %i.bdd = icmp eq i16 %i.bdc, 0
  br i1 %i.bdd, label %bb.oa, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bde = load i16, ptr %i.fq, align 2, !tbaa !266
  %i.bdf = icmp eq i16 %i.bde, 0
  br i1 %i.bdf, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.bdg = load i16, ptr %i.fx, align 8, !tbaa !267
  %i.bdh = icmp ne i16 %i.bdg, 0
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny, %bb.nx
  %.not40.i = phi i1 [ false, %bb.ny ], [ false, %bb.nx ], [ %i.bdh, %bb.nz ]
  %i.bdi = load i64, ptr %i.dm, align 8, !tbaa !245
  %i.bdj = load i64, ptr %i.fb, align 8, !tbaa !268 ; 2 uses
  %.not.i537 = icmp sgt i64 %i.bdi, %i.bdj
  br i1 %.not.i537, label %bb.od, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bdk = load i8, ptr %i.do, align 1, !tbaa !187
  %.not47.i538 = icmp eq i8 %i.bdk, 0
  br i1 %.not47.i538, label %.loopexit.i539, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %.loopexit.i539

bb.od:                                            ; preds = %bb.oa
  %i.bdl = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.bdm = trunc i64 %i.bdl to i32                ; 2 uses
  %i.bdn = load i16, ptr %i.az, align 2, !tbaa !227
  %i.bdo = sext i16 %i.bdn to i32
  %i.bdp = call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.bdm, i32 noundef %i.bdo) #23
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = load i16, ptr %i.ev, align 8, !tbaa !230
  %i.bds = sext i16 %i.bdr to i32
  %i.bdt = call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.bdm, i32 noundef %i.bds) #23
  %i.bdu = sext i32 %i.bdt to i64                 ; 2 uses
  %i.bdv = icmp sgt i64 %i.bdj, 0
  br i1 %i.bdv, label %.lr.ph.i540, label %.loopexit.i539

.lr.ph.i540:                                      ; preds = %bb.od, %Move_Zp2_Point.exit.i543
  %i.bdw = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.bdx = add nsw i64 %i.bdw, -1                 ; 2 uses
  store i64 %i.bdx, ptr %i.dn, align 8, !tbaa !246
  %i.bdy = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.bdz = getelementptr inbounds [8 x i8], ptr %i.bdy, i64 %i.bdx
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !176 ; 8 uses
  %18 = trunc i64 %i.bea to i16
  %i.beb = load i16, ptr %i.el, align 4, !tbaa !623
  %.not38.i542 = icmp ugt i16 %i.beb, %18
  br i1 %.not38.i542, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %.lr.ph.i540
  %i.bec = load i8, ptr %i.do, align 1, !tbaa !187
  %.not46.i542 = icmp eq i8 %i.bec, 0
  br i1 %.not46.i542, label %Move_Zp2_Point.exit.i543, label %.loopexit.sink.split

bb.of:                                            ; preds = %.lr.ph.i540
  %i.bed = load ptr, ptr %0, align 8, !tbaa !220
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 176
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !41
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 120
  %i.beh = load i32, ptr %i.beg, align 8, !tbaa !26
  %i.bei = icmp eq i32 %i.beh, 40
  br i1 %i.bei, label %bb.og, label %.thread.i

bb.og:                                            ; preds = %bb.of
  %i.bej = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not39.i = icmp eq i8 %i.bej, 0
  br i1 %.not39.i, label %bb.ov, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  br i1 %.not40.i, label %bb.oi, label %bb.on

bb.oi:                                            ; preds = %bb.oh
  %i.bek = load i8, ptr %i.df, align 4, !tbaa !239
  %.not41.i549 = icmp eq i8 %i.bek, 0
  br i1 %.not41.i549, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bel = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not42.i = icmp eq i8 %i.bel, 0
  br i1 %.not42.i, label %bb.ok, label %Move_Zp2_Point.exit.i543

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.bem = load i8, ptr %i.gk, align 8, !tbaa !299
  %.not43.i550 = icmp eq i8 %i.bem, 0
  br i1 %.not43.i550, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.ben = load i16, ptr %i.ev, align 8, !tbaa !230
  %.not44.i551 = icmp eq i16 %i.ben, 0
  br i1 %.not44.i551, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %i.beo = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.bep = and i64 %i.bea, 65535
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.bep
  %i.ber = load i8, ptr %i.beq, align 1, !tbaa !177
  %i.bes = and i8 %i.ber, 16
  %.not45.i552 = icmp eq i8 %i.bes, 0
  br i1 %.not45.i552, label %Move_Zp2_Point.exit.i543, label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol, %bb.oh
  %i.bet = load i16, ptr %i.az, align 2, !tbaa !227
  %.not.i.i544 = icmp eq i16 %i.bet, 0
  br i1 %.not.i.i544, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.beu = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.bev = and i64 %i.bea, 65535
  %i.bew = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bev ; 2 uses
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !177
  %i.bey = or i8 %i.bex, 8
  store i8 %i.bey, ptr %i.bew, align 1, !tbaa !177
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.bez = load i16, ptr %i.ev, align 8, !tbaa !230
  %.not25.i.i545 = icmp eq i16 %i.bez, 0
  br i1 %.not25.i.i545, label %Move_Zp2_Point.exit.i543, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bfa = load ptr, ptr %0, align 8, !tbaa !220
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 176
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !41
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 120
  %i.bfe = load i32, ptr %i.bfd, align 8, !tbaa !26
  %i.bff = icmp eq i32 %i.bfe, 40
  br i1 %i.bff, label %bb.or, label %bb.ou

bb.or:                                            ; preds = %bb.oq
  %i.bfg = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not26.i.i546 = icmp eq i8 %i.bfg, 0
  br i1 %.not26.i.i546, label %bb.ou, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.bfh = load i8, ptr %i.df, align 4, !tbaa !239
  %.not27.i.i547 = icmp eq i8 %i.bfh, 0
  br i1 %.not27.i.i547, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.bfi = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not28.i.i548 = icmp eq i8 %i.bfi, 0
  br i1 %.not28.i.i548, label %bb.ou, label %._crit_edge57.i

._crit_edge57.i:                                  ; preds = %bb.ot
  %.pre61.i = and i64 %i.bea, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.ou:                                            ; preds = %bb.ot, %bb.os, %bb.or, %bb.oq
  %i.bfj = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.bfk = and i64 %i.bea, 65535                  ; 2 uses
  %i.bfl = getelementptr inbounds nuw [16 x i8], ptr %i.bfj, i64 %i.bfk
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8 ; 2 uses
  %i.bfn = load i64, ptr %i.bfm, align 8, !tbaa !259
  %i.bfo = add i64 %i.bfn, %i.bdu
  store i64 %i.bfo, ptr %i.bfm, align 8, !tbaa !259
  br label %Move_Zp2_Point.exit.sink.split.i

bb.ov:                                            ; preds = %bb.og
  %i.bfp = load i16, ptr %i.az, align 2, !tbaa !227
  %.not.i48.i = icmp eq i16 %i.bfp, 0
  br i1 %.not.i48.i, label %bb.ox, label %bb.ow

.thread.i:                                        ; preds = %bb.of
  %i.bfq = load i16, ptr %i.az, align 2, !tbaa !227
  %.not.i4855.i = icmp eq i16 %i.bfq, 0
  br i1 %.not.i4855.i, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %.thread.i, %bb.ov
  %i.bfr = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.bfs = and i64 %i.bea, 65535                  ; 2 uses
  %i.bft = getelementptr inbounds nuw [16 x i8], ptr %i.bfr, i64 %i.bfs ; 2 uses
  %i.bfu = load i64, ptr %i.bft, align 8, !tbaa !203
  %i.bfv = add i64 %i.bfu, %i.bdq
  store i64 %i.bfv, ptr %i.bft, align 8, !tbaa !203
  %i.bfw = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 %i.bfs ; 2 uses
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !177
  %i.bfz = or i8 %i.bfy, 8
  store i8 %i.bfz, ptr %i.bfx, align 1, !tbaa !177
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %.thread.i, %bb.ov
  %i.bga = load i16, ptr %i.ev, align 8, !tbaa !230
  %.not25.i49.i = icmp eq i16 %i.bga, 0
  br i1 %.not25.i49.i, label %Move_Zp2_Point.exit.i543, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bgb = load ptr, ptr %0, align 8, !tbaa !220
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 176
  %i.bgd = load ptr, ptr %i.bgc, align 8, !tbaa !41
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 120
  %i.bgf = load i32, ptr %i.bge, align 8, !tbaa !26
  %i.bgg = icmp eq i32 %i.bgf, 40
  br i1 %i.bgg, label %bb.oz, label %bb.pc

bb.oz:                                            ; preds = %bb.oy
  %i.bgh = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not26.i50.i = icmp eq i8 %i.bgh, 0
  br i1 %.not26.i50.i, label %bb.pc, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bgi = load i8, ptr %i.df, align 4, !tbaa !239
  %.not27.i51.i = icmp eq i8 %i.bgi, 0
  br i1 %.not27.i51.i, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bgj = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not28.i52.i = icmp eq i8 %i.bgj, 0
  br i1 %.not28.i52.i, label %bb.pc, label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %bb.pb
  %.pre59.i = and i64 %i.bea, 65535
  br label %Move_Zp2_Point.exit.sink.split.i

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %bb.oz, %bb.oy
  %i.bgk = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.bgl = and i64 %i.bea, 65535                  ; 2 uses
  %i.bgm = getelementptr inbounds nuw [16 x i8], ptr %i.bgk, i64 %i.bgl
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8 ; 2 uses
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !259
  %i.bgp = add i64 %i.bgo, %i.bdu
  store i64 %i.bgp, ptr %i.bgn, align 8, !tbaa !259
  br label %Move_Zp2_Point.exit.sink.split.i

Move_Zp2_Point.exit.sink.split.i:                 ; preds = %bb.pc, %._crit_edge58.i, %bb.ou, %._crit_edge57.i
  %.pre-phi60.sink.i = phi i64 [ %i.bfk, %bb.ou ], [ %.pre61.i, %._crit_edge57.i ], [ %.pre59.i, %._crit_edge58.i ], [ %i.bgl, %bb.pc ]
  %i.bgq = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 %.pre-phi60.sink.i ; 2 uses
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !177
  %i.bgt = or i8 %i.bgs, 16
  store i8 %i.bgt, ptr %i.bgr, align 1, !tbaa !177
  br label %Move_Zp2_Point.exit.i543

Move_Zp2_Point.exit.i543:                         ; preds = %Move_Zp2_Point.exit.sink.split.i, %bb.ox, %bb.op, %bb.om, %bb.oj, %bb.oe
  %i.bgu = load i64, ptr %i.fb, align 8, !tbaa !268 ; 2 uses
  %i.bgv = add nsw i64 %i.bgu, -1
  store i64 %i.bgv, ptr %i.fb, align 8, !tbaa !268
  %i.bgw = icmp sgt i64 %i.bgu, 1
  br i1 %i.bgw, label %.lr.ph.i540, label %.loopexit.i539.loopexit, !llvm.loop !582

.loopexit.i539.loopexit:                          ; preds = %Move_Zp2_Point.exit.i543
  %.pre985.a = load i64, ptr %i.dn, align 8, !tbaa !246
  br label %.loopexit.i539

.loopexit.i539:                                   ; preds = %.loopexit.i539.loopexit, %bb.od, %bb.oc, %bb.ob
  %i.bgx = phi i64 [ %.pre985.a, %.loopexit.i539.loopexit ], [ %i.iv, %bb.od ], [ %i.iv, %bb.oc ], [ %i.iv, %bb.ob ]
  store i64 1, ptr %i.fb, align 8, !tbaa !268
  store i64 %i.bgx, ptr %i.dq, align 8, !tbaa !247
end_hunk_4
begin_hunk_5_@TT_RunIns:bb.a
  %.not133207.i = phi i1 [ true, %.lr.ph.thread197.i ], [ %.not133.i, %.lr.ph.i562 ]
  %i.bkz = phi ptr [ %i.bks, %.lr.ph.thread197.i ], [ %i.bkl, %.lr.ph.i562 ]
  %i.bla = phi ptr [ %i.bkr, %.lr.ph.thread197.i ], [ %i.bkw, %.lr.ph.i562 ]
  %.pr178206.i = phi i64 [ %i.bgz, %.lr.ph.thread197.i ], [ %.pr.pre.i, %.lr.ph.i562 ]
  %.0125139179205.i = phi ptr [ %i.bhs, %.lr.ph.thread197.i ], [ %.0125140143.i, %.lr.ph.i562 ]
  %.0121180204.i = phi i64 [ 0, %.lr.ph.thread197.i ], [ %i.bko, %.lr.ph.i562 ]
  %.1181203.i = phi i64 [ 0, %.lr.ph.thread197.i ], [ %.0.i561, %.lr.ph.i562 ]
  br label %.lr.ph.split.us.i563

.lr.ph.split.us.i563:                             ; preds = %bb.pu, %.lr.ph.split.us.preheader.i
  %i.blb = phi i64 [ %.pr178206.i, %.lr.ph.split.us.preheader.i ], [ %i.bmn, %bb.pu ]
  %i.blc = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.bld = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.ble = add nsw i64 %i.bld, -1                 ; 2 uses
  store i64 %i.ble, ptr %i.dn, align 8, !tbaa !246
  %i.blf = getelementptr inbounds [8 x i8], ptr %i.blc, i64 %i.ble
  %i.blg = load i64, ptr %i.blf, align 8, !tbaa !176 ; 3 uses
  %i.blh = trunc i64 %i.blg to i32
  %i.bli = load i16, ptr %i.el, align 4, !tbaa !623
  %i.blj = zext i16 %i.bli to i32
  %.not131.us.i = icmp ult i32 %i.blh, %i.blj
  br i1 %.not131.us.i, label %bb.pr, label %bb.pq

bb.pq:                                            ; preds = %.lr.ph.split.us.i563
  %i.blk = load i8, ptr %i.do, align 1, !tbaa !187
  %.not134.us.i = icmp eq i8 %i.blk, 0
  br i1 %.not134.us.i, label %bb.pu, label %.loopexit.sink.split

bb.pr:                                            ; preds = %.lr.ph.split.us.i563
  %i.bll = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.blm = load ptr, ptr %i.en, align 8, !tbaa !641
  %i.bln = and i64 %i.blg, 4294967295             ; 2 uses
  %i.blo = getelementptr inbounds nuw [16 x i8], ptr %i.blm, i64 %i.bln ; 2 uses
  %i.blp = load i64, ptr %i.blo, align 8, !tbaa !203
  %i.blq = load i64, ptr %.0125139179205.i, align 8, !tbaa !203
  %i.blr = sub i64 %i.blp, %i.blq
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  %i.blt = load i64, ptr %i.bls, align 8, !tbaa !259
  %i.blu = load i64, ptr %i.bla, align 8, !tbaa !259
  %i.blv = sub i64 %i.blt, %i.blu
  %i.blw = call i64 %i.bll(ptr noundef nonnull %0, i64 noundef %i.blr, i64 noundef %i.blv) #22, !inline_history !583 ; 3 uses
  %i.blx = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.bly = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.blz = getelementptr inbounds nuw [16 x i8], ptr %i.bly, i64 %i.bln ; 2 uses
  %i.bma = load i64, ptr %i.blz, align 8, !tbaa !203
  %i.bmb = load i64, ptr %i.bho, align 8, !tbaa !203
  %i.bmc = sub i64 %i.bma, %i.bmb
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.blz, i64 8
  %i.bme = load i64, ptr %i.bmd, align 8, !tbaa !259
  %i.bmf = load i64, ptr %i.bkz, align 8, !tbaa !259
  %i.bmg = sub i64 %i.bme, %i.bmf
  %i.bmh = call i64 %i.blx(ptr noundef nonnull %0, i64 noundef %i.bmc, i64 noundef %i.bmg) #22, !inline_history !583
  %.not132.us.i = icmp eq i64 %i.blw, 0
  %brmerge.i = select i1 %.not132.us.i, i1 true, i1 %.not133207.i
  br i1 %brmerge.i, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.bmi = call i64 @FT_MulDiv(i64 noundef %i.blw, i64 noundef %.0121180204.i, i64 noundef %.1181203.i) #22
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %.0123.us.i = phi i64 [ %i.bmi, %bb.ps ], [ %i.blw, %bb.pr ]
  %i.bmj = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.bmk = trunc i64 %i.blg to i16
  %i.bml = sub i64 %.0123.us.i, %i.bmh
  call void %i.bmj(ptr noundef nonnull %0, ptr noundef nonnull %i.fw, i16 noundef zeroext %i.bmk, i64 noundef %i.bml) #22, !inline_history !583
  %.pre163.i = load i64, ptr %i.fb, align 8, !tbaa !268
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.pq
  %i.bmm = phi i64 [ %.pre163.i, %bb.pt ], [ %i.blb, %bb.pq ] ; 2 uses
  %i.bmn = add nsw i64 %i.bmm, -1                 ; 2 uses
  store i64 %i.bmn, ptr %i.fb, align 8, !tbaa !268
  %i.bmo = icmp sgt i64 %i.bmm, 1
  br i1 %i.bmo, label %.lr.ph.split.us.i563, label %.loopexit.i554, !llvm.loop !584

.lr.ph.split.i557:                                ; preds = %bb.qc, %.lr.ph.split.preheader.i556
  %i.bmp = phi i64 [ %.pr178190.i, %.lr.ph.split.preheader.i556 ], [ %i.bpg, %bb.qc ]
  %i.bmq = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.bmr = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.bms = add nsw i64 %i.bmr, -1                 ; 2 uses
  store i64 %i.bms, ptr %i.dn, align 8, !tbaa !246
  %i.bmt = getelementptr inbounds [8 x i8], ptr %i.bmq, i64 %i.bms
  %i.bmu = load i64, ptr %i.bmt, align 8, !tbaa !176 ; 4 uses
  %i.bmv = trunc i64 %i.bmu to i32
  %i.bmw = load i16, ptr %i.el, align 4, !tbaa !623
  %i.bmx = zext i16 %i.bmw to i32
  %.not131.i = icmp ult i32 %i.bmv, %i.bmx
  br i1 %.not131.i, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %.lr.ph.split.i557
  %i.bmy = load i8, ptr %i.do, align 1, !tbaa !187
  %.not134.i = icmp eq i8 %i.bmy, 0
  br i1 %.not134.i, label %bb.qc, label %.loopexit.sink.split

bb.pw:                                            ; preds = %.lr.ph.split.i557
  %i.bmz = load i64, ptr %i.ft, align 8, !tbaa !303 ; 2 uses
  %i.bna = load i64, ptr %i.fu, align 8, !tbaa !304 ; 2 uses
  %i.bnb = icmp eq i64 %i.bmz, %i.bna
  br i1 %i.bnb, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.bnc = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.bnd = load ptr, ptr %i.gj, align 8, !tbaa !642
  %i.bne = and i64 %i.bmu, 4294967295             ; 2 uses
  %i.bnf = getelementptr inbounds nuw [16 x i8], ptr %i.bnd, i64 %i.bne ; 2 uses
  %i.bng = load i64, ptr %i.bnf, align 8, !tbaa !203
  %i.bnh = load i64, ptr %.0125139179189.i, align 8, !tbaa !203
  %i.bni = sub i64 %i.bng, %i.bnh
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnf, i64 8
  %i.bnk = load i64, ptr %i.bnj, align 8, !tbaa !259
  %i.bnl = load i64, ptr %i.bky, align 8, !tbaa !259
  %i.bnm = sub i64 %i.bnk, %i.bnl
  %i.bnn = call i64 %i.bnc(ptr noundef nonnull %0, i64 noundef %i.bni, i64 noundef %i.bnm) #22, !inline_history !583
  br label %bb.pz

bb.py:                                            ; preds = %bb.pw
  %i.bno = load ptr, ptr %i.gj, align 8, !tbaa !642
  %i.bnp = and i64 %i.bmu, 4294967295             ; 2 uses
  %i.bnq = getelementptr inbounds nuw [16 x i8], ptr %i.bno, i64 %i.bnp ; 2 uses
  %i.bnr = load i64, ptr %i.bnq, align 8, !tbaa !203
  %i.bns = load i64, ptr %.0125139179189.i, align 8, !tbaa !203
  %i.bnt = sub i64 %i.bnr, %i.bns
  %sext152.i = shl i64 %i.bnt, 32
  %i.bnu = ashr exact i64 %sext152.i, 32
  %sext153.i = shl i64 %i.bmz, 32
  %i.bnv = ashr exact i64 %sext153.i, 32
  %i.bnw = mul nsw i64 %i.bnu, %i.bnv             ; 2 uses
  %i.bnx = ashr i64 %i.bnw, 63
  %i.bny = add nsw i64 %i.bnw, 32768
  %i.bnz = add nsw i64 %i.bny, %i.bnx
  %i.boa = shl i64 %i.bnz, 16
  %i.bob = ashr i64 %i.boa, 32
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  %i.bod = load i64, ptr %i.boc, align 8, !tbaa !259
  %i.boe = load i64, ptr %i.bky, align 8, !tbaa !259
  %i.bof = sub i64 %i.bod, %i.boe
  %sext155.i = shl i64 %i.bof, 32
  %i.bog = ashr exact i64 %sext155.i, 32
  %sext156.i = shl i64 %i.bna, 32
  %i.boh = ashr exact i64 %sext156.i, 32
  %i.boi = mul nsw i64 %i.bog, %i.boh             ; 2 uses
  %i.boj = ashr i64 %i.boi, 63
  %i.bok = add nsw i64 %i.boi, 32768
  %i.bol = add nsw i64 %i.bok, %i.boj
  %i.bom = shl i64 %i.bol, 16
  %i.bon = ashr i64 %i.bom, 32
  %i.boo = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.bop = call i64 %i.boo(ptr noundef nonnull %0, i64 noundef %i.bob, i64 noundef %i.bon) #22, !inline_history !583
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %.pre-phi.i558 = phi i64 [ %i.bne, %bb.px ], [ %i.bnp, %bb.py ]
  %.0124.i = phi i64 [ %i.bnn, %bb.px ], [ %i.bop, %bb.py ] ; 3 uses
  %i.boq = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.bor = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.bos = getelementptr inbounds nuw [16 x i8], ptr %i.bor, i64 %.pre-phi.i558 ; 2 uses
  %i.bot = load i64, ptr %i.bos, align 8, !tbaa !203
  %i.bou = load i64, ptr %i.bho, align 8, !tbaa !203
  %i.bov = sub i64 %i.bot, %i.bou
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  %i.box = load i64, ptr %i.bow, align 8, !tbaa !259
  %i.boy = load i64, ptr %i.bkx, align 8, !tbaa !259
  %i.boz = sub i64 %i.box, %i.boy
  %i.bpa = call i64 %i.boq(ptr noundef nonnull %0, i64 noundef %i.bov, i64 noundef %i.boz) #22, !inline_history !583
  %.not132.i = icmp eq i64 %.0124.i, 0
  %brmerge158.i = select i1 %.not132.i, i1 true, i1 %.not133191.i
  br i1 %brmerge158.i, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.bpb = call i64 @FT_MulDiv(i64 noundef %.0124.i, i64 noundef %.0121180188.i, i64 noundef %.1181187.i) #22
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %.0123.i = phi i64 [ %i.bpb, %bb.qa ], [ %.0124.i, %bb.pz ]
  %i.bpc = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.bpd = trunc i64 %i.bmu to i16
  %i.bpe = sub i64 %.0123.i, %i.bpa
  call void %i.bpc(ptr noundef nonnull %0, ptr noundef nonnull %i.fw, i16 noundef zeroext %i.bpd, i64 noundef %i.bpe) #22, !inline_history !583
  %.pre.i559 = load i64, ptr %i.fb, align 8, !tbaa !268
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.pv
  %i.bpf = phi i64 [ %.pre.i559, %bb.qb ], [ %i.bmp, %bb.pv ] ; 2 uses
  %i.bpg = add nsw i64 %i.bpf, -1                 ; 2 uses
  store i64 %i.bpg, ptr %i.fb, align 8, !tbaa !268
  %i.bph = icmp sgt i64 %i.bpf, 1
  br i1 %i.bph, label %.lr.ph.split.i557, label %.loopexit.i554, !llvm.loop !584

.loopexit.sink.split.i:                           ; preds = %bb.pj, %bb.pe
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %.loopexit.i554

.loopexit.i554:                                   ; preds = %bb.qc, %bb.pu, %.loopexit.sink.split.i, %.thread173.i, %.thread192.i, %bb.pp, %bb.pj, %bb.pe
  store i64 1, ptr %i.fb, align 8, !tbaa !268
  %i.bpi = load i64, ptr %i.dn, align 8, !tbaa !246
  store i64 %i.bpi, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.qd:                                            ; preds = %bb.ao, %bb.ao
  %i.bpj = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.bpk = trunc i64 %i.bpj to i16                ; 5 uses
  %i.bpl = load i16, ptr %i.ek, align 4, !tbaa !257
  %.not.i565 = icmp ugt i16 %i.bpl, %i.bpk
  br i1 %.not.i565, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.bpm = load i16, ptr %i.gf, align 8, !tbaa !262 ; 3 uses
  %i.bpn = load i16, ptr %i.fn, align 4, !tbaa !260
  %.not43.i566 = icmp ult i16 %i.bpm, %i.bpn
  br i1 %.not43.i566, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  %i.bpo = load i8, ptr %i.do, align 1, !tbaa !187
  %.not45.i565 = icmp eq i8 %i.bpo, 0
  br i1 %.not45.i565, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.qg:                                            ; preds = %bb.qe
  %i.bpp = load i16, ptr %i.fq, align 2, !tbaa !266
  %i.bpq = icmp eq i16 %i.bpp, 0
  br i1 %i.bpq, label %bb.qh, label %._crit_edge.i567

._crit_edge.i567:                                 ; preds = %bb.qg
  %.pre46.i = and i64 %i.bpj, 65535
  br label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.bpr = load ptr, ptr %i.em, align 8, !tbaa !302
  %i.bps = and i64 %i.bpj, 65535                  ; 4 uses
  %i.bpt = getelementptr inbounds nuw [16 x i8], ptr %i.bpr, i64 %i.bps
  %i.bpu = load ptr, ptr %i.fv, align 8, !tbaa !300
  %i.bpv = zext i16 %i.bpm to i64
  %i.bpw = getelementptr inbounds nuw [16 x i8], ptr %i.bpu, i64 %i.bpv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bpt, ptr noundef nonnull align 8 dereferenceable(16) %i.bpw, i64 16, i1 false), !tbaa.struct !306
  %i.bpx = load ptr, ptr %i.cr, align 8, !tbaa !621
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.bpz = load i64, ptr %i.bpy, align 8, !tbaa !176
  call void %i.bpx(ptr noundef nonnull %0, ptr noundef nonnull %i.gh, i16 noundef zeroext %i.bpk, i64 noundef %i.bpz) #22, !inline_history !585
  %i.bqa = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.bqb = getelementptr inbounds nuw [16 x i8], ptr %i.bqa, i64 %i.bps
  %i.bqc = load ptr, ptr %i.em, align 8, !tbaa !302
  %i.bqd = getelementptr inbounds nuw [16 x i8], ptr %i.bqc, i64 %i.bps
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqb, ptr noundef nonnull align 8 dereferenceable(16) %i.bqd, i64 16, i1 false), !tbaa.struct !306
  %.pre.i570 = load i16, ptr %i.gf, align 8, !tbaa !262
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %._crit_edge.i567
  %.pre-phi.i568 = phi i64 [ %.pre46.i, %._crit_edge.i567 ], [ %i.bps, %bb.qh ]
  %i.bqe = phi i16 [ %i.bpm, %._crit_edge.i567 ], [ %.pre.i570, %bb.qh ]
  %i.bqf = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.bqg = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.bqh = getelementptr inbounds nuw [16 x i8], ptr %i.bqg, i64 %.pre-phi.i568 ; 2 uses
  %i.bqi = load i64, ptr %i.bqh, align 8, !tbaa !203
  %i.bqj = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.bqk = zext i16 %i.bqe to i64
  %i.bql = getelementptr inbounds nuw [16 x i8], ptr %i.bqj, i64 %i.bqk ; 2 uses
  %i.bqm = load i64, ptr %i.bql, align 8, !tbaa !203
  %i.bqn = sub i64 %i.bqi, %i.bqm
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %i.bqp = load i64, ptr %i.bqo, align 8, !tbaa !259
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bql, i64 8
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !259
  %i.bqs = sub i64 %i.bqp, %i.bqr
  %i.bqt = call i64 %i.bqf(ptr noundef nonnull %0, i64 noundef %i.bqn, i64 noundef %i.bqs) #22, !inline_history !585
  %i.bqu = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.bqw = load i64, ptr %i.bqv, align 8, !tbaa !176
  %i.bqx = sub i64 %i.bqw, %i.bqt
  call void %i.bqu(ptr noundef nonnull %0, ptr noundef nonnull %i.gh, i16 noundef zeroext %i.bpk, i64 noundef %i.bqx) #22, !inline_history !585
  %i.bqy = load i16, ptr %i.gf, align 8, !tbaa !262
  store i16 %i.bqy, ptr %i.gg, align 2, !tbaa !263
  store i16 %i.bpk, ptr %i.gi, align 4, !tbaa !264
  %i.bqz = load i8, ptr %i.dj, align 8, !tbaa !244
  %i.bra = and i8 %i.bqz, 1
  %.not44.i569 = icmp eq i8 %i.bra, 0
  br i1 %.not44.i569, label %Ins_SPVTL.exitthread-pre-split, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  store i16 %i.bpk, ptr %i.gf, align 8, !tbaa !262
  br label %Ins_SPVTL.exitthread-pre-split

bb.qk:                                            ; preds = %bb.ao
  %i.brb = load i64, ptr %i.dm, align 8, !tbaa !245
  %i.brc = load i64, ptr %i.fb, align 8, !tbaa !268 ; 3 uses
  %i.brd = icmp slt i64 %i.brb, %i.brc
  br i1 %i.brd, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bre = load i16, ptr %i.gf, align 8, !tbaa !262
  %i.brf = load i16, ptr %i.fn, align 4, !tbaa !260
  %.not.i571 = icmp ult i16 %i.bre, %i.brf
  br i1 %.not.i571, label %thread-pre-split.i573, label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk
  %i.brg = load i8, ptr %i.do, align 1, !tbaa !187
  %.not34.i = icmp eq i8 %i.brg, 0
  br i1 %.not34.i, label %.loopexit.i572, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %.loopexit.i572

thread-pre-split.i573:                            ; preds = %bb.ql
  %i.brh = icmp sgt i64 %i.brc, 0
  br i1 %i.brh, label %.lr.ph.i574, label %.loopexit.i572

.lr.ph.i574:                                      ; preds = %thread-pre-split.i573, %bb.qq
  %i.bri = phi i64 [ %i.bsk, %bb.qq ], [ %i.brc, %thread-pre-split.i573 ]
  %i.brj = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.brk = add nsw i64 %i.brj, -1                 ; 2 uses
  store i64 %i.brk, ptr %i.dn, align 8, !tbaa !246
  %i.brl = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.brm = getelementptr inbounds [8 x i8], ptr %i.brl, i64 %i.brk
  %i.brn = load i64, ptr %i.brm, align 8, !tbaa !176 ; 2 uses
  %i.bro = load i16, ptr %i.ek, align 4, !tbaa !257
  %19 = trunc i64 %i.brn to i16                   ; 2 uses
  %.not32.i576 = icmp ugt i16 %i.bro, %19
  br i1 %.not32.i576, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %.lr.ph.i574
  %i.brp = load i8, ptr %i.do, align 1, !tbaa !187
  %.not33.i = icmp eq i8 %i.brp, 0
  br i1 %.not33.i, label %bb.qq, label %.loopexit.sink.split

bb.qp:                                            ; preds = %.lr.ph.i574
  %i.brq = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.brr = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.brs = and i64 %i.brn, 65535
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brr, i64 %i.brs ; 2 uses
  %i.bru = load i64, ptr %i.brt, align 8, !tbaa !203
  %i.brv = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.brw = load i16, ptr %i.gf, align 8, !tbaa !262
  %i.brx = zext i16 %i.brw to i64
  %i.bry = getelementptr inbounds nuw [16 x i8], ptr %i.brv, i64 %i.brx ; 2 uses
  %i.brz = load i64, ptr %i.bry, align 8, !tbaa !203
  %i.bsa = sub i64 %i.bru, %i.brz
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  %i.bsc = load i64, ptr %i.bsb, align 8, !tbaa !259
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %i.bse = load i64, ptr %i.bsd, align 8, !tbaa !259
  %i.bsf = sub i64 %i.bsc, %i.bse
  %i.bsg = call i64 %i.brq(ptr noundef nonnull %0, i64 noundef %i.bsa, i64 noundef %i.bsf) #22, !inline_history !586
  %i.bsh = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.bsi = sub i64 0, %i.bsg
  call void %i.bsh(ptr noundef nonnull %0, ptr noundef nonnull %i.gh, i16 noundef zeroext %19, i64 noundef %i.bsi) #22, !inline_history !586
  %.pre.i576 = load i64, ptr %i.fb, align 8, !tbaa !268
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %i.bsj = phi i64 [ %i.bri, %bb.qo ], [ %.pre.i576, %bb.qp ] ; 2 uses
  %i.bsk = add nsw i64 %i.bsj, -1                 ; 2 uses
  store i64 %i.bsk, ptr %i.fb, align 8, !tbaa !268
  %i.bsl = icmp sgt i64 %i.bsj, 1
  br i1 %i.bsl, label %.lr.ph.i574, label %.loopexit.i572.loopexit, !llvm.loop !587

.loopexit.i572.loopexit:                          ; preds = %bb.qq
  %.pre984.a = load i64, ptr %i.dn, align 8, !tbaa !246
  br label %.loopexit.i572

.loopexit.i572:                                   ; preds = %.loopexit.i572.loopexit, %thread-pre-split.i573, %bb.qn, %bb.qm
  %i.bsm = phi i64 [ %.pre984.a, %.loopexit.i572.loopexit ], [ %i.iv, %thread-pre-split.i573 ], [ %i.iv, %bb.qn ], [ %i.iv, %bb.qm ]
  store i64 1, ptr %i.fb, align 8, !tbaa !268
  store i64 %i.bsm, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.qr:                                            ; preds = %bb.ao
  store i32 2, ptr %i.cz, align 8, !tbaa !237
  store ptr @Round_To_Double_Grid, ptr %i.fc, align 8, !tbaa !238
  br label %Ins_SPVTL.exitthread-pre-split

bb.qs:                                            ; preds = %bb.ao, %bb.ao
  %.val394 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.bsn = getelementptr i8, ptr %i.jk, i64 8
  %.val395 = load i64, ptr %i.bsn, align 8, !tbaa !176 ; 2 uses
  %i.bso = trunc i64 %.val394 to i16              ; 4 uses
  %i.bsp = load i16, ptr %i.fn, align 4, !tbaa !260
  %.not.i578 = icmp ugt i16 %i.bsp, %i.bso
  br i1 %.not.i578, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.bsq = load i64, ptr %i.n, align 8, !tbaa !219
  %.not55.i = icmp ult i64 %.val395, %i.bsq
  br i1 %.not55.i, label %bb.qw, label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %i.bsr = load i8, ptr %i.do, align 1, !tbaa !187
  %.not57.i578 = icmp eq i8 %i.bsr, 0
  br i1 %.not57.i578, label %Ins_MIAP.exit, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_MIAP.exit

bb.qw:                                            ; preds = %bb.qt
  %i.bss = load ptr, ptr %i.at, align 8, !tbaa !224
  %i.bst = call i64 %i.bss(ptr noundef nonnull %0, i64 noundef %.val395) #22, !inline_history !588 ; 4 uses
  %i.bsu = load i16, ptr %i.fp, align 4, !tbaa !265
  %i.bsv = icmp eq i16 %i.bsu, 0
  br i1 %i.bsv, label %bb.qx, label %._crit_edge.i579

._crit_edge.i579:                                 ; preds = %bb.qw
  %.pre.i580 = and i64 %.val394, 65535
  br label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  %i.bsw = trunc i64 %i.bst to i32                ; 2 uses
  %i.bsx = load i16, ptr %i.az, align 2, !tbaa !227
  %i.bsy = sext i16 %i.bsx to i32
  %i.bsz = call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.bsw, i32 noundef %i.bsy) #23
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = load ptr, ptr %i.fv, align 8, !tbaa !300
  %i.btc = and i64 %.val394, 65535                ; 3 uses
  %i.btd = getelementptr inbounds nuw [16 x i8], ptr %i.btb, i64 %i.btc ; 3 uses
  store i64 %i.bta, ptr %i.btd, align 8, !tbaa !203
  %i.bte = load i16, ptr %i.ev, align 8, !tbaa !230
  %i.btf = sext i16 %i.bte to i32
  %i.btg = call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.bsw, i32 noundef %i.btf) #23
  %i.bth = sext i32 %i.btg to i64
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btd, i64 8
  store i64 %i.bth, ptr %i.bti, align 8, !tbaa !259
  %i.btj = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.btk = getelementptr inbounds nuw [16 x i8], ptr %i.btj, i64 %i.btc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btk, ptr noundef nonnull align 8 dereferenceable(16) %i.btd, i64 16, i1 false), !tbaa.struct !306
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %._crit_edge.i579
  %.pre-phi.i581 = phi i64 [ %.pre.i580, %._crit_edge.i579 ], [ %i.btc, %bb.qx ]
  %i.btl = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.btm = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.btn = getelementptr inbounds nuw [16 x i8], ptr %i.btm, i64 %.pre-phi.i581 ; 2 uses
  %i.bto = load i64, ptr %i.btn, align 8, !tbaa !203
  %i.btp = getelementptr inbounds nuw i8, ptr %i.btn, i64 8
  %i.btq = load i64, ptr %i.btp, align 8, !tbaa !259
  %i.btr = call i64 %i.btl(ptr noundef nonnull %0, i64 noundef %i.bto, i64 noundef %i.btq) #22, !inline_history !588 ; 3 uses
  %i.bts = load i8, ptr %i.dj, align 8, !tbaa !244
  %i.btt = and i8 %i.bts, 1
  %.not56.i582 = icmp eq i8 %i.btt, 0
  br i1 %.not56.i582, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.btu = load i64, ptr %i.ge, align 8, !tbaa !274
  %i.btv = sub i64 %i.bst, %i.btr
  %spec.select.i583 = call i64 @llvm.abs.i64(i64 %i.btv, i1 false)
  %i.btw = icmp sgt i64 %spec.select.i583, %i.btu
  %.051.i = select i1 %i.btw, i64 %i.btr, i64 %i.bst
  %i.btx = load ptr, ptr %i.fc, align 8, !tbaa !238
  %i.bty = call i64 %i.btx(ptr noundef nonnull %0, i64 noundef %.051.i, i32 noundef 3) #22, !inline_history !588
  br label %bb.ra

bb.ra:                                            ; preds = %bb.qz, %bb.qy
  %.1.i584 = phi i64 [ %i.bty, %bb.qz ], [ %i.bst, %bb.qy ]
  %i.btz = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.bua = sub i64 %.1.i584, %i.btr
  call void %i.btz(ptr noundef nonnull %0, ptr noundef nonnull %i.gd, i16 noundef zeroext %i.bso, i64 noundef %i.bua) #22, !inline_history !588
  br label %Ins_MIAP.exit

Ins_MIAP.exit:                                    ; preds = %bb.qu, %bb.qv, %bb.ra
  store i16 %i.bso, ptr %i.gf, align 8, !tbaa !262
  store i16 %i.bso, ptr %i.gg, align 2, !tbaa !263
  br label %Ins_SPVTL.exitthread-pre-split

bb.rb:                                            ; preds = %bb.ao
  %i.bub = load i64, ptr %i.di, align 8, !tbaa !241
  %i.buc = getelementptr i8, ptr %i.ho, i64 %i.bub
  %i.bud = getelementptr i8, ptr %i.buc, i64 1
  %i.bue = load i8, ptr %i.bud, align 1, !tbaa !177 ; 4 uses
  %i.buf = zext i8 %i.bue to i32
  %i.bug = add nsw i64 %i.jh, 1
  %i.buh = load i64, ptr %i.dm, align 8, !tbaa !245
  %i.bui = sub i64 %i.bug, %i.buh
  %i.buj = trunc i64 %i.bui to i32
  %.not.i585 = icmp ult i32 %i.buf, %i.buj
  br i1 %.not.i585, label %.preheader.i, label %.loopexit.sink.split

.preheader.i:                                     ; preds = %bb.rb
  %.not1718.i = icmp eq i8 %i.bue, 0
  br i1 %.not1718.i, label %._crit_edge.i590, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.buk = zext i8 %i.bue to i64                  ; 3 uses
  %xtraiter1363 = and i64 %i.buk, 3               ; 3 uses
  %i.bul = icmp ult i8 %i.bue, 4
  br i1 %i.bul, label %.lr.ph.i586.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1366 = and i64 %i.buk, 252
  br label %.lr.ph.i586

.lr.ph.i586:                                      ; preds = %.lr.ph.i586, %.lr.ph.preheader.i.new
  %indvars.iv.i587 = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i588.3, %.lr.ph.i586 ] ; 6 uses
  %niter1367 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1367.next.3, %.lr.ph.i586 ]
  %i.bum = load i64, ptr %i.di, align 8, !tbaa !241
  %i.bun = getelementptr i8, ptr %i.ho, i64 %i.bum
  %i.buo = getelementptr i8, ptr %i.bun, i64 %indvars.iv.i587
  %i.bup = getelementptr i8, ptr %i.buo, i64 1
  %i.buq = load i8, ptr %i.bup, align 1, !tbaa !177
  %i.bur = zext i8 %i.buq to i64
  %i.bus = getelementptr [8 x i8], ptr %i.jk, i64 %indvars.iv.i587
  %i.but = getelementptr i8, ptr %i.bus, i64 -8
  store i64 %i.bur, ptr %i.but, align 8, !tbaa !176
  %indvars.iv.next.i588 = add nuw nsw i64 %indvars.iv.i587, 1 ; 2 uses
  %i.buu = load i64, ptr %i.di, align 8, !tbaa !241
  %i.buv = getelementptr i8, ptr %i.ho, i64 %i.buu
  %i.buw = getelementptr i8, ptr %i.buv, i64 %indvars.iv.next.i588
  %i.bux = getelementptr i8, ptr %i.buw, i64 1
  %i.buy = load i8, ptr %i.bux, align 1, !tbaa !177
  %i.buz = zext i8 %i.buy to i64
  %i.bva = getelementptr [8 x i8], ptr %i.jk, i64 %indvars.iv.next.i588
  %i.bvb = getelementptr i8, ptr %i.bva, i64 -8
  store i64 %i.buz, ptr %i.bvb, align 8, !tbaa !176
  %indvars.iv.next.i588.1 = add nuw nsw i64 %indvars.iv.i587, 2 ; 2 uses
  %i.bvc = load i64, ptr %i.di, align 8, !tbaa !241
  %i.bvd = getelementptr i8, ptr %i.ho, i64 %i.bvc
  %i.bve = getelementptr i8, ptr %i.bvd, i64 %indvars.iv.next.i588.1
  %i.bvf = getelementptr i8, ptr %i.bve, i64 1
  %i.bvg = load i8, ptr %i.bvf, align 1, !tbaa !177
  %i.bvh = zext i8 %i.bvg to i64
  %i.bvi = getelementptr [8 x i8], ptr %i.jk, i64 %indvars.iv.next.i588.1
  %i.bvj = getelementptr i8, ptr %i.bvi, i64 -8
  store i64 %i.bvh, ptr %i.bvj, align 8, !tbaa !176
  %indvars.iv.next.i588.2 = add nuw nsw i64 %indvars.iv.i587, 3 ; 2 uses
  %i.bvk = load i64, ptr %i.di, align 8, !tbaa !241
  %i.bvl = getelementptr i8, ptr %i.ho, i64 %i.bvk
  %i.bvm = getelementptr i8, ptr %i.bvl, i64 %indvars.iv.next.i588.2
  %i.bvn = getelementptr i8, ptr %i.bvm, i64 1
  %i.bvo = load i8, ptr %i.bvn, align 1, !tbaa !177
  %i.bvp = zext i8 %i.bvo to i64
  %i.bvq = getelementptr [8 x i8], ptr %i.jk, i64 %indvars.iv.next.i588.2
  %i.bvr = getelementptr i8, ptr %i.bvq, i64 -8
  store i64 %i.bvp, ptr %i.bvr, align 8, !tbaa !176
  %indvars.iv.next.i588.3 = add nuw nsw i64 %indvars.iv.i587, 4 ; 2 uses
  %niter1367.next.3 = add i64 %niter1367, 4       ; 2 uses
  %niter1367.ncmp.3 = icmp eq i64 %niter1367.next.3, %unroll_iter1366
  br i1 %niter1367.ncmp.3, label %._crit_edge.i590.loopexit.unr-lcssa, label %.lr.ph.i586, !llvm.loop !589

._crit_edge.i590.loopexit.unr-lcssa:              ; preds = %.lr.ph.i586
  %lcmp.mod1364.not = icmp eq i64 %xtraiter1363, 0
  br i1 %lcmp.mod1364.not, label %._crit_edge.i590.loopexit, label %.lr.ph.i586.epil.preheader

.lr.ph.i586.epil.preheader:                       ; preds = %._crit_edge.i590.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i587.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i588.3, %._crit_edge.i590.loopexit.unr-lcssa ]
  %lcmp.mod1365 = icmp ne i64 %xtraiter1363, 0
  call void @llvm.assume(i1 %lcmp.mod1365)
  br label %.lr.ph.i586.epil

.lr.ph.i586.epil:                                 ; preds = %.lr.ph.i586.epil, %.lr.ph.i586.epil.preheader
  %indvars.iv.i587.epil = phi i64 [ %indvars.iv.i587.epil.init, %.lr.ph.i586.epil.preheader ], [ %indvars.iv.next.i588.epil, %.lr.ph.i586.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i586.epil.preheader ], [ %epil.iter.next, %.lr.ph.i586.epil ]
  %i.bvs = load i64, ptr %i.di, align 8, !tbaa !241
  %i.bvt = getelementptr i8, ptr %i.ho, i64 %i.bvs
  %i.bvu = getelementptr i8, ptr %i.bvt, i64 %indvars.iv.i587.epil
  %i.bvv = getelementptr i8, ptr %i.bvu, i64 1
  %i.bvw = load i8, ptr %i.bvv, align 1, !tbaa !177
  %i.bvx = zext i8 %i.bvw to i64
  %i.bvy = getelementptr [8 x i8], ptr %i.jk, i64 %indvars.iv.i587.epil
  %i.bvz = getelementptr i8, ptr %i.bvy, i64 -8
  store i64 %i.bvx, ptr %i.bvz, align 8, !tbaa !176
  %indvars.iv.next.i588.epil = add nuw nsw i64 %indvars.iv.i587.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1363
  br i1 %epil.iter.cmp.not, label %._crit_edge.i590.loopexit, label %.lr.ph.i586.epil, !llvm.loop !590

._crit_edge.i590.loopexit:                        ; preds = %.lr.ph.i586.epil, %._crit_edge.i590.loopexit.unr-lcssa
  %.pre983.a = load i64, ptr %i.dq, align 8, !tbaa !247
  br label %._crit_edge.i590

._crit_edge.i590:                                 ; preds = %.preheader.i, %._crit_edge.i590.loopexit
  %.pre-phi = phi i64 [ %i.buk, %._crit_edge.i590.loopexit ], [ 0, %.preheader.i ]
  %i.bwa = phi i64 [ %.pre983.a, %._crit_edge.i590.loopexit ], [ %i.jg, %.preheader.i ]
  %i.bwb = add nsw i64 %i.bwa, %.pre-phi
  store i64 %i.bwb, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.rc:                                            ; preds = %bb.ao
  %i.bwc = load i64, ptr %i.di, align 8, !tbaa !241 ; 2 uses
  %i.bwd = getelementptr i8, ptr %i.ho, i64 %i.bwc
  %i.bwe = getelementptr i8, ptr %i.bwd, i64 1
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !177 ; 5 uses
end_hunk_5
begin_hunk_6_@TT_RunIns:bb.a
.lr.ph.i594.epil.preheader:                       ; preds = %._crit_edge.i598.loopexit.unr-lcssa, %.lr.ph.preheader.i592
  %indvars.iv.i595.epil.init = phi i64 [ 0, %.lr.ph.preheader.i592 ], [ %indvars.iv.next.i596.1, %._crit_edge.i598.loopexit.unr-lcssa ]
  %lcmp.mod1362 = trunc i8 %i.bwf to i1
  call void @llvm.assume(i1 %lcmp.mod1362)
  %i.bxm = load i64, ptr %i.di, align 8, !tbaa !241 ; 2 uses
  %i.bxn = add nsw i64 %i.bxm, 2
  store i64 %i.bxn, ptr %i.di, align 8, !tbaa !241
  %i.bxo = getelementptr inbounds i8, ptr %i.ho, i64 %i.bxm ; 2 uses
  %i.bxp = load i8, ptr %i.bxo, align 1, !tbaa !177
  %i.bxq = zext i8 %i.bxp to i16
  %i.bxr = shl nuw i16 %i.bxq, 8
  %i.bxs = getelementptr i8, ptr %i.bxo, i64 1
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !177
  %i.bxu = zext i8 %i.bxt to i16
  %i.bxv = or disjoint i16 %i.bxr, %i.bxu
  %i.bxw = sext i16 %i.bxv to i64
  %i.bxx = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i595.epil.init
  store i64 %i.bxw, ptr %i.bxx, align 8, !tbaa !176
  br label %._crit_edge.i598.loopexit

._crit_edge.i598.loopexit:                        ; preds = %._crit_edge.i598.loopexit.unr-lcssa, %.lr.ph.i594.epil.preheader
  %.pre982.a = load i64, ptr %i.dq, align 8, !tbaa !247
  br label %._crit_edge.i598

._crit_edge.i598:                                 ; preds = %bb.rd, %._crit_edge.i598.loopexit
  %.pre-phi995 = phi i64 [ %wide.trip.count.i593, %._crit_edge.i598.loopexit ], [ 0, %bb.rd ]
  %i.bxy = phi i64 [ %.pre982.a, %._crit_edge.i598.loopexit ], [ %i.jg, %bb.rd ]
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  %i.bxz = add nsw i64 %i.bxy, %.pre-phi995
  store i64 %i.bxz, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.re:                                            ; preds = %bb.ao
  %i.bya = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.byb = load i16, ptr %i.fy, align 8, !tbaa !307
  %i.byc = zext i16 %i.byb to i64                 ; 2 uses
  %.not.i599 = icmp ult i64 %i.bya, %i.byc
  br i1 %.not.i599, label %bb.rg, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.byd = load i8, ptr %i.do, align 1, !tbaa !187
  %.not28.i600 = icmp eq i8 %i.byd, 0
  br i1 %.not28.i600, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.rg:                                            ; preds = %bb.re
  %i.bye = load i32, ptr %i.ay, align 8, !tbaa !226
  %i.byf = icmp eq i32 %i.bye, 3
  %i.byg = load ptr, ptr %i.fz, align 8, !tbaa !308 ; 3 uses
  br i1 %i.byf, label %bb.rh, label %._crit_edge.i601

bb.rh:                                            ; preds = %bb.rg
  %i.byh = load ptr, ptr %i.ga, align 8, !tbaa !157 ; 2 uses
  %.not26.i = icmp eq ptr %i.byg, %i.byh
  br i1 %.not26.i, label %._crit_edge.i601, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.byi = load ptr, ptr %i.gb, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.byj = load i16, ptr %i.gc, align 8, !tbaa !158
  %i.byk = zext i16 %i.byj to i64
  %i.byl = call ptr @ft_mem_qrealloc(ptr noundef %i.byi, i64 noundef 8, i64 noundef %i.byk, i64 noundef %i.byc, ptr noundef %i.byh, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.byl, ptr %i.ga, align 8, !tbaa !157
  %i.bym = load i32, ptr %i.a, align 4, !tbaa !9  ; 3 uses
  store i32 %i.bym, ptr %i.dt, align 8, !tbaa !256
  %.not27.i = icmp eq i32 %i.bym, 0
  br i1 %.not27.i, label %bb.rj, label %.critedge.i602

bb.rj:                                            ; preds = %bb.ri
  %i.byn = load i16, ptr %i.fy, align 8, !tbaa !307 ; 2 uses
  store i16 %i.byn, ptr %i.gc, align 8, !tbaa !158
  %i.byo = load ptr, ptr %i.fz, align 8, !tbaa !308
  %i.byp = zext i16 %i.byn to i64
  %i.byq = shl nuw nsw i64 %i.byp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.byl, ptr align 8 %i.byo, i64 %i.byq, i1 false)
  %i.byr = load ptr, ptr %i.ga, align 8, !tbaa !157 ; 2 uses
  store ptr %i.byr, ptr %i.fz, align 8, !tbaa !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %._crit_edge.i601

._crit_edge.i601:                                 ; preds = %bb.rj, %bb.rh, %bb.rg
  %i.bys = phi ptr [ %i.byg, %bb.rh ], [ %i.byr, %bb.rj ], [ %i.byg, %bb.rg ]
  %i.byt = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !176
  %i.byv = getelementptr inbounds nuw [8 x i8], ptr %i.bys, i64 %i.bya
  store i64 %i.byu, ptr %i.byv, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

.critedge.i602:                                   ; preds = %bb.ri
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %Ins_SPVTL.exit

bb.rk:                                            ; preds = %bb.ao
  %i.byw = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.byx = load i16, ptr %i.fy, align 8, !tbaa !307
  %i.byy = zext i16 %i.byx to i64
  %.not.i603 = icmp ult i64 %i.byw, %i.byy
  br i1 %.not.i603, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.byz = load i8, ptr %i.do, align 1, !tbaa !187
  %.not8.i = icmp eq i8 %i.byz, 0
  br i1 %.not8.i, label %bb.rn, label %.loopexit.sink.split

bb.rm:                                            ; preds = %bb.rk
  %i.bza = load ptr, ptr %i.fz, align 8, !tbaa !308
  %i.bzb = getelementptr inbounds nuw [8 x i8], ptr %i.bza, i64 %i.byw
  %i.bzc = load i64, ptr %i.bzb, align 8, !tbaa !176
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %storemerge.i604 = phi i64 [ %i.bzc, %bb.rm ], [ 0, %bb.rl ]
  store i64 %storemerge.i604, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.ro:                                            ; preds = %bb.ao
  %i.bzd = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.bze = load i64, ptr %i.n, align 8, !tbaa !219
  %.not.i605 = icmp ult i64 %i.bzd, %i.bze
  br i1 %.not.i605, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bzf = load i8, ptr %i.do, align 1, !tbaa !187
  %.not8.i606 = icmp eq i8 %i.bzf, 0
  br i1 %.not8.i606, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.rq:                                            ; preds = %bb.ro
  %i.bzg = load ptr, ptr %i.au, align 8, !tbaa !619
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.bzi = load i64, ptr %i.bzh, align 8, !tbaa !176
  call void %i.bzg(ptr noundef nonnull %0, i64 noundef %i.bzd, i64 noundef %i.bzi) #22, !inline_history !592
  br label %Ins_SPVTL.exitthread-pre-split

bb.rr:                                            ; preds = %bb.ao
  %i.bzj = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.bzk = load i64, ptr %i.n, align 8, !tbaa !219
  %.not.i607 = icmp ult i64 %i.bzj, %i.bzk
  br i1 %.not.i607, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bzl = load i8, ptr %i.do, align 1, !tbaa !187
  %.not9.i = icmp eq i8 %i.bzl, 0
  br i1 %.not9.i, label %bb.ru, label %.loopexit.sink.split

bb.rt:                                            ; preds = %bb.rr
  %i.bzm = load ptr, ptr %i.at, align 8, !tbaa !224
  %i.bzn = call i64 %i.bzm(ptr noundef nonnull %0, i64 noundef %i.bzj) #22, !inline_history !593
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %storemerge.i608 = phi i64 [ %i.bzn, %bb.rt ], [ 0, %bb.rs ]
  store i64 %storemerge.i608, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.rv:                                            ; preds = %bb.ao, %bb.ao
  %i.bzo = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.bzp = load i16, ptr %i.el, align 4, !tbaa !623
  %i.bzq = zext i16 %i.bzp to i64
  %.not.i609 = icmp ult i64 %i.bzo, %i.bzq
  br i1 %.not.i609, label %bb.ry, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.bzr = load i8, ptr %i.do, align 1, !tbaa !187
  %.not21.i610 = icmp eq i8 %i.bzr, 0
  br i1 %.not21.i610, label %Ins_GC.exit, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_GC.exit

bb.ry:                                            ; preds = %bb.rv
  %i.bzs = and i8 %i.hq, 1
  %.not20.i612 = icmp eq i8 %i.bzs, 0
  br i1 %.not20.i612, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bzt = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.bzu = load ptr, ptr %i.en, align 8, !tbaa !641
  %i.bzv = getelementptr inbounds nuw [16 x i8], ptr %i.bzu, i64 %i.bzo ; 2 uses
  %i.bzw = load i64, ptr %i.bzv, align 8, !tbaa !203
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.bzy = load i64, ptr %i.bzx, align 8, !tbaa !259
  %i.bzz = call i64 %i.bzt(ptr noundef nonnull %0, i64 noundef %i.bzw, i64 noundef %i.bzy) #22, !inline_history !594
  br label %Ins_GC.exit

bb.sa:                                            ; preds = %bb.ry
  %i.caa = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.cab = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.cac = getelementptr inbounds nuw [16 x i8], ptr %i.cab, i64 %i.bzo ; 2 uses
  %i.cad = load i64, ptr %i.cac, align 8, !tbaa !203
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cac, i64 8
  %i.caf = load i64, ptr %i.cae, align 8, !tbaa !259
  %i.cag = call i64 %i.caa(ptr noundef nonnull %0, i64 noundef %i.cad, i64 noundef %i.caf) #22, !inline_history !594
  br label %Ins_GC.exit

Ins_GC.exit:                                      ; preds = %bb.rw, %bb.rx, %bb.rz, %bb.sa
  %.0.i611 = phi i64 [ %i.cag, %bb.sa ], [ %i.bzz, %bb.rz ], [ 0, %bb.rx ], [ 0, %bb.rw ]
  store i64 %.0.i611, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.sb:                                            ; preds = %bb.ao
  %i.cah = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.cai = load i16, ptr %i.el, align 4, !tbaa !623
  %20 = trunc i64 %i.cah to i16                   ; 2 uses
  %.not.i614 = icmp ugt i16 %i.cai, %20
  br i1 %.not.i614, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.caj = load i8, ptr %i.do, align 1, !tbaa !187
  %.not21.i614 = icmp eq i8 %i.caj, 0
  br i1 %.not21.i614, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.sd:                                            ; preds = %bb.sb
  %i.cak = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.cal = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.cam = and i64 %i.cah, 65535                  ; 3 uses
  %i.can = getelementptr inbounds nuw [16 x i8], ptr %i.cal, i64 %i.cam ; 2 uses
  %i.cao = load i64, ptr %i.can, align 8, !tbaa !203
  %i.cap = getelementptr inbounds nuw i8, ptr %i.can, i64 8
  %i.caq = load i64, ptr %i.cap, align 8, !tbaa !259
  %i.car = call i64 %i.cak(ptr noundef nonnull %0, i64 noundef %i.cao, i64 noundef %i.caq) #22, !inline_history !595
  %i.cas = load ptr, ptr %i.cq, align 8, !tbaa !236
  %i.cat = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cau = load i64, ptr %i.cat, align 8, !tbaa !176
  %i.cav = sub i64 %i.cau, %i.car
  call void %i.cas(ptr noundef nonnull %0, ptr noundef nonnull %i.fw, i16 noundef zeroext %20, i64 noundef %i.cav) #22, !inline_history !595
  %i.caw = load i16, ptr %i.fx, align 8, !tbaa !267
  %i.cax = icmp eq i16 %i.caw, 0
  br i1 %i.cax, label %bb.se, label %Ins_SPVTL.exitthread-pre-split

bb.se:                                            ; preds = %bb.sd
  %i.cay = load ptr, ptr %i.en, align 8, !tbaa !641
  %i.caz = getelementptr inbounds nuw [16 x i8], ptr %i.cay, i64 %i.cam
  %i.cba = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.cbb = getelementptr inbounds nuw [16 x i8], ptr %i.cba, i64 %i.cam
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.caz, ptr noundef nonnull align 8 dereferenceable(16) %i.cbb, i64 16, i1 false), !tbaa.struct !306
  br label %Ins_SPVTL.exitthread-pre-split

bb.sf:                                            ; preds = %bb.ao, %bb.ao
  %i.cbc = load i64, ptr %i.jk, align 8, !tbaa !176 ; 4 uses
  %i.cbd = load i16, ptr %i.fn, align 4, !tbaa !260
  %21 = trunc i64 %i.cbc to i16
  %.not.i616 = icmp ugt i16 %i.cbd, %21
  br i1 %.not.i616, label %bb.sg, label %bb.sh

bb.sg:                                            ; preds = %bb.sf
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cbf = load i64, ptr %i.cbe, align 8, !tbaa !176 ; 4 uses
  %i.cbg = load i16, ptr %i.ek, align 4, !tbaa !257
  %22 = trunc i64 %i.cbf to i16
  %.not57.i618 = icmp ugt i16 %i.cbg, %22
  br i1 %.not57.i618, label %bb.sj, label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %bb.sf
  %i.cbh = load i8, ptr %i.do, align 1, !tbaa !187
  %.not59.i = icmp eq i8 %i.cbh, 0
  br i1 %.not59.i, label %Ins_MD.exit, label %bb.si

bb.si:                                            ; preds = %bb.sh
  store i32 134, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_MD.exit

bb.sj:                                            ; preds = %bb.sg
  %i.cbi = and i8 %i.hq, 1
  %.not58.i618 = icmp eq i8 %i.cbi, 0
  br i1 %.not58.i618, label %bb.sl, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.cbj = load ptr, ptr %i.ew, align 8, !tbaa !232
  %i.cbk = load ptr, ptr %i.fo, align 8, !tbaa !261
  %i.cbl = and i64 %i.cbc, 65535
  %i.cbm = getelementptr inbounds nuw [16 x i8], ptr %i.cbk, i64 %i.cbl ; 2 uses
  %i.cbn = load i64, ptr %i.cbm, align 8, !tbaa !203
  %i.cbo = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.cbp = and i64 %i.cbf, 65535
  %i.cbq = getelementptr inbounds nuw [16 x i8], ptr %i.cbo, i64 %i.cbp ; 2 uses
  %i.cbr = load i64, ptr %i.cbq, align 8, !tbaa !203
  %i.cbs = sub i64 %i.cbn, %i.cbr
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8
  %i.cbu = load i64, ptr %i.cbt, align 8, !tbaa !259
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbq, i64 8
  %i.cbw = load i64, ptr %i.cbv, align 8, !tbaa !259
  %i.cbx = sub i64 %i.cbu, %i.cbw
  %i.cby = call i64 %i.cbj(ptr noundef nonnull %0, i64 noundef %i.cbs, i64 noundef %i.cbx) #22, !inline_history !596
  br label %Ins_MD.exit

bb.sl:                                            ; preds = %bb.sj
  %i.cbz = load i16, ptr %i.fp, align 4, !tbaa !265
  %i.cca = icmp eq i16 %i.cbz, 0
  br i1 %i.cca, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.ccb = load i16, ptr %i.fq, align 2, !tbaa !266
  %i.ccc = icmp eq i16 %i.ccb, 0
  br i1 %i.ccc, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %i.ccd = load ptr, ptr %i.fv, align 8, !tbaa !300
  %i.cce = and i64 %i.cbc, 65535
  %i.ccf = getelementptr inbounds nuw [16 x i8], ptr %i.ccd, i64 %i.cce ; 2 uses
  %i.ccg = load ptr, ptr %i.em, align 8, !tbaa !302
  %i.cch = and i64 %i.cbf, 65535
  %i.cci = getelementptr inbounds nuw [16 x i8], ptr %i.ccg, i64 %i.cch ; 2 uses
  %i.ccj = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.cck = load i64, ptr %i.ccf, align 8, !tbaa !203
  %i.ccl = load i64, ptr %i.cci, align 8, !tbaa !203
  %i.ccm = sub i64 %i.cck, %i.ccl
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccf, i64 8
  %i.cco = load i64, ptr %i.ccn, align 8, !tbaa !259
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cci, i64 8
  %i.ccq = load i64, ptr %i.ccp, align 8, !tbaa !259
  %i.ccr = sub i64 %i.cco, %i.ccq
  %i.ccs = call i64 %i.ccj(ptr noundef nonnull %0, i64 noundef %i.ccm, i64 noundef %i.ccr) #22, !inline_history !596
  br label %Ins_MD.exit

bb.so:                                            ; preds = %bb.sm
  %i.cct = load ptr, ptr %i.fr, align 8, !tbaa !301
  %i.ccu = and i64 %i.cbc, 65535
  %i.ccv = getelementptr inbounds nuw [16 x i8], ptr %i.cct, i64 %i.ccu ; 4 uses
  %i.ccw = load ptr, ptr %i.fs, align 8, !tbaa !305
  %i.ccx = and i64 %i.cbf, 65535
  %i.ccy = getelementptr inbounds nuw [16 x i8], ptr %i.ccw, i64 %i.ccx ; 4 uses
  %i.ccz = load i64, ptr %i.ft, align 8, !tbaa !303 ; 2 uses
  %i.cda = load i64, ptr %i.fu, align 8, !tbaa !304 ; 2 uses
  %i.cdb = icmp eq i64 %i.ccz, %i.cda
  br i1 %i.cdb, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.cdc = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.cdd = load i64, ptr %i.ccv, align 8, !tbaa !203
  %i.cde = load i64, ptr %i.ccy, align 8, !tbaa !203
  %i.cdf = sub i64 %i.cdd, %i.cde
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccv, i64 8
  %i.cdh = load i64, ptr %i.cdg, align 8, !tbaa !259
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccy, i64 8
  %i.cdj = load i64, ptr %i.cdi, align 8, !tbaa !259
  %i.cdk = sub i64 %i.cdh, %i.cdj
  %i.cdl = call i64 %i.cdc(ptr noundef nonnull %0, i64 noundef %i.cdf, i64 noundef %i.cdk) #22, !inline_history !596
  %i.cdm = load i64, ptr %i.ft, align 8, !tbaa !303
  %sext65.i = shl i64 %i.cdl, 32
  %i.cdn = ashr exact i64 %sext65.i, 32
  %sext66.i = shl i64 %i.cdm, 32
  %i.cdo = ashr exact i64 %sext66.i, 32
  %i.cdp = mul nsw i64 %i.cdo, %i.cdn             ; 2 uses
  %i.cdq = ashr i64 %i.cdp, 63
  %i.cdr = add nsw i64 %i.cdp, 32768
  %i.cds = add nsw i64 %i.cdr, %i.cdq
  %i.cdt = shl i64 %i.cds, 16
  %i.cdu = ashr i64 %i.cdt, 32
  br label %Ins_MD.exit

bb.sq:                                            ; preds = %bb.so
  %i.cdv = load i64, ptr %i.ccv, align 8, !tbaa !203
  %i.cdw = load i64, ptr %i.ccy, align 8, !tbaa !203
  %i.cdx = sub nsw i64 %i.cdv, %i.cdw
  %sext.i619 = shl i64 %i.cdx, 32
  %i.cdy = ashr exact i64 %sext.i619, 32
  %sext60.i = shl i64 %i.ccz, 32
  %i.cdz = ashr exact i64 %sext60.i, 32
  %i.cea = mul nsw i64 %i.cdy, %i.cdz             ; 2 uses
  %i.ceb = ashr i64 %i.cea, 63
  %i.cec = add nsw i64 %i.cea, 32768
  %i.ced = add nsw i64 %i.cec, %i.ceb
  %i.cee = shl i64 %i.ced, 16
  %i.cef = ashr i64 %i.cee, 32
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.ccv, i64 8
  %i.ceh = load i64, ptr %i.ceg, align 8, !tbaa !259
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ccy, i64 8
  %i.cej = load i64, ptr %i.cei, align 8, !tbaa !259
  %i.cek = sub nsw i64 %i.ceh, %i.cej
  %sext62.i = shl i64 %i.cek, 32
  %i.cel = ashr exact i64 %sext62.i, 32
  %sext63.i = shl i64 %i.cda, 32
  %i.cem = ashr exact i64 %sext63.i, 32
  %i.cen = mul nsw i64 %i.cel, %i.cem             ; 2 uses
  %i.ceo = ashr i64 %i.cen, 63
  %i.cep = add nsw i64 %i.cen, 32768
  %i.ceq = add nsw i64 %i.cep, %i.ceo
  %i.cer = shl i64 %i.ceq, 16
  %i.ces = ashr i64 %i.cer, 32
  %i.cet = load ptr, ptr %i.ex, align 8, !tbaa !234
  %i.ceu = call i64 %i.cet(ptr noundef nonnull %0, i64 noundef %i.cef, i64 noundef %i.ces) #22, !inline_history !596
  br label %Ins_MD.exit

Ins_MD.exit:                                      ; preds = %bb.sh, %bb.si, %bb.sk, %bb.sn, %bb.sp, %bb.sq
  %.1.i616 = phi i64 [ 0, %bb.sh ], [ %i.cby, %bb.sk ], [ %i.ccs, %bb.sn ], [ 0, %bb.si ], [ %i.cdu, %bb.sp ], [ %i.ceu, %bb.sq ]
  store i64 %.1.i616, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.sr:                                            ; preds = %bb.ao
  %i.cev = load ptr, ptr %i.as, align 8, !tbaa !223
  %i.cew = call i64 %i.cev(ptr noundef nonnull %0) #22, !inline_history !597
  store i64 %i.cew, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.ss:                                            ; preds = %bb.ao
  %i.cex = load ptr, ptr %0, align 8, !tbaa !220
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cex, i64 176
  %i.cez = load ptr, ptr %i.cey, align 8, !tbaa !41
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cez, i64 120
  %i.cfb = load i32, ptr %i.cfa, align 8, !tbaa !26
  %i.cfc = icmp eq i32 %i.cfb, 35
  br i1 %i.cfc, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  %i.cfd = load ptr, ptr %i.as, align 8, !tbaa !223
  %i.cfe = call i64 %i.cfd(ptr noundef nonnull %0) #22, !inline_history !598
  br label %Ins_MPS.exit

bb.su:                                            ; preds = %bb.ss
  %i.cff = load i64, ptr %i.fm, align 8, !tbaa !309
  br label %Ins_MPS.exit

Ins_MPS.exit:                                     ; preds = %bb.st, %bb.su
  %storemerge.i620 = phi i64 [ %i.cff, %bb.su ], [ %i.cfe, %bb.st ]
  store i64 %storemerge.i620, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.sv:                                            ; preds = %bb.ao
  store i8 1, ptr %i.fl, align 4, !tbaa !310
  br label %Ins_SPVTL.exitthread-pre-split

bb.sw:                                            ; preds = %bb.ao
  store i8 0, ptr %i.fl, align 4, !tbaa !310
  br label %Ins_SPVTL.exitthread-pre-split

bb.sx:                                            ; preds = %bb.ao
  %i.cfg = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cfi = load i64, ptr %i.cfh, align 8, !tbaa !176
  %i.cfj = icmp slt i64 %i.cfg, %i.cfi
  %i.cfk = zext i1 %i.cfj to i64
  store i64 %i.cfk, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.sy:                                            ; preds = %bb.ao
  %i.cfl = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cfn = load i64, ptr %i.cfm, align 8, !tbaa !176
  %i.cfo = icmp sle i64 %i.cfl, %i.cfn
  %i.cfp = zext i1 %i.cfo to i64
  store i64 %i.cfp, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split

bb.sz:                                            ; preds = %bb.ao
  %i.cfq = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cfs = load i64, ptr %i.cfr, align 8, !tbaa !176
  %i.cft = icmp sgt i64 %i.cfq, %i.cfs
  %i.cfu = zext i1 %i.cft to i64
  store i64 %i.cfu, ptr %i.jk, align 8, !tbaa !176
  br label %Ins_SPVTL.exitthread-pre-split
end_hunk_6
begin_hunk_7_@TT_RunIns:bb.a
  br i1 %i.cpr, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.cps = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.cpt = zext nneg i32 %i.cpq to i64
  %i.cpu = getelementptr [32 x i8], ptr %i.cps, i64 %i.cpt
  %i.cpv = getelementptr i8, ptr %i.cpu, i64 -8
  %i.cpw = load ptr, ptr %i.cpv, align 8, !tbaa !272
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 16
  %i.cpy = load i64, ptr %i.cpx, align 8, !tbaa !628
  %i.cpz = icmp sgt i64 %i.cpo, %i.cpy
  br i1 %i.cpz, label %.sink.split.i.i651, label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  %i.cqa = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.cqb = icmp slt i64 %i.cqa, 0
  br i1 %i.cqb, label %bb.wa, label %Ins_SPVTL.exitthread-pre-split

bb.wa:                                            ; preds = %bb.vz
  %i.cqc = load i64, ptr %i.x, align 8, !tbaa !614
  %i.cqd = add i64 %i.cqc, 1                      ; 2 uses
  store i64 %i.cqd, ptr %i.x, align 8, !tbaa !614
  %i.cqe = load i64, ptr %i.am, align 8, !tbaa !616
  %i.cqf = icmp ugt i64 %i.cqd, %i.cqe
  br i1 %i.cqf, label %.sink.split.i.i651, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i651:                               ; preds = %bb.vv, %bb.wa, %bb.vy, %bb.vw
  %.sink.i.i652 = phi i32 [ 132, %bb.vw ], [ 132, %bb.vv ], [ 132, %bb.vy ], [ 139, %bb.wa ] ; 2 uses
  store i32 %.sink.i.i652, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit

bb.wb:                                            ; preds = %bb.ao
  store i32 5, ptr %i.cz, align 8, !tbaa !237
  store ptr @Round_None, ptr %i.fc, align 8, !tbaa !238
  br label %Ins_SPVTL.exitthread-pre-split

bb.wc:                                            ; preds = %bb.ao
  %i.cqg = load ptr, ptr %i.du, align 8, !tbaa !277 ; 4 uses
  %.not.i653 = icmp eq ptr %i.cqg, null
  br i1 %.not.i653, label %._crit_edge.i658, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.cqh = load i32, ptr %i.dv, align 8, !tbaa !278 ; 2 uses
  %i.cqi = zext i32 %i.cqh to i64
  %.idx.i654 = shl nuw nsw i64 %i.cqi, 5
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqg, i64 %.idx.i654
  %.not41.i655 = icmp eq i32 %i.cqh, 0
  br i1 %.not41.i655, label %._crit_edge.i658, label %.lr.ph.i656

.lr.ph.i656:                                      ; preds = %bb.wd, %bb.wn
  %.032.i657 = phi ptr [ %i.crn, %bb.wn ], [ %i.cqg, %bb.wd ] ; 6 uses
  %i.cqk = getelementptr inbounds nuw i8, ptr %.032.i657, i64 24
  %i.cql = load i32, ptr %i.cqk, align 8, !tbaa !279
  %i.cqm = and i32 %i.cql, 255
  %i.cqn = icmp eq i32 %i.cqm, 123
  br i1 %i.cqn, label %bb.we, label %bb.wn

bb.we:                                            ; preds = %.lr.ph.i656
  %i.cqo = getelementptr inbounds nuw i8, ptr %.032.i657, i64 28
  %i.cqp = load i8, ptr %i.cqo, align 4, !tbaa !280
  %.not29.i659 = icmp eq i8 %i.cqp, 0
  br i1 %.not29.i659, label %bb.wn, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.cqq = load i32, ptr %i.dw, align 8, !tbaa !270 ; 3 uses
  %i.cqr = load i32, ptr %i.dx, align 4, !tbaa !169
  %.not30.i660 = icmp slt i32 %i.cqq, %i.cqr
  br i1 %.not30.i660, label %bb.wg, label %.loopexit.sink.split

bb.wg:                                            ; preds = %bb.wf
  %i.cqs = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.cqt = add nsw i32 %i.cqq, 1
  store i32 %i.cqt, ptr %i.dw, align 8, !tbaa !270
  %i.cqu = sext i32 %i.cqq to i64
  %i.cqv = getelementptr inbounds [32 x i8], ptr %i.cqs, i64 %i.cqu ; 4 uses
  %i.cqw = load i32, ptr %i.aw, align 4, !tbaa !225
  store i32 %i.cqw, ptr %i.cqv, align 8, !tbaa !281
  %i.cqx = load i64, ptr %i.di, align 8, !tbaa !241
  %i.cqy = add nsw i64 %i.cqx, 1
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqv, i64 8
  store i64 %i.cqy, ptr %i.cqz, align 8, !tbaa !282
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqv, i64 16
  store i64 1, ptr %i.cra, align 8, !tbaa !283
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cqv, i64 24
  store ptr %.032.i657, ptr %i.crb, align 8, !tbaa !272
  %i.crc = load i32, ptr %.032.i657, align 8, !tbaa !284 ; 3 uses
  %i.crd = getelementptr inbounds nuw i8, ptr %.032.i657, i64 8
  %i.cre = load i64, ptr %i.crd, align 8, !tbaa !285 ; 2 uses
  %i.crf = add i32 %i.crc, -4
  %or.cond.i.i661 = icmp ult i32 %i.crf, -3
  br i1 %or.cond.i.i661, label %bb.wh, label %bb.wi

bb.wh:                                            ; preds = %bb.wg
  store i32 132, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i663

bb.wi:                                            ; preds = %bb.wg
  %i.crg = zext nneg i32 %i.crc to i64
  %i.crh = getelementptr [16 x i8], ptr %0, i64 %i.crg ; 2 uses
  %i.cri = getelementptr i8, ptr %i.crh, i64 776
  %i.crj = load ptr, ptr %i.cri, align 8, !tbaa !287 ; 2 uses
  %.not.i.i662 = icmp eq ptr %i.crj, null
  br i1 %.not.i.i662, label %bb.wj, label %bb.wk

bb.wj:                                            ; preds = %bb.wi
  store i32 138, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i663

bb.wk:                                            ; preds = %bb.wi
  %i.crk = getelementptr i8, ptr %i.crh, i64 784
  %i.crl = load i64, ptr %i.crk, align 8, !tbaa !288 ; 2 uses
  %i.crm = icmp sgt i64 %i.cre, %i.crl
  br i1 %i.crm, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.wk
  store i32 131, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i663

bb.wm:                                            ; preds = %bb.wk
  store ptr %i.crj, ptr %i.dh, align 8, !tbaa !243
  store i64 %i.crl, ptr %i.dl, align 8, !tbaa !242
  store i64 %i.cre, ptr %i.di, align 8, !tbaa !241
  store i32 %i.crc, ptr %i.aw, align 4, !tbaa !225
  br label %Ins_Goto_CodeRange.exit.i663

Ins_Goto_CodeRange.exit.i663:                     ; preds = %bb.wm, %bb.wl, %bb.wj, %bb.wh
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  br label %Ins_SPVTL.exitthread-pre-split

bb.wn:                                            ; preds = %bb.we, %.lr.ph.i656
  %i.crn = getelementptr inbounds nuw i8, ptr %.032.i657, i64 32 ; 2 uses
  %i.cro = icmp ult ptr %i.crn, %i.cqj
  br i1 %i.cro, label %.lr.ph.i656, label %._crit_edge.i658, !llvm.loop !0

._crit_edge.i658:                                 ; preds = %bb.wn, %bb.wd, %bb.wc
  store i32 128, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit.thread788

bb.wo:                                            ; preds = %bb.ao
  store i32 4, ptr %i.cz, align 8, !tbaa !237
  store ptr @Round_Up_To_Grid, ptr %i.fc, align 8, !tbaa !238
  br label %Ins_SPVTL.exitthread-pre-split

bb.wp:                                            ; preds = %bb.ao
  store i32 3, ptr %i.cz, align 8, !tbaa !237
  store ptr @Round_Down_To_Grid, ptr %i.fc, align 8, !tbaa !238
  br label %Ins_SPVTL.exitthread-pre-split

bb.wq:                                            ; preds = %bb.ao
  %i.crp = load ptr, ptr %0, align 8, !tbaa !220
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 176
  %i.crr = load ptr, ptr %i.crq, align 8, !tbaa !41
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 120
  %i.crt = load i32, ptr %i.crs, align 8, !tbaa !26
  %i.cru = icmp eq i32 %i.crt, 40
  br i1 %i.cru, label %bb.wr, label %bb.wu

bb.wr:                                            ; preds = %bb.wq
  %i.crv = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not.i672 = icmp eq i8 %i.crv, 0
  br i1 %.not.i672, label %bb.wu, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.crw = load i8, ptr %i.df, align 4, !tbaa !239
  %.not21.i673 = icmp eq i8 %i.crw, 0
  br i1 %.not21.i673, label %bb.wu, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  %i.crx = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not22.i674 = icmp eq i8 %i.crx, 0
  br i1 %.not22.i674, label %bb.wu, label %.loopexit.i666

bb.wu:                                            ; preds = %bb.wt, %bb.ws, %bb.wr, %bb.wq
  %i.cry = load i64, ptr %i.dm, align 8, !tbaa !245
  %i.crz = load i64, ptr %i.fb, align 8, !tbaa !268 ; 3 uses
  %i.csa = icmp slt i64 %i.cry, %i.crz
  br i1 %i.csa, label %bb.wv, label %.preheader.i665

.preheader.i665:                                  ; preds = %bb.wu
  %i.csb = icmp sgt i64 %i.crz, 0
  br i1 %i.csb, label %.lr.ph.i667, label %.loopexit.i666

bb.wv:                                            ; preds = %bb.wu
  %i.csc = load i8, ptr %i.do, align 1, !tbaa !187
  %.not25.i671 = icmp eq i8 %i.csc, 0
  br i1 %.not25.i671, label %.loopexit.i666, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  store i32 129, ptr %i.dt, align 8, !tbaa !256
  br label %.loopexit.i666

.lr.ph.i667:                                      ; preds = %.preheader.i665, %bb.wz
  %i.csd = phi i64 [ %i.csr, %bb.wz ], [ %i.crz, %.preheader.i665 ]
  %i.cse = load i64, ptr %i.dn, align 8, !tbaa !246
  %i.csf = add nsw i64 %i.cse, -1                 ; 2 uses
  store i64 %i.csf, ptr %i.dn, align 8, !tbaa !246
  %i.csg = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.csh = getelementptr inbounds [8 x i8], ptr %i.csg, i64 %i.csf
  %i.csi = load i64, ptr %i.csh, align 8, !tbaa !176 ; 2 uses
  %i.csj = load i16, ptr %i.k, align 4, !tbaa !218
  %23 = trunc i64 %i.csi to i16
  %.not23.i669 = icmp ugt i16 %i.csj, %23
  br i1 %.not23.i669, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %.lr.ph.i667
  %i.csk = load i8, ptr %i.do, align 1, !tbaa !187
  %.not24.i669 = icmp eq i8 %i.csk, 0
  br i1 %.not24.i669, label %bb.wz, label %.loopexit.sink.split

bb.wy:                                            ; preds = %.lr.ph.i667
  %i.csl = load ptr, ptr %i.fa, align 8, !tbaa !637
  %i.csm = and i64 %i.csi, 65535
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csl, i64 %i.csm ; 2 uses
  %i.cso = load i8, ptr %i.csn, align 1, !tbaa !177
  %i.csp = xor i8 %i.cso, 1
  store i8 %i.csp, ptr %i.csn, align 1, !tbaa !177
  %.pre.i670 = load i64, ptr %i.fb, align 8, !tbaa !268
  br label %bb.wz

bb.wz:                                            ; preds = %bb.wy, %bb.wx
  %i.csq = phi i64 [ %i.csd, %bb.wx ], [ %.pre.i670, %bb.wy ] ; 2 uses
  %i.csr = add nsw i64 %i.csq, -1                 ; 2 uses
  store i64 %i.csr, ptr %i.fb, align 8, !tbaa !268
  %i.css = icmp sgt i64 %i.csq, 1
  br i1 %i.css, label %.lr.ph.i667, label %.loopexit.i666.loopexit, !llvm.loop !605

.loopexit.i666.loopexit:                          ; preds = %bb.wz
  %.pre981.a = load i64, ptr %i.dn, align 8, !tbaa !246
  br label %.loopexit.i666

.loopexit.i666:                                   ; preds = %.loopexit.i666.loopexit, %bb.ww, %bb.wv, %.preheader.i665, %bb.wt
  %i.cst = phi i64 [ %.pre981.a, %.loopexit.i666.loopexit ], [ %i.iv, %bb.ww ], [ %i.iv, %bb.wv ], [ %i.iv, %.preheader.i665 ], [ %i.iv, %bb.wt ]
  store i64 1, ptr %i.fb, align 8, !tbaa !268
  store i64 %i.cst, ptr %i.dq, align 8, !tbaa !247
  br label %Ins_SPVTL.exitthread-pre-split

bb.xa:                                            ; preds = %bb.ao
  %i.csu = load ptr, ptr %0, align 8, !tbaa !220
  %i.csv = getelementptr inbounds nuw i8, ptr %i.csu, i64 176
  %i.csw = load ptr, ptr %i.csv, align 8, !tbaa !41
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csw, i64 120
  %i.csy = load i32, ptr %i.csx, align 8, !tbaa !26
  %i.csz = icmp eq i32 %i.csy, 40
  br i1 %i.csz, label %bb.xb, label %bb.xe

bb.xb:                                            ; preds = %bb.xa
  %i.cta = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not.i683 = icmp eq i8 %i.cta, 0
  br i1 %.not.i683, label %bb.xe, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.ctb = load i8, ptr %i.df, align 4, !tbaa !239
  %.not19.i684 = icmp eq i8 %i.ctb, 0
  br i1 %.not19.i684, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.ctc = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not20.i685 = icmp eq i8 %i.ctc, 0
  br i1 %.not20.i685, label %bb.xe, label %Ins_SPVTL.exitthread-pre-split

bb.xe:                                            ; preds = %bb.xd, %bb.xc, %bb.xb, %bb.xa
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cte = load i64, ptr %i.ctd, align 8, !tbaa !176 ; 2 uses
  %i.ctf = trunc i64 %i.cte to i32
  %i.ctg = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.cth = trunc i64 %i.ctg to i16                ; 2 uses
  %i.cti = and i32 %i.ctf, 65535                  ; 2 uses
  %i.ctj = load i16, ptr %i.k, align 4, !tbaa !218 ; 2 uses
  %i.ctk = zext i16 %i.ctj to i32
  %.not21.i675 = icmp samesign ult i32 %i.cti, %i.ctk
  %.not22.i677 = icmp ugt i16 %i.ctj, %i.cth
  %or.cond.i677 = select i1 %.not21.i675, i1 %.not22.i677, i1 false
  br i1 %or.cond.i677, label %.preheader.i680, label %bb.xf

.preheader.i680:                                  ; preds = %bb.xe
  %24 = trunc i64 %i.ctg to i32
  %25 = and i32 %24, 65535
  %.not2326.i = icmp samesign ult i32 %i.cti, %25
  br i1 %.not2326.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i681

.lr.ph.i681:                                      ; preds = %.preheader.i680
  %i.ctl = trunc i64 %i.cte to i16
  br label %bb.xg

bb.xf:                                            ; preds = %bb.xe
  %i.ctm = load i8, ptr %i.do, align 1, !tbaa !187
  %.not24.i678 = icmp eq i8 %i.ctm, 0
  br i1 %.not24.i678, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.xg:                                            ; preds = %bb.xg, %.lr.ph.i681
  %.027.i = phi i16 [ %i.cth, %.lr.ph.i681 ], [ %i.cts, %bb.xg ] ; 2 uses
  %i.ctn = load ptr, ptr %i.fa, align 8, !tbaa !637
  %i.cto = zext i16 %.027.i to i64
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctn, i64 %i.cto ; 2 uses
  %i.ctq = load i8, ptr %i.ctp, align 1, !tbaa !177
  %i.ctr = or i8 %i.ctq, 1
  store i8 %i.ctr, ptr %i.ctp, align 1, !tbaa !177
  %i.cts = add i16 %.027.i, 1                     ; 2 uses
  %.not23.i682 = icmp ugt i16 %i.cts, %i.ctl
  br i1 %.not23.i682, label %Ins_SPVTL.exitthread-pre-split, label %bb.xg, !llvm.loop !606

bb.xh:                                            ; preds = %bb.ao
  %i.ctt = load ptr, ptr %0, align 8, !tbaa !220
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctt, i64 176
  %i.ctv = load ptr, ptr %i.ctu, align 8, !tbaa !41
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 120
  %i.ctx = load i32, ptr %i.ctw, align 8, !tbaa !26
  %i.cty = icmp eq i32 %i.ctx, 40
  br i1 %i.cty, label %bb.xi, label %bb.xl

bb.xi:                                            ; preds = %bb.xh
  %i.ctz = load i8, ptr %i.dz, align 1, !tbaa !186
  %.not.i696 = icmp eq i8 %i.ctz, 0
  br i1 %.not.i696, label %bb.xl, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cua = load i8, ptr %i.df, align 4, !tbaa !239
  %.not19.i697 = icmp eq i8 %i.cua, 0
  br i1 %.not19.i697, label %bb.xl, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cub = load i8, ptr %i.dg, align 1, !tbaa !240
  %.not20.i698 = icmp eq i8 %i.cub, 0
  br i1 %.not20.i698, label %bb.xl, label %Ins_SPVTL.exitthread-pre-split

bb.xl:                                            ; preds = %bb.xk, %bb.xj, %bb.xi, %bb.xh
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cud = load i64, ptr %i.cuc, align 8, !tbaa !176 ; 2 uses
  %i.cue = trunc i64 %i.cud to i32
  %i.cuf = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.cug = trunc i64 %i.cuf to i16                ; 2 uses
  %i.cuh = and i32 %i.cue, 65535                  ; 2 uses
  %i.cui = load i16, ptr %i.k, align 4, !tbaa !218 ; 2 uses
  %i.cuj = zext i16 %i.cui to i32
  %.not21.i686 = icmp samesign ult i32 %i.cuh, %i.cuj
  %.not22.i688 = icmp ugt i16 %i.cui, %i.cug
  %or.cond.i688 = select i1 %.not21.i686, i1 %.not22.i688, i1 false
  br i1 %or.cond.i688, label %.preheader.i691, label %bb.xm

.preheader.i691:                                  ; preds = %bb.xl
  %26 = trunc i64 %i.cuf to i32
  %27 = and i32 %26, 65535
  %.not2326.i692 = icmp samesign ult i32 %i.cuh, %27
  br i1 %.not2326.i692, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i693

.lr.ph.i693:                                      ; preds = %.preheader.i691
  %i.cuk = trunc i64 %i.cud to i16
  br label %bb.xn

bb.xm:                                            ; preds = %bb.xl
  %i.cul = load i8, ptr %i.do, align 1, !tbaa !187
  %.not24.i689 = icmp eq i8 %i.cul, 0
  br i1 %.not24.i689, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.xn:                                            ; preds = %bb.xn, %.lr.ph.i693
  %.027.i694 = phi i16 [ %i.cug, %.lr.ph.i693 ], [ %i.cur, %bb.xn ] ; 2 uses
  %i.cum = load ptr, ptr %i.fa, align 8, !tbaa !637
  %i.cun = zext i16 %.027.i694 to i64
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cum, i64 %i.cun ; 2 uses
  %i.cup = load i8, ptr %i.cuo, align 1, !tbaa !177
  %i.cuq = and i8 %i.cup, -2
  store i8 %i.cuq, ptr %i.cuo, align 1, !tbaa !177
  %i.cur = add i16 %.027.i694, 1                  ; 2 uses
  %.not23.i695 = icmp ugt i16 %i.cur, %i.cuk
  br i1 %.not23.i695, label %Ins_SPVTL.exitthread-pre-split, label %bb.xn, !llvm.loop !607

bb.xo:                                            ; preds = %bb.ao, %bb.ao
  %i.cus = load ptr, ptr %i.du, align 8, !tbaa !277 ; 4 uses
  %.not.i699 = icmp eq ptr %i.cus, null
  br i1 %.not.i699, label %._crit_edge.i704, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cut = load i32, ptr %i.dv, align 8, !tbaa !278 ; 2 uses
  %i.cuu = zext i32 %i.cut to i64
  %.idx.i700 = shl nuw nsw i64 %i.cuu, 5
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cus, i64 %.idx.i700
  %.not41.i701 = icmp eq i32 %i.cut, 0
  br i1 %.not41.i701, label %._crit_edge.i704, label %.lr.ph.i702

.lr.ph.i702:                                      ; preds = %bb.xp, %bb.xz
  %.032.i703 = phi ptr [ %i.cvz, %bb.xz ], [ %i.cus, %bb.xp ] ; 6 uses
  %i.cuw = getelementptr inbounds nuw i8, ptr %.032.i703, i64 24
  %i.cux = load i32, ptr %i.cuw, align 8, !tbaa !279
  %i.cuy = trunc i32 %i.cux to i8
  %i.cuz = icmp eq i8 %i.hq, %i.cuy
  br i1 %i.cuz, label %bb.xq, label %bb.xz

bb.xq:                                            ; preds = %.lr.ph.i702
  %i.cva = getelementptr inbounds nuw i8, ptr %.032.i703, i64 28
  %i.cvb = load i8, ptr %i.cva, align 4, !tbaa !280
  %.not29.i705 = icmp eq i8 %i.cvb, 0
  br i1 %.not29.i705, label %bb.xz, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.cvc = load i32, ptr %i.dw, align 8, !tbaa !270 ; 3 uses
  %i.cvd = load i32, ptr %i.dx, align 4, !tbaa !169
  %.not30.i706 = icmp slt i32 %i.cvc, %i.cvd
  br i1 %.not30.i706, label %bb.xs, label %.loopexit.sink.split

bb.xs:                                            ; preds = %bb.xr
  %i.cve = load ptr, ptr %i.dy, align 8, !tbaa !159
  %i.cvf = add nsw i32 %i.cvc, 1
  store i32 %i.cvf, ptr %i.dw, align 8, !tbaa !270
  %i.cvg = sext i32 %i.cvc to i64
  %i.cvh = getelementptr inbounds [32 x i8], ptr %i.cve, i64 %i.cvg ; 4 uses
  %i.cvi = load i32, ptr %i.aw, align 4, !tbaa !225
  store i32 %i.cvi, ptr %i.cvh, align 8, !tbaa !281
  %i.cvj = load i64, ptr %i.di, align 8, !tbaa !241
  %i.cvk = add nsw i64 %i.cvj, 1
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvh, i64 8
  store i64 %i.cvk, ptr %i.cvl, align 8, !tbaa !282
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvh, i64 16
  store i64 1, ptr %i.cvm, align 8, !tbaa !283
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvh, i64 24
  store ptr %.032.i703, ptr %i.cvn, align 8, !tbaa !272
  %i.cvo = load i32, ptr %.032.i703, align 8, !tbaa !284 ; 3 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %.032.i703, i64 8
  %i.cvq = load i64, ptr %i.cvp, align 8, !tbaa !285 ; 2 uses
  %i.cvr = add i32 %i.cvo, -4
  %or.cond.i.i707 = icmp ult i32 %i.cvr, -3
  br i1 %or.cond.i.i707, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  store i32 132, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i709

bb.xu:                                            ; preds = %bb.xs
  %i.cvs = zext nneg i32 %i.cvo to i64
  %i.cvt = getelementptr [16 x i8], ptr %0, i64 %i.cvs ; 2 uses
  %i.cvu = getelementptr i8, ptr %i.cvt, i64 776
  %i.cvv = load ptr, ptr %i.cvu, align 8, !tbaa !287 ; 2 uses
  %.not.i.i708 = icmp eq ptr %i.cvv, null
  br i1 %.not.i.i708, label %bb.xv, label %bb.xw

bb.xv:                                            ; preds = %bb.xu
  store i32 138, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i709

bb.xw:                                            ; preds = %bb.xu
  %i.cvw = getelementptr i8, ptr %i.cvt, i64 784
  %i.cvx = load i64, ptr %i.cvw, align 8, !tbaa !288 ; 2 uses
  %i.cvy = icmp sgt i64 %i.cvq, %i.cvx
  br i1 %i.cvy, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  store i32 131, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit.i709

bb.xy:                                            ; preds = %bb.xw
  store ptr %i.cvv, ptr %i.dh, align 8, !tbaa !243
  store i64 %i.cvx, ptr %i.dl, align 8, !tbaa !242
  store i64 %i.cvq, ptr %i.di, align 8, !tbaa !241
  store i32 %i.cvo, ptr %i.aw, align 4, !tbaa !225
  br label %Ins_Goto_CodeRange.exit.i709

Ins_Goto_CodeRange.exit.i709:                     ; preds = %bb.xy, %bb.xx, %bb.xv, %bb.xt
  store i8 0, ptr %i.ds, align 8, !tbaa !255
  br label %Ins_SPVTL.exitthread-pre-split

bb.xz:                                            ; preds = %bb.xq, %.lr.ph.i702
  %i.cvz = getelementptr inbounds nuw i8, ptr %.032.i703, i64 32 ; 2 uses
  %i.cwa = icmp ult ptr %i.cvz, %i.cuv
  br i1 %i.cwa, label %.lr.ph.i702, label %._crit_edge.i704, !llvm.loop !0

._crit_edge.i704:                                 ; preds = %bb.xz, %bb.xp, %bb.xo
  store i32 128, ptr %i.dt, align 8, !tbaa !256
  br label %Ins_SPVTL.exit.thread788

bb.ya:                                            ; preds = %bb.ao
  %.val401 = load i64, ptr %i.jk, align 8, !tbaa !176 ; 8 uses
  %i.cwb = trunc i64 %.val401 to i32
  %i.cwc = and i32 %i.cwb, 255                    ; 2 uses
  %trunc.i = trunc i64 %.val401 to i8
  switch i8 %trunc.i, label %bb.yc [
    i8 -1, label %.sink.split.i711
    i8 0, label %bb.yb
  ]

bb.yb:                                            ; preds = %bb.ya
  br label %.sink.split.i711

bb.yc:                                            ; preds = %bb.ya
  %i.cwd = and i64 %.val401, 256
  %.not.i713 = icmp eq i64 %i.cwd, 0
  br i1 %.not.i713, label %bb.yf, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cwe = load i16, ptr %i.ey, align 8, !tbaa !317
  %i.cwf = zext i16 %i.cwe to i32
  %.not24.i714 = icmp samesign ult i32 %i.cwc, %i.cwf
  br i1 %.not24.i714, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  store i8 1, ptr %i.ez, align 1, !tbaa !200
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd, %bb.yc
  %i.cwg = and i64 %.val401, 512
  %.not25.i715 = icmp eq i64 %i.cwg, 0
  br i1 %.not25.i715, label %bb.yi, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cwh = load i8, ptr %i.ee, align 1, !tbaa !643
  %.not26.i716 = icmp eq i8 %i.cwh, 0
  br i1 %.not26.i716, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  store i8 1, ptr %i.ez, align 1, !tbaa !200
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg, %bb.yf
  %i.cwi = and i64 %.val401, 1024
  %.not27.i717 = icmp eq i64 %i.cwi, 0
  br i1 %.not27.i717, label %bb.yl, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.cwj = load i8, ptr %i.ef, align 2, !tbaa !644
  %.not28.i718 = icmp eq i8 %i.cwj, 0
  br i1 %.not28.i718, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  store i8 1, ptr %i.ez, align 1, !tbaa !200
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj, %bb.yi
  %i.cwk = and i64 %.val401, 2048
  %.not29.i719 = icmp eq i64 %i.cwk, 0
  br i1 %.not29.i719, label %bb.yo, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.cwl = load i16, ptr %i.ey, align 8, !tbaa !317
  %i.cwm = zext i16 %i.cwl to i32
  %i.cwn = icmp samesign ult i32 %i.cwc, %i.cwm
  br i1 %i.cwn, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  store i8 0, ptr %i.ez, align 1, !tbaa !200
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.ym, %bb.yl
  %i.cwo = and i64 %.val401, 4096
  %.not30.i720 = icmp eq i64 %i.cwo, 0
  br i1 %.not30.i720, label %bb.yr, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.cwp = load i8, ptr %i.ee, align 1, !tbaa !643
  %.not31.i721 = icmp eq i8 %i.cwp, 0
  br i1 %.not31.i721, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  store i8 0, ptr %i.ez, align 1, !tbaa !200
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yp, %bb.yo
  %i.cwq = and i64 %.val401, 8192
  %.not32.i722 = icmp eq i64 %i.cwq, 0
  br i1 %.not32.i722, label %Ins_SPVTL.exitthread-pre-split, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.cwr = load i8, ptr %i.ef, align 2, !tbaa !644
  %.not33.i723 = icmp eq i8 %i.cwr, 0
  br i1 %.not33.i723, label %Ins_SPVTL.exitthread-pre-split, label %.sink.split.i711

.sink.split.i711:                                 ; preds = %bb.ys, %bb.yb, %bb.ya
  %.sink.i712 = phi i8 [ 1, %bb.ya ], [ 0, %bb.yb ], [ 0, %bb.ys ]
  store i8 %.sink.i712, ptr %i.ez, align 1, !tbaa !200
  br label %Ins_SPVTL.exitthread-pre-split

bb.yt:                                            ; preds = %bb.ao, %bb.ao
  %i.cws = load i64, ptr %i.jk, align 8, !tbaa !176 ; 2 uses
  %i.cwt = load i16, ptr %i.ek, align 4, !tbaa !257
  %28 = trunc i64 %i.cws to i16
  %.not.i725 = icmp ugt i16 %i.cwt, %28
  br i1 %.not.i725, label %bb.yu, label %bb.yv

bb.yu:                                            ; preds = %bb.yt
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.cwv = load i64, ptr %i.cwu, align 8, !tbaa !176 ; 2 uses
  %i.cww = load i16, ptr %i.el, align 4, !tbaa !623
  %29 = trunc i64 %i.cwv to i16
  %.not52.i727 = icmp ugt i16 %i.cww, %29
  br i1 %.not52.i727, label %bb.yw, label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yt
  %i.cwx = load i8, ptr %i.do, align 1, !tbaa !187
  %.not55.i725 = icmp eq i8 %i.cwx, 0
  br i1 %.not55.i725, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.yw:                                            ; preds = %bb.yu
  %i.cwy = load ptr, ptr %i.em, align 8, !tbaa !302
  %i.cwz = and i64 %i.cws, 65535                  ; 2 uses
  %i.cxa = getelementptr inbounds nuw [16 x i8], ptr %i.cwy, i64 %i.cwz ; 2 uses
  %i.cxb = load ptr, ptr %i.en, align 8, !tbaa !641
  %i.cxc = and i64 %i.cwv, 65535                  ; 2 uses
  %i.cxd = getelementptr inbounds nuw [16 x i8], ptr %i.cxb, i64 %i.cxc ; 2 uses
  %i.cxe = load i64, ptr %i.cxa, align 8, !tbaa !203 ; 2 uses
  %i.cxf = load i64, ptr %i.cxd, align 8, !tbaa !203 ; 2 uses
  %i.cxg = sub i64 %i.cxe, %i.cxf
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxa, i64 8
  %i.cxi = load i64, ptr %i.cxh, align 8, !tbaa !259 ; 2 uses
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxd, i64 8
  %i.cxk = load i64, ptr %i.cxj, align 8, !tbaa !259 ; 2 uses
  %i.cxl = sub i64 %i.cxi, %i.cxk                 ; 2 uses
  %i.cxm = icmp eq i64 %i.cxe, %i.cxf
  %i.cxn = icmp eq i64 %i.cxi, %i.cxk
  %or.cond.i727 = select i1 %i.cxm, i1 %i.cxn, i1 false ; 2 uses
  %spec.select.i728 = select i1 %or.cond.i727, i64 16384, i64 %i.cxg ; 2 uses
  %i.cxo = and i8 %i.hq, 1
  %.not5362.i = icmp eq i8 %i.cxo, 0
  %.not53.i729 = or i1 %.not5362.i, %or.cond.i727 ; 3 uses
  %i.cxp = sub i64 0, %i.cxl
  %.149.i = select i1 %.not53.i729, i64 %spec.select.i728, i64 %i.cxp ; 2 uses
  %.046.i = select i1 %.not53.i729, i64 %i.cxl, i64 %spec.select.i728 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.cxq = or i64 %.046.i, %.149.i
  %or.cond.i.i730 = icmp eq i64 %i.cxq, 0
  br i1 %or.cond.i.i730, label %Normalize.exit.i731, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  store i64 %.149.i, ptr %2, align 8, !tbaa !203
  store i64 %.046.i, ptr %i.eo, align 8, !tbaa !259
  %i.cxr = call i32 @FT_Vector_NormLen(ptr noundef nonnull %2) #22 ; 0 uses
  %i.cxs = load i64, ptr %2, align 8, !tbaa !203
  %i.cxt = sdiv i64 %i.cxs, 4
  %i.cxu = trunc i64 %i.cxt to i16
  store i16 %i.cxu, ptr %i.ci, align 2, !tbaa !625
  %i.cxv = load i64, ptr %i.eo, align 8, !tbaa !259
  %i.cxw = sdiv i64 %i.cxv, 4
  %i.cxx = trunc i64 %i.cxw to i16
  store i16 %i.cxx, ptr %i.ep, align 8, !tbaa !626
  br label %Normalize.exit.i731

Normalize.exit.i731:                              ; preds = %bb.yx, %bb.yw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.cxy = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.cxz = getelementptr inbounds nuw [16 x i8], ptr %i.cxy, i64 %i.cwz ; 2 uses
  %i.cya = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.cyb = getelementptr inbounds nuw [16 x i8], ptr %i.cya, i64 %i.cxc ; 2 uses
  %i.cyc = load i64, ptr %i.cxz, align 8, !tbaa !203 ; 2 uses
  %i.cyd = load i64, ptr %i.cyb, align 8, !tbaa !203 ; 2 uses
  %i.cye = sub i64 %i.cyc, %i.cyd
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cxz, i64 8
  %i.cyg = load i64, ptr %i.cyf, align 8, !tbaa !259 ; 2 uses
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyb, i64 8
  %i.cyi = load i64, ptr %i.cyh, align 8, !tbaa !259 ; 2 uses
  %i.cyj = sub i64 %i.cyg, %i.cyi                 ; 2 uses
  %i.cyk = icmp eq i64 %i.cyc, %i.cyd
  %i.cyl = icmp eq i64 %i.cyg, %i.cyi
  %or.cond3.i = select i1 %i.cyk, i1 %i.cyl, i1 false ; 2 uses
  %.2.i732 = select i1 %or.cond3.i, i64 16384, i64 %i.cye ; 2 uses
  %.not54.i733 = or i1 %.not53.i729, %or.cond3.i  ; 2 uses
  %i.cym = sub i64 0, %i.cyj
  %.3.i734 = select i1 %.not54.i733, i64 %.2.i732, i64 %i.cym ; 2 uses
  %.147.i = select i1 %.not54.i733, i64 %i.cyj, i64 %.2.i732 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.cyn = or i64 %.147.i, %.3.i734
  %or.cond.i57.i = icmp eq i64 %i.cyn, 0
  br i1 %or.cond.i57.i, label %Normalize.exit58.i, label %bb.yy

bb.yy:                                            ; preds = %Normalize.exit.i731
  store i64 %.3.i734, ptr %1, align 8, !tbaa !203
  store i64 %.147.i, ptr %i.et, align 8, !tbaa !259
  %i.cyo = call i32 @FT_Vector_NormLen(ptr noundef nonnull %1) #22 ; 0 uses
  %i.cyp = load i64, ptr %1, align 8, !tbaa !203
  %i.cyq = sdiv i64 %i.cyp, 4
  %i.cyr = trunc i64 %i.cyq to i16
  store i16 %i.cyr, ptr %i.es, align 2, !tbaa !625
  %i.cys = load i64, ptr %i.et, align 8, !tbaa !259
  %i.cyt = sdiv i64 %i.cys, 4
  %i.cyu = trunc i64 %i.cyt to i16
  store i16 %i.cyu, ptr %i.eu, align 4, !tbaa !626
  br label %Normalize.exit58.i

Normalize.exit58.i:                               ; preds = %bb.yy, %Normalize.exit.i731
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.cyv = load i16, ptr %i.az, align 2, !tbaa !227 ; 2 uses
  %i.cyw = icmp eq i16 %i.cyv, 16384              ; 2 uses
  br i1 %i.cyw, label %bb.yz, label %bb.za

bb.yz:                                            ; preds = %Normalize.exit58.i
  %i.cyx = load i16, ptr %i.es, align 2, !tbaa !228 ; 2 uses
  %i.cyy = sext i16 %i.cyx to i64                 ; 2 uses
  store i64 %i.cyy, ptr %i.cs, align 8, !tbaa !229
  br label %bb.zd

bb.za:                                            ; preds = %Normalize.exit58.i
  %i.cyz = load i16, ptr %i.ev, align 8, !tbaa !230 ; 2 uses
  %i.cza = icmp eq i16 %i.cyz, 16384
  br i1 %i.cza, label %bb.zb, label %bb.zc

bb.zb:                                            ; preds = %bb.za
  %i.czb = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.czc = sext i16 %i.czb to i64                 ; 2 uses
  store i64 %i.czc, ptr %i.cs, align 8, !tbaa !229
  %.pre.i.i736 = load i16, ptr %i.es, align 2, !tbaa !228
  br label %bb.zd

bb.zc:                                            ; preds = %bb.za
  %i.czd = load i16, ptr %i.es, align 2, !tbaa !228 ; 2 uses
  %i.cze = sext i16 %i.czd to i64
  %i.czf = sext i16 %i.cyv to i64
  %i.czg = mul nsw i64 %i.cze, %i.czf
  %i.czh = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.czi = sext i16 %i.czh to i64
  %i.czj = sext i16 %i.cyz to i64
  %i.czk = mul nsw i64 %i.czi, %i.czj
  %i.czl = add nsw i64 %i.czk, %i.czg
  %i.czm = ashr i64 %i.czl, 14                    ; 2 uses
  store i64 %i.czm, ptr %i.cs, align 8, !tbaa !229
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.zb, %bb.yz
  %i.czn = phi i64 [ %i.czc, %bb.zb ], [ %i.czm, %bb.zc ], [ %i.cyy, %bb.yz ] ; 2 uses
  %i.czo = phi i16 [ %.pre.i.i736, %bb.zb ], [ %i.czd, %bb.zc ], [ %i.cyx, %bb.yz ]
  %i.czp = icmp eq i16 %i.czo, 16384
  br i1 %i.czp, label %bb.zf, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.czq = load i16, ptr %i.eu, align 4, !tbaa !231
  %i.czr = icmp eq i16 %i.czq, 16384
  %Project_y.Project1242 = select i1 %i.czr, ptr @Project_y, ptr @Project
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.zd
  %Project.sink1230 = phi ptr [ @Project_x, %bb.zd ], [ %Project_y.Project1242, %bb.ze ]
  store ptr %Project.sink1230, ptr %i.ew, align 8, !tbaa !232
  %i.czs = load i16, ptr %i.ci, align 2, !tbaa !233
  %i.czt = icmp eq i16 %i.czs, 16384
  br i1 %i.czt, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.czu = load i16, ptr %i.ep, align 8, !tbaa !235
  %i.czv = icmp eq i16 %i.czu, 16384
  %Project_y.Dual_Project1243 = select i1 %i.czv, ptr @Project_y, ptr @Dual_Project
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %Dual_Project.sink1231 = phi ptr [ @Project_x, %bb.zf ], [ %Project_y.Dual_Project1243, %bb.zg ]
  store ptr %Dual_Project.sink1231, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.cq, align 8, !tbaa !179
  %i.czw = icmp eq i64 %i.czn, 16384
  br i1 %i.czw, label %bb.zi, label %bb.zm

bb.zi:                                            ; preds = %bb.zh
  br i1 %i.cyw, label %bb.zj, label %bb.zk

bb.zj:                                            ; preds = %bb.zi
  store <2 x ptr> <ptr @Direct_Move_X, ptr @Direct_Move_Orig_X>, ptr %i.cq, align 8, !tbaa !179
  br label %Compute_Funcs.exit.i735

bb.zk:                                            ; preds = %bb.zi
  %i.czx = load i16, ptr %i.ev, align 8, !tbaa !230
  %i.czy = icmp eq i16 %i.czx, 16384
  br i1 %i.czy, label %bb.zl, label %Compute_Funcs.exit.i735

bb.zl:                                            ; preds = %bb.zk
  store <2 x ptr> <ptr @Direct_Move_Y, ptr @Direct_Move_Orig_Y>, ptr %i.cq, align 8, !tbaa !179
  br label %Compute_Funcs.exit.i735

bb.zm:                                            ; preds = %bb.zh
  %i.czz = add nsw i64 %i.czn, 1023
  %i.daa = icmp ult i64 %i.czz, 2047
  br i1 %i.daa, label %bb.zn, label %Compute_Funcs.exit.i735

bb.zn:                                            ; preds = %bb.zm
  store i64 16384, ptr %i.cs, align 8, !tbaa !229
  br label %Compute_Funcs.exit.i735

Compute_Funcs.exit.i735:                          ; preds = %bb.zn, %bb.zm, %bb.zl, %bb.zk, %bb.zj
  store i64 0, ptr %i.an, align 8, !tbaa !222
  br label %Ins_SPVTL.exitthread-pre-split

bb.zo:                                            ; preds = %bb.ao
  %i.dab = load i64, ptr %i.jk, align 8, !tbaa !176 ; 8 uses
  %i.dac = and i64 %i.dab, 1
  %.not.i737 = icmp eq i64 %i.dac, 0
  br i1 %.not.i737, label %bb.zq, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.dad = load ptr, ptr %0, align 8, !tbaa !220
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 176
  %i.daf = load ptr, ptr %i.dae, align 8, !tbaa !41
end_hunk_7
begin_hunk_8_@Move_CVT:bb.a

bb.f:                                             ; preds = %Modify_CVT_Check.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !313
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !176
  %i.ab = add i64 %i.aa, %2
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !176
  br label %bb.g

bb.g:                                             ; preds = %Modify_CVT_Check.exit, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Ins_UNKNOWN(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.d = load i32, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not41 = icmp eq i32 %i.d, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load i8, ptr %i.g, align 8, !tbaa !244
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.032 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %bb.n ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !279
  %i.k = trunc i32 %i.j to i8
  %i.l = icmp eq i8 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.032, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !280
  %.not29 = icmp eq i8 %i.n, 0
  br i1 %.not29, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !270  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.r = load i32, ptr %i.q, align 4, !tbaa !169
  %.not30 = icmp slt i32 %i.p, %i.r
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 130, ptr %i.s, align 8, !tbaa !256
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159
  %i.v = add nsw i32 %i.p, 1
  store i32 %i.v, ptr %i.o, align 8, !tbaa !270
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !225
  store i32 %i.z, ptr %i.x, align 8, !tbaa !281
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !241
  %i.ac = add nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !282
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %i.ae, align 8, !tbaa !283
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.032, ptr %i.af, align 8, !tbaa !272
  %i.ag = load i32, ptr %.032, align 8, !tbaa !284 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !285 ; 2 uses
  %i.aj = add i32 %i.ag, -4
  %or.cond.i = icmp ult i32 %i.aj, -3
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 132, ptr %i.ak, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit

bb.i:                                             ; preds = %bb.g
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = getelementptr [16 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 776
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !287 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 138, ptr %i.ap, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %i.am, i64 784
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !288 ; 2 uses
  %i.as = icmp sgt i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 131, ptr %i.at, align 8, !tbaa !256
  br label %Ins_Goto_CodeRange.exit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !243
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !242
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !241
  store i32 %i.ag, ptr %i.y, align 4, !tbaa !225
  br label %Ins_Goto_CodeRange.exit

Ins_Goto_CodeRange.exit:                          ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i8 0, ptr %i.aw, align 8, !tbaa !255
  br label %bb.o

bb.n:                                             ; preds = %bb.c, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.032, i64 32 ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.f
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.n, %bb.a, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 128, ptr %i.az, align 8, !tbaa !256
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %Ins_Goto_CodeRange.exit, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_DELTAP(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.c = tail call i64 %i.b(ptr noundef %0) #22
  %i.d = load i64, ptr %1, align 8, !tbaa !176    ; 2 uses
  %.not64 = icmp eq i64 %i.d, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1001 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 610
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1099
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1101
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.05265 = phi i64 [ 1, %.lr.ph ], [ %i.bp, %bb.v ]
  %i.u = load i64, ptr %i.e, align 8, !tbaa !246  ; 3 uses
  %i.v = icmp slt i64 %i.u, 2
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.i, align 1, !tbaa !187
  %.not63 = icmp eq i8 %i.w, 0
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 129, ptr %i.j, align 8, !tbaa !256
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 0, ptr %i.e, align 8, !tbaa !246
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.x = add nsw i64 %i.u, -2                     ; 2 uses
  store i64 %i.x, ptr %i.e, align 8, !tbaa !246
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !155  ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %i.u
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !176 ; 2 uses
  %i.ac = trunc i64 %i.ab to i16                  ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176 ; 2 uses
  %i.af = load i16, ptr %i.h, align 4, !tbaa !260
  %.not55 = icmp ugt i16 %i.af, %i.ac
  br i1 %.not55, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.ag = lshr i64 %i.ae, 4
  %i.ah = and i64 %i.ag, 15                       ; 3 uses
  %i.ai = load i8, ptr %i.k, align 8, !tbaa !244
  switch i8 %i.ai, label %bb.j [
    i8 114, label %bb.i
    i8 113, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = or disjoint i64 %i.ah, 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = or disjoint i64 %i.ah, 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.051 = phi i64 [ %i.ah, %bb.g ], [ %i.ak, %bb.i ], [ %i.aj, %bb.h ]
  %i.al = load i16, ptr %i.l, align 8, !tbaa !311
  %i.am = zext i16 %i.al to i64
  %i.an = add nuw nsw i64 %.051, %i.am
  %i.ao = icmp eq i64 %i.c, %i.an
  br i1 %i.ao, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ap = and i64 %i.ae, 15                       ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.ap, 7
  %spec.select.v = select i1 %i.aq, i64 -7, i64 -8
  %spec.select = add nsw i64 %spec.select.v, %i.ap
  %i.ar = load i16, ptr %i.m, align 2, !tbaa !312
  %i.as = zext i16 %i.ar to i64
  %i.at = sub nsw i64 6, %i.as
  %i.au = and i64 %i.at, 4294967295
  %i.av = shl i64 %spec.select, %i.au             ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !220
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !26
  %i.bb = icmp eq i32 %i.ba, 40
  br i1 %i.bb, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.n, align 1, !tbaa !186
  %.not56 = icmp eq i8 %i.bc, 0
  br i1 %.not56, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.o, align 4, !tbaa !239
  %.not57 = icmp eq i8 %i.bd, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i8, ptr %i.p, align 1, !tbaa !240
  %.not58 = icmp eq i8 %i.be, 0
  br i1 %.not58, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = load i8, ptr %i.q, align 8, !tbaa !299
  %.not59 = icmp eq i8 %i.bf, 0
  br i1 %.not59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i16, ptr %i.r, align 8, !tbaa !230
  %.not60 = icmp eq i16 %i.bg, 0
  br i1 %.not60, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !289
  %i.bi = and i64 %i.ab, 65535
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !177
  %i.bl = and i8 %i.bk, 16
  %.not61 = icmp eq i8 %i.bl, 0
  br i1 %.not61, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !236
  tail call void %i.bm(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i16 noundef zeroext %i.ac, i64 noundef %i.av) #22
  br label %bb.v

bb.s:                                             ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !236
  tail call void %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i16 noundef zeroext %i.ac, i64 noundef %i.av) #22
  br label %bb.v

bb.t:                                             ; preds = %bb.f
  %i.bo = load i8, ptr %i.i, align 1, !tbaa !187
  %.not62 = icmp eq i8 %i.bo, 0
  br i1 %.not62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 134, ptr %i.j, align 8, !tbaa !256
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.j, %bb.u, %bb.t
  %i.bp = add i64 %.05265, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.bp, %i.d
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !647

.loopexit:                                        ; preds = %bb.v, %bb.a, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !246
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !247
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Ins_GETVARIATION(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !253  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322  ; 8 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !254
  %i.k = add nsw i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !245
  %i.n = sub i64 %i.k, %i.m
  %i.o = trunc i64 %i.n to i32
  %.not = icmp ult i32 %i.e, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 130, ptr %i.p, align 8, !tbaa !256
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not20 = icmp eq ptr %i.g, null
  %.not27 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not20, label %.preheader, label %.preheader21

.preheader21:                                     ; preds = %bb.c
  br i1 %.not27, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader21
  %wide.trip.count = zext i32 %i.e to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 6
  %i.q = sub i64 %i.h, %i.a
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !176
  %wide.load34 = load <2 x i64>, ptr %i.s, align 8, !tbaa !176
  %i.t = ashr <2 x i64> %wide.load, splat (i64 2)
  %i.u = ashr <2 x i64> %wide.load34, splat (i64 2)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %i.t, ptr %i.v, align 8, !tbaa !176
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader35, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader35 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader35 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.z = load i64, ptr %i.y, align 8, !tbaa !176
  %i.aa = ashr i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !176
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !649

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader35
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader35 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not27, label %.loopexit, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.ae = zext i32 %i.e to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.af, i1 false), !tbaa !176
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !176
  %i.ai = ashr i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !176
  %i.am = ashr i64 %i.al, 2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.am, ptr %i.an, align 8, !tbaa !176
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !176
  %i.aq = ashr i64 %i.ap, 2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !176
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.at = load i64, ptr %i.as, align 8, !tbaa !176
  %i.au = ashr i64 %i.at, 2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store i64 %i.au, ptr %i.av, align 8, !tbaa !176
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !650

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.lr.ph25.preheader, %.preheader21, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_MIRP(ptr noundef %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %.0.val to i16                 ; 4 uses
  %i.b = add i64 %.8.val, 1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = load i16, ptr %i.d, align 4, !tbaa !257
  %.not = icmp ugt i16 %i.e, %i.a
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load i64, ptr %i.f, align 8, !tbaa !219
  %i.h = add i64 %i.g, 1
  %.not115 = icmp ult i64 %i.b, %i.h
  br i1 %.not115, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !262  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load i16, ptr %i.k, align 4, !tbaa !260
  %.not116 = icmp ult i16 %i.j, %i.l
  br i1 %.not116, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1001
  %i.n = load i8, ptr %i.m, align 1, !tbaa !187
  %.not121 = icmp eq i8 %i.n, 0
  br i1 %.not121, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 134, ptr %i.o, align 8, !tbaa !256
  br label %bb.u

bb.f:                                             ; preds = %bb.c
  %.not117 = icmp eq i64 %i.b, 0
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224
  %i.r = tail call i64 %i.q(ptr noundef nonnull %0, i64 noundef %.8.val) #22
  %.pre2.pre = load i16, ptr %i.i, align 8, !tbaa !262
  %i.s = freeze i64 %i.r
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pre2 = phi i16 [ %.pre2.pre, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %.0105 = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load i64, ptr %i.t, align 8, !tbaa !276  ; 3 uses
  %i.v = sub i64 %.0105, %i.u
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.x = load i64, ptr %i.w, align 8, !tbaa !275
  %i.y = icmp slt i64 %spec.select, %i.x
  %i.z = sub nsw i64 0, %i.u
  %i.aa = icmp slt i64 %.0105, 0
  %spec.select7 = select i1 %i.aa, i64 %i.z, i64 %i.u
  %.1106 = select i1 %i.y, i64 %spec.select7, i64 %.0105 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !266
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre5 = and i64 %.0.val, 65535
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !300
  %i.ag = zext i16 %.pre2 to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !203
  %i.aj = trunc i64 %.1106 to i32                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !227
  %i.am = sext i16 %i.al to i32
  %i.an = tail call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.aj, i32 noundef %i.am) #23
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %i.ai, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !302
  %i.as = and i64 %.0.val, 65535                  ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !203
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !259
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !230
  %i.ay = sext i16 %i.ax to i32
  %i.az = tail call fastcc i32 @TT_MulFix14_long_long(i32 noundef %i.aj, i32 noundef %i.ay) #23
  %i.ba = sext i32 %i.az to i64
  %i.bb = add i64 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !259
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !258
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !306
  %.pre = load i16, ptr %i.i, align 8, !tbaa !262
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi = phi i64 [ %.pre5, %._crit_edge ], [ %i.as, %bb.i ] ; 2 uses
  %i.bg = phi i16 [ %.pre2, %._crit_edge ], [ %.pre, %bb.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !234
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !302
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.pre-phi ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !203
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !300
  %i.bp = zext i16 %i.bg to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !203
  %i.bs = sub i64 %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !259
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !259
  %i.bx = sub i64 %i.bu, %i.bw
  %i.by = tail call i64 %i.bi(ptr noundef nonnull %0, i64 noundef %i.bs, i64 noundef %i.bx) #22 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !232
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !258
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.pre-phi ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !203
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !261
  %i.ch = load i16, ptr %i.i, align 8, !tbaa !262
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !203
  %i.cl = sub i64 %i.ce, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !259
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !259
  %i.cq = sub i64 %i.cn, %i.cp
  %i.cr = tail call i64 %i.ca(ptr noundef nonnull %0, i64 noundef %i.cl, i64 noundef %i.cq) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !310
  %.not118 = icmp ne i8 %i.ct, 0
  %i.cu = xor i64 %i.by, %.1106
  %i.cv = icmp slt i64 %i.cu, 0
  %or.cond = select i1 %.not118, i1 %i.cv, i1 false
  %i.cw = sub i64 0, %.1106
  %.2107 = select i1 %or.cond, i64 %i.cw, i64 %.1106 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !244 ; 4 uses
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = and i32 %i.cz, 4
  %.not119 = icmp eq i32 %i.da, 0
  br i1 %.not119, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !265
  %i.dd = load i16, ptr %i.ab, align 2, !tbaa !266
  %i.de = icmp eq i16 %i.dc, %i.dd
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !274
  %i.dh = sub i64 %.2107, %i.by
  %spec.select124 = tail call i64 @llvm.abs.i64(i64 %i.dh, i1 false)
  %i.di = icmp sgt i64 %spec.select124, %i.dg
  %.3 = select i1 %i.di, i64 %i.by, i64 %.2107
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i64 [ %.3, %bb.l ], [ %.2107, %bb.k ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !238
  %i.dl = and i8 %i.cy, 3
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = tail call i64 %i.dk(ptr noundef nonnull %0, i64 noundef %.4, i32 noundef %i.dm) #22
  %.pre3 = load i8, ptr %i.cx, align 8, !tbaa !244
  br label %Round_None.exit

bb.n:                                             ; preds = %bb.j
  %i.do = and i32 %i.cz, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !176 ; 2 uses
  %i.dt = icmp sgt i64 %.2107, -1
  br i1 %i.dt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.du = add i64 %i.ds, %.2107
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.du, i64 0)
  br label %Round_None.exit

bb.p:                                             ; preds = %bb.n
  %i.dv = sub i64 %.2107, %i.ds
  %spec.store.select1.i = tail call i64 @llvm.smin.i64(i64 %i.dv, i64 0)
  br label %Round_None.exit

Round_None.exit:                                  ; preds = %bb.p, %bb.o, %bb.m
  %i.dw = phi i8 [ %.pre3, %bb.m ], [ %i.cy, %bb.o ], [ %i.cy, %bb.p ]
  %.0103 = phi i64 [ %i.dn, %bb.m ], [ %spec.store.select.i, %bb.o ], [ %spec.store.select1.i, %bb.p ] ; 3 uses
  %i.dx = and i8 %i.dw, 8
  %.not120 = icmp eq i8 %i.dx, 0
  br i1 %.not120, label %bb.t, label %bb.q

bb.q:                                             ; preds = %Round_None.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !269 ; 2 uses
  %i.ea = icmp sgt i64 %i.by, -1
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %spec.select125 = tail call i64 @llvm.smax.i64(i64 %.0103, i64 %i.dz)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.eb = sub i64 0, %i.dz
  %spec.select126 = tail call i64 @llvm.smin.i64(i64 %.0103, i64 %i.eb)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %Round_None.exit
  %.2 = phi i64 [ %.0103, %Round_None.exit ], [ %spec.select125, %bb.r ], [ %spec.select126, %bb.s ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !236
  %i.ee = sub i64 %.2, %i.cr
  tail call void %i.ed(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i16 noundef zeroext %i.a, i64 noundef %i.ee) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.e, %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 8, !tbaa !262
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 538
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !263
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !244
  %i.ek = and i8 %i.ej, 16
  %.not122 = icmp eq i8 %i.ek, 0
  br i1 %.not122, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %i.a, ptr %i.ef, align 8, !tbaa !262
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i16 %i.a, ptr %i.el, align 4, !tbaa !264
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Ins_MDRP(ptr noundef %0, i64 %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %.0.val to i16                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i16, ptr %i.c, align 4, !tbaa !257
  %.not = icmp ugt i16 %i.d, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !262  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = load i16, ptr %i.g, align 4, !tbaa !260
  %.not98 = icmp ult i16 %i.f, %i.h
  br i1 %.not98, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1001
  %i.j = load i8, ptr %i.i, align 1, !tbaa !187
  %.not101 = icmp eq i8 %i.j, 0
  br i1 %.not101, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 134, ptr %i.k, align 8, !tbaa !256
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.m = load i16, ptr %i.l, align 4, !tbaa !265
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.p = load i16, ptr %i.o, align 2, !tbaa !266
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !302
  %i.t = and i64 %.0.val, 65535
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !300
  %i.x = zext i16 %i.f to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !203
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !203
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !259
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !259
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = tail call i64 %i.aa(ptr noundef nonnull %0, i64 noundef %i.ad, i64 noundef %i.ai) #22
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !305
  %i.am = and i64 %.0.val, 65535
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !301
  %i.aq = zext i16 %i.f to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !303 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load i64, ptr %i.au, align 8, !tbaa !304 ; 2 uses
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !234
  %i.az = load i64, ptr %i.an, align 8, !tbaa !203
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !203
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !259
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = tail call i64 %i.ay(ptr noundef nonnull %0, i64 noundef %i.bb, i64 noundef %i.bg) #22
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !303
  %sext6 = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext6, 32
  %sext7 = shl i64 %i.bi, 32
  %i.bk = ashr exact i64 %sext7, 32
  %i.bl = mul nsw i64 %i.bk, %i.bj                ; 2 uses
  %i.bm = ashr i64 %i.bl, 63
  %i.bn = add nsw i64 %i.bl, 32768
  %i.bo = add nsw i64 %i.bn, %i.bm
  %i.bp = shl i64 %i.bo, 16
  %i.bq = ashr i64 %i.bp, 32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.an, align 8, !tbaa !203
  %i.bs = load i64, ptr %i.ar, align 8, !tbaa !203
  %i.bt = sub i64 %i.br, %i.bs
  %sext = shl i64 %i.bt, 32
  %i.bu = ashr exact i64 %sext, 32
  %sext1 = shl i64 %i.at, 32
  %i.bv = ashr exact i64 %sext1, 32
  %i.bw = mul nsw i64 %i.bu, %i.bv                ; 2 uses
  %i.bx = ashr i64 %i.bw, 63
  %i.by = add nsw i64 %i.bw, 32768
  %i.bz = add nsw i64 %i.by, %i.bx
  %i.ca = shl i64 %i.bz, 16
  %i.cb = ashr i64 %i.ca, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !259
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !259
  %i.cg = sub i64 %i.cd, %i.cf
  %sext3 = shl i64 %i.cg, 32
  %i.ch = ashr exact i64 %sext3, 32
  %sext4 = shl i64 %i.av, 32
  %i.ci = ashr exact i64 %sext4, 32
  %i.cj = mul nsw i64 %i.ch, %i.ci                ; 2 uses
  %i.ck = ashr i64 %i.cj, 63
  %i.cl = add nsw i64 %i.cj, 32768
  %i.cm = add nsw i64 %i.cl, %i.ck
  %i.cn = shl i64 %i.cm, 16
  %i.co = ashr i64 %i.cn, 32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !234
  %i.cr = tail call i64 %i.cq(ptr noundef nonnull %0, i64 noundef %i.cb, i64 noundef %i.co) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.1 = phi i64 [ %i.aj, %bb.g ], [ %i.bq, %bb.i ], [ %i.cr, %bb.j ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !275 ; 3 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !276 ; 4 uses
  %i.cx = add nsw i64 %i.cw, %i.ct
  %i.cy = icmp slt i64 %.1, %i.cx
  %i.cz = sub nsw i64 %i.cw, %i.ct
  %i.da = icmp sgt i64 %.1, %i.cz
  %or.cond = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = sub nsw i64 0, %i.cw
  %i.dc = icmp slt i64 %.1, 0
  %spec.select105 = select i1 %i.dc, i64 %i.db, i64 %i.cw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2 = phi i64 [ %.1, %bb.l ], [ %spec.select105, %bb.m ], [ %.1, %bb.k ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !244 ; 3 uses
  %i.df = zext i8 %i.de to i32                    ; 3 uses
  %i.dg = and i32 %i.df, 4
  %.not99 = icmp eq i32 %i.dg, 0
  br i1 %.not99, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !238
  %i.dj = and i32 %i.df, 3
  %i.dk = tail call i64 %i.di(ptr noundef nonnull %0, i64 noundef %.2, i32 noundef %i.dj) #22
  %.pre = load i8, ptr %i.dd, align 8, !tbaa !244
  br label %Round_None.exit

bb.p:                                             ; preds = %bb.n
  %i.dl = and i32 %i.df, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !176 ; 2 uses
  %i.dq = icmp sgt i64 %.2, -1
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dr = add i64 %i.dp, %.2
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.dr, i64 0)
  br label %Round_None.exit

bb.r:                                             ; preds = %bb.p
  %i.ds = sub i64 %.2, %i.dp
  %spec.store.select1.i = tail call i64 @llvm.smin.i64(i64 %i.ds, i64 0)
  br label %Round_None.exit

Round_None.exit:                                  ; preds = %bb.r, %bb.q, %bb.o
  %i.dt = phi i8 [ %.pre, %bb.o ], [ %i.de, %bb.q ], [ %i.de, %bb.r ]
  %.090 = phi i64 [ %i.dk, %bb.o ], [ %spec.store.select.i, %bb.q ], [ %spec.store.select1.i, %bb.r ] ; 3 uses
  %i.du = and i8 %i.dt, 8
  %.not100 = icmp eq i8 %i.du, 0
  br i1 %.not100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %Round_None.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !269 ; 2 uses
  %i.dx = icmp sgt i64 %.2, -1
end_hunk_8

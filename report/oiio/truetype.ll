Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/truetype?download=true
inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@TT_RunIns:bb.a
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.qj = sext i16 %i.qc to i64
  %i.qk = sext i16 %i.qa to i64
  %i.ql = mul nsw i64 %i.qk, %i.qj
  %i.qm = sext i16 %i.qe to i64
  %i.qn = sext i16 %i.qg to i64
  %i.qo = mul nsw i64 %i.qn, %i.qm
  %i.qp = add nsw i64 %i.qo, %i.ql
  %i.qq = ashr i64 %i.qp, 14
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %.sink.i425 = phi i64 [ %i.qq, %bb.da ], [ %i.qi, %bb.cz ], [ %i.qf, %bb.cx ] ; 3 uses
  store i64 %.sink.i425, ptr %i.cs, align 8, !tbaa !229
  %i.qr = icmp eq i16 %i.qc, 16384                ; 2 uses
  %i.qs = icmp eq i32 %i.qd, 16384                ; 2 uses
  %Project_y.Project1237 = select i1 %i.qs, ptr @Project_y, ptr @Project
  %Project_y.Dual_Project1238 = select i1 %i.qs, ptr @Project_y, ptr @Dual_Project
  %Project.sink1226 = select i1 %i.qr, ptr @Project_x, ptr %Project_y.Project1237
  %Dual_Project.sink.i426 = select i1 %i.qr, ptr @Project_x, ptr %Project_y.Dual_Project1238
  store ptr %Project.sink1226, ptr %i.ew, align 8, !tbaa !232
  store ptr %Dual_Project.sink.i426, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.cq, align 8, !tbaa !179
  %i.qt = icmp eq i64 %.sink.i425, 16384
  br i1 %i.qt, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %i.qb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store <2 x ptr> <ptr @Direct_Move_X, ptr @Direct_Move_Orig_X>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SPVFS.exit

bb.de:                                            ; preds = %bb.dc
  %i.qu = load i16, ptr %i.ev, align 8, !tbaa !230
  %i.qv = icmp eq i16 %i.qu, 16384
  br i1 %i.qv, label %bb.df, label %Ins_SPVFS.exit

bb.df:                                            ; preds = %bb.de
  store <2 x ptr> <ptr @Direct_Move_Y, ptr @Direct_Move_Orig_Y>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SPVFS.exit

bb.dg:                                            ; preds = %bb.db
  %i.qw = add nsw i64 %.sink.i425, 1023
  %i.qx = icmp ult i64 %i.qw, 2047
  br i1 %i.qx, label %bb.dh, label %Ins_SPVFS.exit

bb.dh:                                            ; preds = %bb.dg
  store i64 16384, ptr %i.cs, align 8, !tbaa !229
  br label %Ins_SPVFS.exit

Ins_SPVFS.exit:                                   ; preds = %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh
  store i64 0, ptr %i.an, align 8, !tbaa !222
  br label %Ins_SPVTL.exitthread-pre-split

bb.di:                                            ; preds = %bb.ao
  %.val371 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.qy = getelementptr i8, ptr %i.jk, i64 8
  %.val372 = load i64, ptr %i.qy, align 8, !tbaa !176
  %sext.i428 = shl i64 %.val372, 48
  %i.qz = ashr exact i64 %sext.i428, 48           ; 2 uses
  %sext7.i = shl i64 %.val371, 48
  %i.ra = ashr exact i64 %sext7.i, 48             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.rb = or i64 %i.qz, %i.ra
  %or.cond.i.i429 = icmp eq i64 %i.rb, 0
  br i1 %or.cond.i.i429, label %.Normalize.exit_crit_edge.i, label %bb.dj

.Normalize.exit_crit_edge.i:                      ; preds = %bb.di
  %.pre.i434 = load i16, ptr %i.az, align 2, !tbaa !227
  br label %Normalize.exit.i430

bb.dj:                                            ; preds = %bb.di
  store i64 %i.ra, ptr %7, align 8, !tbaa !203
  store i64 %i.qz, ptr %i.hi, align 8, !tbaa !259
  %i.rc = call i32 @FT_Vector_NormLen(ptr noundef nonnull %7) #22 ; 0 uses
  %i.rd = load i64, ptr %7, align 8, !tbaa !203
  %i.re = sdiv i64 %i.rd, 4
  %i.rf = trunc i64 %i.re to i16                  ; 2 uses
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
  store i32 %i.st, ptr %i.az, align 2, !tbaa !120
  %i.su = trunc i32 %i.st to i16                  ; 2 uses
  %i.sv = icmp eq i16 %i.su, 16384                ; 2 uses
  %i.sw = lshr i32 %i.st, 16                      ; 3 uses
  %11 = zext nneg i32 %i.sw to i64
  br i1 %i.sv, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sx = icmp eq i32 %i.sw, 16384
  br i1 %i.sx, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sy = sext i16 %i.su to i64                   ; 2 uses
  %i.sz = mul nsw i64 %i.sy, %i.sy
  %sext.i435 = shl nuw i64 %11, 48
  %12 = ashr exact i64 %sext.i435, 48             ; 2 uses
  %i.ta = mul nsw i64 %12, %12
  %i.tb = add nuw nsw i64 %i.ta, %i.sz
  %i.tc = lshr i64 %i.tb, 14
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %.sink.i436.a = phi i64 [ %i.tc, %bb.ed ], [ 16384, %bb.eb ], [ 16384, %bb.ec ] ; 3 uses
  %Project.sink.i = phi ptr [ @Project, %bb.ed ], [ @Project_x, %bb.eb ], [ @Project_y, %bb.ec ]
  store i64 %.sink.i436.a, ptr %i.cs, align 8, !tbaa !229
  store ptr %Project.sink.i, ptr %i.ew, align 8, !tbaa !232
  %i.td = load i16, ptr %i.ci, align 2, !tbaa !233
  %i.te = icmp eq i16 %i.td, 16384
  br i1 %i.te, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tf = load i16, ptr %i.ep, align 8, !tbaa !235
  %i.tg = icmp eq i16 %i.tf, 16384
  %Project_y.Dual_Project1241 = select i1 %i.tg, ptr @Project_y, ptr @Dual_Project
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %Dual_Project.sink1229 = phi ptr [ @Project_x, %bb.ee ], [ %Project_y.Dual_Project1241, %bb.ef ]
  store ptr %Dual_Project.sink1229, ptr %i.ex, align 8, !tbaa !234
  store <2 x ptr> <ptr @Direct_Move, ptr @Direct_Move_Orig>, ptr %i.cq, align 8, !tbaa !179
  %i.th = icmp eq i64 %.sink.i436.a, 16384
  br i1 %i.th, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.sv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store <2 x ptr> <ptr @Direct_Move_X, ptr @Direct_Move_Orig_X>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVTPV.exit

bb.ej:                                            ; preds = %bb.eh
  %i.ti = icmp eq i32 %i.sw, 16384
  br i1 %i.ti, label %bb.ek, label %Ins_SFVTPV.exit

bb.ek:                                            ; preds = %bb.ej
  store <2 x ptr> <ptr @Direct_Move_Y, ptr @Direct_Move_Orig_Y>, ptr %i.cq, align 8, !tbaa !179
  br label %Ins_SFVTPV.exit

bb.el:                                            ; preds = %bb.eg
  %i.tj = icmp samesign ult i64 %.sink.i436.a, 1024
  br i1 %i.tj, label %bb.em, label %Ins_SFVTPV.exit

bb.em:                                            ; preds = %bb.el
  store i64 16384, ptr %i.cs, align 8, !tbaa !229
  br label %Ins_SFVTPV.exit

Ins_SFVTPV.exit:                                  ; preds = %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em
  store i64 0, ptr %i.an, align 8, !tbaa !222
  br label %Ins_SPVTL.exitthread-pre-split

bb.en:                                            ; preds = %bb.ao
  %i.tk = load i64, ptr %i.jk, align 8, !tbaa !176 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !176 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !176 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !176 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !176 ; 2 uses
  %i.tt = trunc i64 %i.tq to i32
  %i.tu = and i32 %i.tt, 65535
  %i.tv = load i16, ptr %i.fn, align 4, !tbaa !260
  %i.tw = zext i16 %i.tv to i32                   ; 2 uses
  %.not.i = icmp samesign ult i32 %i.tu, %i.tw
  %i.tx = trunc i64 %i.ts to i32
  %i.ty = and i32 %i.tx, 65535
  %.not95.i = icmp samesign ult i32 %i.ty, %i.tw
  %or.cond.i = select i1 %.not.i, i1 %.not95.i, i1 false
  br i1 %or.cond.i, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.tz = trunc i64 %i.tm to i32
  %i.ua = and i32 %i.tz, 65535
  %i.ub = load i16, ptr %i.ek, align 4, !tbaa !257
  %i.uc = zext i16 %i.ub to i32                   ; 2 uses
  %.not96.i = icmp samesign ult i32 %i.ua, %i.uc
  %i.ud = trunc i64 %i.to to i32
  %i.ue = and i32 %i.ud, 65535
  %.not97.i = icmp samesign ult i32 %i.ue, %i.uc
  %or.cond102.i = select i1 %.not96.i, i1 %.not97.i, i1 false
  br i1 %or.cond102.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.uf = trunc i64 %i.tk to i32
  %i.ug = and i32 %i.uf, 65535
  %i.uh = load i16, ptr %i.el, align 4, !tbaa !623
  %i.ui = zext i16 %i.uh to i32
  %.not98.i = icmp samesign ult i32 %i.ug, %i.ui
  br i1 %.not98.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.uj = load i8, ptr %i.do, align 1, !tbaa !187
  %.not99.i = icmp eq i8 %i.uj, 0
  br i1 %.not99.i, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.er:                                            ; preds = %bb.ep
  %i.uk = load ptr, ptr %i.fo, align 8, !tbaa !261 ; 2 uses
  %i.ul = and i64 %i.ts, 65535                    ; 2 uses
  %i.um = getelementptr inbounds nuw [16 x i8], ptr %i.uk, i64 %i.ul ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !203
  %i.uo = and i64 %i.tq, 65535                    ; 2 uses
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %i.uk, i64 %i.uo ; 2 uses
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !203 ; 2 uses
  %i.ur = sub i64 %i.un, %i.uq                    ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !259
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !259 ; 2 uses
  %i.uw = sub i64 %i.ut, %i.uv                    ; 2 uses
  %i.ux = load ptr, ptr %i.eq, align 8, !tbaa !258 ; 2 uses
  %i.uy = and i64 %i.to, 65535                    ; 2 uses
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !203
  %i.vb = and i64 %i.tm, 65535                    ; 3 uses
  %i.vc = getelementptr inbounds nuw [16 x i8], ptr %i.ux, i64 %i.vb ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !203 ; 2 uses
  %i.ve = sub i64 %i.va, %i.vd                    ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !259
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !259 ; 2 uses
  %i.vj = sub i64 %i.vg, %i.vi                    ; 3 uses
  %i.vk = sub i64 0, %i.uw                        ; 2 uses
  %i.vl = call i64 @FT_MulDiv(i64 noundef %i.ve, i64 noundef %i.vk, i64 noundef 64) #22
  %i.vm = call i64 @FT_MulDiv(i64 noundef %i.vj, i64 noundef %i.ur, i64 noundef 64) #22
  %i.vn = add i64 %i.vm, %i.vl                    ; 3 uses
  %i.vo = call i64 @FT_MulDiv(i64 noundef %i.ve, i64 noundef %i.ur, i64 noundef 64) #22
  %i.vp = call i64 @FT_MulDiv(i64 noundef %i.vj, i64 noundef %i.uw, i64 noundef 64) #22
  %i.vq = add i64 %i.vp, %i.vo
  %i.vr = call i64 @llvm.abs.i64(i64 %i.vn, i1 true)
  %i.vs = mul i64 %i.vr, 19
  %i.vt = call i64 @llvm.abs.i64(i64 %i.vq, i1 true)
  %i.vu = icmp sgt i64 %i.vs, %i.vt
  br i1 %i.vu, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.vv = sub i64 %i.uv, %i.vi
  %i.vw = sub i64 %i.uq, %i.vd
  %i.vx = call i64 @FT_MulDiv(i64 noundef %i.vw, i64 noundef %i.vk, i64 noundef 64) #22
  %i.vy = call i64 @FT_MulDiv(i64 noundef %i.vv, i64 noundef %i.ur, i64 noundef 64) #22
  %i.vz = add i64 %i.vy, %i.vx                    ; 2 uses
  %i.wa = call i64 @FT_MulDiv(i64 noundef %i.vz, i64 noundef %i.ve, i64 noundef %i.vn) #22
  %i.wb = call i64 @FT_MulDiv(i64 noundef %i.vz, i64 noundef %i.vj, i64 noundef %i.vn) #22
  %i.wc = load ptr, ptr %i.eq, align 8, !tbaa !258
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.wc, i64 %i.vb ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !203
  %i.wf = add i64 %i.we, %i.wa
  %i.wg = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.wh = and i64 %i.tk, 65535                    ; 2 uses
  %i.wi = getelementptr inbounds nuw [16 x i8], ptr %i.wg, i64 %i.wh ; 2 uses
  store i64 %i.wf, ptr %i.wi, align 8, !tbaa !203
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !259
  %i.wl = add i64 %i.wk, %i.wb
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.wm = load ptr, ptr %i.eq, align 8, !tbaa !258 ; 2 uses
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %i.vb
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %i.uy
  %i.wp = load ptr, ptr %i.fo, align 8, !tbaa !261 ; 2 uses
  %i.wq = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %i.uo
  %i.wr = getelementptr inbounds nuw [16 x i8], ptr %i.wp, i64 %i.ul
  %i.ws = load ptr, ptr %i.er, align 8, !tbaa !624
  %i.wt = and i64 %i.tk, 65535                    ; 2 uses
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.ws, i64 %i.wt ; 2 uses
  %i.wv = load <2 x i64>, ptr %i.wn, align 8, !tbaa !176
  %i.ww = load <2 x i64>, ptr %i.wo, align 8, !tbaa !176
  %i.wx = load <2 x i64>, ptr %i.wq, align 8, !tbaa !176
  %i.wy = load <2 x i64>, ptr %i.wr, align 8, !tbaa !176
  %i.wz = add <2 x i64> %i.ww, %i.wv
  %i.xa = add <2 x i64> %i.wz, %i.wx
  %i.xb = add <2 x i64> %i.xa, %i.wy
  %i.xc = sdiv <2 x i64> %i.xb, splat (i64 4)     ; 2 uses
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  store i64 %i.xd, ptr %i.wu, align 8, !tbaa !203
  %i.xe = extractelement <2 x i64> %i.xc, i64 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sink104.i = phi ptr [ %i.wu, %bb.et ], [ %i.wi, %bb.es ]
  %.sink.i438 = phi i64 [ %i.xe, %bb.et ], [ %i.wl, %bb.es ]
  %.pre-phi.i = phi i64 [ %i.wt, %bb.et ], [ %i.wh, %bb.es ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.sink104.i, i64 8
  store i64 %.sink.i438, ptr %i.xf, align 8, !tbaa !259
  %i.xg = load ptr, ptr %i.gl, align 8, !tbaa !627
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.pre-phi.i ; 2 uses
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !177
  %i.xj = or i8 %i.xi, 24
  store i8 %i.xj, ptr %i.xh, align 1, !tbaa !177
  br label %Ins_SPVTL.exitthread-pre-split

bb.ev:                                            ; preds = %bb.ao
  %.val377 = load i64, ptr %i.jk, align 8, !tbaa !176
  %i.xk = trunc i64 %.val377 to i16
end_hunk_0

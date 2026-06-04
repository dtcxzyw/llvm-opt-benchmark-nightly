inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0_@PixarLogDecode:bb.a
  br i1 %i.bd, label %.lr.ph175.preheader.i, label %horizontalAccumulateF.exit

.lr.ph175.preheader.i:                            ; preds = %bb.ae
  %i.ng = zext nneg i16 %i.mr to i32
  %i.nh = zext nneg i16 %i.ml to i32
  %i.ni = zext nneg i16 %i.mf to i32
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.lr.ph175.i, %.lr.ph175.preheader.i
  %.0136174.i = phi ptr [ %i.nj, %.lr.ph175.i ], [ %.0122258, %.lr.ph175.preheader.i ] ; 3 uses
  %.0138173.i = phi i32 [ %i.od, %.lr.ph175.i ], [ %i.ng, %.lr.ph175.preheader.i ]
  %.0140172.i = phi i32 [ %i.nv, %.lr.ph175.i ], [ %i.nh, %.lr.ph175.preheader.i ]
  %.0142171.i = phi i32 [ %i.nn, %.lr.ph175.i ], [ %i.ni, %.lr.ph175.preheader.i ]
  %.0144.in170.i = phi i32 [ %.0144.i, %.lr.ph175.i ], [ %i.o, %.lr.ph175.preheader.i ] ; 2 uses
  %.0147169.i = phi ptr [ %i.nk, %.lr.ph175.i ], [ %.0123257, %.lr.ph175.preheader.i ] ; 2 uses
  %.0144.i = add nsw i32 %.0144.in170.i, -3
  %i.nj = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 6 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 6 ; 2 uses
  %i.nl = load i16, ptr %i.nj, align 2, !tbaa !59
  %i.nm = zext i16 %i.nl to i32
  %i.nn = add i32 %.0142171.i, %i.nm              ; 2 uses
  %i.no = and i32 %i.nn, 2047
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !52
  %i.ns = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 8
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !59
  %i.nu = zext i16 %i.nt to i32
  %i.nv = add i32 %.0140172.i, %i.nu              ; 2 uses
  %i.nw = and i32 %i.nv, 2047
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !52
  %i.oa = getelementptr inbounds nuw i8, ptr %.0136174.i, i64 10
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !59
  %i.oc = zext i16 %i.ob to i32
  %i.od = add i32 %.0138173.i, %i.oc              ; 2 uses
  %i.oe = and i32 %i.od, 2047
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !52
  %i.oi = fmul float %i.oh, 2.048000e+03          ; 2 uses
  %i.oj = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.nz, i64 1
  %i.ol = fmul <2 x float> %i.ok, splat (float 2.048000e+03) ; 2 uses
  %i.om = fcmp olt <2 x float> %i.ol, splat (float 3.071000e+03)
  %i.on = select <2 x i1> %i.om, <2 x float> %i.ol, <2 x float> splat (float 3.071000e+03)
  %i.oo = fptoui <2 x float> %i.on to <2 x i16>
  store <2 x i16> %i.oo, ptr %i.nk, align 2, !tbaa !59
  %i.op = fcmp olt float %i.oi, 3.071000e+03
  %i.oq = select i1 %i.op, float %i.oi, float 3.071000e+03
  %i.or = fptoui float %i.oq to i16
  %i.os = getelementptr inbounds nuw i8, ptr %.0147169.i, i64 10
  store i16 %i.or, ptr %i.os, align 2, !tbaa !59
  %i.ot = icmp samesign ugt i32 %.0144.in170.i, 6
  br i1 %i.ot, label %.lr.ph175.i, label %horizontalAccumulateF.exit

bb.af:                                            ; preds = %bb.ad
  %i.ou = load <4 x i16>, ptr %.0122258, align 2, !tbaa !59
  %i.ov = and <4 x i16> %i.ou, splat (i16 2047)   ; 5 uses
  %i.ow = extractelement <4 x i16> %i.ov, i64 0
  %i.ox = zext nneg i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ox
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !52
  %i.pa = extractelement <4 x i16> %i.ov, i64 1
  %i.pb = zext nneg i16 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !52
  %i.pe = extractelement <4 x i16> %i.ov, i64 2
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !52
  %i.pi = extractelement <4 x i16> %i.ov, i64 3
  %i.pj = zext nneg i16 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.pj
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !52
  %i.pm = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.pn = insertelement <4 x float> %i.pm, float %i.pd, i64 1
  %i.po = insertelement <4 x float> %i.pn, float %i.ph, i64 2
  %i.pp = insertelement <4 x float> %i.po, float %i.pl, i64 3
  %i.pq = fmul <4 x float> %i.pp, splat (float 2.048000e+03) ; 2 uses
  %i.pr = fcmp olt <4 x float> %i.pq, splat (float 3.071000e+03)
  %i.ps = select <4 x i1> %i.pr, <4 x float> %i.pq, <4 x float> splat (float 3.071000e+03)
  %i.pt = fptoui <4 x float> %i.ps to <4 x i16>
  store <4 x i16> %i.pt, ptr %.0123257, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i152, label %horizontalAccumulateF.exit

.lr.ph.preheader.i152:                            ; preds = %bb.af
  %i.pu = zext nneg <4 x i16> %i.ov to <4 x i32>
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.preheader.i152
  %.1168.i = phi ptr [ %i.pw, %.lr.ph.i153 ], [ %.0122258, %.lr.ph.preheader.i152 ]
  %.1145.in163.i = phi i32 [ %.1145.i, %.lr.ph.i153 ], [ %i.o, %.lr.ph.preheader.i152 ] ; 2 uses
  %.1148162.i = phi ptr [ %i.px, %.lr.ph.i153 ], [ %.0123257, %.lr.ph.preheader.i152 ]
  %i.pv = phi <4 x i32> [ %i.qa, %.lr.ph.i153 ], [ %i.pu, %.lr.ph.preheader.i152 ]
  %.1145.i = add nsw i32 %.1145.in163.i, -4
  %i.pw = getelementptr inbounds nuw i8, ptr %.1168.i, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.1148162.i, i64 8 ; 2 uses
  %i.py = load <4 x i16>, ptr %i.pw, align 2, !tbaa !59
  %i.pz = zext <4 x i16> %i.py to <4 x i32>
  %i.qa = add <4 x i32> %i.pv, %i.pz              ; 5 uses
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  %i.qc = and i32 %i.qb, 2047
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qd
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !52
  %i.qg = extractelement <4 x i32> %i.qa, i64 1
  %i.qh = and i32 %i.qg, 2047
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qi
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !52
  %i.ql = extractelement <4 x i32> %i.qa, i64 2
  %i.qm = and i32 %i.ql, 2047
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !52
  %i.qq = extractelement <4 x i32> %i.qa, i64 3
  %i.qr = and i32 %i.qq, 2047
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !52
  %i.qv = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.qw = insertelement <4 x float> %i.qv, float %i.qk, i64 1
  %i.qx = insertelement <4 x float> %i.qw, float %i.qp, i64 2
  %i.qy = insertelement <4 x float> %i.qx, float %i.qu, i64 3
  %i.qz = fmul <4 x float> %i.qy, splat (float 2.048000e+03) ; 2 uses
  %i.ra = fcmp olt <4 x float> %i.qz, splat (float 3.071000e+03)
  %i.rb = select <4 x i1> %i.ra, <4 x float> %i.qz, <4 x float> splat (float 3.071000e+03)
  %i.rc = fptoui <4 x float> %i.rb to <4 x i16>
  store <4 x i16> %i.rc, ptr %i.px, align 2, !tbaa !59
  %i.rd = icmp samesign ugt i32 %.1145.in163.i, 8
  br i1 %i.rd, label %.lr.ph.i153, label %horizontalAccumulateF.exit

.preheader156.i:                                  ; preds = %bb.ad, %.preheader156.i
  %.2149.i = phi ptr [ %i.rp, %.preheader156.i ], [ %.0123257, %bb.ad ] ; 2 uses
  %.2.i154 = phi ptr [ %i.ro, %.preheader156.i ], [ %.0122258, %bb.ad ] ; 2 uses
  %.0135.i = phi i32 [ %i.re, %.preheader156.i ], [ %i.mc, %bb.ad ] ; 2 uses
  %i.re = add nsw i32 %.0135.i, -1
  %i.rf = load i16, ptr %.2.i154, align 2, !tbaa !59
  %i.rg = and i16 %i.rf, 2047
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !52
  %i.rk = fmul float %i.rj, 2.048000e+03          ; 2 uses
  %i.rl = fcmp olt float %i.rk, 3.071000e+03
  %i.rm = select i1 %i.rl, float %i.rk, float 3.071000e+03
  %i.rn = fptoui float %i.rm to i16
  store i16 %i.rn, ptr %.2149.i, align 2, !tbaa !59
  %i.ro = getelementptr inbounds nuw i8, ptr %.2.i154, i64 2 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.2149.i, i64 2 ; 2 uses
  %i.rq = icmp samesign ugt i32 %.0135.i, 1
  br i1 %i.rq, label %.preheader156.i, label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader156.i
  %.2146176.i = sub nsw i32 %i.o, %i.mc           ; 2 uses
  %i.rr = icmp sgt i32 %.2146176.i, 0
  br i1 %i.rr, label %.preheader.lr.ph.i155, label %horizontalAccumulateF.exit

.preheader.lr.ph.i155:                            ; preds = %.preheader154.i
  %i.rs = zext i16 %i.mb to i64
  br label %.preheader.i156

.loopexit.i159:                                   ; preds = %bb.ag
  %.2146.i = sub nsw i32 %.2146179.i, %i.mc       ; 2 uses
  %i.rt = icmp sgt i32 %.2146.i, 0
  br i1 %i.rt, label %.preheader.i156, label %horizontalAccumulateF.exit

.preheader.i156:                                  ; preds = %.loopexit.i159, %.preheader.lr.ph.i155
  %.2146179.i = phi i32 [ %.2146176.i, %.preheader.lr.ph.i155 ], [ %.2146.i, %.loopexit.i159 ]
  %.3178.i = phi ptr [ %i.ro, %.preheader.lr.ph.i155 ], [ %i.sh, %.loopexit.i159 ]
  %.3150177.i = phi ptr [ %i.rp, %.preheader.lr.ph.i155 ], [ %i.si, %.loopexit.i159 ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader.i156
  %.4151.i = phi ptr [ %i.si, %bb.ag ], [ %.3150177.i, %.preheader.i156 ] ; 2 uses
  %.4.i157 = phi ptr [ %i.sh, %bb.ag ], [ %.3178.i, %.preheader.i156 ] ; 3 uses
  %.0.i158 = phi i32 [ %i.ru, %bb.ag ], [ %i.mc, %.preheader.i156 ] ; 2 uses
  %i.ru = add nsw i32 %.0.i158, -1
  %i.rv = load i16, ptr %.4.i157, align 2, !tbaa !59
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.4.i157, i64 %i.rs ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !59
  %i.ry = add i16 %i.rx, %i.rv                    ; 2 uses
  store i16 %i.ry, ptr %i.rw, align 2, !tbaa !59
  %i.rz = and i16 %i.ry, 2047
  %i.sa = zext nneg i16 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.sa
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !52
  %i.sd = fmul float %i.sc, 2.048000e+03          ; 2 uses
  %i.se = fcmp olt float %i.sd, 3.071000e+03
  %i.sf = select i1 %i.se, float %i.sd, float 3.071000e+03
  %i.sg = fptoui float %i.sf to i16
  store i16 %i.sg, ptr %.4151.i, align 2, !tbaa !59
  %i.sh = getelementptr inbounds nuw i8, ptr %.4.i157, i64 2 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.4151.i, i64 2 ; 2 uses
  %i.sj = icmp sgt i32 %.0.i158, 1
  br i1 %i.sj, label %bb.ag, label %.loopexit.i159

bb.ah:                                            ; preds = %bb.r
  %i.sk = load i16, ptr %i.j, align 8, !tbaa !79  ; 4 uses
  %i.sl = zext i16 %i.sk to i32                   ; 15 uses
  %.not.i160 = icmp slt i32 %i.o, %i.sl
  br i1 %.not.i160, label %horizontalAccumulateF.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.sk, label %iter.check438 [
    i16 3, label %bb.aj
    i16 4, label %bb.ak
  ]

iter.check438:                                    ; preds = %bb.ai
  %i.sm = icmp ne i16 %i.sk, 0
  %umin.neg = sext i1 %i.sm to i32
  %i.sn = add nsw i32 %umin.neg, %i.sl            ; 3 uses
  %i.so = zext i32 %i.sn to i64
  %i.sp = add nuw nsw i64 %i.so, 1                ; 5 uses
  %min.iters.check420 = icmp ult i32 %i.sn, 3
  %i.sq = add i64 %i.bk, %.0123257419
  %diff.check = icmp ult i64 %i.sq, 32
  %or.cond = select i1 %min.iters.check420, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader107.i.preheader, label %vector.main.loop.iter.check421

vector.main.loop.iter.check421:                   ; preds = %iter.check438
  %min.iters.check422 = icmp ult i32 %i.sn, 15
  br i1 %min.iters.check422, label %vec.epilog.ph442, label %vector.ph423

vector.ph423:                                     ; preds = %vector.main.loop.iter.check421
  %n.mod.vf424 = and i64 %i.sp, 12
  %n.vec425 = and i64 %i.sp, 8589934576           ; 5 uses
  %i.sr = shl nuw nsw i64 %n.vec425, 1            ; 2 uses
  %i.ss = getelementptr i8, ptr %.0123257, i64 %i.sr ; 2 uses
  %i.st = getelementptr i8, ptr %.0122258, i64 %i.sr ; 2 uses
  %i.su = trunc i64 %n.vec425 to i32
  %i.sv = sub i32 %i.sl, %i.su
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph423
  %index427 = phi i64 [ 0, %vector.ph423 ], [ %index.next432, %vector.body426 ] ; 2 uses
  %i.sw = shl i64 %index427, 1                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.0123257, i64 %i.sw ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.0122258, i64 %i.sw ; 2 uses
  %i.sx = getelementptr i8, ptr %next.gep429, i64 16
  %wide.load430 = load <8 x i16>, ptr %next.gep429, align 2, !tbaa !59
  %wide.load431 = load <8 x i16>, ptr %i.sx, align 2, !tbaa !59
  %i.sy = and <8 x i16> %wide.load430, splat (i16 2047)
  %i.sz = and <8 x i16> %wide.load431, splat (i16 2047)
  %i.ta = getelementptr i8, ptr %next.gep428, i64 16
  store <8 x i16> %i.sy, ptr %next.gep428, align 2, !tbaa !59
  store <8 x i16> %i.sz, ptr %i.ta, align 2, !tbaa !59
  %index.next432 = add nuw i64 %index427, 16      ; 2 uses
  %i.tb = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.tb, label %middle.block433, label %vector.body426, !llvm.loop !95

middle.block433:                                  ; preds = %vector.body426
  %cmp.n434 = icmp eq i64 %i.sp, %n.vec425
  br i1 %cmp.n434, label %.preheader105.i, label %vec.epilog.iter.check440

vec.epilog.iter.check440:                         ; preds = %middle.block433
  %min.epilog.iters.check441 = icmp eq i64 %n.mod.vf424, 0
  br i1 %min.epilog.iters.check441, label %.preheader107.i.preheader, label %vec.epilog.ph442, !prof !96

vec.epilog.ph442:                                 ; preds = %vector.main.loop.iter.check421, %vec.epilog.iter.check440
  %vec.epilog.resume.val435 = phi i64 [ %n.vec425, %vec.epilog.iter.check440 ], [ 0, %vector.main.loop.iter.check421 ]
  %n.vec444 = and i64 %i.sp, 8589934588           ; 4 uses
  %i.tc = shl nuw nsw i64 %n.vec444, 1            ; 2 uses
  %i.td = getelementptr i8, ptr %.0123257, i64 %i.tc ; 2 uses
  %i.te = getelementptr i8, ptr %.0122258, i64 %i.tc ; 2 uses
  %i.tf = trunc i64 %n.vec444 to i32
  %i.tg = sub i32 %i.sl, %i.tf
  br label %vec.epilog.vector.body445

vec.epilog.vector.body445:                        ; preds = %vec.epilog.vector.body445, %vec.epilog.ph442
  %index446 = phi i64 [ %vec.epilog.resume.val435, %vec.epilog.ph442 ], [ %index.next450, %vec.epilog.vector.body445 ] ; 2 uses
  %i.th = shl i64 %index446, 1                    ; 2 uses
  %next.gep447 = getelementptr i8, ptr %.0123257, i64 %i.th
  %next.gep448 = getelementptr i8, ptr %.0122258, i64 %i.th
  %wide.load449 = load <4 x i16>, ptr %next.gep448, align 2, !tbaa !59
  %i.ti = and <4 x i16> %wide.load449, splat (i16 2047)
  store <4 x i16> %i.ti, ptr %next.gep447, align 2, !tbaa !59
  %index.next450 = add nuw i64 %index446, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next450, %n.vec444
  br i1 %i.tj, label %vec.epilog.middle.block451, label %vec.epilog.vector.body445, !llvm.loop !97

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body445
  %cmp.n452 = icmp eq i64 %i.sp, %n.vec444
  br i1 %cmp.n452, label %.preheader105.i, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %iter.check438, %vec.epilog.iter.check440, %vec.epilog.middle.block451
  %.297.i.ph = phi ptr [ %.0123257, %iter.check438 ], [ %i.ss, %vec.epilog.iter.check440 ], [ %i.td, %vec.epilog.middle.block451 ]
  %.2.i163.ph = phi ptr [ %.0122258, %iter.check438 ], [ %i.st, %vec.epilog.iter.check440 ], [ %i.te, %vec.epilog.middle.block451 ]
  %.086.i.ph = phi i32 [ %i.sl, %iter.check438 ], [ %i.sv, %vec.epilog.iter.check440 ], [ %i.tg, %vec.epilog.middle.block451 ]
  br label %.preheader107.i

bb.aj:                                            ; preds = %bb.ai
  %i.tk = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.tk, ptr %.0123257, align 2, !tbaa !59
  %i.tl = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !59
  %i.tn = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.tm, ptr %i.tn, align 2, !tbaa !59
  %i.to = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !59 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.tp, ptr %i.tq, align 2, !tbaa !59
  br i1 %i.bd, label %.lr.ph126.preheader.i, label %horizontalAccumulateF.exit

.lr.ph126.preheader.i:                            ; preds = %bb.aj
  %i.tr = load i16, ptr %i.tl, align 2, !tbaa !59
  %i.ts = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.lr.ph126.i, %.lr.ph126.preheader.i
  %.087125.i = phi ptr [ %i.tt, %.lr.ph126.i ], [ %.0122258, %.lr.ph126.preheader.i ] ; 3 uses
  %.089124.i = phi i16 [ %i.uf, %.lr.ph126.i ], [ %i.tp, %.lr.ph126.preheader.i ]
  %.091123.i = phi i16 [ %i.ua, %.lr.ph126.i ], [ %i.tr, %.lr.ph126.preheader.i ]
  %.093122.i = phi i16 [ %i.tw, %.lr.ph126.i ], [ %i.ts, %.lr.ph126.preheader.i ]
  %.095121.i = phi ptr [ %i.tu, %.lr.ph126.i ], [ %.0123257, %.lr.ph126.preheader.i ] ; 3 uses
  %.0100.in120.i = phi i32 [ %.0100.i, %.lr.ph126.i ], [ %i.o, %.lr.ph126.preheader.i ] ; 2 uses
  %.0100.i = add nsw i32 %.0100.in120.i, -3
  %i.tt = getelementptr inbounds nuw i8, ptr %.087125.i, i64 6 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.095121.i, i64 6 ; 2 uses
  %i.tv = load i16, ptr %i.tt, align 2, !tbaa !59
  %i.tw = add i16 %i.tv, %.093122.i               ; 2 uses
  %i.tx = and i16 %i.tw, 2047
  store i16 %i.tx, ptr %i.tu, align 2, !tbaa !59
  %i.ty = getelementptr inbounds nuw i8, ptr %.087125.i, i64 8
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !59
  %i.ua = add i16 %i.tz, %.091123.i               ; 2 uses
  %i.ub = and i16 %i.ua, 2047
  %i.uc = getelementptr inbounds nuw i8, ptr %.095121.i, i64 8
  store i16 %i.ub, ptr %i.uc, align 2, !tbaa !59
  %i.ud = getelementptr inbounds nuw i8, ptr %.087125.i, i64 10
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !59
  %i.uf = add i16 %i.ue, %.089124.i               ; 2 uses
  %i.ug = and i16 %i.uf, 2047
  %i.uh = getelementptr inbounds nuw i8, ptr %.095121.i, i64 10
  store i16 %i.ug, ptr %i.uh, align 2, !tbaa !59
  %i.ui = icmp samesign ugt i32 %.0100.in120.i, 6
  br i1 %i.ui, label %.lr.ph126.i, label %horizontalAccumulateF.exit

bb.ak:                                            ; preds = %bb.ai
  %i.uj = load i16, ptr %.0122258, align 2, !tbaa !59
  store i16 %i.uj, ptr %.0123257, align 2, !tbaa !59
  %i.uk = getelementptr inbounds nuw i8, ptr %.0122258, i64 2 ; 2 uses
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !59
  %i.um = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i16 %i.ul, ptr %i.um, align 2, !tbaa !59
  %i.un = getelementptr inbounds nuw i8, ptr %.0122258, i64 4 ; 2 uses
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !59
  %i.up = getelementptr inbounds nuw i8, ptr %.0123257, i64 4
  store i16 %i.uo, ptr %i.up, align 2, !tbaa !59
  %i.uq = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !59 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0123257, i64 6
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !59
  br i1 %i.bc, label %.lr.ph.preheader.i161, label %horizontalAccumulateF.exit

.lr.ph.preheader.i161:                            ; preds = %bb.ak
  %i.ut = load i16, ptr %i.un, align 2, !tbaa !59
  %i.uu = load i16, ptr %i.uk, align 2, !tbaa !59
  %i.uv = load i16, ptr %.0122258, align 2, !tbaa !59
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162, %.lr.ph.preheader.i161
  %.1119.i = phi ptr [ %i.uw, %.lr.ph.i162 ], [ %.0122258, %.lr.ph.preheader.i161 ] ; 4 uses
  %.088118.i = phi i16 [ %i.vn, %.lr.ph.i162 ], [ %i.ur, %.lr.ph.preheader.i161 ]
  %.190117.i = phi i16 [ %i.vi, %.lr.ph.i162 ], [ %i.ut, %.lr.ph.preheader.i161 ]
  %.192116.i = phi i16 [ %i.vd, %.lr.ph.i162 ], [ %i.uu, %.lr.ph.preheader.i161 ]
  %.194115.i = phi i16 [ %i.uz, %.lr.ph.i162 ], [ %i.uv, %.lr.ph.preheader.i161 ]
  %.196114.i = phi ptr [ %i.ux, %.lr.ph.i162 ], [ %.0123257, %.lr.ph.preheader.i161 ] ; 4 uses
  %.1101.in113.i = phi i32 [ %.1101.i, %.lr.ph.i162 ], [ %i.o, %.lr.ph.preheader.i161 ] ; 2 uses
  %.1101.i = add nsw i32 %.1101.in113.i, -4
  %i.uw = getelementptr inbounds nuw i8, ptr %.1119.i, i64 8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.196114.i, i64 8 ; 2 uses
  %i.uy = load i16, ptr %i.uw, align 2, !tbaa !59
  %i.uz = add i16 %i.uy, %.194115.i               ; 2 uses
  %i.va = and i16 %i.uz, 2047
  store i16 %i.va, ptr %i.ux, align 2, !tbaa !59
  %i.vb = getelementptr inbounds nuw i8, ptr %.1119.i, i64 10
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !59
  %i.vd = add i16 %i.vc, %.192116.i               ; 2 uses
  %i.ve = and i16 %i.vd, 2047
  %i.vf = getelementptr inbounds nuw i8, ptr %.196114.i, i64 10
  store i16 %i.ve, ptr %i.vf, align 2, !tbaa !59
  %i.vg = getelementptr inbounds nuw i8, ptr %.1119.i, i64 12
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !59
  %i.vi = add i16 %i.vh, %.190117.i               ; 2 uses
  %i.vj = and i16 %i.vi, 2047
  %i.vk = getelementptr inbounds nuw i8, ptr %.196114.i, i64 12
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !59
  %i.vl = getelementptr inbounds nuw i8, ptr %.1119.i, i64 14
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !59
  %i.vn = add i16 %i.vm, %.088118.i               ; 2 uses
  %i.vo = and i16 %i.vn, 2047
  %i.vp = getelementptr inbounds nuw i8, ptr %.196114.i, i64 14
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !59
  %i.vq = icmp samesign ugt i32 %.1101.in113.i, 8
  br i1 %i.vq, label %.lr.ph.i162, label %horizontalAccumulateF.exit

.preheader107.i:                                  ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.297.i = phi ptr [ %i.vv, %.preheader107.i ], [ %.297.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %.2.i163 = phi ptr [ %i.vu, %.preheader107.i ], [ %.2.i163.ph, %.preheader107.i.preheader ] ; 2 uses
  %.086.i = phi i32 [ %i.vr, %.preheader107.i ], [ %.086.i.ph, %.preheader107.i.preheader ] ; 2 uses
  %i.vr = add nsw i32 %.086.i, -1
  %i.vs = load i16, ptr %.2.i163, align 2, !tbaa !59
  %i.vt = and i16 %i.vs, 2047
  store i16 %i.vt, ptr %.297.i, align 2, !tbaa !59
  %i.vu = getelementptr inbounds nuw i8, ptr %.2.i163, i64 2 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.297.i, i64 2 ; 2 uses
  %i.vw = icmp samesign ugt i32 %.086.i, 1
  br i1 %i.vw, label %.preheader107.i, label %.preheader105.i, !llvm.loop !98

.preheader105.i:                                  ; preds = %.preheader107.i, %vec.epilog.middle.block451, %middle.block433
  %.lcssa367 = phi ptr [ %i.te, %vec.epilog.middle.block451 ], [ %i.st, %middle.block433 ], [ %i.vu, %.preheader107.i ]
  %.lcssa366 = phi ptr [ %i.td, %vec.epilog.middle.block451 ], [ %i.ss, %middle.block433 ], [ %i.vv, %.preheader107.i ]
  %.2102127.i = sub nsw i32 %i.o, %i.sl           ; 2 uses
  %i.vx = icmp sgt i32 %.2102127.i, 0
  br i1 %i.vx, label %.preheader.lr.ph.i164, label %horizontalAccumulateF.exit

.preheader.lr.ph.i164:                            ; preds = %.preheader105.i
  %i.vy = zext i16 %i.sk to i64                   ; 4 uses
  %i.vz = shl nuw nsw i64 %i.vy, 1                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.sl, i32 1)
  %i.wa = sub nsw i32 %i.sl, %smin
  %i.wb = shl nuw nsw i32 %i.wa, 1
  %i.wc = zext nneg i32 %i.wb to i64              ; 3 uses
  %smin395 = tail call i32 @llvm.smin.i32(i32 %i.sl, i32 1)
  %i.wd = sub nsw i32 %i.sl, %smin395             ; 3 uses
  %narrow = add nuw nsw i32 %i.wd, 1
  %i.we = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.wd, 3
  %min.iters.check396 = icmp ult i32 %i.wd, 15
  %n.mod.vf = and i64 %i.we, 12
  %n.vec = and i64 %i.we, 2147483632              ; 5 uses
  %4 = shl nuw nsw i64 %n.vec, 1                  ; 2 uses
  %5 = trunc nuw nsw i64 %n.vec to i32
  %6 = sub nsw i32 %i.sl, %5
  %cmp.n = icmp eq i64 %n.vec, %i.we
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec406 = and i64 %i.we, 2147483644           ; 4 uses
  %i.wf = shl nuw nsw i64 %n.vec406, 1            ; 2 uses
  %i.wg = trunc nuw nsw i64 %n.vec406 to i32
  %i.wh = sub nsw i32 %i.sl, %i.wg
  %cmp.n414 = icmp eq i64 %n.vec406, %i.we
  br label %iter.check

.loopexit.i168:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa369 = phi ptr [ %12, %vec.epilog.middle.block ], [ %i.wl, %middle.block ], [ %i.wz, %vec.epilog.scalar.ph ]
  %.lcssa368 = phi ptr [ %11, %vec.epilog.middle.block ], [ %i.wk, %middle.block ], [ %i.xa, %vec.epilog.scalar.ph ]
  %.2102.i = sub nsw i32 %.2102130.i, %i.sl       ; 2 uses
  %i.wi = icmp sgt i32 %.2102.i, 0
  br i1 %i.wi, label %iter.check, label %horizontalAccumulateF.exit

iter.check:                                       ; preds = %.loopexit.i168, %.preheader.lr.ph.i164
  %.2102130.i = phi i32 [ %.2102127.i, %.preheader.lr.ph.i164 ], [ %.2102.i, %.loopexit.i168 ]
  %.3129.i = phi ptr [ %.lcssa367, %.preheader.lr.ph.i164 ], [ %.lcssa369, %.loopexit.i168 ] ; 10 uses
  %.398128.i = phi ptr [ %.lcssa366, %.preheader.lr.ph.i164 ], [ %.lcssa368, %.loopexit.i168 ] ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.3129.i, i64 %i.vz ; 2 uses
  %scevgep383 = getelementptr i8, ptr %.3129.i, i64 2 ; 2 uses
  %i.wj = getelementptr i8, ptr %scevgep383, i64 %i.vz
  %scevgep384 = getelementptr i8, ptr %i.wj, i64 %i.wc ; 2 uses
  %scevgep385 = getelementptr i8, ptr %.398128.i, i64 2
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.wc ; 2 uses
  %scevgep387 = getelementptr i8, ptr %scevgep383, i64 %i.wc ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep386
  %bound1 = icmp ult ptr %.398128.i, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %bound0388 = icmp ult ptr %scevgep, %scevgep387
  %bound1389 = icmp ult ptr %.3129.i, %scevgep384
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx = or i1 %found.conflict, %found.conflict390
  %bound0391 = icmp ult ptr %.398128.i, %scevgep387
  %bound1392 = icmp ult ptr %.3129.i, %scevgep386
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx, %found.conflict393
  br i1 %conflict.rdx394, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.wk = getelementptr i8, ptr %.398128.i, i64 %4 ; 2 uses
  %i.wl = getelementptr i8, ptr %.3129.i, i64 %4  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wm = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.398128.i, i64 %i.wm ; 2 uses
  %next.gep397 = getelementptr i8, ptr %.3129.i, i64 %i.wm ; 4 uses
  %i.wn = getelementptr i8, ptr %next.gep397, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep397, align 2, !tbaa !59, !alias.scope !99
  %wide.load398 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !59, !alias.scope !99
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %next.gep397, i64 %i.vy ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 2 uses
  %wide.load399 = load <8 x i16>, ptr %i.wo, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %wide.load400 = load <8 x i16>, ptr %7, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %8 = add <8 x i16> %wide.load399, %wide.load
  %i.wp = add <8 x i16> %wide.load400, %wide.load398
  store <8 x i16> %8, ptr %i.wo, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  store <8 x i16> %i.wp, ptr %7, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %wide.load401 = load <8 x i16>, ptr %next.gep397, align 2, !tbaa !59, !alias.scope !99
  %wide.load402 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !59, !alias.scope !99
  %9 = and <8 x i16> %wide.load401, splat (i16 2047)
  %i.wq = and <8 x i16> %wide.load402, splat (i16 2047)
  %10 = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %9, ptr %next.gep, align 2, !tbaa !59, !alias.scope !106, !noalias !99
  store <8 x i16> %i.wq, ptr %10, align 2, !tbaa !59, !alias.scope !106, !noalias !99
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.wr = icmp eq i64 %index.next, %n.vec
  br i1 %i.wr, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i168, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %11 = getelementptr i8, ptr %.398128.i, i64 %i.wf ; 2 uses
  %12 = getelementptr i8, ptr %.3129.i, i64 %i.wf ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index407 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next413, %vec.epilog.vector.body ] ; 2 uses
  %13 = shl i64 %index407, 1                      ; 2 uses
  %next.gep408 = getelementptr i8, ptr %.398128.i, i64 %13
  %next.gep409 = getelementptr i8, ptr %.3129.i, i64 %13 ; 2 uses
  %wide.load410 = load <4 x i16>, ptr %next.gep409, align 2, !tbaa !59, !alias.scope !99 ; 2 uses
  %14 = getelementptr inbounds nuw [2 x i8], ptr %next.gep409, i64 %i.vy ; 2 uses
  %wide.load411 = load <4 x i16>, ptr %14, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %15 = add <4 x i16> %wide.load411, %wide.load410
  store <4 x i16> %15, ptr %14, align 2, !tbaa !59, !alias.scope !102, !noalias !104
  %16 = and <4 x i16> %wide.load410, splat (i16 2047)
  store <4 x i16> %16, ptr %next.gep408, align 2, !tbaa !59, !alias.scope !106, !noalias !99
  %index.next413 = add nuw i64 %index407, 4       ; 2 uses
  %17 = icmp eq i64 %index.next413, %n.vec406
  br i1 %17, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n414, label %.loopexit.i168, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.499.i.ph = phi ptr [ %.398128.i, %iter.check ], [ %.398128.i, %vector.memcheck ], [ %i.wk, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  %.4.i166.ph = phi ptr [ %.3129.i, %iter.check ], [ %.3129.i, %vector.memcheck ], [ %i.wl, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.0.i167.ph = phi i32 [ %i.sl, %iter.check ], [ %i.sl, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.wh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.499.i = phi ptr [ %i.xa, %vec.epilog.scalar.ph ], [ %.499.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.4.i166 = phi ptr [ %i.wz, %vec.epilog.scalar.ph ], [ %.4.i166.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.0.i167 = phi i32 [ %i.ws, %vec.epilog.scalar.ph ], [ %.0.i167.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ws = add nsw i32 %.0.i167, -1
  %i.wt = load i16, ptr %.4.i166, align 2, !tbaa !59
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %.4.i166, i64 %i.vy ; 2 uses
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !59
  %i.ww = add i16 %i.wv, %i.wt
  store i16 %i.ww, ptr %i.wu, align 2, !tbaa !59
  %i.wx = load i16, ptr %.4.i166, align 2, !tbaa !59
  %i.wy = and i16 %i.wx, 2047
  store i16 %i.wy, ptr %.499.i, align 2, !tbaa !59
  %i.wz = getelementptr inbounds nuw i8, ptr %.4.i166, i64 2 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.499.i, i64 2 ; 2 uses
  %i.xb = icmp sgt i32 %.0.i167, 1
  br i1 %i.xb, label %vec.epilog.scalar.ph, label %.loopexit.i168, !llvm.loop !109

bb.al:                                            ; preds = %bb.r
  %i.xc = load i16, ptr %i.j, align 8, !tbaa !79  ; 3 uses
  %i.xd = zext i16 %i.xc to i32                   ; 5 uses
  %i.xe = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 16 uses
  %.not.i169 = icmp slt i32 %i.o, %i.xd
  br i1 %.not.i169, label %horizontalAccumulateF.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  switch i16 %i.xc, label %.preheader123.i189 [
    i16 3, label %bb.an
    i16 4, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.xf = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.xg = and i16 %i.xf, 2047                     ; 2 uses
  %i.xh = zext nneg i16 %i.xg to i64
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !64
  store i8 %i.xj, ptr %.0123257, align 1, !tbaa !64
  %i.xk = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !59
  %i.xm = and i16 %i.xl, 2047                     ; 2 uses
  %i.xn = zext nneg i16 %i.xm to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !64
  %i.xq = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !64
  %i.xr = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.xs = load i16, ptr %i.xr, align 2, !tbaa !59
  %i.xt = and i16 %i.xs, 2047                     ; 2 uses
  %i.xu = zext nneg i16 %i.xt to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !64
  %i.xx = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !64
  br i1 %i.bd, label %.lr.ph142.preheader.i180, label %horizontalAccumulateF.exit

.lr.ph142.preheader.i180:                         ; preds = %bb.an
  %i.xy = zext nneg i16 %i.xt to i32
  %i.xz = zext nneg i16 %i.xm to i32
  %i.ya = zext nneg i16 %i.xg to i32
  br label %.lr.ph142.i181

.lr.ph142.i181:                                   ; preds = %.lr.ph142.i181, %.lr.ph142.preheader.i180
  %.0103141.i182 = phi ptr [ %i.yb, %.lr.ph142.i181 ], [ %.0122258, %.lr.ph142.preheader.i180 ] ; 3 uses
  %.0105140.i183 = phi i32 [ %i.yw, %.lr.ph142.i181 ], [ %i.xy, %.lr.ph142.preheader.i180 ]
  %.0107139.i184 = phi i32 [ %i.yn, %.lr.ph142.i181 ], [ %i.xz, %.lr.ph142.preheader.i180 ]
  %.0109138.i185 = phi i32 [ %i.yf, %.lr.ph142.i181 ], [ %i.ya, %.lr.ph142.preheader.i180 ]
  %.0111.in137.i186 = phi i32 [ %.0111.i188, %.lr.ph142.i181 ], [ %i.o, %.lr.ph142.preheader.i180 ] ; 2 uses
  %.0114136.i187 = phi ptr [ %i.yc, %.lr.ph142.i181 ], [ %.0123257, %.lr.ph142.preheader.i180 ] ; 3 uses
  %.0111.i188 = add nsw i32 %.0111.in137.i186, -3
  %i.yb = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 6 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 3 ; 2 uses
  %i.yd = load i16, ptr %i.yb, align 2, !tbaa !59
  %i.ye = zext i16 %i.yd to i32
  %i.yf = add i32 %.0109138.i185, %i.ye           ; 2 uses
  %i.yg = and i32 %i.yf, 2047
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !64
  store i8 %i.yj, ptr %i.yc, align 1, !tbaa !64
  %i.yk = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 8
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !59
  %i.ym = zext i16 %i.yl to i32
  %i.yn = add i32 %.0107139.i184, %i.ym           ; 2 uses
  %i.yo = and i32 %i.yn, 2047
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !64
  %i.ys = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 4
  store i8 %i.yr, ptr %i.ys, align 1, !tbaa !64
  %i.yt = getelementptr inbounds nuw i8, ptr %.0103141.i182, i64 10
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !59
  %i.yv = zext i16 %i.yu to i32
  %i.yw = add i32 %.0105140.i183, %i.yv           ; 2 uses
  %i.yx = and i32 %i.yw, 2047
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.yy
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !64
  %i.zb = getelementptr inbounds nuw i8, ptr %.0114136.i187, i64 5
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !64
  %i.zc = icmp samesign ugt i32 %.0111.in137.i186, 6
  br i1 %i.zc, label %.lr.ph142.i181, label %horizontalAccumulateF.exit

bb.ao:                                            ; preds = %bb.am
  %i.zd = load i16, ptr %.0122258, align 2, !tbaa !59
  %i.ze = and i16 %i.zd, 2047                     ; 2 uses
  %i.zf = zext nneg i16 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !64
  store i8 %i.zh, ptr %.0123257, align 1, !tbaa !64
  %i.zi = getelementptr inbounds nuw i8, ptr %.0122258, i64 2
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !59
  %i.zk = and i16 %i.zj, 2047                     ; 2 uses
  %i.zl = zext nneg i16 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !64
  %i.zo = getelementptr inbounds nuw i8, ptr %.0123257, i64 1
  store i8 %i.zn, ptr %i.zo, align 1, !tbaa !64
  %i.zp = getelementptr inbounds nuw i8, ptr %.0122258, i64 4
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !59
  %i.zr = and i16 %i.zq, 2047                     ; 2 uses
  %i.zs = zext nneg i16 %i.zr to i64
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !64
  %i.zv = getelementptr inbounds nuw i8, ptr %.0123257, i64 2
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !64
  %i.zw = getelementptr inbounds nuw i8, ptr %.0122258, i64 6
  %i.zx = load i16, ptr %i.zw, align 2, !tbaa !59
  %i.zy = and i16 %i.zx, 2047                     ; 2 uses
  %i.zz = zext nneg i16 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.zz
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !64
  %i.aac = getelementptr inbounds nuw i8, ptr %.0123257, i64 3
  store i8 %i.aab, ptr %i.aac, align 1, !tbaa !64
  br i1 %i.bc, label %.lr.ph.preheader.i170, label %horizontalAccumulateF.exit

.lr.ph.preheader.i170:                            ; preds = %bb.ao
  %i.aad = zext nneg i16 %i.zy to i32
  %i.aae = zext nneg i16 %i.zr to i32
  %i.aaf = zext nneg i16 %i.zk to i32
  %i.aag = zext nneg i16 %i.ze to i32
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171, %.lr.ph.preheader.i170
  %.1135.i172 = phi ptr [ %i.aah, %.lr.ph.i171 ], [ %.0122258, %.lr.ph.preheader.i170 ] ; 4 uses
  %.0104134.i173 = phi i32 [ %i.abl, %.lr.ph.i171 ], [ %i.aad, %.lr.ph.preheader.i170 ]
  %.1106133.i174 = phi i32 [ %i.abc, %.lr.ph.i171 ], [ %i.aae, %.lr.ph.preheader.i170 ]
  %.1108132.i175 = phi i32 [ %i.aat, %.lr.ph.i171 ], [ %i.aaf, %.lr.ph.preheader.i170 ]
  %.1110131.i176 = phi i32 [ %i.aal, %.lr.ph.i171 ], [ %i.aag, %.lr.ph.preheader.i170 ]
  %.1112.in130.i177 = phi i32 [ %.1112.i179, %.lr.ph.i171 ], [ %i.o, %.lr.ph.preheader.i170 ] ; 2 uses
  %.1115129.i178 = phi ptr [ %i.aai, %.lr.ph.i171 ], [ %.0123257, %.lr.ph.preheader.i170 ] ; 4 uses
  %.1112.i179 = add nsw i32 %.1112.in130.i177, -4
  %i.aah = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 8 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 4 ; 2 uses
  %i.aaj = load i16, ptr %i.aah, align 2, !tbaa !59
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = add i32 %.1110131.i176, %i.aak         ; 2 uses
  %i.aam = and i32 %i.aal, 2047
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !64
  store i8 %i.aap, ptr %i.aai, align 1, !tbaa !64
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 10
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !59
  %i.aas = zext i16 %i.aar to i32
  %i.aat = add i32 %.1108132.i175, %i.aas         ; 2 uses
  %i.aau = and i32 %i.aat, 2047
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !64
  %i.aay = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 5
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !64
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 12
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !59
  %i.abb = zext i16 %i.aba to i32
  %i.abc = add i32 %.1106133.i174, %i.abb         ; 2 uses
  %i.abd = and i32 %i.abc, 2047
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !64
  %i.abh = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 6
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !64
  %i.abi = getelementptr inbounds nuw i8, ptr %.1135.i172, i64 14
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !59
  %i.abk = zext i16 %i.abj to i32
  %i.abl = add i32 %.0104134.i173, %i.abk         ; 2 uses
  %i.abm = and i32 %i.abl, 2047
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !64
  %i.abq = getelementptr inbounds nuw i8, ptr %.1115129.i178, i64 7
  store i8 %i.abp, ptr %i.abq, align 1, !tbaa !64
  %i.abr = icmp samesign ugt i32 %.1112.in130.i177, 8
  br i1 %i.abr, label %.lr.ph.i171, label %horizontalAccumulateF.exit

.preheader123.i189:                               ; preds = %bb.am, %.preheader123.i189
  %.2116.i190 = phi ptr [ %i.abz, %.preheader123.i189 ], [ %.0123257, %bb.am ] ; 2 uses
  %.2.i191 = phi ptr [ %i.aby, %.preheader123.i189 ], [ %.0122258, %bb.am ] ; 2 uses
  %.0102.i192 = phi i32 [ %i.abs, %.preheader123.i189 ], [ %i.xd, %bb.am ] ; 2 uses
  %i.abs = add nsw i32 %.0102.i192, -1
  %i.abt = load i16, ptr %.2.i191, align 2, !tbaa !59
  %i.abu = and i16 %i.abt, 2047
  %i.abv = zext nneg i16 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !64
  store i8 %i.abx, ptr %.2116.i190, align 1, !tbaa !64
  %i.aby = getelementptr inbounds nuw i8, ptr %.2.i191, i64 2 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.2116.i190, i64 1 ; 2 uses
  %i.aca = icmp samesign ugt i32 %.0102.i192, 1
  br i1 %i.aca, label %.preheader123.i189, label %.preheader121.i193

.preheader121.i193:                               ; preds = %.preheader123.i189
  %.2113143.i194 = sub nsw i32 %i.o, %i.xd        ; 2 uses
  %i.acb = icmp sgt i32 %.2113143.i194, 0
  br i1 %i.acb, label %.preheader.lr.ph.i195, label %horizontalAccumulateF.exit

.preheader.lr.ph.i195:                            ; preds = %.preheader121.i193
end_hunk_0
begin_hunk_1_@PixarLogDecode:bb.a
  %i.ahe = zext i16 %i.acr to i64
  br label %.preheader.i211

.loopexit.i214:                                   ; preds = %bb.au
  %.2129.i = sub nsw i32 %.2129162.i, %i.acs      ; 2 uses
  %i.ahf = icmp sgt i32 %.2129.i, 0
  br i1 %i.ahf, label %.preheader.i211, label %horizontalAccumulateF.exit

.preheader.i211:                                  ; preds = %.loopexit.i214, %.preheader.lr.ph.i210
  %.2129162.i = phi i32 [ %.2129159.i, %.preheader.lr.ph.i210 ], [ %.2129.i, %.loopexit.i214 ]
  %.3161.i = phi ptr [ %i.aha, %.preheader.lr.ph.i210 ], [ %i.ahq, %.loopexit.i214 ]
  %.3133160.i = phi ptr [ %i.ahb, %.preheader.lr.ph.i210 ], [ %i.ahr, %.loopexit.i214 ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i211
  %.4134.i = phi ptr [ %i.ahr, %bb.au ], [ %.3133160.i, %.preheader.i211 ] ; 2 uses
  %.4.i212 = phi ptr [ %i.ahq, %bb.au ], [ %.3161.i, %.preheader.i211 ] ; 4 uses
  %.0.i213 = phi i32 [ %i.ahg, %bb.au ], [ %i.acs, %.preheader.i211 ] ; 2 uses
  %i.ahg = add nsw i32 %.0.i213, -1
  %i.ahh = load i16, ptr %.4.i212, align 2, !tbaa !59
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %.4.i212, i64 %i.ahe ; 2 uses
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !59
  %i.ahk = add i16 %i.ahj, %i.ahh
  store i16 %i.ahk, ptr %i.ahi, align 2, !tbaa !59
  %i.ahl = load i16, ptr %.4.i212, align 2, !tbaa !59
  %i.ahm = and i16 %i.ahl, 2047
  %i.ahn = zext nneg i16 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !64
  store i8 %i.ahp, ptr %.4134.i, align 1, !tbaa !64
  %i.ahq = getelementptr inbounds nuw i8, ptr %.4.i212, i64 2 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.4134.i, i64 1 ; 2 uses
  %i.ahs = icmp sgt i32 %.0.i213, 1
  br i1 %i.ahs, label %bb.au, label %.loopexit.i214

bb.av:                                            ; preds = %bb.r
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ahu = load i16, ptr %i.aht, align 4, !tbaa !83
  %i.ahv = zext i16 %i.ahu to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogDecode.module, ptr noundef nonnull @.str.14, i32 noundef %i.ahv) #7
  br label %.thread.sink.split

horizontalAccumulateF.exit:                       ; preds = %.lr.ph.i207, %.lr.ph158.i, %.loopexit.i214, %.lr.ph.i171, %.lr.ph142.i181, %.loopexit.i203, %.lr.ph.i162, %.lr.ph126.i, %.loopexit.i168, %.lr.ph.i153, %.lr.ph175.i, %.loopexit.i159, %.lr.ph.i144, %.lr.ph142.i, %.loopexit.i150, %.lr.ph.i, %.lr.ph156.i, %.loopexit.i, %.preheader137.i209, %bb.at, %bb.as, %bb.aq, %.preheader121.i193, %bb.ao, %bb.an, %bb.al, %.preheader105.i, %bb.ak, %bb.aj, %bb.ah, %.preheader154.i, %bb.af, %bb.ae, %bb.ac, %.preheader121.i, %bb.aa, %bb.z, %bb.x, %.preheader135.i, %bb.v, %bb.u, %bb.s
  %.sink = phi i64 [ %i.ax, %.preheader121.i193 ], [ %i.bh, %.preheader135.i ], [ %i.be, %.preheader121.i ], [ %i.be, %.preheader154.i ], [ %i.be, %.preheader105.i ], [ %i.ax, %.loopexit.i214 ], [ %i.ax, %.lr.ph.i171 ], [ %i.ax, %.preheader137.i209 ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %bb.v ], [ %i.bh, %.lr.ph156.i ], [ %i.bh, %.loopexit.i ], [ %i.ax, %.lr.ph158.i ], [ %i.be, %bb.x ], [ %i.be, %bb.z ], [ %i.be, %bb.aa ], [ %i.be, %.lr.ph142.i ], [ %i.be, %.loopexit.i150 ], [ %i.bh, %.lr.ph.i ], [ %i.be, %bb.ac ], [ %i.be, %bb.ae ], [ %i.be, %bb.af ], [ %i.be, %.lr.ph175.i ], [ %i.be, %.loopexit.i159 ], [ %i.be, %.lr.ph.i144 ], [ %i.be, %bb.ah ], [ %i.be, %bb.aj ], [ %i.be, %bb.ak ], [ %i.be, %.lr.ph126.i ], [ %i.be, %.loopexit.i168 ], [ %i.be, %.lr.ph.i153 ], [ %i.ax, %bb.al ], [ %i.ax, %bb.an ], [ %i.ax, %bb.ao ], [ %i.ax, %.lr.ph142.i181 ], [ %i.ax, %.loopexit.i203 ], [ %i.be, %.lr.ph.i162 ], [ %i.ax, %bb.aq ], [ %i.ax, %bb.as ], [ %i.ax, %bb.at ], [ %i.ax, %.lr.ph.i207 ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0123257, i64 %.sink
  %i.ahx = add nsw i64 %.0127256, %i.ax           ; 2 uses
  %i.ahy = getelementptr inbounds [2 x i8], ptr %.0122258, i64 %i.ax
  %i.ahz = icmp slt i64 %i.ahx, %.1126
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ahz, label %bb.r, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.f, %bb.h, %bb.m, %bb.av, %bb.i, %bb.j
  %.sink341 = phi ptr [ %1, %bb.j ], [ %1, %bb.i ], [ %.0123257, %bb.av ], [ %1, %bb.m ], [ %1, %bb.h ], [ %1, %bb.f ], [ %1, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sink341, i8 0, i64 %2, i1 false)
  br label %.thread

.thread:                                          ; preds = %horizontalAccumulateF.exit, %.thread.sink.split, %bb.q
  %.2 = phi i32 [ 0, %.thread.sink.split ], [ 1, %bb.q ], [ 1, %horizontalAccumulateF.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogSetupEncode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.d = load i16, ptr %i.c, align 2, !tbaa !77
  %i.e = icmp eq i16 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.g = load i16, ptr %i.f, align 2, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i16 [ %i.g, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i16 %i.h, ptr %i.i, align 8, !tbaa !79
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.j, i64 noundef range(i64 0, 4294967296) %i.m, ptr noundef null) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.n, i64 noundef range(i64 0, 4294967296) %i.q, ptr noundef null) #7
  %i.s = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.r, i64 noundef 2, ptr noundef null) #7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.s) #7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr %i.u, ptr %i.v, align 8, !tbaa !81
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 116
  %.val = load i16, ptr %i.aa, align 4, !tbaa !83 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 118
  %.val28 = load i16, ptr %i.ab, align 2, !tbaa !84 ; 7 uses
  switch i16 %.val, label %.thread32 [
    i16 32, label %bb.g
    i16 16, label %bb.h
    i16 12, label %bb.i
    i16 11, label %bb.j
    i16 8, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i16 %.val28, 3
  br i1 %i.ac, label %.thread35, label %.thread32

bb.h:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]

bb.i:                                             ; preds = %bb.f
  %i.ad = add i16 %.val28, -2
  %switch.and.i = and i16 %i.ad, -3
  %switch.selectcmp18.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp18.i, label %.thread35, label %.thread32

bb.j:                                             ; preds = %bb.f
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread35
    i16 1, label %.thread35
  ]

.thread35:                                        ; preds = %bb.j, %bb.j, %bb.h, %bb.h, %bb.g, %bb.i
  %.0.i.ph = phi i32 [ 5, %bb.g ], [ 2, %bb.j ], [ 4, %bb.h ], [ 3, %bb.i ], [ 4, %bb.h ], [ 2, %bb.j ]
  store i32 %.0.i.ph, ptr %i.x, align 8, !tbaa !32
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %switch.selectcmp.case122.i = icmp ne i16 %.val28, 4
  %switch.selectcmp.case223.i = icmp ne i16 %.val28, 1
  %switch.selectcmp24.not.i = and i1 %switch.selectcmp.case122.i, %switch.selectcmp.case223.i
  %i.ae = sext i1 %switch.selectcmp24.not.i to i32
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !32
  switch i16 %.val28, label %.thread32 [
    i16 4, label %.thread
    i16 1, label %.thread
  ]

.thread32:                                        ; preds = %bb.i, %bb.g, %bb.f, %bb.h, %bb.j, %bb.k
  %i.af = zext i16 %.val to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogSetupEncode.module, ptr noundef nonnull @.str.15, i32 noundef %i.af) #7
  br label %bb.n

.thread:                                          ; preds = %bb.k, %bb.k, %bb.e, %.thread35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.aj = tail call i32 @deflateInit_(ptr noundef nonnull %i.ag, i32 noundef %i.ai, ptr noundef nonnull @.str.4, i32 noundef 112) #7
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %.not27 = icmp eq ptr %i.al, null
  %spec.select = select i1 %.not27, ptr @.str.6, ptr %i.al
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogSetupEncode.module, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.select) #7
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ao = or i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.m, %bb.l, %.thread32
  %.0 = phi i32 [ 1, %bb.m ], [ 0, %bb.c ], [ 0, %.thread32 ], [ 0, %bb.l ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogPreEncode(ptr noundef %0, i16 zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.d, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %i.h, ptr %i.i, align 8, !tbaa !92
  %.not = icmp ult i64 %i.g, 4294967296
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogPreEncode.module, ptr noundef nonnull @.str.7) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.k = tail call i32 @deflateReset(ptr noundef nonnull %i.j) #7
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogPostEncode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.j = tail call i32 @deflate(ptr noundef nonnull %i.c, i32 noundef 4) #7 ; 2 uses
  %switch = icmp ult i32 %i.j, 2
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.e, align 8, !tbaa !92
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq i64 %i.m, %i.l
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i64 %i.m, %i.l
  store i64 %i.n, ptr %i.g, align 8, !tbaa !88
  %i.o = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #7
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !86
  store ptr %i.p, ptr %i.i, align 8, !tbaa !91
  %i.q = load i64, ptr %i.f, align 8, !tbaa !110
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.e, align 8, !tbaa !92
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85   ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not23, ptr @.str.6, ptr %i.t
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogPostEncode.module, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select) #7
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.c
  %.not22 = icmp eq i32 %i.j, 1
  br i1 %.not22, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogEncode(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.b
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.e
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 2
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.f = lshr i64 %2, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i16, ptr %i.g, align 4, !tbaa !83
  %i.i = zext i16 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.8, i32 noundef %i.i) #7
  br label %.loopexit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.066 = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %2, %bb.a ], [ %2, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 4 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !79
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %i.o = mul i32 %i.n, %i.l                       ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !74
  %i.r = zext i32 %i.q to i64
  %i.s = sext i32 %i.o to i64                     ; 12 uses
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = icmp sgt i64 %.066, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.16) #7
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 2 uses
  %i.x = icmp sgt i64 %.066, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.z = icmp samesign ugt i32 %i.o, 4            ; 3 uses
  %i.aa = icmp samesign ugt i32 %i.o, 3           ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ac = shl nsw i64 %i.s, 1                     ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ae = load float, ptr @Fltsize, align 4       ; 17 uses
  %i.af = load float, ptr @LogK1, align 4
  %i.ag = fpext float %i.af to double             ; 7 uses
  %i.ah = load float, ptr @LogK2, align 4         ; 7 uses
  %i.ai = shl nsw i64 %i.s, 2                     ; 7 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %horizontalDifferenceF.exit
  %.0135 = phi ptr [ %i.w, %.lr.ph ], [ %i.yo, %horizontalDifferenceF.exit ] ; 31 uses
  %.067134 = phi i64 [ 0, %.lr.ph ], [ %i.yn, %horizontalDifferenceF.exit ]
  %.068133 = phi ptr [ %1, %.lr.ph ], [ %i.ym, %horizontalDifferenceF.exit ] ; 31 uses
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.aj, label %bb.dh [
    i32 5, label %bb.i
    i32 4, label %bb.cx
    i32 0, label %bb.dc
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = load i16, ptr %i.j, align 8, !tbaa !79  ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 6 uses
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 17 uses
  %.not.i = icmp slt i32 %i.o, %i.al
  br i1 %.not.i, label %horizontalDifferenceF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i16 %i.ak, label %.preheader237.i [
    i16 3, label %bb.k
    i16 4, label %bb.aq
  ]

.preheader237.i:                                  ; preds = %bb.j
  %i.an = load float, ptr @LogK1, align 4
  %i.ao = fpext float %i.an to double             ; 3 uses
  %i.ap = load float, ptr @LogK2, align 4         ; 3 uses
  br label %bb.cg

bb.k:                                             ; preds = %bb.j
  %i.aq = load float, ptr %.068133, align 4, !tbaa !52 ; 5 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp olt float %i.aq, 2.000000e+00
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = fmul float %i.ae, %i.aq
  %i.au = fptosi float %i.at to i32
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !59
  %i.ay = uitofp i16 %i.ax to double
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.az = fcmp ogt float %i.aq, 2.420000e+01
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = fmul float %i.aq, %i.ah
  %i.bb = fpext float %i.ba to double
  %i.bc = tail call double @log(double noundef %i.bb) #7, !tbaa !3
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.bc, double 5.000000e-01)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %i.be = phi double [ 0.000000e+00, %bb.k ], [ %i.ay, %bb.m ], [ %i.bd, %bb.o ], [ 2.047000e+03, %bb.n ]
  %i.bf = fptoui double %i.be to i16              ; 2 uses
  store i16 %i.bf, ptr %.0135, align 2, !tbaa !59
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.068133, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52 ; 5 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = fcmp olt float %i.bi, 2.000000e+00
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = fmul float %i.ae, %i.bi
  %i.bm = fptosi float %i.bl to i32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !59
  %i.bq = uitofp i16 %i.bp to double
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = fcmp ogt float %i.bi, 2.420000e+01
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = fmul float %i.bi, %i.ah
  %i.bt = fpext float %i.bs to double
  %i.bu = tail call double @log(double noundef %i.bt) #7, !tbaa !3
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.bu, double 5.000000e-01)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.bw = phi double [ 0.000000e+00, %bb.p ], [ %i.bq, %bb.r ], [ %i.bv, %bb.t ], [ 2.047000e+03, %bb.s ]
  %i.bx = fptoui double %i.bw to i16              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !59
  %i.bz = zext i16 %i.bx to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.068133, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !52 ; 5 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = fcmp olt float %i.cb, 2.000000e+00
  br i1 %i.cd, label %bb.w, label %bb.x

end_hunk_1
begin_hunk_2_@PixarLogEncode:bb.a
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !59 ; 2 uses
  %i.vb = sub i16 %i.va, %.0111146.i94
  %i.vc = and i16 %i.vb, 2047
  %i.vd = getelementptr inbounds nuw i8, ptr %.0120142.i98, i64 10
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !59
  %i.ve = icmp samesign ugt i32 %.0117.in143.i97, 6
  br i1 %i.ve, label %.lr.ph148.i92, label %horizontalDifferenceF.exit

bb.df:                                            ; preds = %bb.dd
  %i.vf = load i8, ptr %.068133, align 1, !tbaa !64
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !59 ; 2 uses
  store i16 %i.vi, ptr %.0135, align 2, !tbaa !59
  %i.vj = getelementptr inbounds nuw i8, ptr %.068133, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !64
  %i.vl = zext i8 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.vl
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !59 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !59
  %i.vp = getelementptr inbounds nuw i8, ptr %.068133, i64 2
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !64
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.vr
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !59 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.0135, i64 4
  store i16 %i.vt, ptr %i.vu, align 2, !tbaa !59
  %i.vv = getelementptr inbounds nuw i8, ptr %.068133, i64 3
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !64
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !59 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0135, i64 6
  store i16 %i.vz, ptr %i.wa, align 2, !tbaa !59
  br i1 %i.z, label %.lr.ph.i83, label %horizontalDifferenceF.exit

.lr.ph.i83:                                       ; preds = %bb.df, %.lr.ph.i83
  %.1141.i84 = phi ptr [ %i.wb, %.lr.ph.i83 ], [ %.068133, %bb.df ] ; 4 uses
  %.0110140.i85 = phi i16 [ %i.xd, %.lr.ph.i83 ], [ %i.vz, %bb.df ]
  %.1112139.i86 = phi i16 [ %i.wv, %.lr.ph.i83 ], [ %i.vt, %bb.df ]
  %.1114138.i87 = phi i16 [ %i.wn, %.lr.ph.i83 ], [ %i.vn, %bb.df ]
  %.1116137.i88 = phi i16 [ %i.wf, %.lr.ph.i83 ], [ %i.vi, %bb.df ]
  %.1118.in136.i89 = phi i32 [ %.1118.i91, %.lr.ph.i83 ], [ %i.o, %bb.df ] ; 2 uses
  %.1121135.i90 = phi ptr [ %i.wi, %.lr.ph.i83 ], [ %.0135, %bb.df ] ; 4 uses
  %.1118.i91 = add nsw i32 %.1118.in136.i89, -4
  %i.wb = getelementptr inbounds nuw i8, ptr %.1141.i84, i64 4 ; 2 uses
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !64
  %i.wd = zext i8 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !59 ; 2 uses
  %i.wg = sub i16 %i.wf, %.1116137.i88
  %i.wh = and i16 %i.wg, 2047
  %i.wi = getelementptr inbounds nuw i8, ptr %.1121135.i90, i64 8 ; 2 uses
  store i16 %i.wh, ptr %i.wi, align 2, !tbaa !59
  %i.wj = getelementptr inbounds nuw i8, ptr %.1141.i84, i64 5
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !64
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !59 ; 2 uses
  %i.wo = sub i16 %i.wn, %.1114138.i87
  %i.wp = and i16 %i.wo, 2047
  %i.wq = getelementptr inbounds nuw i8, ptr %.1121135.i90, i64 10
  store i16 %i.wp, ptr %i.wq, align 2, !tbaa !59
  %i.wr = getelementptr inbounds nuw i8, ptr %.1141.i84, i64 6
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !64
  %i.wt = zext i8 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.wt
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !59 ; 2 uses
  %i.ww = sub i16 %i.wv, %.1112139.i86
  %i.wx = and i16 %i.ww, 2047
  %i.wy = getelementptr inbounds nuw i8, ptr %.1121135.i90, i64 12
  store i16 %i.wx, ptr %i.wy, align 2, !tbaa !59
  %i.wz = getelementptr inbounds nuw i8, ptr %.1141.i84, i64 7
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !64
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.xb
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !59 ; 2 uses
  %i.xe = sub i16 %i.xd, %.0110140.i85
  %i.xf = and i16 %i.xe, 2047
  %i.xg = getelementptr inbounds nuw i8, ptr %.1121135.i90, i64 14
  store i16 %i.xf, ptr %i.xg, align 2, !tbaa !59
  %i.xh = icmp samesign ugt i32 %.1118.in136.i89, 8
  br i1 %i.xh, label %.lr.ph.i83, label %horizontalDifferenceF.exit

.preheader129.i100:                               ; preds = %bb.dd, %.preheader129.i100
  %.2122.i101 = phi ptr [ %i.xn, %.preheader129.i100 ], [ %.0135, %bb.dd ] ; 2 uses
  %.2.i102 = phi ptr [ %i.xo, %.preheader129.i100 ], [ %.068133, %bb.dd ] ; 2 uses
  %.0108.i103 = phi i32 [ %i.xi, %.preheader129.i100 ], [ %i.to, %bb.dd ] ; 2 uses
  %i.xi = add nsw i32 %.0108.i103, -1
  %i.xj = load i8, ptr %.2.i102, align 1, !tbaa !64
  %i.xk = zext i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.xk
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !59
  store i16 %i.xm, ptr %.2122.i101, align 2, !tbaa !59
  %i.xn = getelementptr inbounds nuw i8, ptr %.2122.i101, i64 2 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.2.i102, i64 1 ; 2 uses
  %i.xp = icmp samesign ugt i32 %.0108.i103, 1
  br i1 %i.xp, label %.preheader129.i100, label %.preheader127.i104

.preheader127.i104:                               ; preds = %.preheader129.i100
  %.2119149.i105 = sub nsw i32 %i.o, %i.to        ; 2 uses
  %i.xq = icmp sgt i32 %.2119149.i105, 0
  br i1 %i.xq, label %.preheader.lr.ph.i106, label %horizontalDifferenceF.exit

.preheader.lr.ph.i106:                            ; preds = %.preheader127.i104
  %i.xr = sub nsw i32 0, %i.to
  %i.xs = sext i32 %i.xr to i64
  br label %.preheader.i107

.loopexit.i114:                                   ; preds = %bb.dg
  %.2119.i115 = sub nsw i32 %.2119152.i108, %i.to ; 2 uses
  %i.xt = icmp sgt i32 %.2119.i115, 0
  br i1 %i.xt, label %.preheader.i107, label %horizontalDifferenceF.exit

.preheader.i107:                                  ; preds = %.loopexit.i114, %.preheader.lr.ph.i106
  %.2119152.i108 = phi i32 [ %.2119149.i105, %.preheader.lr.ph.i106 ], [ %.2119.i115, %.loopexit.i114 ]
  %.3151.i109 = phi ptr [ %i.xo, %.preheader.lr.ph.i106 ], [ %i.yh, %.loopexit.i114 ]
  %.3123150.i110 = phi ptr [ %i.xn, %.preheader.lr.ph.i106 ], [ %i.yg, %.loopexit.i114 ]
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.preheader.i107
  %.4124.i111 = phi ptr [ %i.yg, %bb.dg ], [ %.3123150.i110, %.preheader.i107 ] ; 2 uses
  %.4.i112 = phi ptr [ %i.yh, %bb.dg ], [ %.3151.i109, %.preheader.i107 ] ; 3 uses
  %.0.i113 = phi i32 [ %i.xu, %bb.dg ], [ %i.to, %.preheader.i107 ] ; 2 uses
  %i.xu = add nsw i32 %.0.i113, -1
  %i.xv = load i8, ptr %.4.i112, align 1, !tbaa !64
  %i.xw = zext i8 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.xw
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !59
  %i.xz = getelementptr inbounds i8, ptr %.4.i112, i64 %i.xs
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !64
  %i.yb = zext i8 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.yb
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !59
  %i.ye = sub i16 %i.xy, %i.yd
  %i.yf = and i16 %i.ye, 2047
  store i16 %i.yf, ptr %.4124.i111, align 2, !tbaa !59
  %i.yg = getelementptr inbounds nuw i8, ptr %.4124.i111, i64 2 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.4.i112, i64 1 ; 2 uses
  %i.yi = icmp sgt i32 %.0.i113, 1
  br i1 %i.yi, label %bb.dg, label %.loopexit.i114

bb.dh:                                            ; preds = %bb.h
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.yk = load i16, ptr %i.yj, align 4, !tbaa !83
  %i.yl = zext i16 %i.yk to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.8, i32 noundef %i.yl) #7
  br label %.loopexit

horizontalDifferenceF.exit:                       ; preds = %.lr.ph.i83, %.lr.ph148.i92, %.loopexit.i114, %.lr.ph.i75, %.lr.ph148.i, %.loopexit.i81, %bb.cf, %bb.ap, %.loopexit.i, %.preheader127.i104, %bb.df, %bb.de, %bb.dc, %.preheader127.i, %bb.da, %bb.cz, %bb.cx, %.preheader235.i, %bb.bk, %bb.z, %bb.i
  %.sink = phi i64 [ %i.ac, %.preheader127.i ], [ %i.ai, %.preheader235.i ], [ %i.s, %.loopexit.i114 ], [ %i.ac, %.lr.ph.i75 ], [ %i.s, %.preheader127.i104 ], [ %i.ai, %bb.i ], [ %i.ai, %bb.z ], [ %i.ai, %bb.bk ], [ %i.ai, %bb.ap ], [ %i.ai, %.loopexit.i ], [ %i.s, %.lr.ph148.i92 ], [ %i.ac, %bb.cx ], [ %i.ac, %bb.cz ], [ %i.ac, %bb.da ], [ %i.ac, %.lr.ph148.i ], [ %i.ac, %.loopexit.i81 ], [ %i.ai, %bb.cf ], [ %i.s, %bb.dc ], [ %i.s, %bb.de ], [ %i.s, %bb.df ], [ %i.s, %.lr.ph.i83 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.068133, i64 %.sink
  %i.yn = add nsw i64 %.067134, %i.s              ; 2 uses
  %i.yo = getelementptr inbounds [2 x i8], ptr %.0135, i64 %i.s
  %i.yp = icmp slt i64 %i.yn, %.066
  br i1 %i.yp, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %horizontalDifferenceF.exit, %bb.g
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr %i.w, ptr %i.yq, align 8, !tbaa !87
  %.066.tr = trunc i64 %.066 to i32
  %i.yr = shl i32 %.066.tr, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  store i32 %i.yr, ptr %i.ys, align 8, !tbaa !89
  %i.yt = and i64 %.066, 2147483648
  %.not = icmp eq i64 %i.yt, 0
  br i1 %.not, label %.preheader, label %bb.di

.preheader:                                       ; preds = %._crit_edge
  %i.yu = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.7) #7
  br label %.loopexit

bb.dj:                                            ; preds = %.preheader, %bb.do
  %i.yz = tail call i32 @deflate(ptr noundef nonnull %i.yq, i32 noundef 0) #7
  %.not70 = icmp eq i32 %i.yz, 0
  br i1 %.not70, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.za = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !85 ; 2 uses
  %.not73 = icmp eq ptr %i.zb, null
  %spec.select = select i1 %.not73, ptr @.str.6, ptr %i.zb
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select) #7
  br label %.loopexit

bb.dl:                                            ; preds = %bb.dj
  %i.zc = load i32, ptr %i.yu, align 8, !tbaa !92
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.ze = load i64, ptr %i.yv, align 8, !tbaa !110
  store i64 %i.ze, ptr %i.yw, align 8, !tbaa !88
  %i.zf = tail call i32 @TIFFFlushData1(ptr noundef %0) #7
  %.not71 = icmp eq i32 %i.zf, 0
  br i1 %.not71, label %.loopexit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zg = load ptr, ptr %i.yx, align 8, !tbaa !86
  store ptr %i.zg, ptr %i.yy, align 8, !tbaa !91
  %i.zh = load i64, ptr %i.yv, align 8, !tbaa !110
  %i.zi = trunc i64 %i.zh to i32
  store i32 %i.zi, ptr %i.yu, align 8, !tbaa !92
  br label %bb.do

bb.do:                                            ; preds = %bb.dl, %bb.dn
  %i.zj = load i32, ptr %i.ys, align 8, !tbaa !89
  %.not72 = icmp eq i32 %i.zj, 0
  br i1 %.not72, label %.loopexit, label %bb.dj

.loopexit:                                        ; preds = %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dh, %bb.f, %bb.d
  %.065 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.dh ], [ 0, %bb.di ], [ 0, %bb.dk ], [ 1, %bb.do ], [ 0, %bb.dm ]
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @PixarLogClose(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i16 8, ptr %i.f, align 4, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i16 1, ptr %i.g, align 2, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PixarLogCleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = tail call i32 @TIFFPredictorCleanup(ptr noundef %0) #7 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !47
  %i.g = shufflevector <2 x ptr> %i.f, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %.not41 = icmp eq ptr %i.k, null
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %.not42 = icmp eq ptr %i.m, null
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %.not43 = icmp eq ptr %i.o, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %.not45 = icmp eq ptr %i.s, null
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51
  %i.v = and i32 %i.u, 1
  %.not46 = icmp eq i32 %i.v, 0
  br i1 %.not46, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !111
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call i32 @inflateEnd(ptr noundef nonnull %i.z) #7 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ab = tail call i32 @deflateEnd(ptr noundef nonnull %i.z) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %.not47 = icmp eq ptr %i.ad, null
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !7
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PixarLogVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  switch i32 %1, label %bb.j [
    i32 65558, label %bb.b
    i32 65549, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %i.e = load i32, ptr %2, align 8                ; 3 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.e, 8
  store i32 %i.k, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  store i32 %i.d, ptr %i.p, align 4, !tbaa !3
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32
  %i.s = load i32, ptr %2, align 8                ; 3 uses
  %i.t = icmp ult i32 %i.s, 41
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = add nuw nsw i32 %i.s, 8
  store i32 %i.y, ptr %2, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j
  %.0 = phi i32 [ %i.ag, %bb.j ], [ 1, %bb.i ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @PixarLogVSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  switch i32 %1, label %bb.p [
    i32 65558, label %bb.b
    i32 65549, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8                ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = add nuw nsw i32 %i.c, 8
  store i32 %i.i, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  store i32 %i.n, ptr %i.o, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !111
  %.not38 = icmp eq i32 %i.q, 0
  br i1 %.not38, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = and i32 %i.s, 1
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.v = tail call i32 @deflateParams(ptr noundef nonnull %i.u, i32 noundef %i.n, i32 noundef 0) #7
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not41 = icmp eq ptr %i.x, null
  %spec.select = select i1 %.not41, ptr @.str.6, ptr %i.x
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogVSetField.module, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select) #7
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.y = load i32, ptr %2, align 8                ; 3 uses
  %i.z = icmp ult i32 %i.y, 41
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.y, 8
  store i32 %i.ae, ptr %2, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.af, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ad, %bb.j ], [ %i.ag, %bb.k ]
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !32
  %i.al = icmp ult i32 %i.aj, 6
  br i1 %i.al, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.am = zext nneg i32 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.PixarLogVSetField, i64 %i.am
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.an = zext nneg i32 %i.aj to i64
  %switch.gep44 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.PixarLogVSetField.2, i64 %i.an
  %switch.load45 = load i32, ptr %switch.gep44, align 4
  %i.ao = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 258, i32 noundef %switch.load) #7 ; 0 uses
  %i.ap = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 339, i32 noundef %switch.load45) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !94
  %i.as = and i32 %i.ar, 1024
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i64 @TIFFTileSize(ptr noundef nonnull %0) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.au = phi i64 [ %i.at, %bb.n ], [ -1, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i64 %i.au, ptr %i.av, align 8, !tbaa !115
  %i.aw = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !116
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.e, %bb.f, %bb.g, %bb.h
  %.034 = phi i32 [ 1, %bb.e ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ %i.ba, %bb.p ], [ 1, %bb.o ]
  ret i32 %.034
}

declare i32 @TIFFPredictorInit(ptr noundef) local_unnamed_addr #1

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_TIFFMultiplySSize(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #1

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @TIFFPredictorCleanup(ptr noundef) local_unnamed_addr #1

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #1

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #1

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 1072}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!28, !4, i64 216}
!28 = !{!"", !29, i64 0, !30, i64 128, !11, i64 240, !17, i64 248, !14, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !10, i64 272, !10, i64 280, !20, i64 288, !17, i64 296, !9, i64 304, !17, i64 312, !17, i64 320, !17, i64 328}
!29 = !{!"", !4, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!30 = !{!"z_stream_s", !9, i64 0, !4, i64 8, !11, i64 16, !9, i64 24, !4, i64 32, !11, i64 40, !9, i64 48, !31, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!31 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!32 = !{!28, !4, i64 264}
!33 = !{!8, !10, i64 928}
!34 = !{!8, !10, i64 936}
!35 = !{!8, !10, i64 944}
!36 = !{!8, !10, i64 984}
!37 = !{!8, !10, i64 1000}
!38 = !{!8, !10, i64 1016}
!39 = !{!8, !10, i64 952}
!40 = !{!8, !10, i64 968}
!41 = !{!8, !10, i64 976}
!42 = !{!8, !10, i64 992}
!43 = !{!8, !10, i64 1008}
!44 = !{!8, !10, i64 1024}
!45 = !{!8, !10, i64 1032}
!46 = !{!8, !10, i64 1048}
!47 = !{!10, !10, i64 0}
!48 = !{!8, !10, i64 1264}
!49 = !{!8, !10, i64 1256}
!50 = !{!28, !4, i64 268}
!51 = !{!28, !4, i64 260}
!52 = !{!16, !16, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!14, !14, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !58}
!62 = !{!63, !57}
!63 = distinct !{!63, !58}
!64 = !{!5, !5, i64 0}
!65 = !{!63}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54}
!68 = !{!28, !20, i64 288}
!69 = !{!28, !17, i64 296}
!70 = !{!28, !9, i64 304}
!71 = !{!28, !17, i64 312}
!72 = !{!28, !17, i64 320}
!73 = !{!28, !17, i64 328}
!74 = !{!13, !4, i64 60}
!75 = !{!13, !4, i64 20}
!76 = !{!8, !10, i64 1224}
!77 = !{!13, !14, i64 98}
!78 = !{!13, !14, i64 58}
!79 = !{!28, !14, i64 256}
!80 = !{!13, !4, i64 16}
!81 = !{!28, !17, i64 248}
!82 = !{!28, !11, i64 240}
!83 = !{!13, !14, i64 44}
!84 = !{!13, !14, i64 46}
!85 = !{!28, !9, i64 176}
!86 = !{!8, !9, i64 1096}
!87 = !{!28, !9, i64 128}
!88 = !{!8, !11, i64 1136}
!89 = !{!28, !4, i64 136}
!90 = !{!8, !9, i64 1128}
!91 = !{!28, !9, i64 152}
!92 = !{!28, !4, i64 160}
!93 = !{!8, !4, i64 844}
!94 = !{!8, !4, i64 16}
!95 = distinct !{!95, !54, !55}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = distinct !{!97, !54, !55}
!98 = distinct !{!98, !54}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105, !100}
!105 = distinct !{!105, !101}
!106 = !{!105}
!107 = distinct !{!107, !54, !55}
!108 = distinct !{!108, !54, !55}
!109 = distinct !{!109, !54}
!110 = !{!8, !11, i64 1104}
!111 = !{!8, !4, i64 12}
!112 = !{!113, !113, i64 0}
!113 = !{!"p1 int", !10, i64 0}
!114 = !{!28, !10, i64 272}
!115 = !{!8, !11, i64 912}
!116 = !{!8, !11, i64 1080}
!117 = !{!28, !10, i64 280}
end_hunk_2

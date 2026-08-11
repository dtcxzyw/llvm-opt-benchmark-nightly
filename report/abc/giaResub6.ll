inline.NumInlined: 131
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Res6_ManReadPla:bb.a
  %wide.trip.count.i = zext i32 %.fr126 to i64    ; 12 uses
  br i1 %i.fd, label %.preheader102.us.preheader, label %.preheader100

.preheader102.us.preheader:                       ; preds = %.preheader102.lr.ph
  %.val56187 = ptrtoaddr ptr %.val56 to i64       ; 2 uses
  %i.fe = zext nneg i32 %.fr126 to i64
  %wide.trip.count = zext nneg i32 %i.ey to i64
  %i.ff = mul nsw i64 %wide.trip.count.i, -8
  %i.fg = mul nsw i64 %wide.trip.count.i, -8
  %min.iters.check192 = icmp ult i32 %.fr126, 4
  %n.vec194 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n201 = icmp eq i64 %n.vec194, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %.fr126, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter221 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br label %.lr.ph18.i.us.us.preheader

.lr.ph18.i.us.us.preheader:                       ; preds = %Abc_TtCopy.exit.us.us.1, %.preheader102.us.preheader
  %indvar = phi i64 [ %indvar.next, %Abc_TtCopy.exit.us.us.1 ], [ 0, %.preheader102.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtCopy.exit.us.us.1 ], [ 1, %.preheader102.us.preheader ] ; 3 uses
  %i.fh = mul i64 %i.ff, %indvar
  %i.fi = sub i64 %i.fh, %.val56187
  %i.fj = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fk = add nsw i64 %indvars.iv, -1
  %i.fl = mul nsw i64 %i.fk, %i.fe
  %i.fm = getelementptr inbounds [8 x i8], ptr %.val56, i64 %i.fl ; 12 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fj
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !45 ; 7 uses
  br i1 %min.iters.check192, label %.lr.ph18.i.us.us.preheader219, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph18.i.us.us.preheader
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = mul i64 %i.fg, %indvar
  %i.fr = sub i64 %i.fq, %.val56187
  %i.fs = add i64 %i.fr, %i.fp
  %i.ft = add i64 %i.fs, -1
  %diff.check190 = icmp ult i64 %i.ft, 31
  br i1 %diff.check190, label %.lr.ph18.i.us.us.preheader219, label %vector.body195

vector.body195:                                   ; preds = %vector.memcheck189, %vector.body195
  %index196 = phi i64 [ %index.next199, %vector.body195 ], [ 0, %vector.memcheck189 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index196 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load197 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !46
  %wide.load198 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !46
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %index196 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x i64> %wide.load197, ptr %i.fw, align 8, !tbaa !46
  store <2 x i64> %wide.load198, ptr %i.fx, align 8, !tbaa !46
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.fy, label %middle.block200, label %vector.body195, !llvm.loop !48

middle.block200:                                  ; preds = %vector.body195
  br i1 %cmp.n201, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us.preheader219

.lr.ph18.i.us.us.preheader219:                    ; preds = %vector.memcheck189, %.lr.ph18.i.us.us.preheader, %middle.block200
  %indvars.iv21.i.us.us.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph18.i.us.us.preheader ], [ %n.vec194, %middle.block200 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph18.i.us.us.prol.loopexit, label %.lr.ph18.i.us.us.prol

.lr.ph18.i.us.us.prol:                            ; preds = %.lr.ph18.i.us.us.preheader219, %.lr.ph18.i.us.us.prol
  %indvars.iv21.i.us.us.prol = phi i64 [ %indvars.iv.next22.i.us.us.prol, %.lr.ph18.i.us.us.prol ], [ %indvars.iv21.i.us.us.ph, %.lr.ph18.i.us.us.preheader219 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.us.us.prol ], [ 0, %.lr.ph18.i.us.us.preheader219 ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv21.i.us.us.prol
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv21.i.us.us.prol
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.prol = add nuw nsw i64 %indvars.iv21.i.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.us.us.prol.loopexit, label %.lr.ph18.i.us.us.prol, !llvm.loop !51

.lr.ph18.i.us.us.prol.loopexit:                   ; preds = %.lr.ph18.i.us.us.prol, %.lr.ph18.i.us.us.preheader219
  %indvars.iv21.i.us.us.unr = phi i64 [ %indvars.iv21.i.us.us.ph, %.lr.ph18.i.us.us.preheader219 ], [ %indvars.iv.next22.i.us.us.prol, %.lr.ph18.i.us.us.prol ]
  %i.gc = sub nsw i64 %indvars.iv21.i.us.us.ph, %wide.trip.count.i
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us

.lr.ph18.i.us.us:                                 ; preds = %.lr.ph18.i.us.us.prol.loopexit, %.lr.ph18.i.us.us
  %indvars.iv21.i.us.us = phi i64 [ %indvars.iv.next22.i.us.us.3, %.lr.ph18.i.us.us ], [ %indvars.iv21.i.us.us.unr, %.lr.ph18.i.us.us.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv21.i.us.us
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !46
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv21.i.us.us
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us = add nuw nsw i64 %indvars.iv21.i.us.us, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next22.i.us.us
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next22.i.us.us
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.1 = add nuw nsw i64 %indvars.iv21.i.us.us, 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next22.i.us.us.1
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !46
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next22.i.us.us.1
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.2 = add nuw nsw i64 %indvars.iv21.i.us.us, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next22.i.us.us.2
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !46
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next22.i.us.us.2
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.3 = add nuw nsw i64 %indvars.iv21.i.us.us, 4 ; 2 uses
  %exitcond25.not.i.us.us.3 = icmp eq i64 %indvars.iv.next22.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond25.not.i.us.us.3, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us, !llvm.loop !53

.lr.ph.i.us.us.preheader.1:                       ; preds = %.lr.ph18.i.us.us.prol.loopexit, %.lr.ph18.i.us.us, %middle.block200
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !45 ; 7 uses
  br i1 %min.iters.check, label %.lr.ph.i.us.us.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.us.us.preheader.1
  %i.gt = ptrtoaddr ptr %i.gs to i64
  %i.gu = add i64 %i.fi, %i.gt
  %i.gv = add i64 %i.gu, -1
  %diff.check = icmp ult i64 %i.gv, 31
  br i1 %diff.check, label %.lr.ph.i.us.us.1.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load = load <2 x i64>, ptr %i.gw, align 8, !tbaa !46
  %wide.load188 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !46
  %i.gy = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.gz = xor <2 x i64> %wide.load188, splat (i64 -1)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <2 x i64> %i.gy, ptr %i.ha, align 8, !tbaa !46
  store <2 x i64> %i.gz, ptr %i.hb, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1.preheader

.lr.ph.i.us.us.1.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.us.us.preheader.1, %middle.block
  %indvars.iv.i.us.us.1.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.us.us.preheader.1 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod222.not, label %.lr.ph.i.us.us.1.prol.loopexit, label %.lr.ph.i.us.us.1.prol

.lr.ph.i.us.us.1.prol:                            ; preds = %.lr.ph.i.us.us.1.preheader, %.lr.ph.i.us.us.1.prol
  %indvars.iv.i.us.us.1.prol = phi i64 [ %indvars.iv.next.i.us.us.1.prol, %.lr.ph.i.us.us.1.prol ], [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ] ; 3 uses
  %prol.iter223 = phi i64 [ %prol.iter223.next, %.lr.ph.i.us.us.1.prol ], [ 0, %.lr.ph.i.us.us.1.preheader ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.us.us.1.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !46
  %i.hf = xor i64 %i.he, -1
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i.us.us.1.prol
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.prol = add nuw nsw i64 %indvars.iv.i.us.us.1.prol, 1 ; 2 uses
  %prol.iter223.next = add i64 %prol.iter223, 1   ; 2 uses
  %prol.iter223.cmp.not = icmp eq i64 %prol.iter223.next, %xtraiter221
  br i1 %prol.iter223.cmp.not, label %.lr.ph.i.us.us.1.prol.loopexit, label %.lr.ph.i.us.us.1.prol, !llvm.loop !55

.lr.ph.i.us.us.1.prol.loopexit:                   ; preds = %.lr.ph.i.us.us.1.prol, %.lr.ph.i.us.us.1.preheader
  %indvars.iv.i.us.us.1.unr = phi i64 [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ], [ %indvars.iv.next.i.us.us.1.prol, %.lr.ph.i.us.us.1.prol ]
  %i.hh = sub nsw i64 %indvars.iv.i.us.us.1.ph, %wide.trip.count.i
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1

.lr.ph.i.us.us.1:                                 ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1
  %indvars.iv.i.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1.3, %.lr.ph.i.us.us.1 ], [ %indvars.iv.i.us.us.1.unr, %.lr.ph.i.us.us.1.prol.loopexit ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.us.us.1
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !46
  %i.hl = xor i64 %i.hk, -1
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i.us.us.1
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.us.us.1
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !46
  %i.hp = xor i64 %i.ho, -1
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i.us.us.1
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.us.us.1.1
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !46
  %i.ht = xor i64 %i.hs, -1
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i.us.us.1.1
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.2 = add nuw nsw i64 %indvars.iv.i.us.us.1, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.us.us.1.2
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !46
  %i.hx = xor i64 %i.hw, -1
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i.us.us.1.2
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.3 = add nuw nsw i64 %indvars.iv.i.us.us.1, 4 ; 2 uses
  %exitcond.not.i.us.us.1.3 = icmp eq i64 %indvars.iv.next.i.us.us.1.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.3, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1, !llvm.loop !56

Abc_TtCopy.exit.us.us.1:                          ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.preheader100, label %.lr.ph18.i.us.us.preheader, !llvm.loop !57

.preheader100:                                    ; preds = %Abc_TtCopy.exit.us.us.1, %.preheader102.lr.ph, %.preheader103
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !58 ; 2 uses
  %i.ib = shl nuw nsw i32 1, %i.ia
  %.not127 = icmp eq i32 %i.ia, 31
  br i1 %.not127, label %.preheader99, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader100
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !59
  %i.ie = load i32, ptr %i.ae, align 4, !tbaa !19 ; 3 uses
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, 0
  %wide.trip.count24.i65 = zext i32 %i.ie to i64  ; 7 uses
  br i1 %i.if, label %.lr.ph18.preheader.i64.preheader, label %.preheader99

.lr.ph18.preheader.i64.preheader:                 ; preds = %.lr.ph
  %.val204 = ptrtoaddr ptr %.val to i64
  %wide.trip.count139 = zext nneg i32 %i.ib to i64
  %i.ig = mul nsw i64 %wide.trip.count24.i65, -8
  %min.iters.check207 = icmp ult i32 %i.ie, 4
  %n.vec209 = and i64 %wide.trip.count24.i65, 2147483644 ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec209, %wide.trip.count24.i65
  %xtraiter224 = and i64 %wide.trip.count24.i65, 3 ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br label %.lr.ph18.preheader.i64

.lr.ph18.preheader.i64:                           ; preds = %.lr.ph18.preheader.i64.preheader, %Abc_TtCopy.exit70.loopexit
  %indvars.iv136 = phi i64 [ 0, %.lr.ph18.preheader.i64.preheader ], [ %indvars.iv.next137, %Abc_TtCopy.exit70.loopexit ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv136
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !45 ; 7 uses
  %i.ij = mul nuw nsw i64 %indvars.iv136, %wide.trip.count24.i65
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ij ; 6 uses
  br i1 %min.iters.check207, label %.lr.ph18.i66.preheader, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph18.preheader.i64
  %i.il = ptrtoaddr ptr %i.ii to i64
  %i.im = mul i64 %i.ig, %indvars.iv136
  %i.in = sub i64 %i.im, %.val204
  %i.io = add i64 %i.in, %i.il
  %i.ip = add i64 %i.io, -1
  %diff.check205 = icmp ult i64 %i.ip, 31
  br i1 %diff.check205, label %.lr.ph18.i66.preheader, label %vector.body210

vector.body210:                                   ; preds = %vector.memcheck203, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %vector.memcheck203 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %index211 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !46
  %wide.load213 = load <2 x i64>, ptr %i.ir, align 8, !tbaa !46
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index211 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <2 x i64> %wide.load212, ptr %i.is, align 8, !tbaa !46
  store <2 x i64> %wide.load213, ptr %i.it, align 8, !tbaa !46
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.iu, label %middle.block215, label %vector.body210, !llvm.loop !60

middle.block215:                                  ; preds = %vector.body210
  br i1 %cmp.n216, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66.preheader

.lr.ph18.i66.preheader:                           ; preds = %vector.memcheck203, %.lr.ph18.preheader.i64, %middle.block215
  %indvars.iv21.i67.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph18.preheader.i64 ], [ %n.vec209, %middle.block215 ] ; 3 uses
  br i1 %lcmp.mod225.not, label %.lr.ph18.i66.prol.loopexit, label %.lr.ph18.i66.prol

.lr.ph18.i66.prol:                                ; preds = %.lr.ph18.i66.preheader, %.lr.ph18.i66.prol
  %indvars.iv21.i67.prol = phi i64 [ %indvars.iv.next22.i68.prol, %.lr.ph18.i66.prol ], [ %indvars.iv21.i67.ph, %.lr.ph18.i66.preheader ] ; 3 uses
  %prol.iter226 = phi i64 [ %prol.iter226.next, %.lr.ph18.i66.prol ], [ 0, %.lr.ph18.i66.preheader ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv21.i67.prol
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !46
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv21.i67.prol
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !46
  %indvars.iv.next22.i68.prol = add nuw nsw i64 %indvars.iv21.i67.prol, 1 ; 2 uses
  %prol.iter226.next = add i64 %prol.iter226, 1   ; 2 uses
  %prol.iter226.cmp.not = icmp eq i64 %prol.iter226.next, %xtraiter224
  br i1 %prol.iter226.cmp.not, label %.lr.ph18.i66.prol.loopexit, label %.lr.ph18.i66.prol, !llvm.loop !61

.lr.ph18.i66.prol.loopexit:                       ; preds = %.lr.ph18.i66.prol, %.lr.ph18.i66.preheader
  %indvars.iv21.i67.unr = phi i64 [ %indvars.iv21.i67.ph, %.lr.ph18.i66.preheader ], [ %indvars.iv.next22.i68.prol, %.lr.ph18.i66.prol ]
  %i.iy = sub nsw i64 %indvars.iv21.i67.ph, %wide.trip.count24.i65
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66

.lr.ph18.i66:                                     ; preds = %.lr.ph18.i66.prol.loopexit, %.lr.ph18.i66
  %indvars.iv21.i67 = phi i64 [ %indvars.iv.next22.i68.3, %.lr.ph18.i66 ], [ %indvars.iv21.i67.unr, %.lr.ph18.i66.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv21.i67
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !46
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv21.i67
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !46
  %indvars.iv.next22.i68 = add nuw nsw i64 %indvars.iv21.i67, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next22.i68
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !46
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next22.i68
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !46
  %indvars.iv.next22.i68.1 = add nuw nsw i64 %indvars.iv21.i67, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next22.i68.1
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !46
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next22.i68.1
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !46
  %indvars.iv.next22.i68.2 = add nuw nsw i64 %indvars.iv21.i67, 3 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next22.i68.2
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next22.i68.2
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !46
  %indvars.iv.next22.i68.3 = add nuw nsw i64 %indvars.iv21.i67, 4 ; 2 uses
  %exitcond25.not.i69.3 = icmp eq i64 %indvars.iv.next22.i68.3, %wide.trip.count24.i65
  br i1 %exitcond25.not.i69.3, label %Abc_TtCopy.exit70.loopexit, label %.lr.ph18.i66, !llvm.loop !62

Abc_TtCopy.exit70.loopexit:                       ; preds = %.lr.ph18.i66.prol.loopexit, %.lr.ph18.i66, %middle.block215
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.preheader99, label %.lr.ph18.preheader.i64, !llvm.loop !63

.preheader99:                                     ; preds = %Abc_TtCopy.exit70.loopexit, %.preheader100, %.lr.ph
  %.val58107 = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.jm = icmp sgt i32 %.val58107, 0
  br i1 %i.jm, label %.lr.ph109, label %.critedge

.lr.ph109:                                        ; preds = %.preheader99
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ev, i64 120 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ev, i64 124 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ev, i64 128 ; 2 uses
  %.promoted = load i32, ptr %i.jo, align 4, !tbaa !27
  %.promoted111 = load i32, ptr %i.jn, align 8, !tbaa !30
  %.promoted114 = load ptr, ptr %i.jp, align 8, !tbaa !31
  %i.jq = sext i32 %.promoted to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph109, %Vec_IntPush.exit
  %indvars.iv143 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next144, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv141 = phi i64 [ %i.jq, %.lr.ph109 ], [ %indvars.iv.next142, %Vec_IntPush.exit ] ; 7 uses
  %i.jr = phi ptr [ %.promoted114, %.lr.ph109 ], [ %i.kh, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i113 = phi i32 [ %.promoted111, %.lr.ph109 ], [ %spec.select.sink.i112, %Vec_IntPush.exit ] ; 3 uses
  %.val60 = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv143
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !8
  %i.ju = add nsw i32 %i.jt, 1
  %i.jv = trunc nsw i64 %indvars.iv141 to i32
  %i.jw = icmp eq i32 %spec.select.sink.i113, %i.jv
  br i1 %i.jw, label %bb.aj, label %Vec_IntPush.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jx = icmp slt i64 %indvars.iv141, 16
  br i1 %i.jx, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not9.i.i = icmp eq ptr %i.jr, null
  br i1 %.not9.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jr, i64 noundef 64) #24
  br label %Vec_IntPush.exit

bb.am:                                            ; preds = %bb.ak
  %i.jz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.an:                                            ; preds = %bb.aj
  %i.ka = icmp samesign ult i64 %indvars.iv141, 1073741823
  %indvars.iv141.tr = trunc i64 %indvars.iv141 to i32
  %i.kb = shl i32 %indvars.iv141.tr, 1
  %spec.select.i = select i1 %i.ka, i32 %i.kb, i32 2147483647 ; 4 uses
  %i.kc = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv141, %i.kc
  br i1 %.not.i9.i, label %bb.ao, label %Vec_IntPush.exit

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i = icmp eq ptr %i.jr, null
  %i.kd = zext nneg i32 %spec.select.i to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kf = tail call ptr @realloc(ptr noundef nonnull %i.jr, i64 noundef %i.ke) #24
  br label %Vec_IntPush.exit

bb.aq:                                            ; preds = %bb.ao
  %i.kg = tail call noalias ptr @malloc(i64 noundef %i.ke) #21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.am, %bb.al, %bb.aq, %bb.ap, %bb.ai, %bb.an
  %i.kh = phi ptr [ %i.jr, %bb.ai ], [ %i.jr, %bb.an ], [ %i.jz, %bb.am ], [ %i.jy, %bb.al ], [ %i.kf, %bb.ap ], [ %i.kg, %bb.aq ] ; 3 uses
  %spec.select.sink.i112 = phi i32 [ %spec.select.sink.i113, %bb.ai ], [ %spec.select.sink.i113, %bb.an ], [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i, %bb.ap ], [ %spec.select.i, %bb.aq ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %indvars.iv141
  store i32 %i.ju, ptr %i.ki, align 4, !tbaa !8
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %.val58 = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.kj = sext i32 %.val58 to i64
  %i.kk = icmp slt i64 %indvars.iv.next144, %i.kj
  br i1 %i.kk, label %bb.ai, label %..critedge.loopexit_crit_edge, !llvm.loop !64

..critedge.loopexit_crit_edge:                    ; preds = %Vec_IntPush.exit
  %i.kl = trunc nsw i64 %indvars.iv.next142 to i32
  store i32 %i.kl, ptr %i.jo, align 4, !tbaa !27
  store i32 %spec.select.sink.i112, ptr %i.jn, align 8
  store ptr %i.kh, ptr %i.jp, align 8
  %.pre157 = load ptr, ptr %i.bn, align 8, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %.preheader99, %..critedge.loopexit_crit_edge
  %i.km = phi ptr [ %.pre157, %..critedge.loopexit_crit_edge ], [ %i.bj, %.preheader99 ] ; 5 uses
  %.not55 = icmp eq ptr %i.km, null
  br i1 %.not55, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.kn = getelementptr i8, ptr %i.km, i64 4      ; 2 uses
  %.val57116 = load i32, ptr %i.kn, align 4, !tbaa !27
  %i.ko = icmp sgt i32 %.val57116, 0
  br i1 %i.ko, label %.lr.ph118, label %.preheader..critedge2_crit_edge

.preheader..critedge2_crit_edge:                  ; preds = %.preheader
  %.phi.trans.insert = getelementptr i8, ptr %i.ev, i64 76
  %.val61.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !27
  %.phi.trans.insert159 = getelementptr i8, ptr %i.ev, i64 80
  %.val62.pre = load ptr, ptr %.phi.trans.insert159, align 8, !tbaa !31
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %.pre162 = load i32, ptr %.phi.trans.insert161, align 8, !tbaa !30
  br label %.critedge2
end_hunk_0

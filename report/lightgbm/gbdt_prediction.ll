Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt_prediction?download=true
inline.NumInlined: 145
inline.NumDeleted: 76
begin_hunk_0_@_ZNK8LightGBM4GBDT10PredictRawEPKdPdPKNS_27PredictionEarlyStopInstanceE:bb.a
bb.c:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !153
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !155 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  br i1 %i.ah, label %.preheader.i34, label %.preheader11.i24

.preheader.i34:                                   ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39, %.preheader.i34
  %.014.i35 = phi i32 [ 0, %.preheader.i34 ], [ %.0.i.i41, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39 ]
  %i.as = zext nneg i32 %.014.i35 to i64          ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !156
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !157 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !158 ; 3 uses
  %i.ba = and i8 %i.az, 1
  %.not.i.i36 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i36, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = fcmp uno double %i.ax, 0.000000e+00
  br i1 %i.bb, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = fptosi double %i.ax to i32              ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.as
  %i.bf = load double, ptr %i.be, align 8, !tbaa !157
  %i.bg = fptosi double %i.bf to i32
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.ap, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !156 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !156
  %i.bm = sub nsw i32 %i.bl, %i.bj
  %i.bn = lshr i32 %i.bc, 5                       ; 2 uses
  %.not.i.i.i.i37 = icmp slt i32 %i.bn, %i.bm
  br i1 %.not.i.i.i.i37, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i42, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i38

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i42: ; preds = %bb.h
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.bo
  %i.bq = and i32 %i.bc, 31
  %i.br = zext nneg i32 %i.bn to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !156
  %i.bu = lshr i32 %i.bt, %i.bq
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i38

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i38: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i42, %bb.h
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39

bb.i:                                             ; preds = %bb.e
  %i.bw = lshr i8 %i.az, 2
  %i.bx = and i8 %i.bw, 3                         ; 2 uses
  %i.by = fcmp uno double %i.ax, 0.000000e+00
  %i.bz = icmp ne i8 %i.bx, 2
  %or.cond.i.i.i43 = and i1 %i.by, %i.bz
  %.017.i.i.i44 = select i1 %or.cond.i.i.i43, double 0.000000e+00, double %i.ax ; 3 uses
  switch i8 %i.bx, label %bb.m [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ca = call double @llvm.fabs.f64(double %.017.i.i.i44)
  %i.cb = fcmp ugt double %i.ca, f0x38AA95A5C0000000
  br i1 %i.cb, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cc = fcmp uno double %.017.i.i.i44, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = and i8 %i.az, 2
  %.not.i.i.i48 = icmp eq i8 %i.cd, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i45

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.as
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !157
  %i.cg = fcmp ugt double %.017.i.i.i44, %i.cf
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i45

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i45: ; preds = %bb.m, %bb.l
  %.sink20.i.i.i46 = phi i1 [ %i.cg, %bb.m ], [ %.not.i.i.i48, %bb.l ]
  %.19.i.i.i47 = select i1 %.sink20.i.i.i46, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39

_ZNK8LightGBM4Tree8DecisionEdi.exit.i39:          ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i45, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i38, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i42, %bb.g, %bb.f
  %.sink.i.i40 = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i38 ], [ 40, %bb.g ], [ 40, %bb.f ], [ %.19.i.i.i47, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i45 ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i42 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink.i.i40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !154
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.as
  %.0.i.i41 = load i32, ptr %i.cj, align 4, !tbaa !156 ; 3 uses
  %i.ck = icmp sgt i32 %.0.i.i41, -1
  br i1 %i.ck, label %bb.e, label %_ZNK8LightGBM4Tree7GetLeafEPKd.exit49, !llvm.loop !159

.preheader11.i24:                                 ; preds = %bb.d, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28
  %.113.i25 = phi i32 [ %.0.i9.i31, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28 ], [ 0, %bb.d ]
  %i.cl = zext nneg i32 %.113.i25 to i64          ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !156
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !157 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cl
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !158 ; 2 uses
  %i.ct = lshr i8 %i.cs, 2
  %i.cu = and i8 %i.ct, 3                         ; 2 uses
  %i.cv = fcmp uno double %i.cq, 0.000000e+00
  %i.cw = icmp ne i8 %i.cu, 2
  %or.cond.i.i26 = and i1 %i.cv, %i.cw
  %.017.i.i27 = select i1 %or.cond.i.i26, double 0.000000e+00, double %i.cq ; 3 uses
  switch i8 %i.cu, label %bb.q [
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.n:                                             ; preds = %.preheader11.i24
  %i.cx = call double @llvm.fabs.f64(double %.017.i.i27)
  %i.cy = fcmp ugt double %i.cx, f0x38AA95A5C0000000
  br i1 %i.cy, label %bb.q, label %bb.p

bb.o:                                             ; preds = %.preheader11.i24
  %i.cz = fcmp uno double %.017.i.i27, 0.000000e+00
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = and i8 %i.cs, 2
  %.not.i10.i33 = icmp eq i8 %i.da, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28

bb.q:                                             ; preds = %bb.o, %bb.n, %.preheader11.i24
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cl
  %i.dc = load double, ptr %i.db, align 8, !tbaa !157
  %i.dd = fcmp ugt double %.017.i.i27, %i.dc
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28: ; preds = %bb.q, %bb.p
  %.sink20.i.i29 = phi i1 [ %i.dd, %bb.q ], [ %.not.i10.i33, %bb.p ]
  %.19.i.i30 = select i1 %.sink20.i.i29, i64 40, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 %.19.i.i30
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !154
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.cl
  %.0.i9.i31 = load i32, ptr %i.dg, align 4, !tbaa !156 ; 3 uses
  %i.dh = icmp sgt i32 %.0.i9.i31, -1
  br i1 %i.dh, label %.preheader11.i24, label %_ZNK8LightGBM4Tree7GetLeafEPKd.exit49, !llvm.loop !161

_ZNK8LightGBM4Tree7GetLeafEPKd.exit49:            ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39
  %.2.i32 = phi i32 [ %.0.i.i41, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i39 ], [ %.0.i9.i31, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i28 ]
  %i.di = xor i32 %.2.i32, -1
  %i.dj = zext nneg i32 %i.di to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZNK8LightGBM4Tree7GetLeafEPKd.exit49, %bb.c
  %i.dk = phi i64 [ %i.dj, %_ZNK8LightGBM4Tree7GetLeafEPKd.exit49 ], [ 0, %bb.c ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.y, i64 576
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !162
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  %i.do = load double, ptr %i.dn, align 8, !tbaa !157 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 600
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !163
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dk ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !164 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !154 ; 3 uses
  %.not.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i, label %_ZNK8LightGBM4Tree7PredictEPKd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 552
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %.02235.i = phi i64 [ 0, %.lr.ph.i ], [ %i.em, %bb.t ] ; 3 uses
  %.02534.i = phi double [ %i.do, %.lr.ph.i ], [ %i.el, %bb.t ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.02235.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !156
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !157 ; 2 uses
  %i.ef = fcmp uno double %i.ee, 0.000000e+00
  br i1 %i.ef, label %.thread30.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !165
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.dk
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !162
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.02235.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !157
  %i.el = call double @llvm.fmuladd.f64(double %i.ek, double %i.ee, double %.02534.i) ; 2 uses
  %i.em = add nuw i64 %.02235.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %i.dy
  br i1 %exitcond.not.i, label %_ZNK8LightGBM4Tree7PredictEPKd.exit, label %bb.s, !llvm.loop !166

.thread30.i:                                      ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !162
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dk
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree7PredictEPKd.exit

bb.u:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.es = load i32, ptr %i.er, align 8, !tbaa !153
  %i.et = icmp sgt i32 %i.es, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !154 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !155 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.ez = load ptr, ptr %i.ey, align 8            ; 3 uses
  br i1 %i.et, label %.preheader.i, label %.preheader11.i

.preheader.i:                                     ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.fd = load ptr, ptr %i.fc, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit.i, %.preheader.i
  %.014.i = phi i32 [ 0, %.preheader.i ], [ %.0.i.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i ]
  %i.fe = zext nneg i32 %.014.i to i64            ; 5 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !156
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !157 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fe
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !158 ; 3 uses
  %i.fm = and i8 %i.fl, 1
  %.not.i.i23 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i23, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = fcmp uno double %i.fj, 0.000000e+00
  br i1 %i.fn, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = fptosi double %i.fj to i32              ; 3 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fe
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !157
  %i.fs = fptosi double %i.fr to i32
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr [4 x i8], ptr %i.fb, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !156 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !156
  %i.fy = sub nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fo, 5                       ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %i.fz, %i.fy
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i: ; preds = %bb.z
  %i.ga = sext i32 %i.fv to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ga
  %i.gc = and i32 %i.fo, 31
  %i.gd = zext nneg i32 %i.fz to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !156
  %i.gg = lshr i32 %i.gf, %i.gc
  %i.gh = trunc i32 %i.gg to i1
  br i1 %i.gh, label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i, %bb.z
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i

bb.aa:                                            ; preds = %bb.w
  %i.gi = lshr i8 %i.fl, 2
  %i.gj = and i8 %i.gi, 3                         ; 2 uses
  %i.gk = fcmp uno double %i.fj, 0.000000e+00
  %i.gl = icmp ne i8 %i.gj, 2
  %or.cond.i.i.i = and i1 %i.gk, %i.gl
  %.017.i.i.i = select i1 %or.cond.i.i.i, double 0.000000e+00, double %i.fj ; 3 uses
  switch i8 %i.gj, label %bb.ae [
    i8 1, label %bb.ab
    i8 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.gm = call double @llvm.fabs.f64(double %.017.i.i.i)
  %i.gn = fcmp ugt double %i.gm, f0x38AA95A5C0000000
  br i1 %i.gn, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.go = fcmp uno double %.017.i.i.i, 0.000000e+00
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gp = and i8 %i.fl, 2
  %.not.i.i.i = icmp eq i8 %i.gp, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fe
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !157
  %i.gs = fcmp ugt double %.017.i.i.i, %i.gr
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i: ; preds = %bb.ae, %bb.ad
  %.sink20.i.i.i = phi i1 [ %i.gs, %bb.ae ], [ %.not.i.i.i, %bb.ad ]
  %.19.i.i.i = select i1 %.sink20.i.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit.i

_ZNK8LightGBM4Tree8DecisionEdi.exit.i:            ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i, %bb.y, %bb.x
  %.sink.i.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i.i ], [ 40, %bb.y ], [ 40, %bb.x ], [ %.19.i.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink.i.i
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !154
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.fe
  %.0.i.i = load i32, ptr %i.gv, align 4, !tbaa !156 ; 3 uses
  %i.gw = icmp sgt i32 %.0.i.i, -1
  br i1 %i.gw, label %bb.w, label %_ZNK8LightGBM4Tree7GetLeafEPKd.exit, !llvm.loop !159

.preheader11.i:                                   ; preds = %bb.v, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.113.i = phi i32 [ %.0.i9.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 0, %bb.v ]
  %i.gx = zext nneg i32 %.113.i to i64            ; 4 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !156
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !157 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gx
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !158 ; 2 uses
  %i.hf = lshr i8 %i.he, 2
  %i.hg = and i8 %i.hf, 3                         ; 2 uses
  %i.hh = fcmp uno double %i.hc, 0.000000e+00
  %i.hi = icmp ne i8 %i.hg, 2
  %or.cond.i.i = and i1 %i.hh, %i.hi
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.hc ; 3 uses
  switch i8 %i.hg, label %bb.ai [
    i8 1, label %bb.af
    i8 2, label %bb.ag
  ]

bb.af:                                            ; preds = %.preheader11.i
  %i.hj = call double @llvm.fabs.f64(double %.017.i.i)
  %i.hk = fcmp ugt double %i.hj, f0x38AA95A5C0000000
  br i1 %i.hk, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.preheader11.i
  %i.hl = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.hl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hm = and i8 %i.he, 2
  %.not.i10.i = icmp eq i8 %i.hm, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.ai:                                            ; preds = %bb.ag, %bb.af, %.preheader11.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gx
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !157
  %i.hp = fcmp ugt double %.017.i.i, %i.ho
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.ai, %bb.ah
  %.sink20.i.i = phi i1 [ %i.hp, %bb.ai ], [ %.not.i10.i, %bb.ah ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.19.i.i
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !154
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.gx
  %.0.i9.i = load i32, ptr %i.hs, align 4, !tbaa !156 ; 3 uses
  %i.ht = icmp sgt i32 %.0.i9.i, -1
  br i1 %i.ht, label %.preheader11.i, label %_ZNK8LightGBM4Tree7GetLeafEPKd.exit, !llvm.loop !161

_ZNK8LightGBM4Tree7GetLeafEPKd.exit:              ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i
  %.2.i = phi i32 [ %.0.i.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit.i ], [ %.0.i9.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ]
  %i.hu = xor i32 %.2.i, -1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !162
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree7PredictEPKd.exit

bb.aj:                                            ; preds = %bb.u
  %i.ia = getelementptr inbounds nuw i8, ptr %i.y, i64 336
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !162
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree7PredictEPKd.exit

_ZNK8LightGBM4Tree7PredictEPKd.exit:              ; preds = %bb.t, %bb.r, %.thread30.i, %_ZNK8LightGBM4Tree7GetLeafEPKd.exit, %bb.aj
  %.1.i = phi double [ %i.ic, %bb.aj ], [ %i.hz, %_ZNK8LightGBM4Tree7GetLeafEPKd.exit ], [ %i.eq, %.thread30.i ], [ %i.do, %bb.r ], [ %i.el, %bb.t ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !157
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM4Tree7GetLeafEPKd:bb.a
  %i.at = fcmp uno double %i.s, 0.000000e+00
  %i.au = icmp ne i8 %i.as, 2
  %or.cond.i.i = and i1 %i.at, %i.au
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.s ; 3 uses
  switch i8 %i.as, label %bb.j [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.aw = fcmp ugt double %i.av, f0x38AA95A5C0000000
  br i1 %i.aw, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = and i8 %i.u, 2
  %.not.i.i = icmp eq i8 %i.ay, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.ba = load double, ptr %i.az, align 8, !tbaa !157
  %i.bb = fcmp ugt double %.017.i.i, %i.ba
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.j, %bb.i
  %.sink20.i.i = phi i1 [ %i.bb, %bb.j ], [ %.not.i.i, %bb.i ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.c, %bb.d, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %bb.d ], [ 40, %bb.c ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.n
  %.0.i = load i32, ptr %i.be, align 4, !tbaa !156 ; 3 uses
  %i.bf = icmp sgt i32 %.0.i, -1
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !159

.preheader11:                                     ; preds = %bb.a, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit
  %.113 = phi i32 [ %.0.i9, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit ], [ 0, %bb.a ]
  %i.bg = zext nneg i32 %.113 to i64              ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !156
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !157 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bg
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !158 ; 2 uses
  %i.bo = lshr i8 %i.bn, 2
  %i.bp = and i8 %i.bo, 3                         ; 2 uses
  %i.bq = fcmp uno double %i.bl, 0.000000e+00
  %i.br = icmp ne i8 %i.bp, 2
  %or.cond.i = and i1 %i.bq, %i.br
  %.017.i = select i1 %or.cond.i, double 0.000000e+00, double %i.bl ; 3 uses
  switch i8 %i.bp, label %bb.n [
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %.preheader11
  %i.bs = tail call double @llvm.fabs.f64(double %.017.i)
  %i.bt = fcmp ugt double %i.bs, f0x38AA95A5C0000000
  br i1 %i.bt, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader11
  %i.bu = fcmp uno double %.017.i, 0.000000e+00
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = and i8 %i.bn, 2
  %.not.i10 = icmp eq i8 %i.bv, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %.preheader11
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bg
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !157
  %i.by = fcmp ugt double %.017.i, %i.bx
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit:    ; preds = %bb.m, %bb.n
  %.sink20.i = phi i1 [ %i.by, %bb.n ], [ %.not.i10, %bb.m ]
  %.19.i = select i1 %.sink20.i, i64 40, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.19.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !154
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bg
  %.0.i9 = load i32, ptr %i.cb, align 4, !tbaa !156 ; 3 uses
  %i.cc = icmp sgt i32 %.0.i9, -1
  br i1 %i.cc, label %.preheader11, label %.loopexit, !llvm.loop !161

.loopexit:                                        ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit, %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %.2 = phi i32 [ %.0.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit ], [ %.0.i9, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit ]
  %i.cd = xor i32 %.2, -1
  ret i32 %i.cd
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4GBDT15PredictRawByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPdPKNS_27PredictionEarlyStopInstanceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.j = load i32, ptr %i.i, align 4, !tbaa !122  ; 2 uses
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %.preheader.lr.ph, label %_ZNKSt8functionIFbPKdiEEclES1_i.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %.01830 = phi i32 [ %i.h, %.preheader.lr.ph ], [ %i.ds, %bb.r ] ; 2 uses
  %.01929 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %bb.r ]
  %i.t = load i32, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit, %.preheader
  %.lcssa = phi i32 [ %i.t, %.preheader ], [ %i.dm, %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit ]
  %i.v = add nsw i32 %.01929, 1                   ; 2 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !124
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.p, label %bb.r

.lr.ph:                                           ; preds = %.preheader, %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit ], [ 0, %.preheader ] ; 3 uses
  %i.y = phi i32 [ %i.dm, %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit ], [ %i.t, %.preheader ]
  %i.z = mul nsw i32 %i.y, %.01830
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 548
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !130, !range !150, !noundef !151
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !152
  %i.al = icmp sgt i32 %i.ak, 1                   ; 2 uses
  br i1 %i.ai, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = call noundef i32 @_ZNK8LightGBM4Tree12GetLeafByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE(ptr noundef nonnull align 8 dereferenceable(648) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.an = sext i32 %i.am to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi i64 [ %i.an, %bb.c ], [ 0, %bb.b ]  ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 576
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  %i.as = load double, ptr %i.ar, align 8, !tbaa !157 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 600
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !163
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !164 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !154 ; 4 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i, label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !173
  %.not.not.i.i.i = icmp eq i64 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 552 ; 2 uses
  br i1 %.not.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.thread.us.i
  %.02564.us.i = phi i64 [ %i.bq, %.thread.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.02863.us.i = phi double [ %.342.us.i, %.thread.us.i ], [ %i.as, %.lr.ph.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.02564.us.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %.sroa.06.0.in.i.i.us.i = phi ptr [ %i.o, %.lr.ph.split.us.i ], [ %.sroa.06.0.i.i.us.i, %bb.f ]
  %.sroa.06.0.i.i.us.i = load ptr, ptr %.sroa.06.0.in.i.i.us.i, align 8, !tbaa !180 ; 4 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.06.0.i.i.us.i, null
  br i1 %.not.i.i.us.i, label %.thread.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.i, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !156
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.i, label %bb.e, !llvm.loop !181

bb.g:                                             ; preds = %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.i
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.ao
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !162
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.02564.us.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !157
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double %i.bs, double %.02863.us.i)
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.e, %bb.g
  %.342.us.i = phi double [ %i.bp, %bb.g ], [ %.02863.us.i, %bb.e ] ; 2 uses
  %i.bq = add nuw i64 %.02564.us.i, 1             ; 2 uses
  %exitcond71.not.i = icmp eq i64 %i.bq, %i.bc
  br i1 %exitcond71.not.i, label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit, label %.lr.ph.split.us.i, !llvm.loop !182

_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.i: ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us.i, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !183 ; 2 uses
  %i.bt = fcmp uno double %i.bs, 0.000000e+00
  br i1 %i.bt, label %.thread55.i, label %bb.g

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !185 ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !186
  br label %bb.h

bb.h:                                             ; preds = %.thread.i, %.lr.ph.split.i
  %.02564.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.cv, %.thread.i ] ; 3 uses
  %.02863.i = phi double [ %i.as, %.lr.ph.split.i ], [ %.342.i, %.thread.i ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.02564.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !156 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = urem i64 %i.by, %i.bu                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !180 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !156
  %i.cf = icmp eq i32 %i.bx, %i.ce
  br i1 %i.cf, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.i, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.cg = icmp eq i32 %i.bx, %i.cj
  br i1 %i.cg, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !188

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i = phi ptr [ %i.ch, %bb.j ], [ %i.cc, %bb.i ]
  %i.ch = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !180 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not18.i.i.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !156 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = urem i64 %i.ck, %i.bu
  %.not19.i.i.i.i.i = icmp eq i64 %i.cl, %i.bz
  br i1 %.not19.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !188

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.k
  br label %.thread.i, !llvm.loop !188

_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.06.1.i.i.i = phi ptr [ %i.cc, %bb.i ], [ %i.ch, %bb.j ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !183 ; 2 uses
  %i.co = fcmp uno double %i.cn, 0.000000e+00
  br i1 %i.co, label %.thread55.i, label %bb.l

bb.l:                                             ; preds = %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.i
  %i.cp = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.ao
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !162
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.02564.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !157
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double %i.cn, double %.02863.i)
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.l, %..loopexit_crit_edge21.i.i.i.i.i, %bb.h
  %.342.i = phi double [ %.02863.i, %bb.h ], [ %i.cu, %bb.l ], [ %.02863.i, %..loopexit_crit_edge21.i.i.i.i.i ], [ %.02863.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cv = add nuw i64 %.02564.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cv, %i.bc
  br i1 %exitcond.not.i, label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit, label %bb.h, !llvm.loop !182

.thread55.i:                                      ; preds = %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.i, %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE4findERS5_.exit.loopexit.us.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !162
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ao
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit

bb.m:                                             ; preds = %.lr.ph
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = call noundef i32 @_ZNK8LightGBM4Tree12GetLeafByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE(ptr noundef nonnull align 8 dereferenceable(648) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.dc = sext i32 %i.da to i64
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !162
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load double, ptr %i.de, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit

bb.o:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !162
  %i.di = load double, ptr %i.dh, align 8, !tbaa !157
  br label %_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit

_ZNK8LightGBM4Tree12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE.exit: ; preds = %.thread.i, %.thread.us.i, %bb.d, %.thread55.i, %bb.n, %bb.o
  %.1.i = phi double [ %i.di, %bb.o ], [ %i.df, %bb.n ], [ %i.cz, %.thread55.i ], [ %i.as, %bb.d ], [ %.342.us.i, %.thread.us.i ], [ %.342.i, %.thread.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !157
  %i.dl = fadd double %.1.i, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !157
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load i32, ptr %i.c, align 8, !tbaa !9   ; 3 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !189

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.a, align 8, !tbaa !168
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !156
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i, label %bb.q, label %_ZNKSt8functionIFbPKdiEEclES1_i.exit

bb.q:                                             ; preds = %bb.p
  call void @_ZSt25__throw_bad_function_callv() #7
  unreachable

_ZNKSt8functionIFbPKdiEEclES1_i.exit:             ; preds = %bb.p
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.dr = call noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.dr, label %_ZNKSt8functionIFbPKdiEEclES1_i.exit._crit_edge, label %bb.r

bb.r:                                             ; preds = %_ZNKSt8functionIFbPKdiEEclES1_i.exit, %._crit_edge
  %.1 = phi i32 [ %i.v, %._crit_edge ], [ 0, %_ZNKSt8functionIFbPKdiEEclES1_i.exit ]
  %i.ds = add nsw i32 %.01830, 1                  ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.k
  br i1 %i.dt, label %.preheader, label %_ZNKSt8functionIFbPKdiEEclES1_i.exit._crit_edge, !llvm.loop !190

_ZNKSt8functionIFbPKdiEEclES1_i.exit._crit_edge:  ; preds = %bb.r, %_ZNKSt8functionIFbPKdiEEclES1_i.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM4Tree12GetLeafByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !173
  %.not.not.i.i.i = icmp eq i64 %i.g, 0           ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 8 uses
  %i.j = load ptr, ptr %1, align 8                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.c, label %.preheader, label %.preheader86

.preheader:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %.0104 = phi i32 [ 0, %.preheader ], [ %.0.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit ]
  %i.t = zext nneg i32 %.0104 to i64              ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 8 uses
  br i1 %.not.not.i.i.i, label %.preheader167, label %bb.d

.preheader167:                                    ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.thread63, label %bb.c

bb.c:                                             ; preds = %.preheader167
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !156
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %.loopexit76, label %.preheader167, !llvm.loop !181

bb.d:                                             ; preds = %bb.b
  %i.z = sext i32 %i.v to i64
  %i.aa = urem i64 %i.z, %i.i                     ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.thread63, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !180 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !156
  %i.ag = icmp eq i32 %i.v, %i.af
  br i1 %i.ag, label %.thread, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %i.v, %i.ak
  br i1 %i.ah, label %.loopexit76, label %.lr.ph.i.i.i.i.i, !llvm.loop !188

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.ad, %bb.e ]
  %i.ai = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !180 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i.i.i.i, label %.thread63, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !156 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = urem i64 %i.al, %i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.am, %i.aa
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !188

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.thread63, !llvm.loop !188

.loopexit76:                                      ; preds = %bb.f, %bb.c
  br i1 %.not.not.i.i.i, label %.preheader164, label %.loopexit76..thread_crit_edge

.loopexit76..thread_crit_edge:                    ; preds = %.loopexit76
  %.pre = sext i32 %i.v to i64
  %.pre124 = urem i64 %.pre, %i.i
  br label %.thread

.preheader164:                                    ; preds = %.loopexit76, %bb.h
  %.sroa.06.0.in.i.i.i22 = phi ptr [ %.sroa.06.0.i.i.i23, %bb.h ], [ %i.k, %.loopexit76 ]
  %.sroa.06.0.i.i.i23 = load ptr, ptr %.sroa.06.0.in.i.i.i22, align 8, !tbaa !180 ; 4 uses
  %.not.i.i.i24 = icmp eq ptr %.sroa.06.0.i.i.i23, null
  br i1 %.not.i.i.i24, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader164
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i23, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !156
  %i.ap = icmp eq i32 %i.v, %i.ao
  br i1 %i.ap, label %.loopexit, label %.preheader164, !llvm.loop !181

.thread:                                          ; preds = %.loopexit76..thread_crit_edge, %bb.e
  %.pre-phi125 = phi i64 [ %.pre124, %.loopexit76..thread_crit_edge ], [ %i.aa, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre-phi125
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !180 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !156
  %i.av = icmp eq i32 %i.v, %i.au
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i16

bb.j:                                             ; preds = %bb.k
  %i.aw = icmp eq i32 %i.v, %i.az
  br i1 %i.aw, label %.loopexit, label %.lr.ph.i.i.i.i.i16, !llvm.loop !188

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i17 = phi ptr [ %i.ax, %bb.j ], [ %i.as, %bb.i ]
  %i.ax = load ptr, ptr %.020.i.i.i.i.i17, align 8, !tbaa !180 ; 4 uses
  %.not18.i.i.i.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i.i.i.i18, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !156 ; 2 uses
end_hunk_1

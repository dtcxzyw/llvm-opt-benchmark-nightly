inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 45
begin_hunk_0_@fill_tone_level_array:bb.a
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %i.u
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %i.x
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !79 ; 5 uses
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !79 ; 5 uses
  %i.af = load <4 x i8>, ptr %i.y, align 1, !tbaa !32
  %i.ag = sext <4 x i8> %i.af to <4 x i32>
  %i.ah = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = mul <4 x i32> %i.ai, %i.ag
  %i.ak = load <4 x i8>, ptr %i.v, align 1, !tbaa !32
  %i.al = sext <4 x i8> %i.ak to <4 x i32>
  %i.am = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.an = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ao = mul <4 x i32> %i.an, %i.al
  %i.ap = add <4 x i32> %i.ao, %i.aj              ; 3 uses
  %i.aq = icmp slt <4 x i32> %i.ap, zeroinitializer
  %i.ar = add nsw <4 x i32> %i.ap, splat (i32 255)
  %i.as = select <4 x i1> %i.aq, <4 x i32> %i.ar, <4 x i32> %i.ap
  %i.at = sdiv <4 x i32> %i.as, splat (i32 256)
  %i.au = trunc <4 x i32> %i.at to <4 x i8>
  store <4 x i8> %i.au, ptr %i.t, align 1, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul i32 %i.ad, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32
  %i.bb = sext i8 %i.ba to i32
  %i.bc = mul i32 %i.ae, %i.bb
  %i.bd = add i32 %i.bc, %i.ay                    ; 3 uses
  %i.be = icmp slt i32 %i.bd, 0
  %i.bf = add nsw i32 %i.bd, 255
  %spec.select.us.4 = select i1 %i.be, i32 %i.bf, i32 %i.bd
  %i.bg = sdiv i32 %spec.select.us.4, 256
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %i.bl = sext i8 %i.bk to i32
  %i.bm = mul i32 %i.ad, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = sext i8 %i.bo to i32
  %i.bq = mul i32 %i.ae, %i.bp
  %i.br = add i32 %i.bq, %i.bm                    ; 3 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = add nsw i32 %i.br, 255
  %spec.select.us.5 = select i1 %i.bs, i32 %i.bt, i32 %i.br
  %i.bu = sdiv i32 %spec.select.us.5, 256
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %i.bz = sext i8 %i.by to i32
  %i.ca = mul i32 %i.ad, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cd = sext i8 %i.cc to i32
  %i.ce = mul i32 %i.ae, %i.cd
  %i.cf = add i32 %i.ce, %i.ca                    ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  %i.ch = add nsw i32 %i.cf, 255
  %spec.select.us.6 = select i1 %i.cg, i32 %i.ch, i32 %i.cf
  %i.ci = sdiv i32 %spec.select.us.6, 256
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %i.cn = sext i8 %i.cm to i32
  %i.co = mul i32 %i.ad, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %i.cr = sext i8 %i.cq to i32
  %i.cs = mul i32 %i.ae, %i.cr
  %i.ct = add i32 %i.cs, %i.co
  br label %.split.us

.preheader219.split:                              ; preds = %.preheader219
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %i.u
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !79 ; 5 uses
  %i.cx = load <4 x i8>, ptr %i.v, align 1, !tbaa !32
  %i.cy = sext <4 x i8> %i.cx to <4 x i32>
  %i.cz = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.da = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.db = mul <4 x i32> %i.da, %i.cy              ; 3 uses
  %i.dc = icmp slt <4 x i32> %i.db, zeroinitializer
  %i.dd = add nsw <4 x i32> %i.db, splat (i32 255)
  %i.de = select <4 x i1> %i.dc, <4 x i32> %i.dd, <4 x i32> %i.db
  %i.df = sdiv <4 x i32> %i.de, splat (i32 256)
  %i.dg = trunc <4 x i32> %i.df to <4 x i8>
  store <4 x i8> %i.dg, ptr %i.t, align 1, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !32
  %i.dj = sext i8 %i.di to i32
  %i.dk = mul i32 %i.cw, %i.dj                    ; 3 uses
  %i.dl = icmp slt i32 %i.dk, 0
  %i.dm = add nsw i32 %i.dk, 255
  %spec.select.4 = select i1 %i.dl, i32 %i.dm, i32 %i.dk
  %i.dn = sdiv i32 %spec.select.4, 256
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !32
  %i.ds = sext i8 %i.dr to i32
  %i.dt = mul i32 %i.cw, %i.ds                    ; 3 uses
  %i.du = icmp slt i32 %i.dt, 0
  %i.dv = add nsw i32 %i.dt, 255
  %spec.select.5 = select i1 %i.du, i32 %i.dv, i32 %i.dt
  %i.dw = sdiv i32 %spec.select.5, 256
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !32
  %i.eb = sext i8 %i.ea to i32
  %i.ec = mul i32 %i.cw, %i.eb                    ; 3 uses
  %i.ed = icmp slt i32 %i.ec, 0
  %i.ee = add nsw i32 %i.ec, 255
  %spec.select.6 = select i1 %i.ed, i32 %i.ee, i32 %i.ec
  %i.ef = sdiv i32 %spec.select.6, 256
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !32
  %i.ek = sext i8 %i.ej to i32
  %i.el = mul i32 %i.cw, %i.ek
  br label %.split.us

.split.us:                                        ; preds = %.preheader219.split, %.preheader219.split.us
  %.sink343 = phi i32 [ %i.el, %.preheader219.split ], [ %i.ct, %.preheader219.split.us ] ; 3 uses
  %i.em = icmp slt i32 %.sink343, 0
  %i.en = add nsw i32 %.sink343, 255
  %spec.select.7 = select i1 %i.em, i32 %i.en, i32 %.sink343
  %i.eo = sdiv i32 %spec.select.7, 256
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %bb.b, label %.preheader219, !llvm.loop !178

bb.b:                                             ; preds = %.split.us
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count
  br i1 %exitcond284.not, label %._crit_edge, label %.preheader220, !llvm.loop !179

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.es = load i32, ptr %i.er, align 4, !tbaa !49 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 1
  %i.eu = shl nuw nsw i32 8, %i.es
  %spec.select205 = select i1 %i.et, i32 30, i32 %i.eu ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 146472 ; 4 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !70
  %i.ex = icmp eq i32 %i.ew, 0                    ; 2 uses
  %i.ey = icmp ne i32 %1, 0
  %or.cond = or i1 %i.ey, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 137456 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 138788 ; 4 uses
  br i1 %or.cond, label %.preheader213, label %.preheader217

.preheader217:                                    ; preds = %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 118096
  br i1 %i.b, label %.preheader216.preheader, label %.loopexit214

.preheader216.preheader:                          ; preds = %.preheader217
  %wide.trip.count297 = zext nneg i32 %spec.select205 to i64
  %wide.trip.count292 = zext nneg i32 %i.a to i64
  br label %.preheader216

.preheader213:                                    ; preds = %._crit_edge
  %i.fc = zext i1 %i.ex to i64
  %i.fd = getelementptr inbounds nuw [256 x i8], ptr @fft_tone_level_table, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 118096 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 137936
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 138320
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 138736
  %wide.trip.count329 = zext nneg i32 %spec.select205 to i64
  %wide.trip.count306 = zext nneg i32 %i.a to i64
  %wide.trip.count315 = zext nneg i32 %i.a to i64
  %wide.trip.count324 = zext nneg i32 %i.a to i64
  br label %bb.g

.preheader216:                                    ; preds = %.preheader216.preheader, %._crit_edge226
  %indvars.iv294 = phi i64 [ 0, %.preheader216.preheader ], [ %indvars.iv.next295, %._crit_edge226 ] ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv294
  %invariant.gep227 = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %indvars.iv294
  %invariant.gep229 = getelementptr inbounds nuw [256 x i8], ptr %i.fb, i64 %indvars.iv294
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader216, %bb.f
  %indvars.iv289 = phi i64 [ 0, %.preheader216 ], [ %indvars.iv.next290, %bb.f ] ; 4 uses
  %gep = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep, i64 %indvars.iv289 ; 2 uses
  %gep228 = getelementptr inbounds nuw [1920 x i8], ptr %invariant.gep227, i64 %indvars.iv289 ; 2 uses
  %gep230 = getelementptr inbounds nuw [7680 x i8], ptr %invariant.gep229, i64 %indvars.iv289 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader215
  %indvars.iv285 = phi i64 [ 0, %.preheader215 ], [ %indvars.iv.next286.a, %bb.e ] ; 6 uses
  %i.fi = lshr i64 %indvars.iv285, 3
  %i.fj = and i64 %i.fi, 536870911
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !32  ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %gep228, i64 %indvars.iv285
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !32
  %i.fn = icmp slt i8 %i.fl, 0
  br i1 %i.fn, label %7, label %2

2:                                                ; preds = %bb.c
  %3 = and i8 %i.fl, 63
  %4 = zext nneg i8 %3 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @fft_tone_level_table, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !29
  br label %7

7:                                                ; preds = %bb.c, %2
  %.sink = phi float [ %6, %2 ], [ 0.000000e+00, %bb.c ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr %gep230, i64 %indvars.iv285
  store float %.sink, ptr %8, align 4, !tbaa !29
  %indvars.iv.next286 = or disjoint i64 %indvars.iv285, 1 ; 2 uses
  %9 = lshr i64 %indvars.iv285, 3
  %10 = and i64 %9, 536870911
  %11 = getelementptr inbounds nuw i8, ptr %gep, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !32      ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %gep228, i64 %indvars.iv.next286
  store i8 %12, ptr %13, align 1, !tbaa !32
  %14 = icmp slt i8 %12, 0
  br i1 %14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %7
  %i.fo = and i8 %12, 63
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @fft_tone_level_table, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %7
  %.sink.a = phi float [ %i.fr, %bb.d ], [ 0.000000e+00, %7 ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %gep230, i64 %indvars.iv.next286
  store float %.sink.a, ptr %i.fs, align 4, !tbaa !29
  %indvars.iv.next286.a = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next286.a, 64
  br i1 %exitcond288.not, label %bb.f, label %bb.c, !llvm.loop !180

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge226, label %.preheader215, !llvm.loop !181

._crit_edge226:                                   ; preds = %bb.f
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit214, label %.preheader216, !llvm.loop !182

bb.g:                                             ; preds = %.preheader213, %.loopexit
  %indvars.iv326 = phi i64 [ 0, %.preheader213 ], [ %indvars.iv.next327, %.loopexit ] ; 14 uses
  %i.ft = add nsw i64 %indvars.iv326, -4          ; 3 uses
  %or.cond3 = icmp ult i64 %i.ft, 20
  br i1 %or.cond3, label %.preheader208, label %bb.m

.preheader208:                                    ; preds = %bb.g
  br i1 %i.b, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader208
  %invariant.gep258 = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv326
  %i.fu = lshr i64 %indvars.iv326, 3
  %invariant.gep260 = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %i.fu
  %invariant.gep262 = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ft
  %invariant.gep264 = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ft
  %invariant.gep266 = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %indvars.iv326
  %invariant.gep268 = getelementptr inbounds nuw [256 x i8], ptr %i.fe, i64 %indvars.iv326
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %indvars.iv321 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next322, %bb.l ] ; 7 uses
  %gep259 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep258, i64 %indvars.iv321
  %gep261 = getelementptr inbounds nuw [192 x i8], ptr %invariant.gep260, i64 %indvars.iv321
  %gep263 = getelementptr inbounds nuw [208 x i8], ptr %invariant.gep262, i64 %indvars.iv321
  %gep265 = getelementptr inbounds nuw [26 x i8], ptr %invariant.gep264, i64 %indvars.iv321
  %gep267 = getelementptr inbounds nuw [1920 x i8], ptr %invariant.gep266, i64 %indvars.iv321
  %gep269 = getelementptr inbounds nuw [7680 x i8], ptr %invariant.gep268, i64 %indvars.iv321
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.k
  %indvars.iv317 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next318, %bb.k ] ; 5 uses
  %i.fv = lshr i64 %indvars.iv317, 3
  %i.fw = and i64 %i.fv, 536870911                ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %gep259, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !32
  %i.fz = sext i8 %i.fy to i32                    ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %gep261, i64 %i.fw
  %i.gb = and i64 %indvars.iv317, 7
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !32
  %i.ge = sext i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %gep263, i64 %i.fw
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %i.gh = sext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, %i.ge
  %i.gj = load i8, ptr %gep265, align 1, !tbaa !32
  %i.gk = sext i8 %i.gj to i32
  %i.gl = add nsw i32 %i.gi, %i.gk                ; 2 uses
  %i.gm = sub nsw i32 %i.fz, %i.gl                ; 3 uses
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %gep267, i64 %indvars.iv317
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !32
  %i.gp = icmp slt i32 %i.gm, 0
  br i1 %i.gp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gq = load i32, ptr %i.ev, align 8, !tbaa !70
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = icmp ne i32 %i.gl, %i.fz
  %or.cond5 = or i1 %i.gr, %i.gs
  br i1 %or.cond5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gt = and i32 %i.gm, 63
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sink345 = phi float [ %i.gw, %bb.j ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %gep269, i64 %indvars.iv317
  store float %.sink345, ptr %i.gx, align 4, !tbaa !29
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next318, 64
  br i1 %exitcond320.not, label %bb.l, label %bb.h, !llvm.loop !183

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %.loopexit, label %.preheader, !llvm.loop !184

bb.m:                                             ; preds = %bb.g
  %i.gy = icmp samesign ugt i64 %indvars.iv326, 4
  br i1 %i.gy, label %.preheader209, label %.preheader211

.preheader211:                                    ; preds = %bb.m
  br i1 %i.b, label %.preheader207.lr.ph, label %.loopexit

.preheader207.lr.ph:                              ; preds = %.preheader211
  %invariant.gep236 = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv326
  %invariant.gep238 = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %indvars.iv326
  %invariant.gep240 = getelementptr inbounds nuw [256 x i8], ptr %i.fe, i64 %indvars.iv326
  br label %.preheader207

.preheader209:                                    ; preds = %bb.m
  br i1 %i.b, label %.preheader206.lr.ph, label %.loopexit

.preheader206.lr.ph:                              ; preds = %.preheader209
  %invariant.gep246 = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv326
  %invariant.gep248 = getelementptr i8, ptr %0, i64 %indvars.iv326
  %invariant.gep250 = getelementptr inbounds nuw [64 x i8], ptr %i.fa, i64 %indvars.iv326
  %invariant.gep252 = getelementptr inbounds nuw [256 x i8], ptr %i.fe, i64 %indvars.iv326
  br label %.preheader206

.preheader206:                                    ; preds = %.preheader206.lr.ph, %bb.r
  %indvars.iv312 = phi i64 [ 0, %.preheader206.lr.ph ], [ %indvars.iv.next313, %bb.r ] ; 6 uses
  %gep247 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep246, i64 %indvars.iv312
  %i.gz = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %indvars.iv312
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 138064
  %gep249 = getelementptr [26 x i8], ptr %invariant.gep248, i64 %indvars.iv312
  %i.hb = getelementptr i8, ptr %gep249, i64 138732
  %gep251 = getelementptr inbounds nuw [1920 x i8], ptr %invariant.gep250, i64 %indvars.iv312
  %gep253 = getelementptr inbounds nuw [7680 x i8], ptr %invariant.gep252, i64 %indvars.iv312
  br label %bb.n

bb.n:                                             ; preds = %.preheader206, %bb.q
  %indvars.iv308 = phi i64 [ 0, %.preheader206 ], [ %indvars.iv.next309, %bb.q ] ; 5 uses
  %i.hc = lshr i64 %indvars.iv308, 3
  %i.hd = and i64 %i.hc, 536870911                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %gep247, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !32
  %i.hg = sext i8 %i.hf to i32                    ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hd
  %i.hi = and i64 %indvars.iv308, 7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !32
  %i.hl = sext i8 %i.hk to i32
  %i.hm = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hn = sext i8 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, %i.hl                ; 2 uses
  %i.hp = sub nsw i32 %i.hg, %i.ho                ; 3 uses
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %gep251, i64 %indvars.iv308
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !32
  %i.hs = icmp slt i32 %i.hp, 0
  br i1 %i.hs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ht = load i32, ptr %i.ev, align 8, !tbaa !70
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = icmp ne i32 %i.ho, %i.hg
  %or.cond7 = or i1 %i.hv, %i.hu
  br i1 %or.cond7, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hw = and i32 %i.hp, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.sink347 = phi float [ %i.hz, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %gep253, i64 %indvars.iv308
  store float %.sink347, ptr %i.ia, align 4, !tbaa !29
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next309, 64
  br i1 %exitcond311.not, label %bb.r, label %bb.n, !llvm.loop !185

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit, label %.preheader206, !llvm.loop !186

.preheader207:                                    ; preds = %.preheader207.lr.ph, %bb.w
  %indvars.iv303 = phi i64 [ 0, %.preheader207.lr.ph ], [ %indvars.iv.next304, %bb.w ] ; 4 uses
  %gep237 = getelementptr inbounds nuw [240 x i8], ptr %invariant.gep236, i64 %indvars.iv303
  %gep239 = getelementptr inbounds nuw [1920 x i8], ptr %invariant.gep238, i64 %indvars.iv303
  %gep241 = getelementptr inbounds nuw [7680 x i8], ptr %invariant.gep240, i64 %indvars.iv303
  br label %bb.s

bb.s:                                             ; preds = %.preheader207, %bb.v
  %indvars.iv299 = phi i64 [ 0, %.preheader207 ], [ %indvars.iv.next300, %bb.v ] ; 4 uses
  %i.ib = lshr i64 %indvars.iv299, 3
  %i.ic = and i64 %i.ib, 536870911
  %i.id = getelementptr inbounds nuw i8, ptr %gep237, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !32  ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %gep239, i64 %indvars.iv299
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !32
  %i.ig = icmp slt i8 %i.ie, 0
  br i1 %i.ig, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ih = load i32, ptr %i.ev, align 8, !tbaa !70
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = icmp ne i8 %i.ie, 0
end_hunk_0

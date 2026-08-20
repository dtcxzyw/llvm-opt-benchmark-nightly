inline.NumInlined: 469
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv2ml14BruteForceImpl15findNearestCoreERKNS_3MatEiRKNS_5RangeEPS2_S8_S8_Pf:bb.a
  %indvars.iv.next324.1 = add nuw nsw i64 %indvars.iv323, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next324.1
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !79
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next324.1
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !79
  %i.dt = fsub float %i.dq, %i.ds                 ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.do)
  %indvars.iv.next324.2 = add nuw nsw i64 %indvars.iv323, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next324.2
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !79
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next324.2
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !79
  %i.dz = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.du) ; 2 uses
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %i.eb = trunc nuw i64 %indvars.iv.next324.3 to i32
  %i.ec = icmp sgt i32 %i.b, %i.eb
  br i1 %i.ec, label %.lr.ph261, label %._crit_edge262, !llvm.loop !131

._crit_edge262:                                   ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261, %.preheader248
  %.1212.lcssa = phi float [ %.0211.lcssa, %.preheader248 ], [ %.lcssa453.unr, %.lr.ph261.prol.loopexit ], [ %i.ea, %.lr.ph261 ] ; 2 uses
  %i.ed = bitcast float %.1212.lcssa to i32
  %i.ee = mul nsw i64 %indvars.iv331, %i.ax       ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ee ; 6 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ee ; 5 uses
  br i1 %i.y, label %.lr.ph266, label %._crit_edge267.thread

.lr.ph266:                                        ; preds = %._crit_edge262, %bb.d
  %.3206264 = phi i32 [ %i.el, %bb.d ], [ %2, %._crit_edge262 ] ; 4 uses
  %i.eh = zext nneg i32 %.3206264 to i64
  %i.ei = getelementptr [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16
  %.not234 = icmp sgt i32 %i.ek, %i.ed
  br i1 %.not234, label %bb.d, label %._crit_edge267

bb.d:                                             ; preds = %.lr.ph266
  %i.el = add nsw i32 %.3206264, -1
  %i.em = icmp sgt i32 %.3206264, 1
  br i1 %i.em, label %.lr.ph266, label %._crit_edge267, !llvm.loop !132

._crit_edge267:                                   ; preds = %bb.d, %.lr.ph266
  %.3206.lcssa = phi i32 [ %.3206264, %.lr.ph266 ], [ 0, %bb.d ] ; 3 uses
  %.not235 = icmp slt i32 %.3206.lcssa, %2
  br i1 %.not235, label %bb.e, label %._crit_edge267.thread

bb.e:                                             ; preds = %._crit_edge267
  %.not236271 = icmp slt i32 %i.an, %.3206.lcssa
  %.pre = zext i32 %.3206.lcssa to i64            ; 4 uses
  br i1 %.not236271, label %._crit_edge275, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %bb.e
  %i.en = call i64 @llvm.smin.i64(i64 %i.aw, i64 %.pre)
  %i.eo = sub i64 %i.ba, %i.en                    ; 3 uses
  %min.iters.check409 = icmp ult i64 %i.eo, 8
  %or.cond450 = select i1 %min.iters.check409, i1 true, i1 %diff.check406
  br i1 %or.cond450, label %.lr.ph274.preheader451, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph274.preheader
  %n.vec411 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = sub i64 %i.aw, %n.vec411
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph410
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next417, %vector.body412 ] ; 2 uses
  %i.eq = sub i64 %i.aw, %index413                ; 3 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -12
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -28
  %wide.load = load <4 x i32>, ptr %i.es, align 4, !tbaa !16
  %wide.load414 = load <4 x i32>, ptr %i.et, align 4, !tbaa !16
  %i.eu = add nsw i64 %i.eq, 1                    ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -12
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -28
  store <4 x i32> %wide.load, ptr %i.ew, align 4, !tbaa !16
  store <4 x i32> %wide.load414, ptr %i.ex, align 4, !tbaa !16
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eq ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -12
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 -28
  %wide.load415 = load <4 x float>, ptr %i.ez, align 4, !tbaa !79
  %wide.load416 = load <4 x float>, ptr %i.fa, align 4, !tbaa !79
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eu ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -12
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -28
  store <4 x float> %wide.load415, ptr %i.fc, align 4, !tbaa !79
  store <4 x float> %wide.load416, ptr %i.fd, align 4, !tbaa !79
  %index.next417 = add nuw i64 %index413, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next417, %n.vec411
  br i1 %i.fe, label %middle.block418, label %vector.body412, !llvm.loop !133

middle.block418:                                  ; preds = %vector.body412
  %cmp.n419 = icmp eq i64 %i.eo, %n.vec411
  br i1 %cmp.n419, label %._crit_edge275, label %.lr.ph274.preheader451

.lr.ph274.preheader451:                           ; preds = %.lr.ph274.preheader, %middle.block418
  %indvars.iv328.ph = phi i64 [ %i.aw, %.lr.ph274.preheader ], [ %i.ep, %middle.block418 ]
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.preheader451, %.lr.ph274
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %.lr.ph274 ], [ %indvars.iv328.ph, %.lr.ph274.preheader451 ] ; 5 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv328
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !16
  %i.fh = add nsw i64 %indvars.iv328, 1           ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fh
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !16
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv328
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fh
  store float %i.fk, ptr %i.fl, align 4, !tbaa !79
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, -1
  %.not236.not = icmp sgt i64 %indvars.iv328, %.pre
  br i1 %.not236.not, label %.lr.ph274, label %._crit_edge275, !llvm.loop !134

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block418, %bb.e
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.pre
  store float %.1212.lcssa, ptr %i.fm, align 4, !tbaa !16
  %i.fn = load float, ptr %i.bk, align 4, !tbaa !79
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.pre
  store float %i.fn, ptr %i.fo, align 4, !tbaa !79
  br label %._crit_edge267.thread

._crit_edge267.thread:                            ; preds = %._crit_edge262, %._crit_edge267, %._crit_edge275
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %._crit_edge278, label %bb.c, !llvm.loop !135

._crit_edge278:                                   ; preds = %._crit_edge267.thread
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %._crit_edge280.split, label %.preheader249, !llvm.loop !136

._crit_edge280.split:                             ; preds = %._crit_edge278, %.preheader250
  %i.fp = sitofp i32 %2 to float
  %i.fq = fdiv nnan float 1.000000e+00, %i.fp
  br i1 %i.x, label %.lr.ph307, label %._crit_edge308

.lr.ph307:                                        ; preds = %._crit_edge280.split
  %.not227 = icmp eq ptr %5, null
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.not228 = icmp eq ptr %6, null                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %.not229 = icmp eq ptr %4, null                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fw = icmp ne i32 %2, 1
  %i.fx = sext i32 %2 to i64                      ; 3 uses
  %.idx = shl nsw i64 %i.fx, 2
  %.not.i.i237 = icmp eq i32 %2, 0
  %i.fy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fx, i1 true)
  %i.fz = shl nuw nsw i64 %i.fy, 1
  %i.ga = xor i64 %i.fz, 126
  %.not298 = icmp slt i32 %2, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %.not232 = icmp eq ptr %7, null
  %i.gh = zext i32 %2 to i64                      ; 14 uses
  %i.gi = add i32 %2, 1                           ; 2 uses
  %wide.trip.count373 = zext nneg i32 %i.h to i64
  %wide.trip.count368 = zext i32 %i.gi to i64
  %min.iters.check438 = icmp ult i32 %2, 8
  %n.vec440 = and i64 %i.gh, 2147483640           ; 3 uses
  %cmp.n447 = icmp eq i64 %n.vec440, %i.gh
  %xtraiter457 = and i64 %i.gh, 3                 ; 2 uses
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  %min.iters.check424 = icmp ult i32 %2, 8
  %n.vec426 = and i64 %i.gh, 4294967288           ; 3 uses
  %cmp.n433 = icmp eq i64 %n.vec426, %i.gh
  %xtraiter460 = and i64 %i.gh, 3                 ; 2 uses
  %lcmp.mod461.not = icmp eq i64 %xtraiter460, 0
  %xtraiter463 = and i64 %i.gh, 7                 ; 3 uses
  %i.gj = icmp ult i32 %2, 8
  %unroll_iter = and i64 %i.gh, 2147483640
  %lcmp.mod464.not = icmp eq i64 %xtraiter463, 0
  %lcmp.mod466 = icmp ne i64 %xtraiter463, 0
  %.not = icmp eq i32 %i.gi, 2
  %i.gk = add nsw i64 %wide.trip.count368, -2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph307, %bb.af
  %indvars.iv370 = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next371, %bb.af ] ; 13 uses
  %i.gl = trunc i64 %indvars.iv370 to i32
  %i.gm = mul i32 %2, %i.gl
  %i.gn = zext i32 %i.gm to i64
  %i.go = add nsw i64 %i.t, %i.gn
  %i.gp = shl nsw i64 %i.go, 2
  %i.gq = add i64 %i.gp, %i.s
  %i.gr = trunc i64 %indvars.iv370 to i32
  %i.gs = mul i32 %2, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 2
  br i1 %.not227, label %.loopexit247, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gv = load i32, ptr %3, align 4, !tbaa !112
  %9 = trunc i64 %indvars.iv370 to i32
  %10 = add i32 %i.gv, %9
  %i.gw = load ptr, ptr %i.fr, align 8, !tbaa !121 ; 2 uses
  %i.gx = ptrtoaddr ptr %i.gw to i64
  %i.gy = load i64, ptr %i.fs, align 8, !tbaa !12
  %11 = sext i32 %10 to i64
  %i.gz = mul i64 %i.gy, %11                      ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gz ; 6 uses
  br i1 %i.y, label %.lr.ph283, label %.loopexit247

.lr.ph283:                                        ; preds = %bb.g
  %i.hb = trunc i64 %indvars.iv370 to i32
  %i.hc = mul i32 %2, %i.hb
  %i.hd = zext i32 %i.hc to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.hd ; 6 uses
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.lr.ph283
  %i.he = add i64 %i.gz, %i.gx
  %i.hf = sub i64 %i.gq, %i.he
  %diff.check436 = icmp ugt i64 %i.hf, -32
  br i1 %diff.check436, label %scalar.ph437.preheader, label %vector.body441

vector.body441:                                   ; preds = %vector.memcheck435, %vector.body441
  %index442 = phi i64 [ %index.next445, %vector.body441 ], [ 0, %vector.memcheck435 ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index442 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.load443 = load <4 x float>, ptr %i.hg, align 4, !tbaa !79
  %wide.load444 = load <4 x float>, ptr %i.hh, align 4, !tbaa !79
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index442 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <4 x float> %wide.load443, ptr %i.hi, align 4, !tbaa !79
  store <4 x float> %wide.load444, ptr %i.hj, align 4, !tbaa !79
  %index.next445 = add nuw i64 %index442, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.hk, label %middle.block446, label %vector.body441, !llvm.loop !137

middle.block446:                                  ; preds = %vector.body441
  br i1 %cmp.n447, label %.loopexit247.thread, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %vector.memcheck435, %.lr.ph283, %middle.block446
  %indvars.iv342.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph283 ], [ %n.vec440, %middle.block446 ] ; 3 uses
  br i1 %lcmp.mod458.not, label %scalar.ph437.prol.loopexit, label %scalar.ph437.prol

scalar.ph437.prol:                                ; preds = %scalar.ph437.preheader, %scalar.ph437.prol
  %indvars.iv342.prol = phi i64 [ %indvars.iv.next343.prol, %scalar.ph437.prol ], [ %indvars.iv342.ph, %scalar.ph437.preheader ] ; 3 uses
  %prol.iter459 = phi i64 [ %prol.iter459.next, %scalar.ph437.prol ], [ 0, %scalar.ph437.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv342.prol
  %i.hl = load float, ptr %gep.prol, align 4, !tbaa !79
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv342.prol
  store float %i.hl, ptr %i.hm, align 4, !tbaa !79
  %indvars.iv.next343.prol = add nuw nsw i64 %indvars.iv342.prol, 1 ; 2 uses
  %prol.iter459.next = add i64 %prol.iter459, 1   ; 2 uses
  %prol.iter459.cmp.not = icmp eq i64 %prol.iter459.next, %xtraiter457
  br i1 %prol.iter459.cmp.not, label %scalar.ph437.prol.loopexit, label %scalar.ph437.prol, !llvm.loop !138

scalar.ph437.prol.loopexit:                       ; preds = %scalar.ph437.prol, %scalar.ph437.preheader
  %indvars.iv342.unr = phi i64 [ %indvars.iv342.ph, %scalar.ph437.preheader ], [ %indvars.iv.next343.prol, %scalar.ph437.prol ]
  %i.hn = sub nsw i64 %indvars.iv342.ph, %i.gh
  %i.ho = icmp ugt i64 %i.hn, -4
  br i1 %i.ho, label %.loopexit247.thread, label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.prol.loopexit, %scalar.ph437
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.3, %scalar.ph437 ], [ %indvars.iv342.unr, %scalar.ph437.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv342
  %i.hp = load float, ptr %gep, align 4, !tbaa !79
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv342
  store float %i.hp, ptr %i.hq, align 4, !tbaa !79
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next343
  %i.hr = load float, ptr %gep.1, align 4, !tbaa !79
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next343
  store float %i.hr, ptr %i.hs, align 4, !tbaa !79
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next343.1
  %i.ht = load float, ptr %gep.2, align 4, !tbaa !79
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next343.1
  store float %i.ht, ptr %i.hu, align 4, !tbaa !79
  %indvars.iv.next343.2 = add nuw nsw i64 %indvars.iv342, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next343.2
  %i.hv = load float, ptr %gep.3, align 4, !tbaa !79
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next343.2
  store float %i.hv, ptr %i.hw, align 4, !tbaa !79
  %indvars.iv.next343.3 = add nuw nsw i64 %indvars.iv342, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next343.3, %i.gh
  br i1 %exitcond346.not.3, label %.loopexit247.thread, label %scalar.ph437, !llvm.loop !139

.loopexit247:                                     ; preds = %bb.g, %bb.f
  br i1 %.not228, label %.loopexit245, label %bb.h

.loopexit247.thread:                              ; preds = %scalar.ph437.prol.loopexit, %scalar.ph437, %middle.block446
  br i1 %.not228, label %.loopexit245, label %.thread

.thread:                                          ; preds = %.loopexit247.thread
  %i.hx = load i32, ptr %3, align 4, !tbaa !112
  %12 = trunc nuw nsw i64 %indvars.iv370 to i32
  %13 = add i32 %i.hx, %12
  %i.hy = load ptr, ptr %i.ft, align 8, !tbaa !121
  %i.hz = load i64, ptr %i.fu, align 8, !tbaa !12
  %14 = sext i32 %13 to i64
  %i.ia = mul i64 %i.hz, %14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia
  br label %.lr.ph289

bb.h:                                             ; preds = %.loopexit247
  %i.ic = load i32, ptr %3, align 4, !tbaa !112
  %15 = trunc nuw nsw i64 %indvars.iv370 to i32
  %16 = add i32 %i.ic, %15
  %i.id = load ptr, ptr %i.ft, align 8, !tbaa !121
  %i.ie = load i64, ptr %i.fu, align 8, !tbaa !12
  %17 = sext i32 %16 to i64
  %i.if = mul i64 %i.ie, %17
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if
  br i1 %i.y, label %.lr.ph289, label %.loopexit245

.lr.ph289:                                        ; preds = %.thread, %bb.h
  %i.ih = phi ptr [ %i.ib, %.thread ], [ %i.ig, %bb.h ] ; 7 uses
  %i.ii = trunc i64 %indvars.iv370 to i32
  %i.ij = mul i32 %2, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %invariant.gep397 = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ik ; 6 uses
  br i1 %min.iters.check424, label %scalar.ph423.preheader, label %vector.memcheck421

vector.memcheck421:                               ; preds = %.lr.ph289
  %i.il = ptrtoaddr ptr %i.ih to i64
  %i.im = add i64 %i.gu, %i.s
  %i.in = sub i64 %i.im, %i.il
  %diff.check422 = icmp ugt i64 %i.in, -32
  br i1 %diff.check422, label %scalar.ph423.preheader, label %vector.body427

vector.body427:                                   ; preds = %vector.memcheck421, %vector.body427
  %index428 = phi i64 [ %index.next431, %vector.body427 ], [ 0, %vector.memcheck421 ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %index428 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load429 = load <4 x float>, ptr %i.io, align 4, !tbaa !79
  %wide.load430 = load <4 x float>, ptr %i.ip, align 4, !tbaa !79
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %index428 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x float> %wide.load429, ptr %i.iq, align 4, !tbaa !79
  store <4 x float> %wide.load430, ptr %i.ir, align 4, !tbaa !79
  %index.next431 = add nuw i64 %index428, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next431, %n.vec426
  br i1 %i.is, label %middle.block432, label %vector.body427, !llvm.loop !140

middle.block432:                                  ; preds = %vector.body427
  br i1 %cmp.n433, label %.loopexit245, label %scalar.ph423.preheader

scalar.ph423.preheader:                           ; preds = %vector.memcheck421, %.lr.ph289, %middle.block432
  %indvars.iv351.ph = phi i64 [ 0, %vector.memcheck421 ], [ 0, %.lr.ph289 ], [ %n.vec426, %middle.block432 ] ; 3 uses
  br i1 %lcmp.mod461.not, label %scalar.ph423.prol.loopexit, label %scalar.ph423.prol

scalar.ph423.prol:                                ; preds = %scalar.ph423.preheader, %scalar.ph423.prol
  %indvars.iv351.prol = phi i64 [ %indvars.iv.next352.prol, %scalar.ph423.prol ], [ %indvars.iv351.ph, %scalar.ph423.preheader ] ; 3 uses
  %prol.iter462 = phi i64 [ %prol.iter462.next, %scalar.ph423.prol ], [ 0, %scalar.ph423.preheader ]
  %gep398.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv351.prol
  %i.it = load float, ptr %gep398.prol, align 4, !tbaa !79
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv351.prol
  store float %i.it, ptr %i.iu, align 4, !tbaa !79
  %indvars.iv.next352.prol = add nuw nsw i64 %indvars.iv351.prol, 1 ; 2 uses
  %prol.iter462.next = add i64 %prol.iter462, 1   ; 2 uses
  %prol.iter462.cmp.not = icmp eq i64 %prol.iter462.next, %xtraiter460
  br i1 %prol.iter462.cmp.not, label %scalar.ph423.prol.loopexit, label %scalar.ph423.prol, !llvm.loop !141

scalar.ph423.prol.loopexit:                       ; preds = %scalar.ph423.prol, %scalar.ph423.preheader
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %scalar.ph423.preheader ], [ %indvars.iv.next352.prol, %scalar.ph423.prol ]
  %i.iv = sub nsw i64 %indvars.iv351.ph, %i.gh
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %.loopexit245, label %scalar.ph423

scalar.ph423:                                     ; preds = %scalar.ph423.prol.loopexit, %scalar.ph423
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.3, %scalar.ph423 ], [ %indvars.iv351.unr, %scalar.ph423.prol.loopexit ] ; 6 uses
  %gep398 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv351
  %i.ix = load float, ptr %gep398, align 4, !tbaa !79
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv351
  store float %i.ix, ptr %i.iy, align 4, !tbaa !79
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %gep398.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next352
  %i.iz = load float, ptr %gep398.1, align 4, !tbaa !79
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next352
  store float %i.iz, ptr %i.ja, align 4, !tbaa !79
  %indvars.iv.next352.1 = add nuw nsw i64 %indvars.iv351, 2 ; 2 uses
  %gep398.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next352.1
  %i.jb = load float, ptr %gep398.2, align 4, !tbaa !79
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next352.1
  store float %i.jb, ptr %i.jc, align 4, !tbaa !79
  %indvars.iv.next352.2 = add nuw nsw i64 %indvars.iv351, 3 ; 2 uses
  %gep398.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv.next352.2
  %i.jd = load float, ptr %gep398.3, align 4, !tbaa !79
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next352.2
  store float %i.jd, ptr %i.je, align 4, !tbaa !79
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %exitcond355.not.3 = icmp eq i64 %indvars.iv.next352.3, %i.gh
  br i1 %exitcond355.not.3, label %.loopexit245, label %scalar.ph423, !llvm.loop !142

.loopexit245:                                     ; preds = %scalar.ph423.prol.loopexit, %scalar.ph423, %middle.block432, %bb.h, %.loopexit247.thread, %.loopexit247
  br i1 %.not229, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit245
  %i.jf = load i32, ptr %3, align 4, !tbaa !112
  %i.jg = sub i32 0, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp eq i64 %indvars.iv370, %i.jh
  br i1 %i.ji, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i, %.loopexit245
  %i.jj = load i8, ptr %i.fv, align 4, !tbaa !60, !range !143, !noundef !144
  %i.jk = trunc nuw i8 %i.jj to i1
  %or.cond.not = and i1 %i.fw, %i.jk
  br i1 %or.cond.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j
  br i1 %i.y, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.preheader
  %i.jl = trunc i64 %indvars.iv370 to i32
  %i.jm = mul i32 %2, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %invariant.gep399 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.jn ; 9 uses
  br i1 %i.gj, label %.epil.preheader, label %.lr.ph295.new

.lr.ph295.new:                                    ; preds = %.lr.ph295, %.lr.ph295.new
  %indvars.iv360 = phi i64 [ %indvars.iv.next361.7, %.lr.ph295.new ], [ 0, %.lr.ph295 ] ; 9 uses
  %.0195294 = phi float [ %i.kk, %.lr.ph295.new ], [ 0.000000e+00, %.lr.ph295 ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph295.new ], [ 0, %.lr.ph295 ]
  %gep400 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %i.jo = load float, ptr %gep400, align 4, !tbaa !79
  %i.jp = fadd float %.0195294, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.1 = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jr = load float, ptr %gep400.1, align 4, !tbaa !79
  %i.js = fadd float %i.jp, %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.2 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.ju = load float, ptr %gep400.2, align 4, !tbaa !79
  %i.jv = fadd float %i.js, %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.3 = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.jx = load float, ptr %gep400.3, align 4, !tbaa !79
  %i.jy = fadd float %i.jv, %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.4 = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.ka = load float, ptr %gep400.4, align 4, !tbaa !79
  %i.kb = fadd float %i.jy, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.5 = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kd = load float, ptr %gep400.5, align 4, !tbaa !79
  %i.ke = fadd float %i.kb, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.6 = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kg = load float, ptr %gep400.6, align 4, !tbaa !79
  %i.kh = fadd float %i.ke, %i.kg
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360
  %gep400.7 = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  %i.kj = load float, ptr %gep400.7, align 4, !tbaa !79
  %i.kk = fadd float %i.kh, %i.kj                 ; 3 uses
  %indvars.iv.next361.7 = add nuw nsw i64 %indvars.iv360, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge296.loopexit.unr-lcssa, label %.lr.ph295.new, !llvm.loop !145

._crit_edge296.loopexit.unr-lcssa:                ; preds = %.lr.ph295.new
  br i1 %lcmp.mod464.not, label %._crit_edge296, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge296.loopexit.unr-lcssa, %.lr.ph295
  %indvars.iv360.epil.init = phi i64 [ 0, %.lr.ph295 ], [ %indvars.iv.next361.7, %._crit_edge296.loopexit.unr-lcssa ]
  %.0195294.epil.init = phi float [ 0.000000e+00, %.lr.ph295 ], [ %i.kk, %._crit_edge296.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod466)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv360.epil = phi i64 [ %indvars.iv360.epil.init, %.epil.preheader ], [ %indvars.iv.next361.epil, %bb.k ] ; 2 uses
  %.0195294.epil = phi float [ %.0195294.epil.init, %.epil.preheader ], [ %i.km, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %gep400.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep399, i64 %indvars.iv360.epil
  %i.kl = load float, ptr %gep400.epil, align 4, !tbaa !79
  %i.km = fadd float %.0195294.epil, %i.kl        ; 2 uses
  %indvars.iv.next361.epil = add nuw nsw i64 %indvars.iv360.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter463
  br i1 %epil.iter.cmp.not, label %._crit_edge296, label %bb.k, !llvm.loop !146

._crit_edge296:                                   ; preds = %._crit_edge296.loopexit.unr-lcssa, %bb.k, %.preheader
  %.0195.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.kk, %._crit_edge296.loopexit.unr-lcssa ], [ %i.km, %bb.k ]
  %i.kn = fmul float %i.fq, %.0195.lcssa
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ko = mul nsw i64 %indvars.iv370, %i.fx
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ko ; 9 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %.idx ; 2 uses
  br i1 %.not.i.i237, label %_ZSt4sortIPfEvT_S1_.exit.thread, label %bb.m

_ZSt4sortIPfEvT_S1_.exit.thread:                  ; preds = %bb.l
  %i.kr = load float, ptr %i.kp, align 4, !tbaa !79
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kq, i64 noundef %i.ga)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.m
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kq)
          to label %_ZSt4sortIPfEvT_S1_.exit unwind label %bb.q

_ZSt4sortIPfEvT_S1_.exit:                         ; preds = %.noexc
  %i.ks = load float, ptr %i.kp, align 4, !tbaa !79 ; 3 uses
  br i1 %.not298, label %.loopexit, label %.lr.ph303.preheader

.lr.ph303.preheader:                              ; preds = %_ZSt4sortIPfEvT_S1_.exit
  br i1 %.not, label %.lr.ph303.peel, label %.lr.ph303

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %bb.r
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %bb.r ], [ 1, %.lr.ph303.preheader ] ; 6 uses
  %.0302 = phi i32 [ %.2, %bb.r ], [ 0, %.lr.ph303.preheader ] ; 3 uses
  %.0193301 = phi i32 [ %.1194, %bb.r ], [ 0, %.lr.ph303.preheader ] ; 2 uses
  %.0196300 = phi float [ %.2198, %bb.r ], [ %i.ks, %.lr.ph303.preheader ] ; 2 uses
  %i.kt = icmp eq i64 %indvars.iv365, %i.gh
  br i1 %i.kt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph303
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv365 ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !79
  %i.kw = getelementptr i8, ptr %i.ku, i64 -4
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !79
  %i.ky = fcmp une float %i.kv, %i.kx
  br i1 %i.ky, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %.lr.ph303
  %i.kz = trunc nuw nsw i64 %indvars.iv365 to i32 ; 3 uses
  %i.la = sub nsw i32 %i.kz, %.0193301            ; 2 uses
  %i.lb = icmp slt i32 %.0302, %i.la
  br i1 %i.lb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.lc = getelementptr [4 x i8], ptr %i.kp, i64 %indvars.iv365
  %i.ld = getelementptr i8, ptr %i.lc, i64 -4
  %i.le = load float, ptr %i.ld, align 4, !tbaa !79
  br label %bb.r

bb.q:                                             ; preds = %.noexc, %bb.m
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %8, align 8, !tbaa !118   ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.lg, %i.l
  %i.lh = icmp eq ptr %i.lg, null
  %or.cond.i242 = or i1 %.not.i.i241, %i.lh
  br i1 %or.cond.i242, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit243, label %bb.ah

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.2198 = phi float [ %.0196300, %bb.n ], [ %i.le, %bb.p ], [ %.0196300, %bb.o ] ; 2 uses
  %.1194 = phi i32 [ %.0193301, %bb.n ], [ %i.kz, %bb.p ], [ %i.kz, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.0302, %bb.n ], [ %i.la, %bb.p ], [ %.0302, %bb.o ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv365, %i.gk
  br i1 %exitcond369.not, label %.lr.ph303.peel, label %.lr.ph303, !llvm.loop !147

.lr.ph303.peel:                                   ; preds = %.lr.ph303.preheader, %bb.r
  %i.li = phi i64 [ 1, %.lr.ph303.preheader ], [ %indvars.iv.next366, %bb.r ] ; 5 uses
  %i.lj = phi i32 [ 0, %.lr.ph303.preheader ], [ %.2, %bb.r ] ; 2 uses
  %i.lk = phi i32 [ 0, %.lr.ph303.preheader ], [ %.1194, %bb.r ] ; 2 uses
  %i.ll = phi float [ %i.ks, %.lr.ph303.preheader ], [ %.2198, %bb.r ] ; 2 uses
  %i.lm = icmp eq i64 %i.li, %i.gh
  br i1 %i.lm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph303.peel
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.li ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !79
  %i.lp = getelementptr i8, ptr %i.ln, i64 -4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !79
  %i.lr = fcmp une float %i.lo, %i.lq
  %i.ls = trunc nuw nsw i64 %i.li to i32
  %i.lt = sub nsw i32 %i.ls, %i.lk
  %i.lu = icmp slt i32 %i.lj, %i.lt
  %or.cond481 = select i1 %i.lr, i1 %i.lu, i1 false
  br i1 %or.cond481, label %bb.u, label %.loopexit

bb.t:                                             ; preds = %.lr.ph303.peel
  %.old = trunc nuw nsw i64 %i.li to i32
  %.old479 = sub nsw i32 %.old, %i.lk
  %.old480 = icmp slt i32 %i.lj, %.old479
  br i1 %.old480, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.lv = getelementptr [4 x i8], ptr %i.kp, i64 %i.li
  %i.lw = getelementptr i8, ptr %i.lv, i64 -4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.s, %_ZSt4sortIPfEvT_S1_.exit.thread, %_ZSt4sortIPfEvT_S1_.exit, %._crit_edge296
  %.3 = phi float [ %i.kn, %._crit_edge296 ], [ %i.ks, %_ZSt4sortIPfEvT_S1_.exit ], [ %i.kr, %_ZSt4sortIPfEvT_S1_.exit.thread ], [ %i.ll, %bb.s ], [ %i.lx, %bb.u ], [ %i.ll, %bb.t ] ; 2 uses
  br i1 %.not229, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.ly = load i32, ptr %3, align 4, !tbaa !112
  %i.lz = trunc nuw nsw i64 %indvars.iv370 to i32
end_hunk_0
